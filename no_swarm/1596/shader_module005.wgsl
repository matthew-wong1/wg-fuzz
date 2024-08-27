struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: f32;

var<private> global2: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(-329f, 1419f, 2452f), vec3<f32>(-464f, -1208f, -658f), vec3<f32>(-1003f, 194f, -353f), vec3<f32>(-1102f, 1000f, -410f), vec3<f32>(-1315f, -259f, 2479f), vec3<f32>(351f, -762f, 2294f), vec3<f32>(-1096f, -209f, -994f), vec3<f32>(-748f, -441f, -595f), vec3<f32>(-1000f, -709f, -162f), vec3<f32>(234f, -1320f, -774f), vec3<f32>(-1000f, -731f, 395f), vec3<f32>(-1411f, 438f, -485f), vec3<f32>(-397f, 1000f, 1945f), vec3<f32>(-1844f, -2158f, 1000f), vec3<f32>(-2267f, 255f, -343f), vec3<f32>(-1186f, 718f, -1166f), vec3<f32>(-274f, 151f, -1353f), vec3<f32>(-877f, -675f, 145f), vec3<f32>(-596f, -768f, -750f), vec3<f32>(738f, -473f, 153f), vec3<f32>(-543f, -468f, 186f), vec3<f32>(859f, 474f, 802f), vec3<f32>(-1150f, -1353f, -572f));

var<private> global3: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> vec2<u32> {
    return vec2<u32>(1u, u_input.b.x);
}

fn func_3(arg_0: Struct_1) -> f32 {
    return arg_0.b;
}

fn func_2() -> bool {
    var var_0 = Struct_3(firstLeadingBit(min(-16080i, 1i)));
    var var_1 = Struct_2(~52243u < ~u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(944f, 1000f), vec2<f32>(722f, 1231f), global0[_wgslsmith_index_u32(1u, 25u)])), -718f, max(vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 47569u), vec4<u32>(64660u, u_input.b.x, 4294967295u, u_input.b.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -534f) - 1204f))), abs(~vec2<u32>(1u, ~u_input.b.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(220f, -2785f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-280f, 959f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(205f))) + _wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(-1254f, -730f), -1031f, vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 3517u))))), ~(~vec4<u32>(0u, 1u, u_input.b.x, u_input.a.x))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1406f, 811f)) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2018f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-171f + -929f) - _wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(289f, 480f), -444f, vec4<u32>(u_input.b.x, u_input.a.x, 1u, u_input.b.x))))), _wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(759f, 821f), -519f, vec4<u32>(50343u, u_input.a.x, u_input.a.x, u_input.b.x)))))), select(~(~vec4<u32>(0u, 1u, 1u, 67986u)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, 0u, 26220u, u_input.a.x), vec4<u32>(u_input.b.x, 1u, 1893u, u_input.b.x)), vec4<bool>(any(vec3<bool>(false, true, true)), true, true, true))));
    global0 = array<vec2<bool>, 25>();
    var var_2 = !select(vec4<bool>(true, false, all(!vec3<bool>(var_1.a, var_1.a, var_1.a)), var_1.a), vec4<bool>(var_1.a, !var_1.a, any(!vec4<bool>(true, true, false, var_1.a)), true), var_1.a);
    let var_3 = !select(var_2.yyw, vec3<bool>(!all(var_2.xwx), false, !var_1.a), select(vec3<bool>(any(var_2.yw), true, false), vec3<bool>(select(true, false, false), var_1.c.x < 861u, var_1.a), true));
    return true;
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: bool) -> Struct_3 {
    var var_0 = vec2<i32>(~countOneBits(2147483647i) >> (_wgslsmith_mod_u32(u_input.b.x >> (u_input.a.x % 32u), ~4294967295u) % 32u), ~_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, 0i, 1i), vec3<i32>(1i, 1i, 1i))) & ~(-select(_wgslsmith_clamp_vec2_i32(vec2<i32>(49784i, 1i), vec2<i32>(-1i, 32338i), vec2<i32>(-25785i, 1i)), vec2<i32>(-32984i, -1i), all(vec4<bool>(false, true, arg_2, arg_2))));
    global0 = array<vec2<bool>, 25>();
    var var_1 = Struct_2(any(!vec2<bool>(false, 407f != arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_0) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-290f, 852f) - arg_0))), arg_1.xy, Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, -182f) - -375f), arg_0), _wgslsmith_mod_vec4_u32(max(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.x, u_input.b.x, u_input.a.x, u_input.b.x), vec4<u32>(arg_1.x, u_input.a.x, arg_1.x, arg_1.x)), vec4<u32>(arg_1.x, u_input.a.x, arg_1.x, u_input.a.x)), _wgslsmith_div_vec4_u32(arg_1, vec4<u32>(u_input.a.x, 4294967295u, 1u, 1u)))), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, arg_0), vec2<f32>(arg_0, arg_0)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, arg_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(587f, arg_0) - vec2<f32>(-476f, arg_0)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-100f, 1019f)) - -404f) - -1467f), _wgslsmith_mod_vec4_u32(abs(~arg_1), arg_1)));
    let var_2 = vec2<i32>(i32(-1i) * -17253i, -12385i);
    let var_3 = var_1.e.a;
    return Struct_3(42747i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (vec2<u32>(~14502u, firstTrailingBit(~u_input.a.x)) >> (~func_1() % vec2<u32>(32u))) << (u_input.b % vec2<u32>(32u));
    global0 = array<vec2<bool>, 25>();
    var var_1 = func_4(1177f, vec4<u32>(u_input.b.x, 1u, u_input.a.x, 1u), !(func_2() | !func_2()));
    var var_2 = true;
    var var_3 = Struct_2(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))), countOneBits(var_0) << (u_input.b % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(144f, -877f), vec2<f32>(432f, -538f), false))))), -1005f, ~(~(~vec4<u32>(u_input.a.x, var_0.x, 22107u, u_input.a.x)))), Struct_1(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1f, 1f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1051f) + 1972f) - 958f), abs(vec4<u32>(194u & u_input.a.x, 0u, u_input.b.x, u_input.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~min(firstTrailingBit(vec2<i32>(1i, -8290i)), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, 9238i), vec2<i32>(1i, -34303i)))));
}

