struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec3<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: vec4<f32>;

var<private> global2: array<vec3<bool>, 22> = array<vec3<bool>, 22>(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false));

var<private> global3: array<bool, 28>;

var<private> global4: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-236f, 568f, -1000f), vec3<f32>(768f, -1071f, 313f), vec3<f32>(928f, -1185f, -1067f), vec3<f32>(-253f, -798f, -599f), vec3<f32>(1000f, 1218f, -496f), vec3<f32>(1730f, 185f, -190f), vec3<f32>(-295f, -1000f, 329f), vec3<f32>(-225f, 1243f, -151f), vec3<f32>(-1032f, 1451f, 1170f), vec3<f32>(-942f, 1000f, -404f), vec3<f32>(-485f, -1086f, 923f), vec3<f32>(792f, 1211f, -548f), vec3<f32>(1074f, 232f, -243f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3) -> f32 {
    global4 = array<vec3<f32>, 13>();
    let var_0 = global0[_wgslsmith_index_u32(~u_input.b, 23u)];
    let var_1 = global3[_wgslsmith_index_u32(1u, 28u)];
    let var_2 = vec2<i32>(~(2147483647i << ((reverseBits(1075u) << (reverseBits(u_input.b) % 32u)) % 32u)), -16047i);
    global2 = array<vec3<bool>, 22>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -333f));
}

fn func_2(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(func_3(Struct_3(-1i)));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.xx), _wgslsmith_f_op_vec2_f32(global1.wz * global1.yx)), vec2<f32>(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 23u)], -493f))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global1.xx)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(199f, var_0)))), vec2<f32>(_wgslsmith_f_op_f32(-463f - -921f), var_0))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 23u)]) - _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(func_3(Struct_3(u_input.a.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0[_wgslsmith_index_u32(1u, 23u)], global1.x)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.yw) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-294f, -387f), global1.wz, vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 28u)], true)))))), select(!(!select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)]), vec2<bool>(false, true), false)), vec2<bool>(global3[_wgslsmith_index_u32(1u, 28u)], select(true, 49647u != u_input.b, true)), global3[_wgslsmith_index_u32(~0u, 28u)])));
    var var_2 = Struct_1(u_input.a.x, -993f, _wgslsmith_dot_vec3_i32(firstTrailingBit(~_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(-581i, 23097i, 10697i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), vec3<i32>(-13393i, -453i << ((u_input.b & arg_0.x) % 32u), 1i << (min(u_input.b, 4294967295u) % 32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global1.wxx))) - _wgslsmith_f_op_vec3_f32(-global1.wxz))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + global0[_wgslsmith_index_u32(11057u, 23u)]), var_1.x))), 1160f, 803f, _wgslsmith_f_op_f32(f32(-1f) * -394f)));
    let var_3 = Struct_2(select(!vec2<bool>(any(global2[_wgslsmith_index_u32(0u, 22u)]), true), select(vec2<bool>(u_input.b < 0u, global3[_wgslsmith_index_u32(u_input.b, 28u)] || false), !vec2<bool>(global3[_wgslsmith_index_u32(arg_0.x, 28u)], global3[_wgslsmith_index_u32(1u, 28u)]), !(!vec2<bool>(global3[_wgslsmith_index_u32(arg_0.x, 28u)], global3[_wgslsmith_index_u32(0u, 28u)]))), select(!(!vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 28u)])), select(!vec2<bool>(global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(45395u, 28u)], false), vec2<bool>(false, false), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(u_input.b, 28u)])), global3[_wgslsmith_index_u32(u_input.b, 28u)]), global3[_wgslsmith_index_u32(~(~52548u), 28u)])));
    let var_4 = var_2.a;
    return select(!(!select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 28u)], global3[_wgslsmith_index_u32(u_input.b, 28u)], true, false), select(vec4<bool>(true, global3[_wgslsmith_index_u32(arg_0.x, 28u)], false, true), vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(u_input.b, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(12150u, 28u)], true, var_3.a.x)), all(vec4<bool>(global3[_wgslsmith_index_u32(45367u, 28u)], global3[_wgslsmith_index_u32(u_input.b, 28u)], true, global3[_wgslsmith_index_u32(arg_0.x, 28u)])))), select(select(select(select(vec4<bool>(var_3.a.x, true, global3[_wgslsmith_index_u32(2370u, 28u)], var_3.a.x), vec4<bool>(global3[_wgslsmith_index_u32(arg_0.x, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(56598u, 28u)]), false), vec4<bool>(global3[_wgslsmith_index_u32(arg_0.x, 28u)], global3[_wgslsmith_index_u32(75235u, 28u)], false, true), vec4<bool>(true, true, true, true)), !(!vec4<bool>(false, var_3.a.x, var_3.a.x, global3[_wgslsmith_index_u32(4457u, 28u)])), select(select(vec4<bool>(global3[_wgslsmith_index_u32(arg_0.x, 28u)], false, true, false), vec4<bool>(false, var_3.a.x, false, var_3.a.x), true), !vec4<bool>(false, false, false, var_3.a.x), global3[_wgslsmith_index_u32(~u_input.b, 28u)])), select(!vec4<bool>(var_3.a.x, var_3.a.x, global3[_wgslsmith_index_u32(64958u, 28u)], true), vec4<bool>(global3[_wgslsmith_index_u32(u_input.b, 28u)], true, arg_0.x <= arg_0.x, global3[_wgslsmith_index_u32(~arg_0.x, 28u)]), _wgslsmith_f_op_f32(abs(var_2.d.x)) > -1185f), all(vec4<bool>(true, select(false, global3[_wgslsmith_index_u32(u_input.b, 28u)], var_3.a.x), -1487f > global1.x, any(vec4<bool>(true, global3[_wgslsmith_index_u32(51180u, 28u)], true, true))))), vec4<bool>(global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b, 0u), reverseBits(arg_0.x)), 28u)], any(!var_3.a), true, global3[_wgslsmith_index_u32(arg_0.x & 32849u, 28u)]));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<bool>) -> vec3<i32> {
    var var_0 = Struct_2(vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(select(14644u, u_input.b, any(vec4<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)], false))), 78168u), 28u)], (u_input.a.x | ~1i) < u_input.a.x));
    let var_1 = u_input.a.x << ((u_input.b & u_input.b) % 32u);
    global2 = array<vec3<bool>, 22>();
    global2 = array<vec3<bool>, 22>();
    let var_2 = arg_1.xwx;
    return u_input.a;
}

fn func_1(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~(abs(vec3<u32>(4294967295u, 4294967295u, 7511u)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, u_input.b)) % vec3<u32>(32u))), select(~vec3<u32>(u_input.b, u_input.b, 1962u), vec3<u32>(28300u, 1u, u_input.b) ^ vec3<u32>(u_input.b, 0u, 4294967295u), vec3<bool>(global3[_wgslsmith_index_u32(14285u, 28u)], false, false)) & ~(vec3<u32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(0u, u_input.b, 167225u) % vec3<u32>(32u)))), ~vec3<u32>(~46808u, ~max(1u, 37069u), 92342u));
    let var_1 = func_4(vec2<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(step(1619f, 866f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(307u, 23u)])), -345f))), !func_2(~(~vec4<u32>(0u, 4294967295u, 1u, 12574u))));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(global1.zw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, global0[_wgslsmith_index_u32(11490u, 23u)])), _wgslsmith_div_f32(652f, 146f)))) * vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-588f, global0[_wgslsmith_index_u32(var_0.x, 23u)])))))));
    var var_3 = ~select(select(vec3<u32>(1u, var_0.x, 1u), vec3<u32>(24590u, 4285u, u_input.b) & var_0, global3[_wgslsmith_index_u32(~var_0.x, 28u)]), vec3<u32>(var_0.x, u_input.b, 100890u) & vec3<u32>(6409u, var_0.x, u_input.b), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.x, firstLeadingBit(4294967295u)), 22u)]) >> (~vec3<u32>(~0u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, 7950u, var_0.x), ~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_0.x), vec2<u32>(33970u, 4294967295u))), var_0.x) % vec3<u32>(32u));
    var var_4 = Struct_3(~11446i);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(12587u, 23u)], var_2.x) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 23u)]))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global1.yz)) - _wgslsmith_f_op_vec2_f32(func_1(Struct_3(_wgslsmith_sub_i32(-u_input.a.x, 1i)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-744f + 207f))), 716f)), _wgslsmith_f_op_f32(select(352f, 2440f, !func_2(firstLeadingBit(vec4<u32>(16015u, 4294967295u, 60562u, u_input.b))).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(abs(~u_input.b), 23u)] + -934f)), -176f);
    let var_2 = Struct_3(firstLeadingBit(_wgslsmith_add_i32(-1i, u_input.a.x)));
    global4 = array<vec3<f32>, 13>();
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global1.wy)));
    let var_3 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-1012f + _wgslsmith_div_f32(var_1.x, var_0.x)), global1.x, global0[_wgslsmith_index_u32(27753u, 23u)], global0[_wgslsmith_index_u32(~abs(0u), 23u)]), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1003f, global1.x, var_1.x, 1643f)))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1188f, global1.x, var_0.x, global0[_wgslsmith_index_u32(0u, 23u)]), vec4<f32>(-267f, global1.x, -1000f, var_0.x)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(325f, var_0.x, 741f, -758f)))))), global3[_wgslsmith_index_u32(~(~u_input.b), 28u)])), _wgslsmith_f_op_vec2_f32(-var_1.yw), func_4(_wgslsmith_f_op_vec2_f32(global1.yw * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global1.xy)))), !vec4<bool>(true, global3[_wgslsmith_index_u32(0u, 28u)], all(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 28u)], true, global3[_wgslsmith_index_u32(u_input.b, 28u)])), true)), _wgslsmith_mult_i32(5777i, 1i), _wgslsmith_sub_i32(var_2.a, var_3));
}

