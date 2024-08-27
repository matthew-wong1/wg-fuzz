struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(1u, 0u, 9864u), vec3<u32>(0u, 35225u, 4294967295u), vec3<u32>(1u, 0u, 22177u));

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<i32>(0i, -5752i, 2147483647i, 13700i), vec2<bool>(false, false), vec3<bool>(false, true, true), true, vec2<bool>(true, false)));

var<private> global2: Struct_1;

var<private> global3: vec2<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<bool> {
    let var_0 = 0i;
    let var_1 = global2.a.wwx;
    global1 = Struct_2(Struct_1(-abs(abs(global1.a.a)), vec2<bool>(all(global1.a.c), true), global2.c, global1.a.d, vec2<bool>(0i >= var_1.x, any(vec3<bool>(false, false, false)))));
    global3 = vec2<bool>(false, !(!(!any(global2.b))));
    global1 = Struct_2(Struct_1(vec4<i32>(var_1.x, u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_1.x, -68918i, -6353i), abs(global2.a.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global2.a.x, global1.a.a.x, u_input.a.x), global2.a.yxx), global1.a.a.x)), global2.e, select(select(global2.c, vec3<bool>(true, global3.x, true), vec3<bool>(false, true, false)), global1.a.c, !vec3<bool>(global2.b.x, global2.c.x, true)), true, !vec2<bool>(!global2.d, select(true, false, false))));
    return vec2<bool>(true, all(select(!select(vec4<bool>(true, true, false, global2.d), vec4<bool>(global1.a.c.x, global1.a.b.x, global1.a.b.x, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(global1.a.d, global3.x, false, global3.x), !vec4<bool>(global1.a.b.x, global3.x, false, false), !vec4<bool>(false, global1.a.e.x, false, global3.x)), vec4<bool>(true, !global1.a.b.x, true, global2.b.x))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec4<u32> {
    let var_0 = Struct_1(-arg_1.a, select(arg_2.a.e, func_3(), vec2<bool>(min(arg_3.a.a.x, -13008i) <= -2147483647i, !global1.a.c.x)), select(vec3<bool>(true, select(true, false, select(arg_2.a.c.x, arg_2.a.b.x, global2.b.x)), all(!vec4<bool>(true, true, true, global1.a.b.x))), arg_1.c, select(arg_2.a.c.x, arg_2.a.e.x, !all(vec2<bool>(true, false)))), false, global1.a.e);
    global0 = array<vec3<u32>, 3>();
    global2 = Struct_1(arg_2.a.a, vec2<bool>(global2.d, select(!global3.x, true, true)), !(!(!(!arg_3.a.c))), false, var_0.c.xx);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1087f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(950f * -305f), _wgslsmith_f_op_f32(f32(-1f) * -446f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-126f + 1162f), 620f, false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-300f, 224f)) + _wgslsmith_div_f32(-547f, 766f))))));
    var var_2 = arg_3.a.b.x;
    return select(_wgslsmith_mod_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, 0u, arg_0.x, 4294967295u) | vec4<u32>(4294967295u, arg_0.x, arg_0.x, 4294967295u), abs(vec4<u32>(18179u, arg_0.x, arg_0.x, arg_0.x))), ~vec4<u32>(22734u, 12806u, 0u, 71287u) << ((vec4<u32>(arg_0.x, 38354u, arg_0.x, 0u) | vec4<u32>(arg_0.x, 0u, 32595u, arg_0.x)) % vec4<u32>(32u)), select(select(vec4<bool>(arg_1.c.x, global1.a.c.x, false, arg_1.d), vec4<bool>(false, true, false, global2.b.x), false), select(vec4<bool>(false, false, global2.e.x, global3.x), vec4<bool>(false, arg_2.a.d, arg_3.a.c.x, arg_3.a.c.x), vec4<bool>(false, false, var_0.b.x, arg_2.a.e.x)), vec4<bool>(var_0.c.x, arg_3.a.d, global3.x, global3.x))), ~(~vec4<u32>(arg_0.x, 4294967295u, arg_0.x, arg_0.x))), vec4<u32>(arg_0.x, ~arg_0.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(~arg_0.x, firstTrailingBit(arg_0.x)), 62438u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(55217u, 0u), firstTrailingBit(arg_0.xz), vec2<u32>(1u, arg_0.x)), ~arg_0.yx ^ vec2<u32>(53638u, 87851u))), select(select(vec4<bool>(any(arg_2.a.c), all(arg_2.a.c), true & global3.x, true), select(vec4<bool>(false, false, arg_3.a.e.x, global1.a.d), !vec4<bool>(true, true, arg_2.a.b.x, true), select(vec4<bool>(false, false, global2.e.x, true), vec4<bool>(true, true, global2.e.x, var_0.c.x), vec4<bool>(arg_3.a.c.x, arg_1.c.x, arg_2.a.b.x, false))), true), !select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, var_0.e.x, false, global1.a.d), vec4<bool>(false, true, arg_3.a.c.x, true), vec4<bool>(global3.x, arg_1.c.x, false, true)), global2.e.x), vec4<bool>(arg_0.x != arg_0.x, arg_2.a.d, all(arg_2.a.c), -arg_2.a.a.x != _wgslsmith_add_i32(-34760i, arg_3.a.a.x))));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: bool) -> u32 {
    let var_0 = 1u;
    let var_1 = global1.a.a.x;
    global3 = arg_1.zy;
    let var_2 = select(var_0, var_0, arg_0.x);
    var var_3 = -351f;
    return _wgslsmith_dot_vec4_u32(func_4(vec3<u32>(reverseBits(var_2), ~13986u, reverseBits(var_0)), Struct_1(global1.a.a, select(arg_0.yw, arg_0.wz, false), vec3<bool>(true, true, select(arg_1.x, true, true)), true, arg_0.wx), Struct_2(Struct_1(vec4<i32>(4193i, -57149i, global2.a.x, global2.a.x), func_3(), vec3<bool>(global3.x, true, arg_1.x), true, global1.a.c.yy)), Struct_2(global1.a)), abs(~firstTrailingBit(select(vec4<u32>(var_2, 26254u, 0u, 100117u), vec4<u32>(var_0, 11455u, var_0, 16825u), vec4<bool>(false, arg_2, global3.x, false)))));
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = vec2<u32>(64878u, 4294967295u);
    let var_1 = (u_input.a.x >> (~(1u >> (func_2(vec4<bool>(global1.a.d, true, global3.x, global1.a.c.x), vec4<bool>(global2.e.x, true, global2.b.x, global1.a.e.x), true) % 32u)) % 32u)) >= global1.a.a.x;
    var var_2 = Struct_1(vec4<i32>(-(~(-2147483647i)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(global1.a.a.x, global1.a.a.x, arg_0.a.x), -arg_0.a.x, ~(-23814i)), select(global1.a.a.x, 1i, true), 2147483647i) >> (~vec4<u32>(~var_0.x, 1u, firstTrailingBit(var_0.x), ~var_0.x) % vec4<u32>(32u)), select(!(!global1.a.c.zy), global2.e, !vec2<bool>(true, !global3.x)), vec3<bool>(all(!global2.b), any(vec4<bool>(all(vec3<bool>(var_1, global3.x, global3.x)), true, global2.b.x, 63532i < global2.a.x)), true), true, global2.b);
    var var_3 = Struct_2(Struct_1(~vec4<i32>(-51205i, 45841i, _wgslsmith_clamp_i32(u_input.a.x, 0i, 0i), -2147483647i), vec2<bool>(true, _wgslsmith_mult_u32(var_0.x, var_0.x) != 80316u), global2.c, global2.d, !var_2.e));
    let var_4 = !select(!(!(!vec4<bool>(global2.e.x, global2.b.x, false, var_3.a.b.x))), !vec4<bool>(true, true, true, global1.a.b.x), true);
    return -508f;
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: f32, arg_3: vec4<u32>) -> StorageBuffer {
    var var_0 = global1.a;
    var var_1 = abs(countOneBits(vec3<i32>(48304i, 42194i, select(_wgslsmith_add_i32(arg_0.x, global2.a.x), -2147483647i, all(vec3<bool>(global2.e.x, false, true))))));
    let var_2 = 1u;
    let var_3 = 1i;
    let var_4 = Struct_1(vec4<i32>(-min(~(-42227i), u_input.a.x << (var_2 % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(-var_3, -1674i << (arg_3.x % 32u), 1i, -var_1.x), abs(_wgslsmith_div_vec4_i32(global2.a, vec4<i32>(38874i, var_3, var_0.a.x, -69032i)))), -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(17621i, var_1.x) << (arg_3.xz % vec2<u32>(32u)), min(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(-1i, 2147483647i))) << (~62590u % 32u)), !(!vec2<bool>(true, !global2.b.x)), select(select(select(global1.a.c, select(vec3<bool>(false, global1.a.b.x, true), var_0.c, vec3<bool>(false, false, false)), global3.x), vec3<bool>(global3.x, any(vec4<bool>(false, true, true, false)), false), firstTrailingBit(arg_0.x) >= -49747i), vec3<bool>(true, global3.x, all(select(vec4<bool>(true, false, false, global1.a.b.x), vec4<bool>(var_0.d, false, global3.x, global2.d), var_0.c.x))), false), var_0.e.x, select(select(!func_3(), select(!global2.c.yz, !vec2<bool>(global2.d, global3.x), select(vec2<bool>(true, global1.a.e.x), global1.a.b, global3.x)), vec2<bool>(!global3.x, global2.c.x)), vec2<bool>(global2.c.x, any(select(vec4<bool>(global3.x, global1.a.c.x, false, true), vec4<bool>(true, global3.x, global2.e.x, global2.e.x), global2.c.x))), !select(select(vec2<bool>(true, true), global1.a.e, vec2<bool>(global2.d, global2.b.x)), global2.e, vec2<bool>(false, global1.a.b.x))));
    return StorageBuffer(var_4.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -13459i;
    let var_1 = var_0;
    global1 = Struct_2(global1.a);
    let var_2 = global2.a.xy;
    global2 = global1.a;
    let x = u_input.a;
    s_output = func_5(vec4<i32>(-2147483647i << (~4294967295u % 32u), -1i, global2.a.x, u_input.a.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1055f - -1000f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(1618f, _wgslsmith_f_op_f32(func_1(Struct_1(global1.a.a, global2.e, vec3<bool>(false, false, global2.c.x), true, global2.b)))), _wgslsmith_f_op_f32(abs(195f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(812f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_f32(step(-450f, _wgslsmith_f_op_f32(abs(-1398f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -167f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1f)), 1000f, global1.a.e.x)), ~select(min(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(0u, 4294967295u, 29585u, 4294967295u)), ~vec4<u32>(1u, 55012u, 46674u, 4294967295u) >> (select(vec4<u32>(24045u, 25963u, 1u, 37687u), vec4<u32>(19203u, 57393u, 11974u, 33104u), global2.e.x) % vec4<u32>(32u)), (global2.a.x | var_0) == u_input.a.x));
}

