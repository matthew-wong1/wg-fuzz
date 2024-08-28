struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(878f, -666f);

var<private> global1: array<vec2<bool>, 14>;

var<private> global2: vec3<i32> = vec3<i32>(19642i, 1i, 2147483647i);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec4<u32>) -> f32 {
    global2 = -vec3<i32>(-36591i, 26153i | ((arg_1.c & -13789i) >> (1u % 32u)), _wgslsmith_div_i32(-2147483647i, ~select(2147483647i, u_input.a, true)));
    var var_0 = -871f;
    let var_1 = any(!select(!(!global1[_wgslsmith_index_u32(arg_2.x, 14u)]), select(vec2<bool>(false, true), vec2<bool>(true, true), u_input.c >= 10779u), vec2<bool>(any(vec4<bool>(false, true, true, false)), all(vec4<bool>(true, true, false, false)))));
    let var_2 = global2.x;
    global0 = _wgslsmith_f_op_vec2_f32(-arg_1.b.zx);
    return -134f;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0;
    let var_1 = Struct_1(-759f, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-arg_0.b))), _wgslsmith_add_i32(u_input.b, global2.x));
    var var_2 = vec4<f32>(-1684f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.yy)), var_1, min(vec4<u32>(56134u, u_input.c, 0u, 1u) ^ vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c), ~vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)))) * _wgslsmith_f_op_f32(f32(-1f) * -729f)), _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-420f, arg_0.b.x))))), _wgslsmith_f_op_f32(-global0.x));
    var_0 = var_1;
    let var_3 = all(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, true, all(vec3<bool>(true, true, true)))));
    return Struct_1(-974f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, 503f, _wgslsmith_f_op_f32(abs(arg_0.b.x)))) - var_2.zyz), _wgslsmith_dot_vec4_i32(abs(-vec4<i32>(var_1.c, global2.x, 2147483647i, -57926i)), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(32130i, global2.x, arg_0.c, 37667i)), _wgslsmith_div_vec4_i32(vec4<i32>(-36840i, 26877i, -2147483647i, var_1.c), vec4<i32>(var_1.c, global2.x, 35254i, arg_0.c))) | ~abs(vec4<i32>(global2.x, 2147483647i, var_1.c, -2147483647i))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.b.x, -440f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -536f));
    let var_0 = select(!(!vec4<bool>(any(vec4<bool>(true, arg_1, arg_1, arg_1)), !arg_1, arg_1, all(global1[_wgslsmith_index_u32(u_input.c, 14u)]))), vec4<bool>(all(!vec4<bool>(false, arg_1, arg_1, true)), !arg_1 & (_wgslsmith_f_op_f32(-global0.x) > _wgslsmith_f_op_f32(f32(-1f) * -1866f)), true, true), !vec4<bool>(arg_1, true, false, arg_1));
    global2 = _wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(-2147483647i, select(-7862i, u_input.a, arg_1), 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(-40076i, 47308i, arg_0.c), abs(vec3<i32>(2147483647i, 0i, 0i))), !(true || var_0.x)), -abs(-vec3<i32>(global2.x, -2147483647i, arg_0.c)), vec3<i32>(2147483647i, func_2(arg_2).c, ~global2.x)), abs(min(vec3<i32>(arg_0.c, func_2(arg_0).c, 0i), vec3<i32>(_wgslsmith_clamp_i32(1i, arg_2.c, 39057i), 13816i, _wgslsmith_mult_i32(arg_2.c, -1i)))));
    global2 = min(~(~vec3<i32>(u_input.b, _wgslsmith_add_i32(-1i, -19330i), abs(-12983i))), _wgslsmith_mult_vec3_i32(min(vec3<i32>(u_input.a, func_2(Struct_1(arg_2.a, arg_0.b, -21146i)).c, _wgslsmith_div_i32(arg_0.c, arg_2.c)), select(vec3<i32>(1i, 55010i, -1i), vec3<i32>(5219i, 2147483647i, 2147483647i), false) >> (~vec3<u32>(u_input.c, u_input.c, 0u) % vec3<u32>(32u))), -_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.c, arg_2.c, 12652i) ^ vec3<i32>(38409i, -1i, arg_2.c), vec3<i32>(arg_2.c, u_input.b, arg_2.c) ^ vec3<i32>(global2.x, 2147483647i, u_input.a))));
    let var_1 = vec4<u32>(~u_input.c, u_input.c, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.c, u_input.c, 0u << (u_input.c % 32u), _wgslsmith_sub_u32(4294967295u, u_input.c)), vec4<u32>(u_input.c, u_input.c, 1u, _wgslsmith_div_u32(u_input.c, u_input.c))), firstLeadingBit(min(~vec4<u32>(0u, u_input.c, u_input.c, 55415u), firstLeadingBit(vec4<u32>(112753u, 1210u, 0u, 4294967295u))))), u_input.c);
    return func_2(func_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1003f - global0.x) * -418f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(334f, arg_0.b.x, 292f)))), -arg_2.c)));
}

fn func_1() -> u32 {
    let var_0 = func_4(Struct_1(global0.x, vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(601f, 449f)), -777f), 25827i), all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true)), func_2(Struct_1(-842f, vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(131f - global0.x), global0.x), global2.x)));
    global1 = array<vec2<bool>, 14>();
    var var_1 = true;
    var var_2 = func_2(Struct_1(-261f, vec3<f32>(var_0.a, _wgslsmith_f_op_f32(-515f + _wgslsmith_f_op_f32(select(2346f, global0.x, false))), global0.x), func_2(Struct_1(global0.x, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1401f, -1294f, 1164f))), 31341i)).c)).b.x;
    var_2 = global0.x;
    return ~(~u_input.c) << ((~_wgslsmith_sub_u32(max(24244u, u_input.c), ~4294967295u) & countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, u_input.c), vec2<u32>(u_input.c, u_input.c)), vec2<u32>(u_input.c, u_input.c)))) % 32u);
}

fn func_5(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-191f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(217f, global0.x, 387f), vec3<f32>(global0.x, global0.x, global0.x), vec3<bool>(false, false, false))) + vec3<f32>(-879f, global0.x, _wgslsmith_div_f32(682f, -1000f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-881f, arg_2.x, -954f), vec3<f32>(arg_2.x, global0.x, -2120f))), vec3<f32>(1633f, -1006f, 667f))))), -2147483647i);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)) - _wgslsmith_f_op_f32(522f * _wgslsmith_f_op_f32(func_3(vec2<f32>(523f, 1002f), Struct_1(var_0.a, var_0.b, -2147483647i), vec4<u32>(u_input.c, u_input.c, u_input.c, 2002u)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) + _wgslsmith_f_op_vec3_f32(var_0.b * var_0.b)), -_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, -42659i, var_0.c, -153i), vec4<i32>(-47661i, 1i, -22540i, 53518i)) ^ _wgslsmith_sub_i32(global2.x, 0i), ~var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_div_u32(u_input.c, u_input.c));
    var var_1 = func_5(vec4<u32>(~func_1(), var_0, _wgslsmith_add_u32(var_0, 19997u), var_0), global2.x, _wgslsmith_f_op_vec2_f32(func_2(func_4(Struct_1(global0.x, vec3<f32>(2347f, global0.x, -1550f), global2.x), true, func_4(Struct_1(-925f, vec3<f32>(382f, global0.x, 2476f), 0i), true, Struct_1(699f, vec3<f32>(1634f, -2061f, global0.x), 31896i)))).b.xy * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global0.x) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.x, 960f)))))));
    var var_2 = vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(370f - _wgslsmith_div_f32(1000f, global0.x))) <= func_4(func_5(~vec4<u32>(var_0, 53912u, var_0, u_input.c), func_2(Struct_1(var_1.b.x, var_1.b, var_1.c)).c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-491f, var_1.b.x) * vec2<f32>(global0.x, global0.x))), all(vec2<bool>(true, false)), func_5(vec4<u32>(4133u, u_input.c, 0u, var_0), ~7104i, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 261f), var_1.b.xy, false)))).a);
    let var_3 = func_5(~vec4<u32>(~(var_0 | var_0), min(var_0 ^ var_0, func_1()), max(~var_0, 1u), abs(firstTrailingBit(11784u))), _wgslsmith_sub_i32(54215i, i32(-1i) * -u_input.a) & -_wgslsmith_dot_vec2_i32(select(global2.zy, global2.zz, var_2.x), vec2<i32>(-1i, 6012i)), _wgslsmith_f_op_vec2_f32(round(var_1.b.yy)));
    let var_4 = Struct_1(1300f, vec3<f32>(1198f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-720f)), -1279f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1345f * func_5(vec4<u32>(var_0, 0u, 4294967295u, 26502u), -2147483647i, var_3.b.zy).b.x)))), global2.x);
    global0 = func_2(Struct_1(_wgslsmith_f_op_f32(min(func_4(func_4(Struct_1(var_3.b.x, vec3<f32>(1000f, global0.x, var_3.a), 1i), true, var_4), any(global1[_wgslsmith_index_u32(var_0, 14u)]), var_3).b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.b.x) + -275f))), var_4.b, 31552i)).b.yz;
    let x = u_input.a;
    s_output = StorageBuffer(var_0, -(~countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_1.c, 48975i, 17974i), vec4<i32>(-1i, global2.x, 18592i, 1i)))));
}

