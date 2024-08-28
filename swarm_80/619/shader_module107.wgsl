struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: i32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(vec3<u32>(0u, 8726u, 15734u), vec4<bool>(true, false, false, false)), Struct_3(vec3<u32>(28589u, 1u, 4294967295u), vec4<bool>(false, true, true, true)));

var<private> global1: bool = true;

var<private> global2: bool = false;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(floor(741f)))) + _wgslsmith_f_op_f32(round(-947f))) + arg_0.b.x);
    global2 = !(arg_0.c >= ~(i32(-1i) * -5610i));
    var_0 = _wgslsmith_f_op_f32(f32(-1f) * -2371f);
    var_0 = -1375f;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(215f, _wgslsmith_f_op_f32(-arg_0.b.x))), -335f, _wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1512f * -116f), arg_0.b.x)), arg_0.a, (1i <= _wgslsmith_mod_i32(0i, arg_0.d.x)) || true)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-572f, arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x)), vec3<f32>(_wgslsmith_f_op_f32(arg_0.a.x - arg_0.a.x), arg_0.a.x, _wgslsmith_f_op_f32(max(arg_0.b.x, 394f))))), vec3<f32>(-145f, _wgslsmith_f_op_f32(-arg_0.b.x), 150f)), _wgslsmith_mult_i32(-13303i, arg_2.x), arg_0.d ^ _wgslsmith_mult_vec3_i32(arg_0.d, -(vec3<i32>(-2147483647i, u_input.b.x, arg_2.x) & vec3<i32>(4959i, -2147483647i, arg_1))));
    return arg_0.a.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: bool, arg_3: u32) -> Struct_2 {
    let var_0 = Struct_2(select(!vec2<bool>(arg_2 | arg_2, false), vec2<bool>(false, all(select(vec4<bool>(arg_2, arg_2, arg_2, true), vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(true, arg_2, false, true)))), vec2<bool>(false, !arg_2)), _wgslsmith_f_op_f32(-2158f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-506f, 185f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-258f - -189f) * _wgslsmith_f_op_f32(896f * 134f)), arg_2))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 643f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1237f)), 847f, arg_2)), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(-424f, 352f, -1574f, 1446f), vec3<f32>(var_0.b, var_0.b, var_0.b), arg_0.x, vec3<i32>(arg_0.x, 47331i, -2147483647i)), arg_1.x, arg_1))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(332f, -185f)))))));
    var var_2 = abs(_wgslsmith_add_u32(arg_3, _wgslsmith_sub_u32(abs(u_input.d.x), ~arg_3)) | 42700u);
    var var_3 = 1i;
    var var_4 = arg_2;
    return Struct_2(vec2<bool>(any(vec3<bool>(var_0.a.x, true, all(vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x)))), true), -1272f);
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(arg_0.b + 821f);
    let var_1 = -min(-(~u_input.b), ~(~u_input.b)) & vec2<i32>(u_input.b.x, u_input.b.x);
    var var_2 = arg_0.a.x;
    let var_3 = vec3<bool>(true, arg_0.a.x, !(!(!arg_0.a.x)));
    let var_4 = ~u_input.c;
    return _wgslsmith_f_op_f32(ceil(var_0));
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> Struct_1 {
    global1 = all(vec3<bool>(select(arg_3.a.x, arg_2 | arg_3.a.x, true), false, max(~39322i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -1i), u_input.b)) >= ~0i));
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b - arg_3.b) * _wgslsmith_f_op_f32(-arg_3.b)), _wgslsmith_f_op_f32(-arg_0), arg_3.b, arg_3.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(102f, -330f, arg_3.b)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(130f, -1227f, arg_3.b), vec3<f32>(arg_0, 661f, arg_3.b), true)), vec3<f32>(-632f, arg_3.b, arg_3.b)))), u_input.b.x, _wgslsmith_mod_vec3_i32(max(min(vec3<i32>(-62700i, u_input.b.x, -28951i) & vec3<i32>(u_input.b.x, u_input.b.x, 47329i), -vec3<i32>(u_input.b.x, 0i, u_input.b.x)), select(-vec3<i32>(-1i, 2398i, u_input.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(32216i, u_input.b.x, -5368i), vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x)), !arg_2)), ~vec3<i32>(u_input.b.x, -u_input.b.x, -2147483647i)));
    let var_1 = func_2(vec3<i32>(83624i | _wgslsmith_dot_vec3_i32(var_0.d, vec3<i32>(-17117i, var_0.c, 0i)), reverseBits(min(var_0.c, var_0.d.x) << (1u % 32u)), firstLeadingBit(firstTrailingBit(-14039i) & max(-2147483647i, -41442i))), vec2<i32>(_wgslsmith_clamp_i32(-28744i, _wgslsmith_mod_i32(-7206i, -1385i), u_input.b.x) << (~12028u % 32u), var_0.c ^ var_0.c), arg_3.a.x, 26134u).a;
    let var_2 = _wgslsmith_sub_u32(54829u, u_input.d.x);
    var var_3 = func_2(vec3<i32>(-34264i, var_0.d.x, ~(~u_input.b.x << (~4294967295u % 32u))), vec2<i32>(-6570i, 38809i), !arg_1, ~firstLeadingBit(u_input.a)).a.x;
    return Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, 711f, var_0.b.x, 1459f)), _wgslsmith_f_op_vec4_f32(var_0.a * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-655f, 1893f, -452f, 930f))), select(!vec4<bool>(var_1.x, arg_3.a.x, arg_1, true), vec4<bool>(false, arg_1, arg_3.a.x, arg_1), var_1.x != arg_2))), var_0.a), vec3<f32>(_wgslsmith_f_op_f32(arg_3.b + -434f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b + 680f)) * arg_0), var_0.b.x), max(-_wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, u_input.b.x, 2147483647i, -16867i), vec4<i32>(var_0.c, 0i, 2147483647i, u_input.b.x)), 1i), vec3<i32>(reverseBits(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i, var_0.c, var_0.c, -37062i)), reverseBits(vec4<i32>(var_0.c, -1i, u_input.b.x, 4371i)))), u_input.b.x & -14974i, ~_wgslsmith_div_i32(16856i, _wgslsmith_div_i32(var_0.d.x, u_input.b.x))));
}

fn func_1() -> StorageBuffer {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -786f, -475f, -373f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-537f, -716f, 1339f, -461f), vec4<f32>(994f, -741f, 474f, 1207f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(148f, 937f, 685f, -1049f)))))), _wgslsmith_div_vec3_f32(vec3<f32>(1046f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1553f + -221f)), -1000f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-558f, 505f, 1000f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-2003f, 1000f, 622f), vec3<f32>(-745f, 1321f, -126f))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(-292f, -1000f, 525f), vec3<f32>(-799f, -1000f, 932f)))))), _wgslsmith_clamp_i32(3367i, u_input.b.x, 4590i), ~abs(vec3<i32>(_wgslsmith_div_i32(u_input.b.x, 2147483647i), u_input.b.x, _wgslsmith_mult_i32(-11001i, u_input.b.x))));
    var var_1 = 2996i | min(i32(-1i) * -(var_0.d.x & var_0.d.x), 0i);
    var var_2 = func_5(_wgslsmith_f_op_f32(func_4(func_2(var_0.d << (select(vec3<u32>(u_input.d.x, 0u, 52199u), vec3<u32>(u_input.a, u_input.c, 0u), true) % vec3<u32>(32u)), vec2<i32>(var_0.d.x, -var_0.d.x), true, ~(~u_input.c)))), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true)), true, func_2(-(~select(vec3<i32>(-2147483647i, 1i, 1625i), vec3<i32>(-2147483647i, var_0.c, u_input.b.x), true)), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(var_0.d.x, u_input.b.x)) | u_input.b, ~vec2<i32>(0i, u_input.b.x)), false, u_input.a));
    let var_3 = u_input.c;
    let var_4 = ~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, u_input.d.x, 21211u, 0u) << (u_input.d % vec4<u32>(32u)), u_input.d);
    return StorageBuffer(u_input.d, vec3<f32>(-585f, _wgslsmith_f_op_f32(abs(var_2.b.x)), func_5(_wgslsmith_f_op_f32(-var_0.b.x), true && all(vec4<bool>(true, true, true, false)), false & (var_2.b.x < 125f), Struct_2(vec2<bool>(false, true), _wgslsmith_f_op_f32(floor(var_2.b.x)))).a.x), var_2.d, _wgslsmith_mult_u32(var_4.x, 61844u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = false;
    let x = u_input.a;
    s_output = func_1();
}

