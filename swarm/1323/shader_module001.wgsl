struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
    e: vec4<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<f32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(vec3<bool>(false, true, true), true, vec2<i32>(9229i, 36193i), Struct_1(1u, -564f)), Struct_3(vec3<bool>(true, false, false), true, vec2<i32>(-25823i, 1i), Struct_1(4294967295u, 1000f)), Struct_3(vec3<bool>(true, true, false), true, vec2<i32>(-1i, i32(-2147483648)), Struct_1(0u, -513f)), Struct_3(vec3<bool>(true, false, true), true, vec2<i32>(0i, 2147483647i), Struct_1(0u, -1369f)), Struct_3(vec3<bool>(true, true, true), true, vec2<i32>(0i, 2452i), Struct_1(4294967295u, -1457f)), Struct_3(vec3<bool>(true, false, true), true, vec2<i32>(2147483647i, 0i), Struct_1(35789u, 598f)), Struct_3(vec3<bool>(true, true, false), true, vec2<i32>(2147483647i, -28045i), Struct_1(4294967295u, -705f)), Struct_3(vec3<bool>(false, true, true), false, vec2<i32>(2147483647i, 29014i), Struct_1(1u, -368f)), Struct_3(vec3<bool>(true, false, true), true, vec2<i32>(i32(-2147483648), -1i), Struct_1(0u, -543f)));

var<private> global1: array<vec3<i32>, 31>;

var<private> global2: i32 = 0i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> i32 {
    let var_0 = select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, true, true)), true)), vec2<bool>(true, true), !all(vec3<bool>(true, true, true)));
    let var_1 = !(!(!(!var_0.x)));
    return 0i;
}

fn func_4(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_dot_vec4_u32(~(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 55675u) << (vec4<u32>(4294967295u, 90616u, 1u, 1u) % vec4<u32>(32u))) << ((min(vec4<u32>(u_input.a, 42405u, 14042u, u_input.a), vec4<u32>(0u, 11984u, u_input.a, u_input.a)) & (vec4<u32>(31771u, u_input.a, 17317u, 0u) & vec4<u32>(u_input.a, 1u, u_input.a, 1u))) % vec4<u32>(32u))), countOneBits(firstTrailingBit(reverseBits(vec4<u32>(66380u, 57952u, 69826u, 21697u)))));
    var var_1 = min(-vec2<i32>(1i, firstLeadingBit(1i)), abs(~abs(~vec2<i32>(arg_0, -1i))));
    var_1 = firstTrailingBit(select(max(-vec2<i32>(2147483647i, -1i), vec2<i32>(arg_0, arg_0) & vec2<i32>(2147483647i, -1i)), _wgslsmith_div_vec2_i32(abs(vec2<i32>(var_1.x, -2147483647i)), vec2<i32>(-18646i, -36418i) >> (vec2<u32>(22698u, u_input.a) % vec2<u32>(32u))), false)) & _wgslsmith_mult_vec2_i32(select(-min(vec2<i32>(45873i, var_1.x), vec2<i32>(var_1.x, -22063i)), ~(~vec2<i32>(-1i, arg_0)), !select(vec2<bool>(true, true), vec2<bool>(false, true), true)), -vec2<i32>(4481i & var_1.x, var_1.x | var_1.x));
    global2 = (firstLeadingBit(select(-14055i, 2147483647i, var_0 < u_input.a)) >> (min(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(var_0, var_0)), select(vec2<u32>(var_0, 4294967295u), vec2<u32>(3988u, 4294967295u), vec2<bool>(true, false))), countOneBits(var_0 | 60753u)) % 32u)) ^ _wgslsmith_div_i32(arg_0, ~max(-1i | arg_0, -var_1.x));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1821f + _wgslsmith_f_op_f32(211f + -236f)))))), 1f);
    return !(!(any(vec2<bool>(true, true)) | false));
}

fn func_2(arg_0: vec3<f32>, arg_1: bool) -> Struct_4 {
    global1 = array<vec3<i32>, 31>();
    let var_0 = select(func_4(func_3()), all(vec2<bool>(true, true)), arg_1);
    let var_1 = Struct_1(~_wgslsmith_add_u32(u_input.a, u_input.a), _wgslsmith_f_op_f32(arg_0.x - arg_0.x));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b) * _wgslsmith_f_op_f32(-var_1.b));
    global1 = array<vec3<i32>, 31>();
    return Struct_4(~select(global1[_wgslsmith_index_u32(u_input.a, 31u)], vec3<i32>(25373i, 2147483647i, 1i), select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(var_0, var_0, true), vec3<bool>(false, false, arg_1))) & global1[_wgslsmith_index_u32(firstLeadingBit(var_1.a), 31u)], Struct_2(1i, u_input.a << (~u_input.a % 32u), vec4<u32>(~u_input.a, u_input.a, 16042u, reverseBits(~38141u)), !select(select(vec3<bool>(false, var_0, false), vec3<bool>(false, arg_1, true), vec3<bool>(false, var_0, var_0)), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - var_1.b), arg_0.x, _wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(ceil(arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-597f, -506f, arg_0.x, -198f), vec4<f32>(arg_0.x, -378f, 544f, -858f)))), vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1.b - arg_0.x), -596f)), -2412f, var_1.b, 1000f)), Struct_2(~0i, 69339u, ~(~vec4<u32>(var_1.a, u_input.a, u_input.a, u_input.a)), select(vec3<bool>(true, any(vec3<bool>(true, arg_1, var_0)), false), select(vec3<bool>(arg_1, false, var_0), select(vec3<bool>(var_0, var_0, false), vec3<bool>(false, true, var_0), vec3<bool>(var_0, false, false)), !arg_1), vec3<bool>(false, var_0, var_0))), ~(~vec4<u32>(~u_input.a, ~u_input.a, var_1.a, 52685u)));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_3, arg_3: Struct_4) -> vec2<i32> {
    var var_0 = !arg_0.a.x;
    var var_1 = arg_2.c.x;
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_3.c.xzz, arg_0.c) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_1.c.x, -1125f, arg_1.c.x))))))), any(!(!vec3<bool>(true, arg_2.b, arg_1.a.x)))).b;
    global2 = -(_wgslsmith_clamp_i32(abs(_wgslsmith_clamp_i32(1i, 32658i, 2147483647i)), -1i | (2147483647i ^ arg_3.d.a), arg_3.a.x) | ~_wgslsmith_dot_vec4_i32(max(vec4<i32>(var_2.a, 24861i, arg_3.d.a, arg_2.c.x), vec4<i32>(arg_2.c.x, -4368i, var_2.a, 2147483647i)), ~vec4<i32>(arg_2.c.x, 40505i, 19463i, arg_2.c.x)));
    var var_3 = select(_wgslsmith_mult_vec2_i32(~reverseBits(func_2(arg_3.c.wzy, true).a.yy), vec2<i32>(9927i, 1i)), reverseBits(-arg_3.a.xz), select(false, false, arg_0.a.x));
    return arg_2.c;
}

fn func_1(arg_0: u32, arg_1: i32) -> u32 {
    let var_0 = max(firstTrailingBit(vec2<i32>(-1i, -_wgslsmith_mult_i32(28237i, arg_1))), -(-(~vec2<i32>(-7074i, arg_1)) ^ func_5(Struct_5(vec3<bool>(true, true, true), Struct_1(4294967295u, 1000f), vec3<f32>(251f, -182f, 812f)), Struct_5(vec3<bool>(true, true, false), Struct_1(33604u, -409f), vec3<f32>(1976f, 1633f, 192f)), Struct_3(vec3<bool>(false, false, true), true, vec2<i32>(arg_1, -32187i), Struct_1(4294967295u, 111f)), func_2(vec3<f32>(614f, 802f, -202f), false))));
    global1 = array<vec3<i32>, 31>();
    global0 = array<Struct_3, 9>();
    global0 = array<Struct_3, 9>();
    global2 = 2147483647i;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_add_u32(3534u, 39488u), ~func_1(9646u, -1i)), 9525u), _wgslsmith_f_op_f32(f32(-1f) * -300f));
    global0 = array<Struct_3, 9>();
    let var_1 = var_0;
    let var_2 = func_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -458f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-449f)), _wgslsmith_f_op_f32(max(-1134f, 181f))))), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))), true).d;
    let var_3 = vec3<f32>(-222f, _wgslsmith_f_op_f32(-var_1.b), var_0.b);
    var var_4 = var_3.xz;
    var var_5 = _wgslsmith_dot_vec2_u32((~vec2<u32>(52113u, var_1.a) ^ _wgslsmith_div_vec2_u32(vec2<u32>(var_2.c.x, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, var_2.c.x), vec2<u32>(1u, var_2.b)))) << (func_2(_wgslsmith_f_op_vec3_f32(round(var_3)), var_2.d.x).e.xw % vec2<u32>(32u)), reverseBits(var_2.c.yy));
    var var_6 = -439f;
    var_5 = var_2.c.x << (33276u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, _wgslsmith_add_i32(_wgslsmith_mult_i32(abs(var_2.a), max(max(var_2.a, var_2.a), _wgslsmith_mult_i32(var_2.a, 44591i))), -_wgslsmith_div_i32(var_2.a | -2147483647i, ~16425i)), vec2<f32>(var_0.b, -156f), -2261f, var_3.zy);
}

