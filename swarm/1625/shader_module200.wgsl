struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31>;

var<private> global1: array<bool, 26> = array<bool, 26>(false, true, false, true, false, false, false, false, false, true, false, false, false, true, false, false, false, true, false, true, true, false, true, false, true, false);

var<private> global2: array<Struct_1, 26>;

var<private> global3: f32 = 179f;

var<private> global4: array<Struct_5, 20>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> vec2<f32> {
    var var_0 = ~(~vec2<u32>(0u, ~4294967295u));
    var var_1 = vec4<bool>(all(vec3<bool>(arg_1.x < arg_1.x, select(false, global1[_wgslsmith_index_u32(33677u, 26u)], global1[_wgslsmith_index_u32(var_0.x, 26u)]), global1[_wgslsmith_index_u32(17153u, 26u)] | global1[_wgslsmith_index_u32(var_0.x, 26u)])) & any(vec2<bool>(arg_0 > u_input.b, global1[_wgslsmith_index_u32(1u, 26u)])), !all(select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 26u)], false, true, true), vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 26u)], true, false), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 26u)], false, true, true))), !select(false, !(-36444i == arg_0), global1[_wgslsmith_index_u32(~52645u, 26u)] || true), _wgslsmith_f_op_f32(-arg_1.x) >= _wgslsmith_f_op_f32(floor(arg_1.x)));
    var var_2 = ~var_0.x;
    var var_3 = global4[_wgslsmith_index_u32(var_0.x, 20u)];
    var var_4 = ~(~10635u);
    return _wgslsmith_f_op_vec2_f32(-arg_1.yy);
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: bool) -> Struct_3 {
    global0 = array<vec4<bool>, 31>();
    var var_0 = true;
    global1 = array<bool, 26>();
    let var_1 = _wgslsmith_f_op_vec2_f32(func_3(~u_input.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.b.yzw))))));
    global3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_0.c, -245f, false)))) * _wgslsmith_f_op_vec2_f32(func_3(~arg_0.a.a.x, vec3<f32>(arg_0.b.x, var_1.x, var_1.x))).x))));
    return Struct_3(vec3<u32>(48455u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(firstLeadingBit(2695u), ~0u, select(4294967295u, 89251u, true)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(5619u, 0u, 1u, 1u), vec4<u32>(2224u, 2079u, 36352u, 30228u)), 1u), 1u), vec2<i32>(select(_wgslsmith_clamp_i32(1i, -43177i >> (0u % 32u), u_input.b), firstTrailingBit(u_input.b) & abs(arg_0.a.a.x), global1[_wgslsmith_index_u32(1u, 26u)]), -2147483647i));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_4) -> Struct_3 {
    var var_0 = -1302f;
    var var_1 = Struct_5(~arg_2 << (~1u % 32u), Struct_1(~_wgslsmith_sub_vec4_i32(~vec4<i32>(0i, 42549i, -49524i, u_input.b), abs(vec4<i32>(1i, arg_0.b.x, arg_0.b.x, 5113i)))), ~0i, _wgslsmith_div_vec3_i32(vec3<i32>(~(-1i), -countOneBits(-12313i), 1i), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(34296i, 1i, arg_2), vec3<i32>(u_input.b, u_input.a, 13360i) ^ vec3<i32>(48970i, arg_0.b.x, -1i)))));
    var_1 = Struct_5(u_input.b, Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-60376i, arg_2, 1i, 32220i) & var_1.b.a, -vec4<i32>(-3274i, arg_2, u_input.a, -21412i)), ~vec4<i32>(arg_0.b.x, 574i, u_input.b, arg_0.b.x))), ~0i, var_1.d);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(847f)) * 394f));
    var_1 = global4[_wgslsmith_index_u32(1u, 20u)];
    return Struct_3(arg_0.a, vec2<i32>(select(var_1.a, u_input.b, true), _wgslsmith_add_i32(_wgslsmith_add_i32(1i, u_input.b), -22012i)) | ~_wgslsmith_div_vec2_i32(~var_1.b.a.zy, var_1.d.yx & arg_0.b));
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_3, arg_3: i32) -> vec3<bool> {
    global1 = array<bool, 26>();
    global0 = array<vec4<bool>, 31>();
    global2 = array<Struct_1, 26>();
    var var_0 = true;
    var_0 = arg_2.a.x >= 1u;
    return vec3<bool>(!arg_0, true, global1[_wgslsmith_index_u32(24467u, 26u)]);
}

fn func_6(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = -17993i;
    var_0 = -2831i;
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) + _wgslsmith_div_f32(384f, 715f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -894f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(152f, 1387f) - vec2<f32>(-669f, 907f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -234f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_2 = Struct_4(arg_1.x >= (select(arg_1.x, ~55334u, any(vec3<bool>(true, true, global1[_wgslsmith_index_u32(arg_1.x, 26u)]))) & func_2(Struct_2(global2[_wgslsmith_index_u32(1u, 26u)], vec4<f32>(var_1.x, var_1.x, var_1.x, 914f), var_1.x), select(vec2<bool>(arg_0.x, false), arg_0.zy, false), all(vec2<bool>(global1[_wgslsmith_index_u32(arg_1.x, 26u)], false))).a.x));
    var_0 = u_input.a >> ((31949u << (~(~arg_1.x) % 32u)) % 32u);
    return Struct_1(-(~_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, u_input.b), vec4<i32>(-662i, u_input.b, -12739i, -103343i), vec4<i32>(u_input.a, u_input.a, u_input.b, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 0i, u_input.b, u_input.a), vec4<i32>(43518i, u_input.b, u_input.a, -9802i)))));
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec3<bool>, arg_3: vec3<i32>) -> Struct_1 {
    return func_6(arg_2, vec2<u32>(_wgslsmith_add_u32(1u, ~_wgslsmith_clamp_u32(52503u, 17071u, 0u)), _wgslsmith_mod_u32(~1u, (1u ^ arg_1) >> (~arg_1 % 32u))), all(func_5(global1[_wgslsmith_index_u32(arg_1, 26u)], ~(~(-1i)), func_4(func_2(Struct_2(Struct_1(vec4<i32>(u_input.a, -1i, u_input.b, arg_3.x)), vec4<f32>(-1541f, arg_0, -405f, arg_0), -1150f), vec2<bool>(global1[_wgslsmith_index_u32(arg_1, 26u)], arg_2.x), global1[_wgslsmith_index_u32(arg_1, 26u)]), ~vec3<u32>(arg_1, 0u, 0u), max(arg_3.x, -33003i), Struct_4(false)), _wgslsmith_add_i32(8291i, -73030i))));
}

fn func_7(arg_0: vec2<u32>, arg_1: vec2<bool>, arg_2: Struct_1) -> bool {
    var var_0 = Struct_3(reverseBits(firstLeadingBit(max(vec3<u32>(1u, arg_0.x, 19689u), vec3<u32>(47529u, arg_0.x, 7601u)))) ^ func_4(Struct_3(vec3<u32>(arg_0.x, 37989u, arg_0.x) ^ vec3<u32>(arg_0.x, arg_0.x, arg_0.x), func_4(Struct_3(vec3<u32>(0u, 4294967295u, 39180u), vec2<i32>(-1i, -2147483647i)), vec3<u32>(arg_0.x, arg_0.x, arg_0.x), 1i, Struct_4(true)).b), _wgslsmith_div_vec3_u32(select(vec3<u32>(2352u, 31626u, 1u), vec3<u32>(arg_0.x, arg_0.x, 4294967295u), false), ~vec3<u32>(arg_0.x, arg_0.x, 0u)), -1i, Struct_4(all(arg_1))).a, _wgslsmith_mult_vec2_i32(~(-arg_2.a.xz) & _wgslsmith_div_vec2_i32(-arg_2.a.xw, _wgslsmith_mult_vec2_i32(vec2<i32>(-45972i, arg_2.a.x), vec2<i32>(0i, u_input.b))), vec2<i32>(i32(-1i) * -u_input.a, -countOneBits(arg_2.a.x))));
    var var_1 = arg_0.x;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1364f * 521f))) + _wgslsmith_f_op_f32(f32(-1f) * -363f)), _wgslsmith_f_op_f32(1000f * -435f));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1621f)))))) * _wgslsmith_f_op_vec2_f32(func_3(arg_2.a.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(-1052f, var_2, var_2), vec3<f32>(-188f, -153f, -543f)), vec3<f32>(var_2, var_2, -678f))), vec3<f32>(_wgslsmith_div_f32(-676f, 1183f), _wgslsmith_f_op_f32(347f + 242f), _wgslsmith_div_f32(var_2, -468f))))).x);
    global1 = array<bool, 26>();
    return !(!global1[_wgslsmith_index_u32(var_0.a.x, 26u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, ~(~4294967295u)), 20u)];
    let var_1 = Struct_1(var_0.b.a);
    var var_2 = !(!vec2<bool>(!global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(37152u, 0u), 26u)], select(global1[_wgslsmith_index_u32(1u, 26u)], false, false) != global1[_wgslsmith_index_u32(1u, 26u)]));
    var_2 = vec2<bool>(global1[_wgslsmith_index_u32(1u, 26u)], func_7(vec2<u32>(firstLeadingBit(1u), 4294967295u), vec2<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 28472u, 1u), vec3<u32>(1u, 27967u, 0u)), 26u)]), func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(127f + 1100f), _wgslsmith_div_f32(728f, 2499f), true)), _wgslsmith_sub_u32(1u, 1u), !(!vec3<bool>(true, var_2.x, true)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -43802i, 1i), vec3<i32>(-1i, var_1.a.x, -13455i)))));
    var var_3 = Struct_4(any(!vec2<bool>(all(vec2<bool>(true, var_2.x)), global1[_wgslsmith_index_u32(3361u, 26u)] != var_2.x)));
    let var_4 = ~_wgslsmith_mod_vec4_u32(min(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, 27558u, 4294967295u), vec4<u32>(1u, 25276u, 0u, 0u), vec4<u32>(0u, 4294967295u, 4294967295u, 50303u))), _wgslsmith_div_vec4_u32(abs(vec4<u32>(75605u, 4294967295u, 54214u, 3429u)), vec4<u32>(1u, 1u, 1u, 1u))), vec4<u32>(1u, 1u, 1u, 1u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.zz >> (~var_4.wy % vec2<u32>(32u)));
}

