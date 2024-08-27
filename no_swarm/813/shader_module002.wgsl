struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec4<i32>(-1i, -16760i, 10707i, 2147483647i), 1411f, vec3<bool>(false, true, true));

var<private> global1: Struct_2 = Struct_2(1u, vec4<bool>(true, false, true, true), 1u, -590f);

var<private> global2: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(4294967295u, vec4<bool>(false, false, false, false), 1u, -475f), Struct_2(44077u, vec4<bool>(true, true, false, true), 42054u, -518f), Struct_2(1u, vec4<bool>(true, true, true, true), 31380u, 1427f), Struct_2(1u, vec4<bool>(false, false, false, false), 4294967295u, 995f), Struct_2(84u, vec4<bool>(true, true, false, true), 0u, -574f), Struct_2(0u, vec4<bool>(false, false, false, true), 74164u, -1210f), Struct_2(29559u, vec4<bool>(true, true, true, false), 1u, -507f), Struct_2(53813u, vec4<bool>(true, true, false, false), 0u, -987f), Struct_2(4294967295u, vec4<bool>(false, false, false, true), 19954u, 1328f), Struct_2(60393u, vec4<bool>(false, false, true, false), 1u, 344f), Struct_2(80551u, vec4<bool>(true, true, true, true), 44559u, 666f), Struct_2(33910u, vec4<bool>(false, false, true, false), 11880u, -393f), Struct_2(18125u, vec4<bool>(false, true, true, false), 0u, 913f));

var<private> global3: array<bool, 16>;

var<private> global4: Struct_3 = Struct_3(vec2<i32>(15969i, 43837i), -125f, -1244f, -541i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: u32) -> Struct_4 {
    var var_0 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(~81780u, _wgslsmith_mult_u32(global1.c, 1u ^ u_input.a.x)), global1.c), ~(~_wgslsmith_dot_vec2_u32(select(vec2<u32>(40079u, 49186u), u_input.a, global0.c.yy), vec2<u32>(1u, arg_3) >> (u_input.a % vec2<u32>(32u)))));
    return Struct_4(abs(vec4<i32>(1i, 4439i, _wgslsmith_dot_vec4_i32(global0.a, global0.a), global0.a.x)) << ((_wgslsmith_mult_vec4_u32(max(vec4<u32>(17832u, global1.c, 4294967295u, arg_3), vec4<u32>(global1.a, arg_3, 48871u, var_0.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.a, 4294967295u, arg_3, 0u), vec4<u32>(u_input.a.x, 4294967295u, var_0.x, global1.a))) & min(vec4<u32>(arg_3, u_input.b, var_0.x, u_input.b), ~vec4<u32>(u_input.b, 41057u, arg_3, 4294967295u))) % vec4<u32>(32u)), -1065f, vec3<bool>(false, !global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -307f) - arg_1.c)));
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> vec3<u32> {
    global4 = Struct_3(-vec2<i32>(arg_1.a.x, -1i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.b, global1.d), 252f)) * _wgslsmith_div_f32(-1000f, 700f)), _wgslsmith_f_op_f32(sign(-1231f)))), _wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.d, -270f), vec2<f32>(1007f, global1.d))), Struct_3(~global4.a, _wgslsmith_f_op_f32(sign(global4.b)), _wgslsmith_div_f32(global1.d, global0.b), 1i), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-283f, global0.b, -1019f, global4.b)), vec4<f32>(global4.b, 1793f, global4.b, 655f))), 62678u).b), countOneBits(_wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_clamp_i32(arg_1.a.x, global0.a.x, global4.d)), ~12317i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global4.a.x, -29399i), vec2<i32>(arg_1.a.x, global4.d)), global0.a.zy))));
    var var_0 = select(!vec4<bool>(arg_1.c.x, !func_2(vec2<f32>(-1407f, 1131f), Struct_3(vec2<i32>(0i, global4.d), -347f, 701f, -39744i), vec4<f32>(-2092f, global4.b, 791f, 574f), u_input.b).c.x, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~global1.c, min(u_input.a.x, global1.a)), 16u)], all(!global1.b.zz)), select(select(!global1.b, global1.b, select(vec4<bool>(global1.b.x, true, true, true), global1.b, !arg_1.c.x)), vec4<bool>(select(global0.c.x || true, true, global0.c.x), global1.b.x, arg_1.c.x, false), select(global1.b, vec4<bool>(!global3[_wgslsmith_index_u32(u_input.b, 16u)], true, true, true), select(!vec4<bool>(global0.c.x, true, global3[_wgslsmith_index_u32(u_input.b, 16u)], global0.c.x), vec4<bool>(false, arg_0, arg_1.c.x, global3[_wgslsmith_index_u32(4294967295u, 16u)]), false))), any(!vec3<bool>(global0.c.x, true, true)));
    global4 = Struct_3(global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) - -457f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(734f - 147f) + _wgslsmith_f_op_f32(max(arg_1.b, 1745f))))), global4.b, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.x, -2147483647i >> (u_input.a.x % 32u)), func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, arg_1.b)), Struct_3(vec2<i32>(global4.a.x, -7421i), global4.c, global4.c, 36337i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b, global0.b, arg_1.b, global0.b)), _wgslsmith_mod_u32(4294967295u, u_input.b)).a.yy));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1329f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.d))), global0.b, !(global3[_wgslsmith_index_u32(1u, 16u)] || true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c))));
    var var_2 = arg_1.c.x;
    return select(reverseBits(abs(abs(vec3<u32>(global1.c, 88026u, 0u)))), ~(vec3<u32>(global1.c, global1.c, 9789u) | vec3<u32>(9009u, 49004u, global1.c)) >> (~abs(vec3<u32>(u_input.b, global1.c, 0u)) % vec3<u32>(32u)), global0.c) & firstTrailingBit((vec3<u32>(1u, global1.c, u_input.b) << (~vec3<u32>(4294967295u, global1.a, u_input.a.x) % vec3<u32>(32u))) | ~vec3<u32>(0u, global1.a, 4294967295u));
}

fn func_1(arg_0: bool) -> vec4<i32> {
    var var_0 = Struct_2(abs(_wgslsmith_mult_u32(_wgslsmith_add_u32(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(43561u, 0u, 77101u), vec3<u32>(69047u, 0u, global1.c))), ~5412u)), global1.b, _wgslsmith_dot_vec3_u32(abs(func_3(true, func_2(vec2<f32>(global0.b, 737f), Struct_3(global0.a.yy, global0.b, -133f, -17861i), vec4<f32>(global4.b, global0.b, global4.b, global4.c), 4294967295u))), reverseBits(vec3<u32>(u_input.b & u_input.b, global1.a, 101047u))), global4.b);
    var var_1 = vec3<bool>(true, global4.d < global0.a.x, false);
    global1 = Struct_2(~88056u, var_0.b, 34382u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-628f - global1.d)))));
    var_0 = global2[_wgslsmith_index_u32(global1.a, 13u)];
    global3 = array<bool, 16>();
    return _wgslsmith_div_vec4_i32(global0.a, global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(_wgslsmith_mod_i32(max(-37899i, global4.a.x), global0.a.x), -(~global4.d), 19781i, global4.d);
    var_0 = ~(~func_1(true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_div_f32(1265f, 1088f)))));
    var var_2 = _wgslsmith_f_op_f32(-global1.d);
    let var_3 = !vec3<bool>(global3[_wgslsmith_index_u32(~0u, 16u)], (global4.d >= _wgslsmith_dot_vec4_i32(global0.a, vec4<i32>(2147483647i, global0.a.x, -22010i, -1i))) == (2147483647i <= _wgslsmith_dot_vec3_i32(vec3<i32>(389i, -32803i, -2147483647i), global0.a.yyw)), !global1.b.x);
    var var_4 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, global1.d, global0.b) * vec3<f32>(-1560f, -865f, 147f))))) * vec3<f32>(_wgslsmith_f_op_f32(max(-213f, -562f)), _wgslsmith_f_op_f32(-171f - -241f), 845f)), vec2<f32>(global1.d, _wgslsmith_f_op_f32(-global4.b)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - global1.d))), _wgslsmith_f_op_f32(ceil(1150f)), global4.b));
}

