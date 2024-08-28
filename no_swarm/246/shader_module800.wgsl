struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(i32(-2147483648), -32688i, -1i), vec3<i32>(35086i, 1i, 13785i), vec3<i32>(-1i, -22686i, -1i), vec3<i32>(33953i, 1i, -11105i), vec3<i32>(-26628i, 2147483647i, i32(-2147483648)), vec3<i32>(27425i, -1i, -55119i));

var<private> global1: array<vec2<bool>, 12>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = arg_2;
    var var_1 = Struct_1(arg_2.d, arg_2.b, arg_2.c, arg_2.a);
    global0 = array<vec3<i32>, 6>();
    var_1 = var_0;
    global0 = array<vec3<i32>, 6>();
    return min(var_0.b, -(vec2<i32>(-1i) * -var_1.a)) ^ vec2<i32>(-2147483647i, firstLeadingBit(~var_1.a.x));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_1(vec2<i32>(-u_input.a, -2147483647i), ~_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(u_input.a, u_input.a)), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), vec2<bool>(arg_0, false)), func_3(vec3<bool>(arg_0, arg_0, arg_0), 38650u, Struct_1(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(u_input.a, -1i), vec4<i32>(40639i, 2147483647i, u_input.a, 24879i), vec2<i32>(43305i, -10756i)))), vec2<i32>(-1i) * -vec2<i32>(1i, 30709i)), _wgslsmith_sub_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -22809i, -67593i, u_input.a), vec4<i32>(u_input.a, 25419i, u_input.a, u_input.a)), vec4<i32>(u_input.a, -2147483647i, 6371i, u_input.a) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, 57887u, u_input.b), vec4<u32>(u_input.b, 1u, 4129u, u_input.b)) % vec4<u32>(32u)), arg_0), firstLeadingBit(~min(vec4<i32>(u_input.a, u_input.a, -14056i, 2147483647i), vec4<i32>(-75834i, u_input.a, 45556i, 1i)))), -_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(20485i, u_input.a), vec2<i32>(0i, u_input.a)), vec2<i32>(_wgslsmith_mult_i32(u_input.a, -2147483647i), ~40822i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(824f))), 1f, 913f)));
    var var_2 = Struct_1(-abs(~vec2<i32>(-3928i, -25738i) << (select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), true) % vec2<u32>(32u))), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-25031i, u_input.a), _wgslsmith_clamp_vec2_i32(var_0.d, var_0.c.zw, vec2<i32>(0i, 58515i)) << (abs(vec2<u32>(4294967295u, u_input.b)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(~var_0.a.x, u_input.a), _wgslsmith_sub_vec2_i32(var_0.b, vec2<i32>(-2904i, var_0.c.x)) << (vec2<u32>(u_input.b, 26280u) % vec2<u32>(32u)))), var_0.c, -vec2<i32>(~_wgslsmith_add_i32(u_input.a, -17220i), _wgslsmith_clamp_i32(var_0.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_0.a.x, 4915i, 0i), vec4<i32>(var_0.d.x, 1i, u_input.a, var_0.d.x)), 1i)));
    let var_3 = select(select(vec2<bool>((var_1.x <= 266f) && (-1i > var_2.b.x), !arg_0), !vec2<bool>(select(false, arg_0, arg_0), select(false, false, arg_0)), !all(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, arg_0, true), false))), vec2<bool>(false, all(vec3<bool>(select(true, false, true), true, arg_0))), any(vec4<bool>(true, any(!vec2<bool>(false, arg_0)), true, any(select(vec4<bool>(arg_0, false, true, true), vec4<bool>(arg_0, false, false, true), arg_0)))));
    global0 = array<vec3<i32>, 6>();
    return select(u_input.b, ~select(_wgslsmith_dot_vec3_u32(vec3<u32>(43582u, u_input.b, 14131u), vec3<u32>(u_input.b, 86286u, u_input.b)), 15014u, arg_0 | (var_1.x == var_1.x)), true);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> bool {
    var var_0 = -735f;
    let var_1 = _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(_wgslsmith_sub_u32(select(1u, 4294967295u, false), func_2(false)), ~(~87220u), 4664u)), arg_0.ywz);
    global0 = array<vec3<i32>, 6>();
    var var_2 = arg_1;
    var var_3 = Struct_1(vec2<i32>(1i, 2147483647i), var_2.d, vec4<i32>(max(2147483647i, reverseBits(arg_1.c.x & u_input.a)), _wgslsmith_mod_i32(-(u_input.a | u_input.a), 1i), 0i, -var_2.a.x), (abs(-var_2.b) << (~(~vec2<u32>(arg_0.x, u_input.b)) % vec2<u32>(32u))) & _wgslsmith_mult_vec2_i32(var_2.a, _wgslsmith_add_vec2_i32(vec2<i32>(1i, arg_1.a.x), _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.d.x, var_2.d.x), arg_1.a))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 12>();
    let var_0 = true;
    global0 = array<vec3<i32>, 6>();
    let var_1 = vec3<bool>(func_1(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), Struct_1(~(vec2<i32>(u_input.a, u_input.a) << (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(vec2<i32>(19791i, 1i), ~vec2<i32>(-44648i, -26417i)), reverseBits(select(vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), vec4<i32>(-51855i, 1i, -1i, u_input.a), vec4<bool>(var_0, var_0, var_0, true))), vec2<i32>(u_input.a, u_input.a) << (~vec2<u32>(0u, u_input.b) % vec2<u32>(32u)))), var_0, any(!select(!vec3<bool>(false, var_0, var_0), vec3<bool>(false, true, true), var_0)));
    var var_2 = i32(-1i) * -abs(-1i);
    var_2 = min(~(_wgslsmith_sub_i32(select(-3122i, 2147483647i, true), u_input.a) << (12434u % 32u)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(min(global0[_wgslsmith_index_u32(u_input.b, 6u)], _wgslsmith_mod_vec3_i32(select(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(u_input.b, 6u)], vec3<bool>(true, false, false)), -global0[_wgslsmith_index_u32(2483u, 6u)])) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 1u, ~2043u), ~(vec3<u32>(u_input.b, u_input.b, 4294967295u) | vec3<u32>(u_input.b, u_input.b, 1u)), countOneBits(vec3<u32>(4294967295u, u_input.b, u_input.b))) % vec3<u32>(32u)), (i32(-1i) * -firstTrailingBit(u_input.a)) << ((~u_input.b << (~1u % 32u)) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -304f), ~max(vec2<i32>(-1i, -18299i) | min(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, -1466i)), _wgslsmith_div_vec2_i32(min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), max(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)))));
}

