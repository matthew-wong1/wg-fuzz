struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_1 = Struct_1(-2785f, vec3<u32>(0u, 1u, 1998u), 16576i, vec3<u32>(4294967295u, 1u, 1414u));

var<private> global2: array<Struct_1, 8>;

var<private> global3: array<bool, 4> = array<bool, 4>(true, true, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    let var_0 = ~(vec3<i32>(-1i) * -(~select(vec3<i32>(global1.c, 1i, u_input.a.x), vec3<i32>(-1i, global1.c, 35152i), false)));
    global1 = Struct_1(367f, global1.b, max(u_input.a.x, 7826i), global1.b);
    var var_1 = vec4<i32>(~(-23765i), global1.c, ~(~firstTrailingBit(-10676i)) << (global1.d.x % 32u), var_0.x & _wgslsmith_dot_vec3_i32(select(min(vec3<i32>(-2002i, -474i, -9341i), var_0), vec3<i32>(-16476i, -16909i, global1.c), !vec3<bool>(global3[_wgslsmith_index_u32(global1.b.x, 4u)], global3[_wgslsmith_index_u32(u_input.c, 4u)], true)), max(var_0, vec3<i32>(u_input.a.x, u_input.a.x, var_0.x)) | vec3<i32>(var_0.x, -39417i, 0i)));
    var var_2 = var_0;
    var var_3 = global2[_wgslsmith_index_u32(1u, 8u)];
    return abs(var_3.d.x ^ (firstLeadingBit(firstLeadingBit(global1.b.x)) << (15555u % 32u)));
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(global1.a, ~(~(~vec3<u32>(4294967295u, 1u, arg_1.d.x))), 2147483647i, vec3<u32>(_wgslsmith_mult_u32(1u, ~2186u), ~_wgslsmith_mod_u32(~arg_1.d.x, func_3()), ~reverseBits(arg_1.b.x << (arg_1.d.x % 32u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(484f, arg_0, -351f, var_0.a))), vec4<f32>(global1.a, _wgslsmith_div_f32(-1553f, arg_1.a), _wgslsmith_div_f32(396f, -670f), var_0.a))))));
    global3 = array<bool, 4>();
    let var_2 = vec2<bool>(false, true);
    let var_3 = Struct_1(arg_0, var_0.b ^ ~(~min(vec3<u32>(3887u, arg_1.b.x, 89806u), global1.d)), reverseBits(~(-arg_1.c)), _wgslsmith_mult_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(global1.b.x, var_0.d.x, 9051u), u_input.b)), select(reverseBits(vec3<u32>(var_0.d.x, global1.b.x, var_0.b.x)) ^ abs(var_0.b), vec3<u32>(~4294967295u, var_0.d.x >> (4294967295u % 32u), firstTrailingBit(24103u)), vec3<bool>(true, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_0.d, var_0.b), 4u)], true))));
    return 11780u;
}

fn func_1() -> vec4<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.a)) + global1.a))), ~vec3<u32>(~global1.d.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.d.x, 69454u), vec2<u32>(global1.b.x, 0u)), global1.b.x, abs(global1.b.x)), ~69171u), 1773i, _wgslsmith_mod_vec3_u32(u_input.b, abs(global1.b) | vec3<u32>(global1.b.x, ~global1.b.x, _wgslsmith_dot_vec2_u32(global1.d.yz, vec2<u32>(global1.b.x, 38928u)))));
    global0 = -(~u_input.a.x);
    let var_1 = global2[_wgslsmith_index_u32(func_2(global1.a, var_0), 8u)];
    let var_2 = global2[_wgslsmith_index_u32(abs(23196u), 8u)];
    var var_3 = abs(_wgslsmith_sub_vec4_i32(firstLeadingBit(select(vec4<i32>(var_2.c, var_2.c, 2147483647i, var_1.c), vec4<i32>(var_1.c, global1.c, -1i, global1.c), false) << (firstTrailingBit(vec4<u32>(72429u, 10590u, u_input.c, var_2.b.x)) % vec4<u32>(32u))), select(firstLeadingBit(vec4<i32>(-19617i, -27481i, var_2.c, var_1.c) | vec4<i32>(8067i, 0i, var_2.c, -2183i)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global1.c, global1.c, u_input.a.x), vec4<i32>(-1i, var_0.c, var_2.c, -33509i)) ^ vec4<i32>(global1.c, var_2.c, var_1.c, -2147483647i), any(select(vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 4u)], true, false), vec4<bool>(global3[_wgslsmith_index_u32(7766u, 4u)], global3[_wgslsmith_index_u32(62336u, 4u)], global3[_wgslsmith_index_u32(28617u, 4u)], false), true)))));
    return -(~vec4<i32>(countOneBits(_wgslsmith_add_i32(global1.c, var_1.c)), var_3.x | -10875i, ~u_input.a.x | _wgslsmith_mult_i32(var_3.x, -55399i), select(12572i, min(var_2.c, 23108i), all(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 4u)], global3[_wgslsmith_index_u32(u_input.c, 4u)], global3[_wgslsmith_index_u32(315u, 4u)], false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a, global1.a, 141f) - vec3<f32>(-2272f, -189f, global1.a)), _wgslsmith_div_vec3_f32(vec3<f32>(2047f, 1159f, -1003f), vec3<f32>(-276f, -2204f, 1494f)), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b.x, 4u)], false)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.a, _wgslsmith_f_op_f32(-global1.a), global1.a))))));
    global1 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global1.d.x, ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.zy, global1.b.xy), ~vec2<u32>(1u, u_input.c))), 8u)];
    global2 = array<Struct_1, 8>();
    var var_1 = var_0.zz;
    let var_2 = global2[_wgslsmith_index_u32(min(~(~u_input.c), _wgslsmith_mod_u32(~(_wgslsmith_div_u32(global1.b.x, 1u) >> (~7277u % 32u)), 1u)), 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(func_1(), _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global1.c, var_2.c, -20613i, u_input.a.x), vec4<i32>(0i, u_input.a.x, -1i, var_2.c)), abs(vec4<i32>(-55614i, -57513i, global1.c, global1.c)))), max(vec4<i32>(firstTrailingBit(var_2.c), -u_input.a.x, u_input.a.x, -1i), -vec4<i32>(u_input.a.x, 1i, -1i, u_input.a.x))), abs(vec2<i32>(-40338i, select(var_2.c, -6635i, false))) >> (vec2<u32>(func_3(), max(global1.d.x, u_input.b.x << (46505u % 32u))) % vec2<u32>(32u)), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(1u, 119949u, 4294967295u, 160u) | _wgslsmith_add_vec4_u32(vec4<u32>(var_2.b.x, 4294967295u, var_2.b.x, var_2.d.x), vec4<u32>(var_2.d.x, var_2.d.x, 0u, u_input.c))), ~reverseBits(vec4<u32>(global1.b.x, 4294967295u, u_input.c, var_2.b.x)), vec4<u32>(abs(60500u), ~_wgslsmith_div_u32(33783u, 84564u), 4294967295u << (_wgslsmith_clamp_u32(1094u, u_input.b.x, 0u) % 32u), global1.d.x)), ~_wgslsmith_add_vec2_u32(abs(_wgslsmith_mod_vec2_u32(u_input.b.yx, vec2<u32>(global1.b.x, var_2.d.x))), var_2.d.zx >> (reverseBits(var_2.d.yz) % vec2<u32>(32u))));
}

