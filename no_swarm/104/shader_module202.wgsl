struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: Struct_1,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(0u, 4294967295u, 71888u, 3489u, 0u, 1u, 0u, 0u, 0u, 40002u, 1u, 0u, 9977u, 41730u, 4294967295u, 0u, 18776u, 4294967295u, 49841u, 4294967295u, 1u, 1u, 4294967295u, 1u, 4294967295u, 9945u, 59537u, 49026u, 23095u);

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-531f)));
    var var_1 = -(-(~select(u_input.c.x, -2147483647i, false)) << (u_input.d.x % 32u));
    global1 = select(!select(select(select(vec3<bool>(true, true, false), vec3<bool>(global1.x, global1.x, true), global1.x), select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, true, global1.x)), vec3<bool>(false, global1.x, global1.x)), !(!vec3<bool>(global1.x, false, global1.x)), select(vec3<bool>(false, global1.x, true), select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(false, global1.x, global1.x), global1.x), select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, global1.x, global1.x)))), vec3<bool>(true, all(vec2<bool>(true, true)), global1.x), vec3<bool>(!(_wgslsmith_mult_i32(-2147483647i, arg_0) <= _wgslsmith_mult_i32(arg_0, 11211i)), true, true));
    var var_2 = Struct_2(vec3<bool>(any(!(!vec4<bool>(true, global1.x, true, true))), select(global1.x, true, global1.x) && !(!global1.x), select(global1.x, !(!global1.x), global1.x)), _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~firstTrailingBit(u_input.d.x), 4294967295u, 1u), ~_wgslsmith_div_u32(u_input.d.x, ~4294967295u), _wgslsmith_mod_u32(firstTrailingBit(4294967295u), 4294967295u)), 72456u >= (~_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(1u, 29u)], arg_1.x, 1u), vec3<u32>(1u, 4294967295u, 1u)) >> (6329u % 32u)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(152f, 254f, 1000f), vec3<f32>(907f, -1379f, -899f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-720f, 382f, 1411f)))) + vec3<f32>(1f, _wgslsmith_f_op_f32(abs(-555f)), _wgslsmith_f_op_f32(f32(-1f) * -983f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1249f * _wgslsmith_f_op_f32(abs(103f)))), _wgslsmith_f_op_f32(floor(432f)), _wgslsmith_f_op_f32(floor(1f))), u_input.c);
    var var_3 = var_2.d;
    return vec2<u32>(arg_1.x, abs(global0[_wgslsmith_index_u32(firstTrailingBit(~0u), 29u)] | ~0u));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec2<bool>, arg_3: vec2<u32>) -> vec4<u32> {
    var var_0 = !all(arg_2);
    var var_1 = u_input.c.yz;
    let var_2 = ~u_input.c.zw;
    return ~_wgslsmith_sub_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 29u)], 84084u, u_input.e.x, arg_3.x), ~vec4<u32>(1248u & arg_3.x, ~global0[_wgslsmith_index_u32(4294967295u, 29u)], ~0u, abs(1u)));
}

fn func_2() -> Struct_2 {
    let var_0 = countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(115849u, 29u)], _wgslsmith_clamp_u32(~u_input.d.x, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 4294967295u), 29u)], _wgslsmith_add_u32(32705u, u_input.e.x)), select(select(0u, 1u, global1.x), ~u_input.e.x, true), u_input.d.x | (1u | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 29u)], 29u)])), ~func_4(639f, -1000f, select(vec2<bool>(global1.x, global1.x), global1.zz, true), func_3(u_input.c.x, vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], 18613u, 0u, 20918u)))));
    var var_1 = select(select(select(select(select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, global1.x), true), !vec4<bool>(global1.x, global1.x, global1.x, true), !vec4<bool>(false, true, global1.x, global1.x)), vec4<bool>(!global1.x, true, true, true), false), vec4<bool>(true, false, true, true), u_input.b.x == 0i), select(!select(select(vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(false, true, true, false), vec4<bool>(true, true, global1.x, global1.x)), select(vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(global1.x, true, global1.x, false)), all(vec4<bool>(global1.x, global1.x, true, true))), select(vec4<bool>(true, true, !global1.x, global1.x), vec4<bool>(true, !global1.x, select(false, global1.x, global1.x), true), select(select(vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, global1.x), true), u_input.a == 79997u)), all(vec4<bool>(global1.x && global1.x, true, true, true))), !vec4<bool>(true, !global1.x, false, global1.x));
    let var_2 = Struct_2(!var_1.xwz, 0u, false, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1174f, 1976f)), 1810f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1745f, 835f, false)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-192f + 1263f)))), -614f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1045f))), -358f))), vec4<i32>(_wgslsmith_clamp_i32(2147483647i, select(u_input.c.x, -2226i, global1.x != var_1.x), 2147483647i), min(u_input.c.x, select(0i, firstTrailingBit(-2147483647i), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 29u)], 29u)] == global0[_wgslsmith_index_u32(4294967295u, 29u)])), ~u_input.b.x, _wgslsmith_mult_i32(reverseBits(_wgslsmith_mod_i32(u_input.b.x, 1i)), 1i >> (_wgslsmith_add_u32(var_0.x, var_0.x) % 32u))));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.d.b, var_2.d.a.x) + _wgslsmith_div_vec2_f32(var_2.d.a.zy, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1167f, _wgslsmith_f_op_f32(abs(var_2.d.c))) * var_2.d.a.xz)));
    global0 = array<u32, 29>();
    return Struct_2(select(vec3<bool>(all(!vec4<bool>(global1.x, global1.x, false, global1.x)), all(vec4<bool>(false, var_2.a.x, true, true)), var_2.a.x), var_1.yzw, var_1.x), 0u, !((!global1.x | all(var_2.a)) | !all(var_1.yxy)), var_2.d, vec4<i32>(-2147483647i, abs(0i), -2147483647i, var_2.e.x) ^ (~select(vec4<i32>(u_input.b.x, 0i, var_2.e.x, -1i), vec4<i32>(2147483647i, 0i, 0i, var_2.e.x), false) ^ vec4<i32>(2147483647i, var_2.e.x, _wgslsmith_mod_i32(23469i, u_input.b.x), u_input.b.x)));
}

fn func_5(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> vec3<bool> {
    global0 = array<u32, 29>();
    return func_2().a;
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> bool {
    global1 = !func_5(u_input.b, global1.x, func_2(), abs(~_wgslsmith_mod_u32(u_input.e.x, 73218u)));
    var var_0 = arg_1;
    let var_1 = func_2().d;
    var var_2 = -arg_0;
    let var_3 = false;
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!vec3<bool>(all(vec4<bool>(global1.x, global1.x, global1.x, true)) && true, true, func_1(i32(-1i) * -46578i, Struct_1(vec3<f32>(282f, 1243f, -379f), -287f, -1291f, -1022f), -107f)), ~select(0u >> (u_input.e.x % 32u), global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.e.x, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 29u)], 29u)], 29u)]), 29u)], true), func_1(abs(-select(-35697i, -29292i, global1.x)), func_2().d, 1051f), func_2().d, vec4<i32>(_wgslsmith_sub_i32(-u_input.c.x >> (global0[_wgslsmith_index_u32(4228u, 29u)] % 32u), _wgslsmith_div_i32(~u_input.c.x, -u_input.c.x)), 19111i, ~u_input.b.x, i32(-1i) * -u_input.c.x));
    global1 = func_2().a;
    var var_1 = select(global1.x, var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.d.c))) + _wgslsmith_f_op_f32(floor(var_0.d.b))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.d.a.x)))));
    let var_2 = true;
    var var_3 = var_0.d;
    var var_4 = _wgslsmith_dot_vec3_i32((vec3<i32>(_wgslsmith_sub_i32(22311i, -56111i), -14006i, -3688i) | vec3<i32>(_wgslsmith_add_i32(20875i, 1i), -6971i, u_input.b.x)) | ~vec3<i32>(var_0.e.x, _wgslsmith_mult_i32(-48194i, -1i), _wgslsmith_add_i32(var_0.e.x, 19253i)), vec3<i32>(-_wgslsmith_add_i32(_wgslsmith_clamp_i32(var_0.e.x, -7778i, var_0.e.x), func_2().e.x), (~81311i | _wgslsmith_add_i32(-39029i, u_input.b.x)) << (~(~40810u) % 32u), var_0.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-21415i), 1069f, _wgslsmith_f_op_f32(-var_0.d.a.x));
}

