struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(1u, 4294967295u, 4294967295u, 0u, 1u, 0u, 50784u, 1u, 11007u, 4294967295u, 27159u, 0u, 0u, 1u, 97680u, 1u, 4294967295u, 72373u, 8096u, 38920u, 0u, 23471u, 55578u, 1u);

var<private> global1: bool;

var<private> global2: array<Struct_2, 27>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: f32) -> i32 {
    let var_0 = Struct_1(true, ~abs(_wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, -19427i, u_input.a, 1968i), -vec4<i32>(arg_0, u_input.a, arg_0, -18984i), vec4<i32>(2147483647i, arg_0, 0i, u_input.a))));
    global1 = !arg_1;
    var var_1 = ~vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(30739u, 24u)], 46304u, global0[_wgslsmith_index_u32(u_input.b, 24u)]), vec3<u32>(1u, u_input.b, 54971u)) | global0[_wgslsmith_index_u32(u_input.b, 24u)]), _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global0[_wgslsmith_index_u32(45263u, 24u)], 6780u), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 1u)), abs(1u), ~1u), vec4<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 24u)], u_input.b), ~u_input.b, 1u, u_input.b)), 19908u, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~select(global0[_wgslsmith_index_u32(11124u, 24u)], 3489u, var_0.a), reverseBits(reverseBits(0u))), 24u)]);
    var_1 = ~(~firstLeadingBit(vec4<u32>(13596u, u_input.b, global0[_wgslsmith_index_u32(4294967295u, 24u)], 73373u))) ^ (~select(vec4<u32>(53891u, 0u, var_1.x, u_input.b), select(vec4<u32>(global0[_wgslsmith_index_u32(0u, 24u)], 9857u, var_1.x, 80206u), vec4<u32>(var_1.x, var_1.x, var_1.x, u_input.b), vec4<bool>(true, var_0.a, arg_1, false)), 17419u == var_1.x) & abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, 2544u, var_1.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(67434u, 24u)], 24u)]) & vec4<u32>(0u, 10760u, var_1.x, global0[_wgslsmith_index_u32(u_input.b, 24u)]), abs(vec4<u32>(u_input.b, var_1.x, 100332u, var_1.x)), ~vec4<u32>(var_1.x, u_input.b, 0u, u_input.b))));
    var var_2 = Struct_3(2147483647i, (any(select(vec2<bool>(arg_1, true), vec2<bool>(false, false), false)) || all(select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, true), arg_1))) || any(vec4<bool>(!arg_1, true, true, var_1.x >= 32862u)), ~_wgslsmith_sub_i32(-3135i, ~2147483647i >> (countOneBits(u_input.b) % 32u)), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44936u, 24u)], 27u)]);
    return i32(-1i) * -35002i;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec2_i32(~vec2<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, -23105i, -64413i), vec4<i32>(-1i, u_input.a, u_input.a, -2147483647i))), 0i), select(~vec2<i32>(abs(u_input.a), abs(u_input.a)), abs(max(vec2<i32>(-46299i, 0i), vec2<i32>(u_input.a, u_input.a))) | vec2<i32>(u_input.a, firstLeadingBit(37757i)), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 0i, 10860i), vec3<i32>(u_input.a, u_input.a, u_input.a)), -vec3<i32>(u_input.a, 4210i, 2257i)) >= 23682i));
    global2 = array<Struct_2, 27>();
    let var_1 = _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-331f)), arg_0))));
    var var_2 = ~var_0.x;
    let var_3 = Struct_3(~reverseBits(_wgslsmith_mod_i32(17533i, u_input.a) ^ 1i), (arg_0 > 299f) || (true | any(vec3<bool>(true, true, false))), _wgslsmith_sub_i32(func_3(-2147483647i, firstTrailingBit(0u) != arg_1.x, arg_0), i32(-1i) * -_wgslsmith_add_i32(var_0.x, u_input.a)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 24u)], ~(~abs(19735u))), 27u)]);
    return Struct_1(true, reverseBits(var_3.d.a.b & var_3.d.e.b));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> u32 {
    global1 = all(arg_1);
    global2 = array<Struct_2, 27>();
    global0 = array<u32, 24>();
    var var_0 = vec4<bool>(all(arg_1), true, all(select(select(arg_1.yz, select(arg_1.wy, arg_1.xw, arg_1.xy), select(vec2<bool>(true, arg_1.x), arg_1.yw, vec2<bool>(arg_1.x, arg_1.x))), vec2<bool>(true, arg_1.x), !arg_1.xz)), all(vec2<bool>(any(vec2<bool>(false, true)) || true, true)));
    var var_1 = func_2(1378f, abs(~(~vec4<u32>(34716u, global0[_wgslsmith_index_u32(u_input.b, 24u)], 32464u, 29049u))));
    return u_input.b;
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    let var_0 = Struct_3(arg_0.c.b.x, !any(vec3<bool>(true, true, true)), -2147483647i, Struct_2(arg_0.a, -835f, arg_0.e, func_2(_wgslsmith_f_op_f32(sign(1f)), ~(~vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34730u, 24u)], 24u)], u_input.b, 0u))).b, arg_0.e));
    var var_1 = Struct_2(var_0.d.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.b * arg_0.b) - var_0.d.b), Struct_1(true, (vec4<i32>(var_0.d.a.b.x, -2147483647i, u_input.a, var_0.a) >> (abs(vec4<u32>(23236u, global0[_wgslsmith_index_u32(4294967295u, 24u)], u_input.b, global0[_wgslsmith_index_u32(472u, 24u)])) % vec4<u32>(32u))) ^ firstTrailingBit(vec4<i32>(arg_0.e.b.x, -30775i, arg_0.c.b.x, -71924i))), vec4<i32>(0i, -27584i, ~((var_0.c | 19972i) << (~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 24u)], 24u)] % 32u)), func_3(u_input.a, false, _wgslsmith_f_op_f32(round(146f))) | _wgslsmith_clamp_i32(0i ^ arg_0.c.b.x, _wgslsmith_div_i32(var_0.d.e.b.x, var_0.c), 25347i | var_0.d.a.b.x)), arg_0.c);
    global2 = array<Struct_2, 27>();
    global2 = array<Struct_2, 27>();
    let var_2 = ~(-var_1.e.b.x << (_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(8208u, 1u), vec2<u32>(u_input.b, 0u)) >> ((1u | global0[_wgslsmith_index_u32(4294967295u, 24u)]) % 32u), ~u_input.b, 67949u) % 32u));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-815f, 465f) + vec2<f32>(1182f, 673f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(165f, _wgslsmith_f_op_f32(min(-382f, 1596f)))))));
    var var_1 = func_4(global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(func_1(201f, select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false))), u_input.b), 27u)]);
    var var_2 = var_1.d.c.a;
    var var_3 = var_1.d.b;
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(221f))))), _wgslsmith_f_op_f32(min(-364f, -1064f))));
    let x = u_input.a;
    s_output = StorageBuffer(32693u, var_1.d.d, 63625u, vec2<u32>(1u, ~countOneBits(~global0[_wgslsmith_index_u32(u_input.b, 24u)])));
}

