struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 25>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-817f, 183f, 1000f), vec4<u32>(67643u, 1u, 17363u, 0u), vec2<f32>(188f, -807f), vec3<f32>(756f, 175f, 484f));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> vec2<f32> {
    global0 = array<vec2<bool>, 25>();
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-401f - 606f) * _wgslsmith_f_op_f32(626f - arg_3.d.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(159f * global2.d.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.d.x, 1194f, -811f)))), vec4<u32>(~4294967295u, 0u, min(arg_0.c.b.x, arg_0.c.b.x), max(~u_input.a.x << ((u_input.a.x << (0u % 32u)) % 32u), u_input.a.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.a.x) + _wgslsmith_f_op_f32(select(866f, 692f, false))), _wgslsmith_f_op_f32(-global2.d.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.c.d.x, -940f)) - _wgslsmith_f_op_f32(-arg_0.c.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-363f - 197f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-779f - arg_0.c.a.x) * _wgslsmith_f_op_f32(trunc(arg_0.c.d.x))))), global2.c.x));
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1634f, arg_0.c.a.x));
}

fn func_2() -> i32 {
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d.x, 437f, 256f)) + vec3<f32>(-518f, global2.c.x, -1714f)))))), global2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-840f, global2.c.x), _wgslsmith_f_op_vec2_f32(-global2.a.xz), any(vec3<bool>(global1.x, false, global1.x)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec4<bool>(global1.x, global1.x, global1.x, global1.x), global1.x, Struct_1(global2.d, vec4<u32>(u_input.a.x, global2.b.x, 0u, 0u), global2.d.xy, vec3<f32>(global2.d.x, global2.d.x, 559f))), -2147483647i, global1.x, Struct_1(global2.a, vec4<u32>(u_input.a.x, 1u, 4294967295u, 87213u), vec2<f32>(711f, global2.d.x), vec3<f32>(586f, -946f, global2.c.x)))))))), vec3<f32>(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(true, global1.x, true, global1.x), global1.x), false, Struct_1(vec3<f32>(global2.c.x, global2.d.x, global2.d.x), vec4<u32>(global2.b.x, 0u, u_input.a.x, 4294967295u), vec2<f32>(global2.c.x, -177f), global2.a)), ~_wgslsmith_sub_i32(-5922i, 1i), true, Struct_1(_wgslsmith_f_op_vec3_f32(max(global2.d, vec3<f32>(269f, 153f, global2.c.x))), _wgslsmith_mult_vec4_u32(global2.b, vec4<u32>(14059u, global2.b.x, u_input.a.x, global2.b.x)), vec2<f32>(1052f, global2.a.x), _wgslsmith_div_vec3_f32(vec3<f32>(2278f, 1973f, global2.c.x), vec3<f32>(209f, global2.d.x, -1000f))))).x, _wgslsmith_f_op_f32(f32(-1f) * -1215f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_0 = Struct_2(select(select(select(!vec4<bool>(true, false, global1.x, true), !vec4<bool>(global1.x, global1.x, true, false), select(vec4<bool>(false, true, false, true), vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(global1.x, true, true, true))), vec4<bool>(!global1.x, global1.x, true, !global1.x), !vec4<bool>(false, true, true, global1.x)), !vec4<bool>(all(vec2<bool>(global1.x, false)), !global1.x, !global1.x, 52418u >= u_input.a.x), false), true, Struct_1(global2.a, _wgslsmith_div_vec4_u32(global2.b, _wgslsmith_mult_vec4_u32(vec4<u32>(global2.b.x, u_input.a.x, global2.b.x, u_input.a.x), global2.b)) ^ global2.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.d.x, 1000f), _wgslsmith_div_vec2_f32(global2.c, global2.a.yz)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-971f, _wgslsmith_f_op_f32(global2.c.x + 1689f), 1000f) * _wgslsmith_div_vec3_f32(global2.d, _wgslsmith_div_vec3_f32(vec3<f32>(488f, global2.d.x, global2.a.x), vec3<f32>(815f, -1171f, global2.c.x))))));
    global2 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.c.d) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.x, global2.c.x, global2.c.x) * vec3<f32>(455f, 449f, 1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.d.x, global2.d.x, var_0.c.c.x)) * global2.a)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -887f), var_0.c.a.x, global2.d.x)), firstTrailingBit(select(~global2.b, ~vec4<u32>(1u, global2.b.x, 44807u, u_input.a.x), true)) >> (vec4<u32>(min(0u, 58747u), select(_wgslsmith_mod_u32(u_input.a.x, var_0.c.b.x), ~var_0.c.b.x, 345f != global2.a.x), 1u, firstTrailingBit(global2.b.x | var_0.c.b.x)) % vec4<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(-var_0.c.a.x), 132f), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global2.d.x, _wgslsmith_f_op_f32(343f * var_0.c.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.c.a.x)))), global2.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.c.a.x)), _wgslsmith_f_op_f32(-734f + _wgslsmith_f_op_f32(f32(-1f) * -1159f)))));
    global2 = var_0.c;
    global1 = !vec3<bool>(all(!(!vec3<bool>(global1.x, var_0.a.x, var_0.b))), true, !any(vec2<bool>(false, true)));
    return -firstLeadingBit(-640i);
}

fn func_1(arg_0: f32, arg_1: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(arg_1, -5347i), select(func_2(), ~arg_1, false)), countOneBits(~vec2<i32>(2147483647i, countOneBits(37314i))));
    global0 = array<vec2<bool>, 25>();
    global1 = !select(!(!vec3<bool>(false, global1.x, global1.x)), vec3<bool>(global1.x & all(vec3<bool>(true, true, global1.x)), global1.x, !(-1i >= arg_1)), 0u == ~firstLeadingBit(u_input.a.x));
    global2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -746f) + global2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(297f, 521f)), _wgslsmith_f_op_f32(max(arg_0, global2.a.x))))), _wgslsmith_f_op_f32(global2.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(179f, global2.c.x)) + 378f))), vec4<u32>(global2.b.x, reverseBits(~u_input.a.x ^ _wgslsmith_div_u32(u_input.a.x, u_input.a.x)), 4294967295u, _wgslsmith_add_u32(global2.b.x, ~firstTrailingBit(0u))), global2.c, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, 744f, global2.c.x)))), vec3<f32>(-641f, arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.d.x * global2.c.x), _wgslsmith_div_f32(1816f, -1082f))))));
    let var_1 = Struct_2(select(select(vec4<bool>(global1.x, select(global1.x, true, false), global1.x, 13720i == var_0.x), !select(vec4<bool>(true, false, false, true), vec4<bool>(global1.x, false, false, true), false), select(vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(false, global1.x, true, false))), vec4<bool>(true, true, !select(false, global1.x, global1.x), true), vec4<bool>(false, true & global1.x, true, false)), reverseBits(_wgslsmith_sub_i32(11938i, arg_1)) < ~max(var_0.x, 1i), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-227f + -513f), _wgslsmith_f_op_f32(floor(arg_0)), _wgslsmith_f_op_f32(sign(-1580f))), ~abs(global2.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.c.x, global2.d.x) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.d.x, global2.d.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a + vec3<f32>(arg_0, global2.d.x, arg_0))))));
    return !select(!(!vec4<bool>(true, true, var_1.a.x, false)), select(var_1.a, vec4<bool>(!global1.x, false, -1i <= arg_1, !var_1.a.x), !var_1.a), !select(var_1.a, select(vec4<bool>(global1.x, false, var_1.a.x, global1.x), vec4<bool>(true, true, false, true), var_1.a), select(vec4<bool>(false, true, var_1.b, var_1.a.x), vec4<bool>(false, var_1.a.x, global1.x, global1.x), false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 89627u;
    let var_1 = Struct_2(select(select(vec4<bool>(all(vec3<bool>(global1.x, true, false)), global1.x, !global1.x, false), select(!vec4<bool>(global1.x, global1.x, true, global1.x), func_1(-1000f, -1i), true), select(select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x), global1.x), func_1(354f, 2147483647i), vec4<bool>(true, true, false, global1.x))), vec4<bool>(!global1.x, global1.x, !(global1.x && true), false), true), global1.x == false, Struct_1(vec3<f32>(264f, global2.d.x, global2.d.x), ~(~countOneBits(vec4<u32>(29980u, 69992u, 9098u, u_input.a.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_2(vec4<bool>(false, global1.x, global1.x, global1.x), true, Struct_1(global2.d, vec4<u32>(u_input.a.x, u_input.a.x, var_0, 0u), vec2<f32>(global2.a.x, global2.c.x), global2.a)), -10599i, global1.x, Struct_1(vec3<f32>(1316f, global2.a.x, 1394f), global2.b, vec2<f32>(1768f, 1297f), vec3<f32>(-610f, 346f, -1952f)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(909f, global2.d.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.a.x, global2.c.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-233f, global2.d.x, global2.d.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d.x, global2.d.x, 212f) * vec3<f32>(global2.c.x, global2.a.x, global2.a.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1638f, global2.d.x, -461f) * vec3<f32>(672f, global2.c.x, 996f))))));
    global2 = var_1.c;
    var var_2 = var_1;
    global0 = array<vec2<bool>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(-19001i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.c.c.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.c.d.x - var_1.c.d.x), _wgslsmith_div_f32(var_2.c.a.x, var_1.c.c.x)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_2.c.c.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-531f, var_1.c.a.x)) + var_2.c.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(794f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.c.x + global2.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.c.d.x * var_2.c.c.x), _wgslsmith_f_op_f32(round(var_2.c.d.x)))))), countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(4294967295u, 50932u), u_input.a.zx), u_input.a.zz)));
}

