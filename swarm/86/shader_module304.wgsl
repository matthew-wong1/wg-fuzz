struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6>;

var<private> global1: array<Struct_1, 24>;

var<private> global2: u32;

var<private> global3: array<Struct_3, 11>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<bool>, arg_3: Struct_3) -> vec4<u32> {
    let var_0 = max(vec4<i32>(-2147483647i, _wgslsmith_mod_i32(-2147483647i, -u_input.e), abs(max(arg_0.a.c, arg_3.b)), abs(abs(20882i) | _wgslsmith_dot_vec4_i32(vec4<i32>(9280i, 2147483647i, arg_3.b, 2147483647i), vec4<i32>(u_input.e, arg_3.b, -30993i, u_input.e)))), min(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_3.a.c ^ u_input.e, ~arg_3.b, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.b, arg_0.a.c), vec2<i32>(-2147483647i, -2147483647i)), 0i), vec4<i32>(-44279i, -2147483647i, -u_input.e, 1i)), select(vec4<i32>(-31465i, 44148i ^ arg_0.b.c, ~arg_0.a.c, arg_3.b), -vec4<i32>(1i, arg_3.a.c, u_input.e, arg_0.a.c), any(arg_2))));
    global2 = ~arg_3.a.b.x;
    global0 = array<vec3<f32>, 6>();
    let var_1 = true && arg_2.x;
    var var_2 = reverseBits(u_input.e);
    return max(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b.x, 38122u, _wgslsmith_dot_vec3_u32(vec3<u32>(47913u, 4294967295u, 29902u), arg_3.a.b)), ~((vec4<u32>(arg_3.a.b.x, u_input.a, 38437u, 1u) ^ vec4<u32>(arg_0.a.b.x, 41091u, 39182u, arg_0.a.b.x)) | firstLeadingBit(vec4<u32>(1u, arg_3.a.b.x, u_input.b.x, 2421u)))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.b.x, ~0u, _wgslsmith_clamp_u32(u_input.d.x, 72650u, 4294967295u), _wgslsmith_mod_u32(u_input.c, 10819u)), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, arg_0.a.b.x, u_input.d.x, u_input.b.x), vec4<u32>(17886u, u_input.b.x, 40922u, arg_0.b.b.x)), vec4<u32>(4294967295u, 1u, 0u, 4294967295u)), min(vec4<u32>(u_input.d.x, u_input.c, arg_3.a.b.x, arg_0.a.b.x), ~vec4<u32>(u_input.d.x, 1u, 0u, 0u))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(reverseBits(~4294967295u >> (~(0u >> (u_input.c % 32u)) % 32u)), 24u)], global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, abs(_wgslsmith_div_u32(_wgslsmith_div_u32(74588u, 21257u), 18300u))), 24u)]);
    global2 = ~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.b.b.x, _wgslsmith_sub_u32(29375u, 1u), var_0.a.b.x), select(~vec4<u32>(5128u, 4294967295u, 26786u, u_input.b.x), func_3(var_0, var_0.b.a, vec4<bool>(false, var_0.a.a.x, true, var_0.b.a.x), Struct_3(Struct_1(vec2<bool>(false, false), u_input.b, 2147483647i), -1i)), var_0.b.a.x)));
    global2 = 1u;
    global3 = array<Struct_3, 11>();
    var var_1 = _wgslsmith_add_i32(select(~(-2147483647i >> (1u % 32u)), u_input.e, true) & _wgslsmith_add_i32(u_input.e, _wgslsmith_clamp_i32(~var_0.b.c, 19886i, ~u_input.e)), var_0.a.c ^ -2147483647i);
    return Struct_2(var_0.a, Struct_1(!var_0.b.a, var_0.b.b, 15329i));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_3 {
    global0 = array<vec3<f32>, 6>();
    let var_0 = ~(~_wgslsmith_mod_u32(0u, u_input.a));
    let var_1 = !vec3<bool>(arg_0.a.x, arg_2.b.a.x, arg_0.a.x);
    let var_2 = _wgslsmith_div_i32(0i, select(arg_0.c, 0i, true));
    var var_3 = 0u & (var_0 ^ _wgslsmith_add_u32(1u, select(func_3(arg_2, vec2<bool>(true, var_1.x), vec4<bool>(true, true, arg_2.b.a.x, arg_0.a.x), Struct_3(Struct_1(var_1.yz, vec3<u32>(var_0, arg_0.b.x, var_0), u_input.e), u_input.e)).x, _wgslsmith_mod_u32(var_0, u_input.c), arg_2.b.a.x)));
    return Struct_3(func_2().b, -44842i);
}

fn func_5(arg_0: Struct_3) -> vec2<bool> {
    global1 = array<Struct_1, 24>();
    global3 = array<Struct_3, 11>();
    let var_0 = vec2<u32>(_wgslsmith_dot_vec4_u32(select(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.b.x, 22743u, arg_0.a.b.x, arg_0.a.b.x), vec4<u32>(arg_0.a.b.x, arg_0.a.b.x, arg_0.a.b.x, 0u)), reverseBits(firstTrailingBit(vec4<u32>(arg_0.a.b.x, u_input.d.x, 0u, 0u))), vec4<bool>(all(vec3<bool>(arg_0.a.a.x, true, true)), true, true, all(vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, false, arg_0.a.a.x)))), abs(_wgslsmith_div_vec4_u32(~vec4<u32>(84877u, 8827u, arg_0.a.b.x, 0u), ~vec4<u32>(1u, 79851u, u_input.a, u_input.a)))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(19290u, 1u, u_input.d.x, 1u), ~vec4<u32>(arg_0.a.b.x, arg_0.a.b.x, u_input.c, 30094u)), func_3(Struct_2(arg_0.a, arg_0.a), func_4(Struct_1(vec2<bool>(true, arg_0.a.a.x), arg_0.a.b, arg_0.b), global0[_wgslsmith_index_u32(arg_0.a.b.x, 6u)], Struct_2(Struct_1(arg_0.a.a, vec3<u32>(u_input.a, arg_0.a.b.x, u_input.a), arg_0.b), global1[_wgslsmith_index_u32(u_input.c, 24u)])).a.a, select(vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, true), vec4<bool>(true, arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x), arg_0.a.a.x), Struct_3(global1[_wgslsmith_index_u32(arg_0.a.b.x, 24u)], -1i))));
    global1 = array<Struct_1, 24>();
    let var_1 = arg_0;
    return var_1.a.a;
}

fn func_1(arg_0: f32, arg_1: f32) -> u32 {
    let var_0 = 43658u;
    global0 = array<vec3<f32>, 6>();
    let var_1 = _wgslsmith_add_i32(countOneBits(_wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e, u_input.e, -1i, -2257i), vec4<i32>(u_input.e, u_input.e, -181i, 50814i)), vec4<i32>(u_input.e ^ -1i, u_input.e, u_input.e, _wgslsmith_mult_i32(u_input.e, -2147483647i)))), 12567i << (_wgslsmith_div_u32(min(u_input.c, _wgslsmith_mult_u32(var_0, u_input.b.x)), 15433u) % 32u));
    global2 = _wgslsmith_dot_vec4_u32(abs(_wgslsmith_add_vec4_u32(reverseBits(~vec4<u32>(4294967295u, u_input.d.x, 87683u, u_input.d.x)), select(~vec4<u32>(6106u, var_0, 35156u, 0u), vec4<u32>(u_input.d.x, 1u, 1u, 58008u), vec4<bool>(true, true, true, true)))), reverseBits(_wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.a, 12369u, 0u, 14528u), vec4<u32>(30391u, var_0, u_input.d.x, 1u), true), vec4<u32>(u_input.b.x, 37592u, var_0, u_input.b.x)) ^ ~firstLeadingBit(vec4<u32>(var_0, var_0, u_input.c, var_0))));
    let var_2 = Struct_1(func_5(func_4(global1[_wgslsmith_index_u32(~15581u, 24u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, arg_0, -1012f)) * vec3<f32>(arg_0, 2158f, -1000f)), func_2())), vec3<u32>(u_input.d.x, countOneBits(countOneBits(_wgslsmith_mod_u32(u_input.a, var_0))), 64265u), ~(-abs(2837i) | -(var_1 & u_input.e)));
    return _wgslsmith_sub_u32(func_2().b.b.x | func_2().a.b.x, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 4294967295u;
    let var_0 = u_input.d.x;
    global3 = array<Struct_3, 11>();
    var var_1 = _wgslsmith_mult_u32(u_input.a, var_0);
    global2 = 17315u;
    let x = u_input.a;
    s_output = StorageBuffer(3180u, 2147483647i, _wgslsmith_mult_vec3_i32(min(-vec3<i32>(-2374i, u_input.e, 30031i), vec3<i32>(u_input.e, u_input.e, _wgslsmith_clamp_i32(u_input.e, u_input.e, 60685i))), -vec3<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.e), vec2<i32>(u_input.e, 0i)), ~u_input.e)), -525f, (func_1(_wgslsmith_f_op_f32(f32(-1f) * -1692f), 1801f) & var_0) & (countOneBits(110538u) >> (var_0 % 32u)));
}

