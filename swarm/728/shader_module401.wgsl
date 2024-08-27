struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: vec2<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 5>;

var<private> global1: array<vec2<f32>, 30> = array<vec2<f32>, 30>(vec2<f32>(-1091f, 196f), vec2<f32>(252f, 594f), vec2<f32>(575f, -1659f), vec2<f32>(-721f, 279f), vec2<f32>(-229f, 1000f), vec2<f32>(358f, 137f), vec2<f32>(261f, 243f), vec2<f32>(291f, 743f), vec2<f32>(632f, -1103f), vec2<f32>(635f, 208f), vec2<f32>(-1336f, 184f), vec2<f32>(935f, 1000f), vec2<f32>(660f, -1721f), vec2<f32>(-1351f, -1009f), vec2<f32>(784f, 330f), vec2<f32>(-1068f, -754f), vec2<f32>(-659f, -493f), vec2<f32>(-207f, -766f), vec2<f32>(-980f, -832f), vec2<f32>(-1039f, 885f), vec2<f32>(-1000f, 1226f), vec2<f32>(-2109f, 178f), vec2<f32>(1000f, 619f), vec2<f32>(1673f, 590f), vec2<f32>(-617f, -296f), vec2<f32>(1590f, 110f), vec2<f32>(1000f, 779f), vec2<f32>(-1878f, 443f), vec2<f32>(-418f, 1046f), vec2<f32>(1225f, 1000f));

var<private> global2: array<u32, 23>;

var<private> global3: array<vec3<bool>, 12>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: i32, arg_3: Struct_4) -> i32 {
    global3 = array<vec3<bool>, 12>();
    let var_0 = arg_3;
    let var_1 = Struct_3(false, 2147483647i);
    var var_2 = ~_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(select(min(vec4<u32>(73163u, 41945u, 52627u, arg_0.b.c.x), vec4<u32>(arg_1.c, u_input.a.x, 0u, 0u)), ~vec4<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.a.x, 45657u, 4294967295u), arg_0.c), select(~vec4<u32>(arg_0.b.c.x, arg_0.b.c.x, global2[_wgslsmith_index_u32(9771u, 23u)], 52308u), vec4<u32>(arg_1.c, arg_0.b.c.x, 43105u, 3414u) & vec4<u32>(1u, arg_1.c, 11183u, arg_0.b.c.x), any(var_0.a.xz))), ~_wgslsmith_mult_vec4_u32(min(vec4<u32>(u_input.a.x, 0u, global2[_wgslsmith_index_u32(0u, 23u)], 0u), vec4<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], 23u)], 21247u, global2[_wgslsmith_index_u32(21884u, 23u)])), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 23u)], global2[_wgslsmith_index_u32(arg_1.e.c.x, 23u)], 0u, 73404u)));
    var_2 = ~(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(24067u, 52406u, var_2.x), _wgslsmith_dot_vec3_u32(var_2.yxz, var_2.xyz)), firstTrailingBit(~70210u), 1u, 97736u) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.c.x, 1u), vec2<u32>(4294967295u, arg_1.c)), 98743u ^ u_input.a.x, 22416u), ~(~vec4<u32>(39168u, global2[_wgslsmith_index_u32(32170u, 23u)], 56257u, 36866u))));
    return -16254i;
}

fn func_2(arg_0: vec4<i32>) -> Struct_5 {
    var var_0 = Struct_4(!(!vec3<bool>(true, any(global3[_wgslsmith_index_u32(u_input.a.x, 12u)]), true)));
    global0 = array<Struct_4, 5>();
    let var_1 = 484f;
    let var_2 = var_0.a.x;
    let var_3 = -1423f;
    return Struct_5(-_wgslsmith_add_i32(0i >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(0u, 1u)), 23u)], 23u)] % 32u), -u_input.b.x >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], 23u)] % 32u)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2115f)), vec3<i32>(arg_0.x, -(i32(-1i) * -13806i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -1i, -3638i), ~arg_0.zzx)), u_input.a), !vec4<bool>(all(!var_0.a), true, all(vec3<bool>(false, var_0.a.x, false)), !select(var_0.a.x, true, false)), vec4<i32>(~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-1i, arg_0.x)), -1129i), u_input.b.x, countOneBits(-firstLeadingBit(5788i)), -func_3(Struct_5(-15795i, Struct_1(1530f, vec3<i32>(0i, -48927i, -5845i), vec3<u32>(global2[_wgslsmith_index_u32(36026u, 23u)], u_input.a.x, u_input.a.x)), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x), arg_0), Struct_2(Struct_1(var_3, arg_0.wxx, vec3<u32>(u_input.a.x, 4294967295u, global2[_wgslsmith_index_u32(u_input.a.x, 23u)])), arg_0.x, 1u, vec2<f32>(var_1, var_1), Struct_1(-2987f, vec3<i32>(-1i, 4284i, u_input.b.x), vec3<u32>(global2[_wgslsmith_index_u32(29883u, 23u)], global2[_wgslsmith_index_u32(39445u, 23u)], 120864u))), 0i, global0[_wgslsmith_index_u32(4294967295u, 5u)])));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_4) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-(vec4<i32>(u_input.c, -18914i, u_input.c, 2147483647i) << (vec4<u32>(1u, u_input.a.x, global2[_wgslsmith_index_u32(52897u, 23u)], 4294967295u) % vec4<u32>(32u))), -(arg_0 ^ vec4<i32>(u_input.b.x, 1i, -26366i, -2147483647i))), -_wgslsmith_mult_vec4_i32(arg_0, reverseBits(arg_0))));
    let var_1 = 1u;
    global1 = array<vec2<f32>, 30>();
    global1 = array<vec2<f32>, 30>();
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.a * var_0.b.a)), var_0.b.b, vec3<u32>(~(38910u >> (global2[_wgslsmith_index_u32(var_1, 23u)] % 32u)), ~firstTrailingBit(29662u), global2[_wgslsmith_index_u32(max(global2[_wgslsmith_index_u32(23877u, 23u)], u_input.a.x), 23u)] | _wgslsmith_mult_u32(15084u, u_input.a.x))), u_input.b.x, ~var_1, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.a, var_0.b.a) * vec2<f32>(-830f, 128f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(4294967295u, 30u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1221f, -739f)))), any(!var_0.c.zy))), global1[_wgslsmith_index_u32(u_input.a.x, 30u)], var_0.c.x)), Struct_1(var_0.b.a, ~func_2(vec4<i32>(41196i, u_input.b.x, -17254i, -2147483647i)).b.b ^ ~_wgslsmith_add_vec3_i32(var_0.b.b, vec3<i32>(arg_0.x, var_0.d.x, u_input.c)), ~(var_0.b.c | min(u_input.a, vec3<u32>(2966u, 4294967295u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec2_i32(-_wgslsmith_mult_vec2_i32(u_input.b, u_input.b) | vec2<i32>(-u_input.c, _wgslsmith_mod_i32(u_input.c, u_input.b.x)), -(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 13462i), u_input.b) | _wgslsmith_clamp_vec2_i32(u_input.b, u_input.b, vec2<i32>(2277i, u_input.b.x))));
    let var_1 = func_1(vec4<i32>(u_input.b.x, -35005i, var_0.x, i32(-1i) * -_wgslsmith_mult_i32(var_0.x, var_0.x)), global0[_wgslsmith_index_u32(1u, 5u)]);
    var var_2 = _wgslsmith_add_vec2_i32(var_1.e.b.xz, var_0);
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.a, 416f, func_1(vec4<i32>(-1i, 1i, -6037i, -2147483647i), global0[_wgslsmith_index_u32(abs(var_1.a.c.x), 5u)]).d.x, var_1.e.a)) * vec4<f32>(_wgslsmith_f_op_f32(round(var_1.e.a)), -877f, var_1.e.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1863f * -508f) + -450f))));
    var var_4 = _wgslsmith_div_i32(~35978i, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.x))), -1000f, -523f), var_3)), max(~_wgslsmith_div_u32(var_1.a.c.x & 0u, 22972u), countOneBits(select(4294967295u | global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.c, 23u)], 23u)], var_1.e.c.x >> (0u % 32u), true))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(var_3.ywx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-810f, 565f, var_3.x)))), !global3[_wgslsmith_index_u32(u_input.a.x, 12u)])))), 0i);
}

