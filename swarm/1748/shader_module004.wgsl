struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_2,
    d: u32,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<u32>) -> u32 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d + -1159f)))), vec3<bool>(any(!select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), true)), !all(vec2<bool>(true, true)), all(vec2<bool>(false, any(vec4<bool>(false, false, false, true))))), Struct_3(Struct_1(arg_2.c, arg_2.e, ~(-15091i), _wgslsmith_dot_vec3_u32(min(vec3<u32>(arg_2.b, u_input.d.x, u_input.b), vec3<u32>(u_input.d.x, 0u, arg_2.b)), vec3<u32>(0u, 0u, 5187u))), 354f, arg_1, ~(~firstTrailingBit(4294967295u))));
    var var_1 = vec3<i32>(-arg_0 & -171i, ~(~var_0.c.a.c), abs(~(-1i)));
    var var_2 = var_0.c.a;
    var_0 = Struct_4(-524f, !(!select(select(vec3<bool>(var_0.b.x, true, false), var_0.b, var_0.b), select(vec3<bool>(false, var_0.b.x, var_0.b.x), var_0.b, var_0.b.x), !var_0.b)), Struct_3(Struct_1(~vec2<i32>(var_1.x, arg_0), vec2<f32>(_wgslsmith_f_op_f32(-733f + 106f), var_2.b.x), firstTrailingBit(arg_1.c.x << (var_0.c.a.d % 32u)), firstLeadingBit(2698u ^ u_input.b)), -533f, Struct_2(vec4<u32>(select(0u, arg_2.b, var_0.b.x), ~var_0.c.d, arg_1.b, 1u), abs(4294967295u), _wgslsmith_mult_vec2_i32(arg_2.c, u_input.a), -451f, _wgslsmith_f_op_vec2_f32(vec2<f32>(-462f, -813f) + _wgslsmith_f_op_vec2_f32(trunc(arg_1.e)))), 4294967295u));
    var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))), !select(var_0.b, var_0.b, all(select(vec4<bool>(var_0.b.x, true, true, var_0.b.x), vec4<bool>(false, false, var_0.b.x, true), var_0.b.x))), Struct_3(Struct_1(_wgslsmith_sub_vec2_i32(-vec2<i32>(-28085i, arg_0), vec2<i32>(arg_0, -34326i)), vec2<f32>(-1638f, 829f), _wgslsmith_mult_i32(0i, firstTrailingBit(var_0.c.c.c.x)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_3.x, 19114u, arg_3.x), 4294967295u)), arg_2.e.x, Struct_2((vec4<u32>(arg_2.a.x, var_0.c.c.b, u_input.d.x, arg_1.a.x) ^ vec4<u32>(arg_3.x, arg_3.x, arg_3.x, arg_3.x)) << (vec4<u32>(arg_1.b, 0u, 4294967295u, u_input.c.x) % vec4<u32>(32u)), _wgslsmith_dot_vec3_u32(~var_0.c.c.a.xww, vec3<u32>(u_input.b, u_input.b, arg_2.b)), u_input.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.e.x), _wgslsmith_f_op_f32(round(var_2.b.x)))), vec2<f32>(_wgslsmith_div_f32(arg_2.d, -1778f), _wgslsmith_f_op_f32(f32(-1f) * -811f))), _wgslsmith_dot_vec3_u32(arg_3.wxw, abs(vec3<u32>(1u, 66484u, arg_3.x))) | u_input.c.x));
    return _wgslsmith_mod_u32(var_0.c.c.a.x, min(~var_2.d, 1u));
}

fn func_4(arg_0: u32, arg_1: i32) -> vec2<i32> {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1009f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -638f))) + _wgslsmith_f_op_f32(f32(-1f) * -826f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -767f))) - -1000f) * -871f);
    let var_1 = Struct_1(countOneBits(min(select(u_input.a, ~vec2<i32>(u_input.a.x, 2147483647i), vec2<bool>(var_0, var_0)), ~abs(u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(197f)), _wgslsmith_f_op_f32(abs(-769f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1288f, -1000f)), vec2<f32>(-370f, -1004f)), !select(vec2<bool>(var_0, true), vec2<bool>(var_0, true), var_0)))), arg_1 & u_input.a.x, ~u_input.b);
    let var_2 = select(!select(!select(vec3<bool>(true, var_0, false), vec3<bool>(true, true, var_0), var_0), select(vec3<bool>(false, var_0, var_0), select(vec3<bool>(true, var_0, false), vec3<bool>(false, true, var_0), vec3<bool>(var_0, true, var_0)), true), select(select(vec3<bool>(var_0, false, false), vec3<bool>(var_0, var_0, false), vec3<bool>(var_0, false, false)), select(vec3<bool>(false, false, var_0), vec3<bool>(var_0, var_0, var_0), var_0), var_0)), !select(select(select(vec3<bool>(true, var_0, true), vec3<bool>(true, false, var_0), true), vec3<bool>(false, false, var_0), true | var_0), !(!vec3<bool>(var_0, false, false)), vec3<bool>(true, any(vec4<bool>(var_0, var_0, true, var_0)), true)), !select(!vec3<bool>(true, var_0, var_0), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, var_0, var_0), vec3<bool>(var_0, var_0, var_0)), true));
    let var_3 = 19491i;
    let var_4 = -_wgslsmith_sub_i32(firstTrailingBit(var_1.a.x & var_3), 48781i);
    return min(vec2<i32>(_wgslsmith_div_i32(1i, var_4), -abs(var_4)), vec2<i32>(u_input.a.x, ~_wgslsmith_mult_i32(1i, reverseBits(1i))));
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1f, -1065f, all(vec2<bool>(true, true)))))), !vec3<bool>(true, true, min(24695u, u_input.b) < reverseBits(2142u)), Struct_3(Struct_1(func_4(func_3(1i, Struct_2(vec4<u32>(u_input.c.x, u_input.d.x, 49157u, u_input.d.x), u_input.d.x, vec2<i32>(8196i, -11556i), -1204f, vec2<f32>(-1527f, 460f)), Struct_2(vec4<u32>(u_input.b, 0u, u_input.b, 1u), u_input.c.x, u_input.a, 1000f, vec2<f32>(-1000f, 461f)), vec4<u32>(u_input.c.x, u_input.d.x, u_input.c.x, 1u)), -58058i ^ u_input.a.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 979f)))), _wgslsmith_div_i32(~u_input.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), 144188u), 1000f, Struct_2(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d.x, 1u, u_input.b, u_input.b), vec4<u32>(1u, 1u, u_input.b, 72854u)), abs(_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, u_input.d.x, 50411u))), -(u_input.a ^ vec2<i32>(-2147483647i, -1i)), _wgslsmith_f_op_f32(f32(-1f) * -134f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-738f, -1793f) * vec2<f32>(-297f, -229f)))), _wgslsmith_mult_u32(max(u_input.d.x, _wgslsmith_dot_vec2_u32(vec2<u32>(83259u, 39591u), u_input.c.xx)), 12652u)));
    var var_1 = _wgslsmith_add_u32(~(~0u), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(abs(u_input.b) & u_input.d.x, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(var_0.c.a.d, var_0.c.c.a.x)), min(u_input.c.xy, vec2<u32>(1u, u_input.c.x)))), ~0u, ~_wgslsmith_clamp_u32(0u, 13050u, 30067u)));
    var_1 = u_input.d.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(576f, var_0.a, _wgslsmith_f_op_f32(select(var_0.a, var_0.c.a.b.x, true))));
    var var_3 = var_0.c.c;
    return Struct_4(_wgslsmith_f_op_f32(max(-1000f, var_2.x)), var_0.b, Struct_3(var_0.c.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(650f, 166f)))), var_0.c.c, 0u));
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-643f, 322f)), vec2<f32>(-650f, 2110f)) - vec2<f32>(825f, -1162f)), u_input.a.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(0u, ~arg_0, select(~8282u, arg_0, any(vec4<bool>(true, true, true, false)))), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), ~u_input.d.xy))));
    let var_1 = func_2();
    let var_2 = var_1.c.c.a.wwz;
    var var_3 = ~_wgslsmith_mod_i32(var_1.c.c.c.x, 0i);
    var var_4 = u_input.c.yy;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_0.b.x, 326f, var_1.b.x)))))) + var_1.a) > 1001f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~vec2<u32>(~countOneBits(4294967295u), ~_wgslsmith_mod_u32(u_input.d.x, 4294967295u)));
    var var_1 = vec2<bool>(func_1(u_input.b), u_input.a.x != ~abs(u_input.a.x));
    var var_2 = var_0;
    var var_3 = func_2().c.c;
    var_1 = vec2<bool>(var_1.x, var_1.x | var_1.x);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.e.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(469f))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(-733f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-225f, _wgslsmith_f_op_f32(floor(var_3.d)))))));
}

