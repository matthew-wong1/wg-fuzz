struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<bool>, 8>;

var<private> global2: Struct_3 = Struct_3(vec3<f32>(1067f, 1443f, -146f), Struct_2(0u, Struct_1(vec4<i32>(-316i, 18437i, 11035i, i32(-2147483648))), vec4<u32>(0u, 4294967295u, 0u, 1u), Struct_1(vec4<i32>(27769i, 2147483647i, -1i, -9262i))), false);

var<private> global3: array<u32, 31>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<u32>) -> vec4<bool> {
    let var_0 = Struct_4(-1171f);
    var var_1 = any(global1[_wgslsmith_index_u32(~2286u << (firstTrailingBit(~global0.b.c.x & (4528u >> (arg_0.x % 32u))) % 32u), 8u)]);
    var var_2 = 6947u;
    let var_3 = all(global1[_wgslsmith_index_u32(~(~min(0u, u_input.a)) | 1u, 8u)]);
    var var_4 = select(!vec2<bool>(false, all(!vec3<bool>(var_3, false, var_3))), !(!(!vec2<bool>(var_3, false))), true);
    return select(!select(!vec4<bool>(true, false, global2.c, false), vec4<bool>(!var_3, all(global1[_wgslsmith_index_u32(7318u, 8u)]), global2.c | global0.c, -21914i >= global0.b.b.a.x), all(vec2<bool>(false, true))), vec4<bool>(!(!var_4.x), -536i == (global2.b.d.a.x | global2.b.b.a.x), var_4.x, global0.c), select(!select(select(vec4<bool>(false, false, false, var_4.x), vec4<bool>(true, var_3, false, false), vec4<bool>(global2.c, true, global0.c, false)), select(vec4<bool>(true, false, false, true), vec4<bool>(var_4.x, var_3, global0.c, global2.c), global0.c), select(vec4<bool>(var_4.x, true, global2.c, global2.c), vec4<bool>(true, false, var_4.x, global2.c), false)), vec4<bool>(true | (u_input.a < arg_0.x), var_0.a > -1433f, true, any(vec2<bool>(var_3, false))), true));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> Struct_3 {
    let var_0 = select(global2.b.b.a, global0.b.b.a, func_3(reverseBits(vec4<u32>(~global2.b.c.x, _wgslsmith_sub_u32(89165u, u_input.a), 1u, ~global0.b.a))));
    var var_1 = Struct_1(global2.b.b.a);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.a));
    var var_3 = 1u;
    var var_4 = false;
    return Struct_3(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global2.a, vec3<f32>(global0.a.x, var_2.x, -212f)), _wgslsmith_f_op_vec3_f32(-global2.a), !global2.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global2.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1200f, var_2.x, 1625f))))))), Struct_2(4294967295u, Struct_1(_wgslsmith_clamp_vec4_i32(countOneBits(global0.b.b.a), min(vec4<i32>(13268i, var_1.a.x, arg_0, global2.b.b.a.x), global0.b.b.a), ~vec4<i32>(var_1.a.x, -5371i, 2147483647i, global0.b.d.a.x))), ~(~global2.b.c), Struct_1(-vec4<i32>(var_0.x, 29068i, -2147483647i, arg_1.a.x))), any(select(select(func_3(vec4<u32>(global2.b.c.x, global0.b.a, global3[_wgslsmith_index_u32(u_input.a, 31u)], 15744u)), func_3(global0.b.c), !vec4<bool>(global0.c, true, true, global0.c)), !vec4<bool>(false, false, false, global0.c), true)));
}

fn func_1(arg_0: bool) -> i32 {
    global0 = func_2(_wgslsmith_mult_i32(-35295i, i32(-1i) * -21186i), Struct_1(~vec4<i32>(_wgslsmith_sub_i32(global2.b.b.a.x, -1i), _wgslsmith_add_i32(global2.b.d.a.x, global0.b.d.a.x), -30885i, -35912i)));
    global3 = array<u32, 31>();
    let var_0 = global0.b.b.a;
    global3 = array<u32, 31>();
    var var_1 = select(vec3<bool>(global2.b.b.a.x != global0.b.b.a.x, max(~999u, ~0u) < global2.b.a, select(select(true, any(vec2<bool>(global2.c, global0.c)), func_3(vec4<u32>(47035u, global2.b.a, global2.b.c.x, global3[_wgslsmith_index_u32(u_input.a, 31u)])).x), global2.c, all(!vec4<bool>(global2.c, global2.c, false, true)))), select(!vec3<bool>(global0.c, true || arg_0, false), vec3<bool>(true, global2.c, true), all(select(!vec4<bool>(true, false, arg_0, true), select(vec4<bool>(true, false, true, arg_0), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true)), false))), func_3(global2.b.c).wzw);
    return 20841i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(vec4<bool>(all(vec3<bool>(true, false, global2.c)), !global2.c, true, true), vec4<bool>(global2.c, true && global0.c, false, all(vec4<bool>(true, false, false, false))), true));
    var var_1 = vec3<i32>(2147483647i, -1i >> ((_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(global2.b.c.x, 31u)], ~u_input.a) & global2.b.c.x) % 32u), _wgslsmith_mod_i32(-global2.b.b.a.x, ~15899i));
    var var_2 = min(_wgslsmith_div_u32(77289u, _wgslsmith_mult_u32(min(_wgslsmith_dot_vec4_u32(global0.b.c, vec4<u32>(66527u, u_input.a, global3[_wgslsmith_index_u32(1u, 31u)], u_input.a)), 1u), 25496u)), abs(4294967295u));
    let var_3 = select(global0.b.d.a.xxx, -(~abs(vec3<i32>(global0.b.d.a.x, -19255i, var_1.x))), !(abs(-global2.b.b.a.x) == (func_1(global2.c) >> (4294967295u % 32u))));
    global1 = array<vec2<bool>, 8>();
    global3 = array<u32, 31>();
    var var_4 = Struct_4(global2.a.x);
    var var_5 = ~_wgslsmith_mod_vec4_u32(~(~vec4<u32>(69518u, global0.b.c.x, u_input.a, 57872u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.b.a, 80519u, global0.b.a, 1u), vec4<u32>(0u, global2.b.c.x, 81156u, 4294967295u))) ^ (abs(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global2.b.c.x, 31u)], 1u, 23920u, u_input.a), global2.b.c), global2.b.c)) << (global0.b.c % vec4<u32>(32u)));
    var var_6 = select(!func_3(~(~vec4<u32>(var_5.x, u_input.a, u_input.a, global2.b.c.x))).yww, var_0.wyw, select(!(!vec3<bool>(false, global0.c, global2.c)), var_0.xxz, !vec3<bool>(true, var_0.x, global2.c)));
    let x = u_input.a;
    s_output = StorageBuffer(global2.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1658f, global2.a.x)) - 237f) * var_4.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.x))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, _wgslsmith_f_op_f32(127f * -1150f)) + _wgslsmith_f_op_vec2_f32(floor(global2.a.xx))))), ~(~(vec3<u32>(19024u, global0.b.c.x, 28432u) | ~vec3<u32>(3067u, var_5.x, 61584u))), func_2(_wgslsmith_mod_i32(global0.b.b.a.x & var_3.x, 2147483647i) | ~var_3.x, Struct_1(global2.b.b.a)).a.x);
}

