struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(37982i, i32(-2147483648));

var<private> global1: bool = false;

var<private> global2: array<f32, 18> = array<f32, 18>(-314f, -440f, -532f, -2391f, 1620f, 199f, -849f, -201f, -444f, 185f, 1372f, 1104f, 817f, -264f, 893f, 946f, 1747f, 1633f);

var<private> global3: i32 = 1i;

var<private> global4: array<i32, 23> = array<i32, 23>(-32295i, 39777i, -30373i, -7655i, 32369i, -4569i, -66552i, 0i, 2147483647i, 2147483647i, -796i, 1i, -11580i, -12740i, -45255i, -8399i, 2147483647i, -19680i, -1i, 1i, 11489i, 2147483647i, i32(-2147483648));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> vec3<bool> {
    return vec3<bool>(!arg_3.x, !arg_2.c.x, 70566u <= ~countOneBits(arg_0));
}

fn func_2() -> Struct_1 {
    var var_0 = 975f;
    var var_1 = vec4<u32>(_wgslsmith_div_u32(~u_input.b, u_input.b), _wgslsmith_sub_u32(u_input.b, u_input.b), u_input.b, _wgslsmith_mult_u32(39021u, firstTrailingBit(~reverseBits(53106u))));
    global3 = -1i;
    var_1 = _wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b, var_1.x >> (18095u % 32u), 1u | var_1.x), vec4<u32>(firstTrailingBit(u_input.b), _wgslsmith_div_u32(9291u, 1u), 1u, var_1.x)), abs(vec4<u32>(0u, var_1.x, ~(~4294967295u), var_1.x)));
    global2 = array<f32, 18>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2[_wgslsmith_index_u32(14630u, 18u)], global2[_wgslsmith_index_u32(u_input.b, 18u)]), vec2<f32>(296f, global2[_wgslsmith_index_u32(13818u, 18u)]))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(5167u, 18u)], 431f), vec2<f32>(global2[_wgslsmith_index_u32(var_1.x, 18u)], global2[_wgslsmith_index_u32(var_1.x, 18u)])) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, 879f), vec2<f32>(1000f, global2[_wgslsmith_index_u32(var_1.x, 18u)])))))), !all(vec4<bool>(true, true, true, true)), func_3(~(~_wgslsmith_add_u32(0u, var_1.x)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(max(-846f, global2[_wgslsmith_index_u32(26109u, 18u)])), _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(4294967295u, 18u)]))), any(vec2<bool>(false, false)) & true, vec3<bool>(true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(35440u, 18u)], global2[_wgslsmith_index_u32(u_input.b, 18u)])) - global2[_wgslsmith_index_u32(42857u, 18u)])), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(438f, global2[_wgslsmith_index_u32(var_1.x, 18u)]) + vec2<f32>(670f, global2[_wgslsmith_index_u32(u_input.b, 18u)])), true && (global2[_wgslsmith_index_u32(var_1.x, 18u)] == global2[_wgslsmith_index_u32(13603u, 18u)]), vec3<bool>(-1i > global4[_wgslsmith_index_u32(var_1.x, 23u)], true, true), 1520f), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(false, true))), -680f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: bool) -> vec3<i32> {
    global4 = array<i32, 23>();
    var var_0 = min((vec3<i32>(81113i, -43983i, _wgslsmith_sub_i32(global4[_wgslsmith_index_u32(u_input.b, 23u)], 0i)) >> (~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 90810u, 9097u), vec3<u32>(33597u, u_input.b, u_input.b)) % vec3<u32>(32u))) >> (abs(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(2290u, 18514u, 55586u), vec3<u32>(0u, u_input.b, 1u)), max(vec3<u32>(u_input.b, u_input.b, 20358u), vec3<u32>(u_input.b, u_input.b, u_input.b)))) % vec3<u32>(32u)), ~vec3<i32>(select(-40188i, firstTrailingBit(-41119i), !arg_0.c.x), -2147483647i, _wgslsmith_mod_i32(abs(global0.x), 36030i)));
    var var_1 = arg_0;
    let var_2 = ~vec2<u32>(u_input.b, (_wgslsmith_mod_u32(u_input.b, 21801u) & countOneBits(u_input.b)) | ~70454u);
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.b, 18u)])), _wgslsmith_f_op_f32(2094f - arg_1.a.x), arg_0.d) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, var_1.d, var_1.a.x) + vec3<f32>(var_1.a.x, var_1.a.x, -1312f)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, var_1.a.x, 941f)))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d, global2[_wgslsmith_index_u32(0u, 18u)], var_1.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(192f, 431f, var_1.a.x)), func_3(u_input.b, arg_0, Struct_1(arg_1.a, arg_1.b, var_1.c, var_1.d), vec2<bool>(var_1.b, arg_3)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_0.a.x, var_1.a.x, global2[_wgslsmith_index_u32(u_input.b, 18u)])))))));
    return -reverseBits(-vec3<i32>(-1i, _wgslsmith_div_i32(43406i, 1i), arg_2.x));
}

fn func_1() -> Struct_1 {
    let var_0 = ~firstLeadingBit((~vec3<i32>(global4[_wgslsmith_index_u32(u_input.b, 23u)], 1i, -22316i) ^ -vec3<i32>(global4[_wgslsmith_index_u32(19271u, 23u)], u_input.d.x, global0.x)) ^ func_4(func_2(), func_2(), vec2<i32>(1i, global0.x), true));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 18u)], global2[_wgslsmith_index_u32(13632u, 18u)], 1503f)))), vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1389u, 18u)] - -920f), _wgslsmith_f_op_f32(-1010f * global2[_wgslsmith_index_u32(59176u, 18u)]), _wgslsmith_f_op_f32(step(547f, 701f)))), vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~0u, 18u)]), -262f, global2[_wgslsmith_index_u32(max(countOneBits(79708u), ~8921u), 18u)]))));
    global0 = vec2<i32>(-firstTrailingBit(-41991i), _wgslsmith_add_i32(global4[_wgslsmith_index_u32(~u_input.b, 23u)], _wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, var_0.x, 18205i), vec4<i32>(var_0.x, u_input.c, 38694i, 4547i)), 2147483647i)));
    let var_2 = func_2();
    var var_3 = !var_2.c.yy;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global0.x;
    let var_1 = func_1();
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1().a - var_1.a) + var_1.a) + vec2<f32>(global2[_wgslsmith_index_u32(abs(u_input.b), 18u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-761f, -192f)), _wgslsmith_f_op_f32(-331f * 2165f))))), true, !select(vec3<bool>(true, var_1.b, all(var_1.c.yy)), !(!var_1.c), var_1.d <= global2[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1294f, 559f)) * global2[_wgslsmith_index_u32(~u_input.b, 18u)]) + _wgslsmith_f_op_f32(-508f - var_1.a.x))));
    let var_3 = var_1;
    let var_4 = var_3;
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(min(0i | global0.x, max(global4[_wgslsmith_index_u32(u_input.b, 23u)], _wgslsmith_clamp_i32(4224i, 1i, 1i))), -1i, global4[_wgslsmith_index_u32(firstLeadingBit(~(~u_input.b)), 23u)]), _wgslsmith_div_u32(abs(abs(u_input.b)), ~(~u_input.b)) << (~u_input.b % 32u), var_5.a.x, ~u_input.b, abs(vec2<u32>(u_input.b, _wgslsmith_mult_u32(1u, u_input.b))));
}

