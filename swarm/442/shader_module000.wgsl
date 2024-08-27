struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: vec4<bool>,
    d: bool,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(-8515i, 49429i, -6102i), vec3<i32>(0i, -53547i, i32(-2147483648)), vec3<i32>(1i, -1i, 39393i), vec3<i32>(-33558i, 33150i, -27488i), vec3<i32>(1i, -11073i, -3982i), vec3<i32>(-1i, -20488i, i32(-2147483648)), vec3<i32>(-23118i, 0i, 2147483647i), vec3<i32>(0i, -25214i, -55011i), vec3<i32>(-21757i, -29188i, 11426i), vec3<i32>(2147483647i, i32(-2147483648), i32(-2147483648)), vec3<i32>(1i, 1i, 0i), vec3<i32>(13554i, -21175i, -1i), vec3<i32>(5684i, 61847i, -11325i), vec3<i32>(-1i, -56772i, 8274i), vec3<i32>(-1i, 0i, 0i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> f32 {
    let var_0 = vec4<bool>(true, false, arg_2.a, false);
    let var_1 = _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -1933f)));
    var var_2 = !(!var_0);
    let var_3 = vec3<u32>(_wgslsmith_add_u32(1u, ~(firstTrailingBit(arg_2.d) | min(49805u, arg_2.b))), 4294967295u, u_input.a);
    var_2 = !var_0;
    return var_1;
}

fn func_2() -> u32 {
    var var_0 = select(!select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true)), vec2<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-438f, 1763f, false)))) == _wgslsmith_f_op_f32(1682f - _wgslsmith_f_op_f32(func_3(Struct_1(u_input.c.xx), true, Struct_2(true, u_input.a, vec3<i32>(0i, 52353i, u_input.b.x), u_input.a))))), false);
    var var_1 = select(!vec3<bool>(!var_0.x, !var_0.x | !var_0.x, _wgslsmith_f_op_f32(select(-388f, -1505f, true)) <= _wgslsmith_f_op_f32(974f * 1411f)), select(select(vec3<bool>(true, var_0.x | var_0.x, var_0.x), vec3<bool>(true, !var_0.x, true), any(vec2<bool>(false, var_0.x))), !select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(false, true, false)), true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - -934f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -936f))))) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-801f, _wgslsmith_f_op_f32(f32(-1f) * -114f))) * _wgslsmith_f_op_f32(round(-284f))));
    var_1 = select(!vec3<bool>(false, false, all(var_1.xy)), !select(select(!vec3<bool>(var_0.x, true, false), select(vec3<bool>(false, true, true), vec3<bool>(var_0.x, false, true), vec3<bool>(var_1.x, false, var_0.x)), !var_1.x), select(vec3<bool>(false, var_0.x, true), vec3<bool>(true, true, true), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_1.x, var_0.x, false), vec3<bool>(true, var_0.x, true))), vec3<bool>(u_input.c.x != 1i, u_input.a != 0u, false)), !vec3<bool>(true, all(vec3<bool>(false, false, var_0.x)) && any(vec3<bool>(var_1.x, var_0.x, var_1.x)), !all(vec4<bool>(var_1.x, false, var_0.x, true))));
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<i32>(u_input.c.x, u_input.c.x)), false, Struct_2(var_0.x, u_input.a, global0[_wgslsmith_index_u32(50577u, 15u)], u_input.a))) - -119f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -565f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(674f)) - _wgslsmith_f_op_f32(309f * -283f))))));
    global0 = array<vec3<i32>, 15>();
    return max(0u, u_input.a);
}

fn func_1(arg_0: f32) -> vec4<f32> {
    let var_0 = -2147483647i;
    var var_1 = Struct_1(~vec2<i32>(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, ~4630i)));
    global0 = array<vec3<i32>, 15>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(u_input.a), func_2()), 15u)];
    let var_3 = all(vec3<bool>(!any(vec4<bool>(true, false, false, false)), true, true)) & true;
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0, 1000f, -501f, 1599f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -1455f, arg_0, arg_0) - vec4<f32>(arg_0, -344f, 126f, -144f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(789f, -1454f, -383f, -1421f) * vec4<f32>(arg_0, arg_0, arg_0, -485f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(267f, -304f, arg_0, -1459f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-140f, -364f, arg_0, arg_0), vec4<f32>(-259f, arg_0, 1595f, arg_0))))))));
}

fn func_4(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: vec4<f32>) -> Struct_4 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(270f * 1634f)), max(24971i, abs(arg_0)) != 1i, vec4<bool>(false, false, any(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), true))), any(vec2<bool>(any(vec4<bool>(false, true, false, true)), true)) && (min(2147483647i, -arg_1.x) == ~arg_0));
    var var_1 = 1u ^ _wgslsmith_mod_u32(~(~0u), 4294967295u ^ (min(u_input.a, 4294967295u) | arg_2.x));
    let var_2 = 4294967295u;
    global0 = array<vec3<i32>, 15>();
    let var_3 = Struct_5(var_0.a, Struct_2(all(!vec3<bool>(false, true, var_0.b)), 0u, vec3<i32>(-31560i, 0i, max(1i & u_input.b.x, u_input.b.x)), var_2));
    return Struct_4(_wgslsmith_f_op_f32(trunc(847f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(-20135i, firstTrailingBit(vec3<i32>(u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(-4845i, 2147483647i), u_input.b.x), ~2147483647i)), ~(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 1u, u_input.a), ~vec3<u32>(23411u, u_input.a, u_input.a)) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 36512u, u_input.a), firstLeadingBit(vec3<u32>(u_input.a, 0u, u_input.a)), vec3<u32>(u_input.a, 11040u, u_input.a) >> (vec3<u32>(3341u, 4294967295u, u_input.a) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(abs(-2087f))))));
    let var_1 = var_0.a;
    var_0 = func_4(_wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.c.xy, u_input.b.xx), _wgslsmith_mult_i32(50995i, -13087i), select(u_input.b.x, -2983i, true))), u_input.b.x), vec3<i32>(u_input.c.x, 17477i, ~(~(~u_input.c.x))), firstLeadingBit(vec3<u32>(1u, countOneBits(4294967295u), _wgslsmith_clamp_u32(5388u, 4294967295u, u_input.a))) >> (countOneBits(~(vec3<u32>(1u, u_input.a, u_input.a) & vec3<u32>(u_input.a, u_input.a, u_input.a))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-305f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-531f - var_0.a)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.a, var_0.a), var_0.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(580f - -350f))))));
    var var_2 = u_input.c.x;
    var var_3 = ~firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 0u), countOneBits(vec2<u32>(u_input.a, u_input.a))));
    var_3 = ~vec2<u32>(u_input.a, ~0u);
    global0 = array<vec3<i32>, 15>();
    var var_4 = select(vec3<u32>(_wgslsmith_add_u32(93945u, abs(u_input.a >> (var_3.x % 32u))), abs(21475u), _wgslsmith_sub_u32(var_3.x, 4294967295u)), ~abs(~vec3<u32>(1u, 55635u, u_input.a)), any(!vec4<bool>(select(true, true, false), true, true, any(vec4<bool>(false, true, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.b.yx, vec2<i32>(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), u_input.b.x)), -_wgslsmith_dot_vec2_i32(select(u_input.b.xz, vec2<i32>(u_input.c.x, 2147483647i), vec2<bool>(true, true)), u_input.c.zy << (vec2<u32>(20506u, var_3.x) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a, var_0.a))), var_0.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1704f, _wgslsmith_f_op_f32(ceil(var_0.a)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(285f, var_0.a) + vec2<f32>(var_0.a, var_0.a)), true)))), ~12139i);
}

