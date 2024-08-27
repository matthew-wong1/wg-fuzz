struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: Struct_4,
    d: vec2<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(vec3<u32>(20056u, 1u, 1u)), Struct_3(vec3<u32>(59137u, 1u, 19146u)), Struct_3(vec3<u32>(0u, 24263u, 16049u)), Struct_3(vec3<u32>(1u, 30112u, 27225u)), Struct_3(vec3<u32>(31275u, 48146u, 81216u)), Struct_3(vec3<u32>(73995u, 0u, 13822u)), Struct_3(vec3<u32>(1u, 4294967295u, 4294967295u)), Struct_3(vec3<u32>(0u, 15628u, 1u)), Struct_3(vec3<u32>(69459u, 1u, 1u)), Struct_3(vec3<u32>(59268u, 30531u, 1u)), Struct_3(vec3<u32>(5294u, 22502u, 24068u)), Struct_3(vec3<u32>(41357u, 47797u, 24423u)), Struct_3(vec3<u32>(0u, 0u, 0u)), Struct_3(vec3<u32>(21134u, 29374u, 61426u)), Struct_3(vec3<u32>(61765u, 0u, 0u)), Struct_3(vec3<u32>(67018u, 4294967295u, 4294967295u)), Struct_3(vec3<u32>(33586u, 7422u, 62627u)), Struct_3(vec3<u32>(1u, 63089u, 36323u)), Struct_3(vec3<u32>(16356u, 19636u, 8202u)), Struct_3(vec3<u32>(8099u, 1u, 1u)));

var<private> global1: Struct_2;

var<private> global2: array<i32, 3>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = global1.b;
    let var_1 = ~((~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 0u, 4294967295u), global1.c.zwx, global1.c.zwz) | ~global1.c.wxy) ^ vec3<u32>(0u ^ _wgslsmith_mod_u32(4294967295u, arg_1.c), firstTrailingBit(35223u), reverseBits(72078u)));
    var var_2 = vec3<u32>(~(~(~16478u)), max(var_1.x, ~(~var_1.x) & ~1u), arg_1.c);
    var var_3 = true;
    let var_4 = global1.a;
    return Struct_1(u_input.c.x, -abs(u_input.c.x), ~countOneBits(var_2.x) | 48771u);
}

fn func_3() -> vec3<u32> {
    return ~(~global1.c.wxw);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_5, arg_2: f32) -> vec3<u32> {
    var var_0 = arg_1.e.a.c >= firstLeadingBit(arg_1.a.x);
    var var_1 = _wgslsmith_mult_vec3_u32((func_3() | _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(global1.c.xwz, global1.c.xyx), max(arg_1.e.c.zzw, vec3<u32>(global1.c.x, 44815u, global1.c.x)))) << (global1.c.yyw % vec3<u32>(32u)), vec3<u32>(~40724u, _wgslsmith_dot_vec3_u32(arg_1.e.c.xxz, arg_1.e.c.xxw), 1u));
    global0 = array<Struct_3, 20>();
    global1 = arg_1.e;
    var var_2 = arg_1.b.x;
    return ~reverseBits(~(~vec3<u32>(arg_1.e.c.x, 4294967295u, 116u) << (max(arg_1.e.c.wxx, vec3<u32>(13333u, global1.c.x, var_1.x)) % vec3<u32>(32u))));
}

fn func_4(arg_0: vec3<u32>) -> i32 {
    let var_0 = global1.c.x;
    let var_1 = arg_0.x;
    global2 = array<i32, 3>();
    let var_2 = Struct_1(-2147483647i, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(func_2(vec3<f32>(1283f, -676f, -846f), Struct_5(vec2<u32>(4294967295u, 73279u), u_input.c, Struct_4(global1.b.x), global1.b.wz, Struct_2(Struct_1(12941i, global2[_wgslsmith_index_u32(0u, 3u)], 1u), vec4<i32>(91784i, global1.a.a, global1.b.x, global2[_wgslsmith_index_u32(1u, 3u)]), vec4<u32>(var_1, var_1, arg_0.x, 0u))), _wgslsmith_f_op_f32(f32(-1f) * -305f)).x, min(countOneBits(63974u), firstTrailingBit(var_1))), ~var_1), 3u)], ~_wgslsmith_div_u32(~select(u_input.a, var_1, false), 0u));
    var var_3 = -365f;
    return _wgslsmith_mod_i32(~var_2.b, _wgslsmith_div_i32(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(4294967295u, 3u)], max(global1.b.x, -global2[_wgslsmith_index_u32(42555u, 3u)])), u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 30251i;
    global1 = Struct_2(func_1(~17409u, Struct_1(firstTrailingBit(42214i), -2147483647i, ~45343u)), vec4<i32>(40351i, 2147483647i, global1.a.a, func_4(func_2(vec3<f32>(-1643f, -1000f, 987f), Struct_5(vec2<u32>(0u, 14779u), vec2<i32>(-849i, u_input.b.x), Struct_4(-501i), vec2<i32>(2147483647i, -2262i), Struct_2(Struct_1(-1i, global1.a.b, global1.a.c), global1.b, vec4<u32>(4294967295u, 0u, u_input.a, u_input.a))), -484f)) & (countOneBits(global1.b.x) ^ (i32(-1i) * -2147483647i))), vec4<u32>(1u, global1.c.x, global1.a.c, u_input.a >> (u_input.a % 32u)));
    var_0 = u_input.b.x & firstLeadingBit(i32(-1i) * -abs(0i));
    global1 = Struct_2(global1.a, (global1.b | (abs(global1.b) ^ _wgslsmith_add_vec4_i32(vec4<i32>(global1.b.x, 2147483647i, -2147483647i, -17375i), global1.b))) ^ ~(~(~vec4<i32>(14078i, u_input.c.x, u_input.b.x, global2[_wgslsmith_index_u32(global1.a.c, 3u)]))), global1.c | _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, ~5413u, 9796u), ~firstTrailingBit(global1.c), _wgslsmith_div_vec4_u32(global1.c, global1.c)));
    let var_1 = Struct_5(global1.c.ww, vec2<i32>(-1i) * -vec2<i32>(-u_input.c.x, min(-4382i, global2[_wgslsmith_index_u32(global1.c.x, 3u)])), Struct_4(i32(-1i) * -9030i), global1.b.wy, Struct_2(Struct_1(_wgslsmith_div_i32(2147483647i, 5330i), global2[_wgslsmith_index_u32(u_input.a, 3u)] & 2147483647i, ~103140u), firstLeadingBit((vec4<i32>(-2147483647i, u_input.b.x, 2147483647i, 1i) >> (vec4<u32>(u_input.a, u_input.a, 18652u, u_input.a) % vec4<u32>(32u))) & global1.b), global1.c));
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-278f)))) * 242f) * 221f), _wgslsmith_div_f32(-588f, -2253f)));
    var var_3 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(var_1.e.c.x, 4294967295u), 93391u), var_1.a), abs(select(func_3().xy << (~vec2<u32>(1u, u_input.a) % vec2<u32>(32u)), vec2<u32>(~global1.c.x, _wgslsmith_div_u32(1u, u_input.a)), true)));
    var var_4 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(1u, var_1.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, var_2) + vec3<f32>(441f, -823f, var_2)) + vec3<f32>(var_2, 1000f, _wgslsmith_div_f32(var_2, var_2)))));
}

