struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: i32,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 13>;

var<private> global1: f32;

var<private> global2: Struct_1 = Struct_1(false, vec3<u32>(35333u, 4108u, 1u), -49156i, vec4<bool>(false, true, false, false), vec3<f32>(-1006f, 1004f, -1615f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_3) -> vec4<u32> {
    var var_0 = Struct_3(Struct_1(true, ~(~abs(global2.b)), _wgslsmith_sub_i32(reverseBits(~global2.c), i32(-1i) * -96195i), !select(global2.d, global2.d, -1i <= u_input.a), arg_3.a.e), 1i);
    global1 = _wgslsmith_f_op_f32(floor(arg_0.x));
    let var_1 = arg_3.a.c;
    var var_2 = 0u;
    var var_3 = 0i;
    return min(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(global2.b.x, global2.b.x, var_0.a.b.x, 4332u), vec4<u32>(87219u, var_0.a.b.x, arg_3.a.b.x, global2.b.x)), ~abs(arg_3.a.b.x), max(0u ^ arg_3.a.b.x, arg_2), ~var_0.a.b.x) >> (~select(vec4<u32>(24516u, 31615u, 42803u, 327u), ~vec4<u32>(arg_3.a.b.x, 0u, 1u, arg_3.a.b.x), true) % vec4<u32>(32u)), vec4<u32>(~(~firstLeadingBit(1u)), arg_2, var_0.a.b.x | arg_3.a.b.x, abs(4294967295u)));
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec4_u32(max(_wgslsmith_mult_vec4_u32(func_3(vec4<f32>(global2.e.x, global2.e.x, global2.e.x, -1392f), global2.d.yyz, 1u, Struct_3(Struct_1(true, global2.b, global2.c, vec4<bool>(global2.a, global2.d.x, false, global2.d.x), vec3<f32>(global2.e.x, global2.e.x, global2.e.x)), 16581i)), vec4<u32>(global2.b.x, global2.b.x, 53483u, global2.b.x) | vec4<u32>(global2.b.x, 4294967295u, 1u, global2.b.x)) | select(reverseBits(vec4<u32>(global2.b.x, global2.b.x, global2.b.x, global2.b.x)), firstTrailingBit(vec4<u32>(28409u, global2.b.x, 0u, 4294967295u)), any(global2.d.wwz)), vec4<u32>(_wgslsmith_sub_u32(0u ^ global2.b.x, 1u), global2.b.x, global2.b.x, _wgslsmith_mod_u32(~global2.b.x, global2.b.x))), ~vec4<u32>(0u, 28538u, 32981u, global2.b.x));
    let var_1 = -min(_wgslsmith_clamp_vec2_i32(vec2<i32>(global2.c, 0i), vec2<i32>(-9710i, 0i), ~vec2<i32>(-3775i, u_input.a)), _wgslsmith_sub_vec2_i32(vec2<i32>(-8721i, u_input.a), vec2<i32>(u_input.a, u_input.a)) >> ((vec2<u32>(9223u, 3142u) ^ global2.b.yy) % vec2<u32>(32u))) << (abs(vec2<u32>(1u, abs(~global2.b.x))) % vec2<u32>(32u));
    let var_2 = Struct_1(261f != _wgslsmith_f_op_f32(max(-396f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e.x)))), ~_wgslsmith_sub_vec3_u32(select(max(global2.b, global2.b), max(global2.b, vec3<u32>(var_0, global2.b.x, 4294967295u)), true), global2.b), i32(-1i) * -63363i, !vec4<bool>(global2.a, !global2.a, true, global2.d.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.e.x), global2.e.x, global2.e.x) + _wgslsmith_f_op_vec3_f32(global2.e - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1225f, global2.e.x, -816f))))));
    var var_3 = -923f;
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1821f);
    return Struct_3(Struct_1(true, vec3<u32>(~var_0, abs(0u), _wgslsmith_add_u32(var_0, global2.b.x)), 1i, select(select(!vec4<bool>(global2.d.x, true, var_2.d.x, false), vec4<bool>(false, global2.a, true, true), vec4<bool>(false, true, false, true)), var_2.d, !vec4<bool>(false, true, var_2.d.x, true)), var_2.e), select(min(var_1.x, global2.c), var_2.c, all(var_2.d.xxz)));
}

fn func_1() -> Struct_3 {
    global0 = array<vec4<f32>, 13>();
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(global2.b.x, 1u, ~_wgslsmith_mult_u32(global2.b.x, global2.b.x)), countOneBits(global2.b)) << (~vec3<u32>(1u, _wgslsmith_div_u32(0u, select(global2.b.x, 48821u, global2.a)), global2.b.x) % vec3<u32>(32u));
    let var_1 = 1i;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -637f);
    let var_3 = func_2();
    return Struct_3(var_3.a, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 54118u;
    let var_1 = func_1();
    var var_2 = func_2().a.d.ywx;
    let var_3 = vec3<u32>(4294967295u, var_0, 1u);
    var var_4 = global2.c;
    global0 = array<vec4<f32>, 13>();
    let var_5 = var_1.a.b.x;
    global1 = _wgslsmith_f_op_f32(-1f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(_wgslsmith_add_i32(0i, -1i)), ~_wgslsmith_mult_i32(var_1.b, 3270i)), -(~(~vec2<i32>(-2147483647i, u_input.a)))), vec3<u32>(1u, _wgslsmith_dot_vec2_u32(reverseBits(var_1.a.b.yx), vec2<u32>(var_3.x, var_0)), var_0) | max(var_3, ~(global2.b & vec3<u32>(4294967295u, 4294967295u, 0u))), countOneBits(-vec3<i32>(29164i, var_1.a.c, global2.c ^ 1i)), 72535i, 0u);
}

