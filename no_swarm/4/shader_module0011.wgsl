struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<bool>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23> = array<bool, 23>(false, true, true, false, true, true, true, true, false, false, false, false, false, false, true, true, true, false, true, false, true, true, true);

var<private> global1: i32 = 23197i;

var<private> global2: vec3<f32>;

var<private> global3: vec3<i32> = vec3<i32>(9599i, 2147483647i, 146i);

var<private> global4: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(10512i, 0i, -1i), vec3<i32>(-2146i, 2147483647i, -21252i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec2<u32>) -> vec2<i32> {
    var var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(select(arg_2.x & arg_2.x, ~4294967295u, -1894i > u_input.a.x), 4294967295u >> (_wgslsmith_div_u32(44166u, 45945u) % 32u), abs(u_input.b)), ~(~vec3<u32>(arg_1.a, 4294967295u, 4294967295u))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(abs(1u), _wgslsmith_mult_u32(1u, 4294967295u), arg_0), _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, arg_2.x, arg_1.a), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.x, 4294967295u, arg_2.x), vec3<u32>(arg_2.x, arg_2.x, u_input.c)), ~vec3<u32>(4294967295u, 4294967295u, 1u))));
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 23u)];
    return -global3.xx;
}

fn func_2(arg_0: bool, arg_1: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(1828i, firstLeadingBit(global3.x), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(47387i, 2147483647i), -1i, 1i)), global4[_wgslsmith_index_u32(select(26832u, u_input.b, !select(true | global0[_wgslsmith_index_u32(83582u, 23u)], false, !arg_0)), 2u)], -vec3<i32>(~(-81588i) >> (select(37650u, arg_1.x, true) % 32u), countOneBits(firstTrailingBit(1i)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global3.x, global3.x), 41132i, _wgslsmith_mod_i32(-1i, u_input.a.x))));
    global1 = 2147483647i;
    let var_1 = ~_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a, -func_3(1u, Struct_2(42090u, -35346i, vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 23u)], true, false), -417f, Struct_1(var_0.x, vec2<bool>(global0[_wgslsmith_index_u32(6001u, 23u)], true), -25162i)), vec2<u32>(4294967295u, arg_1.x))), ~_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 10033i), -vec2<i32>(global3.x, u_input.a.x)));
    let var_2 = Struct_1(select(var_0.x, _wgslsmith_mult_i32(select(firstLeadingBit(u_input.a.x), _wgslsmith_mult_i32(1i, 18617i), false), 0i | var_1.x), true), select(vec2<bool>(true, true), vec2<bool>(false, all(vec4<bool>(true, arg_0, global0[_wgslsmith_index_u32(96095u, 23u)], false))), any(vec2<bool>(global0[_wgslsmith_index_u32(23188u, 23u)], any(vec3<bool>(true, arg_0, false))))), countOneBits(~(var_0.x ^ (var_1.x | var_1.x))));
    var var_3 = _wgslsmith_div_i32(i32(-1i) * -firstLeadingBit(~2147483647i), 2147483647i);
    return ~(-reverseBits(1i));
}

fn func_1() -> i32 {
    global1 = _wgslsmith_clamp_i32(global3.x, _wgslsmith_add_i32(1i, 1i), func_2(1u < u_input.c, vec4<u32>(countOneBits(u_input.b), u_input.c, abs(34488u), firstLeadingBit(u_input.c))) >> (_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 0u), u_input.b) % 32u));
    var var_0 = vec3<u32>(abs(18887u), abs(24253u), 1u) >> (~(~vec3<u32>(u_input.c, _wgslsmith_clamp_u32(29733u, u_input.c, 1u), 25171u)) % vec3<u32>(32u));
    var var_1 = select(abs(global3.yz), ~select(u_input.a << (_wgslsmith_sub_vec2_u32(var_0.xy, vec2<u32>(u_input.b, 16602u)) % vec2<u32>(32u)), select(min(global3.yz, vec2<i32>(49739i, u_input.a.x)), vec2<i32>(global3.x, global3.x) >> (var_0.zx % vec2<u32>(32u)), true), false), any(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 23u)]), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 23u)], true), vec2<bool>(false, false))));
    var_1 = ~abs(vec2<i32>(global3.x, 1i) << (var_0.yz % vec2<u32>(32u)));
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 23>();
    let var_0 = Struct_1(_wgslsmith_mod_i32(-5526i, 2147483647i), !vec2<bool>(_wgslsmith_f_op_f32(global2.x - global2.x) < global2.x, true), func_1());
    let var_1 = Struct_1(func_1(), vec2<bool>(var_0.b.x, var_0.b.x), -1607i);
    var var_2 = Struct_1(5038i, vec2<bool>(var_1.b.x, any(select(var_1.b, var_0.b, true))), -7734i >> (u_input.b % 32u));
    var var_3 = global0[_wgslsmith_index_u32(u_input.c, 23u)];
    let var_4 = false;
    var_3 = var_2.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

