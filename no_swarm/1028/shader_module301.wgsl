struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<u32>(25282u, 0u, 1u, 1u), -1i), Struct_1(vec4<u32>(16109u, 1u, 23587u, 52819u), -23544i), Struct_1(vec4<u32>(0u, 1u, 57896u, 1u), 2147483647i), Struct_1(vec4<u32>(0u, 1u, 1387u, 65604u), 2147483647i), Struct_1(vec4<u32>(63622u, 0u, 53024u, 61596u), 1i), Struct_1(vec4<u32>(13770u, 37187u, 0u, 4294967295u), 1i), Struct_1(vec4<u32>(49042u, 0u, 4294967295u, 1u), 10048i), Struct_1(vec4<u32>(1u, 0u, 35519u, 11124u), 2147483647i));

var<private> global2: i32 = 0i;

var<private> global3: Struct_2 = Struct_2(vec2<bool>(true, false), vec2<u32>(3019u, 38644u), i32(-2147483648));

var<private> global4: bool = false;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec3<bool>) -> vec2<bool> {
    var var_0 = global1[_wgslsmith_index_u32(abs(1u), 8u)];
    var var_1 = select(arg_1, !arg_1, vec3<bool>(any(!select(vec4<bool>(true, true, global3.a.x, true), vec4<bool>(false, global3.a.x, false, true), global3.a.x)), false, arg_0));
    var var_2 = !vec4<bool>(true, true, any(select(select(arg_1, vec3<bool>(false, true, global3.a.x), vec3<bool>(global3.a.x, false, var_1.x)), select(vec3<bool>(global3.a.x, false, global3.a.x), vec3<bool>(false, true, true), vec3<bool>(false, arg_1.x, true)), arg_1.x & true)), arg_1.x);
    var_2 = vec4<bool>(var_1.x, _wgslsmith_mult_i32(~(-u_input.c), 13448i) < ~_wgslsmith_mult_i32(u_input.c | -49911i, global3.c), !(!all(vec3<bool>(false, var_1.x, false))), select(true, true, arg_0));
    return arg_1.zy;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = global1[_wgslsmith_index_u32(0u, 8u)];
    var var_1 = _wgslsmith_add_vec2_u32(var_0.a.xw, ~(~arg_1.b ^ (_wgslsmith_clamp_vec2_u32(global3.b, var_0.a.xw, vec2<u32>(arg_1.b.x, arg_1.b.x)) << (~var_0.a.yz % vec2<u32>(32u)))));
    let var_2 = Struct_2(func_3(true, vec3<bool>(arg_2.x, true, global3.a.x)), vec2<u32>(1u, ~1u), reverseBits(abs(0i)));
    let var_3 = ~(~(arg_1.b << ((var_0.a.xy ^ var_0.a.wx) % vec2<u32>(32u))));
    let var_4 = -1003f;
    return var_2;
}

fn func_4(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_add_vec4_u32(firstTrailingBit(~firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.b.x, 8u)], 8u)], arg_0.b.x, global0[_wgslsmith_index_u32(19636u, 8u)]))), reverseBits(~vec4<u32>(6947u, arg_0.b.x, global0[_wgslsmith_index_u32(35291u, 8u)], 1u))), _wgslsmith_div_i32(37580i, global3.c));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-624f + -533f), _wgslsmith_f_op_f32(-416f - 460f), 337f, -543f)))));
    global2 = var_0.b;
    let var_2 = Struct_1(vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(4294967295u, global3.b.x, _wgslsmith_dot_vec3_u32(var_0.a.xww, var_0.a.xxz), _wgslsmith_add_u32(u_input.b, var_0.a.x))), ~max(countOneBits(36193u), var_0.a.x << (global3.b.x % 32u)), firstLeadingBit(0u) & global3.b.x), -18831i);
    var var_3 = var_2.a.x;
    return !select(select(!(!global3.a), vec2<bool>(true, false && arg_0.a.x), func_3(true, !vec3<bool>(arg_0.a.x, global3.a.x, arg_0.a.x))), vec2<bool>(global3.a.x, arg_0.a.x), vec2<bool>(arg_0.a.x, true || (var_2.a.x >= var_2.a.x)));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: vec2<i32>, arg_3: vec2<bool>) -> Struct_2 {
    global4 = !global3.a.x;
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * -1719f), _wgslsmith_f_op_f32(round(-184f))) - _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-arg_1))))));
    let var_1 = func_2(_wgslsmith_add_vec2_i32(arg_2, ~(vec2<i32>(arg_0, 33061i) >> (_wgslsmith_mult_vec2_u32(global3.b, global3.b) % vec2<u32>(32u)))), func_2(firstTrailingBit(firstLeadingBit(-vec2<i32>(-16189i, -1i))), func_2(arg_2, func_2(vec2<i32>(5955i, arg_0), func_2(vec2<i32>(global3.c, arg_2.x), Struct_2(arg_3, global3.b, u_input.c), vec4<bool>(arg_3.x, true, false, false)), !vec4<bool>(true, arg_3.x, arg_3.x, false)), select(select(vec4<bool>(arg_3.x, global3.a.x, true, global3.a.x), vec4<bool>(true, true, false, global3.a.x), vec4<bool>(global3.a.x, true, true, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, global3.a.x, false), vec4<bool>(false, arg_3.x, global3.a.x, global3.a.x)), !vec4<bool>(global3.a.x, true, true, global3.a.x))), select(vec4<bool>(any(vec4<bool>(arg_3.x, true, true, global3.a.x)), arg_3.x & arg_3.x, true, func_4(Struct_2(global3.a, global3.b, 0i)).x), vec4<bool>(global3.a.x, !arg_3.x, !arg_3.x, func_3(global3.a.x, vec3<bool>(true, arg_3.x, global3.a.x)).x), vec4<bool>(any(vec4<bool>(arg_3.x, arg_3.x, true, global3.a.x)), arg_3.x, true, arg_3.x))), !select(vec4<bool>(true, select(true, global3.a.x, true), any(global3.a), 1064f < arg_1), !(!vec4<bool>(global3.a.x, true, false, true)), any(vec2<bool>(arg_3.x, false)) & select(arg_3.x, arg_3.x, arg_3.x)));
    global1 = array<Struct_1, 8>();
    return func_2(~_wgslsmith_add_vec2_i32(arg_2 << (~global3.b % vec2<u32>(32u)), vec2<i32>(select(-30085i, var_1.c, true), 1i)), var_1, select(select(vec4<bool>(true && var_1.a.x, global3.a.x, !global3.a.x, true), select(vec4<bool>(arg_3.x, false, var_1.a.x, true), select(vec4<bool>(true, var_1.a.x, false, true), vec4<bool>(true, true, arg_3.x, arg_3.x), false), vec4<bool>(var_1.a.x, global3.a.x, false, true)), !select(vec4<bool>(arg_3.x, true, false, var_1.a.x), vec4<bool>(false, arg_3.x, true, var_1.a.x), vec4<bool>(false, var_1.a.x, true, global3.a.x))), vec4<bool>(true, true, arg_3.x, false), vec4<bool>(arg_3.x, !(arg_3.x && true), true, any(vec4<bool>(true, global3.a.x, false, var_1.a.x)) | true)));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: u32, arg_3: vec4<bool>) -> vec4<u32> {
    let var_0 = abs(firstTrailingBit((reverseBits(vec3<u32>(global3.b.x, 4294967295u, global0[_wgslsmith_index_u32(81375u, 8u)])) ^ vec3<u32>(global3.b.x, global3.b.x, 0u)) >> ((vec3<u32>(0u, arg_2, arg_2) ^ ~vec3<u32>(78862u, global3.b.x, arg_2)) % vec3<u32>(32u))));
    global3 = Struct_2(global3.a, ~vec2<u32>(arg_2, _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.x, 10019u), 0u)), ~(~reverseBits(u_input.c)));
    var var_1 = func_5(abs(2147483647i), _wgslsmith_f_op_f32(step(-216f, 527f)), vec2<i32>(~(-_wgslsmith_mult_i32(61519i, u_input.c)), -8371i), select(arg_3.wy, func_4(func_2(~vec2<i32>(-1i, u_input.c), Struct_2(global3.a, vec2<u32>(global0[_wgslsmith_index_u32(global3.b.x, 8u)], var_0.x), global3.c), arg_3)), arg_3.x));
    var var_2 = Struct_1(~(~(~(~vec4<u32>(arg_2, var_1.b.x, 1u, 29077u)))), 0i);
    let var_3 = Struct_1(_wgslsmith_sub_vec4_u32(reverseBits(~var_2.a), ~var_2.a), abs(-abs(global3.c) >> (u_input.a % 32u)));
    return _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(112959u << (arg_2 % 32u), global3.b.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.b.x), var_2.a.zz), max(global0[_wgslsmith_index_u32(var_2.a.x, 8u)], 1u))), _wgslsmith_add_vec4_u32(~select(vec4<u32>(var_2.a.x, 4294967295u, 35998u, var_2.a.x), var_3.a, true), reverseBits(~var_3.a)), abs(var_2.a)), ~var_2.a, vec4<u32>(var_2.a.x, ~9461u, ~(~14709u), ~_wgslsmith_add_u32(u_input.b ^ global3.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3.a.x, var_2.a.x, var_0.x), var_3.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 8>();
    let var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 17583u, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], 6686u), ~1u) >> (~max(~vec4<u32>(1u, 6887u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 8u)], 8u)], 8u)], 50553u), ~vec4<u32>(u_input.b, 0u, global0[_wgslsmith_index_u32(78539u, 8u)], 4294967295u)) % vec4<u32>(32u)), func_1(false, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -468f), 398f), vec2<f32>(-1715f, _wgslsmith_f_op_f32(floor(-1000f)))), global3.b.x, select(!vec4<bool>(global3.a.x, false, global3.a.x, true), vec4<bool>(global3.c <= u_input.c, any(vec4<bool>(false, global3.a.x, global3.a.x, global3.a.x)), all(vec2<bool>(global3.a.x, true)), false), !vec4<bool>(global3.a.x, true, global3.a.x, global3.a.x))));
    let var_1 = -979f;
    let var_2 = vec3<f32>(_wgslsmith_div_f32(-2056f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(273f, _wgslsmith_f_op_f32(-var_1))))), _wgslsmith_f_op_f32(f32(-1f) * -1374f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, -609f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1802f)), _wgslsmith_f_op_f32(-1000f + var_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-210f)), _wgslsmith_f_op_f32(-var_1)))));
    var var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a, func_2(min(~vec2<i32>(-18420i, global3.c), firstLeadingBit(vec2<i32>(u_input.c, 11901i))), func_5(~(-15921i), var_1, countOneBits(vec2<i32>(global3.c, u_input.c)), select(vec2<bool>(global3.a.x, global3.a.x), vec2<bool>(false, global3.a.x), global3.a)), !vec4<bool>(false, true, global3.a.x, global3.a.x)).b.x), 8u)];
    var_3 = Struct_1(var_3.a, select(-_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, 2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(55933i, 34666i), vec2<i32>(var_3.b, -1i))), var_3.b << (49787u % 32u), global3.a.x));
    global4 = false;
    let var_4 = func_3(true, select(vec3<bool>(global3.a.x, global3.a.x, _wgslsmith_f_op_f32(-var_1) >= _wgslsmith_f_op_f32(var_2.x + 381f)), !(!vec3<bool>(true, global3.a.x, false)), !all(global3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, vec4<u32>(~firstTrailingBit(abs(8u)), var_3.a.x, ~_wgslsmith_dot_vec2_u32(abs(global3.b), _wgslsmith_clamp_vec2_u32(var_3.a.xy, var_3.a.yz, var_3.a.yx)), 4294967295u ^ ~func_2(vec2<i32>(u_input.c, u_input.c), Struct_2(var_4, vec2<u32>(1u, global3.b.x), global3.c), vec4<bool>(global3.a.x, false, var_4.x, global3.a.x)).b.x), _wgslsmith_clamp_i32(abs(~func_5(-4554i, -492f, vec2<i32>(var_3.b, 1i), global3.a).c), ~(-(~u_input.c)), var_3.b), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(var_3.b, u_input.c), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -1i), vec2<i32>(u_input.c, u_input.c), vec2<i32>(0i, var_3.b)), firstLeadingBit(vec2<i32>(global3.c, 2147483647i)))), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, u_input.c)), ~_wgslsmith_div_vec2_i32(vec2<i32>(global3.c, 0i), vec2<i32>(global3.c, -26067i)))), vec3<i32>(-14485i, ~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_3.b, u_input.c), u_input.c << (104147u % 32u), -u_input.c), 2147483647i));
}

