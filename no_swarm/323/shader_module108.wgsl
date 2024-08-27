struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 7> = array<vec3<bool>, 7>(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true));

var<private> global1: bool = true;

var<private> global2: vec4<f32> = vec4<f32>(-1911f, -1873f, 1479f, 1540f);

var<private> global3: u32;

var<private> global4: vec2<u32> = vec2<u32>(29193u, 1u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3) -> vec3<i32> {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, global4.x), reverseBits(49982u));
    global1 = true;
    let var_2 = global2.x;
    var var_3 = 68752u;
    return vec3<i32>(-2147483647i, u_input.a, _wgslsmith_add_i32(-u_input.a, 1i));
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    var var_0 = ~arg_0.d.a.x;
    global2 = vec4<f32>(-266f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(-854f - _wgslsmith_f_op_f32(1911f - _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-global2.x)))), global2.x);
    var var_1 = Struct_1(min(countOneBits(select(vec4<u32>(0u, 13863u, 24071u, 1u) ^ vec4<u32>(arg_0.d.a.x, 1u, arg_0.b.a.x, global4.x), arg_0.d.a, false)), ~abs(arg_0.b.a) << (max(vec4<u32>(0u, 642u, global4.x, arg_0.d.a.x) >> (vec4<u32>(global4.x, arg_0.b.a.x, arg_0.b.a.x, 4294967295u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(arg_0.b.a, arg_0.b.a, arg_0.d.a)) % vec4<u32>(32u))), arg_0.d.b);
    global4 = vec2<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 41871u), firstLeadingBit(arg_0.b.a.wz), vec2<u32>(81322u, 1u)), ~(~var_1.a.xy ^ (vec2<u32>(4294967295u, 14429u) ^ vec2<u32>(var_1.a.x, 49369u)))), global4.x);
    global4 = abs(~vec2<u32>(arg_0.b.a.x, 1u));
    return Struct_1(vec4<u32>(_wgslsmith_add_u32(select(reverseBits(5916u), 19308u, global2.x < -2175f), 17946u), arg_0.b.a.x, ~var_1.a.x, var_1.a.x), vec3<bool>(true, any(vec2<bool>(var_1.b.x, arg_0.b.b.x & var_1.b.x)), any(select(select(arg_0.b.b.zz, vec2<bool>(var_1.b.x, arg_0.b.b.x), var_1.b.x), var_1.b.xz, !vec2<bool>(var_1.b.x, false)))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    let var_0 = Struct_3(arg_1, 37042u, vec4<u32>(4294967295u, ~23274u, func_3(arg_3).a.x & arg_2.a.x, reverseBits(10632u)));
    let var_1 = (u_input.a & 2147483647i) | firstLeadingBit(70133i);
    var var_2 = arg_2;
    var var_3 = Struct_2(firstLeadingBit(select(-9241i, _wgslsmith_clamp_i32(1i, _wgslsmith_mult_i32(var_1, -2147483647i), ~arg_3.c.x), arg_3.b.b.x)), Struct_1(vec4<u32>(arg_1.a.x, ~(arg_3.b.a.x ^ arg_1.a.x), global4.x, ~(arg_3.d.a.x >> (36732u % 32u))), !select(select(var_2.b, var_2.b, var_2.b.x), !global0[_wgslsmith_index_u32(4294967295u, 7u)], select(vec3<bool>(false, arg_3.b.b.x, var_0.a.b.x), global0[_wgslsmith_index_u32(1u, 7u)], vec3<bool>(arg_2.b.x, true, var_0.a.b.x)))), max(arg_3.c, vec2<i32>(countOneBits(-24367i), ~2147483647i)) & vec2<i32>(~(-2875i), 2147483647i), arg_2);
    var var_4 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(~0u & ~var_0.b, var_2.a.x), ~arg_1.a.x, firstLeadingBit(4294967295u)), vec3<u32>(abs(var_0.b), reverseBits(~1u), max(~var_3.d.a.x & var_3.d.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.a.x, 0u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(23979u, arg_3.d.a.x, 10750u), arg_3.d.a.xzx)))));
    return var_3.d.a.x << (var_0.a.a.x % 32u);
}

fn func_1(arg_0: u32) -> vec4<u32> {
    var var_0 = true;
    var var_1 = func_4(!any(vec2<bool>(true, true)), Struct_1(~(~abs(vec4<u32>(29335u, 54606u, 44001u, arg_0))), global0[_wgslsmith_index_u32(~(~(~0u)), 7u)]), func_3(Struct_2(_wgslsmith_dot_vec3_i32(func_2(vec3<u32>(arg_0, 41042u, 4294967295u), Struct_3(Struct_1(vec4<u32>(arg_0, 25176u, arg_0, global4.x), vec3<bool>(true, true, false)), 4294967295u, vec4<u32>(962u, global4.x, 1u, 35924u))), vec3<i32>(26950i, u_input.a, 35424i) | vec3<i32>(-1i, -78482i, -23707i)), Struct_1(min(vec4<u32>(arg_0, arg_0, 4294967295u, 30051u), vec4<u32>(arg_0, 1u, global4.x, 1u)), select(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], true)), ~vec2<i32>(-42798i, u_input.a) ^ vec2<i32>(u_input.a, 35519i), Struct_1(~vec4<u32>(1u, 0u, 1u, 43858u), vec3<bool>(true, true, true)))), Struct_2(0i & u_input.a, func_3(Struct_2(0i, Struct_1(vec4<u32>(global4.x, global4.x, 14980u, 4294967295u), vec3<bool>(true, false, false)), vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(global4.x, 62161u) % vec2<u32>(32u)), Struct_1(vec4<u32>(global4.x, 49285u, global4.x, global4.x), global0[_wgslsmith_index_u32(global4.x, 7u)]))), -firstTrailingBit(firstLeadingBit(vec2<i32>(u_input.a, u_input.a))), Struct_1(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global4.x, 1u, global4.x), vec4<u32>(arg_0, 0u, 71776u, arg_0)), select(select(global0[_wgslsmith_index_u32(arg_0, 7u)], vec3<bool>(true, true, true), vec3<bool>(false, true, false)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, 40597u), 7u)], select(vec3<bool>(false, true, true), global0[_wgslsmith_index_u32(6794u, 7u)], true)))));
    var var_2 = vec3<bool>(func_3(Struct_2(abs(u_input.a | 0i), Struct_1(vec4<u32>(global4.x, 0u, global4.x, 41961u) | vec4<u32>(arg_0, 43022u, arg_0, 29924u), vec3<bool>(false, false, true)), vec2<i32>(u_input.a, u_input.a) & ~vec2<i32>(u_input.a, 1i), Struct_1(select(vec4<u32>(arg_0, 23462u, 1u, 8390u), vec4<u32>(global4.x, 74879u, global4.x, 1u), false), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)))).b.x, !(func_3(Struct_2(0i, Struct_1(vec4<u32>(arg_0, 33884u, arg_0, arg_0), vec3<bool>(false, false, true)), vec2<i32>(u_input.a, u_input.a), Struct_1(vec4<u32>(35256u, 11442u, 1u, 44811u), vec3<bool>(false, false, true)))).b.x | true), all(select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)))));
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -946f), global2.x, global2.x, _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(848f - -1870f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.x, global2.x))), 471f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), global2.x)));
    var var_3 = vec2<f32>(global2.x, global2.x);
    return min(firstLeadingBit(vec4<u32>(countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(1u, global4.x, 25881u))), ~4294967295u, global4.x, 34287u)), vec4<u32>(_wgslsmith_mod_u32(global4.x, ~(~arg_0)), _wgslsmith_div_u32(_wgslsmith_sub_u32(~global4.x, ~arg_0), _wgslsmith_add_u32(global4.x, abs(4294967295u))), _wgslsmith_dot_vec2_u32(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, 4294967295u), vec2<u32>(arg_0, 0u))), _wgslsmith_sub_vec2_u32(~vec2<u32>(45496u, 69484u), vec2<u32>(1u, 1u))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(reverseBits(arg_0), global4.x ^ 4294967295u), 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(true, true, false);
    global3 = 4294967295u;
    var var_1 = Struct_2(u_input.a, Struct_1(func_1(4305u & reverseBits(global4.x)), select(!vec3<bool>(var_0.x, true, false), vec3<bool>(all(vec4<bool>(var_0.x, false, var_0.x, true)), true, true), !var_0.x)), abs(vec2<i32>(u_input.a, -57234i)), Struct_1(vec4<u32>(89479u >> (_wgslsmith_div_u32(global4.x, 1u) % 32u), ~global4.x, ~45737u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(global4.x, 4294967295u, global4.x, global4.x)), vec4<u32>(global4.x, global4.x, 1u, global4.x))), vec3<bool>(0i != u_input.a, var_0.x, true)));
    let var_2 = any(select(select(vec4<bool>(any(vec4<bool>(var_0.x, var_0.x, var_1.b.b.x, var_0.x)), true, true, var_1.c.x < -2147483647i), !(!vec4<bool>(var_1.d.b.x, var_0.x, true, var_0.x)), (true || var_0.x) || !var_0.x), vec4<bool>(!any(vec3<bool>(false, var_0.x, var_0.x)), !var_0.x, var_0.x, !(var_0.x && true)), select(!var_1.b.b.x, all(select(var_0.zz, var_1.d.b.xz, vec2<bool>(var_1.b.b.x, true))), func_3(Struct_2(2147483647i, var_1.b, vec2<i32>(var_1.a, -27448i), Struct_1(var_1.d.a, global0[_wgslsmith_index_u32(global4.x, 7u)]))).b.x)));
    global4 = var_1.d.a.zw;
    let var_3 = func_3(Struct_2(~u_input.a, var_1.d, ~_wgslsmith_mult_vec2_i32(var_1.c, var_1.c) & -var_1.c, var_1.b));
    global1 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(1u ^ _wgslsmith_sub_u32(func_1(var_1.d.a.x).x, _wgslsmith_div_u32(~var_3.a.x, ~1u)), ~(-15729i) | _wgslsmith_mult_i32(var_1.c.x, _wgslsmith_add_i32(2147483647i, -1i)), -416f);
}

