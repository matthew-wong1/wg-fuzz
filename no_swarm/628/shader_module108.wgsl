struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: array<f32, 4> = array<f32, 4>(-152f, -885f, 109f, 960f);

var<private> global2: vec3<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> u32 {
    global0 = array<f32, 3>();
    let var_0 = ~(~(~u_input.b.x));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-498f - -1000f)), -212f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], 357f), _wgslsmith_f_op_f32(sign(-300f))))))), false, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(503f, -918f, -363f, 1091f), vec4<f32>(1185f, global0[_wgslsmith_index_u32(22491u, 3u)], global0[_wgslsmith_index_u32(0u, 3u)], global0[_wgslsmith_index_u32(15235u, 3u)]))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-615f, global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 4u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]) * vec4<f32>(-542f, global1[_wgslsmith_index_u32(21069u, 4u)], -1305f, -264f))))))));
    let var_2 = !vec3<bool>(var_1.b & var_1.b, global2.x, false);
    var_1 = Struct_2(var_1.c, false, vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(5967u, 3u)]), var_1.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 4u)]))), _wgslsmith_div_f32(1682f, 1000f)));
    return _wgslsmith_mult_u32((min(u_input.a.x, 1u) >> ((~u_input.a.x >> ((7268u << (u_input.a.x % 32u)) % 32u)) % 32u)) ^ max(~_wgslsmith_add_u32(u_input.a.x, 0u), u_input.a.x), 2884u);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(~11325u, countOneBits(u_input.a.x)), vec2<u32>(0u | u_input.a.x, u_input.a.x));
    let var_1 = abs(~vec4<u32>(1u, min(~var_0.x, ~73496u), _wgslsmith_dot_vec2_u32(u_input.a.zz, vec2<u32>(1u, var_0.x)), ~countOneBits(1u)));
    var var_2 = vec4<bool>(all(global2.xz), global2.x, false, !(func_3(vec4<i32>(-40355i, -31629i, -31401i, u_input.b.x)) <= ~15985u));
    let var_3 = !var_2.yyw;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(734f)) * _wgslsmith_div_f32(826f, -1554f));
    return Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(93146u, 4u)]), false);
}

fn func_4(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = Struct_1(1023f, select(_wgslsmith_f_op_f32(-135f - global0[_wgslsmith_index_u32(0u, 3u)]) > _wgslsmith_f_op_f32(-1201f + arg_0.a), all(select(select(vec3<bool>(arg_0.b, true, true), vec3<bool>(arg_0.b, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(global2.x, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(global2.x, false, false), vec3<bool>(false, arg_0.b, arg_0.b), global2.x))), false));
    let var_1 = _wgslsmith_mod_u32(abs(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(14602u, u_input.a.x, u_input.a.x, 1u)))), u_input.a.x) ^ 0u;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a * global0[_wgslsmith_index_u32(4294967295u, 3u)]), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) * global0[_wgslsmith_index_u32(u_input.a.x, 3u)])), _wgslsmith_f_op_f32(sign(-191f)));
    global2 = vec3<bool>(!arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-757f, 1461f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-321f * global0[_wgslsmith_index_u32(~u_input.a.x, 3u)]) + -812f), global2.x);
    return !vec3<bool>(true | var_0.b, !(u_input.a.x > var_1), global0[_wgslsmith_index_u32(u_input.a.x, 3u)] <= _wgslsmith_f_op_f32(floor(-1057f)));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(355f, 153f, 1387f, 937f) - vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], 163f, -682f, 2257f))) + vec4<f32>(-1000f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 3u)] - global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), 1391f, -1977f)) * vec4<f32>(151f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 4u)]) + _wgslsmith_f_op_f32(trunc(-197f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4294967295u, 3u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-724f + global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), _wgslsmith_f_op_f32(1704f * global1[_wgslsmith_index_u32(0u, 4u)])))));
    let var_1 = -1384f;
    global2 = select(!vec3<bool>(all(vec2<bool>(global2.x, false)) != global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1608f) < _wgslsmith_f_op_f32(var_0.x + -149f), !select(false, global2.x, global2.x)), !func_4(func_2()), func_4(Struct_1(1339f, true)));
    global2 = func_4(Struct_1(_wgslsmith_div_f32(-590f, -1452f), global2.x));
    global1 = array<f32, 4>();
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1220f)), -837f, any(global2.zx)))), _wgslsmith_f_op_f32(max(1170f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 3u)]) - var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1108f), 1152f), (u_input.a.x > u_input.a.x) && any(vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 4u)], 188f, -1625f, global0[_wgslsmith_index_u32(0u, 3u)]))) - _wgslsmith_f_op_vec4_f32(floor(var_0))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_0, vec4<f32>(-1026f, var_0.x, var_1, -985f))) + var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1152f, global0[_wgslsmith_index_u32(u_input.a.x, 3u)]))))))));
    let var_1 = countOneBits(73160u);
    var var_2 = func_1();
    let var_3 = Struct_2(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-137f, 779f, false)), _wgslsmith_f_op_f32(f32(-1f) * -838f)), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 3u)], _wgslsmith_f_op_f32(-var_2.c.x)), 1385f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-340f, global0[_wgslsmith_index_u32(16785u, 3u)], false)) + -696f)), vec4<f32>(2587f, -239f, -568f, 673f)), select(true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(49661u, 3u)]), _wgslsmith_f_op_f32(abs(-1508f)), _wgslsmith_f_op_f32(floor(-787f))))));
    let var_4 = func_2();
    global1 = array<f32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1099f));
}

