struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<i32, 4> = array<i32, 4>(28763i, -1954i, 0i, -13743i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: u32, arg_3: vec2<u32>) -> u32 {
    global0 = _wgslsmith_div_u32(arg_2, ~(~(~arg_3.x)));
    global0 = u_input.d.x;
    var var_0 = arg_0;
    global0 = 52855u & _wgslsmith_mult_u32(arg_3.x, ~arg_3.x);
    global1 = array<i32, 4>();
    return ~(~arg_2);
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(416f, 124f)))))))), vec4<bool>(any(vec2<bool>(true, true)), true, all(vec2<bool>(u_input.d.x == u_input.d.x, true)), all(vec4<bool>(false, true, true, false)) | false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-280f, 1000f, -145f, 257f))))))), true, vec3<bool>(true, true, true));
    var var_1 = countOneBits(vec3<i32>(reverseBits(-abs(1i)), -u_input.b, -global1[_wgslsmith_index_u32(u_input.d.x, 4u)]));
    let var_2 = select(vec3<i32>(var_1.x, 1498i, select(1i, ~u_input.a, true)), abs(select(_wgslsmith_mod_vec3_i32(vec3<i32>(30618i, 27864i, 2147483647i), vec3<i32>(u_input.c, global1[_wgslsmith_index_u32(49038u, 4u)], -2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.x, var_1.x, -2147483647i), vec3<i32>(2147483647i, var_1.x, global1[_wgslsmith_index_u32(48775u, 4u)])), true)), any(select(select(var_0.b.wy, var_0.b.xy, vec2<bool>(var_0.d, var_0.d)), select(var_0.e.xy, var_0.e.zy, false), var_0.e.yy))) | abs(-vec3<i32>(~16778i, u_input.c << (0u % 32u), abs(9966i)));
    return countOneBits(~(~(~vec4<i32>(var_1.x, 4692i, 1i, 1i))));
}

fn func_2() -> bool {
    var var_0 = Struct_3(_wgslsmith_mult_vec4_i32(max(vec4<i32>(global1[_wgslsmith_index_u32(u_input.d.x, 4u)], u_input.b, u_input.c, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 2465i, -51336i, global1[_wgslsmith_index_u32(u_input.d.x, 4u)]), vec4<i32>(-1i, global1[_wgslsmith_index_u32(u_input.d.x, 4u)], global1[_wgslsmith_index_u32(u_input.d.x, 4u)], -35205i))), func_3()) & ((vec4<i32>(-1i, u_input.a, -2147483647i, 30900i) << (vec4<u32>(u_input.d.x, u_input.d.x, 5936u, 4294967295u) % vec4<u32>(32u))) << (~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 0u, 4294967295u), u_input.d) % vec4<u32>(32u))), 20819i, -1i, !vec4<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true))), true, all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), true && any(vec3<bool>(true, false, false))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-645f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(813f, 1342f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-443f, _wgslsmith_f_op_f32(abs(-2260f)))))));
    global1 = array<i32, 4>();
    let var_1 = Struct_1(vec2<bool>(any(select(select(vec4<bool>(false, var_0.d.x, var_0.d.x, false), vec4<bool>(var_0.d.x, false, var_0.d.x, var_0.d.x), vec4<bool>(false, var_0.d.x, var_0.d.x, true)), vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x), select(true, true, var_0.d.x))), true), !select(any(vec3<bool>(true, var_0.d.x, true)), !any(var_0.d), var_0.d.x != var_0.d.x), 1i);
    var var_2 = Struct_2(var_0.e);
    let var_3 = all(var_0.d.xz);
    return (!(!var_3) | false) && any(var_0.d.xzw);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: Struct_3) -> StorageBuffer {
    global0 = 0u;
    global0 = _wgslsmith_add_u32(_wgslsmith_mod_u32(1u, arg_1.x), _wgslsmith_add_u32(arg_1.x, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.d.x, 1u), firstTrailingBit(0u), _wgslsmith_dot_vec3_u32(arg_1, arg_1)), ~_wgslsmith_add_u32(9730u, 7043u), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 27159u, 4294967295u), ~vec3<u32>(4294967295u, 1u, u_input.d.x)))));
    var var_0 = vec3<i32>(u_input.b, _wgslsmith_mult_i32(func_3().x, 3043i), -5541i);
    var_0 = arg_2.a.xwz ^ (vec3<i32>(-1i, firstTrailingBit(u_input.b), ~2147483647i) | vec3<i32>(21178i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, global1[_wgslsmith_index_u32(101899u, 4u)], arg_2.c, u_input.b) << (u_input.d % vec4<u32>(32u)), abs(vec4<i32>(arg_2.a.x, global1[_wgslsmith_index_u32(12075u, 4u)], -2147483647i, var_0.x))), abs(~u_input.c)));
    let var_1 = _wgslsmith_f_op_f32(-arg_2.e.x);
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1)) + _wgslsmith_f_op_f32(floor(arg_2.e.x))))), arg_2.a, abs(arg_1), i32(-1i) * -var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 33288u;
    let var_0 = firstTrailingBit(vec3<u32>(u_input.d.x, ~_wgslsmith_sub_u32(func_1(vec2<i32>(global1[_wgslsmith_index_u32(43912u, 4u)], -1i), Struct_2(vec2<f32>(-1715f, 822f)), u_input.d.x, vec2<u32>(u_input.d.x, 45363u)), 33374u), abs(u_input.d.x)));
    global1 = array<i32, 4>();
    let x = u_input.a;
    s_output = func_4(select(!vec4<bool>(false, func_2(), false, true), vec4<bool>(true, u_input.d.x != _wgslsmith_div_u32(var_0.x, var_0.x), any(vec2<bool>(true, true)), -u_input.a >= global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, u_input.d.x), 4u)]), true), u_input.d.zxx, Struct_3(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(16056i, global1[_wgslsmith_index_u32(1u, 4u)], u_input.c, -18925i), vec4<i32>(-2147483647i, u_input.c, -15848i, global1[_wgslsmith_index_u32(u_input.d.x, 4u)])), ~vec4<i32>(u_input.a, 2147483647i, -2147483647i, u_input.b)), ~(~vec4<i32>(30833i, -29795i, u_input.b, 40458i))), 38639i, u_input.b, vec4<bool>(all(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, true, true, true)), !any(vec2<bool>(true, false)), (-2147483647i > global1[_wgslsmith_index_u32(40806u, 4u)]) && any(vec3<bool>(false, false, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-473f, _wgslsmith_f_op_f32(trunc(427f))))));
}

