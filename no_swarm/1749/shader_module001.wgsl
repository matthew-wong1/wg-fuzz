struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: Struct_2,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -31701i;

var<private> global1: Struct_3 = Struct_3(false, vec4<f32>(-2398f, -1101f, -660f, 505f), Struct_2(23683i), vec2<bool>(true, true));

var<private> global2: Struct_2 = Struct_2(0i);

var<private> global3: i32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    return Struct_1(arg_0.x);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_2(24445i);
    global2 = global1.c;
    var var_1 = Struct_3(global1.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-425f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1522f, 1143f) - -1371f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) + -1855f), -791f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1659f, 795f, -223f, 1000f))))))), Struct_2(_wgslsmith_mod_i32(select(_wgslsmith_mod_i32(global1.c.a, var_0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.c.a, global2.a, 0i, -2147483647i), vec4<i32>(var_0.a, u_input.c.x, 2147483647i, global2.a)), global1.a), global2.a)), global1.d);
    let var_2 = arg_0;
    let var_3 = vec2<u32>(u_input.d.x << (countOneBits(~_wgslsmith_add_u32(arg_2.x, 1u)) % 32u), 0u);
    return Struct_2(_wgslsmith_clamp_i32(2147483647i, -_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.c.a, var_0.a), u_input.c), 1i), reverseBits(-(-1i << (var_3.x % 32u)))));
}

fn func_1(arg_0: Struct_3) -> vec4<f32> {
    global3 = -firstTrailingBit(~1i) >> (u_input.a.x % 32u);
    global2 = func_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0.b.x, arg_0.b.x)))))), func_2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, -1420f, -895f) * _wgslsmith_f_op_vec3_f32(step(global1.b.xzz, vec3<f32>(global1.b.x, 987f, -1000f)))), arg_0.b.zwy))), ~max(~vec4<u32>(u_input.a.x, 55454u, 79365u, 47631u), vec4<u32>(11402u, u_input.a.x, u_input.d.x, u_input.b.x)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, 0u, 1u), vec4<u32>(u_input.b.x, u_input.d.x, u_input.d.x, 1u) | _wgslsmith_sub_vec4_u32(vec4<u32>(42365u, u_input.d.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, 28914u, u_input.b.x, u_input.b.x))) % vec4<u32>(32u)));
    global2 = func_3(func_2(arg_0.b.zwy), Struct_1(_wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-680f, 693f) - _wgslsmith_f_op_f32(-global1.b.x)))), _wgslsmith_mod_vec4_u32(vec4<u32>(min(7453u, u_input.b.x), 97970u << (u_input.a.x % 32u), ~0u, u_input.a.x) | vec4<u32>(~u_input.b.x, u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 4294967295u), 4294967295u), vec4<u32>(~46428u, u_input.b.x, ~abs(0u), u_input.d.x)));
    global0 = arg_0.c.a << (~_wgslsmith_div_u32(u_input.b.x, ~abs(4294967295u)) % 32u);
    var var_0 = global1.b;
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.b.x, 451f, -174f, 928f), _wgslsmith_f_op_vec4_f32(arg_0.b + arg_0.b), select(vec4<bool>(global1.a, global1.a, global1.a, true), vec4<bool>(arg_0.d.x, global1.a, arg_0.a, false), vec4<bool>(global1.a, global1.d.x, true, false))))))), _wgslsmith_f_op_vec4_f32(-arg_0.b), 1u != (~u_input.b.x ^ ~select(u_input.a.x, u_input.b.x, true))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>) -> StorageBuffer {
    global0 = i32(-1i) * -1i;
    global1 = Struct_3(true, global1.b, global1.c, vec2<bool>(any(select(vec2<bool>(global1.d.x, global1.d.x), select(global1.d, global1.d, true), vec2<bool>(true, global1.d.x))), global1.a));
    global3 = global2.a;
    global3 = global2.a;
    global3 = 13885i;
    return StorageBuffer(countOneBits(firstTrailingBit(abs(~vec2<u32>(u_input.d.x, 4294967295u)))), -arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -419f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.b.x * -696f), global1.b.x)))));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_vec4_f32(global1.b + _wgslsmith_f_op_vec4_f32(func_1(Struct_3(true, vec4<f32>(var_0.a, global1.b.x, var_0.a, 404f), Struct_2(44873i), vec2<bool>(global1.a, global1.a))))), min(min(reverseBits(vec4<i32>(global2.a, global2.a, -1i, global1.c.a) << (vec4<u32>(u_input.b.x, 54160u, u_input.d.x, u_input.b.x) % vec4<u32>(32u))), _wgslsmith_add_vec4_i32(~vec4<i32>(-17602i, -1i, u_input.c.x, u_input.c.x), select(vec4<i32>(54998i, -54994i, -25555i, global1.c.a), vec4<i32>(global2.a, global1.c.a, 0i, global1.c.a), global1.a))), firstLeadingBit(vec4<i32>(select(global2.a, global1.c.a, false), u_input.c.x, min(-2147483647i, -57368i), -1i))));
}

