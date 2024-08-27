struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, -38469i, 1i);

var<private> global1: bool;

var<private> global2: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false));

var<private> global3: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false));

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_3) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1209f), -1084f));
    var var_1 = i32(-1i) * -abs(75187i);
    var_1 = 1i;
    var var_2 = arg_0;
    var var_3 = arg_1;
    return arg_0;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> vec3<i32> {
    var var_0 = Struct_1(((arg_1.a ^ func_3(arg_1.a, Struct_3(-17780i))) << (func_3(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1.a.x, u_input.b, 1u, 1u), arg_1.a), Struct_3(u_input.a)) % vec4<u32>(32u))) & arg_1.a);
    global2 = array<vec2<bool>, 27>();
    global1 = !(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.a.x, 4294967295u), vec2<u32>(0u, var_0.a.x) | vec2<u32>(37824u, arg_1.a.x)) > var_0.a.x);
    let var_1 = Struct_2(true & select(u_input.a > reverseBits(0i), -1i <= u_input.a, !any(vec2<bool>(false, false))), Struct_1(vec4<u32>(0u, _wgslsmith_div_u32(u_input.b, func_3(vec4<u32>(0u, 12280u, u_input.b, arg_1.a.x), Struct_3(u_input.a)).x), 2812u, abs(_wgslsmith_dot_vec2_u32(var_0.a.wx, var_0.a.xz)))));
    global1 = var_1.a;
    return countOneBits(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, 0i, _wgslsmith_dot_vec2_i32(global0.yx, global0.zy)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1i), _wgslsmith_add_vec3_i32(vec3<i32>(0i, u_input.a, -29459i), vec3<i32>(-70928i, 2147483647i, 37286i)))) << (vec3<u32>(abs(16237u), ~max(u_input.b, u_input.b), max(var_1.b.a.x, u_input.b ^ 1u)) % vec3<u32>(32u)));
}

fn func_1(arg_0: Struct_2) -> u32 {
    global0 = _wgslsmith_div_vec3_i32(min(vec3<i32>(_wgslsmith_mult_i32(reverseBits(global0.x), i32(-1i) * -12432i), -(i32(-1i) * -1i), select(-global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-56020i, -2147483647i, -1i, u_input.a), vec4<i32>(u_input.a, 1i, 20830i, u_input.a)), arg_0.a | true)), vec3<i32>(~1i, firstLeadingBit(u_input.a) << (4294967295u % 32u), min(34620i, _wgslsmith_mod_i32(2147483647i, global0.x)))), -(~func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(126f, 244f, 2086f)), arg_0.b)));
    global1 = arg_0.a;
    global3 = array<vec3<bool>, 25>();
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-905f + 137f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-681f, 237f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1901f, 1008f)) - _wgslsmith_f_op_f32(1842f - -210f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(669f - -360f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -448f)))))), _wgslsmith_f_op_f32(-2449f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1273f + -1000f) - _wgslsmith_f_op_f32(335f - 413f))))));
    let var_1 = vec3<u32>(select(1u, _wgslsmith_mod_u32(1u, arg_0.b.a.x), true), ~22566u, 0u);
    return ~firstTrailingBit(~_wgslsmith_sub_u32(var_1.x, 10443u) & _wgslsmith_dot_vec4_u32(max(arg_0.b.a, arg_0.b.a), _wgslsmith_sub_vec4_u32(arg_0.b.a, arg_0.b.a)));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<u32>, arg_2: i32, arg_3: f32) -> Struct_1 {
    var var_0 = Struct_3(min(~(-34892i), arg_2 & ~u_input.a) << (~(~1u ^ _wgslsmith_sub_u32(arg_1.x, u_input.b)) % 32u));
    var var_1 = Struct_2(true, Struct_1(_wgslsmith_div_vec4_u32(reverseBits(select(vec4<u32>(arg_0.x, arg_0.x, 97034u, 0u), vec4<u32>(24936u, 1u, arg_1.x, 1u), true)), ~vec4<u32>(74761u, arg_1.x, arg_0.x, 1u) << (_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b, u_input.b, 62393u), vec4<u32>(arg_1.x, arg_0.x, arg_1.x, 4294967295u)) % vec4<u32>(32u)))));
    var var_2 = Struct_3(1i);
    var var_3 = Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(abs(-41453i), -2147483647i, var_2.a, abs(func_2(vec3<f32>(arg_3, -1039f, arg_3), Struct_1(var_1.b.a)).x)), countOneBits(~min(vec4<i32>(17096i, global0.x, var_0.a, arg_2), vec4<i32>(0i, u_input.a, 0i, u_input.a)))));
    var_1 = Struct_2(select(true, !var_1.a, var_1.a), Struct_1(var_1.b.a));
    return Struct_1(_wgslsmith_clamp_vec4_u32(var_1.b.a >> (vec4<u32>(~arg_0.x, 26211u, ~0u, ~397u) % vec4<u32>(32u)), vec4<u32>(u_input.b, _wgslsmith_sub_u32(~arg_1.x, reverseBits(arg_1.x)), _wgslsmith_add_u32(u_input.b & 4294967295u, 97935u), min(arg_0.x, 0u) << (~arg_1.x % 32u)), func_3(~(~vec4<u32>(51417u, arg_0.x, arg_1.x, var_1.b.a.x)), Struct_3(abs(global0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    var var_1 = func_4(vec3<u32>(~(~0u ^ func_1(Struct_2(false, Struct_1(vec4<u32>(u_input.b, u_input.b, 6032u, u_input.b))))), ~8930u, abs(u_input.b)), vec3<u32>(max(abs(u_input.b), 1u), ~firstLeadingBit(u_input.b), ~u_input.b), 0i, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-480f - 376f), _wgslsmith_f_op_f32(586f - -1000f))), -943f))));
    let var_2 = select(select(vec2<bool>(true, all(vec3<bool>(true, true, false))), vec2<bool>(all(vec3<bool>(true, true, true)), (4294967295u <= var_1.a.x) && true), true), select(vec2<bool>(all(select(vec3<bool>(false, false, false), global3[_wgslsmith_index_u32(4294967295u, 25u)], false)), false), global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_1.a.x, 86873u) >> ((4294967295u ^ (u_input.b << (u_input.b % 32u))) % 32u), 27u)], global2[_wgslsmith_index_u32(25550u, 27u)]), vec2<bool>(true == select(false, any(vec4<bool>(true, true, false, false)), all(global2[_wgslsmith_index_u32(var_1.a.x, 27u)])), true));
    var_0 = 20769i;
    global2 = array<vec2<bool>, 27>();
    let var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(~var_1.a.yw, ~var_1.a.xz) << (17470u % 32u), var_1.a.x), var_1.a.wy);
    var var_4 = global0.yy;
    let var_5 = Struct_3(~(global0.x >> (firstLeadingBit(1u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_1.a.zxw, select(~(~var_1.a.zyz), vec3<u32>(~u_input.b, var_3.x, 1u), !(!var_2.x))));
}

