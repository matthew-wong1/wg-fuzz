struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: Struct_3,
    d: bool,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -471f;

var<private> global1: array<Struct_5, 26>;

var<private> global2: array<Struct_3, 22>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -134f));
    let var_0 = ~vec3<u32>(u_input.d.x, max(104239u, reverseBits(u_input.c.x) << (firstTrailingBit(1u) % 32u)), abs(44315u));
    let var_1 = Struct_1(min(~(i32(-1i) * -u_input.a), u_input.a), -630f, 1000f);
    var var_2 = firstTrailingBit(-10622i);
    let var_3 = vec3<bool>(true, true, true);
    return var_1;
}

fn func_1() -> u32 {
    let var_0 = func_2();
    global0 = _wgslsmith_div_f32(1040f, _wgslsmith_f_op_f32(var_0.c * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.c, 1000f))))));
    let var_1 = abs(u_input.e.xz);
    let var_2 = _wgslsmith_f_op_f32(-var_0.c);
    let var_3 = vec3<f32>(685f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -885f))), _wgslsmith_f_op_f32(-var_2));
    return ~max(1u, u_input.d.x);
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: bool) -> bool {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1093f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a * -158f) * arg_0.a))))));
    let var_1 = Struct_4(Struct_1(-22636i, 505f, _wgslsmith_f_op_f32(255f - arg_0.a)), _wgslsmith_f_op_f32(abs(-678f)), Struct_3(arg_2, ~u_input.d.yx, vec4<bool>(any(vec3<bool>(true, true, false)), _wgslsmith_f_op_f32(exp2(arg_0.a)) == arg_0.a, false, true)), false);
    global2 = array<Struct_3, 22>();
    global0 = _wgslsmith_f_op_f32(var_1.b * var_1.a.b);
    var var_2 = -2147483647i;
    return select(true, arg_2, u_input.b == func_2().a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_dot_vec4_u32(reverseBits(u_input.d), ~min(u_input.d, u_input.c));
    let var_1 = global1[_wgslsmith_index_u32(max(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.c.xyw, ~select(vec3<u32>(36310u, u_input.c.x, 1u), u_input.d.ywy, vec3<bool>(false, false, false))), ~var_0), ~u_input.c.x), 26u)];
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-1199f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2012f, -1000f, any(vec2<bool>(false, false)))))), 337f, func_1() | 27702u, 0u);
    var_2 = Struct_2(_wgslsmith_div_f32(-1340f, -224f), var_2.b, abs(0u), ((22436u << (~var_2.d % 32u)) | abs(112895u)) | 1u);
    let var_3 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.d, u_input.d), u_input.c), abs(_wgslsmith_clamp_vec4_u32(u_input.d, firstTrailingBit(vec4<u32>(52909u, var_2.c, u_input.c.x, u_input.d.x)), abs(vec4<u32>(u_input.c.x, 1u, 0u, 1u)))));
    var var_4 = ~vec2<i32>(~(-var_1.c.x), -(u_input.a & -2147483647i)) ^ (_wgslsmith_div_vec2_i32(var_1.c.zx, vec2<i32>(9918i, _wgslsmith_mod_i32(u_input.a, u_input.a))) << (vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.zy, vec2<u32>(var_2.d, 0u)), vec2<u32>(1u, var_1.b)), ~reverseBits(u_input.c.x)) % vec2<u32>(32u)));
    let var_5 = Struct_4(func_2(), var_2.b, Struct_3(!func_3(global1[_wgslsmith_index_u32(1u, 26u)], u_input.b, true), vec2<u32>(_wgslsmith_add_u32(firstLeadingBit(var_2.c), _wgslsmith_dot_vec2_u32(vec2<u32>(44141u, var_2.d), u_input.d.zx)), _wgslsmith_dot_vec2_u32(var_3.xx >> (vec2<u32>(12780u, var_0) % vec2<u32>(32u)), ~vec2<u32>(var_1.b, 51261u))), vec4<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), any(vec4<bool>(true, true, true, true)), select(true, true, var_1.c.x >= var_1.c.x))), _wgslsmith_div_f32(-1000f, -1739f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(371f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(61968u, 0u, var_1.b), u_input.d.zzx), 4294967295u) >> (~(~var_1.b) % 32u), vec3<f32>(-1550f, var_1.a, 1f));
}

