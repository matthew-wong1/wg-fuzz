struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: f32;

var<private> global2: Struct_1 = Struct_1(28446u, vec2<i32>(i32(-2147483648), 69455i), vec2<f32>(1120f, 971f), true);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_2(1u, 4294967295u, u_input.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-531f + global2.c.x), global2.c.x)) + -276f), select(!select(select(vec4<bool>(global2.d, true, global2.d, true), vec4<bool>(global2.d, false, global2.d, true), vec4<bool>(true, true, true, false)), vec4<bool>(global2.d, true, global2.d, global2.d), vec4<bool>(global2.d, false, global2.d, false)), select(vec4<bool>(global2.a < 80040u, !global2.d, !global2.d, global2.d && global2.d), vec4<bool>(true, select(true, true, false), true, global2.d), select(select(vec4<bool>(global2.d, global2.d, global2.d, global2.d), vec4<bool>(true, global2.d, true, false), false), !vec4<bool>(true, false, global2.d, global2.d), select(vec4<bool>(false, true, true, global2.d), vec4<bool>(true, global2.d, true, false), global2.d))), any(vec3<bool>(!global2.d, any(vec2<bool>(false, false)), any(vec2<bool>(true, global2.d))))));
    var var_1 = var_0;
    var var_2 = global2.b.x >> (~(~(~var_1.a)) % 32u);
    var var_3 = Struct_2(select(firstLeadingBit(u_input.b.x), _wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, 44924u, 1u), 46424u) | ~_wgslsmith_mod_u32(65304u, 4294967295u), _wgslsmith_f_op_f32(-641f - _wgslsmith_f_op_f32(floor(var_0.d))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d))), u_input.b.x, 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.c.x - -927f), _wgslsmith_f_op_f32(-841f - -311f))))) + global2.c.x), select(!(!var_0.e), !select(!var_1.e, select(vec4<bool>(true, var_1.e.x, global2.d, var_0.e.x), var_1.e, var_1.e), !var_1.e.x), var_1.e));
    let var_4 = _wgslsmith_mod_i32(var_0.c, 22673i);
    return _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1524f, -373f, 1120f, global2.c.x)))))), vec4<f32>(var_1.d, -2033f, -1075f, 744f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(306f, 1032f, global2.c.x, var_1.d), vec4<f32>(-1000f, var_1.d, -1328f, var_3.d))))))))));
}

fn func_4(arg_0: vec4<f32>) -> u32 {
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x)) - -188f) - -1315f);
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(-399f, global2.c.x))))));
    let var_1 = _wgslsmith_div_u32(0u, global2.a);
    global1 = -457f;
    global2 = Struct_1(firstTrailingBit(0u), ~_wgslsmith_clamp_vec2_i32(-countOneBits(u_input.c), u_input.c, u_input.c), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1784f), _wgslsmith_f_op_f32(-var_0)) + arg_0.xw))), !global2.d);
    return 43231u;
}

fn func_2() -> vec2<f32> {
    global0 = 1u;
    let var_0 = ~func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, 702f, -790f, global2.c.x)) - _wgslsmith_f_op_vec4_f32(func_3()))));
    var var_1 = Struct_1(u_input.a, -(~select(~vec2<i32>(u_input.c.x, u_input.c.x), u_input.c ^ vec2<i32>(global2.b.x, 0i), select(vec2<bool>(true, global2.d), vec2<bool>(global2.d, global2.d), global2.d))), _wgslsmith_f_op_vec2_f32(select(global2.c, vec2<f32>(_wgslsmith_f_op_f32(step(global2.c.x, _wgslsmith_f_op_f32(-global2.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -215f) - global2.c.x)), all(vec3<bool>(global2.d, true, global2.d | global2.d)))), true);
    var var_2 = vec3<bool>(!global2.d, all(vec2<bool>(all(vec2<bool>(true, true)), !global2.d)), !(false || any(!vec4<bool>(true, false, var_1.d, false))));
    let var_3 = -(~47711i);
    return global2.c;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)), global2.c.x, _wgslsmith_f_op_f32(global2.c.x - global2.c.x))));
    let var_1 = vec3<u32>(global2.a, 4294967295u, 4294967295u ^ select(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), u_input.b), ~26936u, global2.d));
    var var_2 = Struct_2(global2.a, 39240u, u_input.c.x, _wgslsmith_f_op_f32(-417f + global2.c.x), !vec4<bool>(global2.d, !(!global2.d), global2.d, select(global2.d, false, false) && global2.d));
    var var_3 = ~(~_wgslsmith_mult_vec2_u32(~u_input.b, vec2<u32>(u_input.b.x, 30166u) | vec2<u32>(global2.a, var_1.x))) & _wgslsmith_sub_vec2_u32(max(_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.a)), select(select(vec2<u32>(37789u, 4294967295u), vec2<u32>(global2.a, 39682u), var_2.e.wx), vec2<u32>(u_input.a, 11764u) >> (var_1.xx % vec2<u32>(32u)), !var_2.e.x)), ~_wgslsmith_sub_vec2_u32(var_1.xx, var_1.yz) << (vec2<u32>(var_2.b, var_2.a) % vec2<u32>(32u)));
    let var_4 = _wgslsmith_f_op_vec2_f32(func_2());
    return abs(reverseBits(1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~(~10508u), _wgslsmith_add_u32(func_1() | ~1u, u_input.a), ~1u, 46162u);
    let var_1 = Struct_2(~_wgslsmith_mod_u32(select(~global2.a, ~32210u, global2.d), var_0.x), reverseBits(var_0.x), -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.c.x))), !vec4<bool>(global2.d, false, true, global2.d));
    let var_2 = Struct_1(4294967295u, -_wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.c.x, -1i), ~firstTrailingBit(vec2<i32>(var_1.c, -23767i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global2.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, 1267f)))), 183f >= var_1.d);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<i32>(countOneBits(0i), var_2.b.x, abs(u_input.c.x))) ^ _wgslsmith_clamp_vec3_i32(max(vec3<i32>(var_2.b.x, var_2.b.x, -20389i) >> (var_0.xzy % vec3<u32>(32u)), abs(vec3<i32>(-11867i, 11236i, -1i))), abs(~vec3<i32>(3073i, 0i, u_input.c.x)), ~(vec3<i32>(u_input.c.x, -29316i, var_2.b.x) >> (vec3<u32>(0u, 0u, global2.a) % vec3<u32>(32u)))), var_2.b.x, 7615u);
}

