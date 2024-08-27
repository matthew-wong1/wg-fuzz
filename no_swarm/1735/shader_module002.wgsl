struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2> = array<f32, 2>(-1369f, 2051f);

var<private> global1: Struct_1;

var<private> global2: array<f32, 22>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: i32, arg_3: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(max(34159u, 43690u), 22u)] + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(73076u, 22u)])))))));
    let var_1 = arg_3.x;
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(11313u, 22u)], global0[_wgslsmith_index_u32(arg_1, 2u)], false)) - _wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(arg_1, 22u)], 975f))), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(countOneBits(58468u), 22u)])), any(!arg_3))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1, 22u)]))))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~4294967295u, 2u)])));
    global0 = array<f32, 2>();
    var var_2 = ~4294967295u;
    return arg_3.x;
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = u_input.e.x;
    let var_1 = Struct_1(!(!(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 22u)]) != 875f)));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1450f, 1022f)) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(0u, 2u)], -2283f) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 1315f), vec2<f32>(-246f, global0[_wgslsmith_index_u32(u_input.b, 2u)]))))))));
    global0 = array<f32, 2>();
    global1 = Struct_1(true);
    return firstLeadingBit((vec2<i32>(~(-1i), u_input.a.x) | _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.xw, vec2<i32>(u_input.a.x, 2147483647i)), -u_input.a.yw)) << (reverseBits(vec2<u32>(~4294967295u, 40010u << (u_input.b % 32u))) % vec2<u32>(32u)));
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_1(select(global1.a, global1.a, reverseBits(1u) <= u_input.b));
    var var_1 = vec4<i32>(u_input.a.x, ~(-27353i), countOneBits(~_wgslsmith_dot_vec3_i32(-u_input.e.yzx, vec3<i32>(-997i, u_input.e.x, u_input.c))), -_wgslsmith_add_i32(-2147483647i, 2147483647i));
    var var_2 = _wgslsmith_dot_vec2_i32(func_3(true || all(vec2<bool>(var_0.a, var_0.a)), Struct_1(var_0.a)), _wgslsmith_sub_vec2_i32(var_1.xx, vec2<i32>(-1i, -51920i)));
    let var_3 = Struct_1(-1657i >= firstLeadingBit(var_1.x));
    var_1 = u_input.a;
    return _wgslsmith_mod_vec4_u32(min(_wgslsmith_mod_vec4_u32(~countOneBits(vec4<u32>(14283u, u_input.b, u_input.b, u_input.b)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), ~vec4<u32>(1u, u_input.b, u_input.b, 35985u))), abs(~vec4<u32>(u_input.b, 38643u, 1u, 1u))), vec4<u32>(~u_input.b, ~u_input.b, ~min(~u_input.b, _wgslsmith_mult_u32(17039u, u_input.b)), 61204u));
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<u32>, arg_3: Struct_1) -> vec2<bool> {
    global0 = array<f32, 2>();
    var var_0 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b & ~40426u, _wgslsmith_dot_vec3_u32(~arg_2.ywy, vec3<u32>(4294967295u, arg_2.x, 29839u))), vec2<u32>(arg_2.x, ~(~u_input.b)));
    let var_1 = select(arg_1.yx, !arg_1.zz, !select(select(vec2<bool>(arg_1.x, global1.a), select(vec2<bool>(arg_3.a, arg_1.x), arg_1.xx, arg_1.yz), arg_1.xy), vec2<bool>(arg_3.a, !arg_1.x), vec2<bool>(any(vec4<bool>(arg_3.a, true, arg_1.x, global1.a)), !arg_3.a)));
    var var_2 = u_input.a.x;
    var_0 = firstTrailingBit(arg_2.ww);
    return vec2<bool>(true, any(select(!arg_1, select(select(arg_1, vec3<bool>(arg_1.x, var_1.x, var_1.x), var_1.x), !arg_1, arg_1.x), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 22>();
    var var_0 = select(func_4(-1681f, vec3<bool>(global1.a, func_1(u_input.e.zxw, 1u, 13832i << (u_input.b % 32u), vec2<bool>(global1.a, true)), true), func_2(), Struct_1(global1.a)), vec2<bool>(abs(-14866i) == _wgslsmith_dot_vec2_i32(u_input.a.ww ^ u_input.a.xz, vec2<i32>(1i, u_input.e.x)), any(!(!vec2<bool>(global1.a, global1.a)))), any(vec2<bool>(global1.a, false)));
    let var_1 = ~(~u_input.b & ~_wgslsmith_dot_vec3_u32(vec3<u32>(14351u, 1u, 4294967295u), vec3<u32>(16904u, u_input.b, 2363u))) >> (4294967295u % 32u);
    var var_2 = Struct_1(u_input.b == _wgslsmith_div_u32(90639u, 1u));
    var var_3 = select(vec4<u32>(4294967295u, 4294967295u, ~47910u, max(~73293u, ~u_input.b)) | _wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.b, 0u, 0u, var_1)), ~(~vec4<u32>(27101u, u_input.b, 28546u, 56931u))), vec4<u32>(144764u, firstTrailingBit(~1u) << (select(_wgslsmith_div_u32(u_input.b, var_1), var_1, var_0.x) % 32u), ~min(~0u, abs(var_1)), 14666u & countOneBits(~u_input.b)), select(vec4<bool>(true, true, _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(26639u, 22u)])) >= -165f, global1.a), select(vec4<bool>(any(vec4<bool>(true, var_0.x, false, var_0.x)), true, true, true), !vec4<bool>(true, var_0.x, false, var_0.x), var_0.x), false));
    var var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-394f, 1324f, global2[_wgslsmith_index_u32(9834u, 22u)]), vec3<f32>(-1000f, -561f, 408f), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-793f, -216f, global0[_wgslsmith_index_u32(52794u, 2u)]) * vec3<f32>(global2[_wgslsmith_index_u32(var_3.x, 22u)], -1267f, -486f)))))));
    let var_5 = Struct_1(abs(1u) < _wgslsmith_div_u32(1u, var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(max(1i, u_input.a.x) << (abs(~u_input.b) % 32u), var_4.x);
}

