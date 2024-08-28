struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_3) -> f32 {
    global0 = arg_2.c.b;
    global0 = arg_2.c.b;
    var var_0 = -arg_2.c.a.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c.a.b.x) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.c.d.b.x))));
}

fn func_2() -> vec4<bool> {
    global0 = !vec4<bool>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -2175f) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(u_input.b.x, u_input.b.x, Struct_3(vec2<u32>(0u, 4294967295u), 4294967295u, Struct_2(Struct_1(u_input.b.yw, vec3<f32>(135f, -1878f, -472f)), vec4<bool>(false, global0.x, false, true), false, Struct_1(vec2<i32>(u_input.a.x, 1471i), vec3<f32>(-931f, -143f, 310f)), Struct_1(vec2<i32>(28484i, 0i), vec3<f32>(742f, 980f, 319f)))))), _wgslsmith_f_op_f32(f32(-1f) * -441f)), all(select(vec4<bool>(global0.x, true, global0.x, global0.x), select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(false, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, true)), !vec4<bool>(false, false, global0.x, global0.x))), global0.x);
    let var_0 = 406f;
    var var_1 = Struct_1(~(-vec2<i32>(i32(-1i) * -2147483647i, firstTrailingBit(u_input.a.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 486f, -744f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -380f, -445f) + vec3<f32>(-1000f, 272f, -1478f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, 2001f, -2501f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_0, -778f), vec3<f32>(var_0, -172f, var_0), global0.x))), vec3<f32>(var_0, var_0, 1301f))));
    return vec4<bool>(global0.x, all(global0.xzw), !(!(!all(vec3<bool>(global0.x, global0.x, global0.x)))), 0i > _wgslsmith_sub_i32(_wgslsmith_mult_i32(-var_1.a.x, 72098i), _wgslsmith_sub_i32(~var_1.a.x, 42890i)));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: i32) -> Struct_1 {
    var var_0 = arg_0.xww;
    global0 = func_2();
    var var_1 = Struct_2(Struct_1(u_input.b.zy, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, -107f, -168f), vec3<f32>(arg_1.x, arg_1.x, 2553f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, 227f, -982f) + vec3<f32>(arg_1.x, arg_1.x, arg_1.x)))))), !select(!(!vec4<bool>(arg_2.x, arg_2.x, true, true)), !vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), arg_3 <= 0i), any(arg_2.zy), Struct_1(vec2<i32>(~(-12823i), arg_3) | u_input.b.zw, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1549f, _wgslsmith_f_op_f32(exp2(arg_1.x)), arg_1.x))), Struct_1(-reverseBits(vec2<i32>(arg_3, u_input.b.x) & vec2<i32>(u_input.a.x, arg_3)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.x, arg_1.x, 1055f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-728f, 738f, arg_1.x) + vec3<f32>(1168f, arg_1.x, arg_1.x)), vec3<bool>(global0.x, arg_2.x, arg_2.x))))));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(var_1.a.b, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(2041f, arg_1.x)), _wgslsmith_f_op_f32(-var_1.e.b.x), 1392f), var_1.d.b))), var_1.d.b, select(func_2().wwy, !var_1.b.zwx, select(vec3<bool>(true, true, true), func_2().yxx, select(vec3<bool>(false, true, true), !vec3<bool>(true, true, var_1.b.x), vec3<bool>(false, arg_2.x, false))))));
    global0 = var_1.b;
    return var_1.a;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<u32>) -> vec4<i32> {
    return vec4<i32>(min(~0i, -2147483647i), arg_0.a.x, _wgslsmith_dot_vec3_i32(~u_input.b.yxx, vec3<i32>(-(u_input.a.x | u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(-28905i, 34614i, arg_0.a.x), vec3<i32>(-46222i, -68843i, -25118i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(0i, arg_0.a.x), arg_0.a.x))), i32(-1i) * -1i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !vec4<bool>(select(true, true, true), false, true, all(global0.ywz));
    let var_0 = countOneBits(_wgslsmith_sub_vec4_i32(((vec4<i32>(u_input.b.x, 2147483647i, -1i, -2147483647i) << (vec4<u32>(4294967295u, 1u, 17422u, 4294967295u) % vec4<u32>(32u))) << (~vec4<u32>(0u, 105258u, 0u, 2778u) % vec4<u32>(32u))) | vec4<i32>(firstTrailingBit(u_input.a.x), -u_input.b.x, u_input.a.x >> (1u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.a.x, u_input.b.x))), func_4(func_1(countOneBits(vec4<u32>(14226u, 0u, 25935u, 0u)), vec2<f32>(-1240f, 198f), !vec3<bool>(true, global0.x, false), 0i), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(56402u, 4294967295u, 4294967295u), vec3<u32>(22252u, 1u, 1u), vec3<u32>(11509u, 73467u, 35144u)), vec3<u32>(0u, 4294967295u, 4294967295u)), select(vec4<u32>(13149u, 44325u, 4294967295u, 4294967295u), select(vec4<u32>(0u, 10684u, 2388u, 0u), vec4<u32>(0u, 4294967295u, 16647u, 33473u), vec4<bool>(global0.x, global0.x, true, global0.x)), vec4<bool>(true, false, global0.x, global0.x)))));
    let var_1 = Struct_2(Struct_1(vec2<i32>(35200i, min(func_1(vec4<u32>(1302u, 75222u, 33919u, 92978u), vec2<f32>(-533f, 373f), vec3<bool>(global0.x, global0.x, false), var_0.x).a.x, 2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-692f, -868f, -920f) * vec3<f32>(1290f, -180f, 372f)), vec3<f32>(316f, 1470f, 1272f)))), vec4<bool>(all(func_2()), global0.x, all(global0.zyw), true), true, func_1(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(4294967295u, 31179u, 1u, 86989u), vec4<u32>(0u, 4294967295u, 0u, 1u), true) & vec4<u32>(4294967295u, 65673u, 4294967295u, 1u), vec4<u32>(_wgslsmith_mult_u32(1u, 4294967295u), 49801u, 1u, firstTrailingBit(0u)), vec4<u32>(32375u, _wgslsmith_add_u32(1u, 106763u), 0u, 43535u)), vec2<f32>(_wgslsmith_f_op_f32(func_3(~var_0.x, u_input.b.x, Struct_3(vec2<u32>(53563u, 0u), 1u, Struct_2(Struct_1(vec2<i32>(u_input.b.x, 3281i), vec3<f32>(502f, 1508f, -1315f)), vec4<bool>(global0.x, global0.x, false, global0.x), global0.x, Struct_1(vec2<i32>(-49119i, -13471i), vec3<f32>(191f, 1464f, 232f)), Struct_1(var_0.wx, vec3<f32>(3250f, 2405f, -380f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1545f)), select(vec3<bool>(!global0.x, global0.x, true), !select(global0.zyx, vec3<bool>(true, true, false), vec3<bool>(global0.x, global0.x, false)), !vec3<bool>(false, false, global0.x)), -1i), Struct_1(-(_wgslsmith_mult_vec2_i32(var_0.xx, u_input.b.zz) << (vec2<u32>(4294967295u, 46501u) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(-636f)), _wgslsmith_f_op_f32(step(1565f, -808f)), _wgslsmith_f_op_f32(-481f + 1399f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1f, 1f, 1f)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(var_1.e.b.xy));
    let var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_1.a.b.zy)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b.x - var_1.d.b.x));
    global0 = !(!vec4<bool>(any(vec3<bool>(true, true, true)), global0.x, true, _wgslsmith_div_i32(var_1.d.a.x, var_1.e.a.x) != var_1.a.a.x));
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(-var_0.zz, var_5.a.a));
}

