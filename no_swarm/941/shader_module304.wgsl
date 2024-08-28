struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec2<f32>) -> i32 {
    global0 = array<f32, 31>();
    var var_0 = u_input.c.x;
    var var_1 = 1u;
    let var_2 = select(-42331i < _wgslsmith_add_i32(-(u_input.c.x ^ u_input.e), min(~u_input.a.x, abs(25797i))), any(!(!vec4<bool>(false, true, arg_1.x, arg_1.x))), true);
    var var_3 = any(select(select(select(arg_1, !arg_1, 23673i > u_input.e), arg_1, any(arg_1.yz)), arg_1, true));
    return 9626i;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    let var_0 = Struct_1(firstLeadingBit(0i), reverseBits(~u_input.e), _wgslsmith_add_u32(abs(select(u_input.d.x, 0u, arg_2.x)), max(7318u | arg_1.c, 37969u ^ u_input.b.x)) & ~12148u);
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    var var_1 = Struct_1(_wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(u_input.a.xwy, ~u_input.a.xyy), u_input.a.zyx), ~countOneBits(_wgslsmith_add_i32(~var_0.b, _wgslsmith_div_i32(arg_1.b, u_input.e))), arg_1.c);
    var_1 = Struct_1(_wgslsmith_clamp_i32(19720i, var_1.a, 20988i), _wgslsmith_dot_vec2_i32(~(~abs(vec2<i32>(u_input.e, -28220i))), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.a & 1i, ~(-1i)), select(vec2<i32>(18801i, arg_1.b), ~u_input.c.wx, !arg_2.xx))), 4294967295u ^ _wgslsmith_clamp_u32(~reverseBits(var_0.c), arg_0.x, (u_input.b.x >> (112594u % 32u)) | arg_0.x));
    return _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.c, var_1.c), vec3<u32>(arg_0.x, var_1.c, 4212u)), var_0.c, abs(52496u), firstLeadingBit(arg_1.c << (arg_1.c % 32u))), vec4<u32>(12926u, 1403u, 1u, u_input.b.x));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>) -> vec3<bool> {
    var var_0 = select(~_wgslsmith_mult_i32(_wgslsmith_mult_i32(_wgslsmith_add_i32(-3728i, arg_0.x), select(arg_0.x, -1982i, arg_1.x)), u_input.a.x), 57440i, false);
    var var_1 = Struct_1(-62361i, arg_0.x, func_4(_wgslsmith_sub_vec3_u32(u_input.b & ~u_input.d, min(~u_input.b, ~vec3<u32>(1u, 7371u, 4294967295u))), Struct_1(func_3(u_input.b, vec3<bool>(arg_1.x, false, false), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 31u)], global0[_wgslsmith_index_u32(u_input.d.x, 31u)])) & abs(30495i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a.x, -19326i), ~66770i), abs(u_input.b.x)), !vec3<bool>(true, true, 18545i > u_input.c.x)));
    let var_2 = vec4<u32>(0u, 77877u, var_1.c, 0u) ^ vec4<u32>(func_4(firstTrailingBit(u_input.d >> (u_input.b % vec3<u32>(32u))), Struct_1(_wgslsmith_add_i32(0i, u_input.e), 16836i, 18844u), !vec3<bool>(arg_1.x, arg_1.x, true)), ~(~(~0u)), 94187u, _wgslsmith_div_u32(firstTrailingBit(35416u), ~_wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(var_1.c, var_1.c))));
    var var_3 = _wgslsmith_sub_vec4_u32(~(~abs(~vec4<u32>(1u, var_1.c, 4294967295u, var_1.c))), max(abs(vec4<u32>(4294967295u, 41107u, var_1.c, 24971u) ^ var_2), var_2 >> (var_2 % vec4<u32>(32u))));
    var var_4 = Struct_1(-9346i, abs(2147483647i), countOneBits(~(~82414u)));
    return vec3<bool>(arg_1.x || false, false, arg_1.x);
}

fn func_1(arg_0: vec3<i32>) -> i32 {
    var var_0 = select(select(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, false, true), false), any(vec3<bool>(true, true, true))), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), func_2(arg_0.yy, vec2<bool>(true, true)));
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    global0 = array<f32, 31>();
    return _wgslsmith_dot_vec4_i32(u_input.c, u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 31>();
    var var_0 = Struct_1(-2147483647i, _wgslsmith_sub_i32(u_input.c.x, u_input.a.x), ~(~u_input.d.x));
    var var_1 = Struct_1(27199i, -8569i, ~var_0.c);
    let var_2 = Struct_1(var_1.a, func_1(vec3<i32>(-(~var_0.a), abs(var_0.b), var_1.a)), u_input.d.x);
    let var_3 = Struct_1(var_1.b, u_input.a.x, _wgslsmith_mod_u32(var_1.c & abs(var_0.c), reverseBits(1u)));
    let var_4 = 1535f;
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, ~(~vec4<u32>(var_0.c, 1u, 0u, 1u) | ~vec4<u32>(4294967295u, var_3.c, 1u, 15081u)));
}

