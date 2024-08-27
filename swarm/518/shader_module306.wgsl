struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(1892f, 250f, -1388f, 1279f, -383f, 764f, 1684f, 346f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: u32, arg_3: bool) -> vec3<f32> {
    global0 = array<f32, 8>();
    var var_0 = false;
    let var_1 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(21115u, 8u)], global0[_wgslsmith_index_u32(u_input.b.x, 8u)])) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-954f, -498f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4925u, 8u)], 961f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1288f, -1814f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], global0[_wgslsmith_index_u32(25779u, 8u)])))))));
    var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~4294967295u, 8u)]) == _wgslsmith_f_op_f32(sign(-139f));
    var_0 = arg_0.x;
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(28048u, 8u)]))), global0[_wgslsmith_index_u32(abs(firstTrailingBit(78940u | arg_2)), 8u)], 1f));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: Struct_3) -> vec3<bool> {
    global0 = array<f32, 8>();
    let var_0 = Struct_2(u_input.a, Struct_1(u_input.b.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-319f, 105f, global0[_wgslsmith_index_u32(34703u, 8u)]), vec3<f32>(global0[_wgslsmith_index_u32(95528u, 8u)], 1411f, 1580f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(true, false, false, false), 5988i, 1u, true)))), ~vec2<u32>(_wgslsmith_add_u32(0u, u_input.b.x), ~1u)), select(1u, 1u, true), Struct_1(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(arg_2.x, arg_1.x), arg_2.x, _wgslsmith_mod_u32(arg_1.x, u_input.b.x)), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(true, true, true, true), _wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.zz), _wgslsmith_mult_u32(10348u, 1u), true)).x, 1549f, global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), max(vec2<u32>(4294967295u, 0u), arg_1.yx)));
    global0 = array<f32, 8>();
    let var_1 = Struct_4(Struct_1(countOneBits(~arg_1.x), var_0.d.b, ~vec2<u32>(~57690u, _wgslsmith_mod_u32(var_0.d.a, 48957u))), arg_3.a, var_0.b.b, vec2<u32>(var_0.b.c.x, 4294967295u << (_wgslsmith_dot_vec2_u32(arg_2, arg_2) % 32u)) << (~(~vec2<u32>(7984u, var_0.c)) % vec2<u32>(32u)));
    global0 = array<f32, 8>();
    return select(!vec3<bool>(true, true, ~(-2147483647i) != (u_input.a.x << (u_input.b.x % 32u))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, false, true))), !all(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)));
}

fn func_1() -> Struct_3 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.b.x, 8u)]), global0[_wgslsmith_index_u32(44329u, 8u)], _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 8u)], _wgslsmith_f_op_f32(-1273f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 8u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.b.x, 8u)]))) * 1992f) * -546f));
    let var_1 = -firstTrailingBit(max(u_input.a << (u_input.b.ywz % vec3<u32>(32u)), ~u_input.a)) >> ((select(u_input.b.wzx, abs(u_input.b.xyy), !any(vec3<bool>(true, true, true))) & vec3<u32>(0u, u_input.b.x, ~u_input.b.x)) % vec3<u32>(32u));
    global0 = array<f32, 8>();
    var var_2 = select(select(vec2<bool>(true, true), vec2<bool>(select(false, true, true), all(func_2(1123f, u_input.b, u_input.b.zy, Struct_3(var_0.x)))), vec2<bool>(true, true)), !vec2<bool>(false, select(true, true, false)), !vec2<bool>(select(true, all(vec2<bool>(true, false)), true), !any(vec4<bool>(true, true, true, false))));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(var_0.zy, var_0.yy, var_2.x));
    return Struct_3(_wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -247f)))), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.ww)) > 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 17892i <= -u_input.a.x;
    let var_1 = select(!(!vec2<bool>(false, 41668u > u_input.b.x)), !(!select(select(vec2<bool>(false, false), vec2<bool>(false, var_0), true), !vec2<bool>(false, var_0), vec2<bool>(true, true))), !(~(~u_input.b.x) > firstLeadingBit(~50633u)));
    var var_2 = func_1();
    let var_3 = -abs(u_input.a.x) & 1i;
    let var_4 = Struct_5(Struct_2(u_input.a, Struct_1(0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-674f, -542f, global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), vec3<f32>(-633f, global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 1066f), false)) + _wgslsmith_f_op_vec3_f32(func_3(vec4<bool>(var_1.x, var_0, var_1.x, var_0), -1i, u_input.b.x, false))), ~(~u_input.b.zw)), _wgslsmith_mod_u32(max(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 35296u), u_input.b.x >> (6620u % 32u)), ~u_input.b.x), Struct_1(_wgslsmith_div_u32(41164u, firstTrailingBit(u_input.b.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(579f, global0[_wgslsmith_index_u32(25126u, 8u)], 643f))))), vec2<u32>(0u >> (u_input.b.x % 32u), firstLeadingBit(u_input.b.x)))));
    var var_5 = !(!(!vec3<bool>(var_0, var_1.x, false)));
    var var_6 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a.d.b.x, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(select(u_input.b.x, var_4.a.b.a, false)), 8u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_4.a.b.b.x)) + 1784f)), _wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_4.a.b.c, vec2<u32>(var_4.a.b.a, 0u)), 8u)], 369f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.a.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(0u, 8u)], 584f, 744f, var_6.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(656f, var_2.a, global0[_wgslsmith_index_u32(u_input.b.x, 8u)], var_6.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_6.x, var_2.a, var_4.a.b.b.x, 1163f) - vec4<f32>(1180f, -630f, global0[_wgslsmith_index_u32(var_4.a.c, 8u)], global0[_wgslsmith_index_u32(160777u, 8u)]))), !select(vec4<bool>(true, true, var_5.x, var_0), vec4<bool>(var_0, var_0, false, var_1.x), var_5.x))))));
}

