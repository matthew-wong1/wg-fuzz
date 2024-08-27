struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1;

var<private> global2: array<u32, 27>;

var<private> global3: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(53438u, 1i), Struct_1(0u, 0i), Struct_1(1u, 0i), Struct_1(1u, 16617i), Struct_1(0u, 0i), Struct_1(0u, -1i), Struct_1(13242u, 1758i), Struct_1(1u, 1i), Struct_1(25533u, -1i), Struct_1(1u, 28309i), Struct_1(17270u, 2147483647i), Struct_1(1u, i32(-2147483648)), Struct_1(4294967295u, -1i), Struct_1(4294967295u, 5955i), Struct_1(9322u, 46293i), Struct_1(1u, -6647i), Struct_1(1u, i32(-2147483648)), Struct_1(20746u, -21539i));

var<private> global4: array<i32, 12> = array<i32, 12>(21646i, 2147483647i, 2147483647i, 2147483647i, -964i, 768i, 21548i, -1i, 2193i, 2147483647i, i32(-2147483648), -1i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    var var_0 = vec2<i32>(~(~global1.b | _wgslsmith_dot_vec4_i32(u_input.c, u_input.c)), 32298i);
    return !select(!vec3<bool>(true, true, any(vec4<bool>(false, false, true, true))), vec3<bool>(true, true, true), true);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = all(!func_3());
    global1 = Struct_1(abs(~_wgslsmith_div_u32(global2[_wgslsmith_index_u32(arg_2.a, 27u)], _wgslsmith_sub_u32(global1.a, 1u))), -27002i);
    var var_1 = var_0;
    let var_2 = u_input.d;
    let var_3 = Struct_1(1u & _wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(112284u, var_2.x, 1u, arg_2.a), vec4<u32>(36875u, arg_3.a, 16455u, arg_2.a)), vec4<u32>(u_input.d.x, 0u, u_input.e, u_input.e))), u_input.c.x);
    return arg_1.x;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec4<f32>(1714f, arg_1, 1295f, 1100f)))))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -466f, arg_1, arg_1) + vec4<f32>(arg_1, arg_1, 949f, arg_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -455f, arg_1, arg_1)))))));
    let var_1 = Struct_1(1u, countOneBits(arg_2.b));
    let var_2 = ~4294967295u;
    global3 = array<Struct_1, 18>();
    var var_3 = vec4<i32>(abs(min(28638i, -(~30703i))), u_input.b, 26648i, countOneBits(2147483647i));
    return global3[_wgslsmith_index_u32(4294967295u, 18u)];
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: i32, arg_3: Struct_1) -> f32 {
    global1 = func_4(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(746f)) * _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(arg_0, vec3<f32>(arg_0.x, 1000f, arg_0.x), global3[_wgslsmith_index_u32(0u, 18u)], Struct_1(4294967295u, 0i))))))), Struct_1(global1.a, -1i));
    var var_0 = ~(~countOneBits(arg_2)) > (_wgslsmith_add_i32(-max(2147483647i, global1.b), _wgslsmith_dot_vec2_i32(u_input.c.zy, select(vec2<i32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_3.a, 27u)], 12u)], global1.b), u_input.c.xw, true))) & arg_2);
    var var_1 = -1599f;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-435f, -1072f)) + vec2<f32>(_wgslsmith_f_op_f32(trunc(-2025f)), -717f)));
    var var_3 = arg_3;
    return _wgslsmith_f_op_f32(abs(-167f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(~5389u, 18u)];
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(535f, -1000f) - _wgslsmith_f_op_f32(1399f - -647f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(985f - -546f) + -1000f))) * _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(375f, -965f), vec2<f32>(1150f, -573f))), true, -25668i, global3[_wgslsmith_index_u32(12957u, 18u)]))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-213f, 797f))), vec2<f32>(-342f, 692f))), true, reverseBits(_wgslsmith_add_i32(-1i, global1.b)), func_4(any(vec2<bool>(false, false)), 1039f, global3[_wgslsmith_index_u32(2703u, 18u)]))), _wgslsmith_div_f32(-869f, _wgslsmith_f_op_f32(-391f - _wgslsmith_f_op_f32(abs(-462f))))));
    let var_2 = select(vec2<bool>(select(all(vec2<bool>(true, false)), true, select(any(vec2<bool>(true, false)), func_3().x, false)), !(-1i > _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 21006i, var_0.b), vec3<i32>(2147483647i, 27325i, -2147483647i)))), vec2<bool>(true, true), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), false)), true)));
    var var_3 = func_4(true, _wgslsmith_f_op_f32(f32(-1f) * -849f), func_4(true || var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1, var_1, var_2.x))) + var_1), func_4(false, _wgslsmith_f_op_f32(-var_1), func_4(!var_2.x, -405f, global3[_wgslsmith_index_u32(~1u, 18u)]))));
    global4 = array<i32, 12>();
    let var_4 = func_4(!func_3().x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, var_1) - _wgslsmith_f_op_f32(var_1 * -417f)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(196f, var_1) + _wgslsmith_f_op_f32(-var_1))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, 558f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1, var_1) + _wgslsmith_f_op_f32(abs(var_1)))))), func_4(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_f_op_f32(-var_1)), func_4(true, var_1, global3[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(var_3.a, global1.a)), 18u)])));
    global0 = all(vec2<bool>(var_2.x, (209f > _wgslsmith_f_op_f32(575f + var_1)) | var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.b, 419f, (select(-29745i, _wgslsmith_sub_i32(var_3.b, -8041i), var_2.x) << (~1968u % 32u)) >> ((~firstLeadingBit(var_3.a) | ~firstTrailingBit(global1.a)) % 32u), vec2<f32>(var_1, _wgslsmith_f_op_f32(abs(-296f))));
}

