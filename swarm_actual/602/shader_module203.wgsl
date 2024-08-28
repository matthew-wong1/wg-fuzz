struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<bool>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_3,
    c: vec4<bool>,
    d: Struct_2,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_4 = Struct_4(Struct_3(Struct_2(vec3<i32>(-1i, -1i, -42051i), vec2<i32>(i32(-2147483648), 25277i), -1000f, 27264u, 19099u), Struct_2(vec3<i32>(0i, 12405i, 53485i), vec2<i32>(2147483647i, -1612i), 1768f, 4294967295u, 1u), 288f, vec3<i32>(2147483647i, -22556i, 36306i), vec4<u32>(0u, 28171u, 5677u, 1u)), vec4<i32>(2147483647i, 1586i, -1i, -24704i));

var<private> global2: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(Struct_2(vec3<i32>(0i, -1i, -1i), vec2<i32>(2147483647i, 1i), -1397f, 34745u, 3904u), Struct_2(vec3<i32>(2147483647i, -28517i, -1i), vec2<i32>(6119i, -1i), -1250f, 88759u, 69313u), -762f, vec3<i32>(-41754i, i32(-2147483648), -46040i), vec4<u32>(34467u, 91281u, 4294967295u, 87685u)), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 40844i, 19986i), vec2<i32>(0i, 0i), 251f, 0u, 8277u), Struct_2(vec3<i32>(1i, -1i, 0i), vec2<i32>(i32(-2147483648), 2147483647i), 1253f, 1u, 67920u), -856f, vec3<i32>(22687i, 0i, -25942i), vec4<u32>(0u, 56610u, 4294967295u, 4294967295u)), Struct_3(Struct_2(vec3<i32>(0i, -1i, 41728i), vec2<i32>(26991i, i32(-2147483648)), -1224f, 78227u, 27955u), Struct_2(vec3<i32>(-39615i, -10484i, -4544i), vec2<i32>(-46144i, 2147483647i), 1153f, 1u, 33753u), -1000f, vec3<i32>(-1i, 24744i, 13639i), vec4<u32>(6376u, 43089u, 4294967295u, 4294967295u)), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 0i, -22218i), vec2<i32>(1071i, 16895i), -1850f, 67987u, 56091u), Struct_2(vec3<i32>(i32(-2147483648), -9566i, 0i), vec2<i32>(i32(-2147483648), 76473i), 158f, 13691u, 0u), 960f, vec3<i32>(20276i, -32362i, 103585i), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: bool) -> vec4<u32> {
    var var_0 = !(abs(56741i) < (1i ^ _wgslsmith_add_i32(_wgslsmith_mult_i32(2147483647i, global1.b.x), global0.a.a.x)));
    return ~(~global0.e);
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(2147483647i, countOneBits(-20103i)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, global0.a.a.x), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -53760i, global1.a.d.x), global1.b.zzz)), ~global0.a.b.x), global0.a.b);
    let var_1 = all(vec4<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), true)), true, false, _wgslsmith_dot_vec2_u32(u_input.a, abs(vec2<u32>(u_input.a.x, global1.a.b.d))) <= global1.a.a.e));
    global0 = Struct_3(global0.a, Struct_2(vec3<i32>(max(_wgslsmith_dot_vec4_i32(global1.b, vec4<i32>(var_0.x, -15509i, var_0.x, global1.a.b.a.x)), _wgslsmith_mod_i32(1i, global1.b.x)), var_0.x, -(51960i >> (global0.e.x % 32u))), global1.b.yy, 1000f, global1.a.a.e, _wgslsmith_div_u32(~(1u >> (global0.a.e % 32u)), 0u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c, global0.b.c)) + global1.a.c)), _wgslsmith_div_vec3_i32(vec3<i32>(global1.b.x, 2147483647i, 2147483647i), vec3<i32>(min(24291i, global0.b.a.x), _wgslsmith_mult_i32(global1.b.x, ~global0.b.a.x), ~_wgslsmith_mult_i32(51569i, global1.b.x))), global0.e);
    let var_2 = global1.a;
    let var_3 = vec4<u32>(67685u, u_input.a.x, global1.a.a.d, ~_wgslsmith_sub_u32(~u_input.a.x, var_2.b.d | ~44968u));
    return (func_2(var_1).x ^ _wgslsmith_div_u32(_wgslsmith_div_u32(countOneBits(70763u), global0.e.x), 1u)) >> (0u % 32u);
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: vec4<i32>, arg_3: vec4<f32>) -> u32 {
    var var_0 = _wgslsmith_sub_vec4_u32(func_2(true), ~global0.e);
    let var_1 = -2563f;
    let var_2 = _wgslsmith_div_u32(_wgslsmith_sub_u32(1u, _wgslsmith_add_u32(max(arg_1 << (global0.b.e % 32u), ~var_0.x), ~global1.a.b.e)), func_3());
    let var_3 = !(!select(select(vec4<bool>(true, false, false, true), !vec4<bool>(true, true, arg_0.x, arg_0.x), !arg_0.x), !select(vec4<bool>(arg_0.x, true, false, arg_0.x), vec4<bool>(true, false, arg_0.x, arg_0.x), false), true));
    let var_4 = Struct_4(global1.a, vec4<i32>(u_input.b, abs(-global1.a.d.x), ~(-global1.b.x), u_input.b));
    return 56330u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_mod_u32(~(10845u << (_wgslsmith_dot_vec4_u32(global1.a.e, vec4<u32>(4294967295u, u_input.a.x, 4294967295u, global1.a.a.e)) % 32u)), _wgslsmith_div_u32(_wgslsmith_sub_u32(17174u, func_1(vec2<bool>(true, false), global0.b.d, vec4<i32>(u_input.b, u_input.b, u_input.b, -17347i), vec4<f32>(608f, 1000f, global1.a.a.c, global0.a.c))), abs(global0.e.x))));
    let var_1 = 25962i;
    global2 = array<Struct_3, 4>();
    let var_2 = global0.e.yy;
    global0 = global2[_wgslsmith_index_u32(reverseBits(~var_2.x), 4u)];
    let var_3 = vec3<i32>(u_input.b, u_input.b, ~global1.a.a.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c)))))), global1.b << (~vec4<u32>(34869u, abs(38330u), 1u, firstTrailingBit(global1.a.e.x)) % vec4<u32>(32u)));
}

