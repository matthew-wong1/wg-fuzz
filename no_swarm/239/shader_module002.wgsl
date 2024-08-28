struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, vec2<f32>(-1000f, 422f), vec2<u32>(17588u, 69485u), -6897i);

var<private> global1: f32 = 1000f;

var<private> global2: vec4<u32> = vec4<u32>(0u, 4294967295u, 103603u, 41838u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    let var_0 = global2.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -1538f))))));
    let var_2 = vec2<f32>(arg_1, -616f);
    var var_3 = all(!vec2<bool>(any(vec4<bool>(true, true, true, true)), global0.b.x <= _wgslsmith_f_op_f32(955f + -894f)));
    let var_4 = any(vec3<bool>(true, true, true));
    return 128f;
}

fn func_2() -> vec3<bool> {
    var var_0 = firstTrailingBit(firstTrailingBit(21764i)) & (-u_input.e.x >> (_wgslsmith_mult_u32(global2.x, 0u) % 32u));
    var_0 = -25520i;
    var_0 = select(-17555i, u_input.a >> (81365u % 32u), true);
    global0 = Struct_1(1u, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.b.x - global0.b.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.x), global0.b.x)), _wgslsmith_f_op_f32(func_3(u_input.c, _wgslsmith_div_f32(131f, _wgslsmith_f_op_f32(trunc(-140f)))))), reverseBits(_wgslsmith_mult_vec2_u32(firstTrailingBit(global0.c), vec2<u32>(43482u, global2.x) & vec2<u32>(global2.x, global2.x))) << (firstLeadingBit(~(~vec2<u32>(global2.x, u_input.b))) % vec2<u32>(32u)), firstLeadingBit(global0.d));
    let var_1 = Struct_1(~1u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b + global0.b) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) - global0.b.x), _wgslsmith_f_op_f32(ceil(-1341f)))), _wgslsmith_add_vec2_u32(~select(global0.c, vec2<u32>(u_input.b, 43319u), any(vec4<bool>(false, true, false, false))), ~(~vec2<u32>(global0.a, 13477u))), global0.d);
    return select(!select(vec3<bool>(true, true, any(vec3<bool>(true, false, false))), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, false), u_input.b >= var_1.a), select(vec3<bool>(false, false, true), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)), true), false);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = u_input.e.xxw;
    global1 = global0.b.x;
    var var_1 = all(vec3<bool>(1u <= ~global2.x, any(vec2<bool>(true, true)), any(func_2())));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b.x, global0.b.x) - _wgslsmith_f_op_f32(round(-1075f)))) - -2603f) < global0.b.x;
    let var_2 = Struct_1(19156u, global0.b, _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(abs(0u), 92500u), firstLeadingBit(~global0.a)), ~_wgslsmith_mod_vec2_u32(abs(vec2<u32>(1u, global2.x)), firstTrailingBit(vec2<u32>(arg_0.c.x, 7883u)))), ~min(42239i, global0.d));
    return Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(round(arg_0.b)), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(21523u, arg_0.c.x), select(arg_0.c.x, global0.a, false)), ~global0.a), abs(_wgslsmith_mod_u32(arg_0.a, 11491u)) >> (_wgslsmith_dot_vec2_u32(global0.c, ~global2.xy) % 32u)), select(var_2.d, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.e.x), ~vec2<i32>(-2147483647i, -57240i)), -25324i), !any(vec4<bool>(false, true, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(vec2<bool>(true, false));
    let var_1 = func_1(Struct_1(0u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.b.x - 1085f), global0.b.x) * _wgslsmith_f_op_vec2_f32(global0.b + vec2<f32>(295f, -622f))), ~global0.c, countOneBits(select(~u_input.d.x, _wgslsmith_mod_i32(-227i, u_input.c), any(vec3<bool>(true, true, true))))));
    let var_2 = u_input.d.xxw;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~firstTrailingBit(61437u), global2.x, _wgslsmith_dot_vec3_u32(~global2.zwy, vec3<u32>(1u, func_1(Struct_1(global2.x, vec2<f32>(161f, global0.b.x), vec2<u32>(global2.x, 63398u), -2147483647i)).c.x, select(47122u, var_1.c.x, false)))), _wgslsmith_div_f32(func_1(var_1).b.x, 843f), vec2<u32>(~global0.a, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.x, 9989u, 1u, 1u), vec4<u32>(global2.x, 1u, 0u, u_input.b)), ~vec4<u32>(95602u, var_1.c.x, var_1.a, global0.a))), -var_2, ~global0.c);
}

