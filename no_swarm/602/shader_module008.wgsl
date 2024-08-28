struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec4<bool>;

var<private> global2: vec4<u32> = vec4<u32>(581u, 4294967295u, 1u, 12203u);

var<private> global3: Struct_1 = Struct_1(vec4<bool>(false, true, true, false), 78851u, false, -946f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    global2 = firstLeadingBit(select(_wgslsmith_add_vec4_u32(min(vec4<u32>(1u, u_input.d, u_input.b.x, global3.b), firstTrailingBit(vec4<u32>(global3.b, global3.b, global2.x, global2.x))), ~_wgslsmith_add_vec4_u32(vec4<u32>(59053u, 32775u, 4294967295u, 19881u), vec4<u32>(global3.b, global2.x, 1u, global2.x))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0, global2.x, arg_0, global2.x), ~vec4<u32>(1u, 0u, 25736u, 101360u)), ~vec4<u32>(1u, arg_0, arg_0, arg_0)), global3.a));
    let var_0 = ~_wgslsmith_div_u32(reverseBits(_wgslsmith_div_u32(66394u, global2.x) | (u_input.a.x & global2.x)), ~(~835u));
    global2 = ~(vec4<u32>(4294967295u, countOneBits(0u), 4294967295u, ~(~1u)) << (firstLeadingBit(max(~vec4<u32>(1u, 22389u, global2.x, 1u), vec4<u32>(0u, 1u, arg_0, arg_0))) % vec4<u32>(32u)));
    let var_1 = global3.a;
    global1 = global3.a;
    return var_1.wz;
}

fn func_2(arg_0: u32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> bool {
    var var_0 = Struct_1(global3.a, ~_wgslsmith_clamp_u32(~arg_0 >> (40833u % 32u), 0u, abs(abs(u_input.b.x))), true, _wgslsmith_f_op_f32(-arg_1.x));
    global0 = vec2<bool>(!global1.x, false);
    global3 = Struct_1(select(vec4<bool>(true, _wgslsmith_f_op_f32(-1008f * var_0.d) > 1065f, any(vec4<bool>(false, global1.x, global0.x, global3.c)), any(func_3(arg_0))), !select(select(vec4<bool>(var_0.a.x, false, false, false), global3.a, var_0.a), !vec4<bool>(global0.x, true, var_0.c, global3.c), false), true), 0u, !(!(!global3.a.x)), arg_1.x);
    var var_1 = abs(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(25915u, arg_0, 4294967295u, u_input.d), vec4<u32>(1u, u_input.a.x, var_0.b, global3.b)))) | (vec4<u32>(global2.x >> (_wgslsmith_mult_u32(global3.b, 1u) % 32u), var_0.b, 4294967295u, _wgslsmith_mult_u32(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(4513u, 19774u, global2.x, 4294967295u), vec4<u32>(global3.b, 6133u, global3.b, var_0.b)))) | abs(max(select(vec4<u32>(u_input.d, var_0.b, 0u, 18648u), vec4<u32>(global2.x, global2.x, 0u, 14449u), var_0.a), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 69675u, 39891u, arg_0), vec4<u32>(var_0.b, arg_0, u_input.b.x, u_input.a.x)))));
    let var_2 = -2147483647i;
    return false;
}

fn func_4(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = ~u_input.c;
    let var_1 = Struct_1(!(!vec4<bool>(func_2(global3.b, vec3<f32>(global3.d, -1321f, 888f), vec4<i32>(0i, u_input.c, -1i, var_0)), false, !arg_0.x, global2.x > 66918u)), 4294967295u, !arg_0.x != select(false, false, global3.c), global3.d);
    global3 = var_1;
    let var_2 = i32(-1i) * -(~(~(-16799i)));
    var var_3 = var_1;
    return Struct_1(!(!(!select(vec4<bool>(global3.c, global0.x, global3.a.x, global0.x), vec4<bool>(global3.c, global1.x, global3.a.x, global0.x), false))), max(var_3.b, ~(~_wgslsmith_add_u32(global2.x, var_1.b))), !select(any(!var_3.a.ww), var_3.c, all(vec4<bool>(var_1.c, false, global0.x, var_1.a.x))), -952f);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec2<bool>) -> vec4<bool> {
    let var_0 = !global0.x && true;
    var var_1 = func_4(select(select(vec2<bool>(false, false), arg_2, select(!arg_2, global1.xz, func_2(0u, vec3<f32>(-997f, -1554f, -309f), vec4<i32>(arg_1, 30241i, arg_1, 2147483647i)))), func_3(~4294967295u), true));
    var var_2 = -1000f;
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global3.d)), -606f);
    var var_3 = Struct_1(vec4<bool>(any(!var_1.a.xxw), true, any(var_1.a.xzw), !(!(var_0 | true))), 68984u, arg_2.x, _wgslsmith_f_op_f32(ceil(613f)));
    return select(var_3.a, !var_1.a, global0.x & true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(global1.yy, global1.zz, !select(global3.a.xz, select(vec2<bool>(true, true), !vec2<bool>(global0.x, global3.a.x), vec2<bool>(global0.x, true)), global1.xz));
    var var_0 = select(20557i, ~reverseBits(u_input.c), global0.x);
    global1 = select(!func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d - -266f)), -u_input.c ^ -20736i, global1.yz), !global3.a, true);
    let var_1 = (~(-countOneBits(vec2<i32>(1i, 2147483647i))) | countOneBits(firstLeadingBit(vec2<i32>(u_input.c, u_input.c) >> (global2.xw % vec2<u32>(32u))))) ^ firstLeadingBit(max(~(vec2<i32>(u_input.c, -2177i) >> (global2.yw % vec2<u32>(32u))), max(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(-3186i, u_input.c)), -vec2<i32>(u_input.c, u_input.c))));
    global2 = ~min(select(vec4<u32>(0u, global2.x, global2.x, 4294967295u) >> (vec4<u32>(global2.x, 19545u, global3.b, global3.b) % vec4<u32>(32u)), min(vec4<u32>(4294967295u, 0u, global3.b, global2.x), vec4<u32>(4294967295u, global3.b, global3.b, global2.x)), !vec4<bool>(global3.a.x, false, true, global1.x)) << (~select(vec4<u32>(1u, global2.x, u_input.e.x, 22791u), vec4<u32>(4294967295u, 111878u, 23098u, 7848u), global3.a) % vec4<u32>(32u)), max(min(reverseBits(vec4<u32>(11461u, global3.b, 8394u, global2.x)), ~vec4<u32>(global3.b, 41225u, global2.x, 81595u)), vec4<u32>(_wgslsmith_mod_u32(0u, global2.x), firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global3.b, global3.b, 23796u), vec4<u32>(global3.b, global3.b, global3.b, global3.b)), 1u)));
    global2 = reverseBits(firstTrailingBit(~vec4<u32>(u_input.b.x, ~4294967295u, 35411u, _wgslsmith_sub_u32(78834u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -288f))), var_1, -_wgslsmith_add_vec4_i32((vec4<i32>(-72835i, u_input.c, -46833i, 1i) ^ vec4<i32>(u_input.c, 38758i, -2147483647i, u_input.c)) | ~vec4<i32>(-14733i, -86020i, u_input.c, 22506i), firstLeadingBit(vec4<i32>(u_input.c, 0i, -32160i, -6270i))), (abs(global2.ywx) >> (abs(reverseBits(global2.yzx)) % vec3<u32>(32u))) ^ ~(~global2.zzw));
}

