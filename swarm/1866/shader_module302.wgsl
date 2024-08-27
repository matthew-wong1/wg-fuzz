struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = countOneBits(24894u);
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(157f, -208f, 1060f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-212f, -1221f, -529f))))), !select(select(vec2<bool>(true, global0.x), vec2<bool>(false, true), vec2<bool>(global0.x, true)), vec2<bool>(false, true), all(vec4<bool>(false, global0.x, global0.x, true))), !select(vec2<bool>(global0.x, false), !vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true)), 53629u), 0i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 613f, -151f, 581f))))), !any(!vec4<bool>(global0.x, true, true, global0.x)) & global0.x);
    var var_2 = -u_input.d;
    var var_3 = true;
    var_3 = all(!vec4<bool>(!var_1.a.b.x, !all(vec2<bool>(var_1.d, true)), var_1.d, true));
    return select(!vec3<bool>(!(u_input.c >= var_2.x), any(vec3<bool>(var_1.d, false, true)), any(vec3<bool>(global0.x, false, var_1.a.c.x)) || any(vec2<bool>(var_1.d, false))), vec3<bool>(!(!(false && var_1.a.b.x)), global0.x, !all(!vec3<bool>(var_1.d, false, var_1.d))), true);
}

fn func_2() -> u32 {
    global0 = select(!vec2<bool>(global0.x, !global0.x && true), vec2<bool>(any(func_3()), !(!global0.x) && !select(global0.x, global0.x, global0.x)), global0.x && !global0.x);
    return u_input.a;
}

fn func_1() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0)))) * 878f) >= var_0;
    var_1 = true;
    let var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(var_0 + -368f)), var_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0)), 152f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + var_0) - _wgslsmith_f_op_f32(var_0 + -528f)))), select(vec2<bool>(all(!vec2<bool>(global0.x, global0.x)), true), !vec2<bool>(false, global0.x), select(vec2<bool>(false, !global0.x), select(!vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(global0.x, false))), global0.x)), !(!select(!vec2<bool>(true, global0.x), select(vec2<bool>(false, true), vec2<bool>(true, true), false), !vec2<bool>(global0.x, global0.x))), func_2());
    let var_3 = var_2;
    return Struct_3(max(~vec3<u32>(u_input.a & 4294967295u, 8020u, var_3.d), vec3<u32>(1u, 43088u, ~0u)), Struct_1(var_3.a, var_2.c, vec2<bool>(any(!var_3.c), !(!global0.x)), abs(var_3.d)), ~(i32(-1i) * -28314i) & select(-u_input.d.x, _wgslsmith_add_i32(-u_input.b.x, 1i), false), vec3<i32>(40127i, _wgslsmith_dot_vec4_i32(min(u_input.d, select(vec4<i32>(u_input.c, u_input.c, 15426i, 1i), u_input.d, false)), u_input.d), max(i32(-1i) * -19903i, -434i) | -(9234i & u_input.b.x)), Struct_2(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_2.a.x - var_0), 1000f, var_2.a.x), vec2<bool>(func_3().x, false), vec2<bool>(true, true), 19567u), u_input.b.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-750f, var_0, var_3.a.x, 2182f), vec4<f32>(-1058f, var_2.a.x, 730f, 210f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.a.x, 747f, 1242f, var_3.a.x))))))), !(var_0 == _wgslsmith_f_op_f32(f32(-1f) * -292f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = !vec2<bool>(var_0.b.a.x <= _wgslsmith_f_op_f32(min(265f, _wgslsmith_f_op_f32(floor(441f)))), any(func_1().b.c));
    let var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.a, _wgslsmith_div_u32(29961u, ~u_input.a), ~105639u & firstLeadingBit(27847u >> (var_0.a.x % 32u)), reverseBits(~u_input.a)), vec4<u32>(u_input.a, ~(~(~20462u)), 33685u, max(var_0.b.d, 4294967295u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, var_0.b.d), ~u_input.a, u_input.a, 4294967295u), ~(~vec4<u32>(4294967295u, 20462u, u_input.a, var_0.e.a.d))));
    global0 = select(!var_0.e.a.c, vec2<bool>(all(vec4<bool>(true == var_0.b.b.x, true, var_0.b.c.x, func_3().x)), all(!vec4<bool>(global0.x, false, false, global0.x))), false);
    var var_2 = vec4<bool>(!all(vec4<bool>(true, any(var_0.b.c), var_0.e.a.c.x, func_1().e.d)), !(!(-727f > _wgslsmith_f_op_f32(var_0.e.a.a.x - 1130f))), global0.x, any(!vec2<bool>(all(vec4<bool>(false, var_0.e.d, global0.x, true)), false)));
    let var_3 = ~1i;
    var_2 = select(!select(select(!vec4<bool>(global0.x, var_2.x, false, false), select(vec4<bool>(false, global0.x, var_0.e.a.c.x, true), vec4<bool>(var_2.x, global0.x, true, true), var_0.b.b.x), true), !(!vec4<bool>(var_0.b.b.x, true, false, false)), false), vec4<bool>(global0.x, !(!global0.x), var_2.x, !func_1().b.c.x), select(vec4<bool>(var_0.e.d, func_1().b.b.x, all(vec4<bool>(true, false, false, var_0.b.b.x)), true), !select(!vec4<bool>(false, global0.x, global0.x, global0.x), select(vec4<bool>(true, global0.x, var_0.b.b.x, var_0.b.c.x), vec4<bool>(false, var_0.b.c.x, false, var_2.x), true), !vec4<bool>(false, global0.x, false, var_2.x)), !vec4<bool>(all(vec3<bool>(false, var_0.b.b.x, var_0.b.c.x)), any(vec2<bool>(true, false)), false == var_2.x, true)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstTrailingBit(~_wgslsmith_add_i32(var_0.e.b, var_0.e.b))), u_input.a, vec3<u32>(_wgslsmith_dot_vec2_u32(~var_0.a.xy, _wgslsmith_div_vec2_u32(var_1.ww, vec2<u32>(var_0.a.x, var_0.e.a.d))), ~(~(38473u & var_1.x)), 27526u));
}

