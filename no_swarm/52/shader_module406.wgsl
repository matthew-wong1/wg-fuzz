struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: u32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30>;

var<private> global1: array<vec2<bool>, 8>;

var<private> global2: array<i32, 7>;

var<private> global3: array<Struct_3, 20>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: bool) -> Struct_4 {
    global1 = array<vec2<bool>, 8>();
    global3 = array<Struct_3, 20>();
    global2 = array<i32, 7>();
    global0 = array<vec3<i32>, 30>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-472f, -415f)), _wgslsmith_f_op_f32(ceil(403f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1815f))) + _wgslsmith_f_op_f32(ceil(-1155f)));
    return Struct_4(vec4<i32>(-1i) * -vec4<i32>(~56274i, 0i | global2[_wgslsmith_index_u32(u_input.b.x, 7u)], u_input.a, 1i), reverseBits(vec2<i32>(_wgslsmith_mult_i32(-1i, u_input.a) ^ -1i, reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(2271u, 0u, u_input.c), 7u)]))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: f32) -> vec2<i32> {
    let var_0 = arg_1.c;
    global2 = array<i32, 7>();
    let var_1 = firstTrailingBit(-1i);
    let var_2 = arg_1.c;
    global1 = array<vec2<bool>, 8>();
    return abs(~abs(func_1(arg_1.c.c.b).b));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(-_wgslsmith_clamp_vec2_i32(-max(vec2<i32>(-53754i, global2[_wgslsmith_index_u32(28705u, 7u)]), vec2<i32>(0i, 5601i)), func_3(func_1(false), Struct_3(45961u, u_input.c, Struct_2(Struct_1(vec2<i32>(-10550i, 0i), false, u_input.c, arg_0, -41484i), Struct_1(vec2<i32>(-53365i, global2[_wgslsmith_index_u32(u_input.c, 7u)]), true, 4294967295u, u_input.a, -31810i), Struct_1(vec2<i32>(-2147483647i, 1i), false, u_input.b.x, global2[_wgslsmith_index_u32(4294967295u, 7u)], 48587i))), _wgslsmith_div_f32(217f, -733f)), firstLeadingBit(vec2<i32>(arg_0, u_input.a))), true, ~abs(~_wgslsmith_dot_vec2_u32(u_input.b, u_input.b)), abs(func_1(any(vec3<bool>(false, true, true))).a.x ^ -31647i), func_1(true).b.x);
    var var_1 = Struct_1(vec2<i32>(_wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(var_0.c, 7u)], var_0.d, var_0.a.x), 0i), any(!vec2<bool>(true, var_0.b)), 92860u, ~_wgslsmith_div_i32(func_1(true).b.x & u_input.a, func_1(!var_0.b).a.x), _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(1u, 7u)], func_3(Struct_4(~vec4<i32>(-2147483647i, -1i, arg_0, 0i), ~vec2<i32>(u_input.a, -1i)), Struct_3(_wgslsmith_dot_vec2_u32(u_input.b, u_input.b), 14441u, Struct_2(Struct_1(vec2<i32>(1i, 2147483647i), true, 21562u, -1i, global2[_wgslsmith_index_u32(0u, 7u)]), Struct_1(var_0.a, var_0.b, 0u, -2147483647i, 0i), Struct_1(vec2<i32>(12556i, u_input.a), false, 1u, arg_0, arg_0))), _wgslsmith_f_op_f32(-683f + _wgslsmith_f_op_f32(floor(-1499f)))).x));
    let var_2 = var_1.d >> (var_1.c % 32u);
    let var_3 = func_1(true);
    global1 = array<vec2<bool>, 8>();
    return Struct_1(vec2<i32>(var_3.b.x ^ ~20365i, 0i) & _wgslsmith_mult_vec2_i32(firstTrailingBit(var_0.a), ~var_0.a), any(select(vec3<bool>(true, any(vec4<bool>(var_0.b, false, var_0.b, var_0.b)), var_1.a.x >= -1i), !vec3<bool>(var_1.b, true, var_1.b), vec3<bool>(var_0.b, select(var_0.b, var_1.b, var_1.b), var_1.b))), 35238u & _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(u_input.b >> (vec2<u32>(var_0.c, 62195u) % vec2<u32>(32u)), u_input.b), _wgslsmith_mod_u32(var_0.c, var_0.c & u_input.c), u_input.c), ~var_1.d, 2921i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 7>();
    var var_0 = func_1(!all(vec2<bool>(all(vec3<bool>(false, true, true)), false)));
    let var_1 = true;
    var var_2 = var_0.b;
    var var_3 = func_2(_wgslsmith_sub_i32(~u_input.a | (global2[_wgslsmith_index_u32(27041u, 7u)] | -2147483647i), 47802i));
    var_0 = func_1(any(!select(!global1[_wgslsmith_index_u32(4294967295u, 8u)], vec2<bool>(true, true), select(global1[_wgslsmith_index_u32(u_input.c, 8u)], global1[_wgslsmith_index_u32(u_input.c, 8u)], vec2<bool>(true, false)))));
    let var_4 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(u_input.b.x, 30u)], vec4<u32>(_wgslsmith_clamp_u32(countOneBits(_wgslsmith_mod_u32(var_3.c, u_input.b.x)), ~23686u, _wgslsmith_mod_u32(1u, ~10756u)), var_3.c, var_3.c, _wgslsmith_sub_u32(var_3.c, 10734u)));
}

