struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
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

var<private> global0: array<vec3<u32>, 10>;

var<private> global1: array<Struct_1, 4>;

var<private> global2: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true));

var<private> global3: array<vec2<bool>, 27>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<f32>, arg_2: Struct_1) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(22588u, 4u)];
    var var_1 = _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(823u, ~(~u_input.a.x), reverseBits(firstLeadingBit(u_input.a.x)), u_input.a.x)), (countOneBits(abs(u_input.a)) ^ min(vec4<u32>(7939u, 42929u, 1u, u_input.a.x), max(u_input.a, vec4<u32>(3168u, 4294967295u, 0u, 4294967295u)))) & (firstTrailingBit(~u_input.a) << (min(u_input.a, vec4<u32>(3237u, 58498u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u))));
    return abs(_wgslsmith_div_u32(firstLeadingBit(u_input.a.x), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(select(u_input.a, u_input.a, vec4<bool>(var_0.a, false, arg_2.a, arg_2.a)), _wgslsmith_mult_vec4_u32(u_input.a, vec4<u32>(4294967295u, var_1.x, 8582u, u_input.a.x))), 1u)));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: bool, arg_3: f32) -> i32 {
    let var_0 = Struct_2(~u_input.b.xz, Struct_1(true, _wgslsmith_div_i32(abs(u_input.b.x << (u_input.a.x % 32u)), u_input.b.x), 0i));
    global2 = array<vec4<bool>, 29>();
    var var_1 = Struct_1(arg_2, _wgslsmith_mod_i32((reverseBits(-14267i) & -var_0.a.x) & _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), vec2<i32>(u_input.b.x, 2147483647i)), u_input.b.yy & u_input.b.zx), u_input.b.x & -abs(-2147483647i)), -(~(-2147483647i)));
    global1 = array<Struct_1, 4>();
    var var_2 = var_0.b;
    return var_2.b >> (~func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1038f, arg_3, 828f) - vec3<f32>(arg_3, -930f, -1331f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(824f, arg_3, arg_0.x) - vec3<f32>(arg_0.x, arg_3, arg_0.x)), select(var_0.b.a, false, false))), vec3<f32>(arg_3, _wgslsmith_f_op_f32(-arg_0.x), arg_3), Struct_1(any(vec3<bool>(false, arg_2, arg_2)), var_1.c, -u_input.b.x)) % 32u);
}

fn func_1() -> f32 {
    global1 = array<Struct_1, 4>();
    global0 = array<vec3<u32>, 10>();
    global2 = array<vec4<bool>, 29>();
    let var_0 = Struct_2(~vec2<i32>(func_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-589f, 821f))), all(global2[_wgslsmith_index_u32(u_input.a.x, 29u)]), true, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1i), Struct_1(!all(global3[_wgslsmith_index_u32(~u_input.a.x, 27u)]), u_input.b.x, 0i));
    let var_1 = Struct_2(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, 0i), u_input.b.xx) >> (u_input.a.x % 32u), i32(-1i) * -35914i), Struct_1(true, u_input.b.x, ~(-select(var_0.a.x, 74358i, false))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_4(arg_0: f32, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -799f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1())))), arg_1.x)));
    let var_1 = Struct_1(arg_3.a | any(select(vec2<bool>(false, true), vec2<bool>(false, arg_3.a), global3[_wgslsmith_index_u32(83943u, 27u)])), _wgslsmith_mod_i32(_wgslsmith_div_i32(-u_input.b.x, abs(u_input.b.x)), u_input.b.x), firstLeadingBit(~(~arg_3.c)));
    let var_2 = Struct_2(firstTrailingBit(u_input.b.zx) << (u_input.a.xy % vec2<u32>(32u)), global1[_wgslsmith_index_u32(u_input.a.x, 4u)]);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1409f)) + arg_1.x);
    global2 = array<vec4<bool>, 29>();
    return StorageBuffer(44881u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 10>();
    let var_0 = true;
    let var_1 = !global2[_wgslsmith_index_u32(~4294967295u, 29u)];
    global1 = array<Struct_1, 4>();
    global2 = array<vec4<bool>, 29>();
    global2 = array<vec4<bool>, 29>();
    var var_2 = -230f;
    var_2 = _wgslsmith_div_f32(-144f, -261f);
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -964f, 424f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-866f, -1160f, -1016f) - vec3<f32>(-340f, 1897f, 1000f)))))), 1u, global1[_wgslsmith_index_u32(~u_input.a.x, 4u)]);
}

