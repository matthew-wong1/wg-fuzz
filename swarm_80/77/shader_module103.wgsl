struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
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

var<private> global0: array<bool, 30>;

var<private> global1: array<vec4<bool>, 2> = array<vec4<bool>, 2>(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = ~vec4<i32>(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-2147483647i, 1i, -2147483647i, -14520i)), _wgslsmith_mod_vec4_i32(arg_0.c, arg_0.c)), _wgslsmith_sub_i32(_wgslsmith_div_i32(-14886i, arg_1), -2147483647i), u_input.a.x, 1i) | -_wgslsmith_sub_vec4_i32(~(u_input.a & arg_0.c), u_input.a);
    return abs(23963i);
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: vec3<i32>) -> vec2<bool> {
    var var_0 = 0u;
    let var_1 = !(!(!vec3<bool>(u_input.c == u_input.c, !arg_2.x, all(vec4<bool>(false, arg_2.x, arg_0, arg_0)))));
    let var_2 = false && all(select(arg_2.zx, select(var_1.zz, vec2<bool>(false, arg_0), true), !arg_2.x && false));
    let var_3 = Struct_1(vec3<u32>(~1u, u_input.c, _wgslsmith_mult_u32(23262u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, 47691u), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, u_input.c, 1u), vec3<u32>(0u, 60382u, 63560u))))), !vec4<bool>(10350i < u_input.b.x, any(vec3<bool>(false, true, arg_2.x)), !(!global0[_wgslsmith_index_u32(u_input.c, 30u)]), false), arg_1, global1[_wgslsmith_index_u32(~(~(1u << (1u % 32u))), 2u)], vec2<i32>(arg_3.x >> (~1u % 32u), abs(1i)));
    global1 = array<vec4<bool>, 2>();
    return !(!select(var_3.d.zx, var_3.b.wy, var_3.b.wy));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: i32) -> bool {
    return any(arg_0) || false;
}

fn func_4(arg_0: bool, arg_1: f32) -> Struct_1 {
    global1 = array<vec4<bool>, 2>();
    let var_0 = min(vec4<i32>(2147483647i, ~min(min(-1i, -65640i), _wgslsmith_add_i32(u_input.a.x, 65879i)), i32(-1i) * -2147483647i, -(2258i >> (u_input.c % 32u)) << (u_input.c % 32u)), -u_input.a);
    var var_1 = vec4<f32>(1558f, arg_1, 1013f, _wgslsmith_f_op_f32(-524f + 1549f));
    let var_2 = Struct_1(vec3<u32>(u_input.c, u_input.c, abs(73892u)), !select(!global1[_wgslsmith_index_u32(~4294967295u, 2u)], !vec4<bool>(true, true, global0[_wgslsmith_index_u32(6304u, 30u)], true), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(48107u, 1u, 63766u, u_input.c), vec4<u32>(u_input.c, 113671u, u_input.c, 108877u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(25664u, 44148u))), 2u)]), vec4<i32>(min(_wgslsmith_add_i32(u_input.a.x, 36030i), reverseBits(var_0.x)) | var_0.x, u_input.b.x, ~0i, _wgslsmith_dot_vec3_i32(select(-var_0.zww, abs(vec3<i32>(var_0.x, 1i, var_0.x)), vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c, 30u)])), u_input.b)), vec4<bool>(true, true, _wgslsmith_f_op_f32(f32(-1f) * -471f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-237f))), all(vec2<bool>(false, !arg_0))), ~var_0.wy);
    var_1 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1317f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1)))), var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1798f))));
    return Struct_1(vec3<u32>(u_input.c, _wgslsmith_add_u32(30847u, ~4294967295u), min(u_input.c, max(var_2.a.x, u_input.c))), !select(vec4<bool>(true, false, all(vec3<bool>(var_2.b.x, true, var_2.b.x)), !global0[_wgslsmith_index_u32(1u, 30u)]), select(var_2.b, select(var_2.d, vec4<bool>(true, false, false, false), global0[_wgslsmith_index_u32(u_input.c, 30u)]), u_input.b.x <= -8048i), select(!global1[_wgslsmith_index_u32(1u, 2u)], vec4<bool>(var_2.b.x, false, true, true), arg_0)), abs(vec4<i32>(~_wgslsmith_mult_i32(u_input.a.x, 0i), abs(var_2.e.x), 1i, abs(-1i))), vec4<bool>(!global0[_wgslsmith_index_u32(countOneBits(u_input.c), 30u)] | arg_0, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.a.x, u_input.c), vec2<u32>(68509u, 0u) >> (vec2<u32>(var_2.a.x, 13533u) % vec2<u32>(32u))), 30u)], any(!vec4<bool>(true, var_2.b.x, var_2.b.x, true)), all(!vec3<bool>(true, arg_0, true))), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(-11693i, var_0.x), vec2<i32>(var_2.e.x, var_0.x)) | u_input.a.yw) >> (vec2<u32>(_wgslsmith_add_u32(var_2.a.x, 1u), 4294967295u) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 38148u;
    global0 = array<bool, 30>();
    var var_1 = -(_wgslsmith_div_i32(0i, abs(func_1(Struct_1(vec3<u32>(var_0, 80122u, 4294967295u), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(var_0, 30u)], global0[_wgslsmith_index_u32(1u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)]), vec4<i32>(46113i, u_input.a.x, u_input.a.x, -32900i), vec4<bool>(true, true, false, true), u_input.b.yz), u_input.a.x))) | min(u_input.a.x, i32(-1i) * -u_input.b.x));
    let var_2 = func_4(func_3(select(func_2(global0[_wgslsmith_index_u32(0u, 30u)], _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(-1i, -41344i, -7537i, u_input.a.x)), vec3<bool>(true, global0[_wgslsmith_index_u32(22117u, 30u)], global0[_wgslsmith_index_u32(var_0, 30u)]), vec3<i32>(6086i, u_input.b.x, u_input.b.x)), !select(vec2<bool>(false, true), vec2<bool>(true, false), false), !(u_input.a.x <= u_input.b.x)), _wgslsmith_div_vec2_u32((vec2<u32>(48561u, 92034u) >> (vec2<u32>(206u, var_0) % vec2<u32>(32u))) | select(vec2<u32>(1u, var_0), vec2<u32>(u_input.c, 714u), true), _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, var_0), vec2<u32>(var_0, var_0), vec2<u32>(var_0, var_0)), vec2<u32>(1u, var_0) & vec2<u32>(u_input.c, 1u))), -26536i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -296f)))))));
    var var_3 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1244f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(207f - -1315f)) * -242f))));
    let var_4 = var_3.x;
    global1 = array<vec4<bool>, 2>();
    let var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-58691i);
}

