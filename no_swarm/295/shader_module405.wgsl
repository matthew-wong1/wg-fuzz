struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 23>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_2) -> f32 {
    var var_0 = arg_2;
    let var_1 = vec4<bool>(true, all(select(select(!vec3<bool>(global1[_wgslsmith_index_u32(0u, 23u)], true, global1[_wgslsmith_index_u32(var_0.x, 23u)]), vec3<bool>(true, true, true), arg_2.x < u_input.d), vec3<bool>(true, any(vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 23u)])), any(vec2<bool>(false, global1[_wgslsmith_index_u32(1u, 23u)]))), global1[_wgslsmith_index_u32(14842u, 23u)])), all(select(select(vec3<bool>(true, true, global1[_wgslsmith_index_u32(arg_2.x, 23u)]), vec3<bool>(global1[_wgslsmith_index_u32(26304u, 23u)], false, false), vec3<bool>(false, true, global1[_wgslsmith_index_u32(var_0.x, 23u)])), !(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 23u)], true, global1[_wgslsmith_index_u32(4294967295u, 23u)])), all(vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 23u)])) & !global1[_wgslsmith_index_u32(u_input.d, 23u)])), all(!(!select(vec3<bool>(global1[_wgslsmith_index_u32(arg_2.x, 23u)], false, global1[_wgslsmith_index_u32(22376u, 23u)]), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 23u)], global1[_wgslsmith_index_u32(arg_2.x, 23u)]), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(u_input.d, 23u)])))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.c.a + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.a.a.x, -210f)))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.a.x))));
    var var_4 = Struct_2(arg_3.a, ~(~vec3<i32>(u_input.a.x, _wgslsmith_div_i32(arg_0.b.x, -34271i), ~u_input.c.x)), Struct_1(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(169f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a.a.x))));
}

fn func_2() -> bool {
    global0 = -2147483647i;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2110f, -1119f, -158f), vec3<f32>(210f, 879f, 457f), vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 23u)], true, global1[_wgslsmith_index_u32(u_input.d, 23u)]))) * vec3<f32>(1885f, -603f, 1841f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-229f, 2235f, 270f)))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-2486f, 2006f, _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(1558f + -563f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(482f, -694f, -878f) * vec3<f32>(-277f, -908f, -1047f)) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1527f, 457f, 481f)))))));
    var var_1 = u_input.a.yy;
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_div_f32(-934f, -1000f), _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(var_0.xz), vec3<i32>(var_1.x, u_input.a.x, 44361i), Struct_1(vec2<f32>(var_0.x, var_0.x))), Struct_1(_wgslsmith_f_op_vec2_f32(abs(var_0.xx))), ~(~vec2<u32>(u_input.d, u_input.d)), Struct_2(Struct_1(vec2<f32>(var_0.x, -936f)), countOneBits(vec3<i32>(-34758i, -1i, -57988i)), Struct_1(vec2<f32>(var_0.x, 1083f)))))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_2.a))))))));
    return any(select(!(!select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 23u)], global1[_wgslsmith_index_u32(u_input.d, 23u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d, 23u)], false, global1[_wgslsmith_index_u32(8810u, 23u)]), vec4<bool>(global1[_wgslsmith_index_u32(102u, 23u)], true, true, global1[_wgslsmith_index_u32(4294967295u, 23u)]))), select(vec4<bool>(true, false, u_input.d <= u_input.d, false), vec4<bool>(true, u_input.d > u_input.d, !global1[_wgslsmith_index_u32(53030u, 23u)], true), !global1[_wgslsmith_index_u32(max(20250u, u_input.d), 23u)]), false));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: vec2<i32>, arg_3: u32) -> bool {
    let var_0 = vec3<u32>(_wgslsmith_div_u32(abs(4294967295u), 43788u), ~4294967295u, 70485u);
    var var_1 = !select(select(!(!arg_0.zxz), !arg_0.zxz, !arg_0.xyw), vec3<bool>(true, func_2(), global1[_wgslsmith_index_u32(select(41230u, 32361u, global1[_wgslsmith_index_u32(0u, 23u)] | true), 23u)]), arg_0.zwx);
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-207f, 867f)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(686f, -1000f))), var_1.x)))));
    var var_3 = Struct_2(Struct_1(var_2.a), _wgslsmith_div_vec3_i32(vec3<i32>(-(~u_input.b.x), arg_1, -31092i), vec3<i32>(2147483647i, 58782i, u_input.a.x)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(abs(-299f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(var_2.a), u_input.a, Struct_1(var_2.a)), Struct_1(vec2<f32>(558f, -846f)), vec2<u32>(u_input.d, 4294967295u), Struct_2(Struct_1(vec2<f32>(146f, 1656f)), u_input.b.xzw, Struct_1(var_2.a)))) * -191f))));
    var_3 = Struct_2(var_3.a, vec3<i32>(u_input.a.x, arg_1, var_3.b.x >> (_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.d, var_0.x), arg_3) % 32u)), var_3.c);
    return !(var_2.a.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(2201f, var_2.a.x))) - _wgslsmith_div_f32(975f, _wgslsmith_f_op_f32(-481f * var_3.a.a.x))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> StorageBuffer {
    global1 = array<bool, 23>();
    let var_0 = vec4<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(u_input.d & 4294967295u, countOneBits(u_input.d)) << (1u % 32u), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.d, 5667u)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, u_input.d), vec2<u32>(0u, u_input.d)))), _wgslsmith_add_u32(u_input.d, (~92083u | _wgslsmith_div_u32(u_input.d, u_input.d)) | (_wgslsmith_div_u32(0u, u_input.d) >> (countOneBits(u_input.d) % 32u))), min(~(1u >> (_wgslsmith_div_u32(u_input.d, 4991u) % 32u)), u_input.d), abs(u_input.d));
    var var_1 = _wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-715f))));
    let var_2 = arg_1.a.x;
    let var_3 = u_input.d;
    return StorageBuffer(13597u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -477f), _wgslsmith_f_op_f32(-738f + -1219f))), 2527f))));
    global1 = array<bool, 23>();
    let var_1 = global1[_wgslsmith_index_u32(min(firstLeadingBit(abs(~1u)), ~(u_input.d << (1u % 32u))), 23u)];
    global1 = array<bool, 23>();
    var var_2 = global1[_wgslsmith_index_u32(1u, 23u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(select(var_0.a, vec2<f32>(_wgslsmith_div_f32(2007f, var_0.a.x), -671f), !any(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(8103u, 23u)], global1[_wgslsmith_index_u32(u_input.d, 23u)]))));
    let x = u_input.a;
    s_output = func_4(select(vec4<bool>(true, true, true, true), !vec4<bool>(any(vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(u_input.d, 23u)])), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, 4294967295u, u_input.d), vec4<u32>(u_input.d, 81518u, u_input.d, 1u)), 23u)], true, func_1(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(u_input.d, 23u)], true), -59816i, u_input.b.xz, 1u)), !select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 23u)], false, false, true), !vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 23u)], true, global1[_wgslsmith_index_u32(u_input.d, 23u)]), vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.d, 23u)], global1[_wgslsmith_index_u32(0u, 23u)]))), var_0);
}

