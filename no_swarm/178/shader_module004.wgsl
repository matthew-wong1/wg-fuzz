struct Struct_1 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: vec2<f32>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(25147u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(0u, 33238u), vec2<u32>(6602u, 0u), vec2<u32>(5197u, 37426u), vec2<u32>(43517u, 19965u), vec2<u32>(22806u, 1u), vec2<u32>(809u, 4294967295u), vec2<u32>(73525u, 21001u), vec2<u32>(4294967295u, 103443u), vec2<u32>(0u, 22559u), vec2<u32>(79464u, 4294967295u), vec2<u32>(46405u, 1u), vec2<u32>(0u, 1u), vec2<u32>(66723u, 17324u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_5, arg_2: Struct_1) -> Struct_1 {
    global0 = array<vec2<u32>, 17>();
    let var_0 = true;
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-1576f)), _wgslsmith_f_op_f32(abs(-1279f)))))));
    global0 = array<vec2<u32>, 17>();
    return arg_2;
}

fn func_3(arg_0: u32, arg_1: bool) -> i32 {
    let var_0 = false;
    var var_1 = -330f;
    let var_2 = select(vec4<bool>(true, true, select(true, true, var_0), all(select(vec2<bool>(false, false), !vec2<bool>(true, var_0), select(vec2<bool>(true, arg_1), vec2<bool>(var_0, arg_1), arg_1)))), vec4<bool>(var_0, arg_1, !arg_1, !all(select(vec3<bool>(var_0, arg_1, true), vec3<bool>(false, var_0, true), var_0))), vec4<bool>(arg_1, var_0, true, false));
    global0 = array<vec2<u32>, 17>();
    let var_3 = _wgslsmith_add_i32(-1i, firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(4458i, 0i), vec2<i32>(0i, -43063i)), ~0i) << (_wgslsmith_add_u32(u_input.b & arg_0, arg_0 >> (1u % 32u)) % 32u)));
    return 2147483647i;
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    let var_0 = _wgslsmith_sub_u32(0u, ~arg_1.b);
    var var_1 = arg_3.c.b;
    var var_2 = Struct_2(vec2<i32>(-arg_3.a.x, -_wgslsmith_mult_i32(arg_0, -1i) >> (arg_1.b % 32u)), u_input.a, func_1(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.a.x, -2147483647i), arg_3.a), Struct_5(arg_1), Struct_1(vec4<i32>(19065i, func_3(arg_3.b, false), ~arg_3.a.x, -arg_0), arg_2.c.b, true, !var_1.x | select(arg_1.a, true, arg_1.a))), select(arg_2.d, vec4<bool>(-1000f <= _wgslsmith_f_op_f32(trunc(-676f)), arg_2.d.x, !(!arg_3.d.x), true), !vec4<bool>(arg_1.a, true, true, false)));
    let var_3 = var_2.d.xz;
    var var_4 = arg_3;
    return arg_3.b ^ _wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_sub_vec2_u32(~global0[_wgslsmith_index_u32(arg_3.b, 17u)], ~global0[_wgslsmith_index_u32(var_4.b, 17u)])), _wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(~(var_4.b >> (0u % 32u)), 17u)], global0[_wgslsmith_index_u32(~1u, 17u)]));
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: Struct_1) -> bool {
    let var_0 = vec2<u32>(~func_4(~(-2147483647i) | func_3(4294967295u, arg_1.d), Struct_3(!arg_2.d, ~u_input.a), Struct_2(firstTrailingBit(vec2<i32>(-2147483647i, 2147483647i)), 1u, Struct_1(vec4<i32>(arg_2.a.x, arg_2.a.x, 22668i, 36711i), arg_2.b, arg_2.d, true), select(vec4<bool>(arg_1.b, arg_2.c, arg_2.b.x, arg_2.b.x), vec4<bool>(false, arg_2.d, arg_1.b, arg_1.d), vec4<bool>(false, arg_2.b.x, arg_2.b.x, arg_1.b))), Struct_2(~arg_2.a.xw, ~arg_0, func_1(arg_2.a.yw, Struct_5(Struct_3(arg_2.d, arg_1.e.x)), Struct_1(vec4<i32>(12584i, arg_2.a.x, arg_2.a.x, arg_2.a.x), arg_2.b, false, arg_2.b.x)), vec4<bool>(arg_2.c, true, true, true))), ~abs(_wgslsmith_add_u32(16348u, arg_0) | 1u));
    let var_1 = true;
    let var_2 = !any(!arg_2.b.xx);
    var var_3 = Struct_4(_wgslsmith_f_op_f32(step(arg_1.c.x, arg_1.a)), all(!(!(!arg_2.b))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1422f, -1000f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-390f, 503f) * vec2<f32>(arg_1.c.x, -236f))))))), arg_2.b.x, arg_1.e);
    global0 = array<vec2<u32>, 17>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(!func_2(firstLeadingBit(0u) >> (1u % 32u), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -2305f), false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(906f, 322f)), true, vec4<u32>(u_input.a, 66750u, u_input.b, 15454u)), func_1(~vec2<i32>(1i, 2147483647i), Struct_5(Struct_3(true, u_input.a)), Struct_1(vec4<i32>(1i, 1i, 1i, 50680i), vec3<bool>(false, false, false), false, true))), ~4294967295u);
    global0 = array<vec2<u32>, 17>();
    var var_1 = vec4<f32>(-1176f, -511f, 485f, -943f);
    let var_2 = firstLeadingBit(_wgslsmith_mod_u32(4294967295u, _wgslsmith_add_u32(4294967295u, ~4294967295u)) | u_input.a);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(step(var_1.x, 834f)), _wgslsmith_f_op_f32(trunc(246f)))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-129f, var_1.x, var_1.x, var_1.x)), vec4<f32>(1637f, -187f, var_1.x, -1026f), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(589f, -742f, -262f, 618f)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1476f, var_1.x), _wgslsmith_f_op_f32(ceil(-1801f)))), var_1.x, var_1.x)))));
    var var_3 = ~(~var_0.b) >> (0u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(0i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.x, -478f, var_1.x))), var_1.xxw, vec3<bool>(false, true, var_0.a)))) + var_1.xww), reverseBits(_wgslsmith_mod_i32(countOneBits(_wgslsmith_mod_i32(-1i, -46249i)), -28680i << (~u_input.a % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-1091f - 444f), var_1.x, _wgslsmith_f_op_f32(-var_1.x), var_1.x))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1952f))), var_1.x, -2206f, var_1.x)));
}

