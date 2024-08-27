struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 21>;

var<private> global1: array<vec2<i32>, 26>;

var<private> global2: Struct_1;

var<private> global3: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(13407i, 1i), vec2<i32>(15403i, -10596i), vec2<i32>(45359i, i32(-2147483648)), vec2<i32>(2147483647i, -35083i), vec2<i32>(26997i, -25728i), vec2<i32>(-1i, -1i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-26792i, -33453i), vec2<i32>(-77176i, -17206i), vec2<i32>(34665i, -15633i), vec2<i32>(19833i, 10218i), vec2<i32>(0i, 2147483647i), vec2<i32>(-18546i, i32(-2147483648)), vec2<i32>(13900i, i32(-2147483648)), vec2<i32>(16950i, -18901i), vec2<i32>(20271i, i32(-2147483648)));

var<private> global4: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    global1 = array<vec2<i32>, 26>();
    let var_0 = vec2<i32>(i32(-1i) * -(-2147483647i << (_wgslsmith_mod_u32(u_input.b.x, u_input.a.x) % 32u)), global2.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -528f, -1708f, 1316f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(136f, -1558f, 244f, 255f)))), vec4<f32>(_wgslsmith_f_op_f32(-133f * _wgslsmith_f_op_f32(f32(-1f) * -847f)), -529f, _wgslsmith_f_op_f32(min(-605f, 1f)), -848f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-626f, _wgslsmith_f_op_f32(-345f + 207f), -2160f, _wgslsmith_f_op_f32(f32(-1f) * -1037f)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2894f, -892f, -285f, -393f) * vec4<f32>(602f, -467f, -1866f, -1290f)), vec4<f32>(958f, -953f, -1334f, 217f))))));
    global2 = Struct_1(_wgslsmith_add_i32(_wgslsmith_clamp_i32(countOneBits(-arg_0.x), -33310i, max(2147483647i, ~global2.a)), -2147483647i));
    var var_2 = Struct_1(_wgslsmith_sub_i32(1i, u_input.d.x >> (u_input.e.x % 32u)));
    return _wgslsmith_add_u32(~(u_input.e.x >> (~0u % 32u)), u_input.b.x);
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>, arg_3: vec4<bool>) -> vec4<f32> {
    var var_0 = firstLeadingBit(~vec3<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(0u, 21u)], vec4<u32>(u_input.e.x, 4294967295u, 0u, u_input.e.x)), ~u_input.a.x), u_input.e.x, ~(u_input.a.x << (0u % 32u))));
    let var_1 = arg_0;
    global0 = array<vec4<u32>, 21>();
    var var_2 = -(~1i);
    let var_3 = vec4<u32>(min(countOneBits(reverseBits(u_input.e.x)) >> (u_input.b.x % 32u), 0u), var_0.x, ~_wgslsmith_div_u32(select(var_0.x, 9060u, true), _wgslsmith_div_u32(var_0.x, ~u_input.b.x)), ~(select(~var_0.x, 0u, all(arg_3.wy)) ^ _wgslsmith_mod_u32(func_3(arg_2.xy), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(34076u, var_0.x, 4294967295u)))));
    return vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -958f), _wgslsmith_f_op_f32(trunc(156f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-612f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-282f, 277f))))), _wgslsmith_div_f32(-467f, _wgslsmith_f_op_f32(ceil(-1335f))), -828f);
}

fn func_1(arg_0: f32, arg_1: bool, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, -204f, arg_0)) - _wgslsmith_f_op_vec4_f32(func_2(Struct_1(1i), global2.a, vec3<i32>(53883i, global2.a, u_input.d.x), vec4<bool>(true, arg_1, true, true)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0, -653f, -514f, 1234f)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(u_input.d.x), 17390i, vec3<i32>(global2.a, u_input.d.x, global2.a), vec4<bool>(true, arg_1, true, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, -909f))), !(!vec4<bool>(true, arg_1, true, false))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(776f, -1863f, -237f, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1098f, 157f, -320f, arg_0)), arg_1 | false)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(u_input.c), global2.a, vec3<i32>(-17948i, u_input.d.x, global2.a), vec4<bool>(arg_1, false, arg_1, true))), vec4<f32>(-306f, 543f, -1064f, -564f))), false))));
    global3 = array<vec2<i32>, 16>();
    var var_1 = -(~global2.a);
    let var_2 = Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, u_input.c, -32481i) >> (u_input.a % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(u_input.c, 37058i, global2.a)), vec3<i32>(u_input.c, 7132i, 2147483647i)), vec3<i32>(-1i) * -vec3<i32>(2147483647i, 1i, u_input.d.x)), -(vec3<i32>(-1i) * -vec3<i32>(u_input.d.x, global2.a, global2.a))));
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -187f) * _wgslsmith_f_op_f32(abs(arg_0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -251f), _wgslsmith_f_op_f32(-952f - 575f))), arg_0)))));
    return Struct_1(countOneBits(var_2.a));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = countOneBits(u_input.d);
    let var_1 = -46219i;
    let var_2 = arg_2;
    let var_3 = arg_1;
    var var_4 = func_1(-242f, any(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), true, true, true), any(vec2<bool>(true, true)))), _wgslsmith_dot_vec3_u32(min(~vec3<u32>(29251u, 4294967295u, u_input.b.x), vec3<u32>(u_input.e.x, u_input.b.x, 0u)) >> (~(~vec3<u32>(u_input.e.x, 22109u, 4294967295u)) % vec3<u32>(32u)), ~_wgslsmith_mult_vec3_u32(u_input.a, _wgslsmith_add_vec3_u32(u_input.e, u_input.a))));
    return Struct_1(arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(-(u_input.c | global2.a));
    let var_0 = func_4(func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-787f, _wgslsmith_div_f32(-1594f, -634f))))), false, 1u), func_1(1086f, -475f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(287f)))), 1058u), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(111f + 171f))), all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), true)) & false, ~4294967295u));
    global0 = array<vec4<u32>, 21>();
    global1 = array<vec2<i32>, 26>();
    global1 = array<vec2<i32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(~(4294967295u << (0u % 32u)), u_input.a.x, ~u_input.a.x), ~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.b.x) ^ (~vec3<u32>(17578u, 28516u, 4294967295u) << (u_input.a % vec3<u32>(32u)))));
}

