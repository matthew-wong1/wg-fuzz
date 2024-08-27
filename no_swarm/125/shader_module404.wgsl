struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 10>;

var<private> global2: array<bool, 17> = array<bool, 17>(false, true, false, false, true, true, true, true, false, true, false, false, true, true, false, true, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_mod_vec2_i32(~abs(vec2<i32>(_wgslsmith_mod_i32(global0.c, -2147483647i), u_input.c)), vec2<i32>(2147483647i, ~(-min(global0.c, global0.c))));
    var var_1 = Struct_1(_wgslsmith_sub_vec4_u32(select(max(min(vec4<u32>(arg_1, 4294967295u, 43923u, arg_1), vec4<u32>(1u, arg_1, 1u, arg_1)), ~vec4<u32>(u_input.a.x, u_input.a.x, 0u, arg_1)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, arg_1, u_input.a.x), ~vec4<u32>(9484u, arg_1, 37454u, 1u)), false), ~(~vec4<u32>(arg_1, arg_1, u_input.a.x, 39739u))), 4294967295u, reverseBits(_wgslsmith_sub_vec2_i32(select(vec2<i32>(-2147483647i, 0i), vec2<i32>(global0.c, var_0.x), vec2<bool>(false, arg_0)), vec2<i32>(global0.c, u_input.c)) & vec2<i32>(~global0.c, u_input.c << (71417u % 32u))));
    var var_2 = Struct_1(vec4<u32>(max(min(var_1.a.x, _wgslsmith_sub_u32(u_input.a.x, arg_1)), reverseBits(u_input.a.x) << ((4294967295u << (var_1.b % 32u)) % 32u)), abs(~arg_1 & _wgslsmith_mult_u32(arg_1, 61503u)), 7533u, reverseBits(~(~u_input.a.x))), ~(~(~u_input.a.x)) >> ((~(~65481u) & _wgslsmith_mult_u32(arg_1 & var_1.a.x, 20678u)) % 32u), var_1.c);
    return 988f;
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-711f - _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(false, u_input.a.x, vec4<bool>(true, arg_0.x, false, false))), _wgslsmith_f_op_f32(-105f * 955f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -427f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-733f, -815f)) - _wgslsmith_f_op_f32(select(1371f, -116f, global0.b))), true)))));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> Struct_2 {
    let var_0 = 2147483647i;
    var var_1 = Struct_2(!select(global0.a, global0.a, global0.a), !global1[_wgslsmith_index_u32(~arg_2.b, 10u)], 2147483647i);
    let var_2 = Struct_1(countOneBits(arg_2.a ^ ~(~vec4<u32>(0u, 96670u, 3675u, arg_2.a.x))), ~(firstTrailingBit(1u ^ u_input.a.x) << (~(~arg_2.a.x) % 32u)), vec2<i32>(select(firstTrailingBit(8567i), _wgslsmith_clamp_i32(arg_2.c.x ^ var_1.c, 1i, -var_1.c), !all(vec2<bool>(global0.b, global2[_wgslsmith_index_u32(arg_2.b, 17u)]))), var_0));
    global1 = array<bool, 10>();
    let var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(~(global0.c >> (var_2.a.x % 32u)), _wgslsmith_mod_i32(abs(var_2.c.x), _wgslsmith_mod_i32(var_1.c, -27115i)), arg_2.c.x, 1i), countOneBits(~vec4<i32>(0i, -7144i, u_input.b, -17268i))), _wgslsmith_mod_vec4_i32(~(~(~vec4<i32>(0i, var_2.c.x, arg_2.c.x, -1i))), ~vec4<i32>(25839i, abs(2147483647i), arg_2.c.x >> (arg_3 % 32u), 1i)));
    return Struct_2(!global0.a, any(vec3<bool>(true, true, false)) && ((-149f != _wgslsmith_f_op_f32(arg_0.x * arg_1)) & all(select(vec4<bool>(global2[_wgslsmith_index_u32(var_2.a.x, 17u)], global2[_wgslsmith_index_u32(u_input.a.x, 17u)], var_1.b, true), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], global0.a.x, global2[_wgslsmith_index_u32(var_2.b, 17u)]), false))), reverseBits(68613i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(4294967295u, u_input.a.x);
    global0 = func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-909f * -958f)), 1000f, _wgslsmith_f_op_f32(-1190f + _wgslsmith_f_op_f32(f32(-1f) * -363f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -586f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<bool>(true, false))))))), Struct_1(~_wgslsmith_mod_vec4_u32(~vec4<u32>(55367u, 24214u, 1u, 0u), vec4<u32>(var_0.x, 1u, 1u, 16144u)), 1u, reverseBits(_wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(-61593i, 15529i)), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.e), vec2<i32>(u_input.b, u_input.d))))), var_0.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-248f, 292f, -2911f, 217f) - vec4<f32>(660f, -1311f, -335f, -1138f)), vec4<f32>(-773f, -366f, 117f, -101f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1746f, 812f, -1559f, -2001f) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-801f, 464f, -548f, -2705f)))))));
    let var_2 = Struct_1(vec4<u32>(~62203u, ~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(44338u, 1u, var_0.x, 30476u), vec4<u32>(var_0.x, var_0.x, u_input.a.x, u_input.a.x))), ~(_wgslsmith_mult_u32(37217u, var_0.x) ^ var_0.x), countOneBits(~u_input.a.x)), 70793u, ~countOneBits(vec2<i32>(-10335i, global0.c) << (min(vec2<u32>(33913u, u_input.a.x), u_input.a) % vec2<u32>(32u))));
    global2 = array<bool, 17>();
    var var_3 = Struct_1(vec4<u32>(~_wgslsmith_div_u32(var_0.x, min(var_2.a.x, u_input.a.x)), ~(~(~var_0.x)), u_input.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(24764u, 39571u, 1u), vec3<u32>(~u_input.a.x, 10374u, ~var_2.b))), min(_wgslsmith_dot_vec4_u32(~(~var_2.a), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 7380u, var_2.b, var_2.b), vec4<u32>(var_2.b, var_0.x, 4294967295u, 54104u))), ~4294967295u), vec2<i32>(_wgslsmith_mod_i32(~global0.c ^ u_input.e, _wgslsmith_mod_i32(u_input.c, countOneBits(5568i))), firstLeadingBit(~abs(global0.c))));
    let var_4 = true;
    let var_5 = _wgslsmith_f_op_f32(max(var_1.x, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(var_1.wyy - _wgslsmith_f_op_vec3_f32(vec3<f32>(928f, _wgslsmith_f_op_f32(-1000f + var_5), _wgslsmith_f_op_f32(floor(-1640f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-1088f, -337f, -910f), vec3<f32>(1212f, 441f, var_1.x)))))));
}

