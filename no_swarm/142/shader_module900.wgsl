struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: vec2<f32> = vec2<f32>(-302f, -350f);

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<bool>(true, false), -2332f, 1471f), Struct_1(vec2<bool>(true, false), 1229f, -179f));

var<private> global3: array<f32, 6> = array<f32, 6>(-263f, -307f, -1523f, -1210f, -167f, -1501f);

var<private> global4: vec2<u32> = vec2<u32>(27193u, 1u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> f32 {
    return 236f;
}

fn func_2() -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(min(-450f, 470f)), -461f), ~(~4294967295u)), Struct_3(abs(_wgslsmith_mult_i32(0i, u_input.c.x))))), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.b >> (63517u % 32u), ~(global4.x & 4294967295u)), 6u)]);
    global3 = array<f32, 6>();
    var var_1 = vec4<bool>(1000f >= global1.x, true, any(select(vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(true, false), true), vec2<bool>(true, true), true), select(true, true, true))), true);
    global4 = vec2<u32>(u_input.b, countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, u_input.b, _wgslsmith_add_u32(4294967295u, u_input.b), ~62368u), vec4<u32>(1u, 1u, 56776u, ~global4.x))));
    global4 = _wgslsmith_div_vec2_u32(~(~vec2<u32>(global4.x, 0u)), ~(~vec2<u32>(u_input.b, u_input.b)) & vec2<u32>(56848u, ~80897u)) << (countOneBits(~max(~vec2<u32>(52518u, global4.x), vec2<u32>(1u, 12822u))) % vec2<u32>(32u));
    return Struct_3(-2147483647i);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> Struct_3 {
    var var_0 = vec3<bool>(arg_3.a.x, true, arg_2);
    var var_1 = arg_0;
    var var_2 = arg_1.a;
    var var_3 = -reverseBits(-countOneBits(~vec3<i32>(-45029i, 17356i, u_input.a)));
    let var_4 = vec3<bool>(!arg_3.a.x, all(!vec4<bool>(false, arg_2 || true, arg_1.b <= 4294967295u, all(vec3<bool>(arg_3.a.x, var_2.a.x, false)))), !(20748u >= min(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, 1u, u_input.b, 35755u), vec4<u32>(27274u, 63973u, 37139u, 33970u)))));
    return arg_0;
}

fn func_5(arg_0: Struct_3) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1914f, -1463f))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.x, 675f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1.x, global1.x), vec2<f32>(177f, global3[_wgslsmith_index_u32(3595u, 6u)]), false)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 6u)], global3[_wgslsmith_index_u32(u_input.b, 6u)]))))), all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), true), vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0, var_0)) - vec2<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(global4.x, 6u)], -538f), 797f)))) * _wgslsmith_f_op_vec2_f32(var_0 * _wgslsmith_f_op_vec2_f32(ceil(var_0))));
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), 145f, !all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true))))), -130f));
    return abs(vec2<u32>(_wgslsmith_div_u32(u_input.b, ~(~7791u)), ~1u));
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<bool>) -> u32 {
    var var_0 = arg_2.x;
    let var_1 = arg_2.x;
    global4 = func_5(func_4(func_2(), Struct_2(Struct_1(vec2<bool>(arg_1.x, arg_2.x), global1.x, global1.x), global4.x), any(select(vec4<bool>(true, true, var_1, var_1), vec4<bool>(arg_1.x, true, false, var_1), vec4<bool>(arg_1.x, arg_2.x, true, true))), Struct_1(vec2<bool>(arg_2.x, var_1), _wgslsmith_f_op_f32(trunc(-381f)), _wgslsmith_f_op_f32(f32(-1f) * -671f)))) & vec2<u32>(~4294967295u, global4.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(893f, _wgslsmith_f_op_f32(floor(789f)), -250f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global3[_wgslsmith_index_u32(u_input.b, 6u)], global1.x, -1419f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global3[_wgslsmith_index_u32(4294967295u, 6u)], 1908f) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(177f, -1777f, -1146f)))))) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global1.x)))), _wgslsmith_f_op_f32(957f * _wgslsmith_div_f32(720f, global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1273f))))));
    var_0 = arg_2.x;
    return countOneBits(4294967295u);
}

fn func_6(arg_0: vec4<f32>, arg_1: u32, arg_2: i32) -> bool {
    var var_0 = Struct_3(~(~2147483647i));
    let var_1 = Struct_2(Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.x - 194f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -345f), -1328f, all(vec2<bool>(true, false))))), global4.x);
    let var_2 = vec3<bool>((1i << ((firstTrailingBit(1u) << (_wgslsmith_add_u32(var_1.b, var_1.b) % 32u)) % 32u)) > global0[_wgslsmith_index_u32(81146u, 27u)], any(vec4<bool>(!(!var_1.a.a.x), var_1.a.a.x, true, true)), var_1.a.a.x);
    let var_3 = select(vec3<bool>(var_2.x, var_1.a.a.x, global4.x == arg_1), vec3<bool>(select(any(select(vec4<bool>(var_2.x, var_1.a.a.x, true, false), vec4<bool>(var_1.a.a.x, var_2.x, var_1.a.a.x, false), vec4<bool>(var_1.a.a.x, true, true, var_1.a.a.x))), var_2.x, var_1.a.a.x), any(!(!vec2<bool>(var_1.a.a.x, true))), true), func_2().a < _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(46053u, 27u)], global0[_wgslsmith_index_u32(56608u, 27u)]));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -233f), 637f);
    return var_1.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<bool>(func_6(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, -1014f, global1.x, -314f), vec4<f32>(-847f, -1520f, global1.x, global1.x), vec4<bool>(true, false, true, false))))), firstTrailingBit(func_1(1216f, vec3<bool>(false, true, true), vec4<bool>(true, false, false, false))), -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 41637i, global0[_wgslsmith_index_u32(global4.x, 27u)], -2870i), vec4<i32>(-6638i, -2147483647i, 35037i, u_input.a))), true), _wgslsmith_f_op_f32(f32(-1f) * -1517f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-675f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1067f, -1000f, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1416f + -1517f)))));
    let var_1 = vec4<u32>(reverseBits(global4.x ^ ~(~4294967295u)), countOneBits(global4.x), 98031u, abs(abs(72734u)));
    var var_2 = all(var_0.a);
    var var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1114f * _wgslsmith_f_op_f32(min(global1.x, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c, 131f, true)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 6u)], 569f) * vec2<f32>(global3[_wgslsmith_index_u32(global4.x, 6u)], global1.x)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1591f, -370f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-103f, var_0.c), vec2<f32>(global3[_wgslsmith_index_u32(global4.x, 6u)], global1.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1264f, var_0.b) * vec2<f32>(var_0.c, global1.x)))))));
    var_2 = true;
    var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1707f, global1.x)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.c, global1.x)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1207f, global1.x) + vec2<f32>(var_3.x, 224f)))))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(abs(830f))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-903f, global1.x) - vec2<f32>(-164f, 154f)))))));
    let var_4 = min(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, 55341u, 24124u, 11669u)) | vec4<u32>(abs(8402u), var_1.x, 4294967295u, u_input.b & 1u), ~select(var_1 ^ var_1, vec4<u32>(u_input.b, 4294967295u, global4.x, var_1.x) & var_1, any(vec3<bool>(var_0.a.x, var_0.a.x, true)))), 27u)], countOneBits(20906i));
    global3 = array<f32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(min(vec4<u32>(_wgslsmith_mod_u32(global4.x ^ 37808u, max(0u, 63834u)), ~4294967295u, ~_wgslsmith_mult_u32(var_1.x, var_1.x), 21163u), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(1u, u_input.b), ~1u, _wgslsmith_mult_u32(global4.x, var_1.x), ~63137u), ~vec4<u32>(0u, u_input.b, 40584u, 27871u))), select(u_input.b, select(reverseBits(~u_input.b), global4.x, false), var_0.a.x), 17504i);
}

