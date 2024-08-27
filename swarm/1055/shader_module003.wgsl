struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 5>;

var<private> global1: vec2<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<u32> {
    global0 = array<vec4<f32>, 5>();
    global1 = vec2<f32>(global1.x, 249f);
    global1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2453f, global1.x), vec2<f32>(global1.x, 1000f)))))));
    var var_0 = Struct_1(true, _wgslsmith_sub_vec2_u32(~(~(~vec2<u32>(37606u, 8787u))), vec2<u32>(1u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), max(vec3<u32>(abs(4294967295u), abs(4294967295u), 1u), vec3<u32>(~41256u, 4294967295u, 38844u)), vec3<u32>(1u, _wgslsmith_sub_u32(~0u, firstTrailingBit(0u)), ~1u)), countOneBits(vec4<i32>(u_input.a, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a, 0i), u_input.b), -2147483647i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.a, u_input.a, 26210i), -45872i))));
    var var_1 = ~((vec3<u32>(1u, 1u, _wgslsmith_dot_vec3_u32(var_0.c, vec3<u32>(20084u, var_0.b.x, var_0.b.x))) | var_0.c) >> (var_0.c % vec3<u32>(32u)));
    return vec3<u32>(var_1.x, _wgslsmith_dot_vec3_u32(~abs(vec3<u32>(var_0.b.x, 1u, var_1.x)), var_0.c), ~var_1.x & (select(22141u, 75721u | var_1.x, var_0.a) | ~1u));
}

fn func_2(arg_0: i32) -> bool {
    var var_0 = Struct_1(false, ~(~vec2<u32>(reverseBits(4439u), firstLeadingBit(40927u))), (func_3() ^ vec3<u32>(1u, 1u, 1u)) ^ reverseBits(min(~vec3<u32>(4294967295u, 4294967295u, 44851u), vec3<u32>(68429u, 20344u, 63u))), vec4<i32>(~select(_wgslsmith_mod_i32(u_input.a, -5289i), -1i, false), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-9870i, arg_0, arg_0, u_input.b), vec4<i32>(u_input.b, arg_0, arg_0, 2147483647i)), abs(-_wgslsmith_clamp_i32(arg_0, -2147483647i, u_input.b)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(select(1i, -2147483647i, true), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 28349i, arg_0, arg_0), vec4<i32>(arg_0, 2147483647i, 2147483647i, -1i)), _wgslsmith_mult_i32(u_input.b, u_input.a)), _wgslsmith_mult_i32(~36252i, ~0i), max(54384i, u_input.a) & u_input.b)));
    var_0 = Struct_1(true & (var_0.a | false), ~vec2<u32>(~var_0.c.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(55350u, 44275u, 1u, var_0.b.x), ~vec4<u32>(0u, var_0.c.x, 52859u, 0u))), ~var_0.c, firstLeadingBit(-firstLeadingBit(var_0.d)));
    var var_1 = Struct_1(true, vec2<u32>(15682u, ~(~var_0.c.x)) >> (vec2<u32>(var_0.b.x, max(~var_0.c.x, var_0.c.x)) % vec2<u32>(32u)), abs(var_0.c), min(_wgslsmith_add_vec4_i32(vec4<i32>(max(61285i, u_input.a), _wgslsmith_sub_i32(var_0.d.x, u_input.b), _wgslsmith_mult_i32(arg_0, -1838i), 0i), var_0.d), ~_wgslsmith_mult_vec4_i32(~vec4<i32>(17512i, 20589i, arg_0, arg_0), -vec4<i32>(-18538i, 1i, var_0.d.x, u_input.b))));
    let var_2 = !select(vec3<bool>(false, any(vec4<bool>(var_0.a, true, var_0.a, true)), var_1.b.x >= 14304u), !(!(!vec3<bool>(var_1.a, var_0.a, var_1.a))), all(!(!vec4<bool>(var_0.a, true, true, var_0.a))));
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-903f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - global1.x))), global1.x, global1.x)));
    return true;
}

fn func_4(arg_0: bool) -> vec2<i32> {
    let var_0 = Struct_1(true && arg_0, _wgslsmith_sub_vec2_u32(select(vec2<u32>(~89349u, 1u), vec2<u32>(1u, 1u), arg_0), func_3().zx), _wgslsmith_mod_vec3_u32(vec3<u32>(25244u, 15802u, _wgslsmith_mult_u32(countOneBits(4294967295u), firstTrailingBit(4294967295u))), vec3<u32>(33006u, reverseBits(max(4294967295u, 1u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), ~vec2<u32>(4294967295u, 4294967295u)))), _wgslsmith_mod_vec4_i32(firstLeadingBit(-firstTrailingBit(vec4<i32>(u_input.b, -2147483647i, u_input.a, u_input.b))), firstTrailingBit(~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.a, -2147483647i, u_input.a), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)))));
    global0 = array<vec4<f32>, 5>();
    let var_1 = abs(var_0.c.x);
    var var_2 = any(!select(vec3<bool>(global1.x != -180f, any(vec4<bool>(true, var_0.a, arg_0, false)), true), select(!vec3<bool>(var_0.a, var_0.a, false), !vec3<bool>(true, var_0.a, true), select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(false, false, false), vec3<bool>(var_0.a, true, var_0.a))), select(any(vec3<bool>(var_0.a, true, var_0.a)), true, var_0.a)));
    global0 = array<vec4<f32>, 5>();
    return _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-19998i, 58190i, 0i, u_input.b), var_0.d), ~var_0.d.x)), var_0.d.yz) & (~_wgslsmith_div_vec2_i32(-var_0.d.zy, var_0.d.xw ^ vec2<i32>(u_input.a, 80990i)) ^ ~(vec2<i32>(var_0.d.x, -2147483647i) >> (var_0.c.xz % vec2<u32>(32u))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: i32) -> u32 {
    let var_0 = -func_4(func_2(~arg_2));
    var var_1 = ~_wgslsmith_mult_u32(~(~(~42177u)), max(4294967295u & arg_1.x, _wgslsmith_mod_u32(1134u, 4294967295u)) << (0u % 32u));
    let var_2 = arg_1;
    return ~var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-global1.x))) + -1018f);
    var var_1 = Struct_1(false, vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(53758u, 33500u, 50989u, 0u), vec4<u32>(4415u, 15627u, 30830u, 4294967295u)), vec4<u32>(1u, 1u, 1u, 1u)), ~(~vec4<u32>(4294967295u, 21633u, 78637u, 65914u))), ~4294967295u << (1u % 32u)), ~vec3<u32>(1u, 1u, 1u), reverseBits(_wgslsmith_sub_vec4_i32(firstLeadingBit(~vec4<i32>(u_input.b, u_input.b, u_input.a, 13541i)), vec4<i32>(-u_input.b, ~(-2147483647i), _wgslsmith_mod_i32(u_input.b, u_input.b), _wgslsmith_mod_i32(1i, -1i)))));
    let var_2 = _wgslsmith_div_u32(4294967295u, func_1(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.d.x, 45532i, u_input.b), var_1.d.zyx) | 34196i, var_1.d.x, -4087i, var_1.d.x), ~vec3<u32>(var_1.b.x, var_1.b.x, _wgslsmith_add_u32(var_1.b.x, 0u)), var_1.d.x));
    let var_3 = Struct_1(func_2(firstTrailingBit(i32(-1i) * -48220i)), var_1.c.yz, ~var_1.c, vec4<i32>(22159i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, -2147483647i, -83460i), var_1.d), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, 38149i, -12035i), vec4<i32>(var_1.d.x, 6404i, var_1.d.x, -2147483647i)), u_input.b ^ 23047i), var_1.d.xwx), ~select(0i, _wgslsmith_sub_i32(-19623i, -2147483647i), all(vec2<bool>(var_1.a, true))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(60549i, _wgslsmith_mod_i32(var_1.d.x, -2147483647i)), -2147483647i)));
    global0 = array<vec4<f32>, 5>();
    let var_4 = vec4<u32>(var_3.c.x, func_3().x, ~var_3.c.x, ~(~0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(countOneBits(95742u), 5u)]), global0[_wgslsmith_index_u32(~4294967295u, 5u)])), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1293f, _wgslsmith_f_op_f32(round(-2126f)), _wgslsmith_f_op_f32(670f * -439f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, -365f, global1.x), vec3<f32>(global1.x, 991f, -841f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -1045f, 836f) + vec3<f32>(498f, -2892f, global1.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1021f, -291f))))), _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-639f)), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(ceil(-1945f)))), countOneBits(vec4<u32>(var_2 >> (var_2 % 32u), 11545u | firstTrailingBit(var_4.x), 0u, var_4.x)));
}

