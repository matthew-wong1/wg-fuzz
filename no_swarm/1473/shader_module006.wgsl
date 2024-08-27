struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1123f;

var<private> global1: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(-448f, -222f, -254f), vec3<f32>(472f, 1694f, 339f), vec3<f32>(-880f, -151f, 552f), vec3<f32>(295f, -498f, 174f), vec3<f32>(1285f, 485f, 314f));

var<private> global2: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(i32(-2147483648), -11207i, 49661i, i32(-2147483648)), vec4<i32>(1i, i32(-2147483648), -1i, 0i), vec4<i32>(0i, 1i, -77778i, -1i), vec4<i32>(i32(-2147483648), 9306i, i32(-2147483648), 42331i), vec4<i32>(50065i, 717i, 43691i, 42278i), vec4<i32>(-6634i, 2073i, 2147483647i, -14854i), vec4<i32>(0i, 7247i, 1i, -65063i), vec4<i32>(-1i, -11630i, -24158i, 2147483647i), vec4<i32>(-8779i, 0i, -1i, -1i), vec4<i32>(2147483647i, 8452i, i32(-2147483648), 39290i), vec4<i32>(0i, 2147483647i, 1i, 20290i), vec4<i32>(34957i, 13318i, -40918i, 1i), vec4<i32>(-362i, 22926i, -2089i, i32(-2147483648)), vec4<i32>(2147483647i, -16792i, 28476i, 25935i), vec4<i32>(2147483647i, 9174i, 50258i, -18561i));

var<private> global3: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(true, true, -26789i, 1267f, true), Struct_1(true, true, i32(-2147483648), -235f, true), Struct_1(false, true, -3450i, -391f, true), Struct_1(true, true, -1i, 376f, false), Struct_1(false, false, 1i, 1368f, false), Struct_1(false, true, 1i, 563f, true), Struct_1(true, true, -24368i, 500f, false), Struct_1(true, false, -21679i, -2196f, true), Struct_1(false, true, -11199i, 431f, false), Struct_1(false, false, -22568i, -213f, false), Struct_1(true, true, 1i, -358f, true), Struct_1(true, false, -4144i, -648f, false), Struct_1(false, false, 2147483647i, -848f, true), Struct_1(false, false, 18274i, 147f, true), Struct_1(true, false, 1i, -1026f, true), Struct_1(true, false, -37738i, -200f, false), Struct_1(false, false, -1576i, 674f, false), Struct_1(true, true, -3101i, -520f, true), Struct_1(false, true, -1i, 1000f, true));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: i32) -> vec2<u32> {
    var var_0 = 181f;
    global0 = 1400f;
    global2 = array<vec4<i32>, 15>();
    global1 = array<vec3<f32>, 5>();
    var var_1 = arg_1.x;
    return ~u_input.b.yz | ~(~u_input.a.ww);
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: vec4<i32>) -> vec2<f32> {
    global2 = array<vec4<i32>, 15>();
    return _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1540f, 1388f), vec2<f32>(350f, -962f))) + vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1780f))))));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: bool, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = -420f;
    let var_1 = Struct_3(false);
    let var_2 = Struct_3(arg_2 | arg_2);
    global0 = _wgslsmith_f_op_f32(sign(-1243f));
    let var_3 = vec3<bool>(!(any(!vec3<bool>(true, arg_1.x, true)) != (_wgslsmith_dot_vec3_i32(vec3<i32>(5517i, -2147483647i, 2147483647i), vec3<i32>(42038i, 1534i, -3714i)) > countOneBits(-10644i))), var_0 < _wgslsmith_f_op_f32(abs(1688f)), true);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), vec2<f32>(-736f, -2499f)))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_sub_vec2_u32(func_1(vec3<bool>(false, true, true), vec3<bool>(true, false, false), -1i), ~u_input.b.xx), reverseBits(2147483647i), vec4<i32>(-2147483647i, -1i, 6047i, 0i) ^ global2[_wgslsmith_index_u32(~4294967295u, 15u)])), vec2<f32>(-1702f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1665f * 373f)))))));
    var var_1 = all(!vec4<bool>(all(vec4<bool>(true, true, false, false)), true, true, any(vec2<bool>(false, true)) && any(vec4<bool>(true, true, true, true))));
    global3 = array<Struct_1, 19>();
    let var_2 = !select(select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(any(vec4<bool>(true, false, true, false)), true, all(vec4<bool>(true, false, true, true))), vec3<bool>(false, true, true)), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), !func_3(u_input.a.x ^ u_input.a.x, vec3<bool>(true, true, true), all(vec4<bool>(false, false, false, true)), Struct_2(vec2<bool>(true, true))));
    var_0 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-584f + _wgslsmith_div_f32(var_0.x, -1012f)), 945f)));
    global2 = array<vec4<i32>, 15>();
    let var_3 = _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(1u, 15u)], vec4<i32>(~(-32359i), -_wgslsmith_clamp_i32(-18265i << (u_input.a.x % 32u), _wgslsmith_div_i32(0i, 4099i), 31853i), 9188i, _wgslsmith_sub_i32(1i >> (func_1(var_2, vec3<bool>(true, var_2.x, var_2.x), 0i).x % 32u), 12953i)));
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(105177u, ~52157u, firstLeadingBit(~u_input.a.x)) ^ vec3<u32>(~78758u << ((u_input.a.x >> (23791u % 32u)) % 32u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.b.x, 1855u)), ~_wgslsmith_mult_u32(u_input.a.x, 1u)));
}

