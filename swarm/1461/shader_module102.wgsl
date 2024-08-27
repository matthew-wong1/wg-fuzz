struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(false, vec3<u32>(60310u, 27548u, 46197u), vec2<i32>(2147483647i, 14172i)), vec4<u32>(67845u, 4294967295u, 56673u, 17308u), true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec3<f32>) -> vec4<u32> {
    var var_0 = ~u_input.b.x;
    let var_1 = Struct_2(Struct_1(!global0.a.a, ~(~u_input.b), u_input.d.zy), countOneBits(global0.b), true);
    global0 = var_1;
    var var_2 = arg_2.x;
    let var_3 = global0.a.c.x;
    return vec4<u32>((u_input.c ^ reverseBits(global0.b.x)) | 11311u, 4294967295u, ~reverseBits(arg_1.a), 131843u);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<f32>) -> bool {
    let var_0 = Struct_2(Struct_1(select(false, !(!arg_0.a), arg_0.a), global0.a.b, vec2<i32>(reverseBits(arg_1.x), ~(-2147483647i))), ~(~(vec4<u32>(7652u, global0.b.x, arg_0.b.x, 0u) << (func_3(141f, Struct_3(arg_0.b.x, arg_0.a, global0.b.x), vec3<f32>(-179f, arg_2.x, 281f)) % vec4<u32>(32u)))), !global0.c);
    var var_1 = Struct_3(11022u, true, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(95063u, var_0.a.b.x, 27020u)) ^ abs(func_3(-1092f, Struct_3(72333u, false, global0.b.x), vec3<f32>(238f, arg_2.x, arg_2.x)).xzx), vec3<u32>(7892u, countOneBits(global0.a.b.x), abs(~arg_0.b.x))));
    let var_2 = !vec3<bool>(false != (max(37305i, 1i) > var_0.a.c.x), true, all(vec3<bool>(false, true, all(vec4<bool>(var_1.b, true, var_0.a.a, true)))));
    var var_3 = var_0;
    global0 = Struct_2(Struct_1(arg_0.a, var_3.a.b, u_input.d.xy), (_wgslsmith_clamp_vec4_u32(vec4<u32>(15549u, 33108u, 4294967295u, 47037u), ~vec4<u32>(1u, var_0.a.b.x, 4294967295u, var_0.b.x), var_3.b & vec4<u32>(global0.b.x, 0u, var_0.b.x, 0u)) ^ _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(var_0.b, global0.b), vec4<u32>(var_1.c, var_1.a, 0u, global0.a.b.x), ~global0.b)) | _wgslsmith_div_vec4_u32(vec4<u32>(abs(40625u), 4527u, _wgslsmith_add_u32(1u, 26755u), global0.a.b.x), vec4<u32>(firstLeadingBit(39896u), ~0u, countOneBits(u_input.a.x), 50679u)), global0.a.a || (min(var_0.a.b.x, 13812u) > ~(~0u)));
    return global0.a.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32, arg_3: vec2<bool>) -> Struct_3 {
    global0 = Struct_2(Struct_1(func_2(Struct_1(true, firstTrailingBit(vec3<u32>(44811u, 0u, arg_1.b.x)), vec2<i32>(-1i, -431i)), u_input.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-515f, -448f))))), arg_1.a.b, u_input.d.zx), vec4<u32>(_wgslsmith_dot_vec2_u32(func_3(_wgslsmith_div_f32(368f, 1033f), Struct_3(0u, arg_0.x, u_input.b.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-287f, -991f, 404f) - vec3<f32>(796f, -1484f, -830f))).wy, u_input.b.zz), 0u, ~1u, ~arg_2), (-(~arg_1.a.c.x) ^ firstTrailingBit(-2572i)) == -18745i);
    global0 = arg_1;
    var var_0 = arg_1.a;
    global0 = arg_1;
    let var_1 = !select(arg_3, arg_0, !select(!arg_0, select(vec2<bool>(arg_1.a.a, false), vec2<bool>(arg_3.x, var_0.a), global0.a.a), arg_0));
    return Struct_3(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4693u, arg_1.b.x), u_input.b)) ^ firstTrailingBit(15094u), true, _wgslsmith_clamp_u32(~max(4294967295u, arg_2), arg_2, 22615u ^ _wgslsmith_dot_vec2_u32(arg_1.a.b.zy, global0.a.b.xx)) & ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_0.b, u_input.b), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.b.x, arg_2, u_input.a.x))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_4(select(vec2<bool>(func_2(global0.a, u_input.d, vec2<f32>(124f, 1104f)) & (-2093i >= u_input.d.x), true), select(vec2<bool>(21199u >= u_input.b.x, global0.a.a), select(select(vec2<bool>(global0.a.a, global0.c), vec2<bool>(false, false), vec2<bool>(global0.c, global0.c)), vec2<bool>(true, true), true), all(select(vec2<bool>(global0.c, true), vec2<bool>(true, global0.a.a), vec2<bool>(global0.c, true)))), false), Struct_2(global0.a, ~firstTrailingBit(global0.b & vec4<u32>(u_input.a.x, u_input.c, 61840u, 4294967295u)), !(!global0.a.a)), _wgslsmith_sub_u32(abs(~112078u), ~global0.a.b.x) | u_input.a.x, !select(select(vec2<bool>(true, global0.a.a), select(vec2<bool>(global0.a.a, global0.a.a), vec2<bool>(global0.c, global0.c), global0.a.a), vec2<bool>(true, true)), select(vec2<bool>(true, false), vec2<bool>(global0.a.a, true), select(vec2<bool>(global0.a.a, global0.a.a), vec2<bool>(true, global0.a.a), vec2<bool>(global0.c, global0.a.a))), true));
    var var_1 = 4938u;
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-406f, -103f)))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 447f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(998f, -830f))))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(405f, -486f) - -1517f), 638f))));
    var_1 = func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1519f)))))), func_4(vec2<bool>(var_0.b, false), Struct_2(Struct_1(36118u <= u_input.b.x, ~u_input.a, reverseBits(global0.a.c)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, var_0.c, 4294967295u, 1u), vec4<u32>(8861u, var_0.c, var_0.c, var_0.a)), func_2(Struct_1(true, global0.a.b, vec2<i32>(4591i, global0.a.c.x)), u_input.d, _wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, var_2.x), vec2<f32>(var_2.x, -160f)))), func_3(_wgslsmith_f_op_f32(ceil(var_2.x)), func_4(vec2<bool>(var_0.b, global0.a.a), Struct_2(global0.a, vec4<u32>(u_input.a.x, var_0.a, var_0.a, 5961u), var_0.b), ~var_0.a, !vec2<bool>(true, global0.c)), vec3<f32>(-1874f, _wgslsmith_f_op_f32(-121f - var_2.x), var_2.x)).x, !select(!vec2<bool>(var_0.b, global0.c), select(vec2<bool>(global0.c, true), vec2<bool>(var_0.b, true), vec2<bool>(false, false)), global0.a.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.x, 134f, -134f), vec3<f32>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_0.b, global0.c, var_0.b)))))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, var_2.x))))))).x;
    var_0 = func_4(select(vec2<bool>(true, true), vec2<bool>(var_0.b, false), select(vec2<bool>(true, true), select(!vec2<bool>(var_0.b, false), !vec2<bool>(global0.a.a, var_0.b), 772f > var_2.x), (global0.a.c.x >> (0u % 32u)) != -76117i)), Struct_2(Struct_1(!(var_0.b != true), global0.a.b & ~vec3<u32>(var_0.a, 1u, var_0.c), ~(global0.a.c << (global0.b.zx % vec2<u32>(32u)))), vec4<u32>(~1u, _wgslsmith_sub_u32(u_input.b.x, ~u_input.a.x), min(u_input.a.x, u_input.b.x) ^ func_4(vec2<bool>(global0.c, var_0.b), Struct_2(global0.a, vec4<u32>(global0.a.b.x, 6567u, var_0.c, 0u), var_0.b), 4294967295u, vec2<bool>(global0.a.a, var_0.b)).a, 0u), false | func_4(vec2<bool>(var_0.b, var_0.b), Struct_2(global0.a, global0.b, true), global0.a.b.x, select(vec2<bool>(true, global0.c), vec2<bool>(false, true), global0.a.a)).b), u_input.a.x, select(vec2<bool>(func_4(!vec2<bool>(global0.c, var_0.b), Struct_2(Struct_1(global0.c, u_input.b, global0.a.c), global0.b, true), global0.b.x >> (global0.b.x % 32u), select(vec2<bool>(false, true), vec2<bool>(var_0.b, var_0.b), var_0.b)).b, true), vec2<bool>(!global0.a.a, var_0.b), true));
    return Struct_2(Struct_1(true, vec3<u32>(max(firstTrailingBit(global0.a.b.x), ~49954u), 4294967295u, var_0.a), countOneBits(-(~vec2<i32>(43068i, -49870i)))), ~vec4<u32>(abs(6108u), abs(var_0.c), global0.b.x, ~0u) << (select(~global0.b, ~(~vec4<u32>(0u, global0.a.b.x, 1u, global0.a.b.x)), !select(vec4<bool>(false, var_0.b, false, true), vec4<bool>(global0.c, global0.c, var_0.b, false), true)) % vec4<u32>(32u)), !var_0.b);
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    global0 = Struct_2(Struct_1(!all(select(vec3<bool>(arg_3.b, arg_3.b, false), vec3<bool>(arg_1.a, arg_1.a, arg_3.b), global0.a.a)), arg_1.b | vec3<u32>(25601u, 83355u, 1u), firstLeadingBit(reverseBits(vec2<i32>(2147483647i, -74951i) & u_input.d.xx))), ~firstLeadingBit(global0.b), !func_2(Struct_1(global0.a.a, arg_2.a.b, vec2<i32>(global0.a.c.x, global0.a.c.x)), vec4<i32>(arg_1.c.x, global0.a.c.x, global0.a.c.x, 5125i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1541f, 963f))) & false);
    let var_0 = func_1().a;
    global0 = func_1();
    var var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -554f) + _wgslsmith_f_op_f32(ceil(210f))) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -348f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(101f, -775f))))));
    let var_2 = arg_2.a;
    return arg_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a, global0.b, true);
    global0 = Struct_2(Struct_1(true, global0.a.b, vec2<i32>(global0.a.c.x, max(~global0.a.c.x, ~u_input.d.x))), firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(abs(vec4<u32>(global0.a.b.x, global0.b.x, global0.a.b.x, global0.b.x)), vec4<u32>(u_input.b.x, u_input.c, 1u, u_input.b.x)), ~vec4<u32>(4294967295u, 4294967295u, u_input.a.x, 1u))), !any(!(!vec3<bool>(false, global0.a.a, global0.c))));
    var var_0 = func_5(vec2<bool>(true, any(!(!vec4<bool>(false, global0.a.a, global0.a.a, false)))), Struct_1(global0.c, u_input.a, ~(-global0.a.c)), func_1(), Struct_3(global0.a.b.x, global0.a.a, 87674u));
    let var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~global0.b.x);
}

