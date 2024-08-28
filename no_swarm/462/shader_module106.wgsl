struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<u32>,
    b: Struct_4,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: vec4<bool>;

var<private> global2: array<vec3<f32>, 12>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-523f, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.a.c - global0[_wgslsmith_index_u32(u_input.c, 12u)]), _wgslsmith_f_op_f32(max(-1283f, arg_0.c.a.a.x))))), false)) - -822f);
    let var_1 = arg_0.b;
    let var_2 = ~(~abs(vec4<u32>(42599u << (u_input.c % 32u), 1u, ~0u, arg_1.b.x)));
    let var_3 = Struct_3(arg_0.b.a);
    global2 = array<vec3<f32>, 12>();
    return arg_1.b.x;
}

fn func_2(arg_0: u32) -> vec4<u32> {
    var var_0 = Struct_5(_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(arg_0, u_input.c), 46302u, arg_0, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(0u, 1u, 18409u)))), vec4<u32>(53569u << (arg_0 % 32u), arg_0, func_3(Struct_5(vec4<u32>(4294967295u, 0u, u_input.c, 1u), Struct_4(Struct_1(vec2<f32>(-1000f, global0[_wgslsmith_index_u32(0u, 12u)]), global1.x, global0[_wgslsmith_index_u32(8879u, 12u)], vec4<i32>(42672i, u_input.a.x, u_input.a.x, -15337i))), Struct_3(Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(1u, 12u)], 307f), false, global0[_wgslsmith_index_u32(u_input.b.x, 12u)], vec4<i32>(-2147483647i, 9864i, u_input.a.x, 51052i)))), Struct_2(vec4<i32>(u_input.a.x, -1i, -45651i, u_input.a.x), u_input.b), Struct_1(vec2<f32>(-356f, global0[_wgslsmith_index_u32(25381u, 12u)]), global1.x, global0[_wgslsmith_index_u32(4294967295u, 12u)], vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)), 53372i), ~4294967295u)), Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 12u)], global0[_wgslsmith_index_u32(54036u, 12u)])), true, _wgslsmith_f_op_f32(step(920f, _wgslsmith_f_op_f32(abs(-1138f)))), abs(select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -1i, -23343i, 0i), vec4<bool>(global1.x, true, true, global1.x))))), Struct_3(Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(abs(arg_0), 12u)], _wgslsmith_f_op_f32(step(248f, global0[_wgslsmith_index_u32(5892u, 12u)]))), !(u_input.b.x <= u_input.b.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(0u, 12u)])))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<i32>(0i, 0i, u_input.a.x, u_input.a.x), -vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -43016i)))));
    return ~vec4<u32>(var_0.a.x, ~var_0.a.x, _wgslsmith_div_u32(reverseBits(~0u), _wgslsmith_sub_u32(4294967295u, u_input.b.x ^ 39302u)), select(13501u, 0u, true));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> vec4<u32> {
    let var_0 = arg_0.d.xzy;
    var var_1 = select(vec4<bool>(true, arg_0.b, true, (-arg_0.d.x << (1u % 32u)) != _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, arg_0.d.x, 2147483647i), select(u_input.a, var_0, vec3<bool>(global1.x, false, global1.x)))), select(!vec4<bool>(true, arg_1 != true, false, all(vec2<bool>(false, global1.x))), vec4<bool>(any(select(global1.zxy, global1.xzw, true)), arg_1, !any(vec4<bool>(arg_1, global1.x, global1.x, global1.x)), -u_input.a.x > _wgslsmith_add_i32(u_input.a.x, -40319i)), !select(select(vec4<bool>(arg_0.b, false, arg_1, true), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, false), vec4<bool>(true, arg_0.b, true, true)), vec4<bool>(true, global1.x, arg_1, arg_1), true)), select(vec4<bool>(arg_1, true, any(global1.xyz), arg_0.b), select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.a.x <= var_0.x, !arg_0.b, all(global1.zyy), arg_0.d.x > var_0.x), all(!global1.xzz)), all(global1.wy)));
    global2 = array<vec3<f32>, 12>();
    global0 = array<f32, 12>();
    var var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(0i, _wgslsmith_add_i32(-7143i, -40806i), ~2147483647i, 0i), arg_0.d);
    return ~(~countOneBits(func_2(arg_2 >> (66855u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~u_input.c), 12u)]);
    var var_1 = ~_wgslsmith_dot_vec4_u32(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1220f, global0[_wgslsmith_index_u32(56155u, 12u)])), true, -248f, ~vec4<i32>(u_input.a.x, 56113i, u_input.a.x, u_input.a.x)), true, u_input.c >> (u_input.c % 32u)), vec4<u32>(_wgslsmith_add_u32(func_2(u_input.c).x, 0u), ~(u_input.b.x ^ 58406u), ~u_input.c, u_input.b.x));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.b.x), vec4<u32>(1u, u_input.c, u_input.b.x, u_input.c)), 12u)], _wgslsmith_f_op_f32(step(-221f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 12u)] - global0[_wgslsmith_index_u32(4294967295u, 12u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(12144u, 12u)])) + _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(4294967295u, 12u)]))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 12u)] + 153f)))))));
    var var_3 = var_2.x;
    let var_4 = Struct_5(select(vec4<u32>(u_input.b.x ^ ~u_input.b.x, ~1u, ~111634u, ~_wgslsmith_div_u32(u_input.b.x, u_input.c)), abs(reverseBits(~vec4<u32>(1u, u_input.b.x, 0u, u_input.c))), vec4<bool>(global1.x, true, true, all(vec4<bool>(global1.x, true, true, global1.x)))), Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-var_2.xz))), !(!global1.x), global0[_wgslsmith_index_u32(1u, 12u)], _wgslsmith_mod_vec4_i32(min(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i), vec4<i32>(-3180i, u_input.a.x, 1i, u_input.a.x)), vec4<i32>(5955i, -2147483647i, -83623i, u_input.a.x)))), Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1358f, 571f))), !(!global1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-629f, 1048f)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 12u)] - -152f))), _wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a.x, 17940i, u_input.a.x, u_input.a.x), -vec4<i32>(u_input.a.x, -1i, 4979i, u_input.a.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(8398u, vec3<u32>(0u, var_4.a.x, _wgslsmith_dot_vec3_u32(var_4.a.xyw ^ ~u_input.b, firstTrailingBit(var_4.a.xzx << (vec3<u32>(0u, 1u, 25417u) % vec3<u32>(32u))))), _wgslsmith_div_i32(abs(u_input.a.x), 6148i), -15717i, 23673u);
}

