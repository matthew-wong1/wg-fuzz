struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
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

var<private> global0: vec2<f32>;

var<private> global1: array<u32, 4> = array<u32, 4>(0u, 56001u, 1u, 58236u);

var<private> global2: Struct_2 = Struct_2(false, Struct_1(vec3<bool>(true, false, false), -189f, 829f), Struct_1(vec3<bool>(true, true, true), -629f, -269f));

var<private> global3: Struct_1 = Struct_1(vec3<bool>(true, false, true), 1434f, 293f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: f32) -> f32 {
    let var_0 = arg_1;
    global1 = array<u32, 4>();
    let var_1 = ~select(vec3<u32>(1u, 14851u, 55048u), reverseBits(reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 55464u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(80221u, 4u)], 4u)], 4u)], 4u)], 4u)], 4u)]), vec3<u32>(global1[_wgslsmith_index_u32(8275u, 4u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)], 25020u)))), vec3<bool>(_wgslsmith_f_op_f32(arg_1.b.c * arg_1.c.b) != _wgslsmith_f_op_f32(1008f + -639f), u_input.a.x == 2147483647i, !arg_1.a));
    global0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.b), -103f, any(!global2.b.a)))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(arg_1.c.c - _wgslsmith_f_op_f32(trunc(arg_0))), arg_1.c.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(655f, 1000f), vec2<f32>(582f, 399f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-297f, 1679f))))))));
    return -1397f;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_1(!(!(!(!global2.b.a))), arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -627f));
    var var_1 = Struct_3(Struct_2(all(!vec2<bool>(false, global3.a.x)), Struct_1(select(!global3.a, vec3<bool>(true, true, global3.a.x), true), _wgslsmith_f_op_f32(-1319f - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_3(var_0.b, Struct_2(true, var_0, Struct_1(global3.a, 114f, -964f)), -1624f)))), global2.c), abs(~vec4<u32>(global1[_wgslsmith_index_u32(min(1u, 4294967295u), 4u)], arg_0.x, ~global1[_wgslsmith_index_u32(arg_0.x, 4u)], 41549u)), vec4<i32>(-14118i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a ^ _wgslsmith_mod_vec4_i32(u_input.a, u_input.a)), u_input.a.x, 0i));
    var var_2 = 698f;
    var var_3 = vec3<u32>(firstTrailingBit(4294967295u), var_1.b.x, 0u);
    let var_4 = 0u << (~(~var_3.x) % 32u);
    return var_1.a;
}

fn func_4(arg_0: Struct_3, arg_1: bool) -> Struct_1 {
    let var_0 = Struct_3(func_2(vec2<u32>(~arg_0.b.x, 37140u), vec4<f32>(global3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.c)), _wgslsmith_f_op_f32(-499f + _wgslsmith_f_op_f32(trunc(global0.x))), _wgslsmith_div_f32(190f, _wgslsmith_f_op_f32(-global3.b)))), ~abs(arg_0.b), u_input.a);
    global0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-func_2(var_0.b.zy << (vec2<u32>(75255u, 0u) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global2.c.b, 424f, var_0.a.c.b))).b.b), 1394f)), 712f);
    global3 = arg_0.a.c;
    global1 = array<u32, 4>();
    global3 = func_2(select(vec2<u32>(_wgslsmith_mod_u32(select(0u, 1u, false), arg_0.b.x), _wgslsmith_dot_vec2_u32(select(arg_0.b.yz, var_0.b.xx, vec2<bool>(arg_0.a.c.a.x, arg_0.a.b.a.x)), arg_0.b.yw)), _wgslsmith_mult_vec2_u32(~(arg_0.b.zw | var_0.b.wy), ~(~vec2<u32>(7346u, arg_0.b.x))), var_0.a.b.a.yx), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -646f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(650f, var_0.a.c.b, false))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + arg_0.a.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.b)), all(!vec2<bool>(global3.a.x, global3.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.b)))).c;
    return func_2(vec2<u32>(~_wgslsmith_sub_u32(arg_0.b.x >> (1u % 32u), var_0.b.x), abs(_wgslsmith_dot_vec4_u32(var_0.b, var_0.b) | var_0.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.b, arg_0.a.c.c, -1569f, -1184f) - vec4<f32>(global3.c, arg_0.a.b.c, 1374f, arg_0.a.c.b)) - vec4<f32>(416f, global3.c, global0.x, global0.x)) + vec4<f32>(_wgslsmith_f_op_f32(func_3(arg_0.a.c.c, var_0.a, 245f)), _wgslsmith_f_op_f32(var_0.a.c.b + -885f), _wgslsmith_f_op_f32(max(1386f, global0.x)), _wgslsmith_f_op_f32(arg_0.a.c.c + 338f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(126f, global0.x, 145f, global0.x), vec4<f32>(global0.x, global3.b, -321f, 525f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, global0.x, arg_0.a.b.c, -1399f), vec4<f32>(global2.b.c, arg_0.a.b.c, -973f, -215f), var_0.a.b.a.x)))))).c;
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_2(false, func_4(Struct_3(func_2(~vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(5911u, 4u)], 4u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -718f, global3.b, -1677f))), vec4<u32>(4582u, ~global1[_wgslsmith_index_u32(4825u, 4u)], firstLeadingBit(82391u), abs(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)])), _wgslsmith_mult_vec4_i32(~vec4<i32>(-1i, u_input.a.x, -1i, u_input.a.x), firstLeadingBit(u_input.a))), !(false || global2.b.a.x)), func_4(Struct_3(func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(35874u, 4u)]), vec2<u32>(9943u, 0u)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(816f, 1000f, global3.b, global2.c.c), vec4<f32>(global2.b.c, -460f, 469f, global3.c)))), ~vec4<u32>(global1[_wgslsmith_index_u32(15681u, 4u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)], 4u)], 4u)], 4u)], 4u)], 27810u, 1u), _wgslsmith_sub_vec4_i32(abs(vec4<i32>(1i, u_input.a.x, -34444i, -53790i)), ~u_input.a)), 109550u <= min(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(69608u, 4u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55293u, 4u)], 4u)], 4u)]), ~1u)));
    global3 = func_4(Struct_3(Struct_2(true, var_0.b, func_4(Struct_3(Struct_2(true, var_0.c, Struct_1(vec3<bool>(global3.a.x, var_0.a, global2.c.a.x), global2.b.c, -425f)), vec4<u32>(0u, 32895u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)], global1[_wgslsmith_index_u32(0u, 4u)]), vec4<i32>(u_input.a.x, 3633i, -2147483647i, 26734i)), u_input.a.x > 0i)), vec4<u32>(0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 4u)], min(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 4u)], 1u), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(0u, 4u)], 49851u, 0u) | vec3<u32>(global1[_wgslsmith_index_u32(87707u, 4u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(48927u, 4u)], 4u)], 4u)], 1u), vec3<u32>(global1[_wgslsmith_index_u32(42240u, 4u)], 1u, global1[_wgslsmith_index_u32(0u, 4u)])), 4u)]), _wgslsmith_clamp_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(~vec4<i32>(-1i, -22907i, u_input.a.x, 28454i), ~vec4<i32>(-3442i, u_input.a.x, 1i, u_input.a.x)), _wgslsmith_clamp_vec4_i32(u_input.a, _wgslsmith_div_vec4_i32(u_input.a, u_input.a), u_input.a))), func_2(vec2<u32>(14822u, global1[_wgslsmith_index_u32(countOneBits(~18533u), 4u)]), vec4<f32>(_wgslsmith_f_op_f32(-2105f * _wgslsmith_f_op_f32(-var_0.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(505f * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1186f), var_0.c.c)).a);
    global2 = func_2(select(~(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 4u)], 4u)], 4u)], 4u)], 4294967295u)), select(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(28274u, 4u)], 4u)], 0u), vec2<u32>(global1[_wgslsmith_index_u32(11218u, 4u)], 0u) << (vec2<u32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], 30086u) % vec2<u32>(32u)), false && global3.a.x), !vec2<bool>(var_0.c.a.x, false)) ^ _wgslsmith_add_vec2_u32(vec2<u32>(abs(global1[_wgslsmith_index_u32(4294967295u, 4u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(102785u, 4u)], 4u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 4u)], 4u)]), vec2<u32>(9668u, 53094u))), _wgslsmith_div_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(41214u, 4u)], 4u)], 4u)], 4294967295u), vec2<u32>(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 4u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1137f, -695f, 1000f, -302f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(2279f, 237f, global3.b, -669f) * vec4<f32>(718f, 763f, 1000f, global2.c.b)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1722f, 1626f, global2.b.b, -413f) - vec4<f32>(-1960f, 1641f, -1000f, -228f)), true))) * vec4<f32>(global3.c, var_0.b.c, global2.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(158f, global0.x)) - func_2(vec2<u32>(44404u, global1[_wgslsmith_index_u32(1u, 4u)]), vec4<f32>(420f, 1481f, 514f, global3.c)).b.b))));
    let var_1 = ~(~(global1[_wgslsmith_index_u32(48934u, 4u)] & (~1u | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 4u)], 4u)])));
    var var_2 = select(vec4<bool>(!(u_input.a.x >= u_input.a.x), global2.c.a.x, true, true), select(!vec4<bool>(u_input.a.x != -33577i, true, global2.a, !global2.c.a.x), vec4<bool>(global2.c.a.x, !global2.b.a.x, any(global3.a) && func_2(vec2<u32>(0u, var_1), vec4<f32>(var_0.b.b, -1342f, global0.x, -174f)).b.a.x, (-16181i <= u_input.a.x) && global2.a), !(!select(vec4<bool>(global2.a, global2.c.a.x, true, var_0.a), vec4<bool>(global2.c.a.x, global3.a.x, global2.b.a.x, true), vec4<bool>(global2.a, false, global3.a.x, var_0.c.a.x)))), func_4(Struct_3(func_2(abs(vec2<u32>(4294967295u, var_1)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(836f, 221f, var_0.c.c, 794f)))), vec4<u32>(var_1 | 42816u, max(8387u, var_1), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 4u)], 4u)], 4u)], 4u)], _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(39013u, 4u)], 4294967295u)), -firstTrailingBit(u_input.a)), any(select(select(vec4<bool>(true, false, false, global3.a.x), vec4<bool>(true, var_0.a, false, false), vec4<bool>(var_0.a, true, var_0.b.a.x, global3.a.x)), !vec4<bool>(global3.a.x, true, true, false), select(vec4<bool>(false, global3.a.x, true, false), vec4<bool>(var_0.b.a.x, true, global2.b.a.x, true), global3.a.x)))).a.x);
    return Struct_3(Struct_2(var_2.x, var_0.c, global2.c), ~abs(~reverseBits(vec4<u32>(0u, 31131u, 0u, var_1))), max(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 28145i, u_input.a.x, u_input.a.x), _wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, 24167i, 23774i, 2147483647i), u_input.a)) & vec4<i32>(firstLeadingBit(u_input.a.x), -13081i, u_input.a.x, u_input.a.x), _wgslsmith_div_vec4_i32(reverseBits(countOneBits(vec4<i32>(-68224i, u_input.a.x, -36300i, u_input.a.x))), vec4<i32>(select(u_input.a.x, u_input.a.x, false), -2147483647i, u_input.a.x ^ u_input.a.x, _wgslsmith_div_i32(2147483647i, 2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.b.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global3.b))))), 1092f, var_0.a.c.a.x)));
    let var_1 = vec2<bool>(all(global2.c.a), false);
    var var_2 = 5961i;
    let var_3 = vec2<u32>(24626u, var_0.b.x);
    global1 = array<u32, 4>();
    let var_4 = Struct_3(Struct_2(global2.c.a.x, func_1().a.c, func_2(reverseBits(countOneBits(vec2<u32>(var_3.x, var_0.b.x))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.c.c, global0.x, global0.x, 121f)))).b), var_0.b, vec4<i32>(-u_input.a.x, countOneBits(u_input.a.x), u_input.a.x, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.x);
}

