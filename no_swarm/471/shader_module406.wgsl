struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_3, 18>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3) -> Struct_1 {
    var var_0 = !vec4<bool>(any(!(!vec2<bool>(global0.a.d, arg_0.d.a.d))), arg_0.b == ~(~arg_0.d.a.a), select(false, true, global0.a.d || false) | all(!vec4<bool>(global0.a.d, true, true, arg_1.a.d)), true);
    var var_1 = Struct_2(global0.a);
    let var_2 = ~min(~vec4<u32>(var_1.a.c.x & global0.a.c.x, _wgslsmith_mult_u32(0u, arg_1.a.c.x), 29700u, _wgslsmith_div_u32(0u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(80013u, u_input.b, 4294967295u, 4294967295u) ^ _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 1u, 0u, arg_1.a.c.x), vec4<u32>(u_input.c, var_1.a.c.x, u_input.d, arg_1.a.c.x)), ~vec4<u32>(arg_0.e.c.x, arg_1.a.c.x, 4294967295u, 4294967295u)));
    return Struct_1(1i, ~global0.a.b, arg_1.a.c, true);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: bool) -> u32 {
    global1 = vec2<bool>(arg_1.x, false);
    let var_0 = _wgslsmith_add_u32(~(~arg_2.a.c.x), ~arg_2.a.c.x | _wgslsmith_dot_vec2_u32(max(_wgslsmith_mult_vec2_u32(global0.a.c, vec2<u32>(9044u, global0.a.c.x)), vec2<u32>(global0.a.c.x, 9847u)), max(vec2<u32>(arg_2.a.c.x, global0.a.c.x), vec2<u32>(1u, 1u)) | _wgslsmith_mod_vec2_u32(global0.a.c, u_input.e.zx)));
    global0 = Struct_2(func_2(Struct_4(abs(~global0.a.b), _wgslsmith_mod_i32(~1i, -1309i), _wgslsmith_mod_vec2_i32(min(vec2<i32>(19870i, 1i), vec2<i32>(arg_0.a.a, arg_2.a.b)), vec2<i32>(u_input.a.x, 18992i) ^ u_input.a.xz), global2[_wgslsmith_index_u32(~global0.a.c.x, 18u)], Struct_1(arg_2.a.b, 24888i, u_input.e.xy, !arg_3)), Struct_3(global0.a)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -750f));
    global0 = Struct_2(func_2(Struct_4(34190i, countOneBits(global0.a.b), u_input.a.zy, global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(4294967295u, arg_0.a.c.x), 18u)], Struct_1(~u_input.a.x, i32(-1i) * -1i, ~vec2<u32>(u_input.b, arg_2.a.c.x), !global1.x)), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, u_input.b), 18u)]));
    return _wgslsmith_dot_vec4_u32(~reverseBits(firstLeadingBit(vec4<u32>(arg_0.a.c.x, 4373u, u_input.c, arg_2.a.c.x))), vec4<u32>(_wgslsmith_add_u32(9043u, ~(~arg_0.a.c.x)), ~u_input.d, (arg_2.a.c.x << (4294967295u % 32u)) ^ 0u, arg_0.a.c.x));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<bool>, arg_2: bool, arg_3: f32) -> vec3<u32> {
    var var_0 = 48855u;
    let var_1 = ~global0.a.c.x;
    var_0 = 0u;
    var_0 = reverseBits(abs(_wgslsmith_mult_u32(47910u, global0.a.c.x)) ^ var_1) ^ _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.d, u_input.b), var_1) << (1u % 32u), ~global0.a.c.x);
    let var_2 = Struct_2(func_2(Struct_4(_wgslsmith_mult_i32(_wgslsmith_div_i32(global0.a.a, global0.a.a), 1i & global0.a.a), _wgslsmith_add_i32(-39062i, global0.a.a), u_input.a.yy, Struct_3(Struct_1(global0.a.a, -2147483647i, vec2<u32>(u_input.c, 1u), global1.x)), global0.a), global2[_wgslsmith_index_u32(~(~(~23005u)), 18u)]));
    return vec3<u32>(abs(func_3(Struct_2(global0.a), vec3<bool>(var_2.a.d, false, arg_0.x), var_2, global1.x)) << ((max(0u, 1u) << (_wgslsmith_div_u32(var_1, max(6338u, var_1)) % 32u)) % 32u), 1u, 4294967295u);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>) -> i32 {
    var var_0 = Struct_1(-1i, 1i, vec2<u32>(_wgslsmith_mod_u32(global0.a.c.x, min(1u, u_input.b | arg_1.x)), ~(u_input.c >> (4294967295u % 32u)) ^ arg_1.x), !global0.a.d);
    global2 = array<Struct_3, 18>();
    let var_1 = vec2<f32>(1f, _wgslsmith_f_op_f32(select(-1092f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 553f))), true)));
    global1 = !select(!select(select(vec2<bool>(false, arg_0.d), vec2<bool>(false, global0.a.d), global1.x), select(vec2<bool>(global1.x, global0.a.d), vec2<bool>(true, arg_0.d), global1.x), select(vec2<bool>(true, true), vec2<bool>(true, false), var_0.d)), vec2<bool>(any(vec3<bool>(arg_0.d, var_0.d, false)), all(vec2<bool>(var_0.d, global0.a.d))), select(vec2<bool>(true, select(false, true, arg_0.d)), vec2<bool>(true, true), any(vec2<bool>(true, var_0.d)) & true));
    let var_2 = !(func_2(Struct_4(0i, 1i & u_input.a.x, u_input.a.zx | u_input.a.zy, Struct_3(Struct_1(arg_0.b, 1i, arg_1.zy, false)), arg_0), global2[_wgslsmith_index_u32(0u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 10011u, arg_0.c.x), vec4<u32>(global0.a.c.x, 1u, 0u, arg_1.x)), 18u)]).d | true);
    return -(_wgslsmith_mod_i32(~arg_0.a, arg_0.a >> (var_0.c.x % 32u)) | arg_0.a) >> (_wgslsmith_add_u32(4294967295u >> (~func_1(vec4<bool>(false, global1.x, var_0.d, false), vec4<bool>(global1.x, false, false, false), false, var_1.x).x % 32u), _wgslsmith_sub_u32(1u, 1u) >> (1u % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(func_4(global0.a, func_1(vec4<bool>(global0.a.d, false, global0.a.d, global0.a.d), vec4<bool>(global1.x, global0.a.d, true, false), false, 262f)), -9113i, 0i, countOneBits(func_4(Struct_1(u_input.a.x, -10663i, vec2<u32>(u_input.d, global0.a.c.x), true), vec3<u32>(149206u, 1u, global0.a.c.x)))), vec4<i32>(u_input.a.x, ~(~global0.a.a), u_input.a.x >> (func_3(Struct_2(global0.a), vec3<bool>(false, true, true), Struct_2(global0.a), global0.a.d) % 32u), abs(15520i))), firstTrailingBit(~(global0.a.b & u_input.a.x)) ^ -(u_input.a.x << (global0.a.c.x % 32u)), abs(u_input.a.zz), Struct_3(func_2(Struct_4(-684i, _wgslsmith_sub_i32(global0.a.a, -60586i), vec2<i32>(global0.a.a, 91032i), Struct_3(Struct_1(-2147483647i, u_input.a.x, u_input.e.zz, false)), func_2(Struct_4(global0.a.b, global0.a.a, vec2<i32>(u_input.a.x, 2147483647i), Struct_3(Struct_1(u_input.a.x, global0.a.b, global0.a.c, true)), global0.a), global2[_wgslsmith_index_u32(4294967295u, 18u)])), global2[_wgslsmith_index_u32(~16152u, 18u)])), func_2(Struct_4(_wgslsmith_mult_i32(-global0.a.a, abs(u_input.a.x)), 2147483647i, u_input.a.xz, Struct_3(global0.a), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a.b, global0.a.a), vec2<i32>(global0.a.b, 1i)), 0i, _wgslsmith_add_vec2_u32(vec2<u32>(7377u, 5283u), vec2<u32>(global0.a.c.x, 1u)), true)), Struct_3(global0.a)));
    let var_1 = Struct_2(global0.a);
    var var_2 = Struct_4(abs(1i), -global0.a.b, _wgslsmith_mult_vec2_i32(firstLeadingBit(max(vec2<i32>(27326i, var_1.a.a), ~u_input.a.xy)), reverseBits(vec2<i32>(14744i, var_0.c.x)) | max(_wgslsmith_mult_vec2_i32(u_input.a.xz, vec2<i32>(u_input.a.x, -60234i)), var_0.c)), Struct_3(func_2(Struct_4(var_0.b & -2147483647i, ~(-1i), var_0.c << (var_0.e.c % vec2<u32>(32u)), Struct_3(var_1.a), var_1.a), global2[_wgslsmith_index_u32(4294967295u, 18u)])), func_2(var_0, Struct_3(Struct_1(405i, func_2(var_0, Struct_3(global0.a)).b, u_input.e.xz, var_0.e.d))));
    global2 = array<Struct_3, 18>();
    var var_3 = Struct_2(func_2(var_0, Struct_3(func_2(var_0, var_0.d))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(936f, -1396f), max(select(-countOneBits(global0.a.b), _wgslsmith_mod_i32(var_2.e.b, u_input.a.x) << ((var_1.a.c.x & 0u) % 32u), !var_0.e.d), firstLeadingBit(var_0.a)), -select(_wgslsmith_div_vec3_i32(~vec3<i32>(var_3.a.b, var_2.e.a, var_3.a.a), u_input.a), ~vec3<i32>(var_1.a.b, 0i, var_1.a.a), select(select(vec3<bool>(false, global0.a.d, var_0.e.d), vec3<bool>(var_2.e.d, true, false), vec3<bool>(var_2.e.d, false, global1.x)), !vec3<bool>(false, true, var_2.e.d), vec3<bool>(true, var_1.a.d, true))), ~vec3<u32>(firstTrailingBit(~var_1.a.c.x), _wgslsmith_mult_u32(0u, _wgslsmith_mult_u32(11449u, u_input.b)), countOneBits(0u)));
}

