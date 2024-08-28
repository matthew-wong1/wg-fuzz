struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_2;

var<private> global2: array<f32, 16>;

var<private> global3: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(-196f, 743f, -383f), vec3<f32>(-128f, -1161f, 1000f), vec3<f32>(1000f, -575f, 373f), vec3<f32>(-1410f, 2107f, 404f), vec3<f32>(671f, 467f, -247f), vec3<f32>(192f, -176f, -1000f), vec3<f32>(771f, -1000f, 692f), vec3<f32>(-194f, 607f, 359f), vec3<f32>(1370f, -795f, -633f), vec3<f32>(842f, 418f, 737f), vec3<f32>(-1818f, -183f, -124f), vec3<f32>(250f, -720f, 1189f), vec3<f32>(1472f, -312f, -382f), vec3<f32>(-916f, -386f, -843f), vec3<f32>(-716f, -457f, 968f), vec3<f32>(499f, 444f, -541f), vec3<f32>(-470f, -246f, 139f));

var<private> global4: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(-370f, -1043f), vec2<f32>(867f, 445f), vec2<f32>(120f, -645f), vec2<f32>(342f, -287f));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: vec4<u32>) -> f32 {
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(4294967295u, 17u)], _wgslsmith_sub_vec3_u32(vec3<u32>(48317u, ~30077u, _wgslsmith_mult_u32(arg_2.x, ~u_input.a.x)), ~(~arg_2.yzw | vec3<u32>(global1.b.x, 60517u, 20474u))), _wgslsmith_div_vec4_f32(arg_0, vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), -706f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(222f))), global1.a.x)), Struct_1(vec2<bool>(true, all(select(vec3<bool>(false, global1.d.a.x, global1.d.a.x), global1.d.b.wyz, vec3<bool>(global1.d.a.x, false, false)))), global1.d.b, all(global1.d.b.xx)));
    var var_1 = Struct_4(var_0.d);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-322f, 1419f)))) * global4[_wgslsmith_index_u32(global0.x, 4u)]);
    var var_3 = _wgslsmith_f_op_vec3_f32(arg_0.yww - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 111f, global2[_wgslsmith_index_u32(~global0.x, 16u)])), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2.x, 791f, arg_0.x), var_0.c.zyy)))))))));
    var var_4 = Struct_3(!(!select(global1.d.b.zxx, var_0.d.b.xyz, !global1.d.b.xxz)), Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(1318f * var_0.c.x)), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(17767u, 16u)])) * arg_0.x)), ~var_0.b, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global1.c))), Struct_1(vec2<bool>(true, true), select(vec4<bool>(var_1.a.a.x, var_0.d.c, true, var_0.d.a.x), vec4<bool>(var_0.d.a.x, false, global1.d.a.x, false), !vec4<bool>(true, true, var_0.d.c, true)), global1.d.b.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1888f * _wgslsmith_f_op_f32(-1053f - arg_0.x))));
}

fn func_3() -> f32 {
    global1 = Struct_2(global1.a, ~global1.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - global2[_wgslsmith_index_u32(4294967295u, 16u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(184f, 1057f), _wgslsmith_f_op_f32(f32(-1f) * -658f), global1.d.a.x && true)) * global1.c.x), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.a.x, 16u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(global1.a.x - global1.c.x)))), Struct_1(global1.d.a, select(!global1.d.b, select(vec4<bool>(global1.d.a.x, false, false, global1.d.c), select(global1.d.b, vec4<bool>(global1.d.c, false, global1.d.a.x, global1.d.a.x), vec4<bool>(global1.d.b.x, true, true, true)), !global1.d.b), false), false));
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(-global1.a), vec3<u32>(reverseBits(global0.x), ~1u, 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2010f + -1418f) + _wgslsmith_div_f32(global2[_wgslsmith_index_u32(global1.b.x, 16u)], 798f)), 1253f, _wgslsmith_f_op_f32(334f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global1.a.x) - vec4<f32>(_wgslsmith_f_op_f32(1278f * _wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec4<f32>(-1127f, -201f, -248f, global1.c.x), 4244i, vec4<u32>(global1.b.x, global1.b.x, 1u, global1.b.x))), 1366f), _wgslsmith_f_op_f32(select(-801f, _wgslsmith_f_op_f32(floor(-556f)), global1.d.a.x)), 989f)), global1.d);
    let var_0 = Struct_3(vec3<bool>(any(select(!vec3<bool>(global1.d.a.x, global1.d.c, true), vec3<bool>(global1.d.b.x, global1.d.c, global1.d.b.x), !global1.d.b.xyz)), select(all(global1.d.b.yw) & (global1.d.a.x & global1.d.b.x), _wgslsmith_clamp_i32(u_input.b, 0i, u_input.b) >= select(u_input.b, u_input.b, false), all(!vec4<bool>(false, global1.d.c, global1.d.c, true))), true), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a)), countOneBits(~global1.b >> (abs(vec3<u32>(114564u, 0u, 4294967295u)) % vec3<u32>(32u))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -200f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1556f * 1138f), -168f, !global1.d.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.a.x, 340f), _wgslsmith_div_f32(536f, -468f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(6952u, 16u)], global2[_wgslsmith_index_u32(19556u, 16u)])))), global1.d));
    var var_1 = var_0.b.d.c;
    let var_2 = var_0.b.a.xy;
    return _wgslsmith_f_op_f32(func_2(global1.c, _wgslsmith_mod_i32(u_input.b, ~u_input.b), ~(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 3960u, var_0.b.b.x, 0u), vec4<u32>(u_input.a.x, var_0.b.b.x, 21080u, 1u))))));
}

fn func_1() -> Struct_2 {
    global1 = Struct_2(vec3<f32>(-465f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c) * global1.c), u_input.b, ~firstLeadingBit(vec4<u32>(u_input.a.x, global1.b.x, 84047u, 1u)))), 800f), vec3<u32>(abs(0u), 21631u, 1u), global1.c, global1.d);
    let var_0 = Struct_4(global1.d);
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(global1.b.x, 17u)], global3[_wgslsmith_index_u32(~4294967295u, 17u)]) + vec3<f32>(global1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(sign(720f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), _wgslsmith_div_vec3_u32(~global1.b, global1.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-918f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(21025u, 16u)]), _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(global1.b.x, 16u)], 127f, global1.d.b.x)), 136f) * _wgslsmith_f_op_vec4_f32(global1.c - _wgslsmith_f_op_vec4_f32(round(global1.c))))), global1.d);
    global4 = array<vec2<f32>, 4>();
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 16u)] + -707f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(38508u, 16u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.x + global1.a.x)), -548f), vec3<u32>(~(~max(11790u, 11028u)), global1.b.x, u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -513f), _wgslsmith_f_op_f32(select(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x * global1.c.x) + -600f), var_0.a.b.x)), _wgslsmith_f_op_f32(min(global1.c.x, _wgslsmith_f_op_f32(-global1.c.x))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, ~1u, ~u_input.a.x) | ~4484u, 16u)]), global1.d);
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-369f, var_1.c.x))), _wgslsmith_div_f32(1177f, global2[_wgslsmith_index_u32(min(global0.x, var_1.b.x), 16u)]))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-238f)))), 306f), vec3<u32>(4294967295u, var_1.b.x, abs(~_wgslsmith_div_u32(global1.b.x, var_1.b.x))), _wgslsmith_f_op_vec4_f32(var_1.c + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1108f))), -1086f, 162f, -731f)), global1.d);
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> vec3<bool> {
    let var_0 = vec2<bool>(arg_1.d.a.x, arg_1.d.b.x);
    global3 = array<vec3<f32>, 17>();
    global4 = array<vec2<f32>, 4>();
    global2 = array<f32, 16>();
    global2 = array<f32, 16>();
    return !vec3<bool>(all(!vec3<bool>(var_0.x, true, true)), all(vec4<bool>(global1.d.a.x, var_0.x, select(global1.d.b.x, global1.d.c, global1.d.a.x), !var_0.x)), !select(false, all(vec2<bool>(arg_1.d.c, var_0.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 16>();
    let var_0 = global1.d;
    let var_1 = true;
    global4 = array<vec2<f32>, 4>();
    let var_2 = global1.c.x;
    let var_3 = 73886u;
    let var_4 = Struct_3(!select(var_0.b.yxw, func_4(global0.x, func_1()), !func_1().d.a.x), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(~abs((global0.x ^ 4522u) | ~0u), _wgslsmith_div_vec3_i32(vec3<i32>(~2147483647i, abs(0i), u_input.b & 47447i), -vec3<i32>(u_input.b, 0i, u_input.b)) << ((min(~vec3<u32>(var_4.b.b.x, 4294967295u, u_input.a.x), ~global1.b) | global1.b) % vec3<u32>(32u)));
}

