struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32;

var<private> global2: array<i32, 11>;

var<private> global3: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<u32>(48636u, 1u), true, vec3<f32>(-446f, -467f, 1310f), 24539u), Struct_1(vec2<u32>(8466u, 4294967295u), false, vec3<f32>(488f, 599f, 610f), 51743u), Struct_1(vec2<u32>(0u, 36948u), false, vec3<f32>(-1348f, 1895f, -862f), 4294967295u), Struct_1(vec2<u32>(0u, 34532u), true, vec3<f32>(590f, -691f, 216f), 26201u), Struct_1(vec2<u32>(55594u, 21445u), true, vec3<f32>(-2162f, -183f, 699f), 0u), Struct_1(vec2<u32>(0u, 4294967295u), false, vec3<f32>(1782f, 808f, 601f), 1662u), Struct_1(vec2<u32>(0u, 4294967295u), false, vec3<f32>(-181f, 404f, -969f), 1u), Struct_1(vec2<u32>(4294967295u, 44041u), true, vec3<f32>(-1714f, 1754f, 1386f), 10598u), Struct_1(vec2<u32>(21170u, 1u), true, vec3<f32>(-1316f, -1283f, 171f), 59037u), Struct_1(vec2<u32>(0u, 0u), false, vec3<f32>(629f, -506f, 1021f), 19963u), Struct_1(vec2<u32>(11705u, 17395u), false, vec3<f32>(-470f, 473f, 760f), 10949u), Struct_1(vec2<u32>(0u, 75521u), false, vec3<f32>(1177f, 1000f, -854f), 16410u), Struct_1(vec2<u32>(0u, 72537u), false, vec3<f32>(-254f, -517f, 377f), 12605u), Struct_1(vec2<u32>(1u, 1u), false, vec3<f32>(-113f, -570f, -270f), 0u), Struct_1(vec2<u32>(4294967295u, 55864u), false, vec3<f32>(-1545f, -1282f, -1173f), 4294967295u), Struct_1(vec2<u32>(0u, 6917u), false, vec3<f32>(-251f, -335f, -903f), 54600u), Struct_1(vec2<u32>(4294967295u, 34008u), false, vec3<f32>(2145f, -409f, -511f), 52719u), Struct_1(vec2<u32>(17986u, 0u), false, vec3<f32>(232f, 1035f, -171f), 82280u), Struct_1(vec2<u32>(1u, 118175u), false, vec3<f32>(-160f, 863f, 397f), 1u), Struct_1(vec2<u32>(25454u, 1u), true, vec3<f32>(182f, -229f, 1970f), 25067u), Struct_1(vec2<u32>(53472u, 2061u), true, vec3<f32>(1000f, 1000f, -170f), 0u), Struct_1(vec2<u32>(4294967295u, 30334u), true, vec3<f32>(-748f, -1437f, -1690f), 47163u), Struct_1(vec2<u32>(0u, 134165u), true, vec3<f32>(1494f, -1000f, -1041f), 4294967295u), Struct_1(vec2<u32>(4294967295u, 1u), true, vec3<f32>(-1946f, 382f, 1000f), 0u), Struct_1(vec2<u32>(4294967295u, 37725u), true, vec3<f32>(-418f, 974f, -180f), 0u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> f32 {
    global1 = arg_0.c.x;
    global0 = global3[_wgslsmith_index_u32(firstTrailingBit(u_input.c.x), 25u)];
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2512f, -2861f, 443f, -1401f)))) - vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.c.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.c.x))))), 530f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.c.x)))));
    global0 = Struct_1(~firstTrailingBit(arg_0.a), true, arg_0.c, ~(~(~arg_0.a.x & 53976u)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.x) + 697f);
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(max(global0.a, global0.a), global0.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(global0.c))))))), 1u);
    let var_1 = global0.a.x;
    let var_2 = ~vec3<i32>(u_input.d.x, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(global2[_wgslsmith_index_u32(0u, 11u)], global2[_wgslsmith_index_u32(1u, 11u)], u_input.a, global2[_wgslsmith_index_u32(4195u, 11u)]), abs(vec4<i32>(2147483647i, -20106i, u_input.b, -41889i))), max(firstLeadingBit(vec4<i32>(u_input.b, 1i, global2[_wgslsmith_index_u32(global0.a.x, 11u)], u_input.a)), vec4<i32>(3330i, -12300i, 57262i, global2[_wgslsmith_index_u32(var_0.d, 11u)]) | vec4<i32>(51895i, 1i, 75970i, global2[_wgslsmith_index_u32(global0.a.x, 11u)]))), _wgslsmith_mod_i32(20614i, global2[_wgslsmith_index_u32(~(~global0.d), 11u)]));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(global0.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2610f) * _wgslsmith_f_op_f32(abs(global0.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(1u, 25u)], var_0.a.x, Struct_1(u_input.c, true, vec3<f32>(-776f, var_0.c.x, var_0.c.x), 39862u))) - -108f) + global0.c.x)));
    var var_3 = global3[_wgslsmith_index_u32(global0.d, 25u)];
    return _wgslsmith_mult_u32(var_3.d, _wgslsmith_mod_u32(u_input.c.x, countOneBits(select(var_3.a.x, 41363u, global0.b)) ^ u_input.c.x));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>) -> u32 {
    global2 = array<i32, 11>();
    var var_0 = _wgslsmith_f_op_f32(sign(526f));
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_div_u32(arg_0.a.x, ~1u) ^ ~func_2(), _wgslsmith_mod_u32(~arg_2.x, abs(u_input.c.x) | ~arg_2.x)), any(select(select(vec3<bool>(arg_0.b, arg_0.b, true), vec3<bool>(global0.b, arg_0.b, global0.b), vec3<bool>(false, false, arg_0.b)), !vec3<bool>(global0.b, arg_0.b, true), vec3<bool>(any(vec2<bool>(arg_0.b, true)), arg_0.b != global0.b, true))), global0.c, 14767u);
    global2 = array<i32, 11>();
    global0 = Struct_1(vec2<u32>(~(~(~u_input.c.x)), global0.d), var_1.b, vec3<f32>(-409f, -1052f, global0.c.x), firstLeadingBit(65444u));
    return ~_wgslsmith_sub_u32(u_input.c.x, func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var var_1 = global0.c.x;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -356f);
    var_1 = _wgslsmith_div_f32(-194f, -984f);
    let var_3 = true;
    var var_4 = Struct_1(_wgslsmith_add_vec2_u32(global0.a, ~vec2<u32>(16698u ^ u_input.c.x, u_input.c.x)), !var_3, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global0.c)), global0.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2, 142f, 1268f))) - _wgslsmith_div_vec3_f32(global0.c, _wgslsmith_f_op_vec3_f32(-global0.c)))), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d, 58211u, u_input.c.x), vec3<u32>(53211u, global0.d, 0u))), 49445u, select(global0.a.x >> (global0.d % 32u), u_input.c.x | 0u, -243f < global0.c.x), countOneBits(~26058u)), vec4<u32>(global0.d, ~(~u_input.c.x), 27037u, ~func_1(global3[_wgslsmith_index_u32(1u, 25u)], var_2, global0.a))));
    let var_5 = min(vec4<i32>(abs(u_input.d.x), _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(abs(~u_input.c.x), 11u)], _wgslsmith_mult_i32(-36912i, firstTrailingBit(50782i))), ~global2[_wgslsmith_index_u32(u_input.c.x, 11u)] & u_input.d.x, i32(-1i) * -global2[_wgslsmith_index_u32(func_2(), 11u)]), -vec4<i32>(i32(-1i) * -u_input.b, _wgslsmith_div_i32(global2[_wgslsmith_index_u32(~u_input.c.x, 11u)], -1i), 2147483647i, countOneBits(-19204i)));
    let x = u_input.a;
    s_output = StorageBuffer(13418u);
}

