struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<i32> = vec4<i32>(5292i, -16222i, 2147483647i, -78814i);

var<private> global2: array<vec4<u32>, 22>;

var<private> global3: array<vec2<u32>, 32> = array<vec2<u32>, 32>(vec2<u32>(1u, 1u), vec2<u32>(9893u, 7758u), vec2<u32>(1u, 1u), vec2<u32>(0u, 38366u), vec2<u32>(0u, 1u), vec2<u32>(10544u, 0u), vec2<u32>(28925u, 0u), vec2<u32>(7323u, 46434u), vec2<u32>(0u, 3423u), vec2<u32>(1u, 54561u), vec2<u32>(76007u, 51635u), vec2<u32>(4294967295u, 9558u), vec2<u32>(32347u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(70934u, 0u), vec2<u32>(0u, 0u), vec2<u32>(1u, 37034u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 0u), vec2<u32>(23159u, 4294967295u), vec2<u32>(4294967295u, 24607u), vec2<u32>(33114u, 0u), vec2<u32>(2825u, 5513u), vec2<u32>(60066u, 24276u), vec2<u32>(1u, 4294967295u), vec2<u32>(38697u, 1u), vec2<u32>(0u, 0u), vec2<u32>(1u, 114126u), vec2<u32>(6399u, 65820u));

var<private> global4: f32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<u32> {
    global3 = array<vec2<u32>, 32>();
    global0 = Struct_2(global0.a, ~_wgslsmith_div_vec2_u32(vec2<u32>(global0.b.x, 27080u), ~vec2<u32>(u_input.b.x, 25299u)) ^ ~global0.b);
    let var_0 = countOneBits(1i);
    let var_1 = true != !any(vec2<bool>(true, true));
    let var_2 = Struct_2(global0.a, ~firstTrailingBit(_wgslsmith_mod_vec2_u32(global0.b, global0.b) << (abs(global0.b) % vec2<u32>(32u))));
    return global3[_wgslsmith_index_u32(var_2.b.x, 32u)];
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = -(countOneBits(0i) & global1.x);
    global4 = global0.a.a.x;
    var var_1 = -(~(countOneBits(1i) ^ ~max(16215i, global1.x)));
    var_1 = global1.x;
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0.a.a, global0.a.a)))))), global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.a.x * -288f), 1076f), _wgslsmith_add_u32(min(30748u >> (_wgslsmith_mod_u32(10759u, global0.b.x) % 32u), 4294967295u ^ max(global0.b.x, arg_0)), 1u), vec3<u32>(~_wgslsmith_dot_vec2_u32(func_3(), vec2<u32>(0u, arg_0)), 0u, countOneBits(func_3().x ^ 0u)));
    return 0u;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~(~func_2(~1119u));
    let var_1 = arg_0.a.x;
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-var_1), global0.a.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-314f * var_1), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.a.a.x * global0.a.a.x))))));
    var var_3 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(global1.x, 0i, (global1.x ^ countOneBits(-19588i)) << (72706u % 32u)), ~global1.x);
    var var_4 = func_3();
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(arg_0.a)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.a - global0.a.a))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1, var_2.a.x, var_1)))), var_2.a))));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> u32 {
    global2 = array<vec4<u32>, 22>();
    var var_0 = -4666i;
    global4 = -1857f;
    global2 = array<vec4<u32>, 22>();
    var var_1 = arg_1.a.yy;
    return global0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(min(749f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.a.x + -109f), global0.a.a.x))) >= -158f;
    let var_1 = (17415u > func_4(-464f, func_1(global0.a))) & false;
    var var_2 = func_1(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.a.a), vec3<f32>(941f, 956f, global0.a.a.x), !vec3<bool>(var_0, false, var_0))))));
    var var_3 = ~2147483647i;
    let var_4 = ~(~u_input.a.wyz) >> (vec3<u32>(~u_input.c, ~u_input.b.x, u_input.b.x) % vec3<u32>(32u));
    global4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -648f))));
    global0 = Struct_2(func_1(global0.a), select(firstTrailingBit(u_input.b << (var_4.yz % vec2<u32>(32u))), ~(u_input.a.xx >> (global3[_wgslsmith_index_u32(6125u, 32u)] % vec2<u32>(32u))) | u_input.a.wz, any(!(!vec4<bool>(false, var_0, var_0, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~(-select(global1.x, -14709i, -33729i >= global1.x)));
}

