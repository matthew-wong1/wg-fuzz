struct Struct_1 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(32710u, 15762u, 0u, 10927u, 0u, 149u, 4294967295u, 4294967295u, 0u, 1u, 1u, 0u, 1u, 0u, 0u, 0u, 23309u, 23514u, 1056u, 10206u);

var<private> global1: f32;

var<private> global2: array<Struct_1, 3>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec2<u32> {
    let var_0 = Struct_1(vec3<bool>(true, false, all(vec4<bool>(true, select(false, false, false), true, true))), abs(_wgslsmith_mult_vec3_u32(~vec3<u32>(81241u, global0[_wgslsmith_index_u32(35881u, 20u)], 4294967295u), ~(~vec3<u32>(global0[_wgslsmith_index_u32(0u, 20u)], 4656u, global0[_wgslsmith_index_u32(u_input.b, 20u)])))), min(~(vec2<i32>(-2147483647i, -9656i) ^ vec2<i32>(u_input.c.x, u_input.c.x)), -u_input.a.xy) << (~max(~vec2<u32>(0u, 21966u), vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)), u_input.a);
    let var_1 = ~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(~u_input.b, 20u)], _wgslsmith_add_u32(~abs(91944u), ~(~global0[_wgslsmith_index_u32(54754u, 20u)])));
    let var_2 = Struct_1(!select(select(vec3<bool>(true, var_0.a.x, var_0.a.x), select(vec3<bool>(false, false, var_0.a.x), vec3<bool>(var_0.a.x, false, true), false), var_0.a.x), !var_0.a, var_0.a), max(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_1, 0u, u_input.b), vec3<u32>(u_input.b, var_1, var_0.b.x)), u_input.b, _wgslsmith_add_u32(43517u, 0u)), abs(~var_0.b)), select(-(~(vec2<i32>(-1i, u_input.e.x) & u_input.d.zx)), ~(-var_0.d.wx), !(!var_0.a.x)), u_input.c);
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    return _wgslsmith_add_vec2_u32(firstLeadingBit(~(~var_0.b.zx)) >> (~var_2.b.zz % vec2<u32>(32u)), var_0.b.yx);
}

fn func_2() -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-829f - -480f), _wgslsmith_f_op_f32(f32(-1f) * -654f)))));
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21349u, 20u)], 20u)], ~u_input.b | global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 20u)], 20u)], global0[_wgslsmith_index_u32(1730u, 20u)]), 20u)]), ~min(_wgslsmith_mod_vec2_u32(~vec2<u32>(global0[_wgslsmith_index_u32(41672u, 20u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28770u, 20u)], 20u)], 20u)], 20u)]), abs(vec2<u32>(global0[_wgslsmith_index_u32(60221u, 20u)], u_input.b))), _wgslsmith_mod_vec2_u32(func_3(), abs(vec2<u32>(17065u, u_input.b))))), 3u)];
    var var_1 = _wgslsmith_dot_vec4_i32(select(_wgslsmith_add_vec4_i32(var_0.d, u_input.c), select(u_input.c, var_0.d, !vec4<bool>(var_0.a.x, var_0.a.x, true, false)), !select(!vec4<bool>(true, var_0.a.x, false, var_0.a.x), select(vec4<bool>(true, var_0.a.x, false, var_0.a.x), vec4<bool>(var_0.a.x, false, true, var_0.a.x), vec4<bool>(false, true, var_0.a.x, true)), true)), _wgslsmith_div_vec4_i32(vec4<i32>(-7374i << (global0[_wgslsmith_index_u32(var_0.b.x, 20u)] % 32u), reverseBits(5122i), u_input.d.x, 4867i), _wgslsmith_mod_vec4_i32(var_0.d, vec4<i32>(u_input.c.x, var_0.d.x, -1i, var_0.d.x))) ^ var_0.d);
    var_1 = -(_wgslsmith_add_i32(firstLeadingBit(var_0.d.x), var_0.c.x) >> (firstLeadingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b.x, 20u)], 20u)]), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], u_input.b))) % 32u));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(firstLeadingBit(var_0.b.x), global0[_wgslsmith_index_u32(4294967295u << (_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 20u)], 1u) % 32u), 20u)]), 3u)];
    return global2[_wgslsmith_index_u32(~(~max(max(u_input.b, 1u) >> (min(1u, var_0.b.x) % 32u), abs(_wgslsmith_sub_u32(79960u, global0[_wgslsmith_index_u32(u_input.b, 20u)])))), 3u)];
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_1, 3>();
    let var_0 = func_2();
    let var_1 = func_2();
    global2 = array<Struct_1, 3>();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = Struct_1(vec3<bool>(true, true, true), vec3<u32>(abs(1u), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(33464u, 20u)], 40760u) << (~abs(82049u) % 32u), u_input.b), _wgslsmith_mult_vec2_i32(select(vec2<i32>(u_input.e.x, u_input.a.x) & u_input.c.xz, firstLeadingBit(_wgslsmith_add_vec2_i32(u_input.c.wx, u_input.e.yx)), false), _wgslsmith_mult_vec2_i32(~max(u_input.d.zy, vec2<i32>(0i, u_input.d.x)), ~vec2<i32>(15905i, 2592i))), vec4<i32>(11565i, countOneBits(min(-u_input.a.x, u_input.a.x)), countOneBits(-2658i) << (1u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(min(u_input.e.x, 0i), -56033i, ~0i, ~(-1i)), u_input.a << (_wgslsmith_sub_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(72128u, 20u)], u_input.b, 25665u, u_input.b), vec4<u32>(4294967295u, 27031u, 20634u, u_input.b)) % vec4<u32>(32u)))));
    let var_2 = global2[_wgslsmith_index_u32(u_input.b, 3u)];
    let var_3 = 8256i;
    global2 = array<Struct_1, 3>();
    let var_4 = Struct_1(vec3<bool>(all(vec2<bool>(var_1.a.x, true)) || (_wgslsmith_f_op_f32(-1851f - -301f) < _wgslsmith_f_op_f32(select(1701f, -1000f, false))), var_2.a.x && any(vec3<bool>(var_2.a.x, var_2.a.x, false)), !select(false, var_1.a.x, !var_2.a.x)), ~_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(var_1.b << (vec3<u32>(95117u, 44776u, 23167u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(var_1.b.x, global0[_wgslsmith_index_u32(u_input.b, 20u)], 4294967295u), var_1.b)), vec3<u32>(var_1.b.x, 1u, 0u) << (var_2.b % vec3<u32>(32u))), countOneBits(var_2.d.wz), var_1.d);
    var var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_5.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1158f, _wgslsmith_f_op_f32(1000f - 3403f), var_4.a.x)), _wgslsmith_f_op_f32(min(-1390f, _wgslsmith_f_op_f32(f32(-1f) * -2265f)))))), _wgslsmith_mult_i32(firstTrailingBit(var_3) ^ firstTrailingBit(-4842i), var_2.c.x), -(var_4.d.x ^ ((var_1.c.x << (664u % 32u)) ^ (i32(-1i) * -2147483647i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-987f)), 1274f));
}

