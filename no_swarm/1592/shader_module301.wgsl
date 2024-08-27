struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 4>;

var<private> global1: f32;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: bool = true;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-423f + _wgslsmith_div_f32(-305f, 274f)), 387f)) - 1426f), -601f));
    global3 = -reverseBits(~arg_1.a.x) > reverseBits(reverseBits((arg_1.b >> (0u % 32u)) & ~arg_1.b));
    let var_1 = vec2<u32>(firstLeadingBit(44318u), 1u);
    global2 = vec2<bool>(true, _wgslsmith_f_op_f32(select(-1112f, 1612f, true)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(554f, var_0)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0)))));
    global2 = !arg_0.xx;
    return arg_1.b ^ ~(-58239i);
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_mult_i32(1i, reverseBits(_wgslsmith_sub_i32(select(0i, 2147483647i, global2.x), _wgslsmith_mod_i32(-2147483647i, 27515i)))) >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u & (max(~30376u, max(u_input.a.x, 3442u)) | 1u), 4u)], 4u)] % 32u);
    let var_1 = u_input.a.x;
    var var_2 = Struct_3(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0, -_wgslsmith_div_i32(var_0, -31051i), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0, -1i), arg_0.a.xx), arg_0.a.ww ^ arg_0.a.yw), var_0), ~arg_0.a), 1i);
    let var_3 = ~(-1i) ^ min(func_3(vec3<bool>(true, global2.x, any(vec4<bool>(false, true, global2.x, global2.x))), Struct_3(firstTrailingBit(vec4<i32>(var_2.a.x, 24691i, -27237i, 0i)), arg_0.a.x)), min(abs(43148i), arg_0.b));
    let var_4 = true;
    return Struct_2(Struct_1(any(select(!vec2<bool>(global2.x, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, global2.x)), select(vec2<bool>(var_4, false), vec2<bool>(true, global2.x), true))), max(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 4u)], 4u)], _wgslsmith_mult_u32(countOneBits(1u), abs(2790u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(1729f, -2657f, false)), 2086f))), !select(select(select(vec2<bool>(false, global2.x), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(global2.x, var_4), vec2<bool>(global2.x, global2.x), vec2<bool>(true, var_4))), !select(vec2<bool>(true, var_4), vec2<bool>(global2.x, true), true), select(vec2<bool>(false, var_4), vec2<bool>(false, true), vec2<bool>(true, true))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_3 {
    let var_0 = arg_0;
    let var_1 = arg_1;
    let var_2 = min(102768u, ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(11369u, 4u)], arg_0.a.b), vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(28901u, 4u)], 4294967295u)))));
    let var_3 = abs(27437u);
    var var_4 = -vec2<i32>(reverseBits(-reverseBits(-2147483647i)), countOneBits(countOneBits(-18741i)));
    return Struct_3(min(vec4<i32>(~(-42212i), select(~1i, ~var_4.x, any(vec3<bool>(false, var_1.a.a, var_1.a.a))), var_4.x, -2147483647i), _wgslsmith_add_vec4_i32(min(vec4<i32>(var_4.x, 0i, var_4.x, -1i), vec4<i32>(-16871i, -33882i, 0i, var_4.x)), vec4<i32>(-1i, 36311i, var_4.x, var_4.x)) << (~firstLeadingBit(u_input.a) % vec4<u32>(32u))), -44202i);
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: vec3<bool>) -> bool {
    let var_0 = reverseBits(select(vec2<i32>(2147483647i, select(_wgslsmith_mod_i32(50689i, -2147483647i), firstTrailingBit(-1i), true == global2.x)), arg_1.a.xw, false));
    return true;
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> vec2<bool> {
    var var_0 = abs(~32692u);
    global2 = vec2<bool>(arg_0, func_5(arg_0, func_4(func_2(Struct_3(vec4<i32>(0i, 3258i, 27220i, -48917i), 43354i)), Struct_2(func_2(Struct_3(vec4<i32>(1i, -2147483647i, -1i, 1701i), -21079i)).a, arg_1.yz)), arg_1));
    var var_1 = 23999u;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(38923u), _wgslsmith_sub_u32(_wgslsmith_div_u32(5369u, u_input.a.x), ~(~global0[_wgslsmith_index_u32(1u, 4u)])) & u_input.a.x), 4u)];
    var var_3 = _wgslsmith_add_vec2_u32(~u_input.a.xx, ~u_input.a.yy);
    return !(!arg_1.zy);
}

fn func_6(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = !vec3<bool>(global2.x, arg_0.x, arg_0.x & global2.x);
    var var_1 = -210f;
    global0 = array<u32, 4>();
    var var_2 = Struct_3(abs(vec4<i32>(func_3(var_0, Struct_3(vec4<i32>(33370i, -2147483647i, -1i, 2147483647i), 5834i)), _wgslsmith_add_i32(1i, _wgslsmith_mult_i32(-1i, 0i)), func_4(func_2(Struct_3(vec4<i32>(2147483647i, 31244i, -2147483647i, -2147483647i), 2147483647i)), Struct_2(Struct_1(false, u_input.a.x, vec2<f32>(-481f, -181f)), var_0.xz)).b, 1i)), ~func_3(vec3<bool>(func_2(Struct_3(vec4<i32>(-3159i, 1i, 2147483647i, -1i), 5992i)).b.x, true, true), func_4(func_2(Struct_3(vec4<i32>(1i, 1i, 41196i, 8593i), -1i)), Struct_2(Struct_1(true, global0[_wgslsmith_index_u32(9844u, 4u)], vec2<f32>(-550f, -666f)), vec2<bool>(false, var_0.x)))));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-1197f - -145f), _wgslsmith_f_op_f32(1226f - -426f));
    return func_2(func_4(Struct_2(func_2(func_4(Struct_2(Struct_1(arg_0.x, 4294967295u, var_3), arg_0), Struct_2(Struct_1(var_0.x, 15782u, var_3), var_0.yz))).a, func_1(var_0.x, select(var_0, vec3<bool>(arg_0.x, false, true), vec3<bool>(var_0.x, global2.x, global2.x)))), func_2(Struct_3(var_2.a, -5775i)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 4>();
    let var_0 = Struct_3(vec4<i32>(~(-40284i), _wgslsmith_clamp_i32(1i, ~1i, -_wgslsmith_sub_i32(-14062i, 16687i)), -2147483647i, 0i), i32(-1i) * -_wgslsmith_sub_i32(2147483647i >> (global0[_wgslsmith_index_u32(33789u, 4u)] % 32u), _wgslsmith_add_i32(-1i, 35165i)));
    var var_1 = func_6(func_1(false, select(select(select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(false, true, false), vec3<bool>(true, false, global2.x)), !vec3<bool>(true, global2.x, global2.x), any(vec2<bool>(global2.x, false))), !select(vec3<bool>(true, global2.x, false), vec3<bool>(false, true, global2.x), global2.x), global2.x)));
    global0 = array<u32, 4>();
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-687f, var_1.c.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1284f))), var_1.c.x, _wgslsmith_f_op_f32(abs(313f)))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-983f)), var_2.x, func_1(true, vec3<bool>(var_1.a, var_1.a, var_1.a)).x)) + var_2.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-500f, _wgslsmith_div_f32(939f, -992f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_2.x)))));
    var var_3 = func_6(!(!vec2<bool>(!var_1.a, global2.x)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, _wgslsmith_sub_u32(var_3.b, ~var_1.b), _wgslsmith_div_f32(1125f, var_1.c.x), abs(_wgslsmith_mod_i32(var_0.a.x, 10483i)), ~(~0u));
}

