struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 24> = array<vec2<i32>, 24>(vec2<i32>(2147483647i, -5953i), vec2<i32>(2147483647i, -1969i), vec2<i32>(2147483647i, 4281i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(i32(-2147483648), -26470i), vec2<i32>(-57921i, -11468i), vec2<i32>(87566i, -26018i), vec2<i32>(i32(-2147483648), -43886i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(39331i, 74165i), vec2<i32>(-24147i, 26338i), vec2<i32>(-1649i, 21339i), vec2<i32>(15934i, -8742i), vec2<i32>(0i, 9552i), vec2<i32>(42935i, i32(-2147483648)), vec2<i32>(0i, 1i), vec2<i32>(-19596i, 0i), vec2<i32>(-18737i, 4281i), vec2<i32>(78880i, -1i), vec2<i32>(22058i, -1i), vec2<i32>(1i, -15315i), vec2<i32>(-20294i, i32(-2147483648)), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, 71389i));

var<private> global1: bool = true;

var<private> global2: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true));

var<private> global3: array<vec3<u32>, 24>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = Struct_1(-(~_wgslsmith_div_i32(u_input.a, -1i) & _wgslsmith_mult_i32(_wgslsmith_sub_i32(-84640i, -1i), u_input.a)), vec2<i32>(~(1i ^ _wgslsmith_clamp_i32(u_input.a, u_input.a, 2147483647i)), u_input.a), _wgslsmith_f_op_f32(select(-1101f, _wgslsmith_div_f32(-524f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-130f + 452f) + -1094f)), arg_0)));
    global0 = array<vec2<i32>, 24>();
    let var_1 = var_0.a;
    var var_2 = arg_0;
    var var_3 = _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), ~(firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 48657u, 0u), vec4<u32>(0u, 1u, 1u, 4294967295u))) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))));
    return var_0;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32) -> vec3<u32> {
    var var_0 = func_2(!(!(_wgslsmith_div_f32(-759f, arg_0.c) < _wgslsmith_f_op_f32(f32(-1f) * -417f))));
    return min(~(~(_wgslsmith_sub_vec3_u32(global3[_wgslsmith_index_u32(24975u, 24u)], global3[_wgslsmith_index_u32(1u, 24u)]) << (vec3<u32>(65211u, 1u, 79036u) % vec3<u32>(32u)))), vec3<u32>(10018u, ~_wgslsmith_add_u32(1u, ~1945u), 11190u));
}

fn func_3(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = true;
    var var_1 = arg_0.x;
    var var_2 = ~(~_wgslsmith_mult_u32(arg_0.x ^ arg_0.x, ~42847u));
    var_0 = false;
    var var_3 = func_2(true);
    return func_2(false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(_wgslsmith_mult_vec3_u32(max(_wgslsmith_div_vec3_u32(func_1(Struct_1(u_input.a, vec2<i32>(u_input.a, u_input.a), 2225f), vec3<f32>(-907f, -1961f, 1492f), u_input.a), ~vec3<u32>(8858u, 4294967295u, 18696u)), ~vec3<u32>(27090u, 0u, 4072u) >> (~global3[_wgslsmith_index_u32(9572u, 24u)] % vec3<u32>(32u))), vec3<u32>(_wgslsmith_clamp_u32(select(4294967295u, 57431u, true), 1u, _wgslsmith_sub_u32(4294967295u, 0u)), _wgslsmith_sub_u32(~17752u, _wgslsmith_clamp_u32(69150u, 0u, 1u)), 1u)));
    let var_1 = var_0;
    let var_2 = Struct_1(~var_1.b.x, _wgslsmith_clamp_vec2_i32(abs(-var_0.b >> (~vec2<u32>(4294967295u, 38773u) % vec2<u32>(32u))), vec2<i32>(u_input.a, var_1.b.x), var_1.b), -2146f);
    global3 = array<vec3<u32>, 24>();
    var var_3 = var_1;
    var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<u32>(1u, 1u, 1u)).c + 1716f) - _wgslsmith_div_f32(-589f, var_2.c)), global3[_wgslsmith_index_u32(4294967295u, 24u)], var_3.c);
}

