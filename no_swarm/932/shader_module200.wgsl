struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> f32 {
    let var_0 = vec4<bool>(true, false, -1866f <= arg_0.b.x, !(min(arg_0.a.x >> (0u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(4629u, arg_0.a.x, 25755u), vec3<u32>(4294967295u, arg_0.a.x, arg_0.a.x))) > 0u));
    var var_1 = 16072i;
    var_1 = _wgslsmith_clamp_i32(~(-firstLeadingBit(reverseBits(1i))), ~arg_0.c.a, u_input.a.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_0.b.x, -1970f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(328f)) - _wgslsmith_f_op_f32(arg_0.b.x - -1060f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-105f, arg_0.b.x)), 503f)))));
    var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.b.x, var_2.x, arg_0.b.x, var_2.x)))) * vec4<f32>(_wgslsmith_f_op_f32(ceil(543f)), _wgslsmith_f_op_f32(floor(arg_0.b.x)), _wgslsmith_f_op_f32(max(-1000f, var_2.x)), _wgslsmith_f_op_f32(exp2(arg_0.b.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.x, -1422f, _wgslsmith_f_op_f32(arg_0.b.x * var_2.x), _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, arg_0.b.x, var_2.x, arg_0.b.x) + vec4<f32>(arg_0.b.x, arg_0.b.x, -1685f, arg_0.b.x)))))));
    return _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -670f) - -650f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -735f), _wgslsmith_f_op_f32(-var_2.x))))));
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-757f, 1000f))), _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1072f, 726f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(254f, 125f))))), 838f, arg_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_2(countOneBits(vec4<u32>(4294967295u, 1u, 4294967295u, 1u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-399f, 250f, 536f), vec3<f32>(648f, 281f, -315f), false)), Struct_1(u_input.a.x), Struct_1(u_input.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1278f, -809f)) * -138f))));
    let var_1 = Struct_2(~select(vec4<u32>(7640u, abs(4294967295u), 133296u, ~4294967295u), reverseBits(~vec4<u32>(46607u, 4294967295u, 16984u, 73479u)), false), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.x))) + 183f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x + 136f))))), Struct_1(u_input.a.x & _wgslsmith_clamp_i32(-2147483647i, u_input.a.x, u_input.a.x)), Struct_1(-2147483647i));
    var var_2 = Struct_2(vec4<u32>(var_1.a.x, max(reverseBits(_wgslsmith_div_u32(var_1.a.x, var_1.a.x)), var_1.a.x), var_1.a.x, _wgslsmith_mult_u32(~firstLeadingBit(var_1.a.x), var_1.a.x)), var_1.b, Struct_1(u_input.a.x), var_1.c);
    let var_3 = Struct_2(reverseBits(~_wgslsmith_mult_vec4_u32(var_2.a, vec4<u32>(51698u, var_2.a.x, var_2.a.x, 1u))), var_1.b, Struct_1(var_1.c.a), Struct_1(countOneBits(i32(-1i) * -1472i)));
    var var_4 = var_1;
    return 1000f;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    var var_0 = arg_0.b.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec4<bool>(true, false, false, true))) * -885f) * _wgslsmith_div_f32(arg_0.b.x, -1298f)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.b.xx);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2077f), 235f, -1000f, _wgslsmith_f_op_f32(-var_1.x));
    var_0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -427f), 326f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + -354f));
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x));
    var var_1 = -741f;
    let var_2 = 436f;
    return max(arg_1.a, ~arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 0u, 1u, 47836u), vec4<u32>(1u, 24342u, 4294967295u, 0u), vec4<u32>(4294967295u, 30894u, 0u, 23212u)), vec4<u32>(4294967295u, 0u, 1u, 73807u), false) ^ _wgslsmith_add_vec4_u32(~firstLeadingBit(vec4<u32>(3127u, 63975u, 12050u, 1u)), func_4(Struct_1(u_input.a.x), func_1(Struct_2(vec4<u32>(36220u, 86236u, 0u, 19777u), vec3<f32>(735f, 1129f, 648f), Struct_1(-2147483647i), Struct_1(u_input.a.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(154f, _wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, false, false))), 1920f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-3423f, 172f, 1241f))))), Struct_1(u_input.a.x), func_1(func_1(Struct_2(func_4(Struct_1(u_input.a.x), Struct_2(vec4<u32>(1u, 0u, 0u, 4294967295u), vec3<f32>(1000f, 553f, 1467f), Struct_1(u_input.a.x), Struct_1(23425i))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1653f, -701f, 1193f))), func_1(Struct_2(vec4<u32>(59369u, 0u, 0u, 0u), vec3<f32>(-167f, -1000f, 626f), Struct_1(-1i), Struct_1(u_input.a.x))).c, Struct_1(u_input.a.x)))).d);
    let var_1 = Struct_1(~select(firstLeadingBit(u_input.a.x << (4294967295u % 32u)), u_input.a.x, false));
    var_0 = func_1(func_1(Struct_2(firstTrailingBit(_wgslsmith_mult_vec4_u32(var_0.a, var_0.a)), _wgslsmith_f_op_vec3_f32(sign(var_0.b)), Struct_1(14584i), var_1)));
    var_0 = func_1(Struct_2(~var_0.a, vec3<f32>(-1380f, -501f, -2086f), var_0.d, func_1(func_1(func_1(Struct_2(vec4<u32>(28726u, 4294967295u, var_0.a.x, var_0.a.x), var_0.b, Struct_1(var_1.a), Struct_1(34796i))))).d));
    let var_2 = Struct_1(_wgslsmith_dot_vec2_i32(~select(max(u_input.a.xx, vec2<i32>(2147483647i, -9864i)), u_input.a.wy, select(vec2<bool>(false, false), vec2<bool>(false, false), true)), select(select(u_input.a.yy, u_input.a.wz, vec2<bool>(true, true)), u_input.a.zx, true) >> (~_wgslsmith_mult_vec2_u32(var_0.a.wy, var_0.a.ww) % vec2<u32>(32u))));
    let var_3 = var_0.b.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.x, var_3.x) * _wgslsmith_f_op_f32(-var_0.b.x))))));
}

