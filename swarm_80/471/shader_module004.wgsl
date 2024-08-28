struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<bool>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5>;

var<private> global1: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(42172u, 4294967295u), vec2<u32>(47287u, 4294967295u), vec2<u32>(7378u, 4294967295u), vec2<u32>(4294967295u, 69279u), vec2<u32>(1u, 85787u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 3550u), vec2<u32>(38559u, 48697u), vec2<u32>(4294967295u, 26198u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(24957u, 4294967295u));

var<private> global2: array<vec2<f32>, 6>;

var<private> global3: array<vec3<i32>, 14>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<u32>, arg_3: Struct_3) -> bool {
    let var_0 = arg_1.x;
    global2 = array<vec2<f32>, 6>();
    var var_1 = vec2<i32>(-1i, _wgslsmith_div_i32(~arg_3.a.a.b, -2147483647i) ^ _wgslsmith_add_i32(13019i, arg_3.a.a.d.x));
    let var_2 = arg_0;
    let var_3 = arg_0;
    return arg_3.a.a.c.x;
}

fn func_2() -> Struct_1 {
    let var_0 = firstTrailingBit(vec3<u32>(~(~u_input.a.x << (u_input.a.x % 32u)), ~(~(~1u)), ~u_input.a.x ^ 14479u));
    var var_1 = vec3<bool>(func_3(Struct_1(_wgslsmith_add_vec3_i32(select(vec3<i32>(global0[_wgslsmith_index_u32(15534u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 36188i), u_input.c, vec3<bool>(true, false, false)), abs(vec3<i32>(37217i, u_input.b.x, global0[_wgslsmith_index_u32(var_0.x, 5u)]))), u_input.c.x, vec3<bool>(true, false, true), -_wgslsmith_add_vec4_i32(vec4<i32>(-1i, -11204i, 105417i, u_input.c.x), vec4<i32>(u_input.c.x, u_input.b.x, 2147483647i, 18057i))), vec4<f32>(-2158f, _wgslsmith_f_op_f32(f32(-1f) * -183f), -345f, _wgslsmith_f_op_f32(228f + _wgslsmith_f_op_f32(-903f - -1620f))), _wgslsmith_clamp_vec3_u32(var_0, _wgslsmith_div_vec3_u32(var_0, ~var_0), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 36443u), vec3<u32>(u_input.a.x, 0u, 7684u))), Struct_3(Struct_2(Struct_1(global3[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(var_0.x, 5u)], vec3<bool>(true, true, true), vec4<i32>(-10621i, global0[_wgslsmith_index_u32(var_0.x, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], -2147483647i)), 1u & var_0.x, var_0.x >> (0u % 32u), vec2<bool>(true, true)))), (~(-1i) == ~(global0[_wgslsmith_index_u32(21193u, 5u)] ^ -1i)) || all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), all(vec4<bool>(true, true & any(vec4<bool>(true, false, true, false)), false, any(vec4<bool>(true, true, true, true)))));
    var var_2 = vec4<bool>(all(vec3<bool>(var_1.x, func_3(Struct_1(global3[_wgslsmith_index_u32(var_0.x, 14u)], 0i, vec3<bool>(var_1.x, var_1.x, var_1.x), vec4<i32>(global0[_wgslsmith_index_u32(81834u, 5u)], u_input.c.x, u_input.b.x, u_input.b.x)), vec4<f32>(552f, 1227f, -1280f, 1000f), vec3<u32>(u_input.a.x, 0u, u_input.a.x), Struct_3(Struct_2(Struct_1(vec3<i32>(15078i, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 16845i), global0[_wgslsmith_index_u32(10472u, 5u)], vec3<bool>(var_1.x, var_1.x, var_1.x), vec4<i32>(-32458i, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], u_input.c.x, global0[_wgslsmith_index_u32(var_0.x, 5u)])), var_0.x, u_input.a.x, vec2<bool>(var_1.x, var_1.x)))), true)) & !(-51190i < u_input.b.x), any(!vec4<bool>(true, true, var_1.x, false)), !(~_wgslsmith_add_u32(u_input.a.x, var_0.x) != countOneBits(~26431u)), any(!select(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(false, true), false), select(var_1.zy, vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true)), var_1.yz)));
    var var_3 = vec3<bool>(((0u >= ~var_0.x) || var_1.x) && var_2.x, true, false);
    let var_4 = Struct_1(~min(vec3<i32>(u_input.b.x, global0[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)] & 2147483647i), vec3<i32>(-global0[_wgslsmith_index_u32(31462u, 5u)], 1i, select(20933i, -7152i, false))), abs(_wgslsmith_div_i32(-19419i, _wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_mult_i32(1i, u_input.c.x), _wgslsmith_sub_i32(2147483647i, u_input.c.x)))), select(!var_2.zyx, !var_2.yzy, true), vec4<i32>(~1i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.c.x << (4294967295u % 32u), u_input.c.x | global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), abs(_wgslsmith_add_i32(-44832i, global0[_wgslsmith_index_u32(var_0.x, 5u)])), u_input.c.x), u_input.b.x ^ firstTrailingBit(global0[_wgslsmith_index_u32(0u >> (1u % 32u), 5u)]), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(global0[_wgslsmith_index_u32(34709u, 5u)], global0[_wgslsmith_index_u32(22768u, 5u)], -39939i, u_input.b.x)), ~(vec4<i32>(u_input.b.x, 30335i, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], -54489i) & vec4<i32>(u_input.c.x, -1i, 1i, -1i)))));
    return Struct_1(global3[_wgslsmith_index_u32(u_input.a.x, 14u)], u_input.b.x, var_4.c, reverseBits(vec4<i32>(~select(2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], var_2.x), ~global0[_wgslsmith_index_u32(u_input.a.x, 5u)] | global0[_wgslsmith_index_u32(var_0.x, 5u)], ~14172i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 0i, u_input.b.x) >> (vec3<u32>(20557u, u_input.a.x, 192u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_4.b, 2147483647i, global0[_wgslsmith_index_u32(u_input.a.x, 5u)]), vec3<i32>(-10326i, global0[_wgslsmith_index_u32(1985u, 5u)], var_4.b))))));
}

fn func_1() -> Struct_1 {
    global1 = array<vec2<u32>, 11>();
    global3 = array<vec3<i32>, 14>();
    var var_0 = Struct_3(Struct_2(func_2(), _wgslsmith_clamp_u32(34776u, countOneBits(min(u_input.a.x, 108489u)), 1u), ~41812u, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(443f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-315f + -1000f)))));
    let var_2 = var_0.a.d;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_vec2_i32(select(u_input.c.xz, -(~_wgslsmith_mult_vec2_i32(u_input.c.zy, u_input.c.zz)), true), u_input.b);
    global0 = array<i32, 5>();
    let var_1 = Struct_2(func_1(), ~_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a), vec2<u32>(73002u, ~u_input.a.x)), _wgslsmith_clamp_u32(0u, 1u, min(u_input.a.x << (u_input.a.x % 32u), min(15752u, 1u)) | u_input.a.x), vec2<bool>(false, true));
    global0 = array<i32, 5>();
    global1 = array<vec2<u32>, 11>();
    global1 = array<vec2<u32>, 11>();
    var var_2 = Struct_3(var_1);
    let var_3 = false;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(firstTrailingBit(31461u), 6u)]))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-782f, -839f), global2[_wgslsmith_index_u32(u_input.a.x, 6u)], var_1.d)))))), _wgslsmith_add_i32(-max(_wgslsmith_dot_vec4_i32(var_2.a.a.d, var_2.a.a.d), var_1.a.d.x), countOneBits(~947i)), _wgslsmith_mult_u32(var_2.a.b & _wgslsmith_div_u32(abs(u_input.a.x), ~37568u), 24311u));
}

