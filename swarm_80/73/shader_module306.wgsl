struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(-1i, 0i, vec3<i32>(2147483647i, -3716i, -1i), vec3<f32>(-397f, 1835f, -923f));

var<private> global1: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(31278i, 0i, 52665i, 1i), vec4<i32>(-14874i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(1i, -45190i, -59812i, 2147483647i), vec4<i32>(-18692i, 1i, -30076i, -9309i), vec4<i32>(14923i, 1i, 1i, 4871i), vec4<i32>(-1i, 38466i, 2147483647i, 43643i), vec4<i32>(0i, 3343i, 0i, -1i), vec4<i32>(1i, 15046i, 2147483647i, 2147483647i), vec4<i32>(73049i, 1i, 32679i, 45585i), vec4<i32>(34657i, i32(-2147483648), -1i, 1i), vec4<i32>(43186i, 2147483647i, 0i, 3348i), vec4<i32>(-1i, 0i, -18311i, 35610i), vec4<i32>(33558i, -1i, 31396i, 20657i), vec4<i32>(62198i, -3614i, -28484i, 0i), vec4<i32>(-11660i, 7003i, -1i, 0i), vec4<i32>(1i, 0i, -2971i, 51132i), vec4<i32>(-1i, -24425i, -11676i, 1i), vec4<i32>(-13959i, -1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-1i, 6869i, i32(-2147483648), -29958i), vec4<i32>(1i, -10292i, 61030i, -28209i), vec4<i32>(25867i, 30133i, 5128i, 2147483647i), vec4<i32>(0i, -33211i, 26422i, -11994i), vec4<i32>(-1i, -76501i, 20004i, -1i), vec4<i32>(2147483647i, 37327i, 0i, -3358i), vec4<i32>(-1i, -8554i, 19023i, 29139i), vec4<i32>(0i, -32162i, 0i, 34033i), vec4<i32>(-56975i, -24468i, 2147483647i, 0i));

var<private> global2: array<Struct_4, 4>;

var<private> global3: array<u32, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<bool> {
    global2 = array<Struct_4, 4>();
    let var_0 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(abs(~73768u), 11u)], 11u)], 55504u, u_input.a, 0u), vec4<u32>(42498u, _wgslsmith_dot_vec2_u32(~vec2<u32>(68864u, 0u) | select(vec2<u32>(u_input.a, 68007u), vec2<u32>(u_input.a, u_input.a), vec2<bool>(false, false)), ~(~vec2<u32>(1u, 0u))), ~(~reverseBits(18151u)), _wgslsmith_mult_u32(abs(countOneBits(8147u)), global3[_wgslsmith_index_u32(~10118u >> (_wgslsmith_clamp_u32(109186u, u_input.a, u_input.a) % 32u), 11u)])), vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(firstLeadingBit(u_input.a), 11u)] & u_input.a, u_input.a, _wgslsmith_mod_u32(1u ^ ~u_input.a, u_input.a)));
    global3 = array<u32, 11>();
    let var_1 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global0.d.x)))) - 616f), _wgslsmith_f_op_f32(1000f * global0.d.x), global0.d.x), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-583f, 739f) - _wgslsmith_f_op_f32(step(global0.d.x, global0.d.x))) * 1107f), _wgslsmith_mod_i32(firstTrailingBit(27166i), _wgslsmith_sub_i32(global0.c.x << (u_input.a % 32u), 0i)), Struct_1(true, (var_0 | vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(83140u, 11u)], 11u)], 1u, 4294967295u, 30468u)) ^ (var_0 | vec4<u32>(0u, 4294967295u, 14653u, var_0.x))), u_input.b.x, Struct_1(true, firstTrailingBit(vec4<u32>(0u, var_0.x, 58826u, 57803u)))), 4294967295u != _wgslsmith_clamp_u32(~var_0.x << (_wgslsmith_dot_vec3_u32(var_0.ywy, var_0.wzx) % 32u), ~(~4294967295u), 1u), max(reverseBits(u_input.a), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 11u)], 11u)]));
    let var_2 = min(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -2147483647i, select(var_1.b.b, ~(-4324i), var_1.c), -2147483647i), vec4<i32>(4184i, u_input.b.x, _wgslsmith_add_i32(2147483647i, -22389i | global0.b), ~var_1.b.d)), select(_wgslsmith_mult_vec4_i32(u_input.b, min(_wgslsmith_clamp_vec4_i32(vec4<i32>(16147i, global0.b, 24447i, global0.c.x), vec4<i32>(var_1.b.d, -1i, global0.b, u_input.b.x), vec4<i32>(42850i, u_input.b.x, -2763i, 1i)), vec4<i32>(-26981i, 21799i, 1i, -1i))), abs(-u_input.b), var_1.c));
    return vec3<bool>(all(vec3<bool>(true, true, true)), all(select(select(select(vec3<bool>(var_1.c, var_1.c, false), vec3<bool>(var_1.c, var_1.b.c.a, var_1.b.e.a), var_1.c), vec3<bool>(true, var_1.c, var_1.c), var_1.b.c.a), vec3<bool>(var_1.b.c.a, var_1.b.e.a, global3[_wgslsmith_index_u32(1u, 11u)] != 45752u), select(vec3<bool>(false, var_1.b.c.a, var_1.b.c.a), select(vec3<bool>(false, var_1.b.c.a, false), vec3<bool>(false, var_1.c, var_1.b.c.a), var_1.c), var_1.c))), all(select(select(select(vec4<bool>(var_1.b.e.a, false, var_1.b.e.a, var_1.b.c.a), vec4<bool>(var_1.c, var_1.c, false, var_1.c), vec4<bool>(var_1.b.c.a, false, false, var_1.c)), !vec4<bool>(true, false, var_1.b.c.a, true), select(vec4<bool>(false, var_1.b.e.a, false, var_1.c), vec4<bool>(var_1.b.e.a, var_1.c, var_1.b.c.a, var_1.c), var_1.c)), !vec4<bool>(true, false, false, var_1.c), select(vec4<bool>(false, var_1.b.c.a, var_1.b.e.a, false), !vec4<bool>(false, var_1.b.e.a, false, var_1.c), !vec4<bool>(var_1.b.c.a, true, false, true)))));
}

fn func_2() -> u32 {
    global2 = array<Struct_4, 4>();
    var var_0 = Struct_1(!all(func_3()), (min(_wgslsmith_mult_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 11u)], 11u)], global3[_wgslsmith_index_u32(4294967295u, 11u)], 4294967295u, 4294967295u), vec4<u32>(14609u, 0u, u_input.a, 1u)), abs(vec4<u32>(u_input.a, 0u, 1u, global3[_wgslsmith_index_u32(1u, 11u)]))) & vec4<u32>(_wgslsmith_mod_u32(23921u, global3[_wgslsmith_index_u32(0u, 11u)]), ~4294967295u, _wgslsmith_add_u32(u_input.a, 0u), ~global3[_wgslsmith_index_u32(24825u, 11u)])) ^ select(vec4<u32>(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(u_input.a, 11u)], global3[_wgslsmith_index_u32(u_input.a, 11u)]), 1u, global3[_wgslsmith_index_u32(4294967295u, 11u)], ~global3[_wgslsmith_index_u32(43887u, 11u)]), ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(0u, 11u)], u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, 70007u, 1868u)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true))));
    var var_1 = !var_0.a;
    var var_2 = Struct_3(global0.d, Struct_2(global0.d.x, u_input.b.x, Struct_1(true & func_3().x, countOneBits(var_0.b ^ var_0.b)), -1i, Struct_1(!var_0.a, min(vec4<u32>(52015u, 4294967295u, var_0.b.x, 0u), vec4<u32>(0u, u_input.a, var_0.b.x, global3[_wgslsmith_index_u32(1u, 11u)])) | select(var_0.b, var_0.b, var_0.a))), var_0.b.x != _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 22626u) >> (0u % 32u), 11u)], select(~0u, ~u_input.a, !var_0.a)), max(~0u, _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(15683u, 11u)], 1u) << (u_input.a % 32u)));
    let var_3 = -1436f;
    return var_2.d;
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = func_2();
    let var_1 = ~(~countOneBits(arg_0.b.yz));
    var var_2 = var_1;
    let var_3 = !vec4<bool>(false, all(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), arg_0.a, func_3().x);
    var var_4 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, global0.d.x, global0.d.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(global0.d, global0.d, vec3<bool>(arg_0.a, arg_0.a, arg_0.a)))))))), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-368f)), _wgslsmith_f_op_f32(-global0.d.x))))), global0.b, Struct_1(var_3.x, arg_0.b), ~_wgslsmith_add_i32(-4001i ^ u_input.b.x, 0i), Struct_1(var_3.x, _wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_1.x, var_2.x, global3[_wgslsmith_index_u32(60876u, 11u)]) ^ vec4<u32>(38857u, 4294967295u, var_1.x, u_input.a), vec4<u32>(var_2.x, 24037u, u_input.a, u_input.a)))), false, _wgslsmith_sub_u32(4294967295u << (_wgslsmith_mod_u32(~arg_0.b.x, ~global3[_wgslsmith_index_u32(23242u, 11u)]) % 32u), ~global3[_wgslsmith_index_u32(arg_0.b.x, 11u)]));
    return ~(~(~u_input.a));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<f32>) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-471f * arg_2.x) - _wgslsmith_div_f32(arg_2.x, arg_2.x)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global0.d)) + vec3<f32>(295f, _wgslsmith_f_op_f32(min(212f, -191f)), arg_2.x));
    return Struct_5(-4646i ^ select(8390i, -global0.b, any(func_3().xx)), max(~(-_wgslsmith_mod_i32(u_input.b.x, -2147483647i)), i32(-1i) * -33226i), firstTrailingBit(max(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, 0i, u_input.b.x), u_input.b.xzy)), _wgslsmith_mult_vec3_i32(vec3<i32>(-60746i, 18010i, global0.b), global0.c))), vec3<f32>(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1737f, 374f) * _wgslsmith_f_op_f32(abs(var_1.x))) * var_0), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-global0.d.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 27>();
    var var_0 = func_4(func_1(Struct_1(any(vec2<bool>(false, true)) & any(vec4<bool>(false, false, true, false)), max(vec4<u32>(0u, u_input.a, 1u, 4583u) & vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(8086u, 11u)], global3[_wgslsmith_index_u32(u_input.a, 11u)], global3[_wgslsmith_index_u32(40822u, 11u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 25812u, global3[_wgslsmith_index_u32(35649u, 11u)]), vec4<u32>(54132u, u_input.a, 89276u, global3[_wgslsmith_index_u32(u_input.a, 11u)])))), -31295i), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(global0.d.x, _wgslsmith_f_op_f32(-global0.d.x)), 200f, -1020f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.d, global0.d) - _wgslsmith_f_op_vec3_f32(global0.d + vec3<f32>(474f, -1076f, global0.d.x)))))));
    var_0 = Struct_5(var_0.a, -1i, vec3<i32>(u_input.b.x, abs(7825i), firstTrailingBit(_wgslsmith_clamp_i32(func_4(u_input.a, vec4<bool>(false, true, false, false), vec3<f32>(611f, 444f, var_0.d.x)).b, -2147483647i, 12717i))), _wgslsmith_f_op_vec3_f32(-global0.d));
    global1 = array<vec4<i32>, 27>();
    global2 = array<Struct_4, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, 39366u), 3503u, 64616u >> (global3[_wgslsmith_index_u32(72332u, 11u)] % 32u), ~global3[_wgslsmith_index_u32(u_input.a, 11u)]), firstTrailingBit(min(vec4<u32>(global3[_wgslsmith_index_u32(u_input.a, 11u)], u_input.a, global3[_wgslsmith_index_u32(4294967295u, 11u)], u_input.a), vec4<u32>(global3[_wgslsmith_index_u32(u_input.a, 11u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 11u)], 11u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(21853u, 11u)], 11u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 11u)], 11u)])))));
}

