struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<u32>(3428u, 0u, 16862u), -1281f), false);

var<private> global1: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(-1000f, -1327f), vec2<f32>(1000f, 1950f), vec2<f32>(359f, 249f), vec2<f32>(614f, -1348f), vec2<f32>(-1287f, -241f), vec2<f32>(-1033f, -341f), vec2<f32>(-256f, 1348f), vec2<f32>(1052f, -1000f), vec2<f32>(-808f, -997f), vec2<f32>(231f, 1205f), vec2<f32>(801f, 1134f), vec2<f32>(955f, 1000f), vec2<f32>(-247f, 191f), vec2<f32>(-170f, -2088f), vec2<f32>(-563f, -972f), vec2<f32>(-184f, 489f), vec2<f32>(-751f, -250f), vec2<f32>(1564f, -297f), vec2<f32>(540f, 675f), vec2<f32>(-1817f, -1035f), vec2<f32>(277f, 387f), vec2<f32>(-460f, 1000f), vec2<f32>(612f, -1523f), vec2<f32>(838f, 356f), vec2<f32>(-161f, 1114f), vec2<f32>(-700f, -271f), vec2<f32>(804f, -855f), vec2<f32>(-1610f, 1614f), vec2<f32>(973f, 123f), vec2<f32>(-984f, -465f), vec2<f32>(615f, -521f), vec2<f32>(1071f, -1067f));

var<private> global2: array<u32, 2>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> f32 {
    var var_0 = Struct_2(arg_2, false);
    global2 = array<u32, 2>();
    let var_1 = !vec3<bool>(all(!select(vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, true), global0.b)), select(true, any(select(vec4<bool>(global0.b, false, true, true), vec4<bool>(false, false, var_0.b, var_0.b), vec4<bool>(false, var_0.b, true, false))), false), global0.b);
    global2 = array<u32, 2>();
    global0 = Struct_2(Struct_1(~global0.a.a, arg_1), !var_0.b);
    return _wgslsmith_div_f32(-402f, arg_0);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.a.x, 0u), vec2<u32>(global0.a.a.x, 34217u)), max(global2[_wgslsmith_index_u32(1u, 2u)], 19935u), 69401u) | vec3<u32>(global0.a.a.x, ~global0.a.a.x, 39533u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1006f + global0.a.b) - _wgslsmith_f_op_f32(932f * global0.a.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-876f * global0.a.b)))), global0.b);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-1474f, 986f, Struct_1(global0.a.a, 545f), global0.a.a.yy >> (vec2<u32>(85921u, 24222u) % vec2<u32>(32u)))) + 192f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.b) * _wgslsmith_f_op_f32(var_0.a.b + 433f))))));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -433f), 1514f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-105f, -1596f)), _wgslsmith_f_op_f32(var_0.a.b - 368f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1317f))), var_0.a.b) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.b, var_1.x, global0.a.b, var_1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, 1037f, var_1.x, -653f), vec4<f32>(var_0.a.b, var_1.x, -680f, var_1.x)), false))))), vec4<f32>(var_0.a.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_f32(var_0.a.b, var_0.a.b), _wgslsmith_f_op_f32(-global0.a.b), global0.a, vec2<u32>(1u, 1u))))), -823f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2099f * global0.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-126f + var_1.x) * _wgslsmith_f_op_f32(-var_1.x)))));
    let var_3 = Struct_2(Struct_1(max(global0.a.a, abs(global0.a.a)) & global0.a.a, _wgslsmith_f_op_f32(step(1586f, -359f))), true);
    let var_4 = abs(min(~_wgslsmith_dot_vec2_u32(abs(var_0.a.a.yy), var_0.a.a.yy ^ vec2<u32>(global0.a.a.x, 0u)), 13862u));
    return global0.a;
}

fn func_1() -> Struct_2 {
    global2 = array<u32, 2>();
    global2 = array<u32, 2>();
    var var_0 = func_2();
    let var_1 = countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -u_input.a.x, u_input.b.x ^ (-1i >> (global2[_wgslsmith_index_u32(45740u, 2u)] % 32u))), u_input.a.wxz));
    var_0 = global0.a;
    return Struct_2(Struct_1(_wgslsmith_div_vec3_u32(~(~vec3<u32>(var_0.a.x, var_0.a.x, global0.a.a.x)), var_0.a), var_0.b), select(any(vec4<bool>(global0.b, global0.b, global0.b, global0.b)), global0.b, !global0.b || !global0.b) && true);
}

fn func_4(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2, arg_3: i32) -> Struct_2 {
    let var_0 = select(~_wgslsmith_mod_vec2_u32(arg_2.a.a.xx >> (global0.a.a.yx % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(global0.a.a.xz, abs(arg_2.a.a.xx))), _wgslsmith_mult_vec2_u32((~global0.a.a.zz ^ ~vec2<u32>(global2[_wgslsmith_index_u32(arg_1, 2u)], 4294967295u)) << (vec2<u32>(select(arg_2.a.a.x, arg_1, false), ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_2.a.a.x, 2u)], 2u)]) % vec2<u32>(32u)), vec2<u32>(arg_1, arg_1)), select(vec2<bool>(true, true), !select(!vec2<bool>(global0.b, false), select(vec2<bool>(false, false), vec2<bool>(global0.b, true), true), global0.b), !select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, true), vec2<bool>(global0.b, false), true), all(vec3<bool>(arg_2.b, arg_2.b, arg_2.b)))));
    global2 = array<u32, 2>();
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1893f), _wgslsmith_f_op_f32(f32(-1f) * -214f), global0.a.b, -422f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, global0.a.b, arg_2.a.b, -312f), vec4<f32>(global0.a.b, 716f, 1667f, arg_2.a.b)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1157f, arg_2.a.b, global0.a.b, arg_2.a.b)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.b, global0.a.b, 1195f, -747f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.b, -1313f, arg_2.a.b, global0.a.b)))) - vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.b), _wgslsmith_f_op_f32(-2239f - global0.a.b), _wgslsmith_f_op_f32(-global0.a.b), 393f))), vec4<bool>(func_2().b >= _wgslsmith_f_op_f32(sign(348f)), all(vec2<bool>(!arg_2.b, 44628i >= arg_3)), 5629i < arg_3, global0.b)));
    global2 = array<u32, 2>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.wxx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1682f, global0.a.b, 872f))))));
    return func_1();
}

fn func_5(arg_0: Struct_2) -> StorageBuffer {
    var var_0 = select(vec3<bool>((_wgslsmith_mod_u32(0u, global2[_wgslsmith_index_u32(4294967295u, 2u)]) ^ ~global0.a.a.x) != ~global0.a.a.x, global0.b, arg_0.b), select(select(!select(vec3<bool>(arg_0.b, global0.b, true), vec3<bool>(true, arg_0.b, arg_0.b), true), select(!vec3<bool>(false, false, arg_0.b), vec3<bool>(false, arg_0.b, true), vec3<bool>(global0.b, true, true)), !vec3<bool>(true, arg_0.b, true)), select(vec3<bool>(true, global0.b, true), !vec3<bool>(arg_0.b, false, true), select(vec3<bool>(false, true, arg_0.b), vec3<bool>(global0.b, false, false), select(vec3<bool>(false, true, global0.b), vec3<bool>(global0.b, arg_0.b, arg_0.b), vec3<bool>(false, arg_0.b, arg_0.b)))), arg_0.b), any(vec2<bool>(!(false || global0.b), true)));
    let var_1 = Struct_1(~arg_0.a.a, -557f);
    var_0 = vec3<bool>(false, false, any(!select(!vec2<bool>(global0.b, global0.b), var_0.zz, true)));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1101f, -423f, 949f) + vec3<f32>(738f, 264f, 573f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-636f, -441f, global0.a.b))), select(vec3<bool>(arg_0.b, global0.b, false), vec3<bool>(var_0.x, arg_0.b, var_0.x), global0.b))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(481f, 194f, -270f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1767f, arg_0.a.b, 1477f) - vec3<f32>(-1591f, -730f, global0.a.b)), !vec3<bool>(var_0.x, true, arg_0.b))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -556f, global0.a.b) + vec3<f32>(var_1.b, var_1.b, 1456f))))), abs(_wgslsmith_clamp_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(arg_0.a.a.x, 2u)], 41818u, var_1.a.x, global0.a.a.x), vec4<u32>(global2[_wgslsmith_index_u32(0u, 2u)], 33288u, global0.a.a.x, global0.a.a.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(431u, var_1.a.x, 4294967295u, global0.a.a.x), vec4<u32>(global0.a.a.x, 29660u, global2[_wgslsmith_index_u32(0u, 2u)], global2[_wgslsmith_index_u32(global0.a.a.x, 2u)])), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(9223u, global2[_wgslsmith_index_u32(global0.a.a.x, 2u)], 75389u, arg_0.a.a.x), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(31801u, 2u)], 5122u, global0.a.a.x)), vec4<u32>(10936u, arg_0.a.a.x, 10232u, arg_0.a.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 2>();
    global1 = array<vec2<f32>, 32>();
    global1 = array<vec2<f32>, 32>();
    global0 = Struct_2(global0.a, global0.b);
    global1 = array<vec2<f32>, 32>();
    let x = u_input.a;
    s_output = func_5(func_4(reverseBits(~(~u_input.a.yzx)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(22755u, ~(~1u)), 2u)], func_1(), -6262i));
}

