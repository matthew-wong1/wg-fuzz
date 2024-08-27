struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: vec3<i32>,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_3, 32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global0 = Struct_3(Struct_2(false, min(arg_0.b, select(global0.a.b, reverseBits(vec2<u32>(arg_0.b.x, global0.a.b.x)), -1195f >= global0.c.d)), global0.a.c, false), select(vec4<bool>(_wgslsmith_f_op_f32(-global0.c.d) > _wgslsmith_f_op_f32(trunc(global0.c.d)), any(select(global0.c.c.wy, global0.c.c.yx, arg_0.d)), any(vec4<bool>(true, global0.b.x, true, arg_0.a)), true), select(vec4<bool>(true, arg_0.c.x < 1i, all(vec3<bool>(arg_0.a, arg_0.d, false)), global0.b.x), vec4<bool>(!arg_0.d, any(global0.b), 1u < arg_0.b.x, all(vec3<bool>(arg_0.d, false, arg_0.d))), vec4<bool>(true, false, arg_0.a, global0.c.d >= global0.c.d)), any(vec3<bool>(arg_0.a, true, true))), global0.c);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.d * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1197f * 382f) - global0.c.d)))));
    var var_1 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(11056i, 2147483647i << ((0u << (global0.a.b.x % 32u)) % 32u)), _wgslsmith_dot_vec2_i32(select(arg_0.c.zz | vec2<i32>(arg_0.c.x, -1i), ~vec2<i32>(1i, 1i), false), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, arg_0.c.x), select(vec2<i32>(arg_0.c.x, global0.a.c.x), global0.a.c.yx, vec2<bool>(global0.b.x, true))))), u_input.d.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d.x, -2147483647i, 0i, arg_0.c.x), vec4<i32>(u_input.c.x, -12547i, -1i, 1i)), -vec4<i32>(1i, -1i, global0.a.c.x, 12847i)), ~(i32(-1i) * -2147483647i)) << (firstLeadingBit(reverseBits(~arg_0.b.x)) % 32u), -arg_0.c.x ^ arg_0.c.x);
    global0 = global1[_wgslsmith_index_u32(~1u | arg_0.b.x, 32u)];
    global1 = array<Struct_3, 32>();
    return ~_wgslsmith_sub_u32(arg_0.b.x, 13723u);
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    global0 = global1[_wgslsmith_index_u32(~(~1u), 32u)];
    var var_0 = arg_0;
    global0 = Struct_3(global0.a, select(select(global0.c.c, global0.b, select(vec4<bool>(global0.b.x, global0.c.a, false, global0.c.b), global0.b, u_input.c.x != u_input.a)), vec4<bool>(firstLeadingBit(u_input.b) == ~u_input.b, all(select(vec3<bool>(global0.b.x, global0.c.a, false), vec3<bool>(false, true, global0.c.a), global0.b.xyx)), all(global0.b), !global0.b.x), true), global0.c);
    let var_1 = _wgslsmith_f_op_f32(select(global0.c.d, _wgslsmith_f_op_f32(-var_0.x), any(vec4<bool>(_wgslsmith_f_op_f32(select(arg_0.x, arg_0.x, true)) != 379f, _wgslsmith_f_op_f32(arg_0.x - arg_0.x) < _wgslsmith_f_op_f32(f32(-1f) * -519f), global0.a.a & true, !all(vec4<bool>(global0.a.a, global0.b.x, false, global0.c.c.x))))));
    var var_2 = Struct_3(global0.a, global0.b, global0.c);
    return func_3(global0.a);
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(137f, global0.c.d, 1130f, global0.c.d))), u_input.b, _wgslsmith_mod_u32(_wgslsmith_sub_u32(~global0.a.b.x, 1u), 57599u)), ~vec3<u32>(108204u, ~u_input.b, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(88592u, global0.a.b.x, u_input.b), vec3<u32>(global0.a.b.x, 1u, 4294967295u)), select(0u, global0.a.b.x, global0.b.x))), ~abs(_wgslsmith_div_vec3_u32(vec3<u32>(0u, u_input.b, 0u), vec3<u32>(u_input.b, u_input.b, 1u)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(global0.a.b.x, global0.a.b.x, u_input.b), vec3<u32>(18872u, 45879u, global0.a.b.x))));
    global0 = global1[_wgslsmith_index_u32(0u | _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 51271u | u_input.b), vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(var_0), vec3<u32>(var_0.x, global0.a.b.x, 28497u)), u_input.b >> (max(1u, 31381u) % 32u))), 32u)];
    global0 = global1[_wgslsmith_index_u32(func_3(global0.a), 32u)];
    var var_1 = global0.b.xw;
    var_1 = global0.c.c.wy;
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1318f;
    var var_1 = select(global0.b.zzx, vec3<bool>(func_1() == ((58413u == global0.a.b.x) || true), !all(select(global0.b.xzz, vec3<bool>(false, global0.b.x, global0.b.x), vec3<bool>(global0.b.x, global0.c.b, global0.c.a))), false), _wgslsmith_f_op_f32(round(global0.c.d)) >= 143f);
    var var_2 = 32206u;
    let var_3 = global0.c;
    global1 = array<Struct_3, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(68984u, global0.a.b.x, vec4<u32>(abs(~(~global0.a.b.x)), u_input.b, 1u, 4294967295u));
}

