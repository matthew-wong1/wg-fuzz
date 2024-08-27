struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2880i, -12061i);

var<private> global1: array<Struct_3, 1>;

var<private> global2: Struct_3;

var<private> global3: vec3<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> Struct_1 {
    var var_0 = 0i;
    var_0 = _wgslsmith_add_i32(reverseBits(i32(-1i) * -27622i), -19405i ^ _wgslsmith_dot_vec4_i32(~abs(vec4<i32>(global3.x, global2.b.x, global0.x, -1i)), select(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, global2.b.x, 1i, global3.x), vec4<i32>(45469i, -30325i, 2147483647i, 2147483647i)), vec4<i32>(global0.x, -1i, global0.x, -2147483647i) << (vec4<u32>(4294967295u, 65870u, u_input.b, 12184u) % vec4<u32>(32u)), vec4<bool>(true, true, true, true))));
    var var_1 = -56022i;
    let var_2 = _wgslsmith_div_f32(500f, _wgslsmith_div_f32(-210f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(132f))) * -895f)));
    var var_3 = u_input.a.zx;
    return Struct_1(u_input.b, 31105u, -2147483647i);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>) -> vec3<u32> {
    global0 = select(countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(global3.x, 20043i) | vec2<i32>(arg_0.x, arg_0.x), ~arg_0.zy, arg_0.ww)), ~global2.b.yx, vec2<bool>(true, !(!arg_1.x))) >> (~_wgslsmith_div_vec2_u32(~u_input.a.yy, ~vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u));
    global0 = firstTrailingBit(vec2<i32>(arg_0.x, -(~(-59330i))));
    global2 = Struct_3(~_wgslsmith_mod_u32(abs(global2.a), 6414u), vec3<i32>(-29029i, -1i, global0.x));
    let var_0 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(global2.a, 90633u, 0u, global2.a), ~vec4<u32>(60155u, u_input.b, 35350u, global2.a), arg_1.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 94359u, 0u, u_input.a.x) >> (vec4<u32>(37603u, u_input.b, 1u, 0u) % vec4<u32>(32u)), vec4<u32>(global2.a, global2.a, global2.a, u_input.b) & vec4<u32>(1u, 44854u, u_input.b, u_input.b)), vec4<u32>(~33970u, _wgslsmith_dot_vec2_u32(vec2<u32>(39226u, global2.a), vec2<u32>(u_input.b, u_input.b)), 12482u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.a, 1u, 0u, global2.a), vec4<u32>(global2.a, 47479u, global2.a, 1u)))), vec4<u32>(global2.a, ~u_input.b, ~select(4294967295u, 35271u, false | arg_1.x), 1u), abs(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(4294967295u, u_input.a.x, u_input.b, global2.a)) & vec4<u32>(61024u, global2.a, 35331u, global2.a), ~vec4<u32>(3126u, u_input.b, u_input.b, u_input.b))));
    var var_1 = arg_1.x;
    return vec3<u32>(global2.a, u_input.a.x, max(_wgslsmith_add_u32(~global2.a, ~global2.a), 21743u) << (_wgslsmith_mod_u32(_wgslsmith_sub_u32(~var_0.x, _wgslsmith_div_u32(0u, u_input.b)), ~min(24033u, u_input.a.x)) % 32u));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> u32 {
    var var_0 = func_2();
    let var_1 = func_2();
    let var_2 = func_3(vec4<i32>(2147483647i ^ ~(~global2.b.x), ~var_1.c, 0i, _wgslsmith_add_i32(21386i & countOneBits(arg_1.c), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(global2.b, global2.b), -vec3<i32>(var_0.c, global2.b.x, arg_1.c)))), vec4<bool>(all(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true))), true && select(true, true, true), all(vec3<bool>(true, true, true)), false));
    let var_3 = ~var_0.a >> (global2.a % 32u);
    var var_4 = select(vec3<bool>(all(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)))), true, false), select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, true))), true), vec3<bool>(true, true, true), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, true), true)), !(!vec3<bool>(true, global0.x > arg_2, false)));
    return ~65942u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 1>();
    let var_0 = ~global3.x;
    global2 = Struct_3(4294967295u, ~global2.b);
    var var_1 = _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32((~vec4<u32>(4294967295u, u_input.b, u_input.b, global2.a) << (~vec4<u32>(1u, 17051u, global2.a, u_input.a.x) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_mod_u32(56230u, u_input.b), ~0u, u_input.b, func_1(539u, Struct_1(5496u, global2.a, global0.x), global2.b.x)) % vec4<u32>(32u)), max(_wgslsmith_div_vec4_u32(select(vec4<u32>(52343u, global2.a, global2.a, 1u), vec4<u32>(7465u, 22568u, u_input.b, global2.a), vec4<bool>(true, false, true, true)), vec4<u32>(u_input.b, 15473u, u_input.a.x, global2.a) ^ vec4<u32>(83913u, global2.a, global2.a, 5924u)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(global2.a, global2.a, 4294967295u, u_input.b), vec4<u32>(0u, 46559u, 1u, global2.a)))), ~reverseBits(~vec4<u32>(66205u, 1u, 1596u, u_input.b))), ~max(vec4<u32>(firstTrailingBit(1u), _wgslsmith_mult_u32(28627u, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(29461u, u_input.a.x, 29563u, 1u), vec4<u32>(4294967295u, 3695u, u_input.b, 1u)), ~0u), max(select(vec4<u32>(22906u, global2.a, u_input.b, u_input.a.x), vec4<u32>(u_input.a.x, 0u, 78533u, 16718u), vec4<bool>(false, false, true, true)), firstLeadingBit(vec4<u32>(global2.a, global2.a, 0u, 1u)))));
    let var_2 = -_wgslsmith_mult_vec4_i32(~firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.x, -5586i, -10840i, global3.x), vec4<i32>(-19128i, global2.b.x, global3.x, 1i))), vec4<i32>(1i, reverseBits(~4427i), ~_wgslsmith_div_i32(global0.x, global0.x), global2.b.x));
    var_1 = vec4<u32>(abs(0u), ~_wgslsmith_add_u32(u_input.b, select(39697u, var_1.x, true)), max(_wgslsmith_div_u32(global2.a, var_1.x), global2.a), ~_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 0u, 0u, var_1.x) >> (vec4<u32>(u_input.a.x, 42638u, 76616u, 76571u) % vec4<u32>(32u)), vec4<u32>(var_1.x, var_1.x, u_input.a.x, 0u) & vec4<u32>(u_input.a.x, 4357u, global2.a, 1u))) >> (~_wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 14761u, u_input.a.x, u_input.a.x), vec4<u32>(global2.a, u_input.b, global2.a, 23294u), vec4<u32>(4294967295u, 1u, 0u, var_1.x)), select(~vec4<u32>(global2.a, 633u, 0u, 78453u), abs(vec4<u32>(0u, 0u, 0u, u_input.a.x)), true)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, _wgslsmith_div_u32(~_wgslsmith_sub_u32(~global2.a, _wgslsmith_add_u32(0u, u_input.b)), var_1.x), u_input.a.xy ^ u_input.a.xx);
}

