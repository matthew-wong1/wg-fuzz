struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: i32,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec4<f32>) -> vec3<f32> {
    let var_0 = ~(~(~u_input.a));
    let var_1 = arg_1.yyx;
    var var_2 = _wgslsmith_f_op_f32(round(1000f));
    var_2 = var_1.x;
    var var_3 = Struct_4(u_input.b, Struct_2(arg_1.zyy, -u_input.b.x, vec3<bool>(true, u_input.b.x < 44995i, !any(vec4<bool>(false, false, false, true)))), -2147483647i, Struct_1(1u, 7122u, ~(~_wgslsmith_mult_u32(u_input.a, 4294967295u))), _wgslsmith_f_op_f32(f32(-1f) * -326f));
    return vec3<f32>(627f, _wgslsmith_f_op_f32(var_3.e + 382f), var_1.x);
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = vec2<u32>(reverseBits(4294967295u), arg_0.x);
    let var_1 = Struct_4(-(_wgslsmith_div_vec4_i32(-vec4<i32>(-29713i, -1i, u_input.b.x, u_input.b.x), ~u_input.b) ^ u_input.b), Struct_2(_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(~var_0.x, 20019u, var_0.x, ~u_input.a), vec4<f32>(arg_1.c, _wgslsmith_f_op_f32(1951f * -1437f), _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(723f * 1000f)))), 0i, vec3<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true))), true)), abs(0i), Struct_1(_wgslsmith_mult_u32(~arg_0.x, arg_1.a) & min(0u ^ arg_1.a, select(4294967295u, 1u, false)), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(54867u, 9959u, 1u, 93606u), vec4<u32>(var_0.x, arg_0.x, 0u, 43553u)), _wgslsmith_add_vec4_u32(vec4<u32>(3306u, arg_0.x, 0u, arg_1.a), vec4<u32>(29656u, 1u, arg_1.a, 37119u))), _wgslsmith_dot_vec3_u32(select(~vec3<u32>(4294967295u, arg_1.a, 15082u), _wgslsmith_div_vec3_u32(vec3<u32>(13896u, 15093u, 1u), vec3<u32>(1u, 1u, 4294967295u)), true), abs(~vec3<u32>(arg_1.a, 28245u, u_input.a)))), _wgslsmith_f_op_f32(arg_1.b.x + -864f));
    let var_2 = Struct_2(vec3<f32>(arg_1.b.x, 1940f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(select(vec4<u32>(var_1.d.b, 38933u, u_input.a, 41341u), vec4<u32>(0u, arg_1.a, 4294967295u, 82340u), true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-563f, var_1.b.a.x, 697f, var_1.b.a.x)))).x)), u_input.b.x, var_1.b.c);
    var var_3 = ~(~vec4<u32>(_wgslsmith_sub_u32(0u, arg_1.a), countOneBits(~var_0.x), _wgslsmith_add_u32(0u, ~4294967295u), _wgslsmith_dot_vec2_u32(arg_0, ~vec2<u32>(arg_1.a, arg_0.x))));
    let var_4 = Struct_1(1u, max(~(~(arg_1.a << (20722u % 32u))), countOneBits(u_input.a & ~3186u)), u_input.a);
    return var_1.b;
}

fn func_4(arg_0: Struct_2) -> vec4<u32> {
    return _wgslsmith_sub_vec4_u32(~(~abs(~vec4<u32>(13241u, 49131u, u_input.a, 1u))), ~(~vec4<u32>(u_input.a, u_input.a, u_input.a, 224u) << (firstTrailingBit(reverseBits(vec4<u32>(118142u, 25811u, u_input.a, 1u))) % vec4<u32>(32u))));
}

fn func_1() -> i32 {
    var var_0 = vec4<u32>(1u, _wgslsmith_div_u32(1u, 4294967295u) & u_input.a, ~40547u, 24525u);
    let var_1 = vec2<i32>(~(1i ^ select(31964i, -21080i, u_input.b.x < -1i)), -61179i);
    var_0 = func_4(func_2(var_0.zy, Struct_3(~63590u, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-2106f, -566f), vec2<f32>(-1705f, -890f))), _wgslsmith_f_op_f32(f32(-1f) * -232f))));
    var var_2 = select(u_input.b, _wgslsmith_mult_vec4_i32(u_input.b, u_input.b), true);
    var var_3 = _wgslsmith_sub_vec4_u32(reverseBits(firstTrailingBit(~vec4<u32>(15132u, var_0.x, 4294967295u, var_0.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(51359u, 0u, u_input.a), var_0.xzw, vec3<bool>(true, false, true)), min(vec3<u32>(9450u, 4294967295u, u_input.a), vec3<u32>(u_input.a, var_0.x, 48722u))), 0u, var_0.x), abs(max(~vec4<u32>(var_0.x, u_input.a, 36962u, 57801u), vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a))), ~abs(vec4<u32>(35392u, var_0.x, var_0.x, var_0.x)) | ~(vec4<u32>(4294967295u, 106853u, u_input.a, var_0.x) & vec4<u32>(1u, 27226u, u_input.a, 4294967295u))));
    return firstTrailingBit(var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(select(_wgslsmith_add_i32(func_1(), 1i), 0i, true), _wgslsmith_dot_vec4_i32(-vec4<i32>(i32(-1i) * -1i, 0i, ~(-15153i), firstTrailingBit(u_input.b.x)), ~(vec4<i32>(-1i, u_input.b.x, u_input.b.x, u_input.b.x) | vec4<i32>(0i, 2147483647i, 0i, 1i))), func_2(~vec2<u32>(_wgslsmith_mult_u32(1u, u_input.a), 12410u), Struct_3(min(~21188u, 1641u), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -716f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-450f, -665f) + vec2<f32>(896f, 1741f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(216f, 195f)))))).b);
    var var_1 = false;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(466f * -137f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-711f)), _wgslsmith_f_op_f32(1607f - 145f)))) - 199f), 1068f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1039f * 404f)) - -822f))));
    var var_3 = var_0.zz;
    var_0 = vec3<i32>(-2147483647i, 1i, ~u_input.b.x);
    var var_4 = Struct_3(29189u, vec2<f32>(_wgslsmith_div_f32(-542f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(reverseBits(vec4<u32>(u_input.a, u_input.a, 89584u, u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -1142f, var_2.x, var_2.x) + vec4<f32>(1129f, -1220f, var_2.x, var_2.x)))).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.x)) * _wgslsmith_f_op_f32(ceil(-1094f))) + var_2.x));
    var var_5 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(vec2<u32>(var_4.a, _wgslsmith_clamp_u32(1u, var_4.a, u_input.a)) << ((firstTrailingBit(vec2<u32>(var_4.a, 4294967295u)) | ~vec2<u32>(21938u, 76235u)) % vec2<u32>(32u)), Struct_3(84596u, var_4.b, 572f)).a.yx, 1629f);
}

