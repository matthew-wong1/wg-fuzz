struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<Struct_1, 26>;

var<private> global2: vec3<u32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-475f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -890f))) - 660f);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(abs(global2.x), u_input.b, ~global2.x, max(u_input.c, global2.x)), select(~vec4<u32>(global2.x, global2.x, u_input.c, global2.x), firstLeadingBit(vec4<u32>(global2.x, 14876u, u_input.c, global2.x)), true))), vec4<u32>(countOneBits(global2.x), ~max(u_input.c, _wgslsmith_add_u32(4294967295u, u_input.c)), countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, 19782u, global2.x, global2.x), vec4<u32>(global2.x, 83263u, global2.x, 24275u), vec4<u32>(global2.x, u_input.b, 0u, 36832u)), ~vec4<u32>(10428u, global2.x, 7386u, global2.x))), min(~(~79781u), ~global2.x << (~54994u % 32u)))), 31u)];
    var var_2 = var_1.b.x;
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(30805u, reverseBits(_wgslsmith_add_u32(_wgslsmith_div_u32(firstTrailingBit(global2.x), u_input.c), ~(~var_1.d)))), 26u)];
    let var_3 = u_input.e.x;
    return ~var_3;
}

fn func_2() -> Struct_1 {
    let var_0 = func_3();
    global2 = ~max(~_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(u_input.b, u_input.b, u_input.b)), firstTrailingBit(vec3<u32>(4294967295u, 1u, 60408u))), ~vec3<u32>(global2.x, ~global2.x, abs(1u)));
    global0 = array<Struct_1, 31>();
    global2 = _wgslsmith_div_vec3_u32(vec3<u32>(~abs(abs(global2.x)), u_input.b, select(_wgslsmith_dot_vec4_u32(vec4<u32>(42529u, 4294967295u, 0u, u_input.b), reverseBits(vec4<u32>(12282u, 4294967295u, 0u, u_input.b))), ~global2.x, all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false))))), max(select(~vec3<u32>(0u, 60883u, 1u), countOneBits(vec3<u32>(global2.x, 1u, global2.x)), vec3<bool>(true, true, true)), firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 18226u), vec3<u32>(46745u, u_input.c, 0u))) << (~vec3<u32>(0u, global2.x, global2.x) % vec3<u32>(32u))));
    global2 = vec3<u32>(~u_input.c & (global2.x ^ u_input.c), _wgslsmith_sub_u32(~(~(~u_input.c)), global2.x), _wgslsmith_sub_u32(u_input.c, u_input.c));
    return Struct_1(u_input.e.x, vec3<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 67793u), ~vec3<u32>(u_input.c, 32665u, 0u)), select(u_input.b, u_input.c, true)), ~52147u, firstLeadingBit(9729u)), -245f, abs(u_input.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(939f - _wgslsmith_f_op_f32(626f + 359f)), _wgslsmith_f_op_f32(f32(-1f) * -720f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(197f * 282f), -552f, true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(503f, 693f, -436f))), vec3<f32>(-948f, 613f, -495f))))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32) -> bool {
    let var_0 = Struct_1(-(~abs(1i)) >> (min(global2.x, u_input.c) % 32u), ~arg_1.b, arg_1.e.x, 30768u | min(_wgslsmith_clamp_u32(global2.x, 39340u, ~global2.x), ~_wgslsmith_add_u32(7685u, 83986u)), vec3<f32>(arg_1.e.x, _wgslsmith_f_op_f32(954f * _wgslsmith_f_op_f32(f32(-1f) * -297f)), -200f));
    global0 = array<Struct_1, 31>();
    var var_1 = Struct_1(reverseBits(arg_1.a), ~select(vec3<u32>(_wgslsmith_div_u32(var_0.d, 6733u), ~var_0.d, 1u), vec3<u32>(~4294967295u, arg_1.d, 1u), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false)), _wgslsmith_f_op_f32(-var_0.e.x), arg_1.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.e) - _wgslsmith_div_vec3_f32(vec3<f32>(555f, arg_1.c, 123f), vec3<f32>(604f, 1417f, -233f))))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-300f, -215f, arg_1.e.x)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 341f, 1000f), arg_1.e)))))));
    global1 = array<Struct_1, 26>();
    let var_2 = 0u != ~arg_1.b.x;
    return var_2;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> u32 {
    global2 = select(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 21093u), global2.zx), 1u, u_input.c), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mod_u32(44868u, 88458u) >> (global2.x % 32u), 1u), u_input.b, ~1u), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true), !vec3<bool>(true, any(vec4<bool>(true, true, false, false)), arg_0.x > -709f), !func_4(max(u_input.a.zwy, vec3<i32>(u_input.a.x, u_input.a.x, 0i)), func_2(), func_2().b.x)));
    global0 = array<Struct_1, 31>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -805f), _wgslsmith_f_op_f32(ceil(-1907f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * _wgslsmith_f_op_f32(round(arg_0.x))), _wgslsmith_f_op_f32(floor(arg_0.x))))));
    return 1u;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: u32) -> bool {
    global2 = arg_1.b;
    return false | !func_4(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.e.x, 1i), _wgslsmith_clamp_vec3_i32(u_input.e.xxy, u_input.e.ywx, vec3<i32>(0i, arg_1.a, arg_1.a))), func_2(), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec3<u32>(~(~32886u), u_input.b, _wgslsmith_dot_vec2_u32(~global2.xy, _wgslsmith_mult_vec2_u32(max(global2.yx, global2.xz), _wgslsmith_add_vec2_u32(vec2<u32>(16562u, 31211u), vec2<u32>(u_input.b, 0u)))) & 4294967295u);
    let var_0 = 31639u;
    let var_1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1564f))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x & var_0, _wgslsmith_sub_u32(0u, global2.x)), vec2<u32>(~60033u, func_1(vec4<f32>(312f, 964f, -443f, -1345f), u_input.a.x))), 31u)], select(countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, var_0, 3044u), vec3<u32>(41284u, 0u, var_0))), vec3<u32>(u_input.b >> (78772u % 32u), ~34064u, 1053u), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)) & abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, var_0, var_0), vec3<u32>(20492u, 19151u, 1u)) | _wgslsmith_clamp_vec3_u32(vec3<u32>(global2.x, 0u, var_0), vec3<u32>(u_input.c, var_0, global2.x), vec3<u32>(global2.x, var_0, 24780u))), global2.x);
    let var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.e.x)))), func_2().c));
    global0 = array<Struct_1, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.e.x);
}

