struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: vec4<bool>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(4294967295u, 16696u, 1u), vec3<u32>(52160u, 1u, 14199u), vec3<u32>(0u, 1u, 0u), vec3<u32>(1u, 74119u, 0u), vec3<u32>(48384u, 1u, 0u), vec3<u32>(0u, 4294967295u, 13686u), vec3<u32>(29628u, 4294967295u, 0u), vec3<u32>(3001u, 17492u, 0u), vec3<u32>(1u, 59015u, 10157u), vec3<u32>(33536u, 35537u, 14173u), vec3<u32>(11805u, 54186u, 45593u), vec3<u32>(45870u, 4294967295u, 96265u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(44242u, 31040u, 91725u), vec3<u32>(60029u, 22343u, 64911u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(0u, 10079u, 68540u), vec3<u32>(1u, 1u, 90033u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(63235u, 20730u, 4294967295u), vec3<u32>(61352u, 8506u, 0u), vec3<u32>(35781u, 43665u, 1u), vec3<u32>(1u, 1u, 11075u), vec3<u32>(27419u, 2954u, 0u));

var<private> global1: array<vec2<i32>, 15>;

var<private> global2: array<vec2<i32>, 32>;

var<private> global3: u32 = 1u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: f32, arg_3: vec3<bool>) -> vec3<bool> {
    global1 = array<vec2<i32>, 15>();
    var var_0 = -10966i;
    var var_1 = any(arg_3.yy);
    let var_2 = arg_2;
    let var_3 = 108477u;
    return !vec3<bool>(arg_3.x, arg_3.x, !arg_3.x);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global3 = u_input.c;
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 669f)))))), arg_0, vec4<bool>(!(_wgslsmith_f_op_f32(round(-994f)) >= _wgslsmith_f_op_f32(-arg_0)), false, false, true), func_3(vec2<u32>(~_wgslsmith_div_u32(u_input.c, 77049u), u_input.c ^ 4294967295u), true, -109f, vec3<bool>(all(vec2<bool>(false, false)), true, arg_0 >= arg_0)));
    var var_1 = u_input.b;
    let var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(443f, _wgslsmith_f_op_f32(-var_0.b))), _wgslsmith_f_op_f32(-arg_0))), _wgslsmith_f_op_f32(227f + 879f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, -2043f) * _wgslsmith_f_op_f32(var_0.b * arg_0)), _wgslsmith_f_op_f32(trunc(arg_0)))), var_0.c, !var_0.c.wxx);
    var var_3 = 1066f;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(-803f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.b), _wgslsmith_f_op_f32(var_0.b - arg_0))), _wgslsmith_f_op_f32(ceil(1748f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-603f - 215f))))), _wgslsmith_f_op_f32(1620f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1825f - 1032f) - _wgslsmith_f_op_f32(f32(-1f) * -579f)))), global0[_wgslsmith_index_u32(min(u_input.c, u_input.c) << (~4294967295u % 32u), 24u)]);
    var var_1 = func_2(371f);
    return Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1156f), _wgslsmith_f_op_f32(sign(533f)))), _wgslsmith_f_op_f32(f32(-1f) * -665f));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<u32>) -> vec2<f32> {
    let var_0 = vec2<u32>((countOneBits(arg_2.x) << (~arg_2.x % 32u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c, 52061u, 1u) & max(arg_2, arg_2), arg_2), firstTrailingBit(~(4294967295u ^ _wgslsmith_mult_u32(arg_2.x, u_input.c))));
    let var_1 = Struct_3(u_input.a.x | -(~u_input.a.x));
    var var_2 = ~(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(arg_2.zx, vec2<u32>(44727u, 57925u)), ~19095u)) & 34807u;
    global0 = array<vec3<u32>, 24>();
    global2 = array<vec2<i32>, 32>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1069f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - _wgslsmith_f_op_f32(477f + arg_1.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(1u);
    var var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_4(true, func_1(), abs(vec4<u32>(u_input.c, u_input.c, 21645u, 66244u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(363f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(898f, -1208f, false)) - -583f))), !vec4<bool>(all(vec3<bool>(true, false, false)), any(vec2<bool>(true, false)) & any(vec3<bool>(false, true, true)), !(74677u > u_input.c), true), vec3<bool>(true, true, !(!all(vec3<bool>(true, true, false)))));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(1127f - -636f), -613f), ~(vec3<u32>(34247u, _wgslsmith_dot_vec4_u32(vec4<u32>(5695u, 41366u, 4294967295u, u_input.c), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), ~26375u) << (vec3<u32>(firstLeadingBit(u_input.c), ~29881u, ~4294967295u) % vec3<u32>(32u))));
    let var_3 = var_2.a;
    let var_4 = ~(~_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.b, -2147483647i, u_input.a.x), u_input.d)) | u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, -(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, u_input.b, var_4.x), _wgslsmith_mult_vec3_i32(var_4, u_input.d))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(872f, var_3.a, var_2.a.b, var_3.a) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.a, 711f, 341f, -515f) + vec4<f32>(683f, var_1.b, var_3.a, var_1.a.x))))))), ((~1i | var_4.x) << (~(~var_2.b.x) % 32u)) | -8500i, var_4.x);
}

