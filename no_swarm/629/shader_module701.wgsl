struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<bool>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<i32>) -> bool {
    let var_0 = arg_0;
    return arg_1.x;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec3<u32>, arg_3: i32) -> vec2<bool> {
    var var_0 = -1000f;
    global0 = array<u32, 14>();
    let var_1 = ~(~_wgslsmith_add_i32(u_input.c.x | ~0i, ~countOneBits(u_input.c.x)));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(345f))))))));
    let var_3 = select(u_input.c.zyy, -u_input.c.wwz ^ u_input.c.yyy, any(select(select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), vec2<bool>(false, true)), !vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0))) | (_wgslsmith_div_i32(~arg_1, _wgslsmith_add_i32(arg_1, 24317i)) <= var_1));
    return select(vec2<bool>(arg_0, _wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(arg_2.x, 14u)]) <= _wgslsmith_dot_vec4_u32(max(vec4<u32>(arg_2.x, 0u, global0[_wgslsmith_index_u32(u_input.a, 14u)], 38479u), vec4<u32>(13406u, arg_2.x, global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(arg_2.x, 14u)])), reverseBits(vec4<u32>(4294967295u, 11859u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 14u)], u_input.a)))), vec2<bool>(!(!(false & arg_0)), true), all(!vec2<bool>(arg_0, any(vec4<bool>(true, true, arg_0, false)))));
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_5 {
    var var_0 = select(select(vec2<bool>(false, func_2(Struct_2(-30038i), vec2<bool>(false, true), vec4<i32>(u_input.b, 26216i, 9749i, u_input.c.x))), !func_3(!arg_0, min(17252i, -17614i), _wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1707u, 14u)], 14u)], 1u, 16610u), vec3<u32>(96268u, u_input.a, global0[_wgslsmith_index_u32(22299u, 14u)])), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.c.x, u_input.c.x), vec3<i32>(-2147483647i, u_input.b, u_input.b))), vec2<bool>(func_2(Struct_2(u_input.c.x), !vec2<bool>(true, arg_1), abs(u_input.c)), true)), vec2<bool>(true, true), vec2<bool>(true, true));
    var var_1 = Struct_4(~(abs(vec4<u32>(u_input.a, 0u, 1u, 42015u)) ^ reverseBits(~vec4<u32>(u_input.a, 1u, 1u, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) <= _wgslsmith_div_f32(-814f, _wgslsmith_f_op_f32(-2260f + -308f)), Struct_2(countOneBits(-1i)), -(~u_input.c.ywx));
    let var_2 = u_input.c.x;
    let var_3 = _wgslsmith_div_u32(1u, _wgslsmith_dot_vec3_u32(var_1.a.yxz << (vec3<u32>(1u, 33929u, 0u) % vec3<u32>(32u)), select(~vec3<u32>(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(94283u, 14u)]) | (var_1.a.zyw << (vec3<u32>(0u, var_1.a.x, 120679u) % vec3<u32>(32u))), min(vec3<u32>(var_1.a.x, 45871u, u_input.a), var_1.a.yxw), !any(vec2<bool>(true, true)))));
    var var_4 = var_1.a.zxz;
    return Struct_5(_wgslsmith_dot_vec2_u32(var_4.yz, firstLeadingBit(reverseBits(var_4.yy & vec2<u32>(59787u, 0u)))), ~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~var_1.d, u_input.c.zwy), u_input.c.xyx), Struct_1(abs(select(_wgslsmith_div_vec4_u32(var_1.a, vec4<u32>(var_3, 1u, var_4.x, 4294967295u)), abs(var_1.a), any(vec4<bool>(false, true, true, var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(207f + -910f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-1024f, -1486f, false))))), select(vec3<bool>(true, all(vec4<bool>(false, false, false, false)), var_0.x), select(vec3<bool>(arg_1, false, var_0.x), select(vec3<bool>(false, arg_1, false), vec3<bool>(var_0.x, arg_0, arg_0), arg_0), vec3<bool>(arg_0, arg_0, arg_0)), false), vec3<u32>(var_3, ~var_4.x, abs(select(0u, 40613u, true))), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-912f, 1594f, -914f), vec3<f32>(-621f, -1026f, 1325f)))))));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: vec3<bool>) -> Struct_5 {
    let var_0 = _wgslsmith_add_u32(countOneBits(~(~66110u)), u_input.a) >> (_wgslsmith_sub_u32(~arg_1.a, _wgslsmith_div_u32(firstTrailingBit(0u), arg_0)) % 32u);
    var var_1 = firstTrailingBit(_wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(-2147483647i, -1i, ~_wgslsmith_mod_i32(-1i, 1i), _wgslsmith_div_i32(u_input.b, ~(-55174i)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-219f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.c.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -1307f)), 202f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(841f, arg_1.d.x, -255f, arg_1.c.b)) - vec4<f32>(326f, arg_1.d.x, -1000f, -175f))))));
    global0 = array<u32, 14>();
    let var_3 = Struct_4(vec4<u32>(~4294967295u, firstLeadingBit(10479u), min(15404u, firstLeadingBit(global0[_wgslsmith_index_u32(countOneBits(0u), 14u)])), 1u), (select(_wgslsmith_dot_vec4_u32(arg_1.c.a, vec4<u32>(85238u, 33101u, var_0, global0[_wgslsmith_index_u32(u_input.a, 14u)])), u_input.a, !arg_2.x) == arg_0) && ((~31269u != select(global0[_wgslsmith_index_u32(0u, 14u)], 4294967295u, arg_1.c.c.x)) & false), Struct_2(abs(-arg_1.b)), ~u_input.c.zzw);
    return arg_1;
}

fn func_5(arg_0: Struct_5, arg_1: i32) -> StorageBuffer {
    let var_0 = Struct_2(arg_1);
    let var_1 = var_0;
    var var_2 = ~(_wgslsmith_dot_vec3_u32(firstTrailingBit(arg_0.c.a.yzz >> (vec3<u32>(53901u, 19706u, u_input.a) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.c.a.x, global0[_wgslsmith_index_u32(u_input.a, 14u)], u_input.a), firstLeadingBit(arg_0.c.a.zyx))) & global0[_wgslsmith_index_u32(max(~abs(u_input.a), firstTrailingBit(18332u)), 14u)]);
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    return StorageBuffer(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, arg_1, func_1(false, arg_0.c.c.x).b, abs(-var_0.a)), vec4<i32>(-1i, ~_wgslsmith_mod_i32(var_1.a, arg_1), -_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), -2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 14>();
    var var_0 = -43243i;
    global0 = array<u32, 14>();
    var var_1 = _wgslsmith_f_op_f32(round(1f));
    var var_2 = 7465u;
    var_0 = i32(-1i) * -5471i;
    let x = u_input.a;
    s_output = func_5(func_4(~select(~global0[_wgslsmith_index_u32(1u, 14u)], _wgslsmith_dot_vec2_u32(vec2<u32>(37742u, global0[_wgslsmith_index_u32(u_input.a, 14u)]), vec2<u32>(73835u, global0[_wgslsmith_index_u32(u_input.a, 14u)])), all(vec4<bool>(true, false, false, false))), func_1(all(vec3<bool>(false, true, true)), true), select(vec3<bool>(true, true, true), select(func_1(false, false).c.c, vec3<bool>(true, true, true), true), true)), _wgslsmith_dot_vec2_i32(u_input.c.zz << (firstLeadingBit(firstLeadingBit(vec2<u32>(3004u, 5950u))) % vec2<u32>(32u)), -u_input.c.xx));
}

