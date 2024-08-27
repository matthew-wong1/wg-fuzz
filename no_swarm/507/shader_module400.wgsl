struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 6>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    return _wgslsmith_add_i32(~(global0.c.x & reverseBits(1i)), -u_input.c);
}

fn func_2() -> f32 {
    var var_0 = reverseBits(vec3<i32>(-10193i | -u_input.d.x, 1i, func_3()) | min(vec3<i32>(-2147483647i, -29106i & global0.c.x, min(17283i, -1i)), ~vec3<i32>(global0.c.x, global0.c.x, u_input.a.x)));
    var var_1 = ~_wgslsmith_mult_vec4_u32(reverseBits(~vec4<u32>(4294967295u, 6564u, u_input.b.x, u_input.b.x)), select(vec4<u32>(u_input.b.x, u_input.b.x, 58089u, u_input.b.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 74914u, 21998u, u_input.b.x), vec4<u32>(u_input.b.x, 1u, 24402u, u_input.b.x)), true)) >> (~(~firstTrailingBit(abs(vec4<u32>(0u, 25556u, 4294967295u, 21865u)))) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(max(global0.a.x, _wgslsmith_f_op_f32(1119f - -2706f)));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = -_wgslsmith_div_i32(func_3(), global0.c.x);
    let var_1 = !(!any(vec3<bool>(true, true, true)));
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(2114f - arg_2.x))), -_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, 32320i), _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(global0.c, u_input.d), vec2<i32>(32802i, arg_3.x))));
    global1 = array<Struct_1, 6>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(533f, 330f, 661f))), _wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(1133f, arg_2.x, -975f))))), arg_1.x, _wgslsmith_add_vec2_i32(vec2<i32>(-u_input.a.x, -_wgslsmith_mult_i32(global0.c.x, arg_3.x)), u_input.d));
    return global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, _wgslsmith_sub_u32(abs(abs(1u)), arg_0)), 6u)];
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_1, 6>();
    var var_0 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(-12162i, i32(-1i) * -u_input.a.x), min(_wgslsmith_dot_vec3_i32(u_input.a.wwz, -vec3<i32>(global0.c.x, u_input.c, -2147483647i)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(2949i, u_input.c), u_input.c, 2147483647i))), u_input.c, 0i, _wgslsmith_div_i32(u_input.c, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(select(global0.c, u_input.d, vec2<bool>(true, false)), global0.c >> (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u))), u_input.a.x | firstTrailingBit(u_input.a.x))));
    global0 = global1[_wgslsmith_index_u32(u_input.b.x ^ u_input.b.x, 6u)];
    let var_1 = func_4(u_input.b.x << ((u_input.b.x >> (u_input.b.x % 32u)) % 32u), vec4<f32>(-1359f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(626f * 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(2497f)))) * -1000f), -141f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(518f, 998f, 625f, 883f) + vec4<f32>(global0.b, global0.a.x, global0.b, global0.a.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-735f, -1000f, global0.a.x, 2435f))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a.x, global0.a.x, -1000f, -484f)))))))), var_0.xxx);
    global1 = array<Struct_1, 6>();
    return func_4(0u, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x - -1504f), _wgslsmith_f_op_f32(272f + var_1.b)), 1896f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1679f), -1374f)), var_1.b), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1170f, global0.b, var_1.b, -1491f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, var_1.a.x, global0.a.x, var_1.b))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1143f, 1687f, -1000f, 2983f)), vec4<f32>(global0.a.x, -994f, 2011f, -1483f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.b)), -645f, var_1.b, -132f)))), var_0.xxz);
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> StorageBuffer {
    let var_0 = func_4(u_input.b.x, vec4<f32>(arg_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(347f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-831f, arg_0.a.x, false)))), _wgslsmith_f_op_f32(min(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * 1000f))), _wgslsmith_f_op_f32(1167f + 419f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -596f, -227f, 825f) - vec4<f32>(539f, 1192f, global0.a.x, global0.b))))), ~vec3<i32>(2147483647i, -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0.c.x, arg_0.c.x), vec3<i32>(2147483647i, u_input.c, u_input.a.x)), global0.c.x));
    let var_1 = Struct_1(vec3<f32>(1422f, -169f, _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2004f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x))), global0.a.x), vec2<i32>(15030i, ~min(var_0.c.x, -1875i) >> (68552u % 32u)));
    var var_2 = ~abs(vec4<i32>(var_1.c.x & ~(-14640i), func_4(u_input.b.x | u_input.b.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1237f, global0.a.x, 374f, var_1.a.x) - vec4<f32>(var_0.b, arg_0.a.x, -810f, -144f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, -124f, 563f, -135f) + vec4<f32>(-495f, -1660f, -1478f, arg_0.a.x)), -vec3<i32>(arg_0.c.x, 2147483647i, global0.c.x)).c.x, var_0.c.x, _wgslsmith_sub_i32(reverseBits(global0.c.x), -var_0.c.x)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(select(global0.a, global0.a, vec3<bool>(any(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1))), true, arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.c.x, arg_0.c.x) | global0.c, ~(arg_0.c & vec2<i32>(0i, 0i))) << (_wgslsmith_mult_vec2_u32(~u_input.b.yx, vec2<u32>(_wgslsmith_add_u32(15595u, u_input.b.x), u_input.b.x)) % vec2<u32>(32u)));
    global0 = func_1();
    return StorageBuffer(u_input.a, u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b))) - global0.a.x), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b.x, 8321u, 52164u, u_input.b.x), select(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u) % vec4<u32>(32u)), vec4<u32>(1u, 7771u, u_input.b.x, u_input.b.x), all(vec2<bool>(true, arg_1)))) & vec4<u32>(~firstLeadingBit(u_input.b.x), ~u_input.b.x, ~_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~countOneBits(u_input.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(abs(global0.a.xx));
    let x = u_input.a;
    s_output = func_5(func_1(), any(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), true))));
}

