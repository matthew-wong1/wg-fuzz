struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(26638u, 18420u), 0u, Struct_1(vec2<i32>(2147483647i, 0i), 21613u, vec3<u32>(1u, 1u, 0u), vec3<f32>(939f, -1673f, -1000f)), Struct_1(vec2<i32>(35134i, -1i), 36915u, vec3<u32>(127152u, 1u, 4294967295u), vec3<f32>(553f, -201f, -175f)));

var<private> global1: array<vec4<bool>, 4> = array<vec4<bool>, 4>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false));

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: f32 = -1972f;

var<private> global4: i32 = 0i;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<u32> {
    global3 = -191f;
    global0 = Struct_2(~(vec2<u32>(4294967295u, ~1u) << (max(_wgslsmith_clamp_vec2_u32(global0.d.c.yx, vec2<u32>(global0.a.x, u_input.a.x), u_input.a.yy), ~vec2<u32>(99731u, u_input.a.x)) % vec2<u32>(32u))), u_input.a.x, Struct_1((countOneBits(vec2<i32>(global0.c.a.x, u_input.b.x)) & -vec2<i32>(global0.c.a.x, 61943i)) | ~global0.c.a, 4294967295u, global0.c.c, global0.d.d), global0.d);
    let var_0 = vec4<u32>(~firstTrailingBit(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, _wgslsmith_dot_vec4_u32(abs(u_input.a), u_input.a), ~(~u_input.a.x), 17364u), vec4<u32>(~(u_input.a.x ^ u_input.a.x), 59021u, abs(~u_input.a.x), u_input.a.x >> (~u_input.a.x % 32u))), min(_wgslsmith_dot_vec2_u32(global0.a, vec2<u32>(98508u, u_input.a.x)), abs(u_input.a.x) >> (_wgslsmith_mult_u32(u_input.a.x, 0u) % 32u)) ^ u_input.a.x, ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.a.yzw | vec3<u32>(u_input.a.x, 81713u, global0.b), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 10443u, 4294967295u), global0.d.c)), 7517u, reverseBits(0u)));
    var var_1 = global2.x;
    let var_2 = vec4<bool>(false, false, !(true || global2.x), global2.x);
    return abs(u_input.a.zw);
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(select(~firstTrailingBit(~0u), u_input.a.x, true), 4u)];
    global3 = arg_2.x;
    var var_1 = vec3<i32>(0i, arg_0, ~2147483647i) | vec3<i32>((-1i | ~u_input.b.x) ^ _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.d.a.x, u_input.b.x, -2147483647i), vec3<i32>(arg_0, global0.d.a.x, u_input.b.x)), -1i), ~(-1i), arg_3.a.x ^ -1i);
    var var_2 = Struct_2(~_wgslsmith_add_vec2_u32(max(vec2<u32>(1u, arg_3.c.x), func_3()), ~(~arg_1)), 16710u, global0.d, Struct_1(var_1.yz, 1u, vec3<u32>(~_wgslsmith_sub_u32(1u, u_input.a.x), 4294967295u, ~arg_3.b), _wgslsmith_f_op_vec3_f32(-global0.d.d)));
    let var_3 = u_input.b.x ^ _wgslsmith_div_i32(arg_0, 1i);
    return ~14555u;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.c.a.x, 33584i, 0i), _wgslsmith_sub_vec4_i32(vec4<i32>(21714i, arg_1.c.a.x, global0.c.a.x, arg_2.a.x), vec4<i32>(u_input.b.x, arg_2.a.x, -1i, u_input.b.x))), arg_2.a.x, abs(u_input.b.x), -13818i) >> (vec4<u32>(_wgslsmith_add_u32(func_2(~arg_0.d.a.x, ~arg_2.c.zx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1346f, arg_2.d.x, arg_1.d.d.x, -1188f)), global0.d), _wgslsmith_sub_u32(arg_1.b, _wgslsmith_mod_u32(u_input.a.x, global0.a.x))), u_input.a.x, u_input.a.x, func_3().x) % vec4<u32>(32u));
    let var_1 = global0.d.d.xz;
    var var_2 = vec2<u32>(0u, 37146u);
    let var_3 = Struct_2(~arg_2.c.xx, ~_wgslsmith_mod_u32(4294967295u, 9070u), arg_1.d, global0.d);
    global3 = global0.c.d.x;
    return arg_1.c.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true & select(true, false, false);
    var var_1 = -465f;
    let var_2 = true;
    global1 = array<vec4<bool>, 4>();
    var var_3 = vec4<bool>(!((~u_input.a.x > (u_input.a.x >> (global0.c.b % 32u))) == (_wgslsmith_f_op_f32(func_1(Struct_2(global0.d.c.xx, global0.d.b, global0.c, Struct_1(global0.c.a, u_input.a.x, vec3<u32>(u_input.a.x, 1u, u_input.a.x), vec3<f32>(global0.d.d.x, global0.d.d.x, 2272f))), Struct_2(global0.a, 59945u, Struct_1(u_input.b, 11599u, global0.c.c, vec3<f32>(global0.c.d.x, 391f, 1519f)), Struct_1(vec2<i32>(global0.c.a.x, 15404i), 20659u, vec3<u32>(global0.b, global0.c.c.x, u_input.a.x), vec3<f32>(global0.d.d.x, -112f, -679f))), global0.d)) >= global0.d.d.x)), all(vec3<bool>(true, select(true, !var_2, global2.x), global2.x)), all(!vec3<bool>(global2.x, all(vec4<bool>(true, true, false, global2.x)), false)), any(select(!select(vec2<bool>(global2.x, global2.x), vec2<bool>(var_2, false), false), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, var_2)), !vec2<bool>(global2.x, global2.x), select(vec2<bool>(true, false), vec2<bool>(var_2, false), vec2<bool>(global2.x, false))), select(vec2<bool>(var_2, var_2), !vec2<bool>(global2.x, false), var_2))));
    global2 = var_3.xx;
    global3 = 990f;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~_wgslsmith_clamp_i32(abs(global0.c.a.x), -1i << (global0.d.b % 32u), -59627i)));
}

