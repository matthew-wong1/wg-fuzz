struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: bool,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(12829u, vec2<f32>(-1078f, -1000f), Struct_1(4294967295u), Struct_1(80344u)), Struct_2(1u, vec2<f32>(832f, -347f), Struct_1(0u), Struct_1(0u)), Struct_2(0u, vec2<f32>(-563f, -562f), Struct_1(1u), Struct_1(4294967295u)), Struct_2(122477u, vec2<f32>(882f, 467f), Struct_1(0u), Struct_1(1u)), Struct_2(4294967295u, vec2<f32>(111f, -424f), Struct_1(93544u), Struct_1(426u)), Struct_2(4294967295u, vec2<f32>(414f, -1000f), Struct_1(23987u), Struct_1(43096u)), Struct_2(4294967295u, vec2<f32>(-1000f, -868f), Struct_1(74259u), Struct_1(56861u)), Struct_2(1u, vec2<f32>(-1449f, 500f), Struct_1(22148u), Struct_1(0u)), Struct_2(4294967295u, vec2<f32>(1490f, -2556f), Struct_1(52434u), Struct_1(16287u)), Struct_2(1u, vec2<f32>(792f, -1402f), Struct_1(19657u), Struct_1(1u)), Struct_2(1u, vec2<f32>(-705f, -882f), Struct_1(1u), Struct_1(9986u)), Struct_2(58187u, vec2<f32>(-148f, -1541f), Struct_1(0u), Struct_1(13863u)), Struct_2(30094u, vec2<f32>(666f, -944f), Struct_1(19998u), Struct_1(4294967295u)), Struct_2(7810u, vec2<f32>(316f, 667f), Struct_1(4294967295u), Struct_1(4294967295u)), Struct_2(44223u, vec2<f32>(-215f, 432f), Struct_1(4294967295u), Struct_1(1u)), Struct_2(46607u, vec2<f32>(1174f, 132f), Struct_1(42251u), Struct_1(53974u)), Struct_2(0u, vec2<f32>(1150f, 327f), Struct_1(0u), Struct_1(0u)), Struct_2(1u, vec2<f32>(-1570f, 245f), Struct_1(0u), Struct_1(1u)), Struct_2(0u, vec2<f32>(-750f, 1000f), Struct_1(0u), Struct_1(4033u)), Struct_2(8645u, vec2<f32>(1947f, -133f), Struct_1(0u), Struct_1(3545u)), Struct_2(4600u, vec2<f32>(-1950f, -1077f), Struct_1(0u), Struct_1(26940u)), Struct_2(53220u, vec2<f32>(322f, -535f), Struct_1(101965u), Struct_1(4294967295u)), Struct_2(0u, vec2<f32>(429f, 341f), Struct_1(4294967295u), Struct_1(43178u)), Struct_2(14853u, vec2<f32>(902f, 526f), Struct_1(58715u), Struct_1(0u)), Struct_2(9997u, vec2<f32>(-350f, 1000f), Struct_1(32250u), Struct_1(4294967295u)), Struct_2(63150u, vec2<f32>(-204f, 452f), Struct_1(0u), Struct_1(36683u)));

var<private> global1: vec4<u32>;

var<private> global2: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_2) -> StorageBuffer {
    var var_0 = Struct_1(firstLeadingBit(_wgslsmith_sub_u32(_wgslsmith_mult_u32(global1.x, arg_2.c.a) & ~16178u, ~(~arg_0))));
    global2 = ~1u;
    global0 = array<Struct_2, 26>();
    let var_1 = 899f;
    var_0 = Struct_1(0u);
    return StorageBuffer(u_input.a, var_1);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> StorageBuffer {
    let var_0 = !select(vec3<bool>(1i <= arg_1, true || arg_2, select(global1.x >= 1u, any(vec4<bool>(true, arg_2, true, arg_2)), false)), vec3<bool>(false, arg_2, (0i < arg_1) | arg_2), arg_2);
    global2 = arg_0.a;
    global2 = u_input.b;
    let var_1 = min(-vec4<i32>(countOneBits(1i), 33256i, _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1, 24700i), vec2<i32>(arg_1, arg_1) >> (vec2<u32>(u_input.a, 44039u) % vec2<u32>(32u))), i32(-1i) * -1i), reverseBits(vec4<i32>(-19853i, arg_1, -2147483647i, _wgslsmith_div_i32(-2147483647i, 19397i))));
    let var_2 = firstTrailingBit(43281u);
    return func_2(abs(max(global1.x << (9827u % 32u), max(u_input.b, arg_0.a) & 0u)), true, global0[_wgslsmith_index_u32(~(~0u), 26u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -_wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, i32(-1i) * -31819i), -_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(10962i, 19321i)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, -33433i))));
    var var_1 = ~(0i);
    let var_2 = -4433f;
    var var_3 = (firstTrailingBit(vec2<i32>(-1i) * -vec2<i32>(-1i, 8305i)) | _wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -19176i, -2147483647i), ~vec2<i32>(1i, 0i))) | _wgslsmith_add_vec2_i32(reverseBits(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(-35512i, -2147483647i)))), -_wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(1i, 1i)));
    let x = u_input.a;
    s_output = func_1(Struct_1(~_wgslsmith_clamp_u32(22000u, 0u, u_input.b) >> (1u % 32u)), reverseBits(~_wgslsmith_mult_i32(0i, -1i)), false);
}

