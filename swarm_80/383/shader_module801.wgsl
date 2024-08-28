struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: vec3<i32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> vec4<u32> {
    let var_0 = -u_input.c;
    var var_1 = abs(86253u);
    var var_2 = Struct_2(arg_2, arg_2, global1.yy ^ abs(abs(vec2<i32>(1i, 2147483647i) ^ vec2<i32>(arg_1, global1.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(min(arg_0.yyx, vec3<i32>(u_input.c, global1.x, arg_1)), firstLeadingBit(vec3<i32>(arg_0.x, arg_1, var_0))), arg_1 & global1.x, arg_1), arg_0.yyy));
    var_2 = Struct_2(Struct_1(select(!var_2.a.a, select(!vec2<bool>(arg_2.a.x, var_2.a.a.x), var_2.b.a, var_2.b.a.x), arg_3), arg_2.b), Struct_1(arg_2.a, vec3<u32>(arg_2.b.x, 1u | var_2.b.b.x, select(59696u, var_2.a.b.x, arg_3)) ^ arg_2.b), var_2.c, u_input.c);
    let var_3 = ~vec4<i32>(abs(1i), firstLeadingBit(u_input.c), 1i, arg_1) << (vec4<u32>(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(arg_2.b.x, arg_2.b.x, 50303u, arg_2.b.x)), ~_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.b.x, 14338u, 1u, 0u), vec4<u32>(var_2.b.b.x, 15228u, var_2.b.b.x, u_input.b))), arg_2.b.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.b.b.x, var_2.b.b.x, var_2.a.b.x, arg_2.b.x), vec4<u32>(u_input.d.x, 4294967295u, 4294967295u, arg_2.b.x)), u_input.d.x) >> (~_wgslsmith_div_u32(arg_2.b.x, 0u) % 32u), ~(1u | u_input.d.x)) % vec4<u32>(32u));
    return max(vec4<u32>(~(~countOneBits(1u)), 40012u, firstLeadingBit(~min(49076u, arg_2.b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_2.b.x), var_2.a.b.zz), _wgslsmith_mod_u32(82814u, 83073u)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, u_input.d.x), vec4<u32>(u_input.a, 66003u, 4294967295u, 0u)))), min((select(vec4<u32>(arg_2.b.x, var_2.a.b.x, u_input.a, 52636u), vec4<u32>(arg_2.b.x, arg_2.b.x, 5262u, 2741u), arg_3) ^ abs(vec4<u32>(1u, arg_2.b.x, arg_2.b.x, u_input.a))) ^ firstLeadingBit(abs(vec4<u32>(36489u, arg_2.b.x, var_2.b.b.x, 1u))), min(~firstTrailingBit(vec4<u32>(arg_2.b.x, 1u, u_input.b, 25811u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a.b.x, var_2.b.b.x, 76964u, 4294967295u), vec4<u32>(u_input.a, var_2.b.b.x, 65843u, var_2.a.b.x)), ~vec4<u32>(79401u, 8685u, var_2.a.b.x, arg_2.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 9503u, 1u, var_2.b.b.x), vec4<u32>(1u, u_input.b, u_input.a, var_2.b.b.x))))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_3 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(~49495u, var_0.b.x, var_0.b.x ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.b.x, arg_0.b.x), vec2<u32>(var_0.b.x, arg_0.b.x)), u_input.d.x), _wgslsmith_sub_vec4_u32(max(vec4<u32>(7500u, ~1u, 7350u, arg_0.b.x), vec4<u32>(arg_0.b.x, 4294967295u, 12501u, 9760u) ^ ~vec4<u32>(u_input.d.x, u_input.b, u_input.b, 42643u)), ~(~func_3(vec4<i32>(global1.x, 31368i, 33717i, u_input.c), global1.x, Struct_1(vec2<bool>(var_0.a.x, arg_0.a.x), vec3<u32>(var_0.b.x, arg_0.b.x, 38901u)), true))));
    var var_2 = Struct_2(arg_0, arg_0, global1.xx, _wgslsmith_dot_vec3_i32(select(select(vec3<i32>(global1.x, global1.x, 46866i), firstTrailingBit(vec3<i32>(u_input.c, -2147483647i, global1.x)), true), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, global1.x, 4473i), vec3<i32>(-2147483647i, -1i, global1.x), vec3<i32>(0i, u_input.c, -1i)) << (abs(var_0.b) % vec3<u32>(32u)), !select(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, false, true), true)), ~(~vec3<i32>(1i, -2422i, 0i)) | _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, global1.x, u_input.c) & vec3<i32>(global1.x, u_input.c, global1.x), vec3<i32>(global1.x, 31801i, 1i))));
    var var_3 = var_1.x;
    var_0 = var_2.b;
    return global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(func_3(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, -6417i, -1i, -1i), vec4<i32>(0i, 1i, u_input.c, u_input.c)), vec4<i32>(u_input.c, u_input.c, u_input.c, var_2.c.x)), -global1.x << (_wgslsmith_div_u32(36980u, u_input.b) % 32u), Struct_1(select(arg_0.a, arg_0.a, false), ~vec3<u32>(var_0.b.x, var_0.b.x, 4294967295u)), false).xyz, vec3<u32>(4767u, reverseBits(~var_1.x), var_2.b.b.x)), 18u)];
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<f32>) -> vec4<u32> {
    var var_0 = ~(-abs(vec2<i32>(arg_0.d, global1.x)) & vec2<i32>(-global1.x, abs(abs(2147483647i))));
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(reverseBits(~arg_0.b.b.x | arg_0.b.b.x), ~(~2643u)), 18u)];
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), 1288f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -441f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1761f, -641f, arg_0.b.a.x)), _wgslsmith_f_op_f32(arg_2.x * arg_2.x))) + _wgslsmith_f_op_f32(-arg_2.x))));
    let var_3 = func_2(arg_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.x, -924f, false)) * _wgslsmith_f_op_f32(step(var_2.x, arg_2.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))));
    let var_4 = _wgslsmith_f_op_vec3_f32(select(arg_2.xxx, _wgslsmith_f_op_vec3_f32(step(arg_2.xzw, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_f32(-var_2.x), var_2.x))), true));
    return ~(~abs(~(~vec4<u32>(1u, 4294967295u, arg_0.b.b.x, 6282u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: f32) -> vec3<u32> {
    var var_0 = Struct_3(~(global1.x << (1u % 32u)), countOneBits(-countOneBits(u_input.c) | global1.x), ~u_input.d.x);
    global0 = array<Struct_3, 18>();
    var var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-269f)))), -671f, _wgslsmith_f_op_f32(-arg_1), 290f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec4<f32>(arg_1, -381f, arg_1, arg_1))))))));
    let var_2 = vec4<f32>(arg_1, 1371f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1 - var_1.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -1167f));
    return _wgslsmith_clamp_vec3_u32(select(select(vec3<u32>(_wgslsmith_mod_u32(66901u, var_0.c), ~34802u, abs(var_0.c)), vec3<u32>(func_3(vec4<i32>(-54552i, global1.x, global1.x, var_0.b), global1.x, Struct_1(vec2<bool>(false, true), vec3<u32>(1u, 51657u, 38489u)), false).x, 4294967295u >> (arg_0.x % 32u), 96689u), ~2147483647i > global1.x), arg_0, all(select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), any(vec2<bool>(true, true))))), abs(abs(firstLeadingBit(vec3<u32>(44192u, 1u, arg_0.x)))), min(func_1(Struct_2(Struct_1(vec2<bool>(false, true), arg_0), Struct_1(vec2<bool>(false, false), arg_0), vec2<i32>(global1.x, global1.x) >> (vec2<u32>(var_0.c, u_input.d.x) % vec2<u32>(32u)), 1i), select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false)), vec4<bool>(false, false, false, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2 * vec4<f32>(var_1.x, arg_1, -374f, 427f)))).zwz, func_1(Struct_2(Struct_1(vec2<bool>(true, false), arg_0), Struct_1(vec2<bool>(true, false), vec3<u32>(var_0.c, var_0.c, u_input.b)), ~global1.zx, -2147483647i), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2 + var_2))).xxy));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<i32>(firstTrailingBit(~(_wgslsmith_mod_i32(global1.x, -1i) >> (u_input.d.x % 32u))), global1.x, -global1.x);
    global0 = array<Struct_3, 18>();
    let var_0 = u_input.a;
    var var_1 = (90122u > (0u >> (min(1u, 4294967295u & var_0) % 32u))) != false;
    var var_2 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(vec3<u32>(select(firstTrailingBit(16606u), _wgslsmith_add_u32(var_0, u_input.d.x), true), _wgslsmith_dot_vec4_u32(func_1(Struct_2(Struct_1(vec2<bool>(true, false), vec3<u32>(u_input.d.x, 7981u, 0u)), Struct_1(vec2<bool>(false, true), vec3<u32>(51671u, 0u, 55116u)), global1.zx, u_input.c), vec4<bool>(true, false, true, true), vec4<f32>(302f, 321f, -986f, 1839f)), vec4<u32>(u_input.b, 0u, 46955u, u_input.b) & vec4<u32>(var_0, u_input.a, 126061u, 0u)), u_input.a), 362f), var_0, ~(-global1.x), _wgslsmith_mod_i32(i32(-1i) * -global1.x, u_input.c) >> (firstLeadingBit(_wgslsmith_dot_vec2_u32(func_3(vec4<i32>(global1.x, 1860i, -1i, -31412i), -6662i, Struct_1(vec2<bool>(false, false), vec3<u32>(var_0, u_input.b, 4294967295u)), true).zw, u_input.d << (u_input.d % vec2<u32>(32u)))) % 32u));
}

