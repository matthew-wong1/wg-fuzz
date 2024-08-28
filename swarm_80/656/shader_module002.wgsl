struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(false, vec3<f32>(318f, 928f, 2067f), 6628i);

var<private> global1: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(false, vec3<f32>(1437f, 531f, -1202f), -1i), Struct_1(false, vec3<f32>(845f, -289f, 869f), -13271i), Struct_1(false, vec3<f32>(835f, -121f, -1103f), i32(-2147483648)), Struct_1(true, vec3<f32>(1000f, 143f, 105f), 0i), Struct_1(false, vec3<f32>(449f, -1356f, 1000f), 18691i), Struct_1(true, vec3<f32>(-1174f, -1000f, -288f), -19942i), Struct_1(true, vec3<f32>(712f, 526f, -283f), 15642i), Struct_1(true, vec3<f32>(603f, -1713f, -698f), 2147483647i), Struct_1(false, vec3<f32>(1316f, -1517f, -1000f), 34221i), Struct_1(false, vec3<f32>(371f, 1000f, -509f), 1i));

var<private> global2: vec2<bool>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: i32) -> i32 {
    var var_0 = arg_0;
    return global0.c;
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>) -> i32 {
    return arg_1.x;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: i32) -> f32 {
    global2 = !vec2<bool>(all(vec3<bool>(select(global0.a, global0.a, false), true | global0.a, true)), all(!vec2<bool>(false, global2.x)));
    global1 = array<Struct_1, 10>();
    global0 = arg_1;
    let var_0 = (1u << (~_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_mult_u32(44639u, arg_0.b)) % 32u)) >= _wgslsmith_add_u32(7389u, ~_wgslsmith_clamp_u32(0u, ~arg_0.b, 4294967295u));
    var var_1 = 110315u;
    return _wgslsmith_f_op_f32(f32(-1f) * -1423f);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    global0 = Struct_1(global2.x, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(416f, -1769f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.b.x)))))), func_2(arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-2289f, global0.b.x, -140f, -911f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-806f, -1173f, -818f, arg_2.b.x)) * _wgslsmith_div_vec4_f32(vec4<f32>(-472f, 1000f, global0.b.x, global0.b.x), vec4<f32>(-1186f, arg_2.b.x, arg_2.b.x, 308f)))), -abs(~(-2147483647i))));
    var var_0 = vec4<f32>(-695f, arg_2.b.x, _wgslsmith_f_op_f32(-909f - global0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(arg_2.a, arg_2.b, 4861i), ~0u, !global0.a, arg_2, Struct_1(false, arg_2.b, global0.c)), global1[_wgslsmith_index_u32(129138u, 10u)], _wgslsmith_mod_i32(func_3(u_input.a.zx, arg_1.yy), ~1i))) * _wgslsmith_f_op_f32(-arg_2.b.x)));
    let var_1 = -func_2(arg_2, vec4<f32>(-236f, global0.b.x, -408f, 2084f), firstTrailingBit(-1i));
    var var_2 = arg_1.x;
    global0 = global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec2_u32(~u_input.c.yz, ~min(vec2<u32>(u_input.c.x, u_input.a.x), vec2<u32>(u_input.c.x, u_input.c.x)))) << (_wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(18355u, 4294967295u, 93775u), vec3<u32>(0u, u_input.a.x, u_input.c.x)), 1u, _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 7364u, u_input.b), vec3<u32>(u_input.c.x, u_input.c.x, u_input.a.x)), 4294967295u))) % 32u), 10u)];
    return Struct_1(!(!global2.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1055f, var_0.x, _wgslsmith_f_op_f32(var_0.x + -1350f)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.b.x, arg_2.b.x, 103f) + _wgslsmith_f_op_vec3_f32(-global0.b))))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(select(arg_1.wzy, arg_1.wwz, arg_0.zyw), vec3<i32>(var_1, arg_3, arg_2.c)), vec3<i32>(arg_2.c, 0i, ~arg_2.c)) & _wgslsmith_sub_i32(1i, -1162i));
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1) -> u32 {
    global1 = array<Struct_1, 10>();
    var var_0 = global2.x;
    let var_1 = global0.b.x;
    var var_2 = _wgslsmith_mod_vec3_u32(countOneBits(reverseBits(u_input.a >> (vec3<u32>(u_input.b, u_input.c.x, 1u) % vec3<u32>(32u)))) << (_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, u_input.c), select(~vec3<u32>(4294967295u, 75674u, u_input.a.x), vec3<u32>(0u, 1u, u_input.b), select(vec3<bool>(global2.x, global2.x, global0.a), vec3<bool>(true, false, true), vec3<bool>(global2.x, false, true)))) % vec3<u32>(32u)), u_input.a | vec3<u32>(~u_input.c.x, ~_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, u_input.c.x), u_input.b));
    let var_3 = vec2<i32>(~(-_wgslsmith_add_i32(arg_1.x, -76991i)), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(6757i, ~250i)), vec2<i32>(~global0.c, _wgslsmith_add_i32(-1i, arg_1.x)) << (min(vec2<u32>(19256u, var_2.x), abs(vec2<u32>(11579u, 3423u))) % vec2<u32>(32u))));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(~(~var_2.x), ~min(6667u, 0u)), ~(min(4294967295u, var_2.x) ^ _wgslsmith_sub_u32(86386u, u_input.c.x))), ~(~(~var_2.xx)));
}

fn func_6(arg_0: Struct_2, arg_1: i32) -> Struct_2 {
    global1 = array<Struct_1, 10>();
    var var_0 = ~(~(~func_5(_wgslsmith_f_op_f32(min(320f, -969f)), vec2<i32>(20066i, arg_0.e.c) ^ vec2<i32>(arg_0.e.c, 44516i), func_1(vec4<bool>(true, false, global0.a, true), vec4<i32>(18946i, arg_0.a.c, global0.c, -17571i), Struct_1(false, vec3<f32>(736f, arg_0.e.b.x, global0.b.x), arg_1), 2147483647i))));
    var var_1 = vec4<bool>(!(!global2.x), all(vec4<bool>(true, global2.x, !global0.a, arg_0.a.b.x <= 499f)) || global0.a, select(false, global2.x, any(select(!vec4<bool>(false, arg_0.d.a, true, true), select(vec4<bool>(global2.x, true, false, global2.x), vec4<bool>(false, true, global0.a, true), true), false))), 47214u <= ~_wgslsmith_mod_u32(arg_0.b | 9269u, 4283u));
    var var_2 = !var_1.xy;
    let var_3 = vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, 0u), ~4294967295u, arg_0.b);
    return Struct_2(global1[_wgslsmith_index_u32(firstLeadingBit(1u), 10u)], 10091u, true, global1[_wgslsmith_index_u32(arg_0.b, 10u)], func_1(!vec4<bool>(!global0.a, true, global0.a, all(var_1.wxz)), -(vec4<i32>(global0.c, 33831i, global0.c, 20809i) >> (_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.b, 4435u, var_3.x, var_3.x), vec4<u32>(4294967295u, 1u, u_input.b, 4294967295u)) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~u_input.b), abs(1u), max(~var_3.x, 1u)), 10u)], max(global0.c, ~(-global0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_2(Struct_1(global2.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, global0.b.x, -1020f) + global0.b)), global0.c), func_5(-863f, abs(~vec2<i32>(6590i, global0.c)), func_1(vec4<bool>(true, true, true, true), -vec4<i32>(-2147483647i, 13535i, global0.c, -29514i), Struct_1(global2.x, global0.b, 1i), abs(global0.c))), global0.a, func_1(vec4<bool>(func_1(vec4<bool>(global0.a, global0.a, global0.a, global0.a), vec4<i32>(global0.c, -1i, global0.c, -1i), global1[_wgslsmith_index_u32(u_input.c.x, 10u)], -15861i).a, !global2.x, true, true), abs(vec4<i32>(global0.c, global0.c, -2147483647i, global0.c)) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(global0.c, global0.c, global0.c, global0.c), vec4<i32>(global0.c, 2147483647i, global0.c, global0.c)), Struct_1(global2.x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b.x, global0.b.x, 811f), global0.b, false)), global0.c), firstLeadingBit(func_2(Struct_1(global2.x, global0.b, global0.c), vec4<f32>(global0.b.x, global0.b.x, global0.b.x, global0.b.x), global0.c))), func_1(select(vec4<bool>(true, true, true, global2.x), vec4<bool>(global2.x, global2.x, true, global0.a), false), -vec4<i32>(2147483647i, 896i, global0.c, global0.c), global1[_wgslsmith_index_u32(~(~u_input.b), 10u)], _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, global0.c, global0.c, global0.c), -vec4<i32>(global0.c, -2147483647i, global0.c, global0.c)))), -global0.c);
    var_0 = func_6(Struct_2(Struct_1(any(select(vec2<bool>(global0.a, global0.a), vec2<bool>(global0.a, false), vec2<bool>(true, global0.a))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.e.b))), -6802i), u_input.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_0.d.b.x)))) <= -295f, global1[_wgslsmith_index_u32(~1u, 10u)], func_1(vec4<bool>(true, func_6(Struct_2(Struct_1(global0.a, vec3<f32>(global0.b.x, global0.b.x, -850f), 0i), 30718u, true, Struct_1(true, vec3<f32>(var_0.a.b.x, 1161f, global0.b.x), var_0.a.c), global1[_wgslsmith_index_u32(var_0.b, 10u)]), var_0.e.c).a.a, all(vec2<bool>(global2.x, false)), true), firstLeadingBit(countOneBits(vec4<i32>(8616i, var_0.e.c, 11612i, -1i))), Struct_1(!global0.a, var_0.e.b, _wgslsmith_dot_vec3_i32(vec3<i32>(4000i, global0.c, 0i), vec3<i32>(-2147483647i, 52825i, -2147483647i))), var_0.a.c)), -46779i);
    global2 = vec2<bool>(select(true, var_0.d.a, false), any(vec3<bool>(false, var_0.b > 0u, !(!global0.a))));
    global0 = Struct_1(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.b + global0.b) + _wgslsmith_f_op_vec3_f32(var_0.e.b + global0.b))) + vec3<f32>(global0.b.x, _wgslsmith_f_op_f32(min(220f, _wgslsmith_f_op_f32(min(1666f, 473f)))), 383f)), countOneBits(var_0.e.c));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1357f);
    var var_2 = Struct_2(global1[_wgslsmith_index_u32(var_0.b, 10u)], abs(~func_6(Struct_2(Struct_1(global2.x, vec3<f32>(-397f, -104f, 1196f), global0.c), var_0.b, global2.x, var_0.e, var_0.e), var_0.e.c).b), var_0.c, func_6(func_6(func_6(func_6(Struct_2(Struct_1(var_0.a.a, vec3<f32>(1279f, var_1, var_1), var_0.e.c), 1u, true, Struct_1(var_0.c, vec3<f32>(var_1, var_1, var_1), var_0.a.c), Struct_1(var_0.c, global0.b, 14607i)), global0.c), 1i), -(i32(-1i) * -1i)), var_0.e.c).a, var_0.d);
    var var_3 = func_6(func_6(func_6(func_6(func_6(Struct_2(Struct_1(true, var_0.e.b, var_2.e.c), 1u, false, Struct_1(false, vec3<f32>(var_2.e.b.x, var_2.d.b.x, global0.b.x), global0.c), global1[_wgslsmith_index_u32(11364u, 10u)]), 24803i), var_0.d.c), -2147483647i), min(_wgslsmith_sub_i32(0i, -2147483647i) ^ (global0.c & var_2.a.c), 0i)), -(_wgslsmith_add_i32(global0.c, -20096i) & ~select(var_2.a.c, var_0.a.c, false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1624f))), u_input.c);
}

