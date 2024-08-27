struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<f32>(-1000f, 549f), 4294967295u), Struct_1(vec2<f32>(-1000f, 406f), 19003u), Struct_1(vec2<f32>(396f, -1000f), 4294967295u));

var<private> global1: bool = true;

var<private> global2: array<bool, 22> = array<bool, 22>(true, true, false, true, false, true, true, true, false, true, true, true, false, false, false, true, true, true, false, true, true, false);

var<private> global3: f32;

var<private> global4: array<i32, 15>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = arg_3;
    var var_1 = ~_wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(17238i, -1i), vec2<i32>(-7111i, u_input.e)), select(global4[_wgslsmith_index_u32(arg_2.b & arg_2.b, 15u)], _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.e, 55720i, u_input.e), vec4<i32>(global4[_wgslsmith_index_u32(0u, 15u)], global4[_wgslsmith_index_u32(0u, 15u)], 0i, -2147483647i)), true)), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, u_input.e), u_input.e | -32246i), _wgslsmith_sub_i32(23363i, -u_input.e)), vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e, u_input.e), vec2<i32>(-13877i, 0i)), vec2<i32>(-1i, -2147483647i)), _wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(4294967295u, 15u)], global4[_wgslsmith_index_u32(52011u, 15u)], i32(-1i) * -15602i)));
    let var_2 = !global2[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, arg_3.b), arg_3.b)), 22u)];
    global4 = array<i32, 15>();
    global0 = array<Struct_1, 3>();
    return select(countOneBits(0i), (var_1.x >> (arg_1.x % 32u)) >> (arg_0.x % 32u), true);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - 317f) - arg_0.a.x));
    let var_1 = _wgslsmith_f_op_f32(-arg_0.a.x);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.x, arg_0.a.x) + var_1)) * 956f);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(349f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(900f - arg_0.a.x))))), u_input.b << (u_input.c % 32u));
    let var_4 = func_3(_wgslsmith_mult_vec4_u32(u_input.a, firstLeadingBit(~(u_input.d << (u_input.d % vec4<u32>(32u))))), u_input.d.yw, global0[_wgslsmith_index_u32(var_3.b, 3u)], Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1086f)), 1384f)), ~44095u));
    return !all(vec4<bool>(true, true, true, any(select(vec4<bool>(false, false, global2[_wgslsmith_index_u32(arg_0.b, 22u)], true), vec4<bool>(false, true, global2[_wgslsmith_index_u32(arg_0.b, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)]), false))));
}

fn func_1(arg_0: bool) -> vec4<bool> {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(511f)));
    let var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 3u)];
    global1 = any(!(!select(!vec2<bool>(true, global2[_wgslsmith_index_u32(var_0.b, 22u)]), vec2<bool>(arg_0, true), !vec2<bool>(arg_0, global2[_wgslsmith_index_u32(0u, 22u)]))));
    global4 = array<i32, 15>();
    var var_1 = u_input.d.wyw;
    return !(!select(select(select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 22u)], true, global2[_wgslsmith_index_u32(1u, 22u)]), vec4<bool>(false, false, global2[_wgslsmith_index_u32(var_1.x, 22u)], true), vec4<bool>(global2[_wgslsmith_index_u32(21213u, 22u)], false, arg_0, true)), !vec4<bool>(global2[_wgslsmith_index_u32(80674u, 22u)], false, arg_0, global2[_wgslsmith_index_u32(var_1.x, 22u)]), 27481i > global4[_wgslsmith_index_u32(var_1.x, 15u)]), vec4<bool>(true, arg_0, !arg_0, 0u != var_1.x), vec4<bool>(!arg_0, true, false, func_2(Struct_1(var_0.a, var_1.x), var_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = any(func_1(true));
    var var_0 = global2[_wgslsmith_index_u32(u_input.c, 22u)];
    global3 = 1295f;
    let var_1 = ~u_input.a.x;
    var var_2 = ~abs(reverseBits(~vec4<i32>(u_input.e, global4[_wgslsmith_index_u32(var_1, 15u)], -2147483647i, -2147483647i)));
    let var_3 = _wgslsmith_div_vec2_i32(var_2.yw, -reverseBits(_wgslsmith_div_vec2_i32(-var_2.zz, var_2.wy)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(var_2.x, -8014i, -(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(123300u, 37378u), 15u)] ^ ~var_2.x)));
}

