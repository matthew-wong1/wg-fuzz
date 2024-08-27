struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(abs(global0.x)), 1411f);
    var var_0 = false;
    var var_1 = arg_0.d;
    let var_2 = _wgslsmith_mult_vec4_i32(arg_1.c, arg_1.c);
    var_1 = arg_0.d;
    return arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_2) -> vec2<f32> {
    global0 = arg_3.c;
    global0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_3.c, _wgslsmith_f_op_vec2_f32(exp2(arg_0.c)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1435f, _wgslsmith_f_op_f32(-1046f + 1877f)) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, arg_3.c.x)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_0.c))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(arg_3.c + arg_0.c), _wgslsmith_f_op_vec2_f32(abs(arg_0.c)))))));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1016f, arg_3.c.x) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, arg_0.c.x), vec3<f32>(657f, global0.x, arg_0.c.x))))) - vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.c.x)), arg_3.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_3.c.x * 368f))))));
    let var_1 = 750f;
    var var_2 = func_2(func_2(Struct_2(_wgslsmith_div_u32(u_input.a.x, ~arg_3.b), 10554u, vec2<f32>(-784f, global0.x), arg_0.d), arg_3.d), Struct_1(~arg_0.b, arg_3.d.b, arg_0.d.c));
    return vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.c.x, var_2.c.x))), var_1);
}

fn func_1(arg_0: bool) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_3(func_2(Struct_2(u_input.a.x, u_input.a.x, vec2<f32>(-707f, 1000f), Struct_1(18800u, vec3<i32>(-11788i, -2147483647i, -2147483647i), vec4<i32>(-2147483647i, 2147483647i, 25163i, 2147483647i))), Struct_1(45613u, vec3<i32>(32893i, 1i, 6391i), vec4<i32>(31447i, 2147483647i, -2147483647i, -6874i))), ~u_input.a.x, vec2<i32>(77642i, 1i) << (u_input.a.yz % vec2<u32>(32u)), func_2(Struct_2(0u, 0u, vec2<f32>(-1146f, -1140f), Struct_1(u_input.a.x, vec3<i32>(-88253i, 0i, 0i), vec4<i32>(0i, 18306i, -1i, 20520i))), Struct_1(0u, vec3<i32>(1i, 1i, 0i), vec4<i32>(-2147483647i, -1i, -1i, -2147483647i))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, -783f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(386f, global0.x)))))));
    var var_0 = func_2(Struct_2(u_input.a.x, u_input.a.x, func_2(Struct_2(~u_input.a.x, ~83042u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-667f, -901f)), func_2(Struct_2(u_input.a.x, u_input.a.x, vec2<f32>(global0.x, 2185f), Struct_1(87576u, vec3<i32>(-1i, 0i, 1i), vec4<i32>(-1i, -2147483647i, -26893i, -2147483647i))), Struct_1(68626u, vec3<i32>(-1i, 65910i, 28606i), vec4<i32>(2566i, -2147483647i, -36479i, 0i))).d), func_2(Struct_2(u_input.a.x, 0u, vec2<f32>(global0.x, 264f), Struct_1(u_input.a.x, vec3<i32>(-43885i, 10458i, 2147483647i), vec4<i32>(-15232i, -2147483647i, 47557i, -1i))), func_2(Struct_2(0u, 5415u, vec2<f32>(2141f, global0.x), Struct_1(u_input.a.x, vec3<i32>(0i, -10282i, -39842i), vec4<i32>(1i, 7796i, 1i, 6594i))), Struct_1(4294967295u, vec3<i32>(1i, 15595i, -2147483647i), vec4<i32>(7290i, 0i, -64732i, 13256i))).d).d).c, Struct_1(firstTrailingBit(u_input.a.x), _wgslsmith_sub_vec3_i32(~vec3<i32>(9987i, -19142i, 16265i), vec3<i32>(-12691i, -1i, -33652i)), ~countOneBits(vec4<i32>(-23222i, 1i, -2147483647i, 2138i)))), Struct_1(~(~1u) << (~u_input.a.x % 32u), -func_2(Struct_2(0u, u_input.a.x, vec2<f32>(-1390f, 1089f), Struct_1(u_input.a.x, vec3<i32>(-39969i, 1i, 34026i), vec4<i32>(2147483647i, 2147483647i, -2147483647i, 72189i))), Struct_1(1u, vec3<i32>(1i, -1257i, 0i), vec4<i32>(1i, -2147483647i, 11531i, 0i))).d.b, select(~(-vec4<i32>(32105i, -2147483647i, 22798i, -1i)), countOneBits(firstTrailingBit(vec4<i32>(1i, 17973i, 23775i, 36379i))), arg_0)));
    var var_1 = var_0.d.b.x;
    let var_2 = vec4<i32>(var_0.d.b.x, -var_0.d.c.x, 13072i, var_0.d.b.x);
    var_0 = Struct_2(_wgslsmith_mod_u32(countOneBits(var_0.b), select(_wgslsmith_clamp_u32(var_0.a, u_input.a.x ^ 4294967295u, ~var_0.a), 0u, true)), ~(4294967295u ^ (_wgslsmith_mod_u32(29500u, var_0.a) >> ((7896u << (u_input.a.x % 32u)) % 32u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1363f * var_0.c.x)), -2100f), Struct_1(var_0.a, abs(-(vec3<i32>(var_2.x, var_2.x, var_0.d.c.x) >> (u_input.a % vec3<u32>(32u)))), -var_0.d.c));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-58223i, -16702i, -2147483647i, -1i), vec4<i32>(0i, -5853i, -2147483647i, 0i)), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(2640i, 0i, -31221i, -5215i)), 1i, -2147483647i) >> (vec4<u32>(_wgslsmith_div_u32(func_1(true), ~u_input.a.x), _wgslsmith_mult_u32(u_input.a.x | 58034u, 21481u), select(1u, _wgslsmith_mod_u32(u_input.a.x, 70042u), true), 0u) % vec4<u32>(32u)));
    global0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-505f, global0.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-184f, -1301f) - vec2<f32>(-449f, 564f)) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, 625f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, 1116f) + vec2<f32>(global0.x, global0.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_vec2_f32(func_3(Struct_2(u_input.a.x, 6223u, vec2<f32>(global0.x, global0.x), Struct_1(u_input.a.x, vec3<i32>(2147483647i, 1i, -12223i), vec4<i32>(1i, -39097i, var_0.x, var_0.x))), u_input.a.x, vec2<i32>(var_0.x, 1220i), Struct_2(86309u, u_input.a.x, vec2<f32>(global0.x, 1000f), Struct_1(4294967295u, vec3<i32>(var_0.x, var_0.x, 36973i), vec4<i32>(var_0.x, -9785i, 0i, var_0.x))))).x) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1264f, global0.x) - vec2<f32>(global0.x, global0.x)) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1942f, -1215f))))))));
    var var_1 = Struct_1(~(~func_2(func_2(Struct_2(u_input.a.x, 4294967295u, vec2<f32>(global0.x, 1584f), Struct_1(1180u, var_0.xyz, vec4<i32>(7968i, var_0.x, -2147483647i, var_0.x))), Struct_1(4294967295u, var_0.wyy, vec4<i32>(var_0.x, 14336i, 33866i, -2147483647i))), func_2(Struct_2(0u, 46034u, vec2<f32>(-308f, -197f), Struct_1(0u, vec3<i32>(-2147483647i, var_0.x, var_0.x), vec4<i32>(var_0.x, -2147483647i, -4340i, -31058i))), Struct_1(6258u, var_0.yzw, vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x))).d).b), var_0.xzz, vec4<i32>(var_0.x, _wgslsmith_dot_vec3_i32(reverseBits(var_0.xww), vec3<i32>(1i, var_0.x, var_0.x)), min(-14451i, -2147483647i), var_0.x) ^ ~(vec4<i32>(var_0.x, var_0.x, -1i, 0i) << (~vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))));
    let var_2 = global0.x;
    var var_3 = Struct_1(func_1(any(vec3<bool>(true, any(vec4<bool>(true, true, false, true)), true))), var_1.c.xzw, var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(-var_1.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x) >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)), ~vec2<i32>(var_0.x, 30628i)), var_0.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1266f), _wgslsmith_f_op_f32(global0.x + global0.x)), -1360f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1141f, -372f))), _wgslsmith_f_op_f32(f32(-1f) * -1637f)))), ~_wgslsmith_div_u32(~_wgslsmith_mod_u32(var_3.a, var_1.a), func_2(func_2(Struct_2(0u, 1u, vec2<f32>(global0.x, global0.x), Struct_1(27147u, vec3<i32>(var_0.x, var_1.b.x, 2147483647i), var_1.c)), Struct_1(1u, vec3<i32>(-42590i, var_0.x, 0i), var_1.c)), Struct_1(81431u, vec3<i32>(-2449i, var_0.x, 10362i), vec4<i32>(-49502i, 16010i, var_1.c.x, var_3.b.x))).d.a), countOneBits(~(u_input.a ^ u_input.a)) << ((vec3<u32>(~0u, var_1.a, var_1.a) & ~u_input.a) % vec3<u32>(32u)), ~vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.a, 1u, var_1.a, var_1.a), vec4<u32>(var_3.a, 4294967295u, 79293u, u_input.a.x)), func_1(all(vec4<bool>(false, false, false, true)))));
}

