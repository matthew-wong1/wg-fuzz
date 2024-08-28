struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: vec2<f32>;

var<private> global2: vec2<i32>;

var<private> global3: vec3<bool>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    global2 = vec2<i32>(1i, 1i);
    var var_0 = u_input.c;
    var var_1 = var_0.x;
    let var_2 = select(vec4<u32>(0u, max(29622u, 50109u), ~1u, firstLeadingBit(~_wgslsmith_add_u32(68276u, 0u))), vec4<u32>(~(~26673u), 77269u, _wgslsmith_div_u32(firstLeadingBit(var_0.x), var_0.x), var_0.x), all(vec3<bool>(true, false, false)));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global1.x, 285f))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(250f * global1.x), -576f, _wgslsmith_f_op_f32(global1.x + global1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) + vec3<f32>(1012f, 360f, 318f))), true)));
    return !global3.x;
}

fn func_2() -> vec3<bool> {
    global3 = vec3<bool>(func_3(), any(select(global3.zx, global3.yy, select(!global3.xy, select(vec2<bool>(true, global3.x), vec2<bool>(true, global3.x), global3.xz), all(vec4<bool>(true, global3.x, false, true))))), !global3.x);
    global3 = !vec3<bool>(!(global3.x != true), false, select(_wgslsmith_f_op_f32(global1.x * 700f) != global1.x, !global3.x & global3.x, any(select(vec3<bool>(global3.x, global3.x, global3.x), vec3<bool>(false, global3.x, global3.x), true))));
    var var_0 = all(select(vec4<bool>(true, global3.x, global3.x & any(vec4<bool>(true, global3.x, false, global3.x)), true), select(select(select(vec4<bool>(global3.x, false, global3.x, global3.x), vec4<bool>(false, global3.x, true, false), global3.x), select(vec4<bool>(global3.x, true, false, global3.x), vec4<bool>(global3.x, global3.x, global3.x, true), global3.x), !vec4<bool>(true, false, global3.x, true)), select(select(vec4<bool>(false, false, true, true), vec4<bool>(global3.x, false, global3.x, true), vec4<bool>(false, false, global3.x, global3.x)), !vec4<bool>(global3.x, true, true, true), !vec4<bool>(false, false, global3.x, true)), !(!vec4<bool>(global3.x, global3.x, true, true))), vec4<bool>(any(select(vec3<bool>(true, false, global3.x), vec3<bool>(false, global3.x, global3.x), global3.x)), all(vec3<bool>(global3.x, false, true)), !any(vec4<bool>(global3.x, global3.x, global3.x, global3.x)), false)));
    let var_1 = global3.yx;
    var_0 = all(vec4<bool>(all(select(select(vec2<bool>(var_1.x, global3.x), global3.xy, global3.yz), vec2<bool>(false, true), !global3.zy)), select(all(select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, true, false, true), vec4<bool>(var_1.x, var_1.x, false, true))), false, true), select(!var_1.x, true, all(!vec2<bool>(var_1.x, var_1.x))), select(global3.x, true, any(global3.xy))));
    return vec3<bool>(true, any(vec2<bool>(all(select(vec4<bool>(var_1.x, true, false, false), vec4<bool>(false, true, global3.x, false), vec4<bool>(false, false, false, true))), global3.x & true)), true);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.a, (25646u >> (u_input.b % 32u)) << (abs(u_input.c.x) % 32u)), ~_wgslsmith_mod_vec2_u32(arg_1.b.a, ~vec2<u32>(u_input.c.x, u_input.a))), vec3<f32>(-711f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-259f, -238f))))), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_sub_u32(~firstTrailingBit(_wgslsmith_add_u32(0u, u_input.a)), 2383u), global3.x, 0u);
    global0 = -arg_1.c;
    let var_1 = Struct_2(Struct_1(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_0.c, u_input.c.x), var_0.a) ^ arg_1.b.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-656f)) + -1166f), arg_1.d, _wgslsmith_f_op_f32(-arg_1.b.b.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(63018u), 0u, 51534u), abs(select(vec3<u32>(var_0.e, var_0.e, 14373u), vec3<u32>(var_0.c, var_0.e, u_input.a), arg_1.b.d))), arg_0.x, ~0u), arg_1.a, abs(arg_1.c & (-2147483647i << (_wgslsmith_mult_u32(1u, arg_1.b.a.x) % 32u))), _wgslsmith_f_op_f32(-var_0.b.x));
    global0 = ~global2.x;
    global2 = vec2<i32>(1i, var_1.c);
    return vec2<i32>(-1i) * -vec2<i32>(global2.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(var_1.c, var_1.c, arg_1.c), ~vec3<i32>(-6717i, global2.x, arg_1.c)));
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    global0 = _wgslsmith_dot_vec4_i32(max(reverseBits(firstTrailingBit(vec4<i32>(global2.x, global2.x, 0i, global2.x))), _wgslsmith_mod_vec4_i32(vec4<i32>(-35319i, -12067i, global2.x, 1i), vec4<i32>(global2.x, -1i, 2147483647i, global2.x)) | (vec4<i32>(45313i, 1326i, global2.x, global2.x) ^ vec4<i32>(72375i, global2.x, -18103i, -709i))), vec4<i32>(global2.x >> (u_input.b % 32u), global2.x, ~global2.x, 17078i >> (0u % 32u)) << (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, 55359u, u_input.a, u_input.c.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.b, u_input.b), vec4<u32>(12446u, u_input.a, 32954u, 0u), vec4<u32>(u_input.a, 0u, 1u, 75509u))) % vec4<u32>(32u))) ^ (_wgslsmith_div_i32(firstLeadingBit(1i), min(global2.x >> (u_input.b % 32u), countOneBits(0i))) << (countOneBits(u_input.a) % 32u));
    global2 = func_4(select(select(!arg_0, !arg_0, all(func_2())), !global3.zx, arg_0.x), Struct_2(Struct_1(~u_input.c >> (vec2<u32>(13592u, u_input.a) % vec2<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(955f, -321f, 744f))), vec3<f32>(global1.x, -124f, -536f)), u_input.c.x | ~u_input.b, true, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(4688u, 8408u)), vec2<u32>(38339u, 0u))), Struct_1(~u_input.c, vec3<f32>(global1.x, global1.x, 477f), 1u & firstTrailingBit(u_input.a), arg_0.x, ~_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(0u, 4294967295u))), -_wgslsmith_clamp_i32(1i, global2.x, -global2.x), 1f));
    var var_0 = ~global2.x;
    return _wgslsmith_f_op_f32(trunc(-735f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.c, vec3<f32>(global1.x, 269f, _wgslsmith_f_op_f32(func_1(!(!global3.zx)))), u_input.b, any(!func_2()), max(~12977u, firstTrailingBit(~(~u_input.b))));
    var var_1 = 1u;
    var_1 = u_input.b;
    global2 = vec2<i32>(~20460i, ~abs(1i));
    var var_2 = min(vec2<i32>(2147483647i, global2.x) << (vec2<u32>(~var_0.c, min(0u, 4294967295u)) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(select(vec2<i32>(global2.x, global2.x), vec2<i32>(52237i, global2.x), false), ~vec2<i32>(global2.x, global2.x)), vec2<i32>(global2.x & global2.x, global2.x))) ^ ~vec2<i32>(global2.x, global2.x);
    let var_3 = Struct_2(Struct_1(vec2<u32>(abs(u_input.a), ~(~u_input.b)), var_0.b, max(31430u, u_input.a) | ~(var_0.e ^ 16640u), true, u_input.a), Struct_1(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.e, 0u, 4294967295u), vec3<u32>(u_input.a, 1u, var_0.a.x)), var_0.a.x), u_input.c.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-265f, global1.x, var_0.b.x))))), min(0u, 4294967295u), var_0.b.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * 186f) * _wgslsmith_f_op_f32(var_0.b.x + var_0.b.x)), 8371u), 15326i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(791f, global1.x))))), -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c >> (((~var_0.a.x ^ select(4249u, 18808u, global3.x)) ^ u_input.c.x) % 32u), max(_wgslsmith_mod_vec3_i32(~max(vec3<i32>(-2147483647i, 1i, var_3.c), vec3<i32>(-1i, -21097i, 1i)), select(vec3<i32>(-2147483647i, -3628i, global2.x), vec3<i32>(19123i, var_2.x, 16060i), vec3<bool>(true, global3.x, var_0.d)) & -vec3<i32>(var_2.x, var_2.x, var_2.x)), ~firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(25997i, -2147483647i, 68522i), vec3<i32>(var_3.c, var_2.x, 1i)))));
}

