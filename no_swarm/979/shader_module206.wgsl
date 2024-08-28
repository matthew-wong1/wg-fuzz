struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(1i, 2147483647i), vec2<i32>(1i, 2147483647i), vec2<i32>(-11133i, 9194i), vec2<i32>(2147483647i, 33217i), vec2<i32>(-46292i, 2147483647i), vec2<i32>(-3298i, 73601i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    var var_0 = -1179f;
    let var_1 = Struct_2(firstTrailingBit(max(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a, u_input.a), max(7642u, u_input.a)), _wgslsmith_add_u32(23863u, u_input.a))));
    let var_2 = var_1;
    let var_3 = !(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), false), true)));
    var var_4 = 1000f;
    return -arg_0.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: f32) -> Struct_1 {
    global0 = array<vec2<i32>, 6>();
    global0 = array<vec2<i32>, 6>();
    var var_0 = 0i;
    var_0 = countOneBits(arg_1);
    var_0 = 27652i;
    return Struct_1(func_3(-firstTrailingBit(~vec3<i32>(-23040i, -2147483647i, arg_1))), _wgslsmith_f_op_f32(sign(-1000f)), vec4<bool>(arg_1 <= 11526i, false, !arg_0.x, _wgslsmith_mod_u32(u_input.a, ~1u) > max(~u_input.a, u_input.a)));
}

fn func_1(arg_0: f32, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_1.x)))), func_2(vec4<bool>(true, true, true, true), _wgslsmith_dot_vec2_i32(vec2<i32>(-4974i, u_input.b), firstTrailingBit(global0[_wgslsmith_index_u32(88154u, 6u)])) ^ -u_input.c, _wgslsmith_div_f32(-707f, _wgslsmith_f_op_f32(arg_1.x - 483f))), Struct_1(-u_input.b, arg_0, vec4<bool>(true, true, true, true)), u_input.b);
    global0 = array<vec2<i32>, 6>();
    let var_1 = Struct_1(-1i, var_0.a, var_0.b.c);
    global0 = array<vec2<i32>, 6>();
    global0 = array<vec2<i32>, 6>();
    return Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1547f * 1204f))), var_1, Struct_1(33214i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-638f)))), vec4<bool>(!(!var_1.c.x), var_0.b.c.x, !(var_0.b.c.x && var_1.c.x), reverseBits(u_input.a) < min(41873u, 25377u))), var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 6>();
    let var_0 = func_1(-2214f, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2000f, -262f) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(419f, -875f), vec2<f32>(-561f, -1003f), vec2<bool>(false, false)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1040f, 150f)), _wgslsmith_div_vec2_f32(vec2<f32>(-488f, 985f), vec2<f32>(-944f, 292f))))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-164f, 480f, var_0.c.b), vec3<f32>(-516f, 762f, 1722f), false)) * vec3<f32>(-1000f, var_0.b.b, 1249f)) + _wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.b, var_0.c.b, -1976f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, -1624f, -126f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.a, -474f, var_0.b.b), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c.b, var_0.a, var_0.a), vec3<f32>(137f, -490f, var_0.b.b)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b, var_0.c.b, var_0.a) + vec3<f32>(var_0.c.b, var_0.a, -796f)))))), var_0.b.c.zyz));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.x, 170f, 437f), vec3<f32>(var_1.x, 317f, var_0.b.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-821f, var_0.b.b, 803f))) + vec3<f32>(_wgslsmith_f_op_f32(281f + var_1.x), var_0.a, var_1.x)))));
    let var_2 = Struct_2(~u_input.a);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-1000f * 1472f), var_0.c, Struct_1(select(func_1(_wgslsmith_f_op_f32(1439f * -530f), vec2<f32>(1000f, var_1.x)).d, 16838i, all(vec4<bool>(true, false, true, true))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b + var_0.a)))), var_0.b.c), _wgslsmith_add_i32(firstLeadingBit(-25427i), min(-6808i, var_0.d)));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-145f, var_0.b.b, var_0.b.c.x)), 983f)))), var_0.c, func_1(_wgslsmith_f_op_f32(f32(-1f) * -1388f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(558f, -1315f) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_3.a, var_1.x)))))).b, func_3(-(~vec3<i32>(-25003i, u_input.b, var_0.c.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~max(15100u, ~var_2.a), _wgslsmith_add_u32(~(~u_input.a), var_2.a)), _wgslsmith_dot_vec2_u32(~select(~vec2<u32>(4294967295u, u_input.a), ~vec2<u32>(3970u, 1u), select(vec2<bool>(var_4.c.c.x, var_4.b.c.x), var_0.c.c.yy, vec2<bool>(var_3.b.c.x, var_0.b.c.x))), ~_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(17259u, var_2.a)), vec2<u32>(45336u, 12088u) >> (vec2<u32>(var_2.a, var_2.a) % vec2<u32>(32u)))), func_2(select(!var_0.c.c, !(!var_4.c.c), true), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, var_4.d) ^ vec2<i32>(0i, u_input.c), _wgslsmith_div_vec2_i32(global0[_wgslsmith_index_u32(u_input.a, 6u)], vec2<i32>(-1i, var_0.c.a))), max(27834i, min(var_4.d, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))).a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_4.c.b), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_4.a))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_1.zx, vec2<f32>(-1431f, var_4.a), var_4.c.c.x)), var_1.xx, vec2<bool>(var_4.b.c.x, var_3.c.c.x)))).c.b)));
}

