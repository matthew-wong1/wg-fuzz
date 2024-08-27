struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 18>;

var<private> global1: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec4<f32>(-405f, -534f, -876f, -960f)), Struct_1(vec4<f32>(-1156f, -754f, -249f, -983f)), Struct_1(vec4<f32>(-536f, 542f, -691f, 859f)), Struct_1(vec4<f32>(-2232f, -384f, -244f, 2093f)), Struct_1(vec4<f32>(-831f, -229f, 205f, -1000f)), Struct_1(vec4<f32>(2317f, -1000f, 1038f, 574f)), Struct_1(vec4<f32>(-1779f, 698f, -1600f, -1510f)), Struct_1(vec4<f32>(-918f, 300f, -305f, 663f)), Struct_1(vec4<f32>(-937f, -474f, -475f, -484f)), Struct_1(vec4<f32>(-1897f, -1708f, 654f, -278f)), Struct_1(vec4<f32>(-635f, 1189f, -321f, -197f)), Struct_1(vec4<f32>(943f, 496f, 1377f, -651f)), Struct_1(vec4<f32>(-1000f, 449f, -1192f, -1703f)), Struct_1(vec4<f32>(754f, -371f, -147f, 605f)), Struct_1(vec4<f32>(-570f, -1035f, 127f, -574f)), Struct_1(vec4<f32>(-167f, -469f, -1064f, 1211f)), Struct_1(vec4<f32>(216f, 110f, 259f, 1000f)), Struct_1(vec4<f32>(-257f, 170f, 553f, -382f)), Struct_1(vec4<f32>(-278f, -340f, 526f, -1110f)), Struct_1(vec4<f32>(688f, -1396f, -943f, 763f)), Struct_1(vec4<f32>(843f, 345f, 115f, -639f)), Struct_1(vec4<f32>(343f, 420f, -1968f, 1033f)));

var<private> global2: f32 = -1075f;

var<private> global3: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: bool) -> f32 {
    global0 = array<vec4<u32>, 18>();
    let var_0 = Struct_3(arg_0.e.a);
    global3 = Struct_2(var_0.a.a);
    let var_1 = Struct_4(arg_0.e.a, _wgslsmith_mod_u32(145251u, u_input.b.x) | min(~u_input.b.x, ~4294967295u), _wgslsmith_div_i32(~min(0i, ~u_input.a), -(i32(-1i) * -33735i)), Struct_3(Struct_2(var_0.a.a)));
    let var_2 = vec2<f32>(2027f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-276f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.a.a.x), 1f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1045f - -272f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1077f));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(step(global3.a.a.x, _wgslsmith_f_op_f32(global3.a.a.x - _wgslsmith_f_op_f32(-1002f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_5(global3.a.a.x, vec3<f32>(-831f, global3.a.a.x, global3.a.a.x), u_input.b.x, global3.a, Struct_3(Struct_2(Struct_1(global3.a.a)))), true)) * global3.a.a.x)))));
    var var_1 = !select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(all(vec3<bool>(true, false, false)), true, true, true), vec4<bool>(any(vec2<bool>(false, false)), true, all(vec4<bool>(false, true, false, false)), u_input.a > u_input.a)), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true)), true), !vec4<bool>(-1055f != var_0, true, any(vec3<bool>(true, true, false)), false));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-global3.a.a.x), global3.a.a.wzy, min(select(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 13110u), global0[_wgslsmith_index_u32(u_input.b.x, 18u)]), abs(~u_input.b.x), true), 4294967295u), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global3.a.a)))), Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1920f, global3.a.a.x, var_0, var_0))))));
    global2 = _wgslsmith_f_op_f32(-881f * var_2.d.a.x);
    var var_3 = select(!select(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, true, false), vec4<bool>(true, var_1.x, var_1.x, true)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_1.x, true, false, true), vec4<bool>(false, var_1.x, true, false), false), all(vec3<bool>(var_1.x, var_1.x, var_1.x))), select(!var_1.x, all(var_1.xyz), var_1.x)), !(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(true, var_1.x, false, var_1.x), vec4<bool>(true, false, true, var_1.x))), vec4<bool>(!any(select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(var_1.x, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, true, false))), (_wgslsmith_f_op_f32(-var_2.a) == _wgslsmith_f_op_f32(global3.a.a.x * -2565f)) || any(select(vec2<bool>(true, false), var_1.xy, vec2<bool>(var_1.x, var_1.x))), !(_wgslsmith_f_op_f32(f32(-1f) * -2375f) >= var_0), all(vec3<bool>(any(vec4<bool>(var_1.x, var_1.x, false, var_1.x)), true, var_1.x))));
    return firstTrailingBit(~_wgslsmith_clamp_u32(27705u, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], vec4<u32>(29436u, 1u, 31211u, u_input.b.x)) ^ ~0u, ~1u));
}

fn func_1(arg_0: Struct_5, arg_1: bool) -> vec4<bool> {
    var var_0 = -1i;
    let var_1 = vec2<i32>(u_input.a, u_input.a);
    var var_2 = vec2<u32>(~min(u_input.b.x, ~arg_0.c), func_2());
    global3 = arg_0.e.a;
    global0 = array<vec4<u32>, 18>();
    return select(vec4<bool>(true, true, (!arg_1 & any(vec4<bool>(false, true, false, true))) && !all(vec2<bool>(arg_1, arg_1)), true), vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, arg_1), arg_1)) || (-u_input.a > ~var_1.x), !(true || !arg_1), all(!select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), false)), true));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: vec4<i32>, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = arg_2.xy;
    var var_1 = vec3<bool>(all(!select(vec4<bool>(arg_3.x, arg_3.x, false, false), arg_3, arg_3)) || false, false, select(true, true, !(57188u >= _wgslsmith_dot_vec3_u32(u_input.b, u_input.b))));
    var var_2 = !(var_1.x && any(vec3<bool>(true, -547f != arg_0, false)));
    let var_3 = min(~_wgslsmith_dot_vec4_u32(firstTrailingBit(firstTrailingBit(global0[_wgslsmith_index_u32(15513u, 18u)])), max(vec4<u32>(0u, 0u, 13214u, 1u), global0[_wgslsmith_index_u32(u_input.b.x, 18u)]) | max(global0[_wgslsmith_index_u32(40253u, 18u)], vec4<u32>(0u, 50952u, 139266u, 1u))), 0u);
    var var_4 = global1[_wgslsmith_index_u32(max(min(var_3, abs(_wgslsmith_clamp_u32(max(4294967295u, 24766u), ~0u, ~var_3))), ~var_3), 22u)];
    return Struct_1(global3.a.a);
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a.a.zzy) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-559f, 936f, global3.a.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.a.a.wwy, vec3<f32>(760f, 389f, 1000f)) * vec3<f32>(global3.a.a.x, arg_1.a.a.x, global3.a.a.x)))));
    global1 = array<Struct_1, 22>();
    var var_1 = Struct_5(_wgslsmith_f_op_f32(f32(-1f) * -406f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a.a.yxz - vec3<f32>(-2037f, -1000f, arg_1.a.a.x)) + vec3<f32>(-536f, var_0.x, 2352f)), vec3<f32>(_wgslsmith_f_op_f32(-639f * var_0.x), var_0.x, global3.a.a.x))))), _wgslsmith_add_u32(~(~5823u), ~(~4294967295u | arg_2)), arg_1.a, Struct_3(arg_1));
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = func_5(_wgslsmith_f_op_f32(f32(-1f) * -1000f) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-932f)), _wgslsmith_f_op_f32(abs(-1271f)))), Struct_2(func_4(447f, vec2<bool>(true, true), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, 0i, 47131i, u_input.a), vec4<i32>(u_input.a, -35344i, 2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.a, -44715i, u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(0i, u_input.a, -2147483647i, -48370i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, 11118i, u_input.a, u_input.a))), !func_1(Struct_5(global3.a.a.x, vec3<f32>(global3.a.a.x, 1584f, 1000f), 16037u, global3.a, Struct_3(Struct_2(global1[_wgslsmith_index_u32(u_input.b.x, 22u)]))), false))), _wgslsmith_div_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.b.yx)), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 0u), ~vec2<u32>(4294967295u, 47655u), ~vec2<u32>(1u, u_input.b.x)), u_input.b.yx)));
    var var_2 = _wgslsmith_sub_i32(-12217i, u_input.a);
    var var_3 = Struct_5(func_5(false && ((u_input.b.x ^ u_input.b.x) > 1991u), Struct_2(global3.a), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, u_input.b), ~u_input.b), u_input.b)).a.x, vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(964f + -666f), func_4(_wgslsmith_f_op_f32(-889f * _wgslsmith_f_op_f32(f32(-1f) * -1145f)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, false), true), -(vec4<i32>(u_input.a, u_input.a, -2147483647i, 33152i) & vec4<i32>(u_input.a, u_input.a, -50725i, 32303i)), vec4<bool>(true, true, true, true)).a.x), u_input.b.x, func_4(_wgslsmith_f_op_f32(-1267f - global3.a.a.x), !select(func_1(Struct_5(-711f, vec3<f32>(-557f, 773f, var_1.a.x), u_input.b.x, global1[_wgslsmith_index_u32(4294967295u, 22u)], Struct_3(Struct_2(global1[_wgslsmith_index_u32(15957u, 22u)]))), true).xx, vec2<bool>(true, true), vec2<bool>(true, true)), ~(vec4<i32>(-2147483647i, u_input.a, u_input.a, u_input.a) | vec4<i32>(9026i, u_input.a, u_input.a, u_input.a)) ^ vec4<i32>(23775i << (u_input.b.x % 32u), u_input.a, 2147483647i, 2147483647i), vec4<bool>(!all(vec3<bool>(false, false, true)), all(vec2<bool>(true, true)), true, true)), Struct_3(Struct_2(Struct_1(vec4<f32>(-349f, var_1.a.x, global3.a.a.x, var_1.a.x)))));
    let var_4 = Struct_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, var_3.d.a.x, 101f, global3.a.a.x) - vec4<f32>(global3.a.a.x, 459f, var_3.b.x, 673f))))), 19961u, u_input.a, Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(376f, global3.a.a.x, global3.a.a.x, 1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec4<i32>(0i, var_4.c, ~(1i & u_input.a), 20002i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(210f, 1100f, -968f, 3117f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, global3.a.a.x, var_1.a.x, -1246f) * vec4<f32>(603f, 358f, 397f, 1516f))) - global3.a.a)));
}

