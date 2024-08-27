struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(1013f, 153f, -777f, -167f, -1604f, 1103f, -1000f, -2304f, 747f, 631f, 1734f, 126f, 1304f, 770f, 565f, -1110f, -620f, -1000f, -1000f, 1000f, -1200f, 1933f, 885f, -827f);

var<private> global1: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(false, vec3<bool>(false, false, false)), Struct_2(false, vec3<bool>(false, true, false)), Struct_2(true, vec3<bool>(true, true, false)), Struct_2(false, vec3<bool>(true, true, true)), Struct_2(true, vec3<bool>(true, false, true)), Struct_2(true, vec3<bool>(true, false, false)), Struct_2(false, vec3<bool>(true, false, true)), Struct_2(true, vec3<bool>(false, true, true)), Struct_2(false, vec3<bool>(true, true, false)), Struct_2(true, vec3<bool>(true, false, true)), Struct_2(false, vec3<bool>(false, true, true)), Struct_2(true, vec3<bool>(false, true, true)), Struct_2(false, vec3<bool>(false, false, false)));

var<private> global2: array<Struct_3, 21> = array<Struct_3, 21>(Struct_3(vec4<f32>(1904f, -328f, 561f, 1617f), Struct_2(false, vec3<bool>(false, true, true)), Struct_2(false, vec3<bool>(false, true, false)), -12673i), Struct_3(vec4<f32>(316f, 1220f, -2277f, -977f), Struct_2(true, vec3<bool>(false, false, true)), Struct_2(true, vec3<bool>(false, true, false)), 1951i), Struct_3(vec4<f32>(-528f, 627f, 1000f, 1233f), Struct_2(true, vec3<bool>(false, true, true)), Struct_2(true, vec3<bool>(false, true, true)), 1i), Struct_3(vec4<f32>(1159f, 1282f, -1479f, -564f), Struct_2(true, vec3<bool>(true, false, true)), Struct_2(false, vec3<bool>(false, true, false)), 3560i), Struct_3(vec4<f32>(952f, -162f, -237f, -502f), Struct_2(true, vec3<bool>(false, true, true)), Struct_2(true, vec3<bool>(true, true, true)), 10059i), Struct_3(vec4<f32>(-635f, 466f, -818f, -843f), Struct_2(true, vec3<bool>(false, false, false)), Struct_2(false, vec3<bool>(true, false, false)), 6778i), Struct_3(vec4<f32>(1858f, -1343f, -421f, 982f), Struct_2(true, vec3<bool>(true, false, false)), Struct_2(true, vec3<bool>(true, false, true)), 2147483647i), Struct_3(vec4<f32>(-386f, 853f, -1000f, 100f), Struct_2(true, vec3<bool>(false, true, false)), Struct_2(true, vec3<bool>(false, false, true)), -41880i), Struct_3(vec4<f32>(-409f, 841f, -1336f, 186f), Struct_2(false, vec3<bool>(false, true, true)), Struct_2(false, vec3<bool>(false, false, false)), 2147483647i), Struct_3(vec4<f32>(1040f, -1000f, 121f, -1167f), Struct_2(false, vec3<bool>(false, true, false)), Struct_2(true, vec3<bool>(true, false, false)), 1i), Struct_3(vec4<f32>(550f, 1000f, -291f, 1040f), Struct_2(true, vec3<bool>(true, true, false)), Struct_2(true, vec3<bool>(false, true, false)), 36013i), Struct_3(vec4<f32>(-488f, 111f, 336f, -868f), Struct_2(false, vec3<bool>(false, false, false)), Struct_2(true, vec3<bool>(false, true, true)), -1i), Struct_3(vec4<f32>(-532f, 313f, -655f, 1000f), Struct_2(false, vec3<bool>(true, true, false)), Struct_2(true, vec3<bool>(true, true, false)), -1i), Struct_3(vec4<f32>(-472f, 797f, 971f, 1000f), Struct_2(true, vec3<bool>(true, true, true)), Struct_2(false, vec3<bool>(true, true, true)), -25387i), Struct_3(vec4<f32>(1225f, -1448f, -170f, 987f), Struct_2(true, vec3<bool>(true, true, true)), Struct_2(true, vec3<bool>(false, false, true)), 2147483647i), Struct_3(vec4<f32>(-1181f, 998f, 524f, -323f), Struct_2(true, vec3<bool>(false, false, true)), Struct_2(false, vec3<bool>(true, true, true)), 11601i), Struct_3(vec4<f32>(1321f, -115f, -1307f, -877f), Struct_2(true, vec3<bool>(true, true, false)), Struct_2(true, vec3<bool>(true, false, true)), 291i), Struct_3(vec4<f32>(-139f, 1161f, -1815f, -1075f), Struct_2(false, vec3<bool>(false, true, true)), Struct_2(true, vec3<bool>(true, false, false)), -37546i), Struct_3(vec4<f32>(-1000f, 1265f, -1524f, 1400f), Struct_2(false, vec3<bool>(true, true, true)), Struct_2(true, vec3<bool>(false, true, true)), -1i), Struct_3(vec4<f32>(206f, 1000f, -897f, -1037f), Struct_2(false, vec3<bool>(false, false, true)), Struct_2(true, vec3<bool>(true, true, false)), -13437i), Struct_3(vec4<f32>(-1166f, 1200f, 1085f, 376f), Struct_2(false, vec3<bool>(true, false, false)), Struct_2(true, vec3<bool>(false, true, false)), -30420i));

var<private> global3: vec4<f32> = vec4<f32>(-1294f, 913f, -1357f, -267f);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(u_input.c.x & ~(~0u), 13u)];
    global2 = array<Struct_3, 21>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-1572f * _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.a.x, 24u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 24u)] - -176f), global0[_wgslsmith_index_u32(abs(9910u), 24u)]), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1253f + -781f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1165f, 2122f))))));
    global0 = array<f32, 24>();
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.x * 1597f))), 1f);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-105f, _wgslsmith_f_op_f32(-var_1.a.x), var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.x) - _wgslsmith_f_op_f32(trunc(552f))))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: bool) -> i32 {
    global0 = array<f32, 24>();
    var var_0 = Struct_2(arg_3, !(!vec3<bool>(true, true, !arg_3)));
    global0 = array<f32, 24>();
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1, reverseBits(~abs(u_input.c.yw)) | vec2<u32>(_wgslsmith_div_u32(70052u, firstTrailingBit(arg_1.x)), 1u)), 21u)];
    global2 = array<Struct_3, 21>();
    return var_1.d;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> vec3<bool> {
    global0 = array<f32, 24>();
    var var_0 = vec2<i32>(_wgslsmith_sub_i32(4771i, func_3(_wgslsmith_mod_vec2_i32(max(arg_3.yy, arg_3.yy), vec2<i32>(arg_3.x, arg_3.x)), ~arg_1.yy, func_2(), true)), -countOneBits(~13138i));
    var var_1 = arg_1;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global3.x)) + _wgslsmith_f_op_f32(-arg_0.a.x)) >= 895f, !vec3<bool>(any(vec3<bool>(true, false, true)), all(vec2<bool>(true, true)), any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), true))));
    global3 = vec4<f32>(global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(reverseBits(arg_1), ~vec3<u32>(var_1.x, arg_1.x, 10308u))), 24u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1024f) * 1617f), global0[_wgslsmith_index_u32(firstLeadingBit(abs(u_input.b)), 24u)])), _wgslsmith_div_f32(arg_0.a.x, 424f))), -1216f, global3.x);
    return var_2.b;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-808f * _wgslsmith_f_op_f32(floor(438f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(481f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(460f * global3.x)))), _wgslsmith_f_op_f32(round(arg_2.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1151f));
    global2 = array<Struct_3, 21>();
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(arg_1.a - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.a)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.a.x, -1611f, arg_0.a.x, arg_2.a.x))))), global1[_wgslsmith_index_u32(firstTrailingBit(~1u), 13u)], Struct_2(arg_1.c.a, select(!(!vec3<bool>(false, false, arg_1.b.b.x)), arg_1.c.b, vec3<bool>(arg_2.c.b.x || true, select(false, false, arg_2.b.a), arg_0.d > 2147483647i))), arg_2.d);
    var var_1 = Struct_2(!arg_2.b.b.x, select(!arg_1.b.b, select(vec3<bool>(var_0.c.b.x && arg_0.c.b.x, true, true), vec3<bool>(true, false, true), vec3<bool>(arg_0.c.a, !arg_0.b.a, true)), var_0.c.b));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.a * vec4<f32>(arg_2.a.x, 1355f, 2169f, arg_1.a.x)) + _wgslsmith_f_op_vec4_f32(exp2(arg_2.a)))))), Struct_2(true, !(!vec3<bool>(false, arg_0.c.b.x, var_1.a))), Struct_2(select(all(var_1.b.zz) || arg_0.c.b.x, true || !var_1.a, true), vec3<bool>(any(vec3<bool>(false, true, arg_2.c.a)), false | !arg_2.b.b.x, arg_2.c.a)), countOneBits(-1i));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 13>();
    global2 = array<Struct_3, 21>();
    let var_0 = func_4(Struct_3(vec4<f32>(-608f, _wgslsmith_f_op_f32(591f - _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_div_f32(2547f, -1000f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 24u)] + -119f)), Struct_2(0u > u_input.c.x, select(func_1(Struct_1(vec4<f32>(global3.x, -522f, global3.x, 315f)), u_input.a, global3.zyz, vec3<i32>(2147483647i, 0i, 2147483647i)), vec3<bool>(false, true, false), true)), Struct_2(true, func_1(Struct_1(vec4<f32>(global3.x, -330f, 248f, -567f)), vec3<u32>(4294967295u, 32135u, u_input.c.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 1318f, global3.x)), countOneBits(vec3<i32>(-43087i, 9451i, 21587i)))), select(~(-19063i), -14652i, true) & _wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(-8466i, -3229i))), Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 291f, 910f, global0[_wgslsmith_index_u32(u_input.b, 24u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(-858f, 1000f, global0[_wgslsmith_index_u32(u_input.c.x, 24u)], 754f) * vec4<f32>(global3.x, global0[_wgslsmith_index_u32(97011u, 24u)], global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 571f)), true))), global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_dot_vec2_u32(u_input.a.yy, _wgslsmith_mod_vec2_u32(u_input.c.yw, vec2<u32>(u_input.b, 1u)))), 13u)], global1[_wgslsmith_index_u32(0u, 13u)], _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(0i, -2147483647i)), select(vec2<i32>(-2147483647i, 1i), vec2<i32>(1281i, -17449i), vec2<bool>(false, true))), abs(firstTrailingBit(vec2<i32>(2147483647i, 7394i))))), global2[_wgslsmith_index_u32(4294967295u, 21u)]);
    let var_1 = select(vec3<bool>(any(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), true)), _wgslsmith_mult_u32(u_input.a.x, ~46160u) >= 1u, any(vec3<bool>(true, true, true))), !vec3<bool>(!any(vec4<bool>(false, false, true, false)), true, true), vec3<bool>(any(!select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), all(!select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), true))));
    global3 = vec4<f32>(-635f, _wgslsmith_f_op_f32(547f - global3.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-363f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-876f, global0[_wgslsmith_index_u32(1u, 24u)])) - 823f))));
    var var_2 = ~func_3(vec2<i32>(_wgslsmith_clamp_i32(countOneBits(12281i), max(33558i, -2147483647i), 39111i >> (u_input.b % 32u)), 1i), u_input.a.xy, func_2(), var_1.x);
    var_2 = min(~1i, -17317i);
    global3 = var_0.a;
    let var_3 = var_1.zx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, _wgslsmith_f_op_f32(1771f - _wgslsmith_f_op_f32(floor(-222f))))), var_0.a.zyy, _wgslsmith_sub_vec3_i32(reverseBits(~vec3<i32>(0i, 2147483647i, 1i)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(17627i, 0i, -16631i), vec3<i32>(0i, -14264i, 1i)), vec3<i32>(1i, 0i, 1i), all(vec4<bool>(true, true, var_1.x, true)))) << (~abs(u_input.c.xzw) % vec3<u32>(32u)));
}

