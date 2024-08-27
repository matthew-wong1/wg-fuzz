struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: array<f32, 12> = array<f32, 12>(258f, -819f, 114f, 1736f, 1319f, -1044f, 584f, 238f, 375f, 118f, -239f, 377f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<i32> {
    var var_0 = !select(select(select(vec2<bool>(arg_2.d, true), vec2<bool>(false, false), arg_2.d), vec2<bool>(false | arg_2.d, true), select(vec2<bool>(true, arg_2.d), select(vec2<bool>(true, arg_2.d), vec2<bool>(arg_2.d, arg_2.d), vec2<bool>(arg_2.d, false)), arg_2.d)), vec2<bool>(true, !arg_2.d), !select(vec2<bool>(arg_2.d, false), vec2<bool>(arg_2.d, arg_2.d), !vec2<bool>(arg_2.d, arg_2.d)));
    var var_1 = 29659i;
    let var_2 = _wgslsmith_f_op_vec2_f32(arg_1 - _wgslsmith_f_op_vec2_f32(round(arg_1)));
    var var_3 = arg_2;
    global0 = array<Struct_1, 25>();
    return select(~u_input.b, -vec4<i32>(-9024i, arg_0.x, arg_0.x, -32073i), vec4<bool>(false, var_3.d | select(all(vec3<bool>(var_3.d, var_3.d, false)), arg_2.d, true), false, !var_0.x));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<i32>) -> Struct_1 {
    global1 = array<f32, 12>();
    var var_0 = Struct_1(~50999u, _wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(func_3(vec3<i32>(arg_2.x, 45754i, -36956i), _wgslsmith_f_op_vec2_f32(arg_1.zy + arg_1.zx), Struct_1(6692u, vec4<i32>(-2147483647i, 2147483647i, -25545i, -1i), arg_1.x, arg_0.d, vec2<i32>(u_input.d.x, 68941i))), _wgslsmith_sub_vec4_i32(arg_0.b, _wgslsmith_div_vec4_i32(vec4<i32>(68005i, -26841i, -2147483647i, 84375i), vec4<i32>(27113i, u_input.d.x, 44613i, 14474i)))), arg_2), -1857f, !arg_0.d, _wgslsmith_mod_vec2_i32(~vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(3481i, arg_0.e.x, u_input.b.x), vec3<i32>(arg_0.e.x, arg_2.x, -30037i)), u_input.b.x), arg_2.zy));
    var var_1 = ~(-(~u_input.b.x | 1i));
    var var_2 = vec2<bool>(any(!vec3<bool>(true, true, !var_0.d)), all(select(select(vec3<bool>(var_0.d, true, false), select(vec3<bool>(true, false, true), vec3<bool>(var_0.d, var_0.d, arg_0.d), arg_0.d), !vec3<bool>(arg_0.d, arg_0.d, true)), select(!vec3<bool>(var_0.d, true, false), select(vec3<bool>(var_0.d, arg_0.d, true), vec3<bool>(false, true, var_0.d), arg_0.d), vec3<bool>(true, var_0.d, arg_0.d)), !(!vec3<bool>(var_0.d, false, var_0.d)))));
    let var_3 = arg_0;
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_1(49369u, _wgslsmith_mod_vec4_i32(u_input.b, arg_0.b), 847f, _wgslsmith_sub_i32(arg_1.e.x, func_3(vec3<i32>(arg_1.e.x, -13779i, arg_0.b.x), vec2<f32>(-702f, arg_0.c), Struct_1(20806u, vec4<i32>(16246i, 4899i, u_input.d.x, u_input.b.x), 264f, true, arg_1.e)).x) != _wgslsmith_mod_i32(~_wgslsmith_clamp_i32(u_input.d.x, 6850i, arg_0.b.x), arg_0.e.x), select(arg_1.b.yy, vec2<i32>(-2147483647i & (arg_1.e.x ^ u_input.b.x), 20764i), select(!select(vec2<bool>(arg_0.d, true), vec2<bool>(arg_1.d, arg_0.d), vec2<bool>(arg_1.d, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), !arg_1.d), !vec2<bool>(true, arg_0.d))));
    global0 = array<Struct_1, 25>();
    let var_1 = global0[_wgslsmith_index_u32(var_0.a, 25u)];
    var var_2 = -110f;
    var_0 = Struct_1(arg_0.a, -countOneBits(~var_1.b), arg_1.c, all(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(var_1.d, var_1.d)))), -var_1.e);
    return var_1.e.x;
}

fn func_1() -> u32 {
    global1 = array<f32, 12>();
    var var_0 = func_4(global0[_wgslsmith_index_u32(~(~u_input.a), 25u)], func_2(global0[_wgslsmith_index_u32(~u_input.a, 25u)], _wgslsmith_div_vec3_f32(vec3<f32>(-565f, _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(95549u, 12u)], -521f)), global1[_wgslsmith_index_u32(~u_input.a, 12u)]), vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 12u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 12u)] * global1[_wgslsmith_index_u32(0u, 12u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 12u)]))), u_input.b << (min(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.c.x, u_input.a), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.a), vec4<u32>(u_input.c.x, u_input.c.x, 33872u, 1u)), vec4<u32>(65780u, u_input.c.x, 0u, 14683u)) % vec4<u32>(32u))));
    global0 = array<Struct_1, 25>();
    var_0 = -(~(~_wgslsmith_div_i32(func_2(global0[_wgslsmith_index_u32(u_input.c.x, 25u)], vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 12u)], global1[_wgslsmith_index_u32(0u, 12u)], global1[_wgslsmith_index_u32(60158u, 12u)]), vec4<i32>(-55736i, u_input.b.x, 1i, 1i)).b.x, ~(-6501i))));
    let var_1 = 0i;
    return _wgslsmith_mult_u32(abs(_wgslsmith_sub_u32(u_input.c.x, 4294967295u)), u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_div_u32(85209u, firstTrailingBit(u_input.c.x)), select(-(u_input.b ^ ~u_input.b), _wgslsmith_add_vec4_i32(~firstLeadingBit(vec4<i32>(-2147483647i, 2415i, u_input.d.x, u_input.d.x)), vec4<i32>(i32(-1i) * -6420i, _wgslsmith_mod_i32(21468i, 2147483647i), i32(-1i) * -1i, -1i)), vec4<bool>(0u < u_input.c.x, (u_input.c.x | 4294967295u) != func_1(), true, false)), 413f, all(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))) == !all(vec3<bool>(true, true, true)), u_input.b.ww << (abs(u_input.c.xz ^ (u_input.c.yz | vec2<u32>(4294967295u, 55682u))) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(702f)));
    var var_2 = func_2(Struct_1(~_wgslsmith_sub_u32(u_input.c.x, u_input.c.x | u_input.c.x), vec4<i32>(var_0.e.x, _wgslsmith_add_i32(u_input.d.x, u_input.b.x) ^ var_0.e.x, _wgslsmith_div_i32(i32(-1i) * -2147483647i, abs(u_input.b.x)), _wgslsmith_mod_i32(-u_input.d.x, u_input.b.x << (var_0.a % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1173f - _wgslsmith_f_op_f32(var_0.c * global1[_wgslsmith_index_u32(u_input.a, 12u)]))), var_0.d, ~max(vec2<i32>(var_0.e.x, var_0.e.x), var_0.e)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 12u)] + -1457f) * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 12u)] - 2176f)), 1879f))), u_input.b);
    var_1 = global1[_wgslsmith_index_u32(0u, 12u)];
    var var_3 = func_2(Struct_1(_wgslsmith_mult_u32(0u << ((u_input.a ^ var_0.a) % 32u), 1882u), abs(-var_0.b >> (vec4<u32>(var_2.a, var_2.a, 53378u, 8657u) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.a, 12u)]), var_0.c)), !(!(!var_2.d)), reverseBits(vec2<i32>(0i, u_input.b.x) & u_input.d) & (u_input.b.zw << (abs(u_input.c.yx) % vec2<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c, var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c * var_0.c)))), vec4<i32>(func_2(Struct_1(var_0.a, vec4<i32>(45570i, 1i, var_0.b.x, u_input.d.x), 1000f, true, u_input.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1474f, 1000f, var_2.c)), countOneBits(vec4<i32>(0i, 2147483647i, 0i, 1i))).e.x, ~u_input.b.x, var_0.e.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(-6474i, u_input.d.x, var_0.e.x), u_input.b.zzx)) & _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, -u_input.d.x, 2147483647i, _wgslsmith_mult_i32(1i, -40876i))));
    var var_4 = countOneBits(~vec3<u32>(abs(var_3.a), var_2.a & abs(4294967295u), 25857u));
    var var_5 = ~_wgslsmith_div_i32(_wgslsmith_mult_i32(0i, var_3.b.x), var_0.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(57156u, vec2<i32>(2147483647i, var_0.b.x) | var_2.b.zz);
}

