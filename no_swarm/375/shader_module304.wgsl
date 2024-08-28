struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 27> = array<vec3<i32>, 27>(vec3<i32>(0i, 18457i, 2147483647i), vec3<i32>(-14079i, 2685i, -10496i), vec3<i32>(10332i, 2147483647i, 0i), vec3<i32>(23217i, -1i, 2147483647i), vec3<i32>(0i, 18879i, 36465i), vec3<i32>(i32(-2147483648), i32(-2147483648), -37101i), vec3<i32>(-61705i, 23283i, -27827i), vec3<i32>(0i, 48957i, 0i), vec3<i32>(28751i, 1i, -22240i), vec3<i32>(5033i, 47115i, 10405i), vec3<i32>(-18394i, 5794i, 27884i), vec3<i32>(-4508i, 40739i, 1i), vec3<i32>(i32(-2147483648), -46797i, -2355i), vec3<i32>(0i, 52636i, 2147483647i), vec3<i32>(-5460i, -38769i, i32(-2147483648)), vec3<i32>(-50383i, i32(-2147483648), -1i), vec3<i32>(1i, -24046i, -1i), vec3<i32>(-1i, -54456i, -55772i), vec3<i32>(-1i, -12497i, -43703i), vec3<i32>(-2866i, 0i, i32(-2147483648)), vec3<i32>(0i, 24683i, -1i), vec3<i32>(-24088i, -75922i, 10600i), vec3<i32>(-7688i, 0i, 1i), vec3<i32>(5200i, 0i, 18935i), vec3<i32>(1i, -1i, -1295i), vec3<i32>(i32(-2147483648), 1i, 2147483647i), vec3<i32>(0i, 57306i, 8490i));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<i32>) -> f32 {
    var var_0 = Struct_1(1u, 0u, _wgslsmith_f_op_vec4_f32(-arg_2.c));
    var_0 = Struct_1((~(~arg_2.b) << (_wgslsmith_mult_u32(4294967295u >> (arg_0.a % 32u), arg_0.b) % 32u)) & _wgslsmith_dot_vec4_u32(vec4<u32>(27149u, _wgslsmith_mult_u32(var_0.a, var_0.b), _wgslsmith_sub_u32(var_0.b, 1u), 68776u), ~vec4<u32>(arg_2.a, arg_0.a, 5866u, u_input.b) >> ((vec4<u32>(arg_0.b, arg_2.a, arg_2.a, 16227u) | vec4<u32>(u_input.b, arg_2.a, 26792u, var_0.b)) % vec4<u32>(32u))), 45012u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.a - _wgslsmith_f_op_vec4_f32(-arg_1.a))), arg_2.c)));
    let var_1 = arg_1;
    var_0 = arg_0;
    let var_2 = Struct_1(var_0.a, u_input.b, var_0.c);
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_2.c.x)));
}

fn func_2() -> vec2<u32> {
    global0 = array<vec3<i32>, 27>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(513f, 1108f, 694f) + vec3<f32>(-925f, -141f, 1111f)))))));
    var var_1 = Struct_2(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -252f)))), _wgslsmith_f_op_f32(func_3(Struct_1(u_input.b, firstLeadingBit(u_input.b), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.x, var_0.x, -844f, -453f)))), Struct_2(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-820f, 1739f, var_0.x, 1465f))), _wgslsmith_f_op_f32(-var_0.x)), Struct_1(min(0u, u_input.c.x), ~43869u, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(246f, var_0.x, -306f, var_0.x), vec4<f32>(183f, 590f, var_0.x, var_0.x)))), select(u_input.a.wyx, u_input.a.yyw, vec3<bool>(true, true, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x - -182f)))), _wgslsmith_f_op_f32(min(-1068f, 2988f)));
    var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(var_1.a * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.x, 1000f, _wgslsmith_f_op_f32(abs(var_0.x)), var_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1313f)) + _wgslsmith_f_op_f32(trunc(-1288f)))))));
    global0 = array<vec3<i32>, 27>();
    return ~countOneBits(vec2<u32>(_wgslsmith_clamp_u32(u_input.b, ~u_input.c.x, 1u), ~countOneBits(u_input.c.x)));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec2<u32>) -> vec2<u32> {
    let var_0 = vec3<u32>(~1u, arg_2.x, select(_wgslsmith_dot_vec2_u32(arg_2, _wgslsmith_mod_vec2_u32(vec2<u32>(21711u, u_input.b), ~vec2<u32>(u_input.c.x, 1u))), 114680u, false));
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(44864i, u_input.a.x, firstLeadingBit(u_input.a.x)), vec3<i32>(abs(_wgslsmith_add_i32(u_input.a.x, -34528i)) << (89059u % 32u), select(~reverseBits(u_input.a.x), ~(~u_input.a.x), select(true, arg_1, true)), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.a.wx), _wgslsmith_mod_vec2_i32(u_input.a.zz, u_input.a.zy)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(1i, -1i)), countOneBits(-75698i)))));
    let var_2 = Struct_1(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, 56969u, 37623u, 1330u), vec4<u32>(u_input.c.x, 0u, 1u, u_input.c.x)) | ~arg_2.x), var_0.x, vec4<f32>(-2005f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(810f, 546f) * _wgslsmith_f_op_f32(-312f + 461f))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(floor(1f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1157f, 685f)) - _wgslsmith_f_op_f32(f32(-1f) * -167f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-194f, 248f) + _wgslsmith_f_op_f32(sign(121f)))))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(var_2.c - vec4<f32>(var_2.c.x, _wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-958f)))), var_2.c.x)), -1000f);
    var var_4 = u_input.c;
    return _wgslsmith_add_vec2_u32(~firstTrailingBit(arg_2), vec2<u32>(var_4.x, ~4294967295u)) & _wgslsmith_sub_vec2_u32(var_0.yy, min(u_input.c.zx, ~vec2<u32>(8428u, 4294967295u)));
}

fn func_1() -> vec4<f32> {
    global0 = array<vec3<i32>, 27>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-189f, _wgslsmith_f_op_f32(f32(-1f) * -479f), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -153f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1236f))))));
    global0 = array<vec3<i32>, 27>();
    global0 = array<vec3<i32>, 27>();
    let var_1 = ~func_4(true | (u_input.b >= 14577u), false, func_2());
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2887f, -786f, 351f, var_0) - vec4<f32>(1000f, var_0, var_0, 1287f)))))));
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = ~firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, arg_2.a, arg_2.a, u_input.c.x ^ 13339u), vec4<u32>(27934u, 0u, u_input.c.x, ~u_input.c.x)));
    global0 = array<vec3<i32>, 27>();
    let var_1 = !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, false))), true));
    global0 = array<vec3<i32>, 27>();
    global0 = array<vec3<i32>, 27>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec2<i32>(abs(max(-u_input.a.x, ~u_input.a.x)), 1i), -344f, Struct_1(~u_input.c.x, _wgslsmith_mult_u32(~4294967295u, u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-204f, 520f, -881f, 1792f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(211f, 198f, 1231f, -1347f)))) * _wgslsmith_f_op_vec4_f32(func_1()))), reverseBits(5667i));
    let var_1 = i32(-1i) * -61336i;
    let var_2 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1487f, _wgslsmith_f_op_f32(f32(-1f) * -474f), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(round(-801f))), _wgslsmith_f_op_vec4_f32(var_0.c - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.c.x, 1161f, var_0.c.x, var_0.c.x) * vec4<f32>(521f, var_0.c.x, var_0.c.x, var_0.c.x))), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-917f, _wgslsmith_f_op_f32(func_3(var_0, Struct_2(var_0.c, 139f), Struct_1(0u, 46560u, vec4<f32>(-1536f, -1076f, 635f, var_0.c.x)), vec3<i32>(var_1, -1i, var_1))), var_0.c.x, _wgslsmith_f_op_f32(2158f - var_0.c.x)) - vec4<f32>(-1080f, -490f, -674f, _wgslsmith_f_op_f32(var_0.c.x + 441f)))), var_0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-18310i, -35190i, min(41682i, 2147483647i), -1317f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1157f, 108f, -1000f, var_2.b), var_0.c), _wgslsmith_f_op_vec4_f32(trunc(var_0.c)), any(vec4<bool>(false, false, false, true)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(var_0.c, vec4<f32>(var_0.c.x, var_2.a.x, -313f, var_0.c.x), true))))));
}

