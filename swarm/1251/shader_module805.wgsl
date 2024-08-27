struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(4294967295u), Struct_1(65278u), Struct_1(0u), Struct_1(25769u), Struct_1(1u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> u32 {
    let var_0 = vec4<bool>(true, arg_3.a.x, arg_0.x, false);
    var var_1 = global0[_wgslsmith_index_u32(~firstLeadingBit(~arg_3.c), 5u)];
    var var_2 = _wgslsmith_mult_u32(~(~(~_wgslsmith_add_u32(arg_3.c, u_input.c.x))), _wgslsmith_sub_u32(var_1.a, ~_wgslsmith_div_u32(_wgslsmith_mult_u32(903u, 1u), 4294967295u)));
    let var_3 = global0[_wgslsmith_index_u32(~(~arg_3.c & abs(_wgslsmith_dot_vec4_u32(u_input.c, u_input.c))), 5u)];
    var var_4 = u_input.c.ywx ^ vec3<u32>(arg_3.c, select(u_input.c.x, ~u_input.c.x, false), u_input.c.x);
    return ~u_input.c.x;
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> bool {
    let var_0 = Struct_2(!arg_1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(arg_1.b, vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.b.x), -1432f)))), ~func_3(arg_1.a.yy, 23910i | -u_input.a, 0i, Struct_2(vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<f32>(arg_1.b.x, arg_1.b.x, 233f, arg_1.b.x), reverseBits(arg_1.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, 296f, arg_1.b.x)))), vec3<f32>(-118f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x - 188f)), 1076f));
    var var_1 = _wgslsmith_mult_vec3_u32(u_input.c.zyw, vec3<u32>(~(~4294967295u) & (4294967295u << (_wgslsmith_clamp_u32(arg_0, u_input.c.x, u_input.c.x) % 32u)), ~(~(~4294967295u)), ~(~1u)));
    let var_2 = (_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.zx, var_1.zy), ~(~var_1.yy), vec2<u32>(4294967295u, ~arg_0)) | vec2<u32>(~47020u, arg_1.c << ((arg_0 << (arg_0 % 32u)) % 32u))) << (vec2<u32>(var_1.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_1.xx & u_input.c.zw, var_1.yy, vec2<u32>(4294967295u, arg_0) | var_1.zx), u_input.c.zx)) % vec2<u32>(32u));
    global0 = array<Struct_1, 5>();
    global0 = array<Struct_1, 5>();
    return true;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> bool {
    global0 = array<Struct_1, 5>();
    var var_0 = func_2(u_input.c.x, arg_1);
    var var_1 = Struct_1(arg_0.c);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.c, u_input.c.x), 5u)];
    var var_3 = arg_1.a.x;
    return arg_1.a.x;
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = true;
    return StorageBuffer(_wgslsmith_f_op_f32(-402f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-622f, arg_1.b.x, arg_1.a.x)), -2132f)))), max(arg_1.c, _wgslsmith_mult_u32(firstTrailingBit(~6218u), 23674u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(1569f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-501f, -1187f))), 1f)) - 1027f));
    global0 = array<Struct_1, 5>();
    let var_2 = 1u >= reverseBits(u_input.c.x);
    let var_3 = global0[_wgslsmith_index_u32(u_input.c.x, 5u)];
    let var_4 = _wgslsmith_sub_vec3_u32(u_input.c.wyw, abs(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(u_input.c.wzy, vec3<u32>(u_input.c.x, var_3.a, 1u)), vec3<u32>(u_input.c.x, abs(0u), ~4294967295u))));
    global0 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = func_4(-u_input.a, Struct_2(!vec3<bool>(true, any(vec2<bool>(var_2, var_2)), func_1(Struct_2(vec3<bool>(var_2, var_2, false), vec4<f32>(var_1, var_1, 619f, -2036f), var_3.a, vec3<f32>(var_1, var_1, -156f)), Struct_2(vec3<bool>(var_2, false, true), vec4<f32>(-865f, var_1, -211f, -613f), 1u, vec3<f32>(var_1, var_1, -336f)), 28279u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-381f, -1000f, var_1, 1026f))))))), var_4.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1, var_1, -1000f))), vec3<f32>(var_1, 1000f, var_1))))), global0[_wgslsmith_index_u32(abs(var_3.a), 5u)]);
}

