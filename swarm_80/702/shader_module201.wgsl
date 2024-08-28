struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(1i, 27872i, -20549i, 0i);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> i32 {
    let var_0 = arg_1.a;
    let var_1 = Struct_1(!any(vec4<bool>(arg_0.a, arg_0.d < arg_0.d, true, arg_0.a)), arg_0.b, -_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -26947i) & vec2<i32>(2147483647i, 2147483647i), abs(u_input.a.zy)), vec2<i32>(0i, 0i)), arg_1.d, arg_2);
    var var_2 = -36092i;
    let var_3 = Struct_1(arg_1.a, reverseBits(~(~countOneBits(vec4<u32>(arg_2.x, arg_1.e.x, 73856u, 0u)))), abs(u_input.a.zz), arg_1.d, vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(34417u, arg_2.x, 4294967295u), vec3<u32>(arg_0.e.x, 4294967295u, 1u)) & 23502u, _wgslsmith_clamp_u32(arg_2.x, arg_0.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 0u), vec2<u32>(var_1.e.x, 0u))), ~(~(~arg_0.e.x))));
    global0 = array<i32, 4>();
    return arg_0.c.x;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> bool {
    global0 = array<i32, 4>();
    var var_0 = vec3<i32>(4048i, (i32(-1i) * -7095i) & ~max(1i | global0[_wgslsmith_index_u32(arg_0, 4u)], 0i), firstLeadingBit(func_3(arg_1, Struct_1(true, arg_1.b, select(vec2<i32>(global0[_wgslsmith_index_u32(0u, 4u)], arg_1.c.x), u_input.a.wy, vec2<bool>(arg_2, true)), _wgslsmith_f_op_f32(-334f - 1710f), vec3<u32>(arg_1.e.x, 57311u, 4294967295u)), ~vec3<u32>(4294967295u, arg_0, arg_0))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.d, -1000f))) - -345f), 611f));
    var_0 = u_input.a.yyz;
    let var_2 = vec4<i32>(func_3(Struct_1(!any(vec3<bool>(arg_1.a, false, false)), countOneBits(~vec4<u32>(arg_1.e.x, arg_1.e.x, 16004u, 1u)), vec2<i32>(-4894i, -2147483647i | arg_1.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(-var_1)), vec3<u32>(arg_1.e.x >> (arg_1.b.x % 32u), ~4294967295u, ~arg_0)), arg_1, countOneBits(arg_1.e)), -(u_input.a.x << (_wgslsmith_mult_u32(max(1u, arg_0), _wgslsmith_dot_vec2_u32(vec2<u32>(46441u, arg_1.b.x), arg_1.e.yz)) % 32u)), 70765i, ~(~_wgslsmith_div_i32(func_3(arg_1, Struct_1(arg_2, vec4<u32>(arg_0, 1u, 0u, arg_1.b.x), var_0.xx, arg_1.d, vec3<u32>(arg_1.b.x, 4294967295u, 1u)), vec3<u32>(14451u, arg_1.b.x, arg_0)), 23477i)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(627f)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1053f))))) <= 2615f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = any(!(!select(select(vec3<bool>(false, arg_0.a, false), vec3<bool>(arg_0.a, arg_1.a, false), arg_0.a), vec3<bool>(false, false, arg_0.a), !vec3<bool>(false, arg_0.a, arg_3.a))));
    var var_1 = arg_1;
    var_1 = arg_1;
    var var_2 = Struct_1(all(select(select(vec2<bool>(true, true), !vec2<bool>(arg_1.a, arg_1.a), global0[_wgslsmith_index_u32(arg_2.x, 4u)] < arg_1.c.x), !(!vec2<bool>(var_1.a, var_1.a)), all(vec2<bool>(arg_3.a, arg_1.a)))), countOneBits(arg_3.b), u_input.a.wx, _wgslsmith_f_op_f32(721f - _wgslsmith_f_op_f32(f32(-1f) * -123f)), ~var_1.e);
    var var_3 = 2052i;
    return arg_3;
}

fn func_1() -> u32 {
    let var_0 = func_4(Struct_1(true, ~vec4<u32>(73011u, 26028u, 1u, _wgslsmith_div_u32(0u, 1u)), select(select(_wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(10726u, 4u)], 1i), vec2<i32>(u_input.a.x, global0[_wgslsmith_index_u32(1u, 4u)])), _wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(17803u, 4u)], 1i), u_input.a.xw), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), vec2<i32>(-1i, -1i), false), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -934f))), reverseBits(vec3<u32>(~1u, ~1u, 1u))), Struct_1(all(vec2<bool>(all(vec2<bool>(false, true)), true)), vec4<u32>(1u, abs(_wgslsmith_mult_u32(5091u, 65756u)), ~(~0u), 12525u), vec2<i32>(_wgslsmith_clamp_i32(-global0[_wgslsmith_index_u32(14506u, 4u)], u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(1u, 4u)], 0i), vec2<i32>(-2147483647i, -67763i))), -global0[_wgslsmith_index_u32(~1u, 4u)]), -616f, select(~(~vec3<u32>(4294967295u, 1u, 74702u)), countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 80657u), vec3<u32>(0u, 0u, 48262u))), !func_2(4294967295u, Struct_1(false, vec4<u32>(13067u, 0u, 37064u, 25394u), u_input.a.xw, -753f, vec3<u32>(1u, 4294967295u, 4294967295u)), false))), _wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(40087u, 20111u), 1u, 63183u, countOneBits(firstTrailingBit(4842u))), abs(firstTrailingBit(~vec4<u32>(1u, 15094u, 81006u, 22477u)))), Struct_1(all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), true))), min(vec4<u32>(1u, 1u, 1u, 1u), max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, 4294967295u, 4294967295u, 1u))), abs(countOneBits(-u_input.a.ww)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-214f)), _wgslsmith_f_op_f32(f32(-1f) * -1635f)))), vec3<u32>(1u, 1u, 1u)));
    let var_1 = ~(~max(vec4<u32>(19601u, 20975u, var_0.e.x, var_0.e.x) ^ select(vec4<u32>(4294967295u, 1085u, 6344u, var_0.b.x), vec4<u32>(51290u, 1u, 4294967295u, 1u), vec4<bool>(false, var_0.a, var_0.a, false)), var_0.b));
    global0 = array<i32, 4>();
    global0 = array<i32, 4>();
    var var_2 = -_wgslsmith_sub_vec3_i32(abs(vec3<i32>(-9307i, 1i, u_input.a.x)) & (-vec3<i32>(-1i, -22016i, global0[_wgslsmith_index_u32(1u, 4u)]) >> (vec3<u32>(18773u, 4294967295u, var_1.x) % vec3<u32>(32u))), _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(select(u_input.a.xyx, u_input.a.xyx, var_0.a), u_input.a.wwy), reverseBits(-u_input.a.xzx)));
    return 4742u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 4>();
    let var_0 = _wgslsmith_div_u32(20256u, func_1());
    var var_1 = vec4<i32>(-u_input.a.x, _wgslsmith_mult_i32(-global0[_wgslsmith_index_u32(~1u, 4u)] << (~(~59480u) % 32u), -countOneBits(u_input.a.x)), -reverseBits(-39894i), -(~(~u_input.a.x)));
    var var_2 = Struct_1(true, vec4<u32>(var_0, ~var_0 ^ ~_wgslsmith_mod_u32(83714u, 1u), var_0, var_0), vec2<i32>(72571i, 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1198f, -1000f, !all(vec4<bool>(true, false, false, true)))) * 868f), ~_wgslsmith_mult_vec3_u32(vec3<u32>(~26285u, var_0, ~var_0), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0, 1u, 50770u), vec3<u32>(0u, var_0, var_0)), vec3<u32>(var_0, var_0, 21751u))));
    var_2 = func_4(func_4(Struct_1(true, func_4(func_4(Struct_1(true, vec4<u32>(57676u, 4294967295u, var_2.e.x, var_0), var_2.c, 1798f, var_2.e), Struct_1(true, var_2.b, var_1.zx, var_2.d, var_2.b.yzw), vec4<u32>(var_2.b.x, var_2.b.x, var_0, var_2.e.x), Struct_1(false, vec4<u32>(1u, var_0, var_2.e.x, 22690u), u_input.a.zx, var_2.d, var_2.b.zxy)), Struct_1(var_2.a, var_2.b, var_1.xw, -796f, var_2.e), vec4<u32>(var_2.b.x, var_2.e.x, 41258u, 18820u) << (var_2.b % vec4<u32>(32u)), Struct_1(false, var_2.b, var_1.yy, 474f, var_2.e)).b, reverseBits(~vec2<i32>(-2147483647i, -2147483647i)), _wgslsmith_f_op_f32(-var_2.d), (var_2.b.ywy >> (var_2.e % vec3<u32>(32u))) << (vec3<u32>(28921u, var_0, 0u) % vec3<u32>(32u))), func_4(func_4(func_4(Struct_1(true, vec4<u32>(4129u, var_0, var_2.e.x, 1u), var_1.zy, -549f, vec3<u32>(var_2.b.x, 0u, 4294967295u)), Struct_1(false, var_2.b, vec2<i32>(var_1.x, var_1.x), var_2.d, var_2.e), var_2.b, Struct_1(true, var_2.b, vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(18018u, 4u)]), var_2.d, vec3<u32>(var_0, var_0, 0u))), func_4(Struct_1(true, var_2.b, u_input.a.wx, -306f, var_2.e), Struct_1(var_2.a, var_2.b, var_2.c, var_2.d, var_2.e), vec4<u32>(var_2.e.x, var_0, var_2.e.x, 38489u), Struct_1(var_2.a, var_2.b, var_1.yw, var_2.d, var_2.b.yzw)), var_2.b, Struct_1(false, var_2.b, vec2<i32>(2147483647i, u_input.a.x), var_2.d, vec3<u32>(var_2.e.x, 0u, var_0))), Struct_1(true || var_2.a, abs(vec4<u32>(var_0, 0u, var_2.b.x, var_0)), _wgslsmith_clamp_vec2_i32(u_input.a.wz, vec2<i32>(var_1.x, 0i), u_input.a.yy), _wgslsmith_f_op_f32(var_2.d - var_2.d), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0, var_0, 97540u), vec3<u32>(0u, 1u, 42933u))), min(vec4<u32>(0u, 77250u, 1u, 0u), reverseBits(var_2.b)), func_4(Struct_1(var_2.a, var_2.b, u_input.a.zy, var_2.d, vec3<u32>(var_2.b.x, var_0, 50348u)), Struct_1(var_2.a, var_2.b, var_1.zw, 361f, vec3<u32>(4294967295u, 4294967295u, 0u)), ~vec4<u32>(13434u, 0u, 1u, var_2.e.x), Struct_1(false, vec4<u32>(4294967295u, var_2.b.x, 22815u, 71190u), var_2.c, 173f, vec3<u32>(var_0, var_2.b.x, var_2.e.x)))), var_2.b & _wgslsmith_mod_vec4_u32(func_4(Struct_1(var_2.a, vec4<u32>(var_0, var_0, 19312u, 11135u), var_2.c, var_2.d, vec3<u32>(var_0, 4294967295u, var_0)), Struct_1(var_2.a, vec4<u32>(5476u, var_0, 40121u, 0u), var_2.c, var_2.d, var_2.b.zwy), var_2.b, Struct_1(false, vec4<u32>(42900u, var_0, var_0, 0u), vec2<i32>(global0[_wgslsmith_index_u32(var_2.b.x, 4u)], u_input.a.x), 1352f, vec3<u32>(var_2.b.x, var_2.e.x, 4294967295u))).b, ~vec4<u32>(16895u, 1u, 22389u, 36661u)), Struct_1(var_2.a, (vec4<u32>(var_2.e.x, 0u, 1u, var_0) << (var_2.b % vec4<u32>(32u))) & (vec4<u32>(0u, 30039u, 47030u, var_2.b.x) & vec4<u32>(32101u, var_2.e.x, 49599u, 55807u)), _wgslsmith_div_vec2_i32(vec2<i32>(var_1.x, 0i) ^ var_2.c, var_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -190f)), vec3<u32>(~11826u, var_0, var_2.b.x))), Struct_1(!(_wgslsmith_add_u32(var_2.b.x, var_2.b.x) == ~var_0), ~(min(var_2.b, var_2.b) ^ _wgslsmith_add_vec4_u32(vec4<u32>(1u, var_2.e.x, 1u, var_0), vec4<u32>(93621u, var_2.e.x, 17217u, var_2.b.x))), vec2<i32>(u_input.a.x, u_input.a.x), -379f, vec3<u32>(reverseBits(_wgslsmith_div_u32(49433u, 33135u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, var_0), vec2<u32>(0u, 0u)), var_2.e.x), var_0)), vec4<u32>(0u | ~_wgslsmith_clamp_u32(var_0, 36842u, 72903u), var_0, 0u, 93378u), Struct_1(true, var_2.b, _wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -44966i, 1i), u_input.a.xw), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-338f + _wgslsmith_f_op_f32(sign(-162f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.d))), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.b.x, 1u, var_2.b.x), ~vec3<u32>(75131u, var_0, var_0)), ~var_0, ~0u | _wgslsmith_mod_u32(4294967295u, var_2.e.x))));
    global0 = array<i32, 4>();
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(countOneBits(~(~var_2.b.xzz)), ~countOneBits(var_2.b.zxw)), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(-61549i, countOneBits(vec2<u32>(20216u, ~_wgslsmith_clamp_u32(var_3, 39363u, 48761u))), vec4<f32>(_wgslsmith_f_op_f32(var_2.d + 2179f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.d, 321f)) * var_2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-143f, 395f, var_2.a)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.d) + _wgslsmith_f_op_f32(max(461f, 1329f))))), -1973f));
}

