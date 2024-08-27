struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28>;

var<private> global1: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true));

var<private> global2: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec3<bool>(false, false, false), vec4<i32>(4195i, -21817i, 11421i, 2147483647i)), Struct_2(vec3<bool>(false, true, true), vec4<i32>(i32(-2147483648), 1i, 2147483647i, 4169i)), Struct_2(vec3<bool>(true, true, true), vec4<i32>(-40428i, 12751i, -30758i, 2147483647i)), Struct_2(vec3<bool>(true, true, false), vec4<i32>(14216i, i32(-2147483648), -12969i, -66822i)), Struct_2(vec3<bool>(true, true, false), vec4<i32>(0i, 2147483647i, 33850i, 35234i)), Struct_2(vec3<bool>(true, false, false), vec4<i32>(2147483647i, 0i, -9708i, i32(-2147483648))), Struct_2(vec3<bool>(false, false, true), vec4<i32>(33138i, -1i, 17371i, 13095i)), Struct_2(vec3<bool>(true, true, false), vec4<i32>(-30224i, i32(-2147483648), 0i, 15538i)), Struct_2(vec3<bool>(true, false, true), vec4<i32>(2147483647i, -37864i, -12423i, -1i)), Struct_2(vec3<bool>(true, false, false), vec4<i32>(14616i, 12514i, -37848i, i32(-2147483648))), Struct_2(vec3<bool>(false, true, false), vec4<i32>(6675i, -31272i, -24232i, 54759i)), Struct_2(vec3<bool>(false, true, true), vec4<i32>(-35447i, 2147483647i, 69247i, 0i)), Struct_2(vec3<bool>(true, true, false), vec4<i32>(0i, 14675i, 10665i, 76977i)), Struct_2(vec3<bool>(false, false, false), vec4<i32>(-1i, 10414i, 51651i, -1i)), Struct_2(vec3<bool>(false, true, false), vec4<i32>(71091i, 804i, 2147483647i, -40065i)), Struct_2(vec3<bool>(true, false, true), vec4<i32>(-10606i, -1i, -2998i, -54107i)), Struct_2(vec3<bool>(true, false, true), vec4<i32>(i32(-2147483648), 34918i, -59600i, i32(-2147483648))), Struct_2(vec3<bool>(false, false, false), vec4<i32>(-1i, -1i, i32(-2147483648), 0i)), Struct_2(vec3<bool>(false, true, true), vec4<i32>(1i, -1965i, -17986i, -18558i)), Struct_2(vec3<bool>(true, false, false), vec4<i32>(0i, 1i, 72213i, 2147483647i)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    let var_0 = select(~_wgslsmith_div_vec3_u32(global0[_wgslsmith_index_u32(min(31249u, 4294967295u), 28u)], vec3<u32>(0u, u_input.a, 40030u) ^ global0[_wgslsmith_index_u32(u_input.a, 28u)]) >> (global0[_wgslsmith_index_u32(u_input.a, 28u)] % vec3<u32>(32u)), vec3<u32>(0u, ~u_input.a, u_input.a), global1[_wgslsmith_index_u32(30545u, 18u)]);
    let var_1 = ~(_wgslsmith_dot_vec2_i32(max(vec2<i32>(-32989i, -33608i), vec2<i32>(2147483647i, 37792i) >> (vec2<u32>(1u, u_input.a) % vec2<u32>(32u))), countOneBits(-vec2<i32>(1i, 12760i))) >> (((1u << (max(u_input.a, 4294967295u) % 32u)) | u_input.a) % 32u));
    var var_2 = Struct_3(~(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_1, -31735i, 5883i, var_1), firstLeadingBit(vec4<i32>(2147483647i, 0i, 1i, var_1))) << (28275u % 32u)), 18972i, Struct_2(!vec3<bool>(var_1 < 4555i, all(vec4<bool>(true, true, false, false)), true), -_wgslsmith_add_vec4_i32(vec4<i32>(1i, 2147483647i, 29287i, var_1), countOneBits(vec4<i32>(-17836i, -13805i, var_1, 1i)))), _wgslsmith_sub_i32(-7132i, var_1));
    var var_3 = ~(var_0.yz ^ vec2<u32>(select(18369u, var_0.x, true), _wgslsmith_mod_u32(max(var_0.x, 4294967295u), 4294967295u)));
    global0 = array<vec3<u32>, 28>();
    return !var_2.c.a.x;
}

fn func_2() -> vec4<bool> {
    return select(vec4<bool>(true, true, any(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), false)), true), !vec4<bool>(true, true, ~(-6050i) <= firstTrailingBit(1i), func_3()), true || all(vec2<bool>(true, true)));
}

fn func_1() -> vec4<bool> {
    var var_0 = u_input.a;
    var var_1 = select(select(func_2(), select(vec4<bool>(any(global1[_wgslsmith_index_u32(0u, 18u)]), true, true, func_2().x), func_2(), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false))), vec4<bool>(select(true, select(true, true, true), all(vec4<bool>(true, true, false, false))), true, all(select(global1[_wgslsmith_index_u32(u_input.a, 18u)], global1[_wgslsmith_index_u32(54484u, 18u)], false)), true != func_2().x)), func_2(), !(!func_2()));
    let var_2 = !vec4<bool>(true, any(var_1.yy), any(func_2()), func_3());
    var_1 = vec4<bool>(var_2.x, true, var_2.x, !(!(all(vec2<bool>(var_2.x, var_2.x)) & !var_2.x)));
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.a), 20u)];
    return select(!vec4<bool>(~u_input.a > (1u << (u_input.a % 32u)), var_2.x | !var_1.x, true, ~u_input.a != _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), global0[_wgslsmith_index_u32(u_input.a, 28u)])), vec4<bool>(!var_1.x, all(vec3<bool>(any(var_2), var_1.x, any(var_1.wx))), false, func_2().x), vec4<bool>(func_2().x, ~1u <= ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 4294967295u, 15007u), vec4<u32>(u_input.a, 1500u, u_input.a, 0u)), var_2.x, var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = array<vec3<bool>, 18>();
    let var_1 = Struct_1(vec3<bool>(var_0.x, false, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -231f), _wgslsmith_f_op_f32(f32(-1f) * -1512f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1448f, -887f)))), _wgslsmith_mult_vec4_u32(vec4<u32>(max(4711u, u_input.a), 1u, countOneBits(1u) >> (1u % 32u), max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(u_input.a, u_input.a)), u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(20798u, u_input.a, 47593u, 1u) ^ ~vec4<u32>(14460u, 63313u, u_input.a, 8055u), firstTrailingBit(vec4<u32>(1u, u_input.a, 2309u, 15424u)) << (vec4<u32>(1u, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u)))), !var_0.x, vec2<bool>(true, var_0.x));
    let var_2 = ~11872u;
    var var_3 = Struct_3(-(~countOneBits(max(24675i, 27302i))), i32(-1i) * -1i, global2[_wgslsmith_index_u32(~1u, 20u)], _wgslsmith_add_i32(~17931i, -23128i) & _wgslsmith_mod_i32(_wgslsmith_add_i32(2147483647i, firstTrailingBit(35461i)), ~(~32209i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.b.x, ~(-2147483647i), _wgslsmith_div_f32(var_1.b.x, var_1.b.x));
}

