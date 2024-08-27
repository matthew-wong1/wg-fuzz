struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_1,
    c: f32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 30> = array<f32, 30>(471f, -1408f, 302f, -435f, 1705f, -1000f, -493f, 1257f, -128f, -1127f, 149f, -423f, 697f, 795f, 1015f, 1247f, -376f, -568f, 130f, -196f, -455f, 760f, -192f, 223f, -1350f, 1000f, 1044f, -2541f, -673f, 875f);

var<private> global1: Struct_2 = Struct_2(Struct_1(1138f), Struct_1(1080f), vec2<u32>(0u, 4294967295u), 43740u);

var<private> global2: array<Struct_4, 6>;

var<private> global3: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_clamp_vec2_i32(~(~abs(vec2<i32>(u_input.d, u_input.d)) | select(vec2<i32>(0i, 14245i), vec2<i32>(u_input.d, u_input.c) << (global3.c % vec2<u32>(32u)), vec2<bool>(true, false))), _wgslsmith_mult_vec2_i32(countOneBits(-vec2<i32>(29455i, -43097i)), -countOneBits(vec2<i32>(u_input.d, u_input.d))) & _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, u_input.c), vec2<i32>(u_input.d, 1i)), -vec2<i32>(u_input.d, u_input.d)), vec2<i32>(u_input.d, _wgslsmith_sub_i32(-13170i, u_input.c)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.c), vec2<i32>(1i, u_input.c) ^ vec2<i32>(-21035i, u_input.c))), vec2<i32>(1i, -2147483647i));
    var var_1 = arg_1;
    var var_2 = 1i;
    let var_3 = Struct_1(global3.a.a);
    let var_4 = select(~(~select(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global1.c.x), vec2<u32>(global3.c.x, global3.d)), global1.c, false)), global1.c, vec2<bool>(true != all(vec2<bool>(false, true)), select(!all(vec4<bool>(false, false, false, false)), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)), true)));
    return 27878u;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.c, u_input.c), _wgslsmith_div_vec3_i32(vec3<i32>(42130i, u_input.c & u_input.c, ~u_input.d), vec3<i32>(firstTrailingBit(-1i), u_input.c >> (arg_0 % 32u), u_input.d)));
    global0 = array<f32, 30>();
    global2 = array<Struct_4, 6>();
    var var_1 = vec4<u32>(1u, ~0u, _wgslsmith_add_u32(_wgslsmith_mod_u32(min(arg_0 | 19904u, global3.d), 4294967295u), func_3(global3.a, global1.b)), arg_0);
    var var_2 = -1591f;
    return Struct_1(global1.a.a);
}

fn func_1() -> StorageBuffer {
    var var_0 = global1.c;
    global0 = array<f32, 30>();
    var var_1 = Struct_2(func_2(4294967295u), func_2(~72526u), vec2<u32>(global3.c.x, _wgslsmith_add_u32(var_0.x, select(global3.d, var_0.x, true))) ^ global3.c, min(~var_0.x, ~_wgslsmith_mult_u32(~u_input.a, 4294967295u)));
    let var_2 = -1298f;
    global2 = array<Struct_4, 6>();
    return StorageBuffer(_wgslsmith_div_u32(min(~var_1.d | var_0.x, ~1u), var_1.c.x), _wgslsmith_div_f32(-513f, 459f), select(max(~min(vec2<u32>(var_0.x, 58714u), vec2<u32>(0u, global1.c.x)), var_1.c), _wgslsmith_div_vec2_u32(reverseBits(global3.c), global1.c), true));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 6>();
    let x = u_input.a;
    s_output = func_1();
}

