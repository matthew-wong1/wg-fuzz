struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
    e: vec4<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec4<u32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 29> = array<u32, 29>(1u, 36878u, 40211u, 466u, 0u, 15135u, 1u, 7567u, 4294967295u, 0u, 41295u, 4294967295u, 1u, 47028u, 0u, 57939u, 14431u, 8214u, 1u, 18085u, 4294967295u, 18009u, 1336u, 38442u, 19908u, 15962u, 28695u, 35859u, 22771u);

var<private> global1: array<vec2<i32>, 20>;

var<private> global2: bool = false;

var<private> global3: array<vec2<bool>, 29>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> u32 {
    let var_0 = vec2<f32>(-369f, 106f);
    let var_1 = Struct_3(_wgslsmith_mult_i32(-4834i, _wgslsmith_mod_i32(max(u_input.d.x, u_input.d.x), _wgslsmith_mod_i32(u_input.a, 18172i)) << (~(~4294967295u) % 32u)));
    var var_2 = vec3<f32>(-523f, _wgslsmith_f_op_f32(-var_0.x), -570f);
    var var_3 = vec3<u32>(~((global0[_wgslsmith_index_u32(u_input.c.x, 29u)] ^ global0[_wgslsmith_index_u32(67251u, 29u)]) << (1u % 32u)), 1u, ~1u) << (abs(vec3<u32>(global0[_wgslsmith_index_u32(u_input.c.x | global0[_wgslsmith_index_u32(u_input.c.x, 29u)], 29u)], abs(global0[_wgslsmith_index_u32(u_input.b, 29u)]), ~u_input.b) << (((u_input.c << (vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(u_input.c.x, 29u)], 0u) % vec3<u32>(32u))) & vec3<u32>(4294967295u, 1u, 98926u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_4 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(var_2.x - var_2.x), var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), -2194f))));
    return _wgslsmith_dot_vec4_u32(vec4<u32>(abs(var_3.x), _wgslsmith_sub_u32(107859u, min(~u_input.c.x, var_3.x)), abs(28347u), ~_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(var_3.x, 29u)] << (4294967295u % 32u), u_input.c.x)), ~select((vec4<u32>(1u, global0[_wgslsmith_index_u32(7973u, 29u)], var_3.x, global0[_wgslsmith_index_u32(0u, 29u)]) >> (vec4<u32>(global0[_wgslsmith_index_u32(var_3.x, 29u)], var_3.x, 1u, var_3.x) % vec4<u32>(32u))) ^ vec4<u32>(1u, 1u, 36960u, global0[_wgslsmith_index_u32(1u, 29u)]), ~vec4<u32>(u_input.c.x, u_input.b, 42303u, 4294967295u) << (abs(vec4<u32>(u_input.b, var_3.x, u_input.c.x, u_input.b)) % vec4<u32>(32u)), -var_1.a != _wgslsmith_mod_i32(1i, -36347i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_5) -> u32 {
    let var_0 = arg_1.b.x;
    var var_1 = 0u;
    var var_2 = 4294967295u;
    global0 = array<u32, 29>();
    var var_3 = -1025f;
    return global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(reverseBits(func_1()), 29u)], 29u)];
}

fn func_2() -> StorageBuffer {
    global3 = array<vec2<bool>, 29>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-754f - 911f), 553f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-148f - 922f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(782f, -496f) * vec2<f32>(950f, -592f)))))));
    var var_1 = true;
    var var_2 = Struct_4(u_input.a, Struct_1(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(448f, var_0.x, -338f, var_0.x)) - vec4<f32>(623f, var_0.x, var_0.x, 1193f)), Struct_5(Struct_3(u_input.d.x), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -1i, u_input.d.x, u_input.d.x), vec4<i32>(-20188i, u_input.d.x, u_input.a, u_input.d.x)))), -u_input.d, -(~global1[_wgslsmith_index_u32(8740u, 20u)]) << (u_input.c.xx % vec2<u32>(32u))), ~_wgslsmith_sub_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(8737u, 1u, 3224u, 1u), vec4<u32>(1u, global0[_wgslsmith_index_u32(4086u, 29u)], u_input.b, 1u)), vec4<u32>(global0[_wgslsmith_index_u32(3959u, 29u)], global0[_wgslsmith_index_u32(96322u, 29u)], 1u, global0[_wgslsmith_index_u32(1u, 29u)]), true), (vec4<u32>(global0[_wgslsmith_index_u32(46855u, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 29u)], 29u)], 29u)], 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 29u)], 29u)], 29u)], u_input.c.x) ^ vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 29u)], 29u)], global0[_wgslsmith_index_u32(1u, 29u)], 45061u)) ^ select(vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.b), vec4<u32>(0u, 1u, 23299u, global0[_wgslsmith_index_u32(4294967295u, 29u)]), false)), true);
    var var_3 = var_2.d;
    return StorageBuffer(abs(-(~min(vec4<i32>(56963i, -2147483647i, var_2.b.c.x, -1i), vec4<i32>(var_2.b.c.x, var_2.a, u_input.d.x, var_2.b.c.x)))), u_input.a, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_2.b.b.x, -u_input.d.x, -10395i), _wgslsmith_add_vec4_i32(vec4<i32>(-16340i, -59308i, var_2.a, var_2.a), _wgslsmith_div_vec4_i32(vec4<i32>(var_2.b.b.x, var_2.b.b.x, var_2.a, -13811i), vec4<i32>(3720i, 1i, -2147483647i, -2147483647i)))), countOneBits(~_wgslsmith_add_i32(545i, -2147483647i))), -2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -718f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    var var_1 = true;
    let var_2 = Struct_3(firstLeadingBit(-u_input.a));
    let var_3 = Struct_4(_wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.d.x ^ -32326i, 1i | var_0), -1896i) & -(i32(-1i) * -2147483647i), Struct_1(reverseBits(~1u), abs(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 29u)], 29u)] % 32u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(0u, 29u)], 5587u)), 20u)]), vec2<i32>(u_input.a, var_2.a)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 29u)], global0[_wgslsmith_index_u32(u_input.c.x, 29u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 29u)], 29u)], global0[_wgslsmith_index_u32(10602u, 29u)]), ~vec4<u32>(1u, 21083u, u_input.b, 0u), ~(~vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 29u)], 29u)], u_input.c.x))) | vec4<u32>(select(func_1(), 0u, select(false, true, true)), _wgslsmith_mod_u32(~u_input.b, 1113u), abs(~21708u), u_input.c.x), false);
    var var_4 = var_3.c;
    global0 = array<u32, 29>();
    var var_5 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(69003u, select(28867u, ~max(var_3.c.x, _wgslsmith_mult_u32(0u, global0[_wgslsmith_index_u32(4294967295u, 29u)])), !all(select(vec2<bool>(false, false), global3[_wgslsmith_index_u32(38237u, 29u)], false))), 4294967295u), 29u)];
    let x = u_input.a;
    s_output = func_2();
}

