struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(Struct_1(-1i, vec4<i32>(2147483647i, i32(-2147483648), 2147483647i, 6086i)), Struct_1(-1i, vec4<i32>(-34408i, i32(-2147483648), 1i, 32492i)), Struct_1(i32(-2147483648), vec4<i32>(2147483647i, 58210i, 7901i, -36243i)), vec4<f32>(-1634f, 1270f, 479f, -1565f)));

var<private> global1: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = Struct_1(~(abs(u_input.c.x) << (u_input.b % 32u)), abs(min(min(vec4<i32>(32553i, -8722i, 3815i, -24699i), global1.a.b), ~global0.a.a.b) & vec4<i32>(global1.a.a, 2147483647i ^ global1.a.a, ~23796i, u_input.a)));
    let var_1 = global0.a;
    global1 = Struct_3(Struct_1(countOneBits(var_1.c.b.x) << (u_input.b % 32u), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(~var_0.b, vec4<i32>(var_0.b.x, -6349i, var_0.a, global0.a.b.b.x)), (vec4<i32>(2147483647i, global1.a.a, -2256i, global1.a.b.x) | vec4<i32>(u_input.c.x, var_1.b.b.x, var_0.a, -19689i)) | var_0.b)), global0.a.d);
    let var_2 = abs(vec4<u32>(u_input.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 71942u, u_input.b), vec3<u32>(66306u, u_input.b, 1u)), min(u_input.b, 1u), u_input.b & 4294967295u) & vec4<u32>(81146u, 29859u, abs(countOneBits(u_input.b)), 0u));
    let var_3 = 12461u;
    return all(select(vec4<bool>(true, var_3 >= u_input.b, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), global0.a.a.a <= var_0.a), vec4<bool>(true, true, true, all(vec3<bool>(false, false, true))), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), false)), true));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> i32 {
    global1 = Struct_3(global1.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.d) + vec4<f32>(global0.a.d.x, 2094f, _wgslsmith_f_op_f32(f32(-1f) * -564f), global1.b.x)));
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global0.a.d.xy, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.x, global0.a.d.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.a.d.x, -905f), vec2<f32>(523f, -1356f))))))) * global0.a.d.zz));
    var var_1 = select(vec4<bool>(!func_3() & true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1363f))) > 227f, !(!(0i > arg_1.c.a))), !vec4<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))), true, _wgslsmith_f_op_f32(var_0.x - arg_1.d.x) <= 794f, true), all(vec4<bool>(true, false, false, 1i > min(u_input.a, -2147483647i))));
    var_1 = !vec4<bool>(false, true, var_1.x && (u_input.b < _wgslsmith_add_u32(u_input.b, 4294967295u)), select(!any(var_1.wwx), !(!var_1.x), var_1.x));
    var var_2 = any(select(vec4<bool>(var_1.x || var_1.x, func_3(), any(select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(false, true, false, var_1.x))), _wgslsmith_dot_vec4_i32(global1.a.b, vec4<i32>(u_input.c.x, 2147483647i, arg_1.a.a, -9959i)) > 0i), !(!select(vec4<bool>(var_1.x, var_1.x, false, true), vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(false, var_1.x, true, true))), false && var_1.x));
    return _wgslsmith_sub_i32(arg_1.b.b.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(2147483647i, 24322i), -1i));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec4<i32>, arg_3: i32) -> Struct_1 {
    let var_0 = arg_2.x;
    var var_1 = _wgslsmith_f_op_f32(287f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(global0.a.d.x, _wgslsmith_f_op_f32(-global0.a.d.x))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-290f + 136f) + _wgslsmith_f_op_f32(-1039f * arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(987f + 122f)) * _wgslsmith_f_op_f32(-global0.a.d.x))));
    var var_3 = Struct_4(global0.a);
    let var_4 = firstTrailingBit(global0.a.c.b);
    return Struct_1(var_4.x, vec4<i32>(var_3.a.a.b.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-42507i, arg_3 >> (u_input.b % 32u)), 0i), min(~(-var_0), _wgslsmith_dot_vec2_i32(max(global1.a.b.ww, vec2<i32>(var_4.x, arg_2.x)), vec2<i32>(1i, 0i))), reverseBits(arg_2.x)));
}

fn func_1(arg_0: Struct_3) -> Struct_4 {
    let var_0 = !(!(!all(vec4<bool>(true, true, true, true))));
    global1 = arg_0;
    var var_1 = Struct_3(func_4(arg_0.b.x, any(select(!vec3<bool>(false, var_0, var_0), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(var_0, var_0, var_0), true), vec3<bool>(var_0, var_0, var_0))), vec4<i32>(u_input.a, func_2(global0.a.d.zx, Struct_2(Struct_1(global0.a.b.a, global0.a.b.b), Struct_1(arg_0.a.a, global0.a.c.b), Struct_1(-6936i, vec4<i32>(-2147483647i, global0.a.a.b.x, 1i, 0i)), global1.b)), max(-arg_0.a.a, arg_0.a.a | 2147483647i), min(u_input.a, 1i)), global1.a.a), vec4<f32>(_wgslsmith_f_op_f32(-249f * global0.a.d.x), global0.a.d.x, arg_0.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(global1.b.x))))));
    global1 = Struct_3(global0.a.a, var_1.b);
    let var_2 = global0.a.c.b.xw;
    return Struct_4(Struct_2(var_1.a, func_4(-1448f, var_0, firstTrailingBit(firstLeadingBit(vec4<i32>(2147483647i, -27539i, u_input.a, arg_0.a.b.x))), ~countOneBits(-1i)), global0.a.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.b + _wgslsmith_f_op_vec4_f32(-vec4<f32>(162f, -789f, 607f, -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(Struct_3(global1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, global0.a.d.x, _wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_div_f32(109f, 216f)))));
    let var_0 = Struct_3(Struct_1(global1.a.b.x, _wgslsmith_sub_vec4_i32(abs(vec4<i32>(-1i, global0.a.a.a, 48896i, 1i)), ~(-global1.a.b))), vec4<f32>(1262f, _wgslsmith_f_op_f32(global0.a.d.x + 639f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(618f - global1.b.x), _wgslsmith_f_op_f32(-1000f - global0.a.d.x), false)))), -1000f));
    global1 = Struct_3(Struct_1(1i, vec4<i32>(16141i, _wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), _wgslsmith_sub_i32(var_0.a.a, global0.a.c.b.x), -1i), 0i, -2147483647i)), vec4<f32>(global1.b.x, global0.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.b.x, -126f)) * -815f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1418f - -1000f) - -744f))));
    let var_1 = select(vec3<bool>(!(true && (168f <= global0.a.d.x)), select(_wgslsmith_f_op_f32(-global1.b.x) >= -1000f, true, true), any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(false, false, false), true))), vec3<bool>(var_0.b.x < global0.a.d.x, !(false | any(vec3<bool>(false, true, true))), true), all(vec4<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false))), all(vec4<bool>(false, false, false, true)), true, any(vec3<bool>(true, true, true)))));
    let var_2 = func_1(Struct_3(Struct_1(u_input.a, -_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a.a, global1.a.a, var_0.a.a, var_0.a.a), global1.a.b)), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1414f)))), _wgslsmith_f_op_f32(725f * _wgslsmith_f_op_f32(sign(1055f))), -357f, _wgslsmith_f_op_f32(exp2(global1.b.x))))).a.d.zz;
    global1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(vec4<i32>(-var_0.a.b.x, i32(-1i) * -2147483647i, var_0.a.b.x, u_input.c.x), ~vec4<i32>(-10849i, var_0.a.a, 0i, -1i), abs(select(vec4<i32>(-42733i, 22251i, 0i, -1i), vec4<i32>(7349i, global1.a.a, global1.a.a, 2147483647i), vec4<bool>(var_1.x, var_1.x, true, false)))) | ~_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(25438i, global1.a.a, global0.a.a.a, 8472i)), global1.a.b, ~vec4<i32>(global0.a.a.a, var_0.a.b.x, -57157i, var_0.a.b.x)), ~vec2<u32>(~u_input.b, 1u) ^ countOneBits(~(~vec2<u32>(u_input.b, u_input.b))));
}

