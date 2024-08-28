struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, 1i, 48737i, 2147483647i);

var<private> global1: bool = false;

var<private> global2: array<i32, 15> = array<i32, 15>(-75290i, -1i, 1i, -6170i, 1i, -49372i, -6673i, -18204i, 0i, 2147483647i, i32(-2147483648), -26869i, i32(-2147483648), 31293i, 2147483647i);

var<private> global3: bool = true;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec2<u32> {
    let var_0 = 13925i;
    var var_1 = Struct_2(global0.yz, u_input.a.x | ~(-5449i >> (1u % 32u)));
    let var_2 = 4294967295u;
    var var_3 = _wgslsmith_f_op_f32(447f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-721f - -692f) - _wgslsmith_f_op_f32(abs(-1026f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, -210f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-794f, -372f, false)) - -2240f)))));
    let var_4 = vec3<u32>(45878u, var_2 | ~(~0u), abs(~20410u));
    return reverseBits(~select(var_4.yx, vec2<u32>(15763u, 1u), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), true)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: u32) -> bool {
    var var_0 = func_3();
    let var_1 = Struct_2(u_input.a.zy, _wgslsmith_sub_i32(-global0.x >> (_wgslsmith_add_u32(~4294967295u, arg_1.b) % 32u), u_input.b | -u_input.a.x));
    global2 = array<i32, 15>();
    var var_2 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(~arg_1.a.x, ~arg_1.b), vec2<u32>(~(~56312u), arg_2 & _wgslsmith_add_u32(var_0.x, 3054u)));
    var var_3 = all(vec3<bool>(!all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), all(vec3<bool>(false, false, false)))), any(vec4<bool>(true, true, true, true))));
    return true != any(vec2<bool>(true, !any(vec4<bool>(false, false, true, true))));
}

fn func_1(arg_0: i32, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global3 = all(vec4<bool>(any(vec2<bool>(true, true)), !any(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-329f * -433f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), any(vec4<bool>(false, true, true, true)) && true));
    let var_0 = Struct_2(select(_wgslsmith_clamp_vec2_i32(global0.xx, abs(vec2<i32>(19716i, arg_0)), -vec2<i32>(-1i, -65475i)), vec2<i32>(-(~arg_0), -22436i), vec2<bool>(true, false)), reverseBits(1i));
    var var_1 = true;
    let var_2 = Struct_2(global0.zx, (~2850i & u_input.a.x) | select(_wgslsmith_sub_i32(2147483647i & global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, 1i, 73475i, 29438i), vec4<i32>(32519i, -32424i, 22716i, 69504i))), var_0.a.x, true));
    var var_3 = !vec3<bool>(false != any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), !((arg_2 == arg_3.b) | (arg_1.x >= arg_1.x)), func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.x, 515f, 1385f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-457f, arg_1.x, arg_1.x) * vec3<f32>(-741f, arg_1.x, arg_1.x)))), Struct_1(~arg_3.a, ~45972u), firstLeadingBit(arg_2)));
    return arg_3;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), 1042f, false)));
    let var_1 = !vec3<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false))), 61175u <= arg_0.b, all(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true))));
    global2 = array<i32, 15>();
    global0 = abs(vec4<i32>(firstTrailingBit(-3267i), 7737i, global2[_wgslsmith_index_u32(~countOneBits(abs(0u)), 15u)], ~22944i));
    var var_2 = select(!vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, !(true | var_1.x), any(select(vec2<bool>(false, true), vec2<bool>(true, var_1.x), select(vec2<bool>(false, var_1.x), vec2<bool>(false, false), vec2<bool>(var_1.x, var_1.x))))), !func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 266f, -1586f) * vec3<f32>(arg_2.x, arg_2.x, -644f)))), Struct_1(arg_0.a, arg_0.a.x), 35482u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1061f, -402f)) + _wgslsmith_f_op_f32(min(1083f, -1000f))), _wgslsmith_f_op_f32(-1169f + -308f)))) <= arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(func_4(func_1(_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(44603u, 15u)], global0.x), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(372f, -726f))), 4294967295u, Struct_1(vec4<u32>(25709u, 4294967295u, 25376u, 0u), 5769u)), 1f, _wgslsmith_f_op_vec2_f32(vec2<f32>(1198f, 963f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1294f, 1132f)))) | any(vec3<bool>(select(false, false, false), func_4(Struct_1(vec4<u32>(0u, 39062u, 44793u, 0u), 4294967295u), 734f, vec2<f32>(638f, -1298f)), true)));
    global0 = ~(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)]), -vec3<i32>(global0.x, -1i, 0i)), ~u_input.b, reverseBits(_wgslsmith_sub_i32(7662i, 2147483647i)), 0i) & -min(firstTrailingBit(vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], 27465i, global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(1u, 15u)])), _wgslsmith_mod_vec4_i32(vec4<i32>(19699i, global2[_wgslsmith_index_u32(0u, 15u)], 2147483647i, -53892i), vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(37766u, 15u)], u_input.a.x, u_input.b))));
    global0 = select(vec4<i32>(~min(u_input.b, global2[_wgslsmith_index_u32(3774u, 15u)]), -max(global2[_wgslsmith_index_u32(3350u, 15u)], -24440i), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, 6600u), 67434u, 1u), 15u)], -14241i) ^ vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(17398i, 2147483647i, -2147483647i, -20786i) | vec4<i32>(global2[_wgslsmith_index_u32(83094u, 15u)], -2147483647i, -48805i, -2147483647i), max(vec4<i32>(global0.x, -6938i, u_input.a.x, u_input.a.x), vec4<i32>(global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)], -2147483647i, 48566i))), 1i, u_input.b, _wgslsmith_add_i32(43160i, -global2[_wgslsmith_index_u32(0u, 15u)])), _wgslsmith_sub_vec4_i32(~vec4<i32>(-6958i, 1i, u_input.b, abs(global2[_wgslsmith_index_u32(51659u, 15u)])), vec4<i32>(-38450i & -global2[_wgslsmith_index_u32(1u, 15u)], i32(-1i) * -u_input.b, ~(global2[_wgslsmith_index_u32(41158u, 15u)] | global0.x), global0.x)), !all(select(vec2<bool>(true, true), vec2<bool>(false, false), false)) & true);
    let var_0 = Struct_1(vec4<u32>(~1u, max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 10216u, 4294967295u) >> (vec3<u32>(1u, 1u, 0u) % vec3<u32>(32u)), ~vec3<u32>(37937u, 0u, 93219u)), abs(max(61319u, 56331u))), func_1(-16747i, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1190f, 2356f), vec2<f32>(-562f, 1762f))), 36695u, Struct_1(vec4<u32>(3414u, 8807u, 1u, 4294967295u), 7596u)).a.x ^ 1u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)));
    var var_1 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(var_0.a, min(~vec4<u32>(4294967295u, 53308u, var_0.a.x, 16823u), ~var_0.a)), _wgslsmith_dot_vec2_u32(firstLeadingBit(var_0.a.xx) & firstTrailingBit(var_0.a.zw), ~(~vec2<u32>(var_0.b, 22667u))));
    let var_2 = var_0.a;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(470f + _wgslsmith_f_op_f32(round(-702f))));
    var_3 = -627f;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, u_input.a.x);
}

