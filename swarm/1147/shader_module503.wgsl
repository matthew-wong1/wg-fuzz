struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(12054i, 0i), vec2<i32>(-1i, -24442i), vec2<i32>(-1i, -1i), vec2<i32>(64148i, 0i), vec2<i32>(0i, 4050i), vec2<i32>(-14086i, 1i), vec2<i32>(0i, 14772i), vec2<i32>(0i, -25656i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(4696i, -1i), vec2<i32>(0i, 25833i), vec2<i32>(-1i, -11971i), vec2<i32>(26671i, i32(-2147483648)), vec2<i32>(2147483647i, 1i));

var<private> global1: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(4294967295u, 41837u), vec2<u32>(0u, 0u), vec2<u32>(0u, 71045u), vec2<u32>(18452u, 1u), vec2<u32>(99279u, 0u), vec2<u32>(2577u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 56620u), vec2<u32>(16147u, 49739u), vec2<u32>(42915u, 4294967295u), vec2<u32>(75559u, 4294967295u), vec2<u32>(0u, 56601u), vec2<u32>(10373u, 29074u), vec2<u32>(4294967295u, 13944u), vec2<u32>(0u, 0u));

var<private> global2: array<Struct_3, 8>;

var<private> global3: array<f32, 27> = array<f32, 27>(-452f, 229f, 348f, 101f, 1447f, -675f, -604f, 1026f, 1097f, 1000f, -1432f, -430f, -488f, 578f, -249f, -686f, -593f, 697f, -1000f, -808f, 581f, -615f, -908f, 1012f, -324f, 2146f, 850f);

var<private> global4: vec2<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> i32 {
    let var_0 = select(!(!(!(!vec4<bool>(false, true, arg_0.b, true)))), !(!(!vec4<bool>(arg_0.c, arg_0.c, arg_0.b, arg_0.c))), select(!vec4<bool>(2586u > arg_0.d, false, any(vec4<bool>(false, false, false, true)), true), vec4<bool>(false, !(global3[_wgslsmith_index_u32(110991u, 27u)] == 961f), arg_0.c, all(vec4<bool>(true, false, true, arg_0.c))), select(select(!vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true), !vec4<bool>(arg_0.b, false, false, arg_0.b), !vec4<bool>(false, arg_0.c, arg_0.c, arg_0.c)), !(!vec4<bool>(arg_0.c, arg_0.c, arg_0.b, arg_0.c)), !vec4<bool>(false, arg_0.c, false, false))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(811f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1297f)), false)), false | var_0.x, all(select(var_0, var_0, var_0)), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_0.e.x, 4294967295u)), abs(vec2<u32>(4294967295u, ~36415u))), arg_0.e);
    let var_2 = reverseBits(arg_1);
    global2 = array<Struct_3, 8>();
    let var_3 = -6416i;
    return _wgslsmith_dot_vec4_i32(arg_1, countOneBits(_wgslsmith_add_vec4_i32(firstTrailingBit(-vec4<i32>(-19002i, var_3, 2147483647i, 1i)), -min(vec4<i32>(38876i, 2147483647i, var_3, 55919i), vec4<i32>(var_2.x, var_3, 53682i, u_input.d)))));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: f32, arg_3: f32) -> Struct_2 {
    global0 = array<vec2<i32>, 14>();
    let var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(select(_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.b, u_input.b, 11783i, -13553i), ~vec4<i32>(-45i, u_input.b, -35034i, u_input.a)), vec4<i32>(2147483647i, u_input.b, _wgslsmith_div_i32(1i, u_input.a), u_input.d), arg_1), vec4<i32>(-2147483647i, func_3(Struct_1(-1043f, arg_1.x, arg_1.x, 1u, u_input.c), vec4<i32>(0i, u_input.b, 9441i, 24844i)), 0i, i32(-1i) * -1i) << (arg_0.b % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.a, u_input.d), 20965i, u_input.a, u_input.a), vec4<i32>(_wgslsmith_mod_i32(u_input.a, u_input.b), 1i, _wgslsmith_mod_i32(u_input.d, u_input.b), ~u_input.a))), _wgslsmith_add_vec4_i32(vec4<i32>(17189i, 1i, 27227i, u_input.a), vec4<i32>(~1i ^ _wgslsmith_sub_i32(74268i, u_input.a), -(~u_input.a), -2147483647i, u_input.b)));
    global4 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x))), arg_3)));
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_3, -2188f)));
    let var_2 = Struct_1(var_1.x, !all(!arg_1.yy), arg_1.x, _wgslsmith_div_u32(~51835u, 1u), u_input.c);
    return Struct_2(~arg_0.b.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = arg_1.x;
    global2 = array<Struct_3, 8>();
    let var_1 = global2[_wgslsmith_index_u32(arg_0.a & ~abs(4294967295u), 8u)];
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 27u)]))), _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(4294967295u, 27u)], _wgslsmith_f_op_f32(-global4.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global4.x))))))));
    global3 = array<f32, 27>();
    return Struct_3(!var_1.a, u_input.c << (~(~(u_input.c & u_input.c)) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    global0 = array<vec2<i32>, 14>();
    var var_0 = arg_0.a.yw;
    var var_1 = 1i;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global4.x, global3[_wgslsmith_index_u32(1u, 27u)], 503f, arg_1.a))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(158f, -323f, global4.x, 1486f) - vec4<f32>(748f, -368f, 330f, arg_1.a))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1480f, global4.x, arg_1.a, global3[_wgslsmith_index_u32(25872u, 27u)]) + vec4<f32>(global4.x, global3[_wgslsmith_index_u32(49518u, 27u)], arg_1.a, global4.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-397f, 349f, global3[_wgslsmith_index_u32(arg_0.b.x, 27u)], arg_1.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2234f, global3[_wgslsmith_index_u32(24516u, 27u)], global3[_wgslsmith_index_u32(arg_1.d, 27u)], arg_1.a) + vec4<f32>(arg_1.a, 318f, global4.x, arg_1.a))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(462f, -273f, -1765f, arg_1.a) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global4.x, global3[_wgslsmith_index_u32(arg_0.b.x, 27u)], global4.x))))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1834f, global4.x, _wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(floor(-1000f)))))));
    var var_3 = func_4(Struct_2(0u), !(!arg_0.a.yyy));
    return arg_0.a.x;
}

fn func_1() -> StorageBuffer {
    global4 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global4.x, global4.x), vec2<f32>(global4.x, -279f)))))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-638f, -838f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x - -1665f) + global4.x))), 1413f), any(select(vec2<bool>(true, all(vec2<bool>(true, true))), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), -1i > _wgslsmith_mult_i32(u_input.a, -5683i)))));
    var var_0 = all(vec3<bool>(func_5(func_4(func_2(global2[_wgslsmith_index_u32(1u, 8u)], vec4<bool>(true, false, true, false), 1485f, global4.x), vec3<bool>(true, false, false)), Struct_1(511f, any(vec2<bool>(true, true)), false, 163364u, vec4<u32>(19616u, 1u, 1u, u_input.c.x))), any(vec4<bool>(true, func_5(Struct_3(vec4<bool>(true, false, true, true), vec4<u32>(41388u, u_input.e.x, u_input.c.x, u_input.c.x)), Struct_1(-200f, false, false, 0u, vec4<u32>(u_input.c.x, u_input.e.x, 0u, 20990u))), any(vec4<bool>(true, false, false, false)), true)), ~max(u_input.c.x, u_input.c.x) <= _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x), global1[_wgslsmith_index_u32(u_input.c.x, 16u)]), countOneBits(vec2<u32>(0u, u_input.e.x)))));
    let var_1 = Struct_2(~u_input.e.x);
    let var_2 = vec2<bool>(true, func_5(Struct_3(!func_4(var_1, vec3<bool>(true, true, false)).a, vec4<u32>(var_1.a, _wgslsmith_add_u32(57212u, 17502u), ~var_1.a, firstTrailingBit(9798u))), Struct_1(global3[_wgslsmith_index_u32(~u_input.c.x, 27u)], any(vec2<bool>(true, true)), true, var_1.a, u_input.c)));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~1u, 27u)]) + _wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~(~var_1.a), 27u)]), -1072f))));
    return StorageBuffer(~2532u, global4.x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(4294967295u, 27u)], 786f)), _wgslsmith_f_op_f32(global4.x * global3[_wgslsmith_index_u32(u_input.e.x, 27u)])) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, 2033f)))), vec2<f32>(global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.c.wzx, u_input.c.wzw), 27u)], global4.x), vec2<bool>(true, !all(vec3<bool>(true, true, true))))));
    global0 = array<vec2<i32>, 14>();
    var var_0 = ~1u;
    let var_1 = ~(i32(-1i) * -17433i);
    global1 = array<vec2<u32>, 16>();
    let x = u_input.a;
    s_output = func_1();
}

