struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: i32 = i32(-2147483648);

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(false, 0u), vec4<i32>(-28119i, -33819i, 2147483647i, 0i), 0u), vec3<u32>(3906u, 1u, 0u), vec3<f32>(-1232f, -1112f, 386f), Struct_1(true, 36187u), Struct_1(false, 0u));

var<private> global2: Struct_1 = Struct_1(true, 15117u);

var<private> global3: array<Struct_1, 16>;

var<private> global4: array<vec4<i32>, 18>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = Struct_3(Struct_2(Struct_1(global2.a || (u_input.a >= 2147483647i), _wgslsmith_mod_u32(~15650u, max(global2.b, 22770u))), global1.a.b, reverseBits(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_2.b, arg_2.b, 42691u), vec4<u32>(8779u, 0u, global2.b, arg_2.b)), arg_2.b))), global1.b, global1.c, Struct_1(select(select(select(true, global1.a.a.a, true), true, -2147483647i == global1.a.b.x), true, true), arg_2.b), Struct_1(any(select(vec3<bool>(false, true, false), !vec3<bool>(arg_2.a, false, true), arg_2.a | true)), _wgslsmith_mod_u32(~arg_2.b, 1u)));
    return vec3<u32>(firstLeadingBit(reverseBits(23833u)), abs(_wgslsmith_add_u32(~global2.b << (abs(27755u) % 32u), global1.e.b)), _wgslsmith_clamp_u32(~arg_2.b, select(arg_2.b, 1u, false), abs(_wgslsmith_div_u32(global2.b, ~46525u))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_3(arg_1, ~func_3(1i, _wgslsmith_div_f32(-956f, _wgslsmith_f_op_f32(min(979f, 826f))), arg_1.a), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(global1.c, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global1.c), _wgslsmith_div_vec3_f32(global1.c, vec3<f32>(global1.c.x, global1.c.x, -147f)))), vec3<bool>(!global1.a.a.a, all(vec2<bool>(arg_1.a.a, arg_0.a)), false))))), global1.d, global1.d);
    var var_1 = var_0;
    let var_2 = Struct_3(global1.a, ~vec3<u32>(var_0.a.c, (arg_1.c & 0u) | arg_2.x, arg_2.x), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_0.c.x)), _wgslsmith_f_op_f32(-global1.c.x), 356f)), var_1.c), Struct_1(false, abs(max(func_3(2147483647i, -784f, var_1.a.a).x, var_1.a.c))), Struct_1(reverseBits(-var_1.a.b.x) <= reverseBits(firstLeadingBit(-5032i)), global2.b));
    var var_3 = Struct_2(global1.e, vec4<i32>(var_0.a.b.x, ~abs(global1.a.b.x), countOneBits(-2147483647i << ((0u >> (arg_0.b % 32u)) % 32u)), _wgslsmith_div_i32(1i, ~(var_1.a.b.x | 86608i))), 14843u);
    let var_4 = ~vec4<u32>(_wgslsmith_sub_u32(reverseBits(var_1.e.b), 1u), abs(13327u) << (var_3.c % 32u), min(~42411u, ~var_0.a.c), ~65351u) ^ (~max(~vec4<u32>(59506u, 0u, var_1.b.x, 25166u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, arg_1.c, 1u), vec4<u32>(4294967295u, arg_1.c, 0u, 4294967295u))) & ~(~(vec4<u32>(var_1.a.a.b, 78599u, global2.b, 551u) >> (vec4<u32>(25369u, arg_0.b, 1u, 0u) % vec4<u32>(32u)))));
    return var_0;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec3<f32>) -> StorageBuffer {
    var var_0 = global1.a;
    let var_1 = func_2(var_0.a, Struct_2(var_0.a, var_0.b, min(max(1u, 7287u), 4294967295u)), global1.b.xz);
    let var_2 = 0i;
    let var_3 = var_1.a.a;
    global2 = Struct_1(all(!vec3<bool>(global2.a != global2.a, all(vec4<bool>(true, true, var_0.a.a, global2.a)), true)), ~(~1431u) << (global2.b % 32u));
    return StorageBuffer(reverseBits(var_3.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(!all(!vec4<bool>(global1.e.a, false, true, false)) && (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1.c.x * -986f), _wgslsmith_f_op_f32(global1.c.x + 516f))) >= -193f), !(!(global2.b >= global1.d.b) & !(!global1.e.a)));
    global3 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec3_f32(-global1.c), global1.c);
}

