struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(532f, -131f);

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec3<bool>(false, false, false), true), Struct_1(vec3<bool>(false, false, false), false), Struct_1(vec3<bool>(true, false, false), false), Struct_1(vec3<bool>(false, true, true), false), Struct_1(vec3<bool>(false, false, true), true), Struct_1(vec3<bool>(false, true, false), false), Struct_1(vec3<bool>(false, false, false), false), Struct_1(vec3<bool>(false, false, true), false), Struct_1(vec3<bool>(true, false, true), false), Struct_1(vec3<bool>(false, true, false), false), Struct_1(vec3<bool>(true, false, false), true), Struct_1(vec3<bool>(true, true, true), false), Struct_1(vec3<bool>(false, false, true), false), Struct_1(vec3<bool>(true, false, false), false));

var<private> global2: array<vec3<bool>, 22>;

var<private> global3: u32;

var<private> global4: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec3<bool>(false, true, true), true), Struct_1(vec3<bool>(false, false, true), true), Struct_1(vec3<bool>(false, true, false), false), Struct_1(vec3<bool>(false, true, false), false), Struct_1(vec3<bool>(true, false, true), false), Struct_1(vec3<bool>(true, false, true), false), Struct_1(vec3<bool>(false, true, true), true), Struct_1(vec3<bool>(true, false, true), false), Struct_1(vec3<bool>(true, true, false), false), Struct_1(vec3<bool>(true, false, false), true), Struct_1(vec3<bool>(true, false, true), false), Struct_1(vec3<bool>(false, false, true), true), Struct_1(vec3<bool>(true, false, true), true), Struct_1(vec3<bool>(false, true, true), false), Struct_1(vec3<bool>(false, true, false), true), Struct_1(vec3<bool>(false, false, true), true));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> f32 {
    let var_0 = ~(~39300u);
    global2 = array<vec3<bool>, 22>();
    global4 = array<Struct_1, 16>();
    global2 = array<vec3<bool>, 22>();
    var var_1 = global0.x;
    return global0.x;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = select(!arg_2.a, !select(select(!global2[_wgslsmith_index_u32(1u, 22u)], select(vec3<bool>(false, true, false), vec3<bool>(arg_2.b, false, false), false), any(arg_2.a)), !global2[_wgslsmith_index_u32(~27368u, 22u)], arg_2.b), !(!(any(arg_2.a) == (-25044i == u_input.a))));
    global2 = array<vec3<bool>, 22>();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(627f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global4[_wgslsmith_index_u32(~51282u, 16u)], vec4<i32>(77856i, u_input.a, u_input.a, u_input.a)))))));
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(4294967295u, 22u)], (arg_0 & arg_2.a.x) && true);
    global3 = _wgslsmith_dot_vec4_u32(~vec4<u32>(~(~35992u), _wgslsmith_mult_u32(~4294967295u, 9320u), ~43908u, 748u), reverseBits(~max(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(100542u, 13406u, 1u, 4294967295u))));
    return var_1.a;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    return Struct_1(select(vec3<bool>(true, arg_3.b, arg_2.a.x), select(arg_1.a, arg_3.a, all(!vec4<bool>(true, arg_1.b, false, true))), true), select(any(vec2<bool>(any(vec3<bool>(arg_2.a.x, true, arg_1.a.x)), true)), arg_2.a.x, arg_0 < _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = !(!select(vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(4294967295u, 22u)], arg_0.a));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(floor(1384f)), 1323f) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -3123f, global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(789f, -2918f, global0.x)))))));
    global4 = array<Struct_1, 16>();
    return Struct_1(func_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, global0.x, arg_0.a.x))))), func_4(_wgslsmith_f_op_f32(-global0.x), Struct_1(!vec3<bool>(var_0.x, false, false), any(vec3<bool>(var_0.x, true, false))), func_4(_wgslsmith_f_op_f32(-338f * 1935f), func_4(-916f, arg_0, Struct_1(vec3<bool>(false, var_0.x, var_0.x), var_0.x), Struct_1(vec3<bool>(arg_0.a.x, false, arg_0.b), var_0.x)), Struct_1(vec3<bool>(true, var_0.x, true), true), func_4(1429f, global4[_wgslsmith_index_u32(arg_1.x, 16u)], global4[_wgslsmith_index_u32(arg_1.x, 16u)], global1[_wgslsmith_index_u32(4294967295u, 14u)])), Struct_1(arg_0.a, arg_0.b)), func_4(_wgslsmith_f_op_f32(f32(-1f) * -838f), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, arg_1.x, 4294967295u, 33791u), vec4<u32>(arg_1.x, 0u, arg_1.x, arg_1.x)), ~arg_1), 14u)], arg_0, func_4(-932f, global1[_wgslsmith_index_u32(arg_1.x, 14u)], func_4(global0.x, global4[_wgslsmith_index_u32(33061u, 16u)], global1[_wgslsmith_index_u32(10481u, 14u)], global4[_wgslsmith_index_u32(4294967295u, 16u)]), func_4(var_1.x, Struct_1(arg_0.a, false), Struct_1(global2[_wgslsmith_index_u32(arg_1.x, 22u)], false), Struct_1(arg_0.a, var_0.x)))), Struct_1(vec3<bool>(all(vec4<bool>(false, var_0.x, arg_0.b, false)), func_2(var_0.x, vec2<f32>(1325f, global0.x), arg_0).x, var_0.x), var_0.x)).a, true);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> i32 {
    global2 = array<vec3<bool>, 22>();
    let var_0 = func_5(func_4(global0.x, Struct_1(global2[_wgslsmith_index_u32(arg_2, 22u)], arg_1.a.x), Struct_1(select(!global2[_wgslsmith_index_u32(arg_2, 22u)], func_2(arg_0.x, vec2<f32>(global0.x, global0.x), arg_1), !global2[_wgslsmith_index_u32(arg_2, 22u)]), true), global4[_wgslsmith_index_u32(arg_2, 16u)]), firstTrailingBit(firstLeadingBit(~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2, arg_2, arg_2, 4294967295u), vec4<u32>(arg_2, 4294967295u, 61463u, 4294967295u)))));
    global3 = 1u;
    let var_1 = global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, ~arg_2) << (select(vec2<u32>(arg_2, arg_2), firstTrailingBit(vec2<u32>(arg_2, arg_2)), func_4(global0.x, Struct_1(var_0.a, arg_0.x), arg_1, var_0).a.zy) % vec2<u32>(32u)), ~countOneBits(countOneBits(vec2<u32>(30890u, arg_2)))), 16u)];
    var var_2 = ~arg_2;
    return _wgslsmith_add_i32(-select(-(u_input.a ^ 13107i), u_input.a, false), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -12907i, -7520i, u_input.a), vec4<i32>(1i, u_input.a, u_input.a, u_input.a)), select(vec4<i32>(20783i, -1i, 34888i, u_input.a), vec4<i32>(2147483647i, 6693i, 18120i, u_input.a), true)) | vec4<i32>(func_1(vec2<bool>(false, false), Struct_1(vec3<bool>(true, true, true), true), 4294967295u), 2147483647i, u_input.a, func_1(vec2<bool>(false, false), Struct_1(vec3<bool>(true, true, true), false), 27039u)), _wgslsmith_add_vec4_i32(~min(vec4<i32>(53012i, u_input.a, u_input.a, -7610i), vec4<i32>(2214i, 2147483647i, -57739i, u_input.a)), firstLeadingBit(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a)))), vec4<i32>(~(~u_input.a), 0i, 7759i, -u_input.a));
    var var_1 = func_2(func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -769f), -500f)), func_5(Struct_1(vec3<bool>(false, false, true), true), ~vec4<u32>(4294967295u, 1u, 1u, 1u)), func_4(_wgslsmith_f_op_f32(-2689f + -422f), func_5(global4[_wgslsmith_index_u32(max(101408u, 0u), 16u)], vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(!global2[_wgslsmith_index_u32(0u, 22u)], any(vec4<bool>(false, false, true, false))), func_4(global0.x, Struct_1(global2[_wgslsmith_index_u32(4294967295u, 22u)], true), global1[_wgslsmith_index_u32(~72623u, 14u)], Struct_1(global2[_wgslsmith_index_u32(1u, 22u)], false))), global1[_wgslsmith_index_u32(~34662u, 14u)]).b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, _wgslsmith_f_op_f32(-333f * _wgslsmith_f_op_f32(638f * global0.x)))), Struct_1(global2[_wgslsmith_index_u32(min(~reverseBits(39129u), ~1u), 22u)], true)).x;
    global4 = array<Struct_1, 16>();
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, ~(~(~1u))), 14u)];
    var var_3 = _wgslsmith_sub_u32(45829u, 26950u);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_div_vec3_u32(~firstTrailingBit(~vec3<u32>(57994u, 1u, 4294967295u)), ~(~firstLeadingBit(vec3<u32>(57042u, 0u, 103161u)))), 0u, min(~min(u_input.a, reverseBits(-1i)), _wgslsmith_sub_i32(1i, u_input.a << (1u % 32u)) << (~max(0u, 4294967295u) % 32u)));
}

