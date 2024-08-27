struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_3,
    d: i32,
    e: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
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

var<private> global0: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(46667u, 0u), vec2<u32>(19583u, 4294967295u), vec2<u32>(17831u, 0u), vec2<u32>(450u, 600u), vec2<u32>(0u, 1u), vec2<u32>(21314u, 0u), vec2<u32>(49537u, 1u), vec2<u32>(10287u, 59133u), vec2<u32>(0u, 85696u), vec2<u32>(19125u, 1u), vec2<u32>(0u, 1u), vec2<u32>(28853u, 1u), vec2<u32>(4294967295u, 10996u), vec2<u32>(95478u, 1u), vec2<u32>(18356u, 23172u), vec2<u32>(44378u, 37189u), vec2<u32>(4294967295u, 41862u), vec2<u32>(1u, 1u), vec2<u32>(15919u, 31630u), vec2<u32>(1u, 14730u), vec2<u32>(0u, 0u), vec2<u32>(22703u, 0u), vec2<u32>(33655u, 0u));

var<private> global1: i32 = 23444i;

var<private> global2: array<Struct_1, 18>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec3<i32> {
    var var_0 = abs(~(~max(firstLeadingBit(vec2<i32>(u_input.a, arg_1)), vec2<i32>(-43707i, u_input.a))));
    let var_1 = Struct_5(_wgslsmith_clamp_vec2_u32(reverseBits(global0[_wgslsmith_index_u32(abs(4294967295u), 24u)]), select(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], _wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(arg_0.c.x, 24u)], vec2<u32>(1u, 32034u), u_input.b.wy), vec2<bool>(true, true)), vec2<u32>(1u, u_input.b.x >> (arg_0.c.x % 32u))) << (~_wgslsmith_div_vec2_u32(u_input.b.wy & arg_0.c.xx, firstTrailingBit(arg_0.c.wx)) % vec2<u32>(32u)), ~select(vec3<u32>(u_input.b.x, 64882u, ~4294967295u), vec3<u32>(u_input.b.x, 1u, abs(27597u)), arg_0.a.a), global2[_wgslsmith_index_u32(arg_0.c.x, 18u)]);
    var_0 = -vec2<i32>(countOneBits(2147483647i), arg_1) & vec2<i32>(abs(2147483647i), i32(-1i) * -38018i);
    return vec3<i32>(-31871i & _wgslsmith_clamp_i32(-u_input.a, -1i, _wgslsmith_dot_vec3_i32(~vec3<i32>(arg_1, var_0.x, arg_1), vec3<i32>(var_0.x, arg_1, arg_1))), u_input.a ^ -1i, u_input.a);
}

fn func_2() -> vec4<u32> {
    var var_0 = _wgslsmith_dot_vec3_i32(func_3(Struct_2(global2[_wgslsmith_index_u32(~u_input.b.x & _wgslsmith_dot_vec3_u32(u_input.b.zwx, u_input.b.zww), 18u)], vec4<bool>(true, true, true, false), vec4<u32>(u_input.b.x & u_input.b.x, ~u_input.b.x, 4294967295u, countOneBits(0u))), u_input.a), ~abs(abs(vec3<i32>(u_input.a, 952i, 0i) << (u_input.b.xyw % vec3<u32>(32u)))));
    global0 = array<vec2<u32>, 24>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-338f, _wgslsmith_f_op_f32(trunc(-282f))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, -1139f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(abs(795f)), _wgslsmith_div_f32(142f, 875f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(266f, -240f)))))));
    let var_2 = true;
    var_0 = u_input.a;
    return ~u_input.b;
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_4) -> vec2<i32> {
    var var_0 = -1i;
    let var_1 = arg_1.a.a.b;
    let var_2 = ~vec3<u32>(u_input.b.x, arg_0.x, firstTrailingBit(1u));
    global1 = _wgslsmith_sub_i32(abs(-1i), _wgslsmith_mult_i32(u_input.a, _wgslsmith_div_i32(u_input.a, select(_wgslsmith_add_i32(44012i, -26587i), u_input.a | arg_1.b, true))));
    var_0 = ~_wgslsmith_mod_i32(~max(15258i, ~arg_1.d), 1i);
    return firstTrailingBit(vec2<i32>(1i, func_3(arg_1.a.a, arg_1.b).x));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<bool>) -> u32 {
    global2 = array<Struct_1, 18>();
    var var_0 = func_4(func_2(), Struct_4(Struct_3(Struct_2(Struct_1(arg_2.x, vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), arg_2, u_input.b), _wgslsmith_f_op_f32(-712f + -693f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 1442f, 1029f)))), 12961i, Struct_3(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 18u)], arg_2, vec4<u32>(4294967295u, 20967u, u_input.b.x, 19951u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1050f), 1070f), vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(-arg_0.x), -1000f, _wgslsmith_div_f32(950f, -233f))), _wgslsmith_div_i32(-2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 54793i, u_input.a), vec3<i32>(-1i, u_input.a, u_input.a)), u_input.a)), func_2().x));
    var var_1 = Struct_3(Struct_2(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 18u)], arg_2, ~min(_wgslsmith_clamp_vec4_u32(u_input.b, u_input.b, vec4<u32>(4294967295u, u_input.b.x, 42438u, 38356u)), u_input.b)), 359f, vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), true)), -692f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(170f, arg_0.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), -689f)))));
    global2 = array<Struct_1, 18>();
    global2 = array<Struct_1, 18>();
    return ~var_1.a.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(global0[_wgslsmith_index_u32(~countOneBits(func_1(vec3<f32>(1000f, 448f, 539f), false, vec4<bool>(true, true, false, true))) ^ 1u, 24u)], vec3<u32>(u_input.b.x, ~_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(u_input.b.x, 29429u)), u_input.b.x), Struct_1(any(vec2<bool>(true, select(true, true, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 857f, -848f))))));
    let var_1 = vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_div_i32(-74946i, ~firstLeadingBit(u_input.a)), ~(~u_input.a) >> (~(~u_input.b.x) % 32u), i32(-1i) * -(i32(-1i) * -30216i)), ~u_input.a);
    let var_2 = Struct_1(~(-1i) >= -(~(-2147483647i) << (_wgslsmith_mod_u32(var_0.a.x, 0u) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1031f, -430f, -285f))) * var_0.c.b)));
    let var_3 = u_input.a;
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.b.x))))))) + _wgslsmith_f_op_f32(f32(-1f) * -1013f));
    let var_5 = !vec3<bool>(var_2.a, false, any(select(vec3<bool>(false, false, true), select(vec3<bool>(false, var_2.a, true), vec3<bool>(var_0.c.a, var_2.a, var_0.c.a), vec3<bool>(var_0.c.a, true, true)), any(vec3<bool>(var_2.a, true, true)))));
    var var_6 = u_input.b.x;
    var var_7 = firstTrailingBit(vec3<i32>(-78421i, var_1.x, -19223i));
    let var_8 = vec2<u32>(46239u, ~(var_0.b.x << (countOneBits(55119u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_7.yz);
}

