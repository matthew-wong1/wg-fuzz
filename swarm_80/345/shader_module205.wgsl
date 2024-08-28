struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_3, 16>;

var<private> global3: vec2<u32>;

var<private> global4: array<vec3<f32>, 14>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>) -> bool {
    var var_0 = Struct_2(global1.d, vec2<i32>(-(~u_input.c.x), global1.a << (u_input.d % 32u)), Struct_1(79825i, global1.b, 1u, 1f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.e)))), Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(max(u_input.c.x, global1.a), global1.a), select(-vec2<i32>(u_input.c.x, 0i), abs(vec2<i32>(15080i, arg_0.a)), vec2<bool>(global1.b, false))), global1.b, global3.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -518f), _wgslsmith_f_op_f32(-global1.d))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.e - _wgslsmith_div_vec4_f32(global1.e, vec4<f32>(-2085f, global1.e.x, global1.d, -180f))))));
    global0 = _wgslsmith_mult_vec3_u32(max(arg_1, abs(firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(45869u, global3.x, global1.c), vec3<u32>(global0.x, 25554u, 0u))))), ~countOneBits(vec3<u32>(global0.x, ~1u, 46147u)));
    var var_1 = var_0.d;
    let var_2 = Struct_2(1060f, vec2<i32>(26188i | (~(-4163i) >> ((arg_1.x >> (u_input.a % 32u)) % 32u)), -43597i), var_0.d, Struct_1(-arg_0.a, var_1.b, global1.c, -1000f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, -689f, -192f, var_1.e.x) - var_1.e)))));
    var var_3 = Struct_3(-19332i);
    return false;
}

fn func_2(arg_0: f32, arg_1: vec4<bool>) -> vec3<u32> {
    global3 = vec2<u32>(48575u, ~global0.x);
    let var_0 = Struct_1(min(_wgslsmith_div_i32(max(_wgslsmith_mult_i32(global1.a, 43390i), u_input.c.x), max(max(-30781i, 2147483647i), 6533i)), max(_wgslsmith_dot_vec2_i32(u_input.c.wz >> (u_input.b % vec2<u32>(32u)), select(vec2<i32>(-2147483647i, u_input.c.x), u_input.c.wy, global1.b)), global1.a)), global1.b, ~(0u >> (~(71314u ^ global1.c) % 32u)), 393f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global1.e, _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d, -797f, -1463f, 1640f) * global1.e)))), _wgslsmith_f_op_vec4_f32(-global1.e)));
    global0 = min(firstTrailingBit(~vec3<u32>(var_0.c, global0.x, 13397u)), vec3<u32>((global0.x << (86309u % 32u)) & _wgslsmith_clamp_u32(56555u, 4294967295u, 36872u), ~1u, u_input.a)) >> (((~vec3<u32>(72850u, global1.c, global0.x) & vec3<u32>(u_input.a, ~36180u, 111557u)) & (vec3<u32>(0u, global0.x, 102071u) >> (((vec3<u32>(1u, global1.c, 4294967295u) & vec3<u32>(6067u, 20750u, var_0.c)) >> (countOneBits(vec3<u32>(var_0.c, 46743u, global1.c)) % vec3<u32>(32u))) % vec3<u32>(32u)))) % vec3<u32>(32u));
    let var_1 = Struct_1(-1i, var_0.b && func_3(global2[_wgslsmith_index_u32(4294967295u, 16u)], vec3<u32>(~0u, ~1u, _wgslsmith_sub_u32(global1.c, 0u))), (~(43331u << (var_0.c % 32u)) >> ((_wgslsmith_sub_u32(u_input.b.x, 4294967295u) & _wgslsmith_mod_u32(global0.x, 21498u)) % 32u)) >> (24190u % 32u), _wgslsmith_f_op_f32(-var_0.d), var_0.e);
    var var_2 = Struct_2(-905f, reverseBits(vec2<i32>(0i, 2147483647i)), var_1, Struct_1(~(~global1.a), !var_0.b, _wgslsmith_dot_vec4_u32(vec4<u32>(67466u, 739u, 1u, u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(5188u, var_0.c, u_input.a, 1u), vec4<u32>(4294967295u, 0u, 0u, 28402u))) << (abs(global1.c) % 32u), -1000f, var_1.e));
    return vec3<u32>(abs(~var_1.c), 4294967295u, ~_wgslsmith_div_u32(~(~1u), 17894u));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> u32 {
    global0 = reverseBits(~func_2(-630f, select(!vec4<bool>(global1.b, arg_1.b, arg_1.b, true), !vec4<bool>(false, true, true, global1.b), !vec4<bool>(arg_1.b, false, arg_1.b, arg_1.b))));
    global3 = global0.zy;
    global3 = select(global0.yy ^ ~global0.yx, reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(0u >> (arg_1.c % 32u), 0u), ~_wgslsmith_mult_vec2_u32(global0.zx, vec2<u32>(28774u, global3.x)))), any(vec3<bool>(all(vec4<bool>(true, arg_1.b, false, global1.b)) && (global1.a < 0i), _wgslsmith_f_op_f32(global1.e.x * global1.e.x) < -1229f, true)));
    let var_0 = select(countOneBits(vec4<u32>(global1.c, func_2(1389f, select(vec4<bool>(true, global1.b, true, arg_1.b), vec4<bool>(arg_1.b, arg_1.b, true, arg_1.b), false)).x, 4294967295u, ~firstTrailingBit(1u))), countOneBits(_wgslsmith_mult_vec4_u32(~(~vec4<u32>(global3.x, global1.c, 1u, 1u)), ~(~vec4<u32>(global1.c, arg_1.c, 4294967295u, u_input.a)))), _wgslsmith_dot_vec3_i32(vec3<i32>(10142i, u_input.c.x, -30833i) | (vec3<i32>(-2147483647i, -40425i, 1i) >> (vec3<u32>(39387u, global3.x, u_input.a) % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_i32(u_input.c.zzy, vec3<i32>(u_input.c.x, arg_1.a, -1i))) != global1.a);
    let var_1 = u_input.c.zzy;
    return min(36717u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_3, 16>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-global1.e);
    global0 = min(_wgslsmith_mult_vec3_u32(vec3<u32>(43681u, global0.x, firstTrailingBit(0u)) & abs(~vec3<u32>(global3.x, 4294967295u, u_input.d)), _wgslsmith_div_vec3_u32(vec3<u32>(func_1(Struct_3(global1.a), Struct_1(u_input.c.x, false, global3.x, global1.d, vec4<f32>(-1867f, var_0.x, 359f, global1.d))), abs(65131u), global3.x), ~max(vec3<u32>(global3.x, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, u_input.a)))), reverseBits(vec3<u32>(u_input.d, 18380u, 1u)));
    global2 = array<Struct_3, 16>();
    let var_1 = global3.x;
    var var_2 = vec2<u32>(~_wgslsmith_mod_u32(max(global1.c, 62192u), global3.x), 11897u) & _wgslsmith_mod_vec2_u32(max(vec2<u32>(global1.c, global1.c), firstTrailingBit(abs(vec2<u32>(global0.x, global1.c)))), countOneBits(vec2<u32>(abs(0u), global0.x | u_input.d)));
    var var_3 = vec3<bool>(global1.b, global1.b, true | global1.b);
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~global0.yy, firstTrailingBit(vec2<u32>(select(1u, 0u, global1.b) & _wgslsmith_add_u32(4294967295u, u_input.b.x), 1u))), 16u)];
    var var_5 = Struct_1(~var_4.a >> (global0.x % 32u), global1.b, 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-310f * global1.e.x)))), global1.e);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.xyx, -724f, (i32(-1i) * -1i) ^ _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(-14078i, var_4.a, -39537i), _wgslsmith_add_vec3_i32(u_input.c.wxx, u_input.c.xxz)), u_input.c.xzz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global1.e.x))));
}

