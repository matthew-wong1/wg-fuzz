struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: f32,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: u32;

var<private> global2: array<bool, 13> = array<bool, 13>(false, false, false, false, true, true, true, true, true, false, false, false, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<f32>) -> u32 {
    global2 = array<bool, 13>();
    let var_0 = Struct_2(Struct_1(!(!select(arg_1.a, arg_1.a, arg_1.a.x))), vec4<bool>(select(all(select(vec3<bool>(arg_2.a.x, arg_1.a.x, arg_1.a.x), vec3<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 13u)], global2[_wgslsmith_index_u32(582u, 13u)], arg_1.a.x), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.d.x, 13u)], global2[_wgslsmith_index_u32(u_input.d.x, 13u)]))), global2[_wgslsmith_index_u32(44926u, 13u)], arg_1.a.x), arg_2.a.x, all(arg_2.a), false), -1037f, Struct_1(select(vec2<bool>(u_input.a.x > u_input.a.x, !global2[_wgslsmith_index_u32(1u, 13u)]), vec2<bool>(true, true), !vec2<bool>(arg_2.a.x, false))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, arg_3.x, arg_0.x), arg_3.zzx, arg_2.a.x)), _wgslsmith_f_op_vec3_f32(arg_3.yzw * arg_3.zxw), false & global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(56276u, 0u, u_input.d.x), 13u)])))));
    var var_1 = Struct_2(Struct_1(arg_2.a), !(!select(!var_0.b, vec4<bool>(true, false, false, true), select(var_0.b, var_0.b, vec4<bool>(true, arg_2.a.x, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1201f + 662f) - _wgslsmith_f_op_f32(trunc(var_0.e.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1000f)))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(982f)) - -221f)), Struct_1(arg_2.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(1619f, 213f, _wgslsmith_f_op_f32(round(arg_0.x))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.e)))));
    var var_2 = vec3<bool>(!(!(firstTrailingBit(1i) > u_input.c.x)), !all(!select(vec3<bool>(var_0.a.a.x, global2[_wgslsmith_index_u32(7269u, 13u)], false), var_1.b.yxz, false)), !all(vec4<bool>(arg_1.a.x, false, var_1.d.a.x, var_0.a.a.x)) == var_0.d.a.x);
    let var_3 = Struct_2(Struct_1(arg_1.a), vec4<bool>(all(var_1.b.zzz), all(arg_1.a), !var_1.a.a.x, 4294967295u == _wgslsmith_mult_u32(u_input.b.x, ~4294967295u)), arg_3.x, var_1.d, var_1.e);
    return ~_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.d.x | 3217u, 0u), abs(~_wgslsmith_clamp_vec2_u32(u_input.b.xz, u_input.d, vec2<u32>(u_input.d.x, u_input.d.x))));
}

fn func_4(arg_0: bool) -> i32 {
    var var_0 = u_input.a;
    var var_1 = ~u_input.b.x;
    global0 = min(firstLeadingBit(91946u), 4294967295u | ~(~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.d.x, 89235u, 15165u))));
    var var_2 = !select(vec2<bool>(96648u >= u_input.b.x, !(!global2[_wgslsmith_index_u32(u_input.d.x, 13u)])), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 13u)]), vec2<bool>(!select(true, false, true), arg_0));
    var var_3 = Struct_1(select(select(vec2<bool>(all(vec3<bool>(var_2.x, false, false)), true), vec2<bool>(var_2.x || global2[_wgslsmith_index_u32(u_input.d.x, 13u)], true), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, firstTrailingBit(98499u)), 13u)]), vec2<bool>(arg_0, true), !(!global2[_wgslsmith_index_u32(~u_input.d.x, 13u)])));
    return var_0.x;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_2) -> bool {
    var var_0 = min(17854u, ~4294967295u);
    var var_1 = arg_0.d;
    var var_2 = _wgslsmith_f_op_vec2_f32(arg_2.e.zy - arg_0.e.yz);
    let var_3 = 17394i;
    var_0 = ~_wgslsmith_mult_u32(32229u, 22141u & _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, 14199u, 38909u, u_input.b.x), vec4<u32>(1u, 83101u, 74493u, 0u), vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(4214u, 6456u, u_input.b.x, 102724u), vec4<u32>(43220u, u_input.b.x, 4294967295u, u_input.d.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(719f - var_2.x)))) >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -332f)));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1167f) * _wgslsmith_f_op_f32(f32(-1f) * -1485f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -350f))), 577f)));
    var var_1 = vec3<f32>(var_0.x, var_0.x, 961f);
    global2 = array<bool, 13>();
    global0 = firstTrailingBit(_wgslsmith_div_u32(arg_1.x, _wgslsmith_mod_u32(arg_1.x << (min(arg_0, 50159u) % 32u), ~1u)));
    var var_2 = func_5(Struct_2(Struct_1(vec2<bool>(!global2[_wgslsmith_index_u32(10446u, 13u)], any(vec4<bool>(false, true, global2[_wgslsmith_index_u32(0u, 13u)], false)))), vec4<bool>(true, false, all(vec3<bool>(true, true, true)), false), var_0.x, Struct_1(vec2<bool>(true, true)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-357f, -642f, var_0.x))), vec3<f32>(-760f, _wgslsmith_f_op_f32(var_1.x + -497f), var_0.x)))), vec2<i32>(func_4(global2[_wgslsmith_index_u32(func_3(var_1.yx, Struct_1(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 13u)])), Struct_1(vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(652f, var_1.x, -293f, var_0.x)))), 13u)]), select(_wgslsmith_add_i32(u_input.a.x, u_input.c.x) << (arg_1.x % 32u), u_input.a.x << (~0u % 32u), all(vec3<bool>(false, true, false)) == global2[_wgslsmith_index_u32(arg_1.x, 13u)])), Struct_2(Struct_1(!vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 13u)])), select(select(!vec4<bool>(true, global2[_wgslsmith_index_u32(arg_1.x, 13u)], global2[_wgslsmith_index_u32(71197u, 13u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(arg_1.x, 13u)], global2[_wgslsmith_index_u32(arg_1.x, 13u)], global2[_wgslsmith_index_u32(1u, 13u)]), global2[_wgslsmith_index_u32(firstTrailingBit(31530u), 13u)]), vec4<bool>(-7874i <= u_input.c.x, true, !global2[_wgslsmith_index_u32(u_input.b.x, 13u)], true), !select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(arg_1.x, 13u)], false), vec4<bool>(true, true, global2[_wgslsmith_index_u32(arg_0, 13u)], global2[_wgslsmith_index_u32(arg_0, 13u)]), false)), var_1.x, Struct_1(!select(vec2<bool>(false, global2[_wgslsmith_index_u32(arg_0, 13u)]), vec2<bool>(global2[_wgslsmith_index_u32(24241u, 13u)], true), vec2<bool>(global2[_wgslsmith_index_u32(arg_1.x, 13u)], true))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 988f, var_1.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-565f, var_1.x, 544f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-798f, var_0.x, var_0.x), vec3<f32>(var_1.x, -631f, -545f), vec3<bool>(true, global2[_wgslsmith_index_u32(arg_1.x, 13u)], global2[_wgslsmith_index_u32(1u, 13u)]))))))));
    return false;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(!(!vec2<bool>(!global2[_wgslsmith_index_u32(0u, 13u)], arg_0)));
    var var_1 = var_0.a.x;
    var var_2 = Struct_2(arg_1, select(vec4<bool>(func_2(~u_input.b.x, u_input.b), any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 13u)], false, true, false)), true, arg_1.a.x), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(var_0.a.x, arg_1.a.x, true, global2[_wgslsmith_index_u32(4294967295u, 13u)]))), vec4<bool>(_wgslsmith_mult_i32(u_input.c.x, -1i) == reverseBits(u_input.c.x), false, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 2574u), u_input.b.yx), 13u)], !(true | global2[_wgslsmith_index_u32(4294967295u, 13u)]))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-805f * _wgslsmith_f_op_f32(ceil(1240f))), 1334f)))), Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(~min(681u, 1u), 13u)], var_0.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-226f, 797f, 311f))))));
    let var_3 = true;
    let var_4 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(~(~_wgslsmith_sub_u32(u_input.b.x, 0u)), 10594u), select(u_input.b.x, u_input.d.x, var_2.d.a.x));
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(any(select(!vec4<bool>(true, true, true, global2[_wgslsmith_index_u32(u_input.d.x, 13u)]), !vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(4294967295u, 13u)]), global2[_wgslsmith_index_u32(func_1(!global2[_wgslsmith_index_u32(4294967295u, 13u)], Struct_1(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 13u)], true))), 13u)])), _wgslsmith_f_op_f32(min(-1276f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -836f), 1638f)))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(570f, 127f))), -344f), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(-u_input.c, u_input.c), func_4(true) << (4294967295u % 32u));
}

