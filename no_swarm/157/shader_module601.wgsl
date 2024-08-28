struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<bool>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_4,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 30>;

var<private> global1: array<bool, 23>;

var<private> global2: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-10689i, 0i), vec2<i32>(-1i, 6714i), vec2<i32>(-1i, -1i), vec2<i32>(28494i, 32749i), vec2<i32>(27037i, i32(-2147483648)), vec2<i32>(11462i, -5172i), vec2<i32>(i32(-2147483648), -43269i), vec2<i32>(-2461i, -51163i), vec2<i32>(-1i, 1i), vec2<i32>(-17528i, 0i), vec2<i32>(2192i, 0i));

var<private> global3: array<Struct_4, 9>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    global1 = array<bool, 23>();
    let var_0 = global0[_wgslsmith_index_u32(~firstLeadingBit(select(u_input.a | 1u, _wgslsmith_mod_u32(~61106u, 40276u), all(vec4<bool>(false, global1[_wgslsmith_index_u32(66149u, 23u)], global1[_wgslsmith_index_u32(15351u, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)])))), 30u)];
    let var_1 = select(select(select(select(select(global0[_wgslsmith_index_u32(47821u, 30u)], global0[_wgslsmith_index_u32(u_input.b, 30u)], global1[_wgslsmith_index_u32(0u, 23u)]), select(global0[_wgslsmith_index_u32(4294967295u, 30u)], global0[_wgslsmith_index_u32(4294967295u, 30u)], true), var_0.x == var_0.x), global0[_wgslsmith_index_u32(~4294967295u, 30u)], _wgslsmith_add_u32(u_input.b, 4294967295u) > u_input.c.x), !global0[_wgslsmith_index_u32(u_input.b, 30u)], all(var_0.xy)), select(global0[_wgslsmith_index_u32(u_input.d, 30u)], vec3<bool>(true, true, true), 1i < ~firstTrailingBit(-1i)), vec3<bool>(var_0.x, var_0.x, true));
    return -1679i;
}

fn func_2() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1420f) * 1f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(775f))))))));
    let var_1 = u_input.d;
    var var_2 = Struct_2(~(~vec2<u32>(_wgslsmith_clamp_u32(4294967295u, 17990u, 1u), u_input.c.x)), Struct_1(~(-vec3<i32>(-7239i, 565i, 1i)), vec2<u32>(4294967295u, ~(~var_1))), ~vec3<u32>(2230u, _wgslsmith_sub_u32(var_1, 10192u) & 0u, _wgslsmith_sub_u32(u_input.c.x, 1u)), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-48455i, func_3(), abs(-2147483647i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -39822i, -9742i), vec3<i32>(23029i, 2057i, 1i))), vec2<u32>(~(var_1 << (0u % 32u)), countOneBits(u_input.a))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-794f, var_0), var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0, 761f), vec2<f32>(var_0, var_0))))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(var_0, var_0)), _wgslsmith_f_op_f32(154f + -857f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, _wgslsmith_f_op_f32(2114f * var_0)) + vec2<f32>(var_0, _wgslsmith_f_op_f32(var_0 + var_0)))));
    var var_4 = ~var_2.d.a.x;
    return vec2<u32>(2411u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a.x, _wgslsmith_dot_vec3_u32(var_2.c, vec3<u32>(var_1, var_1, var_1) & var_2.c)), vec2<u32>(~_wgslsmith_mult_u32(u_input.d, 100612u), abs(1u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec4<u32>) -> Struct_1 {
    var var_0 = Struct_4(Struct_3(false, vec2<bool>(true, true), arg_0.a.x, arg_1), Struct_2((vec2<u32>(50291u, arg_2.x) << (arg_1.wz % vec2<u32>(32u))) >> (arg_0.b % vec2<u32>(32u)), arg_0, ~(~arg_1.yzy), Struct_1(select(vec3<i32>(33688i, 2147483647i, -2147483647i), min(arg_0.a, vec3<i32>(arg_0.a.x, 53304i, arg_0.a.x)), vec3<bool>(true, false, global1[_wgslsmith_index_u32(35903u, 23u)])), ~func_2())), arg_0, Struct_3(true, select(!select(vec2<bool>(global1[_wgslsmith_index_u32(1u, 23u)], false), vec2<bool>(global1[_wgslsmith_index_u32(1u, 23u)], false), true), select(!vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.d, 23u)]), vec2<bool>(global1[_wgslsmith_index_u32(arg_0.b.x, 23u)], global1[_wgslsmith_index_u32(u_input.b, 23u)]), any(vec4<bool>(false, global1[_wgslsmith_index_u32(arg_2.x, 23u)], false, global1[_wgslsmith_index_u32(0u, 23u)]))), !vec2<bool>(global1[_wgslsmith_index_u32(1u, 23u)], false)), -1i, abs(~(vec4<u32>(u_input.c.x, arg_2.x, arg_0.b.x, u_input.c.x) | arg_1))));
    let var_1 = var_0.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, 839f)))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-2021f, -203f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-2166f, -156f), -148f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(925f))))));
    let var_3 = vec2<i32>(-func_3(), 2147483647i) << (~countOneBits(arg_2.xx) % vec2<u32>(32u));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.x, 619f))), var_2.wy)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(808f, var_2.x) + vec2<f32>(1065f, var_2.x)))));
    return Struct_1(~(~max(~vec3<i32>(0i, var_1.d.a.x, var_0.d.c), vec3<i32>(2147483647i, var_1.d.a.x, var_0.a.c))), _wgslsmith_sub_vec2_u32(arg_2.zx, ~(~countOneBits(var_1.d.b))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> Struct_1 {
    var var_0 = ~(~(~vec3<u32>(~u_input.d, 63903u, _wgslsmith_sub_u32(u_input.c.x, 23338u))));
    var_0 = ~(~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(36883u, 17850u, arg_0.b.x), vec3<u32>(arg_0.b.x, arg_0.b.x, 26314u)) ^ select(vec3<u32>(arg_0.b.x, u_input.b, var_0.x), vec3<u32>(var_0.x, arg_0.b.x, 20033u), global1[_wgslsmith_index_u32(0u, 23u)]), countOneBits(firstLeadingBit(vec3<u32>(var_0.x, arg_0.b.x, 4294967295u)))));
    let var_1 = Struct_2(abs(var_0.xy) ^ ~vec2<u32>(func_2().x, u_input.a), func_4(arg_0, select(vec4<u32>(arg_0.b.x, u_input.b, u_input.a, arg_0.b.x) ^ select(vec4<u32>(0u, arg_0.b.x, 1u, 16568u), vec4<u32>(1u, arg_0.b.x, 0u, arg_0.b.x), vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(u_input.a, 23u)])), ~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 0u, arg_0.b.x), vec4<u32>(u_input.a, 0u, var_0.x, arg_0.b.x)), !select(vec4<bool>(false, global1[_wgslsmith_index_u32(26766u, 23u)], true, true), vec4<bool>(true, global1[_wgslsmith_index_u32(43689u, 23u)], false, false), true)), vec4<u32>(u_input.a, func_2().x, ~(var_0.x & 41590u), ~(118883u << (u_input.a % 32u)))), firstLeadingBit(max(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_0.b.x, 1u), vec3<u32>(u_input.a, u_input.d, 1u)), vec3<u32>(0u, 1u, 0u) << (~vec3<u32>(u_input.b, u_input.b, 4294967295u) % vec3<u32>(32u)))), Struct_1(vec3<i32>(8996i, arg_2, _wgslsmith_div_i32(reverseBits(arg_2), arg_1)), ~vec2<u32>(var_0.x, firstTrailingBit(4294967295u))));
    global2 = array<vec2<i32>, 12>();
    global1 = array<bool, 23>();
    return func_4(Struct_1(vec3<i32>(arg_1 >> (_wgslsmith_mult_u32(1u, 0u) % 32u), -2147483647i, max(1i, 1i)), arg_0.b), ~(~abs(~vec4<u32>(var_0.x, arg_0.b.x, arg_0.b.x, arg_0.b.x))), ~vec4<u32>(~(7320u >> (0u % 32u)), (arg_0.b.x >> (1u % 32u)) | var_1.b.b.x, 1u, ~(~var_1.d.b.x)));
}

fn func_1(arg_0: f32) -> StorageBuffer {
    global3 = array<Struct_4, 9>();
    var var_0 = func_5(func_4(Struct_1(vec3<i32>(-1i) * -vec3<i32>(-1i, 15814i, 0i), func_2()), vec4<u32>(u_input.d, 0u, min(_wgslsmith_add_u32(u_input.c.x, 72316u), ~44406u), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 0u, 50769u), vec3<u32>(u_input.c.x, u_input.c.x, 43027u))), _wgslsmith_add_vec4_u32(min(vec4<u32>(u_input.d, 46438u, u_input.b, u_input.b), firstLeadingBit(vec4<u32>(u_input.a, 1u, u_input.a, 0u))), vec4<u32>(~u_input.d, ~u_input.c.x, u_input.b, 41859u))), -1i, 1i);
    var var_1 = max(~(~(~4294967295u) << (u_input.d % 32u)), u_input.d);
    global2 = array<vec2<i32>, 12>();
    var var_2 = Struct_1(vec3<i32>(var_0.a.x, func_5(Struct_1(var_0.a << (vec3<u32>(99611u, 1u, var_0.b.x) % vec3<u32>(32u)), ~vec2<u32>(53175u, var_0.b.x)), var_0.a.x, ~54849i).a.x, func_5(Struct_1(vec3<i32>(2147483647i, 41751i, var_0.a.x), vec2<u32>(1u, 14624u)), _wgslsmith_sub_i32(_wgslsmith_div_i32(39168i, -19238i), var_0.a.x), func_5(func_5(Struct_1(vec3<i32>(var_0.a.x, 41748i, -9507i), var_0.b), 4123i, var_0.a.x), _wgslsmith_add_i32(var_0.a.x, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.x, 2147483647i, var_0.a.x), var_0.a)).a.x).a.x), vec2<u32>(1u, var_0.b.x));
    return StorageBuffer(vec3<u32>(~4294967295u, u_input.a, _wgslsmith_clamp_u32(firstTrailingBit(var_0.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.x, 32848u), ~var_0.b), u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 9>();
    let x = u_input.a;
    s_output = func_1(1f);
}

