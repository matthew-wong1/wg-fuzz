struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(1u, 62760u, 30391u, 0u), vec4<u32>(0u, 4294967295u, 0u, 45965u), vec4<u32>(842u, 22617u, 1u, 48821u), vec4<u32>(1u, 4294967295u, 1u, 1u), vec4<u32>(1639u, 0u, 12369u, 0u), vec4<u32>(33348u, 4294967295u, 107021u, 1u), vec4<u32>(4294967295u, 0u, 55004u, 4294967295u), vec4<u32>(0u, 85575u, 0u, 0u), vec4<u32>(1u, 127089u, 1u, 1u), vec4<u32>(4294967295u, 1u, 16759u, 0u), vec4<u32>(18645u, 1u, 18041u, 45303u));

var<private> global1: vec3<i32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<f32> {
    var var_0 = u_input.a.x;
    let var_1 = !select(vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, false, true, true)) || false), vec4<bool>(all(vec3<bool>(true, false, true)), all(vec2<bool>(true, true)), false, all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false))), !vec4<bool>(true, all(vec4<bool>(false, true, false, false)), false, true));
    var var_2 = _wgslsmith_div_f32(416f, _wgslsmith_f_op_f32(770f - _wgslsmith_f_op_f32(f32(-1f) * -1281f)));
    var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1165f, _wgslsmith_f_op_f32(floor(-1781f))))));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - 508f) * -494f)) * 1f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -150f), -384f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(860f))) - _wgslsmith_f_op_f32(-1055f - _wgslsmith_f_op_f32(1437f - 450f)))), 149f);
    return vec3<f32>(-111f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1597f))))), var_3.x);
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())), _wgslsmith_f_op_vec3_f32(func_3()), all(vec3<bool>(all(vec3<bool>(true, true, true)), any(vec3<bool>(false, false, true)) && true, _wgslsmith_dot_vec2_u32(u_input.a.yw, u_input.d) == countOneBits(4294967295u)))));
    var var_1 = min(~(~vec3<u32>(abs(0u), select(4294967295u, 46295u, false), ~u_input.a.x)), u_input.a.xww);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1396f)), var_0.x)), -557f, _wgslsmith_f_op_vec3_f32(func_3()).x), _wgslsmith_f_op_vec3_f32(func_3()))) + vec3<f32>(_wgslsmith_f_op_f32(round(var_0.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(min(-575f, _wgslsmith_f_op_f32(floor(var_0.x))))));
    var_1 = select(min(vec3<u32>(var_1.x, _wgslsmith_div_u32(u_input.d.x, 3065u), 0u), ~u_input.a.xyx) ^ u_input.a.xzz, ~(abs(~u_input.a.wwx) ^ ~(vec3<u32>(1u, var_1.x, 30874u) << (vec3<u32>(u_input.d.x, 43208u, u_input.a.x) % vec3<u32>(32u)))), select(vec3<bool>(true, !all(vec4<bool>(false, false, false, true)), true), select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(false, true, false), -734f != var_0.x), vec3<bool>(true, true, true), !all(vec4<bool>(true, false, false, true))), !(all(vec3<bool>(false, false, true)) != true)));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(762f, -215f, -788f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, var_0.x)) + vec3<f32>(595f, -546f, 1000f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, var_0.x, var_0.x)))))))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -281f) * 946f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-690f, var_0.x, true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(1568f, 1837f))))));
    return _wgslsmith_f_op_f32(max(1179f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -106f) * var_0.x))) >= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1865f + _wgslsmith_f_op_f32(exp2(var_0.x))) - var_0.x)));
}

fn func_1(arg_0: i32) -> Struct_3 {
    var var_0 = u_input.a.x;
    let var_1 = u_input.b.zx;
    let var_2 = Struct_3(!func_2() && !(var_1.x < global1.x), Struct_2(~select(max(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, 63072u)), vec2<u32>(u_input.a.x, u_input.a.x), false), Struct_1(4294967295u, 73845u, 48308u, all(vec2<bool>(false, false))), 1i), Struct_1(55418u, _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(3534u, u_input.d.x, u_input.a.x), u_input.a.yyw), ~(~u_input.a.x)), u_input.a.x, true));
    var var_3 = reverseBits(u_input.a.yyy);
    var var_4 = var_2.c;
    return Struct_3(false, Struct_2(var_2.b.a, Struct_1(1u, 1u, ~61977u, false), var_1.x), Struct_1(~1u, min(1u, 20987u), _wgslsmith_dot_vec3_u32(u_input.a.xww, vec3<u32>(reverseBits(4294967295u), ~9057u, abs(48119u))), all(select(vec4<bool>(var_2.b.b.d, var_2.a, true, true), vec4<bool>(true, false, var_2.b.b.d, false), true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = func_1(-global1.x);
    let var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(979f, 1167f, 724f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(125f, 351f, -934f) * vec3<f32>(1204f, 1000f, -2049f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())));
    var_0 = var_1.a;
    global1 = vec3<i32>(var_1.b.c, _wgslsmith_dot_vec2_i32(global1.yz, global1.yx), _wgslsmith_dot_vec2_i32(firstLeadingBit(firstTrailingBit(vec2<i32>(var_1.b.c, u_input.c))) >> (u_input.d % vec2<u32>(32u)), vec2<i32>(var_1.b.c, abs(-2147483647i))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 2379f, 1301f))) - vec3<f32>(-638f, -2335f, var_2.x))));
    var var_4 = select(countOneBits(countOneBits(vec4<u32>(u_input.d.x, 4294967295u, u_input.a.x, u_input.d.x))), ~(vec4<u32>(var_1.b.b.c, u_input.a.x, 4294967295u, u_input.a.x) >> (~u_input.a % vec4<u32>(32u))), _wgslsmith_mod_i32(~(-37716i), var_1.b.c) > _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.b.wxw, vec3<i32>(u_input.c, -1i, u_input.b.x)), ~u_input.b.x)) << ((select(vec4<u32>(select(var_1.c.b, var_1.c.b, var_1.a), func_1(u_input.b.x).b.a.x, _wgslsmith_mod_u32(u_input.d.x, u_input.a.x), countOneBits(var_1.c.b)), vec4<u32>(_wgslsmith_mult_u32(17775u, 1u), ~88321u, ~var_1.b.a.x, 0u), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, var_1.a, var_1.b.b.d), var_1.b.b.d)) ^ (~(~vec4<u32>(1u, 1u, 1u, u_input.a.x)) & (u_input.a >> (vec4<u32>(4294967295u, u_input.d.x, u_input.a.x, var_1.b.b.c) % vec4<u32>(32u))))) % vec4<u32>(32u));
    var var_5 = func_1(firstTrailingBit(global1.x)).b;
    global0 = array<vec4<u32>, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~var_1.b.a));
}

