struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec4<i32>,
    d: u32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: u32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: bool;

var<private> global2: vec2<i32> = vec2<i32>(2147483647i, 37442i);

var<private> global3: array<Struct_5, 32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>) -> vec3<i32> {
    let var_0 = Struct_3(global0.b != -283f, vec3<u32>(41581u, max(~firstTrailingBit(u_input.a.x), 4294967295u), _wgslsmith_div_u32(u_input.a.x, 4294967295u)), firstTrailingBit(_wgslsmith_add_i32(max(reverseBits(global0.a.x), global2.x), abs(1i))));
    var var_1 = global0.b;
    var var_2 = 51230u;
    global0 = global3[_wgslsmith_index_u32(var_0.b.x, 32u)];
    let var_3 = select(!vec4<bool>(!all(vec2<bool>(true, true)), all(global0.c), true, var_0.a), !(!vec4<bool>(!global0.c.x, false, var_0.a | var_0.a, var_0.a)), vec4<bool>(true, !(-623f > arg_0.x), !var_0.a, global0.c.x));
    return -vec3<i32>(global0.a.x & ~(~(-1i)), var_0.c, global2.x);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(reverseBits(u_input.a.x), 0u), _wgslsmith_sub_vec2_u32(select(~vec2<u32>(u_input.a.x, arg_0.d), ~vec2<u32>(arg_0.b, 1u), true), vec2<u32>(_wgslsmith_add_u32(75690u, 71364u), abs(4294967295u)))), ~abs(min(~vec2<u32>(95743u, 7813u), firstLeadingBit(vec2<u32>(42044u, u_input.a.x)))));
    global0 = Struct_5(vec3<i32>(-1i) * -func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, global0.b, 808f, 1000f) - vec4<f32>(global0.b, global0.b, -430f, 923f))), _wgslsmith_f_op_f32(sign(arg_0.a.x)), select(select(global0.c, select(!global0.c, !vec3<bool>(global0.c.x, true, global0.c.x), global0.c.x != true), vec3<bool>(!arg_1.x, global0.b > 1256f, global0.c.x == arg_1.x)), global0.c, select(true, false, any(!arg_1))));
    var var_1 = Struct_3(((all(global0.c) & true) | select(true & arg_1.x, !arg_1.x, false)) & true, vec3<u32>(arg_0.d, arg_0.d, u_input.a.x), firstTrailingBit(arg_0.c.x));
    global1 = var_1.b.x >= _wgslsmith_add_u32(0u, 4294967295u);
    let var_2 = Struct_4(Struct_2(arg_0, arg_0, 85628u & countOneBits(1u << (u_input.a.x % 32u))), !vec4<bool>(any(global0.c.xz) && true, global0.c.x, select(arg_1.x & global0.c.x, true, var_1.a), ~var_0.x < u_input.a.x), vec4<i32>(~var_1.c, firstLeadingBit(0i), (i32(-1i) * -27477i) >> (_wgslsmith_clamp_u32(var_0.x, max(u_input.a.x, 0u), u_input.a.x) % 32u), var_1.c), abs(39578u), Struct_3(true, u_input.a, var_1.c));
    return i32(-1i) * -_wgslsmith_mod_i32(_wgslsmith_add_i32(reverseBits(var_2.c.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a.b.c.x, global0.a.x, global0.a.x), vec3<i32>(arg_0.c.x, global0.a.x, arg_0.c.x))), firstTrailingBit(i32(-1i) * -23784i));
}

fn func_1() -> Struct_5 {
    global1 = true;
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(398f, global0.b, global0.b))))), abs(1u), vec3<i32>(~func_2(Struct_1(vec3<f32>(global0.b, global0.b, 559f), 4294967295u, global0.a, u_input.a.x), vec2<bool>(true, false)), global0.a.x >> (u_input.a.x % 32u), global2.x & (i32(-1i) * -1i)), u_input.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(644f, -747f), 797f, _wgslsmith_f_op_f32(global0.b - 414f))), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 8092u, u_input.a.x), abs(u_input.a)), vec3<i32>(-1i, -2147483647i, firstLeadingBit(firstLeadingBit(12271i))), 1u << (~_wgslsmith_mod_u32(83568u, u_input.a.x) % 32u)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(~87990u >> (~u_input.a.x % 32u), ~u_input.a.x), ~4294967295u));
    let var_1 = ~u_input.a.x;
    var var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(_wgslsmith_div_i32(var_0.b.c.x, -2147483647i), 0i, min(global0.a.x, var_0.a.c.x)), reverseBits(abs(~global0.a)) & vec3<i32>(-2147483647i, firstTrailingBit(global0.a.x), global0.a.x));
    global2 = ~global0.a.zz;
    return Struct_5(_wgslsmith_div_vec3_i32(~vec3<i32>(_wgslsmith_mod_i32(-1i, global0.a.x), _wgslsmith_mod_i32(1i, 1i), _wgslsmith_mod_i32(var_0.a.c.x, 17270i)), abs(var_0.b.c) ^ var_0.a.c), _wgslsmith_f_op_f32(exp2(global0.b)), vec3<bool>(global0.c.x, !(!global0.c.x | true), !global0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    global0 = func_1();
    global2 = ~(~vec2<i32>(global0.a.x, 24829i));
    global0 = global3[_wgslsmith_index_u32(~37691u, 32u)];
    var var_0 = _wgslsmith_f_op_f32(-967f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-2061f, global0.b)), global0.b, true)))))));
    let var_1 = 4222i >> (~u_input.a.x % 32u);
    global3 = array<Struct_5, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(func_1().a.x)) ^ (i32(-1i) * -(global0.a.x >> (1u % 32u))), abs(~_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, global0.a.x, -39347i, -1879i), vec4<i32>(global2.x, global2.x, global0.a.x, 1i)), vec4<i32>(16546i, global2.x, global2.x, var_1) | vec4<i32>(global2.x, var_1, 6954i, global2.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.b), global0.b)), u_input.a.x, min(vec4<u32>(_wgslsmith_clamp_u32(37639u, 38840u, 1u), countOneBits(u_input.a.x), u_input.a.x, 39637u), _wgslsmith_sub_vec4_u32(vec4<u32>(52936u, u_input.a.x, 41446u, u_input.a.x) | vec4<u32>(29633u, u_input.a.x, u_input.a.x, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 6482u), vec4<u32>(69997u, 24507u, 17484u, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 42664u)))) << (_wgslsmith_mult_vec4_u32(~(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 2352u) ^ vec4<u32>(16837u, 10288u, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 22513u, u_input.a.x, u_input.a.x) >> (vec4<u32>(64138u, 31730u, 0u, 1u) % vec4<u32>(32u)), vec4<u32>(u_input.a.x, 27784u, 4294967295u, u_input.a.x))) % vec4<u32>(32u)));
}

