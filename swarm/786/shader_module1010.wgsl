struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec2<f32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 20> = array<vec2<bool>, 20>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global1: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = -2147483647i;
    return Struct_2(vec2<i32>(reverseBits(u_input.b), u_input.b ^ ~1i), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-721f, _wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(f32(-1f) * -231f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(583f, 1000f, -675f))))), arg_0, vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-166f, -515f, all(arg_0.a.wy))))), u_input.a.x);
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = func_2(arg_1.a);
    let var_1 = Struct_2(_wgslsmith_sub_vec2_i32(u_input.a, -_wgslsmith_mod_vec2_i32(u_input.a, var_0.a)), _wgslsmith_f_op_vec3_f32(-arg_0.xzy), func_2(var_0.c).c, arg_0.wx, 42911i);
    let var_2 = Struct_3(Struct_1(!arg_1.a.a));
    var var_3 = -countOneBits(var_1.e);
    var var_4 = var_1;
    return !(!var_4.c.a.xww);
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = min(abs(vec4<u32>(51796u, arg_1.x, arg_1.x, abs(arg_1.x))), ~vec4<u32>(~(arg_1.x | arg_1.x), _wgslsmith_dot_vec2_u32(~arg_1.zz, max(arg_1.yy, vec2<u32>(arg_1.x, arg_1.x))), max(8003u, arg_1.x) & 10776u, arg_1.x));
    var var_1 = vec3<i32>(_wgslsmith_add_i32(countOneBits(_wgslsmith_mult_i32(u_input.a.x, -11342i)), u_input.a.x), -select(u_input.a.x << (var_0.x % 32u), _wgslsmith_mod_i32(u_input.a.x, 0i), true), max(-1i, u_input.a.x)) & -firstLeadingBit(~abs(vec3<i32>(u_input.a.x, 0i, u_input.b)));
    var_1 = vec3<i32>(16553i, -2147483647i, _wgslsmith_mod_i32(-9746i, var_1.x));
    let var_2 = arg_2;
    var_1 = reverseBits(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-53689i, -1i, -1i) << (arg_1 % vec3<u32>(32u))), abs(-(vec3<i32>(13166i, u_input.a.x, -49112i) & vec3<i32>(var_1.x, 0i, u_input.a.x))), reverseBits(vec3<i32>(-40720i, var_1.x, var_1.x))));
    return _wgslsmith_dot_vec3_i32(reverseBits(reverseBits(abs(vec3<i32>(-2147483647i, 37002i, var_1.x)))) ^ _wgslsmith_mult_vec3_i32(-select(vec3<i32>(u_input.a.x, -9228i, -1i), vec3<i32>(2147483647i, var_1.x, -14257i), false), vec3<i32>(7602i, var_1.x, 21701i)), vec3<i32>(1i, u_input.b, -51791i));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.b.x) != _wgslsmith_f_op_f32(-arg_1.d.x);
    var var_1 = -_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(arg_1.e, _wgslsmith_mult_i32(arg_1.a.x, u_input.a.x), arg_0 | arg_1.a.x, -15770i)), min(vec4<i32>(-arg_0, 34676i, 38049i, ~25292i), vec4<i32>(~1i, u_input.a.x, ~75126i, _wgslsmith_mult_i32(u_input.b, u_input.b))));
    var var_2 = _wgslsmith_div_i32(_wgslsmith_mult_i32(select(-2147483647i, _wgslsmith_sub_i32(1i, 0i), _wgslsmith_f_op_f32(-arg_1.d.x) != arg_1.d.x), -41631i), -_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-12289i, arg_0), vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(936i, arg_1.e)) | u_input.a, func_2(func_2(arg_1.c).c).a));
    var_0 = !(max(~(~1u), firstTrailingBit(37435u)) <= (1u | ~select(1u, 37262u, arg_1.c.a.x)));
    let var_3 = vec4<i32>(~(-(_wgslsmith_mod_i32(-1i, -31534i) & _wgslsmith_div_i32(arg_0, 0i))), u_input.a.x, u_input.a.x, _wgslsmith_add_i32(~32975i, arg_0));
    return firstLeadingBit(~countOneBits(vec4<u32>(32208u, 1u, 4622u, _wgslsmith_dot_vec4_u32(vec4<u32>(83705u, 1020u, 4294967295u, 0u), vec4<u32>(1u, 1u, 6064u, 21156u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.b, u_input.b, -u_input.a.x, 2147483647i | reverseBits(-_wgslsmith_clamp_i32(u_input.a.x, 1i, u_input.b)));
    global1 = u_input.a.x;
    let var_1 = _wgslsmith_dot_vec4_u32(func_4(func_3(any(func_1(vec4<f32>(-2289f, -1300f, -254f, 749f), Struct_3(Struct_1(vec4<bool>(false, true, true, false))))), vec3<u32>(4294967295u, 4294967295u, ~8152u), Struct_1(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false)))), func_2(func_2(func_2(Struct_1(vec4<bool>(true, false, false, false))).c).c)), ~max(vec4<u32>(8784u, ~11176u, 2425u, abs(40192u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(0u, 1171u, 0u, 0u)), ~vec4<u32>(1u, 4294967295u, 1u, 1u))));
    global0 = array<vec2<bool>, 20>();
    var var_2 = select(!(!func_2(func_2(Struct_1(vec4<bool>(false, true, false, false))).c).c.a), func_2(Struct_1(func_2(Struct_1(vec4<bool>(true, true, true, false))).c.a)).c.a, all(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-441f, -472f, -1255f, -345f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-263f, 1414f, 980f, -658f)))), Struct_3(func_2(Struct_1(vec4<bool>(false, false, true, true))).c)).yy));
    global1 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1, -26497i, 0i, 1142f, func_2(Struct_1(!(!vec4<bool>(var_2.x, true, var_2.x, var_2.x)))).b);
}

