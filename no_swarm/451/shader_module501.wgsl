struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: u32,
    b: bool,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false));

var<private> global1: array<Struct_2, 16>;

var<private> global2: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(2147483647i, -1i, i32(-2147483648), 18885i), vec4<i32>(1i, 1i, -22867i, 66407i), vec4<i32>(i32(-2147483648), -30725i, -61378i, -19328i), vec4<i32>(1i, 1726i, -14344i, i32(-2147483648)));

var<private> global3: u32 = 4294967295u;

var<private> global4: array<vec2<i32>, 26>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_3) -> u32 {
    let var_0 = Struct_5(i32(-1i) * -2147483647i);
    global2 = array<vec4<i32>, 4>();
    global4 = array<vec2<i32>, 26>();
    global3 = 0u;
    return 4294967295u;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: u32) -> vec3<bool> {
    global2 = array<vec4<i32>, 4>();
    global0 = array<vec4<bool>, 8>();
    var var_0 = firstTrailingBit(-u_input.d.x);
    global4 = array<vec2<i32>, 26>();
    let var_1 = arg_0;
    return !vec3<bool>(false, any(!(!vec3<bool>(arg_0.a.b, true, arg_0.a.b))), true);
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    global0 = array<vec4<bool>, 8>();
    let var_0 = global2[_wgslsmith_index_u32(min(15761u << (_wgslsmith_mod_u32(25084u, firstLeadingBit(_wgslsmith_add_u32(44846u, 6689u))) % 32u), ~1u), 4u)];
    global3 = 0u;
    global2 = array<vec4<i32>, 4>();
    global3 = 4294967295u;
    return _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 115480u, 34251u), firstTrailingBit(vec3<u32>(34108u, 0u, 35031u))) | vec3<u32>(~1u, countOneBits(46025u), ~4294967295u), vec3<u32>(1u, 1u, 1u)), ~(~(vec3<u32>(34452u, 35516u, 50140u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 28741u, 69612u), vec3<u32>(0u, 29552u, 0u), vec3<u32>(44036u, 11651u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!func_2(Struct_2(Struct_1(vec2<u32>(70420u, 4294967295u), true), Struct_1(vec2<u32>(1u, 1u), true)), vec4<u32>(1u, 1u, 1u, 1u), select(0u, 37165u, true) ^ func_1(Struct_3(4294967295u, 301f, -12153i))));
    let var_1 = Struct_3(1u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1272f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -993f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(395f - 431f))), true)), 39064i);
    global3 = 1u;
    let var_2 = ~select(_wgslsmith_mod_u32(15826u, 71310u >> (0u % 32u)), func_3(vec3<f32>(var_1.b, var_1.b, 333f)), false) >> (var_1.a % 32u);
    global4 = array<vec2<i32>, 26>();
    let var_3 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(min(-14048i, u_input.b.x)), 2147483647i, ~abs(~vec3<u32>(42454u, 42147u, var_1.a)), _wgslsmith_dot_vec4_i32(u_input.b, firstLeadingBit(abs(countOneBits(vec4<i32>(77929i, u_input.c.x, -7690i, var_1.c))))));
}

