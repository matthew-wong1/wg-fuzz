struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<bool>,
    d: vec4<f32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: f32,
    d: Struct_2,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> u32 {
    var var_0 = 1u;
    var_0 = firstLeadingBit(countOneBits(_wgslsmith_div_u32(4294967295u, ~(u_input.a.x & 1u))));
    let var_1 = ~(~7697u);
    let var_2 = ~(vec4<i32>((-48742i << (var_1 % 32u)) & firstTrailingBit(0i), -1i, ~_wgslsmith_div_i32(1i, -2147483647i), -16437i) & reverseBits(vec4<i32>(-1i) * -vec4<i32>(2147483647i, 24578i, 1830i, 0i)));
    let var_3 = -vec2<i32>(-1i, ~7117i);
    return var_1;
}

fn func_4(arg_0: f32, arg_1: u32) -> bool {
    var var_0 = firstLeadingBit(max(arg_1, abs(firstLeadingBit(arg_1))));
    let var_1 = vec2<bool>(true, true);
    var var_2 = Struct_3(38297i, _wgslsmith_clamp_u32(~arg_1, ~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, arg_1, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, arg_1), u_input.a), ~arg_1), vec4<u32>(arg_1, u_input.b.x, u_input.a.x | u_input.e, arg_1))), -1061f, Struct_2(Struct_1(vec4<i32>(1i, 1i, 1i, 1i), vec2<i32>(~(-1i), _wgslsmith_div_i32(37994i, 1i))), _wgslsmith_sub_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(-18007i, 2147483647i), vec2<i32>(-11424i, 0i)), -vec2<i32>(24965i, 41987i)), vec4<bool>(any(select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(true, var_1.x, var_1.x), var_1.x)), false, var_1.x, false), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -584f, 1242f) + vec4<f32>(arg_0, 1000f, -469f, -190f))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(925f, -1065f, 1000f, arg_0)))), ~(vec4<u32>(u_input.b.x, arg_1, arg_1, 21476u) & ~global0[_wgslsmith_index_u32(50619u, 11u)])), _wgslsmith_div_u32(~124315u, ((arg_1 >> (arg_1 % 32u)) | arg_1) | u_input.b.x));
    var_2 = Struct_3(_wgslsmith_sub_i32(~(-7735i), _wgslsmith_div_i32(var_2.d.b.x, -1267i)), 15966u, 200f, Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(var_2.d.a.a, vec4<i32>(var_2.a, var_2.a, var_2.d.a.a.x, var_2.a)), -vec4<i32>(var_2.a, var_2.a, var_2.a, 2147483647i)), countOneBits(~vec2<i32>(-1i, var_2.d.b.x))), var_2.d.b, var_2.d.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(451f, var_2.c, 1214f, 939f) - vec4<f32>(1976f, -729f, var_2.d.d.x, 1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.d.d) * var_2.d.d)), reverseBits(countOneBits(vec4<u32>(4294967295u, 41531u, u_input.e, arg_1)) & (vec4<u32>(u_input.d, var_2.e, 0u, arg_1) << (global0[_wgslsmith_index_u32(var_2.e, 11u)] % vec4<u32>(32u))))), ~4294967295u & u_input.c);
    var var_3 = Struct_3(abs(var_2.d.a.b.x) | -(~(~var_2.a)), u_input.e, _wgslsmith_f_op_f32(f32(-1f) * -2247f), var_2.d, 1u);
    return false;
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    let var_0 = Struct_1(max(-_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 55899i, 10343i, 41527i), vec4<i32>(6007i, 39081i, 45448i, -42061i)), min(vec4<i32>(-2147483647i, 1i, 1i, 21418i), vec4<i32>(1i, 1i, 1i, 1i))) << (u_input.b % vec4<u32>(32u)), vec2<i32>(-_wgslsmith_mod_i32(-18927i, _wgslsmith_mult_i32(1i, -63360i)), 0i));
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f) * _wgslsmith_f_op_f32(1106f - -2833f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1903f))))), 1f, !(!func_4(-578f, func_3()))));
    var var_2 = var_0;
    var_2 = var_0;
    let var_3 = any(vec4<bool>(false, true, true, any(vec4<bool>(true, true, all(vec3<bool>(false, true, true)), true))));
    return var_2.b.x;
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_2) -> vec4<i32> {
    global0 = array<vec4<u32>, 11>();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3.d.x))), 922f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_3.d.x)), -1700f);
    var var_1 = Struct_1(abs(vec4<i32>(-arg_2.a.x, -4702i, ~abs(arg_3.b.x), arg_3.a.a.x | arg_3.b.x)), vec2<i32>(-(~arg_3.a.a.x) << (~u_input.b.x % 32u), func_2(u_input.a)));
    var var_2 = _wgslsmith_div_i32(var_1.b.x, -60609i);
    var var_3 = Struct_3(_wgslsmith_clamp_i32(~1i, abs(firstLeadingBit(-2147483647i & var_1.a.x)), reverseBits(-reverseBits(2147483647i))), 35718u, -129f, Struct_2(arg_2, -(~arg_3.b), vec4<bool>(true, true, (-2147483647i ^ arg_2.b.x) <= ~arg_2.b.x, arg_3.c.x), _wgslsmith_f_op_vec4_f32(sign(var_0)), _wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_3.e.x, 0u), 11u)], vec4<u32>(abs(0u), 44203u, ~u_input.a.x, 1u))), arg_3.e.x);
    return var_3.d.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-135f)) + _wgslsmith_f_op_f32(701f * -1177f)))));
    var var_1 = u_input.a;
    var var_2 = firstLeadingBit(u_input.a.x);
    let var_3 = Struct_1(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(53986i, 5370i, 15330i, -8505i), ~func_1(true, vec2<f32>(-643f, -1077f), Struct_1(vec4<i32>(31522i, -2147483647i, 25846i, -25564i), vec2<i32>(2147483647i, 2147483647i)), Struct_2(Struct_1(vec4<i32>(2147483647i, 0i, -1i, -2147483647i), vec2<i32>(37889i, -1i)), vec2<i32>(-16446i, -10493i), vec4<bool>(false, false, false, false), vec4<f32>(769f, -1388f, 585f, 701f), global0[_wgslsmith_index_u32(16131u, 11u)])), vec4<i32>(1i, firstLeadingBit(29431i), min(24467i, 3975i), -30037i)), ~vec2<i32>(1i, -1i));
    let var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(firstLeadingBit(vec3<u32>(1u, u_input.c, u_input.a.x))) << (abs(vec3<u32>(~1u, 59987u, _wgslsmith_mult_u32(u_input.e, 4294967295u))) % vec3<u32>(32u)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(var_4.a, var_4.a), var_4.a), vec4<i32>(var_3.b.x, ~82173i, -2147483647i, var_3.a.x)), -278f, _wgslsmith_dot_vec3_u32(~(u_input.b.wzx << ((vec3<u32>(74280u, 1u, 46308u) | u_input.b.ywx) % vec3<u32>(32u))), ~u_input.b.wwx), 85053u);
}

