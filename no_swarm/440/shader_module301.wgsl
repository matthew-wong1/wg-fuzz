struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: i32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(4294967295u, 53089u, 4294967295u, 5656u), vec4<u32>(27506u, 1u, 4294967295u, 0u), vec4<u32>(13282u, 0u, 17884u, 4294967295u), vec4<u32>(71129u, 1u, 1u, 22445u), vec4<u32>(7952u, 31269u, 4294967295u, 1u), vec4<u32>(18477u, 4230u, 23570u, 1u), vec4<u32>(4294967295u, 0u, 50530u, 56382u), vec4<u32>(4304u, 4294967295u, 8211u, 4294967295u), vec4<u32>(4294967295u, 27412u, 52314u, 1u), vec4<u32>(40192u, 4294967295u, 17712u, 26409u), vec4<u32>(4294967295u, 1u, 1u, 1u), vec4<u32>(0u, 4294967295u, 32902u, 14254u), vec4<u32>(1u, 64275u, 4294967295u, 16516u));

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec2<u32>) -> vec2<bool> {
    let var_0 = arg_1.b;
    let var_1 = select(firstTrailingBit(~(~abs(arg_3))), u_input.b.xw, vec2<bool>(global1.x, true));
    global0 = array<vec4<u32>, 13>();
    global0 = array<vec4<u32>, 13>();
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-591f - -173f), _wgslsmith_f_op_f32(round(369f))))))));
    return !select(!global1.yx, vec2<bool>(arg_1.a, !(arg_1.a & arg_1.a)), !(!vec2<bool>(arg_1.a, arg_1.a)));
}

fn func_3() -> bool {
    global1 = select(select(!vec3<bool>(any(vec2<bool>(false, true)), all(vec4<bool>(false, global1.x, global1.x, global1.x)), global1.x), !(!select(vec3<bool>(true, global1.x, true), vec3<bool>(global1.x, true, false), vec3<bool>(false, global1.x, false))), true), vec3<bool>(select(true, true, true), true, global1.x || !global1.x), vec3<bool>(true, !global1.x, true));
    let var_0 = !vec4<bool>(!(all(vec3<bool>(global1.x, global1.x, false)) | true), !(!global1.x), any(global1.xx), global1.x);
    var var_1 = var_0.wyx;
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1183f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-872f + 630f) - 2636f)), ~vec2<i32>(~(-1i), max(u_input.a, 0i)), u_input.a), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-897f + -1395f), 967f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -778f))), 264f), u_input.d.x, ~vec2<u32>(4294967295u, 95622u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1961f + -943f)))));
    let var_3 = var_2.c;
    return all(select(var_0, var_0, false));
}

fn func_1() -> Struct_2 {
    global1 = !vec3<bool>(!(!(u_input.b.x <= 1u)), 0i == -(7009i ^ u_input.a), any(select(func_2(-1467i, Struct_4(false, Struct_3(vec3<i32>(-25799i, 23364i, u_input.a))), Struct_1(1000f, u_input.d.xz, -17714i), u_input.b.yy), global1.zz, true)));
    global0 = array<vec4<u32>, 13>();
    global1 = !select(!(!(!vec3<bool>(global1.x, global1.x, false))), select(select(!vec3<bool>(global1.x, global1.x, true), select(vec3<bool>(true, true, global1.x), vec3<bool>(true, true, global1.x), global1.x), true), select(!vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, false), global1.x), select(func_3(), global1.x, !global1.x)), vec3<bool>(58772u > ~u_input.b.x, true, !(!global1.x)));
    let var_0 = 1f;
    global1 = !select(select(vec3<bool>(u_input.c <= 4294967295u, func_3(), false), !select(vec3<bool>(true, true, global1.x), vec3<bool>(global1.x, false, global1.x), global1.x), _wgslsmith_mult_i32(u_input.d.x, 18516i) > _wgslsmith_mult_i32(0i, 27907i)), vec3<bool>(true, true, (var_0 != var_0) || true), select(select(select(vec3<bool>(false, global1.x, false), vec3<bool>(false, false, global1.x), global1.x), vec3<bool>(global1.x, global1.x, global1.x), select(global1.x, false, true)), !vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, true, true)));
    return Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + -551f), -189f), ~vec2<i32>(-1i, ~u_input.d.x), -30720i), vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.d.x, 3154i), (u_input.a | 6171i) ^ 1i) << (_wgslsmith_dot_vec2_u32(firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.c), vec2<u32>(u_input.b.x, 15676u))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.yx & vec2<u32>(0u, u_input.c), reverseBits(u_input.b.zw))) % 32u), reverseBits(~vec2<u32>(select(0u, 59415u, global1.x), countOneBits(5710u))), _wgslsmith_f_op_f32(-1067f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = Struct_4(true, Struct_3(-u_input.d));
    global0 = array<vec4<u32>, 13>();
    global0 = array<vec4<u32>, 13>();
    global1 = select(vec3<bool>(any(vec3<bool>(true | global1.x, true, var_1.a)), !((var_0.d.x == 18538u) && false), global1.x || !any(vec4<bool>(false, var_1.a, false, var_1.a))), select(vec3<bool>(any(!vec2<bool>(false, var_1.a)), true, var_1.a), select(vec3<bool>(global1.x && true, true, global1.x), select(vec3<bool>(false, true, true), select(vec3<bool>(var_1.a, var_1.a, false), vec3<bool>(false, global1.x, var_1.a), vec3<bool>(true, global1.x, var_1.a)), vec3<bool>(var_1.a, true, var_1.a)), global1.x), select(!vec3<bool>(global1.x, global1.x, var_1.a), select(select(vec3<bool>(true, global1.x, var_1.a), vec3<bool>(false, global1.x, var_1.a), global1.x), select(vec3<bool>(var_1.a, false, global1.x), vec3<bool>(true, var_1.a, false), vec3<bool>(false, global1.x, var_1.a)), true), var_0.b.x < _wgslsmith_f_op_f32(floor(var_0.e)))), firstTrailingBit(var_0.d.x) != 4294967295u);
    var var_2 = Struct_5(var_1, var_1.b, Struct_2(Struct_1(-650f, -max(var_0.a.b, vec2<i32>(-8411i, -33955i)), 1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1118f, -465f, 1065f))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, 1f, 1f)))), u_input.d.x, vec2<u32>(~(u_input.c >> (1u % 32u)), u_input.b.x), var_0.b.x));
    var_2 = Struct_5(var_1, Struct_3(_wgslsmith_sub_vec3_i32(u_input.d, vec3<i32>(u_input.a, abs(var_2.a.b.a.x), ~(-70593i)))), var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(var_2.c.c), var_0.a.b.x, firstLeadingBit(_wgslsmith_div_i32(u_input.d.x, var_0.a.b.x)), 2147483647i), var_2.a.b.a);
}

