struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(0u, 32999u, vec4<i32>(5605i, 1i, i32(-2147483648), -23863i), vec2<i32>(1i, -1i), 61585u));

var<private> global1: Struct_1;

var<private> global2: array<vec3<bool>, 14>;

var<private> global3: array<bool, 14> = array<bool, 14>(true, false, true, true, false, true, true, true, true, true, false, false, false, false);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: Struct_1) -> bool {
    global3 = array<bool, 14>();
    var var_0 = global0[_wgslsmith_index_u32(0u, 1u)];
    global0 = array<Struct_1, 1>();
    let var_1 = _wgslsmith_f_op_f32(ceil(633f));
    global0 = array<Struct_1, 1>();
    return global3[_wgslsmith_index_u32(~reverseBits(4294967295u), 14u)];
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: Struct_1) -> i32 {
    global2 = array<vec3<bool>, 14>();
    global1 = arg_3;
    global0 = array<Struct_1, 1>();
    let var_0 = arg_3;
    global2 = array<vec3<bool>, 14>();
    return abs(-firstTrailingBit(_wgslsmith_dot_vec4_i32(select(arg_3.c, vec4<i32>(2147483647i, -2147483647i, global1.c.x, arg_2.x), true), ~vec4<i32>(u_input.e, var_0.d.x, -2147483647i, 2147483647i))));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    let var_0 = true;
    global3 = array<bool, 14>();
    var var_1 = Struct_1(~abs(~_wgslsmith_add_u32(27049u, arg_0.x)), firstLeadingBit(44236u), min(global1.c ^ global1.c, vec4<i32>(u_input.b, 1i, 2730i, _wgslsmith_mod_i32(global1.d.x, global1.d.x)) ^ vec4<i32>(global1.d.x << (12490u % 32u), ~14550i, global1.c.x, global1.d.x)), vec2<i32>(firstLeadingBit(-2147483647i), -33066i), 1u);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(751f, 1004f, -462f, 120f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(410f, -834f, -1454f, 746f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -223f, 197f, -468f), _wgslsmith_div_vec4_f32(vec4<f32>(-422f, 225f, -2202f, 891f), vec4<f32>(200f, 1867f, -271f, 748f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(200f, 234f, 219f, -279f), vec4<f32>(-488f, -1606f, 225f, -363f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1775f, -428f, -1333f, 187f) + vec4<f32>(1140f, -2115f, -683f, 1036f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1000f - 302f), 1052f, _wgslsmith_f_op_f32(floor(1000f)), -426f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-973f, -498f, 517f, 3699f)) * vec4<f32>(-1774f, 746f, 199f, -384f)), var_0 & true)))));
    global3 = array<bool, 14>();
    return -(~func_3(vec3<bool>(var_2.x >= 704f, func_2(global0[_wgslsmith_index_u32(global1.b, 1u)]), true), abs(arg_0.yyz), _wgslsmith_mod_vec4_i32(firstLeadingBit(global1.c), var_1.c), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~21350u, ~u_input.c), 1u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.c, _wgslsmith_sub_u32(global1.a & 9034u, 0u)), 14u)]);
    var var_1 = Struct_1(~(~(~0u) | global1.a), _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(~u_input.a, global1.e << (1u % 32u)), ~(~1u), max(_wgslsmith_mult_u32(global1.e, u_input.c), ~u_input.c)), 1u), _wgslsmith_sub_vec4_i32(vec4<i32>(~_wgslsmith_mult_i32(-35439i, u_input.e), -2147483647i, ~(~global1.d.x), func_1(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.b, global1.b, 49268u, 0u), vec4<u32>(4294967295u, u_input.c, u_input.c, global1.a)))), _wgslsmith_mult_vec4_i32(-global1.c, vec4<i32>(firstLeadingBit(u_input.d.x), firstLeadingBit(global1.c.x), -639i, max(u_input.d.x, -1i)))), select(abs(abs(u_input.d.zy) << (select(vec2<u32>(u_input.c, 47480u), vec2<u32>(u_input.c, 0u), false) % vec2<u32>(32u))), countOneBits(firstLeadingBit(-vec2<i32>(14483i, global1.d.x))), vec2<bool>(!global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, global1.e, 0u), 14u)], true == any(global2[_wgslsmith_index_u32(0u, 14u)]))), 4294967295u);
    global0 = array<Struct_1, 1>();
    let var_2 = 0u;
    let var_3 = select(!select(vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(58105u, global1.e), 14u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(27004u, var_2), 14u)], true || var_0, global3[_wgslsmith_index_u32(106946u, 14u)] & true), select(select(vec4<bool>(true, var_0, var_0, false), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 14u)], var_0, var_0, false), vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.c, 14u)], true, global3[_wgslsmith_index_u32(var_2, 14u)])), vec4<bool>(var_0, var_0, var_0, global3[_wgslsmith_index_u32(global1.e, 14u)]), vec4<bool>(false, var_0, global3[_wgslsmith_index_u32(global1.e, 14u)], false)), true), !vec4<bool>(global3[_wgslsmith_index_u32(global1.b, 14u)], true, !func_2(Struct_1(var_1.e, 4294967295u, global1.c, vec2<i32>(var_1.c.x, 2147483647i), 6495u)), global3[_wgslsmith_index_u32(u_input.a, 14u)]), global3[_wgslsmith_index_u32(countOneBits(35274u >> ((reverseBits(var_2) << (global1.a % 32u)) % 32u)), 14u)]);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(1360f * 1100f), _wgslsmith_f_op_f32(1747f * _wgslsmith_f_op_f32(f32(-1f) * -1264f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-580f, _wgslsmith_f_op_f32(f32(-1f) * -1149f))))));
}

