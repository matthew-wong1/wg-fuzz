struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<i32>, 22> = array<vec3<i32>, 22>(vec3<i32>(24792i, 0i, 0i), vec3<i32>(43671i, -22752i, 61289i), vec3<i32>(-1i, 0i, 42964i), vec3<i32>(2147483647i, -3821i, i32(-2147483648)), vec3<i32>(76364i, 0i, 419i), vec3<i32>(-11921i, -1i, i32(-2147483648)), vec3<i32>(19961i, -1i, -21691i), vec3<i32>(1i, 0i, 1i), vec3<i32>(-30131i, -141i, -21437i), vec3<i32>(i32(-2147483648), 1i, -30985i), vec3<i32>(1i, i32(-2147483648), -27773i), vec3<i32>(13704i, 2147483647i, 38382i), vec3<i32>(34370i, -33273i, 0i), vec3<i32>(i32(-2147483648), 1i, 123861i), vec3<i32>(-12882i, -13779i, -1i), vec3<i32>(-21646i, i32(-2147483648), 663i), vec3<i32>(0i, -41403i, -35862i), vec3<i32>(9938i, 50120i, -488i), vec3<i32>(-32244i, -36360i, 1i), vec3<i32>(-13477i, -8138i, -6716i), vec3<i32>(2147483647i, 2147483647i, 2147483647i), vec3<i32>(6453i, 0i, 1i));

var<private> global2: array<Struct_2, 24>;

var<private> global3: i32 = -37718i;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<f32>, arg_3: vec2<f32>) -> i32 {
    global3 = ~_wgslsmith_clamp_i32(1i, _wgslsmith_div_i32(_wgslsmith_sub_i32(abs(global0.b.x), 48234i << (u_input.c % 32u)), _wgslsmith_div_i32(global0.e.a, 1i << (1u % 32u))), ~firstLeadingBit(u_input.a));
    global2 = array<Struct_2, 24>();
    global3 = -3041i;
    var var_0 = Struct_2(Struct_1(global0.e.a), vec3<i32>(reverseBits(global0.b.x), -2147483647i, 0i), Struct_1(_wgslsmith_add_i32(-global0.b.x, u_input.a)), !select(!global0.d, select(!global0.d, vec4<bool>(global0.d.x, false, true, true), true), global0.d), global0.c);
    var var_1 = var_0.c;
    return _wgslsmith_add_i32(_wgslsmith_add_i32(firstTrailingBit(-(var_0.c.a ^ 35079i)), -1259i), -u_input.a);
}

fn func_2() -> bool {
    let var_0 = Struct_3(Struct_2(global0.a, max(global1[_wgslsmith_index_u32(1u, 22u)], -vec3<i32>(u_input.b.x, u_input.a, u_input.a)) | -vec3<i32>(u_input.b.x, global0.e.a, 2147483647i), global0.c, global0.d, Struct_1(2147483647i & _wgslsmith_add_i32(u_input.b.x, global0.b.x))), Struct_1(_wgslsmith_mult_i32(-func_3(global0.d.wx, 320f, vec4<f32>(-1365f, 258f, 1645f, 955f), vec2<f32>(619f, -1000f)), u_input.a)), ~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(54522u, 67142u, 25401u), vec3<u32>(u_input.c, u_input.d.x, 69630u)) | (vec3<u32>(73313u, 4294967295u, u_input.c) ^ vec3<u32>(0u, u_input.d.x, u_input.d.x)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.c, 41403u), ~vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x))), select(global0.d.zzy, vec3<bool>(true, !global0.d.x && true, true), select(select(global0.d.yxy, vec3<bool>(true, global0.d.x, true), true), select(vec3<bool>(global0.d.x, false, true), select(global0.d.wwz, vec3<bool>(false, global0.d.x, true), global0.d.x), global0.d.x == true), ~u_input.c < min(0u, u_input.d.x))), true | !all(select(vec4<bool>(global0.d.x, global0.d.x, false, true), global0.d, false)));
    let var_1 = false;
    let var_2 = i32(-1i) * -1i;
    let var_3 = _wgslsmith_mult_vec4_i32(~reverseBits(~vec4<i32>(-1i, global0.c.a, -30959i, var_0.b.a)), vec4<i32>(~countOneBits(-34332i), ~(i32(-1i) * -2147483647i), 0i, var_2)) >> (abs(~vec4<u32>(u_input.c, u_input.d.x, 4294967295u, u_input.d.x >> (var_0.c.x % 32u))) % vec4<u32>(32u));
    let var_4 = _wgslsmith_div_vec4_i32(var_3, var_3);
    return any(select(vec3<bool>(!var_0.a.d.x, true, true), select(vec3<bool>(false, global0.d.x, global0.d.x), !global0.d.xwx, var_1), true)) && !var_1;
}

fn func_1() -> vec4<u32> {
    global2 = array<Struct_2, 24>();
    global2 = array<Struct_2, 24>();
    global0 = global2[_wgslsmith_index_u32(4294967295u, 24u)];
    var var_0 = select(!vec4<bool>(global0.d.x, true, u_input.d.x < min(u_input.c, u_input.d.x), true), !global0.d, global0.d);
    var_0 = select(select(vec4<bool>(global0.d.x, true, global0.d.x, !all(global0.d.wy)), vec4<bool>(!var_0.x, 0u <= (u_input.c << (u_input.c % 32u)), global0.d.x, true), !global0.d), global0.d, !select(global0.d, !(!global0.d), select(global0.d, vec4<bool>(var_0.x, false, true, true), func_2())));
    return vec4<u32>(u_input.d.x, u_input.c, u_input.c, 8589u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 22>();
    var var_0 = global2[_wgslsmith_index_u32(0u, 24u)];
    let var_1 = ~_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, 5772u, _wgslsmith_mult_u32(u_input.c, 1u), ~62184u), vec4<u32>(24380u, 22452u, 1u, u_input.c) | vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 8218u), _wgslsmith_mod_vec4_u32(select(vec4<u32>(u_input.d.x, 98658u, u_input.d.x, 4294967295u), vec4<u32>(u_input.c, 54175u, u_input.d.x, 52045u), vec4<bool>(true, false, var_0.d.x, var_0.d.x)), vec4<u32>(u_input.c, 21965u, u_input.c, 13488u))), func_1());
    var var_2 = ~u_input.d.x;
    global2 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -505f), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~(vec4<i32>(u_input.a, global0.c.a, global0.c.a, u_input.b.x) ^ vec4<i32>(2147483647i, u_input.b.x, var_0.a.a, 21362i)), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 21330i, -1393i, global0.c.a)), -56850i));
}

