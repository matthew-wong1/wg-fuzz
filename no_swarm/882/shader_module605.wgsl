struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(2147483647i), Struct_3(0i), Struct_3(-29077i), Struct_3(24819i), Struct_3(1i), Struct_3(-1i), Struct_3(16875i), Struct_3(1i), Struct_3(-1i), Struct_3(1i), Struct_3(-59138i), Struct_3(2613i), Struct_3(-1i), Struct_3(1i), Struct_3(2147483647i), Struct_3(25195i), Struct_3(i32(-2147483648)), Struct_3(18123i), Struct_3(i32(-2147483648)), Struct_3(-6659i), Struct_3(-1i), Struct_3(1i), Struct_3(-1i), Struct_3(2147483647i), Struct_3(i32(-2147483648)), Struct_3(23180i), Struct_3(-1i), Struct_3(2147483647i), Struct_3(9186i), Struct_3(30833i), Struct_3(65074i));

var<private> global1: Struct_2 = Struct_2(Struct_1(true, vec4<bool>(false, true, true, false)), 1000f);

var<private> global2: Struct_3 = Struct_3(1i);

var<private> global3: vec2<f32> = vec2<f32>(821f, -430f);

var<private> global4: vec3<f32> = vec3<f32>(1364f, -1520f, -394f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<bool> {
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.zy + vec2<f32>(_wgslsmith_f_op_f32(step(global4.x, 730f)), -1000f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.xx))) - global4.xy);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) + _wgslsmith_f_op_f32(global3.x - global4.x)))), _wgslsmith_f_op_f32(round(global1.b)), global1.a.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1216f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - global3.x), _wgslsmith_f_op_f32(max(global3.x, 1f)));
    let var_1 = ~u_input.e.yw;
    global4 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(972f * -1000f))), global3.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, var_0.x))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.yxy), _wgslsmith_f_op_vec3_f32(round(var_0.wwx))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-199f, global1.b, var_0.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-2366f, 1533f, 2713f)))), ~var_1.x < 4294967295u))), var_0.yxx));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(min(var_0.x, -443f)))))), -2471f), 354f));
    return vec4<bool>(global1.a.a, select(all(global1.a.b.wx), global1.a.b.x, all(!global1.a.b)), any(select(vec2<bool>(global1.a.a, global1.a.b.x), global1.a.b.xz, vec2<bool>(true, true))), false);
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = vec3<u32>(~(~u_input.e.x), 7492u, reverseBits(~97308u));
    let var_1 = Struct_1(global1.a.a, func_3());
    var var_2 = Struct_2(Struct_1(!(!global1.a.a), vec4<bool>(var_1.b.x, !arg_0, !arg_0 != false, var_0.x <= u_input.e.x)), global3.x);
    let var_3 = select(_wgslsmith_add_vec3_u32(~(~var_0 | u_input.e.yzz), _wgslsmith_sub_vec3_u32(u_input.e.zwx & ~vec3<u32>(891u, 12934u, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, 30092u), ~vec3<u32>(14148u, var_0.x, 37204u)))), vec3<u32>(_wgslsmith_dot_vec4_u32(~u_input.e, _wgslsmith_clamp_vec4_u32(u_input.e, vec4<u32>(u_input.e.x, u_input.e.x, 56523u, var_0.x), vec4<u32>(u_input.e.x, var_0.x, var_0.x, u_input.e.x))) | 28888u, 4294967295u, ~(~u_input.e.x)), all(var_2.a.b));
    var var_4 = Struct_4(func_3(), !(!var_2.a.b.xyy), min(u_input.b | (countOneBits(vec4<i32>(u_input.b.x, global2.a, u_input.c, global2.a)) ^ ~u_input.b), -(~u_input.b)));
    return var_2.a;
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32) -> Struct_3 {
    var var_0 = Struct_2(func_2(arg_1.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 1056f, -1628f, global3.x)))))), _wgslsmith_f_op_f32(arg_2 - 528f));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2, var_0.b, -123f, var_0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-913f, var_0.b, global3.x, global1.b))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.x, arg_2, global4.x, arg_2), vec4<f32>(global4.x, -946f, global1.b, -1000f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-595f, 3254f, 279f, var_0.b), vec4<f32>(2464f, 260f, global1.b, global1.b), false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2, 1376f, 647f, arg_2), vec4<f32>(arg_2, global3.x, global4.x, global1.b), arg_0)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_2, arg_2, -957f, 774f), vec4<f32>(-729f, 964f, global4.x, arg_2)))))))));
    let var_2 = u_input.e.x;
    let var_3 = func_2(true, vec4<f32>(global1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(285f - 593f))), 532f, 840f));
    let var_4 = u_input.e.x;
    return Struct_3(-(~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d, 2147483647i), u_input.b.wx), _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, -9811i), vec2<i32>(-13260i, u_input.b.x)))));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32, arg_3: Struct_3) -> Struct_4 {
    let var_0 = u_input.b.zx;
    var var_1 = Struct_4(func_2(!global1.a.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1510f, 1000f, 495f, global3.x)))) - vec4<f32>(1377f, -1620f, _wgslsmith_div_f32(-160f, arg_2), global3.x))).b, global1.a.b.wyw, _wgslsmith_sub_vec4_i32(vec4<i32>(~u_input.b.x, abs(abs(-1i)), -1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, u_input.c), min(arg_0.a, 0i))), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(0i, 1i, -40807i, u_input.c)) >> ((vec4<u32>(62172u, u_input.e.x, 1u, u_input.e.x) >> (u_input.e % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(-u_input.b, countOneBits(u_input.b)))));
    let var_2 = var_1.a.x;
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(742f, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(min(-938f, global1.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -1000f, 244f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global3.x * 420f), -1226f)), 446f)));
    var var_4 = _wgslsmith_dot_vec2_u32(u_input.e.yz, u_input.e.xw);
    return Struct_4(vec4<bool>(any(var_1.a), true, var_1.b.x, any(var_1.a.xzw)), global1.a.b.zyw, max(~(u_input.b >> (vec4<u32>(u_input.e.x, 5588u, 57419u, 41463u) % vec4<u32>(32u))), -firstLeadingBit(var_1.c)) & ~var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(vec4<bool>(global1.a.a, true, !any(global1.a.b.xxy), !global1.a.b.x), Struct_1(any(global1.a.b) & true, global1.a.b), -1000f), global0[_wgslsmith_index_u32(u_input.e.x, 31u)], global4.x, func_1(global1.a.b, global1.a, 723f));
    let var_1 = vec4<f32>(global4.x, -1259f, _wgslsmith_div_f32(1685f, -1361f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -586f), -1000f));
    global1 = Struct_2(global1.a, _wgslsmith_f_op_f32(abs(global3.x)));
    global3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.x))))), var_1.x);
    global1 = Struct_2(global1.a, global4.x);
    global2 = global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(16307u, _wgslsmith_mult_u32(~(u_input.e.x & 4294967295u), u_input.e.x)), 31u)];
    var_0 = Struct_4(!vec4<bool>(_wgslsmith_div_i32(-21927i, var_0.c.x) == min(2147483647i, -1i), any(var_0.b.zy), true, var_0.b.x), !(!select(select(global1.a.b.yxy, vec3<bool>(var_0.a.x, var_0.b.x, true), global1.a.b.ywy), !var_0.a.yyw, !vec3<bool>(global1.a.a, true, global1.a.a))), vec4<i32>((global2.a & 5343i) | ~global2.a, ~select(55602i, -14168i, true), firstTrailingBit(-global2.a), 19062i));
    global0 = array<Struct_3, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global4.x, !global1.a.b.x)), global4.x), _wgslsmith_mod_i32(14740i, _wgslsmith_sub_i32(-35797i, abs(-1i))), vec3<i32>(-1i, u_input.d, -(u_input.c ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-41655i, var_0.c.x, 0i, u_input.c), u_input.b))), -1461f);
}

