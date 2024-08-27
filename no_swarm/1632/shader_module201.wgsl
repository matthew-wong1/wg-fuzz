struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 10> = array<vec2<bool>, 10>(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true));

var<private> global1: vec2<u32> = vec2<u32>(1u, 0u);

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: array<vec2<f32>, 13> = array<vec2<f32>, 13>(vec2<f32>(-710f, -648f), vec2<f32>(-2537f, -188f), vec2<f32>(-165f, 340f), vec2<f32>(-1000f, -776f), vec2<f32>(591f, -978f), vec2<f32>(1408f, 749f), vec2<f32>(-129f, -454f), vec2<f32>(-1000f, 146f), vec2<f32>(-948f, 1963f), vec2<f32>(-496f, 275f), vec2<f32>(1510f, -1645f), vec2<f32>(-226f, -1825f), vec2<f32>(255f, 1562f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<u32> {
    global0 = array<vec2<bool>, 10>();
    global0 = array<vec2<bool>, 10>();
    global2 = !select(!vec2<bool>(false | global2.x, !global2.x), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(u_input.e, 33349u), 1u) >> (~max(global1.x, u_input.e) % 32u), 10u)], true);
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-869f + _wgslsmith_f_op_f32(step(-1057f, 1328f)))))))));
    var var_1 = global0[_wgslsmith_index_u32(1u, 10u)];
    return select(~firstTrailingBit(vec3<u32>(0u, 63041u, 1u)), ~vec3<u32>(global1.x << (global1.x % 32u), 4294967295u, ~global1.x), all(select(!vec4<bool>(true, true, var_1.x, var_1.x), select(vec4<bool>(false, false, true, true), vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(true, global2.x, false, false)), var_1.x))) ^ ~vec3<u32>(_wgslsmith_add_u32(u_input.e ^ 4294967295u, u_input.e), 1u, global1.x >> (countOneBits(4294967295u) % 32u));
}

fn func_2() -> vec3<bool> {
    global2 = vec2<bool>(global2.x || global2.x, false);
    let var_0 = func_3();
    var var_1 = Struct_1(global2.x, select(!(!vec3<bool>(global2.x, true, global2.x)), vec3<bool>(~global1.x == 69419u, true, any(select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(global2.x, false, true), vec3<bool>(false, true, true)))), select(select(select(vec3<bool>(false, global2.x, true), vec3<bool>(global2.x, global2.x, global2.x), global2.x), !vec3<bool>(global2.x, global2.x, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, false, global2.x), select(vec3<bool>(global2.x, true, true), vec3<bool>(true, true, false), false), global2.x), true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(436f, _wgslsmith_f_op_f32(425f + _wgslsmith_f_op_f32(f32(-1f) * -410f)), _wgslsmith_f_op_f32(271f - 1f), 927f));
    var var_3 = Struct_1(false, vec3<bool>(!(!global2.x), !(~u_input.e == ~var_0.x), var_1.b.x));
    return select(!vec3<bool>(false, !any(vec3<bool>(true, false, global2.x)), !var_3.a), select(vec3<bool>(false, !(var_0.x >= 13622u), !var_3.a), var_1.b, vec3<bool>(var_3.a, false, true)), all(vec4<bool>((var_1.a | false) || var_1.a, 1i != -u_input.d, true, false)));
}

fn func_1() -> u32 {
    let var_0 = global2.x;
    global0 = array<vec2<bool>, 10>();
    let var_1 = Struct_1(false, !func_2());
    let var_2 = !vec4<bool>(global2.x, any(!select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(false, false, false, false), var_1.a)), true, true);
    let var_3 = vec3<i32>(u_input.b, u_input.b, -2147483647i);
    return 27508u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(_wgslsmith_mult_u32(abs(~func_1()), 41943u), 20562u);
    let var_1 = countOneBits(vec4<u32>(_wgslsmith_add_u32(countOneBits(4294967295u), var_0.x), ~(var_0.x | global1.x), ~(~8436u), _wgslsmith_mult_u32(~4294967295u, _wgslsmith_mult_u32(global1.x, u_input.e)))) & _wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 1u, global1.x, var_0.x), vec4<u32>(102153u, u_input.e, 40304u, var_0.x)), 5874u & u_input.e), var_0.x, 0u & (u_input.e | global1.x)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, ~var_0.x, ~global1.x), firstTrailingBit(~vec4<u32>(global1.x, 90054u, u_input.e, 0u))), select(_wgslsmith_add_vec4_u32(abs(vec4<u32>(22888u, u_input.e, 54977u, 1u)), vec4<u32>(u_input.e, 0u, 4294967295u, 39889u)), firstLeadingBit(~vec4<u32>(1u, 1u, 2944u, 1u)), -2147483647i > -u_input.d));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1083f))))))));
    global2 = !(!global0[_wgslsmith_index_u32(global1.x, 10u)]);
    global2 = vec2<bool>(!all(vec4<bool>(false, global2.x, false, true)) && true, all(func_2()));
    let var_3 = Struct_1(false, vec3<bool>(!(u_input.a < u_input.c.x) & false, !any(select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(true, false, global2.x, true), vec4<bool>(global2.x, true, false, global2.x))), true));
    global2 = var_3.b.zx;
    let x = u_input.a;
    s_output = StorageBuffer(304f, countOneBits(firstTrailingBit(-vec3<i32>(2147483647i, u_input.a, -2147483647i) >> (~vec3<u32>(global1.x, 24898u, global1.x) % vec3<u32>(32u)))), 6613u, countOneBits(-(~u_input.a) >> (~22612u % 32u)));
}

