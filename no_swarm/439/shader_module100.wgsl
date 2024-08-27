struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12>;

var<private> global1: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global2: array<bool, 9>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-809f + 1398f))), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), -1308f));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), var_0.x, var_0.x) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(862f, arg_0.x, -980f), vec3<f32>(-682f, 1000f, 585f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -847f, arg_0.x))))))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, var_0.x, var_0.x))));
    var var_2 = true == !global2[_wgslsmith_index_u32(43537u, 9u)];
    let var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(~1037i, 0i, _wgslsmith_mult_i32(_wgslsmith_sub_i32(~(-25304i), 1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(6743i, 1i, -27839i), vec3<i32>(0i, -9385i, 1i) << (vec3<u32>(0u, 0u, u_input.a) % vec3<u32>(32u))))), ~_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, 0i), vec3<i32>(-62107i, 2147483647i, 1i)), _wgslsmith_mult_i32(25389i, -1787i), 1i), max(vec3<i32>(1i, 1i, 1i), reverseBits(vec3<i32>(27805i, 0i, -1i)))));
    var var_4 = ~(~(-380i));
    return 43734i;
}

fn func_2() -> vec4<u32> {
    global0 = array<vec4<i32>, 12>();
    let var_0 = ~(~vec2<i32>(-1i, 1i));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-358f + -664f) + -1000f)), u_input.a, -vec4<i32>(min(firstLeadingBit(var_0.x), var_0.x), select(_wgslsmith_add_i32(var_0.x, var_0.x), ~0i, var_0.x == var_0.x), ~_wgslsmith_add_i32(var_0.x, var_0.x), var_0.x), vec4<i32>(abs(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(342f, -905f)))), var_0.x, _wgslsmith_sub_i32(~firstTrailingBit(1i), 38257i), 0i));
    var var_2 = firstLeadingBit(_wgslsmith_mod_u32(5205u, u_input.a));
    global1 = vec4<bool>((all(select(global1.yxx, global1.yyz, global1.ywx)) | (all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 9u)], global2[_wgslsmith_index_u32(u_input.a, 9u)])) || select(true, false, false))) && (-var_1.d.x >= ~1i), true, !all(select(!global1.xzx, !vec3<bool>(true, false, global2[_wgslsmith_index_u32(var_1.b, 9u)]), true)), (var_1.b < 4294967295u) && global1.x);
    return vec4<u32>(countOneBits(4294967295u), 7220u, var_1.b, u_input.a);
}

fn func_1(arg_0: u32, arg_1: vec4<u32>) -> StorageBuffer {
    let var_0 = -1i;
    let var_1 = vec4<u32>(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, 13025u, arg_0, u_input.a)), ~arg_1), abs(33807u), arg_1.x, countOneBits(u_input.a)) | func_2();
    global2 = array<bool, 9>();
    global1 = vec4<bool>(global2[_wgslsmith_index_u32(~u_input.a, 9u)], !(arg_0 <= select(~u_input.a, min(u_input.a, 11525u), true)), true, true);
    var var_2 = _wgslsmith_sub_i32(countOneBits(var_0), -min(36452i, _wgslsmith_mod_i32(-2147483647i, 27671i))) >= 0i;
    return StorageBuffer(-2147483647i, reverseBits(var_0), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~min(0i, var_0), var_0, _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_0, 13687i), ~var_0)), ~var_0, _wgslsmith_add_i32((var_0 >> (u_input.a % 32u)) & -1i, 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 9>();
    var var_0 = _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(631f * 411f)) - _wgslsmith_f_op_f32(-534f + -1607f)))));
    let var_1 = !any(select(!(!vec4<bool>(global2[_wgslsmith_index_u32(41313u, 9u)], global2[_wgslsmith_index_u32(20415u, 9u)], false, false)), select(select(vec4<bool>(true, true, global1.x, global2[_wgslsmith_index_u32(15051u, 9u)]), vec4<bool>(global1.x, global2[_wgslsmith_index_u32(u_input.a, 9u)], true, false), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, global1.x), global2[_wgslsmith_index_u32(u_input.a, 9u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(4294967295u, 9u)], true)), ~u_input.a <= u_input.a));
    var var_2 = global0[_wgslsmith_index_u32(1u, 12u)];
    var var_3 = 259f;
    let x = u_input.a;
    s_output = func_1(u_input.a, _wgslsmith_add_vec4_u32(max(select(vec4<u32>(u_input.a, 4294967295u, u_input.a, 38004u), vec4<u32>(0u, 10260u, u_input.a, u_input.a), vec4<bool>(var_1, global2[_wgslsmith_index_u32(u_input.a, 9u)], false, true)), firstLeadingBit(vec4<u32>(1u, 115128u, 0u, u_input.a))), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(72178u, 12734u, 42874u, 4294967295u), vec4<u32>(u_input.a, 47073u, u_input.a, 17649u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 3531u, u_input.a, 1u), vec4<u32>(u_input.a, 0u, u_input.a, 1u)))) >> ((abs(select(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), global2[_wgslsmith_index_u32(u_input.a, 9u)])) >> (abs(vec4<u32>(30877u, 52560u, 4386u, 42701u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

