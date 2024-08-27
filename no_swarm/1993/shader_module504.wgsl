struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<Struct_3, 20>;

var<private> global2: array<f32, 3>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec4<u32> {
    global0 = abs(vec3<u32>(_wgslsmith_add_u32(~u_input.a, _wgslsmith_sub_u32(u_input.a, 97109u)), ~abs(u_input.a), _wgslsmith_dot_vec2_u32(~global0.zz, global0.xy)) | abs(~select(vec3<u32>(0u, global0.x, global0.x), vec3<u32>(4294967295u, global0.x, 0u), true)));
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(23919u, 3u)] * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 3u)])))), !any(vec2<bool>(false, true)), !select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), true), vec2<bool>(true, true), true));
    global0 = vec3<u32>(1u, 146228u, reverseBits(~(~global0.x)) | ~_wgslsmith_clamp_u32(u_input.a, 1u, global0.x >> (u_input.a % 32u)));
    global1 = array<Struct_3, 20>();
    var var_1 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.x, 1u), 3u)] + _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(15302u, 3u)], 1892f)))))));
    return vec4<u32>(11809u, ~(~_wgslsmith_mult_u32(u_input.a, global0.x) & _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 41005u, global0.x, global0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(26652u, global0.x, u_input.a, u_input.a), vec4<u32>(global0.x, 4294967295u, 57636u, global0.x)))), _wgslsmith_dot_vec2_u32(~reverseBits(~vec2<u32>(20753u, u_input.a)), ~vec2<u32>(0u << (u_input.a % 32u), ~global0.x)), ~(~4294967295u));
}

fn func_2() -> vec2<i32> {
    var var_0 = ~(~func_3());
    let var_1 = vec2<i32>(-1i, _wgslsmith_mod_i32(~(~(-1i)), -40034i));
    let var_2 = u_input.a;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1554f, _wgslsmith_f_op_f32(f32(-1f) * -114f))))));
    global1 = array<Struct_3, 20>();
    return -var_1;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: i32) -> Struct_3 {
    global0 = _wgslsmith_sub_vec3_u32(min(func_3().wyw, ~(~_wgslsmith_add_vec3_u32(arg_1.yzz, vec3<u32>(arg_2.x, 18955u, arg_2.x)))), reverseBits(vec3<u32>(global0.x, ~global0.x, 1u) >> (arg_2.wyz % vec3<u32>(32u))));
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(~1u, 3u)]);
    var var_1 = max(min(func_2().x, arg_0.x), arg_3);
    var var_2 = vec2<i32>(select(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_0.x, firstLeadingBit(-51189i), 1i), abs(vec4<i32>(-35155i, arg_3, arg_0.x, 8188i) & vec4<i32>(arg_3, arg_0.x, arg_3, arg_3))), i32(-1i) * -41184i, !any(vec2<bool>(true, true))), 2147483647i);
    global1 = array<Struct_3, 20>();
    return Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, arg_1.x), 3u)], _wgslsmith_f_op_f32(f32(-1f) * -1542f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1721f, 589f))))));
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = func_4(func_2(), ~(~(~abs(vec4<u32>(global0.x, 9554u, u_input.a, 0u)))), vec4<u32>(_wgslsmith_mod_u32(global0.x, ~u_input.a), ~max(16107u, 87138u) | abs(_wgslsmith_mod_u32(u_input.a, global0.x)), _wgslsmith_clamp_u32(u_input.a, ~reverseBits(29363u), max(u_input.a, 4294967295u)), u_input.a), 12299i);
    let var_1 = _wgslsmith_div_u32(abs(~firstTrailingBit(~4294967295u)), 6578u);
    var var_2 = vec3<bool>(arg_0.x, ~firstTrailingBit(-3641i << (var_1 % 32u)) >= -(~(~0i)), all(select(!vec3<bool>(arg_0.x, arg_0.x, false), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, arg_0.x), vec3<bool>(arg_0.x, true, arg_0.x)), !all(vec4<bool>(true, true, false, true)))));
    let var_3 = Struct_1(all(select(!(!vec4<bool>(true, true, arg_0.x, arg_0.x)), !select(vec4<bool>(var_2.x, arg_0.x, arg_0.x, var_2.x), vec4<bool>(var_2.x, var_2.x, true, true), vec4<bool>(var_2.x, true, arg_0.x, true)), var_2.x)), 980f, any(!(!vec3<bool>(var_2.x, arg_0.x, arg_0.x))), vec2<bool>(false, any(!vec3<bool>(false, var_2.x, var_2.x))));
    global0 = ~select(~abs(reverseBits(vec3<u32>(var_1, var_1, 0u))), vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1, 4294967295u, u_input.a), vec3<u32>(1u, 1u, 97919u)), firstLeadingBit(vec3<u32>(u_input.a, 0u, global0.x))), 1731u, ~_wgslsmith_sub_u32(u_input.a, 6243u)), all(!vec4<bool>(true, var_2.x, arg_0.x, false)));
    return func_4(func_2(), ~(select(firstLeadingBit(vec4<u32>(4294967295u, global0.x, 22122u, var_1)), vec4<u32>(92868u, 29673u, global0.x, global0.x) >> (vec4<u32>(4294967295u, u_input.a, global0.x, 1u) % vec4<u32>(32u)), arg_0.x) >> (vec4<u32>(_wgslsmith_mod_u32(var_1, global0.x), _wgslsmith_mod_u32(1u, 34915u), _wgslsmith_mod_u32(4294967295u, 15400u), _wgslsmith_mod_u32(global0.x, var_1)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(u_input.a, var_1), global0.x, func_3().x, _wgslsmith_clamp_u32(11943u, var_1, u_input.a)), vec4<u32>(28639u, ~(~4294967295u), 12386u, u_input.a)), select(abs(~max(-2147483647i, -2147483647i)), 2147483647i, any(vec2<bool>(!var_2.x, select(false, var_2.x, arg_0.x)))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<bool>) -> i32 {
    let var_0 = func_1(arg_2.d);
    let var_1 = 1966i;
    var var_2 = _wgslsmith_mod_u32(u_input.a, _wgslsmith_mod_u32(global0.x, ~1u));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), _wgslsmith_f_op_f32(sign(2023f)), _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(min(~0u, _wgslsmith_add_u32(~6931u, 0u)), 3u)])));
    let var_4 = Struct_2(var_3.x);
    return _wgslsmith_clamp_i32(-_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(select(vec2<i32>(var_1, var_1), vec2<i32>(-2147483647i, var_1), arg_2.d.x), arg_0 & vec2<i32>(32315i, 28840i)), arg_0), ~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, arg_0.x), vec3<i32>(var_1, var_1, -1i), vec3<i32>(var_1, 7032i, var_1)), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.x, arg_0.x, var_1), vec3<i32>(1i, -1i, -11256i))), vec3<i32>(max(arg_0.x, var_1), _wgslsmith_div_i32(var_1, 1i), arg_0.x)), _wgslsmith_mult_i32(2147483647i ^ _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, -13853i, -4344i, var_1), vec4<i32>(arg_0.x, 22343i, var_1, arg_0.x)), -(~_wgslsmith_mult_i32(var_1, -29393i))));
}

fn func_6(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-func_1(arg_2.xw).a.x));
    let var_1 = Struct_1(!(arg_2.x && (_wgslsmith_f_op_f32(exp2(var_0.a)) > 1437f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) - -1000f), false, select(vec2<bool>(true, true), select(select(!vec2<bool>(false, arg_2.x), vec2<bool>(false, arg_2.x), true), select(select(arg_2.zz, vec2<bool>(arg_2.x, true), arg_2.x), !arg_2.wy, arg_2.x & arg_2.x), arg_2.x), select(arg_2.zx, !arg_2.zx, true)));
    global2 = array<f32, 3>();
    let var_2 = vec4<u32>(~_wgslsmith_mod_u32(firstLeadingBit(14964u), _wgslsmith_mult_u32(global0.x, global0.x)) | ~0u, _wgslsmith_mult_u32(_wgslsmith_div_u32(global0.x, ~global0.x), ~_wgslsmith_div_u32(1899u, 1u) | u_input.a), u_input.a, ~_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(0u, global0.x), global0.x), _wgslsmith_add_u32(global0.x, global0.x) ^ global0.x));
    let var_3 = arg_0.x;
    return Struct_2(var_1.b);
}

fn func_7(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: f32) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = func_1(var_0.d);
    let var_2 = arg_0;
    let var_3 = Struct_1(false, _wgslsmith_f_op_f32(round(325f)), var_0.d.x, !select(arg_1.d, arg_1.d, var_0.d));
    let var_4 = var_0.a;
    return Struct_1(!(!(!var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b), -1776f, all(vec2<bool>(var_4, var_3.a)))) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.x, u_input.a), 3u)] + -1000f)), true, var_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(~(~u_input.a), 20u)];
    var var_1 = func_7(func_6(vec3<i32>(_wgslsmith_div_i32(-40421i, _wgslsmith_clamp_i32(363i, -2147483647i, 50484i)), ~_wgslsmith_div_i32(1i, -1i), func_5(vec2<i32>(0i, 38872i), func_1(vec2<bool>(true, false)), Struct_1(false, var_0.a.x, false, vec2<bool>(true, false)), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_f_op_vec2_f32(-var_0.a))), select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(4294967295u, 3u)] >= 546f, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), Struct_1(true, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) - _wgslsmith_f_op_f32(-146f - var_0.a.x)))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false))), select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true)))), ~vec3<u32>(~1u ^ ~global0.x, global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 0u, u_input.a, 70255u), vec4<u32>(global0.x, 27800u, 33297u, u_input.a)) | 32972u), _wgslsmith_div_f32(func_6(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -1i, 220i), -vec3<i32>(5803i, 1i, 7385i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-199f, -809f))), var_0.a, all(vec4<bool>(true, true, false, false)))), vec4<bool>(false, true, true, true)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -744f) + _wgslsmith_f_op_f32(var_0.a.x - global2[_wgslsmith_index_u32(13964u, 3u)])))));
    var var_2 = func_7(Struct_2(_wgslsmith_f_op_f32(max(1331f, _wgslsmith_f_op_f32(2887f + _wgslsmith_f_op_f32(var_0.a.x + global2[_wgslsmith_index_u32(global0.x, 3u)]))))), func_7(Struct_2(global2[_wgslsmith_index_u32(44825u, 3u)]), func_7(func_6(vec3<i32>(2147483647i, -2147483647i, 24962i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x)), vec4<bool>(var_1.d.x, false, true, true)), Struct_1(var_1.b == 337f, var_0.a.x, any(vec2<bool>(var_1.d.x, var_1.c)), select(var_1.d, var_1.d, true)), vec3<u32>(global0.x, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 0u), vec3<u32>(global0.x, 34424u, global0.x))), 125f), countOneBits(firstTrailingBit(countOneBits(vec3<u32>(86307u, u_input.a, 12605u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), 137f)), _wgslsmith_mult_vec3_u32(select((vec3<u32>(global0.x, 28067u, u_input.a) | vec3<u32>(global0.x, 4294967295u, u_input.a)) ^ ~vec3<u32>(15953u, global0.x, 108628u), _wgslsmith_add_vec3_u32(~vec3<u32>(54945u, 106417u, u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(12908u, 34045u, u_input.a), vec3<u32>(4294967295u, u_input.a, 25135u), vec3<u32>(0u, global0.x, 9572u))), select(select(vec3<bool>(var_1.c, true, true), vec3<bool>(var_1.c, var_1.d.x, false), false), vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(false, var_1.a, var_1.c))), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.x, global0.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.a, 10938u), vec3<u32>(22467u, 0u, u_input.a))), _wgslsmith_mod_u32(u_input.a << (u_input.a % 32u), ~global0.x), ~(1u ^ global0.x))), var_0.a.x);
    var var_3 = global0.zz >> (reverseBits(vec2<u32>(0u, firstTrailingBit(1u))) % vec2<u32>(32u));
    let var_4 = -723f;
    let var_5 = 1u;
    global1 = array<Struct_3, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(select(20741u, u_input.a, var_2.a), 36378u, ~u_input.a, firstLeadingBit(49192u))), ~vec4<u32>(var_3.x, countOneBits(var_3.x), ~u_input.a, ~global0.x)), vec3<i32>(_wgslsmith_sub_i32(select(func_2().x, 763i, true), -2147483647i), _wgslsmith_mult_i32(func_5(firstLeadingBit(vec2<i32>(-958i, 2147483647i)), func_4(vec2<i32>(23373i, -5366i), vec4<u32>(var_3.x, 45666u, global0.x, 12169u), vec4<u32>(0u, var_3.x, 31378u, var_3.x), 0i), func_7(Struct_2(global2[_wgslsmith_index_u32(u_input.a, 3u)]), Struct_1(var_1.c, -532f, true, vec2<bool>(false, var_2.a)), vec3<u32>(global0.x, 4294967295u, 0u), 169f), !vec3<bool>(var_1.c, var_2.a, false)), ~1i), 14875i));
}

