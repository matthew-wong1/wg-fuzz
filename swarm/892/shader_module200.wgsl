struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: bool,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(1000f, -1329f, -245f, 986f, -427f, 1041f, -878f, 647f, 975f, -761f, 885f, -1024f, -909f, -793f, -157f, -2357f, 182f, -1000f, 464f, 176f, 1825f, 211f, -884f);

var<private> global1: array<Struct_2, 24>;

var<private> global2: f32 = 359f;

var<private> global3: array<Struct_1, 2>;

var<private> global4: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(-1i, -1i), vec2<i32>(35843i, 22096i), vec2<i32>(0i, 0i), vec2<i32>(48340i, 20434i), vec2<i32>(13244i, 2147483647i), vec2<i32>(39399i, -21896i), vec2<i32>(i32(-2147483648), -4703i), vec2<i32>(16897i, -32118i), vec2<i32>(2147483647i, 536i), vec2<i32>(-51084i, -1i), vec2<i32>(2147483647i, -8461i), vec2<i32>(2147483647i, 8729i), vec2<i32>(0i, 77564i));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.a.x, 23u)], -1091f, false));
    global3 = array<Struct_1, 2>();
    global1 = array<Struct_2, 24>();
    let var_1 = 4294967295u;
    var var_2 = global1[_wgslsmith_index_u32(~28112u, 24u)];
    return false;
}

fn func_2(arg_0: i32) -> Struct_2 {
    let var_0 = Struct_2(vec3<u32>(~(~countOneBits(u_input.a.x)), 111380u, firstTrailingBit(~(~54116u))), ~u_input.a.x, u_input.a, !(!(~u_input.a.x <= firstTrailingBit(u_input.a.x))), select(vec2<bool>(false, func_3(0i)), !select(vec2<bool>(true, false), vec2<bool>(true, true), true), select(!all(vec2<bool>(false, true)), true, func_3(-2147483647i))));
    return var_0;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_2) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(u_input.a.x & ~u_input.a.x, 2u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], 537f, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]) * vec3<f32>(-597f, 177f, -702f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1945f, global0[_wgslsmith_index_u32(34826u, 23u)], -643f))), any(arg_2.e)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b, var_0.b, global0[_wgslsmith_index_u32(u_input.a.x, 23u)]))))));
    let var_2 = func_2(u_input.b.x);
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1135f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 23u)], 740f) - _wgslsmith_f_op_f32(trunc(1000f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1000f)))));
    global4 = array<vec2<i32>, 13>();
    return countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.x, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, var_2.a.x), _wgslsmith_clamp_vec2_u32(var_2.c.xx, arg_0.c.yy, vec2<u32>(1u, 9277u))), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.b, arg_2.a.x, 1u, var_2.b), select(vec4<u32>(var_0.a, arg_0.c.x, u_input.a.x, 4294967295u), vec4<u32>(0u, 1u, 1u, var_0.a), true))), vec4<u32>(~firstTrailingBit(arg_0.c.x), ~u_input.a.x, reverseBits(17807u), 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.x >> (~54889u % 32u);
    global0 = array<f32, 23>();
    var var_1 = global1[_wgslsmith_index_u32(6063u, 24u)];
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.b, 37630u) | ~(~func_1(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], select(vec4<bool>(false, var_1.e.x, true, var_1.d), vec4<bool>(false, var_1.e.x, false, var_1.e.x), true), global1[_wgslsmith_index_u32(~0u, 24u)])), 24u)];
    let var_3 = !(!vec3<bool>(select(24512u, var_1.a.x, true) > var_2.b, !select(var_1.d, true, var_1.d), true));
    global1 = array<Struct_2, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(abs(max(var_1.a.x, 4294967295u)), 23u)], _wgslsmith_mod_i32(-1i, -1i), 0i);
}

