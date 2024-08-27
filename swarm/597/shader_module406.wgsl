struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1() -> u32 {
    var var_0 = ~vec3<u32>(u_input.e.x, _wgslsmith_sub_u32(~1u, 0u), 39164u);
    let var_1 = ~u_input.e.x;
    var var_2 = 0u;
    var_0 = u_input.e | vec3<u32>(1u, 46728u >> ((var_1 ^ ~var_0.x) % 32u), ~2927u >> (u_input.e.x % 32u));
    var_0 = u_input.e;
    return firstLeadingBit(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(1u, 0u)), _wgslsmith_mod_vec2_u32(u_input.e.zy & vec2<u32>(2618u, 59399u), u_input.e.xy)) << (_wgslsmith_mult_u32((var_0.x | var_0.x) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, u_input.e.x, var_0.x), vec3<u32>(67123u, 0u, var_0.x)) % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 0u, 44225u), u_input.e), 0u)) % 32u));
}

fn func_2() -> u32 {
    var var_0 = u_input.e;
    let var_1 = global0[_wgslsmith_index_u32(75818u, 14u)];
    return _wgslsmith_mod_u32(~116244u, ~1u);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: bool) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1.a.b, arg_1.a.a.x)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(var_0 * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-129f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.b + 1000f)))));
    var var_2 = arg_1;
    var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(min(var_2.a.a, vec3<f32>(var_1.x, _wgslsmith_f_op_f32(2182f - -834f), _wgslsmith_f_op_f32(var_2.a.b * arg_1.a.a.x)))), _wgslsmith_f_op_f32(select(arg_1.a.a.x, var_2.a.a.x, true)), arg_1.a.c), ~_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(var_2.b, vec4<u32>(4294967295u, 0u, 0u, arg_2)) << (~var_2.b % vec4<u32>(32u)), vec4<u32>(u_input.e.x, u_input.e.x ^ 15018u, reverseBits(u_input.e.x), _wgslsmith_add_u32(0u, 42056u))), -var_2.c, arg_3, arg_3 && false);
    var_1 = vec2<f32>(1107f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1342f, -1131f)) - arg_1.a.b))));
    return reverseBits(vec3<u32>(~(~u_input.e.x), _wgslsmith_mult_u32(12198u, (0u | u_input.e.x) & reverseBits(arg_0)), ~abs(arg_2) << ((arg_2 & ~0u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(func_1() | ~(u_input.e.x >> (func_2() % 32u)), 14u)], vec4<u32>(u_input.e.x, 41137u, ~((u_input.e.x & u_input.e.x) << (4294967295u % 32u)), 4294967295u), u_input.b.x, !((_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -18635i, u_input.b.x, u_input.a), vec4<i32>(1i, u_input.a, u_input.b.x, u_input.d)) & _wgslsmith_sub_i32(u_input.c, u_input.a)) != firstLeadingBit(_wgslsmith_mod_i32(u_input.d, 10103i))), true);
    let var_1 = _wgslsmith_mod_vec2_u32(u_input.e.zx, _wgslsmith_mult_vec2_u32(vec2<u32>(50913u, abs(4294967295u)) >> ((~vec2<u32>(0u, 4941u) << (_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.e.x, 38983u), vec2<u32>(10317u, 61757u)) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(~46489u, 1u) << (~(~var_0.b.wz) % vec2<u32>(32u))));
    var var_2 = _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(~var_0.b.wyw, countOneBits(vec3<u32>(20117u, var_0.b.x, u_input.e.x))), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, u_input.e.x) >> (vec3<u32>(var_0.b.x, var_0.b.x, var_1.x) % vec3<u32>(32u)), select(vec3<u32>(4294967295u, u_input.e.x, 1u), u_input.e, false), u_input.e)), var_0.b.zzz) << (func_3(var_0.b.x, Struct_2(global0[_wgslsmith_index_u32(0u, 14u)], vec4<u32>(26181u, 0u, var_1.x, var_1.x) & min(var_0.b, var_0.b), ~(-7657i), var_0.e, !(!var_0.d)), ~(~49834u), true) % vec3<u32>(32u));
    let var_3 = 4294967295u >> (var_1.x % 32u);
    global0 = array<Struct_1, 14>();
    let var_4 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(-903f, var_0.a.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(861f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f * var_4.a.x), _wgslsmith_div_f32(var_0.a.a.x, var_0.a.b))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-147f, -3200f, var_0.d)), var_0.a.b))))));
}

