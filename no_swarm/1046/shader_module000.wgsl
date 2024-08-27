struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<u32> = vec4<u32>(13987u, 9717u, 4294967295u, 4294967295u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> i32 {
    return -35485i;
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = vec4<i32>(-(~countOneBits(u_input.a.x)), reverseBits(-1i), func_3(), u_input.c.x) | (_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.c.x, 20575i, 23425i, 2147483647i), ~min(vec4<i32>(u_input.a.x, -1i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, -22623i, u_input.b.x, 4785i))) & countOneBits(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, u_input.b.x, u_input.b.x, u_input.a.x), vec4<i32>(u_input.c.x, 24016i, -15420i, 3720i))));
    let var_1 = _wgslsmith_mult_u32(u_input.d.x, ~(~(~global1.x)));
    global1 = vec4<u32>(u_input.d.x, 40080u, ~1u, _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(u_input.d.x, 0u, u_input.d.x, var_1)), ~vec4<u32>(64955u, 0u, global1.x, 63491u)), vec4<u32>(global1.x, ~u_input.d.x, u_input.d.x, 1u))));
    let var_2 = arg_0;
    let var_3 = global1.ww;
    return -1i;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(vec2<bool>(arg_2.a.x, !(!arg_2.b)), arg_2.a.x));
    let var_1 = Struct_3(var_0.a);
    var var_2 = u_input.c.x;
    global1 = countOneBits(firstTrailingBit(_wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 95117u, global1.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, global1.x)), (vec4<u32>(1u, u_input.d.x, 0u, global1.x) ^ vec4<u32>(0u, u_input.d.x, 4294967295u, 14426u)) >> (abs(vec4<u32>(global1.x, 35355u, u_input.d.x, global1.x)) % vec4<u32>(32u)))));
    global0 = abs(~38329i) < min(2147483647i, -_wgslsmith_mult_i32(_wgslsmith_mod_i32(arg_1, -1i), -u_input.a.x));
    return Struct_2(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(global1.x, 59672u, global1.x, u_input.d.x), vec4<u32>(1u, 4294967295u, global1.x, 70480u), ~vec4<u32>(u_input.d.x, 1u, u_input.d.x, global1.x)) >> (~vec4<u32>(global1.x, 4294967295u, global1.x, global1.x) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> vec4<i32> {
    let var_0 = i32(-1i) * -_wgslsmith_clamp_i32(~_wgslsmith_add_i32(u_input.b.x, -1i), -(~26558i), firstLeadingBit(u_input.c.x));
    var var_1 = -1i;
    var var_2 = func_4(_wgslsmith_f_op_f32(round(633f)), _wgslsmith_add_i32(~func_2(arg_1.a), var_0), arg_1.a);
    var var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -479f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-440f * -251f) - _wgslsmith_div_f32(-992f, -2310f))), -1000f), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1f * 351f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(357f + 1916f)) + _wgslsmith_f_op_f32(f32(-1f) * -757f)));
    global0 = arg_1.a.b;
    return ~(~abs(vec4<i32>(var_0, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0), u_input.a), _wgslsmith_clamp_i32(var_0, var_0, -25921i), var_0)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: f32) -> vec4<u32> {
    var var_0 = -1i;
    var var_1 = Struct_1(select(vec2<bool>(select(false, arg_1.x, global1.x <= 1u), !arg_1.x), select(select(select(vec2<bool>(true, arg_1.x), arg_1.wy, true), arg_1.xx, vec2<bool>(true, true)), vec2<bool>(all(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)), !arg_1.x), !select(arg_1.x, true, true)), vec2<bool>(true, select(-62172i <= u_input.c.x, arg_1.x, any(arg_1.xz)))), any(!(!vec2<bool>(true, arg_1.x))) || arg_1.x);
    var var_2 = arg_0.xx;
    var var_3 = ~u_input.b;
    let var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + arg_2)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1970f, -1000f) + arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 - 844f) - _wgslsmith_f_op_f32(f32(-1f) * -388f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 - arg_2)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-155f, -591f, 623f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(682f, 917f, -1806f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2, -1000f, -1068f))))))));
    return vec4<u32>(32583u, select(_wgslsmith_sub_u32(min(u_input.d.x & 99291u, 1u), ~_wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(4626u, 4294967295u))), u_input.d.x, var_1.a.x), 48376u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = ~(func_5(_wgslsmith_clamp_vec4_i32(vec4<i32>(-49009i, u_input.b.x, u_input.a.x, -15228i) ^ vec4<i32>(u_input.c.x, 1i, 1i, u_input.b.x), func_1(Struct_2(vec4<u32>(u_input.d.x, 4294967295u, 4294967295u, u_input.d.x)), Struct_3(Struct_1(vec2<bool>(var_0, false), var_0))), _wgslsmith_div_vec4_i32(vec4<i32>(-40306i, -17887i, u_input.b.x, u_input.a.x), vec4<i32>(-2245i, 1i, 23019i, -27440i))), vec4<bool>(all(vec4<bool>(true, true, false, var_0)), any(vec2<bool>(var_0, true)), var_0 || true, var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1027f, -1113f)))) >> (vec4<u32>(~(~global1.x), _wgslsmith_sub_u32(u_input.d.x, global1.x | 37936u), u_input.d.x, ~u_input.d.x) % vec4<u32>(32u)));
    global0 = true;
    let var_1 = Struct_5(~func_5(vec4<i32>(~0i, 1i ^ u_input.b.x, _wgslsmith_mult_i32(-1i, u_input.c.x), u_input.a.x), vec4<bool>(var_0, !var_0, true, any(vec4<bool>(true, true, var_0, var_0))), _wgslsmith_f_op_f32(sign(-1021f))), 13811i, Struct_1(!vec2<bool>(false, !var_0), !(1u == ~global1.x)), select(select(select(vec2<bool>(true, true), vec2<bool>(var_0, var_0), !vec2<bool>(var_0, var_0)), !select(vec2<bool>(true, var_0), vec2<bool>(var_0, var_0), vec2<bool>(false, false)), select(vec2<bool>(var_0, true), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), vec2<bool>(var_0, var_0)), select(vec2<bool>(true, var_0), vec2<bool>(true, var_0), vec2<bool>(var_0, var_0)))), vec2<bool>(!var_0, any(vec4<bool>(var_0, var_0, true, true))), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, var_0), true), select(false, true, var_0)))), select(select(vec3<bool>(all(vec4<bool>(true, true, var_0, var_0)), any(vec3<bool>(var_0, var_0, var_0)), true), vec3<bool>(true, true, true), !vec3<bool>(false, var_0, false)), select(select(!vec3<bool>(var_0, true, var_0), select(vec3<bool>(var_0, true, false), vec3<bool>(var_0, var_0, false), true), var_0), vec3<bool>(var_0, all(vec4<bool>(var_0, true, false, var_0)), false), select(vec3<bool>(true, var_0, true), !vec3<bool>(var_0, true, var_0), vec3<bool>(false, var_0, false))), var_0));
    global1 = abs(_wgslsmith_clamp_vec4_u32(~var_1.a | ~vec4<u32>(global1.x, u_input.d.x, global1.x, 0u), ~vec4<u32>(29005u, 53077u, 89091u, var_1.a.x) | var_1.a, var_1.a ^ _wgslsmith_sub_vec4_u32(~vec4<u32>(global1.x, u_input.d.x, global1.x, 12364u), ~vec4<u32>(39560u, var_1.a.x, 32014u, global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, func_1(func_4(1944f, firstLeadingBit(~1i), var_1.c), Struct_3(var_1.c)).wzx, _wgslsmith_sub_vec4_i32(firstLeadingBit(-vec4<i32>(var_1.b, 2147483647i, u_input.a.x, 0i)), reverseBits(reverseBits(vec4<i32>(var_1.b, -8917i, u_input.c.x, u_input.b.x) & vec4<i32>(-3338i, -20599i, 2147483647i, u_input.a.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(207f, 399f, 1163f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -363f, 1720f)), vec3<bool>(var_1.e.x, false, true))))))), ~u_input.d.x);
}

