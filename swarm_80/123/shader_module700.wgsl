struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(156f)), Struct_2(Struct_1(-403f)), Struct_2(Struct_1(-407f)), Struct_2(Struct_1(184f)), Struct_2(Struct_1(-135f)), Struct_2(Struct_1(-1372f)), Struct_2(Struct_1(505f)), Struct_2(Struct_1(2121f)), Struct_2(Struct_1(-1908f)), Struct_2(Struct_1(1513f)), Struct_2(Struct_1(-2229f)), Struct_2(Struct_1(-1770f)), Struct_2(Struct_1(1506f)), Struct_2(Struct_1(-1156f)));

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(-350f)), Struct_2(Struct_1(-1000f)), Struct_2(Struct_1(1047f)), Struct_2(Struct_1(-1443f)), Struct_2(Struct_1(661f)), Struct_2(Struct_1(-789f)), Struct_2(Struct_1(-770f)), Struct_2(Struct_1(436f)), Struct_2(Struct_1(-372f)), Struct_2(Struct_1(-604f)), Struct_2(Struct_1(-468f)), Struct_2(Struct_1(-782f)), Struct_2(Struct_1(-702f)), Struct_2(Struct_1(194f)), Struct_2(Struct_1(-833f)), Struct_2(Struct_1(-203f)), Struct_2(Struct_1(470f)), Struct_2(Struct_1(-152f)), Struct_2(Struct_1(-368f)));

var<private> global3: array<Struct_3, 23>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> f32 {
    global1 = array<Struct_2, 14>();
    let var_0 = ~(reverseBits(-u_input.a) & -1i) != 1227i;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1758f)), 685f, -1457f);
    var var_2 = ~(select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, u_input.b, u_input.d.x), countOneBits(vec3<u32>(62366u, 1u, 1u))), vec3<u32>(4294967295u, u_input.d.x, u_input.b), !select(vec3<bool>(true, var_0, var_0), vec3<bool>(false, true, false), vec3<bool>(var_0, var_0, false))) << ((vec3<u32>(_wgslsmith_div_u32(u_input.b, 15609u), ~u_input.d.x, u_input.b) ^ ~vec3<u32>(u_input.b, u_input.d.x, u_input.d.x)) % vec3<u32>(32u)));
    let var_3 = -687f;
    return 274f;
}

fn func_2() -> vec2<f32> {
    global1 = array<Struct_2, 14>();
    global3 = array<Struct_3, 23>();
    var var_0 = Struct_4(1u, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, global0.a)))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.a, global0.a))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1032f, global0.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, global0.a) * vec2<f32>(-749f, global0.a))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.a, global0.a))) + vec2<f32>(1f, 1f))))), Struct_1(global0.a), vec3<u32>(14974u, 67349u, _wgslsmith_sub_u32(firstLeadingBit(u_input.b), 50563u) & ~u_input.d.x), Struct_1(_wgslsmith_f_op_f32(global0.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))));
    var var_1 = ~(vec4<u32>(select(_wgslsmith_dot_vec2_u32(u_input.d, u_input.d), u_input.d.x, true), 1u, ~(78588u & u_input.b), 37663u) & select(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.d.x, var_0.d.x, u_input.b, 11296u), ~vec4<u32>(19481u, u_input.b, 123108u, 4294967295u), ~vec4<u32>(u_input.b, var_0.d.x, var_0.a, 5296u)), _wgslsmith_sub_vec4_u32(vec4<u32>(11092u, 0u, u_input.d.x, var_0.a), vec4<u32>(u_input.b, var_0.d.x, 73415u, 114865u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_0.d.x, u_input.d.x, 18733u), vec4<u32>(139236u, u_input.b, var_0.a, var_0.a)), vec4<bool>(true, true, true, true)));
    var var_2 = global3[_wgslsmith_index_u32(var_1.x, 23u)];
    return var_0.b;
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-arg_3), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - _wgslsmith_f_op_f32(-652f - 1737f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f) - _wgslsmith_f_op_f32(f32(-1f) * -395f))), 1141f, _wgslsmith_div_f32(arg_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1296f)))), select(select(!vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(true, false, arg_1 && true, !arg_1), true), select(!vec4<bool>(arg_1, false, true, arg_1), !select(vec4<bool>(true, true, arg_1, false), vec4<bool>(true, true, arg_1, arg_1), vec4<bool>(arg_1, false, false, arg_1)), true), vec4<bool>(select(!arg_1, any(vec3<bool>(arg_1, false, false)), true), false || (47827u >= u_input.d.x), arg_1, false))));
    var var_1 = arg_2;
    var var_2 = reverseBits(~25772u);
    var var_3 = arg_2;
    var var_4 = !select(select(vec2<bool>(arg_1, select(true, arg_1, false)), vec2<bool>(true, u_input.c <= 16097i), firstTrailingBit(0u) == countOneBits(15455u)), vec2<bool>(all(!vec3<bool>(false, true, arg_1)), all(select(vec2<bool>(arg_1, true), vec2<bool>(false, arg_1), vec2<bool>(false, false)))), arg_1);
    return _wgslsmith_sub_vec4_u32(~(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(30579u, u_input.b, u_input.b, u_input.b), vec4<u32>(1u, u_input.b, u_input.b, u_input.d.x), vec4<u32>(1u, 4294967295u, u_input.d.x, 1u))) & firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.d.x, 30901u, u_input.d.x, 63281u), vec4<u32>(u_input.d.x, 0u, u_input.d.x, u_input.d.x)))), _wgslsmith_mult_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d.x, u_input.b, u_input.b, u_input.b), _wgslsmith_clamp_vec4_u32(vec4<u32>(19436u, u_input.b, 4294967295u, u_input.b), vec4<u32>(4294967295u, u_input.d.x, u_input.b, 67302u), vec4<u32>(u_input.d.x, u_input.d.x, u_input.b, u_input.b))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b, u_input.d.x, 17365u), ~vec4<u32>(1u, u_input.b, 1u, u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(637f);
    let var_1 = Struct_4(_wgslsmith_dot_vec3_u32(min(_wgslsmith_div_vec3_u32(max(vec3<u32>(79u, 0u, 65164u), vec3<u32>(u_input.b, u_input.b, u_input.d.x)), _wgslsmith_div_vec3_u32(vec3<u32>(25860u, 41196u, u_input.d.x), vec3<u32>(u_input.b, u_input.d.x, 11809u))), _wgslsmith_div_vec3_u32(~vec3<u32>(27366u, 17892u, u_input.d.x), ~vec3<u32>(u_input.d.x, 18074u, u_input.b))), firstLeadingBit(~(~vec3<u32>(25274u, u_input.b, 37507u)))), vec2<f32>(-2007f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(Struct_3(891f), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d.x, 0u), 23u)], global0.a, Struct_2(Struct_1(1464f)))), _wgslsmith_f_op_f32(f32(-1f) * -964f))), Struct_1(-1534f), vec3<u32>(u_input.d.x, ~(~u_input.d.x ^ 53030u), u_input.b), Struct_1(var_0.a));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * var_1.b.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -682f))))));
    let var_3 = 1000f;
    var_0 = global3[_wgslsmith_index_u32(max(~countOneBits(_wgslsmith_mod_u32(~var_1.a, 1u)), ~(~abs(~u_input.b))), 23u)];
    let var_4 = vec2<bool>(true, any(vec3<bool>(true, true, true)));
    let var_5 = Struct_4(var_1.d.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3), var_2.a)), _wgslsmith_f_op_vec2_f32(func_2()))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2()).x)), ~abs(select(~vec3<u32>(u_input.d.x, var_1.a, 0u), vec3<u32>(var_1.a, 40513u, 0u), vec3<bool>(var_4.x, false, var_4.x))), var_1.c);
    var var_6 = _wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.a, 0i, min(1i, -6797i)), -vec4<i32>(_wgslsmith_div_i32(u_input.c, -21292i), _wgslsmith_add_i32(28519i, u_input.a), u_input.a, -1i)) << ((~vec4<u32>(u_input.d.x, 4294967295u, 1u, ~74803u) << (func_3(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 21367i, 1i), ~vec3<i32>(u_input.a, u_input.a, 0i)), var_4.x, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -927f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1136f, -690f, -1000f, var_1.c.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-182f, -416f, var_2.a, 426f)))) % vec4<u32>(32u))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x, firstLeadingBit(min(min(vec4<i32>(var_6.x, u_input.c, 0i, 2147483647i) ^ vec4<i32>(2147483647i, -1i, u_input.a, -5479i), ~vec4<i32>(u_input.a, -4495i, 1i, 0i)), vec4<i32>(~u_input.c, var_6.x, -11500i, ~(-1i)))));
}

