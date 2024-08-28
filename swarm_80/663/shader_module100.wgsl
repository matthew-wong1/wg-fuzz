struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<i32, 5>;

var<private> global2: vec4<bool>;

var<private> global3: array<u32, 21>;

var<private> global4: Struct_2 = Struct_2(vec2<u32>(16707u, 15220u), false, Struct_1(true, -1320f, 52813u, vec3<i32>(-7277i, -25253i, 2147483647i)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: i32, arg_2: f32, arg_3: Struct_2) -> f32 {
    global2 = !(!(!select(vec4<bool>(global2.x, true, global2.x, true), !vec4<bool>(true, arg_3.c.a, global4.c.a, global2.x), vec4<bool>(true, false, global4.c.a, true))));
    return -485f;
}

fn func_3(arg_0: f32, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: u32) -> vec4<f32> {
    global1 = array<i32, 5>();
    var var_0 = arg_2.wxw & vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_clamp_i32(u_input.a.x, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 5u)], -1i), _wgslsmith_mult_i32(u_input.b, global4.c.d.x)) & _wgslsmith_mod_i32(max(28313i, arg_2.x), global1[_wgslsmith_index_u32(firstLeadingBit(global4.c.c), 5u)]), _wgslsmith_sub_i32(~(6655i >> (global3[_wgslsmith_index_u32(1u, 21u)] % 32u)), ~0i << (abs(1u) % 32u)), _wgslsmith_clamp_i32(~2984i << (_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(7856u, 21u)], arg_3, 4294967295u, 34087u), vec4<u32>(43030u, 12492u, 0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(31715u, 21u)], 21u)])) % 32u), (global1[_wgslsmith_index_u32(global4.c.c, 5u)] & 0i) | global1[_wgslsmith_index_u32(arg_3, 5u)], arg_2.x));
    let var_1 = Struct_2(select(select(~(~global4.a), firstTrailingBit(global4.a) ^ (vec2<u32>(global3[_wgslsmith_index_u32(0u, 21u)], 0u) >> (vec2<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)]) % vec2<u32>(32u))), select(select(global2.yw, global2.yz, arg_1.x), vec2<bool>(arg_1.x, false), global2.x | arg_1.x)), countOneBits(global4.a) | countOneBits(global4.a), select(select(vec2<bool>(global2.x, arg_1.x), !vec2<bool>(arg_1.x, false), !vec2<bool>(global2.x, global4.b)), global2.zw, !arg_1.zz)), global2.x, Struct_1(all(vec3<bool>(false, any(global2.xwz), false)), 1f, ~global4.a.x, vec3<i32>(-24713i, -1i, abs(-1894i))));
    let var_2 = Struct_1(false, -3079f, _wgslsmith_div_u32(1u, arg_3), vec3<i32>(4445i, _wgslsmith_div_i32(firstTrailingBit(39211i), -34846i), reverseBits(-1656i)));
    var var_3 = firstLeadingBit(firstLeadingBit(~1u));
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -531f), global0.x, -144f, -196f), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.c.b, -402f, arg_0, -736f) - vec4<f32>(var_2.b, var_2.b, var_1.c.b, -161f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-404f, 388f, 779f, -2327f))), vec4<f32>(arg_0, global4.c.b, -431f, global0.x)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_1 {
    global2 = select(vec4<bool>(any(select(vec4<bool>(true, global2.x, arg_2.c.a, false), !vec4<bool>(arg_2.c.a, true, arg_2.b, global4.b), select(vec4<bool>(true, global4.c.a, false, global4.b), vec4<bool>(false, arg_2.c.a, arg_2.b, false), false))), true, global4.b, true), vec4<bool>(global2.x, all(!select(global2.zy, vec2<bool>(true, global2.x), global2.x)), any(global2.yy), all(select(!vec4<bool>(true, arg_2.c.a, global4.c.a, false), vec4<bool>(global2.x, false, arg_2.b, true), select(vec4<bool>(global4.b, arg_2.c.a, true, global4.c.a), vec4<bool>(global2.x, global2.x, false, false), vec4<bool>(false, arg_2.b, global2.x, arg_2.c.a))))), vec4<bool>(arg_2.b & true, false, !(!all(vec4<bool>(false, false, false, arg_2.c.a))), true));
    let var_0 = countOneBits(~(abs(max(vec2<i32>(-21893i, arg_1.x), vec2<i32>(global1[_wgslsmith_index_u32(7382u, 5u)], -22414i))) >> (vec2<u32>(global4.a.x, global4.c.c) % vec2<u32>(32u))));
    global3 = array<u32, 21>();
    var var_1 = Struct_2(vec2<u32>(1u, 1u), global4.c.a & global2.x, Struct_1(false, _wgslsmith_f_op_f32(-2552f + _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_f32(global4.c.b, global4.c.b), !global2.wwz, ~arg_1, firstTrailingBit(533u))).x), arg_2.a.x, ~select(arg_1.zyw & vec3<i32>(u_input.a.x, var_0.x, global4.c.d.x), ~arg_2.c.d, select(global2.xxy, vec3<bool>(global2.x, global4.c.a, arg_2.c.a), global2.zwz))));
    let var_2 = 1i & ~min(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_1.c.d, var_1.c.d, global4.c.d), ~vec3<i32>(35275i, -1i, 2147483647i)), _wgslsmith_div_i32(arg_1.x, reverseBits(global4.c.d.x)));
    return global4.c;
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1542f, -1307f, 679f, 1275f) + vec4<f32>(584f, global0.x, 172f, -1608f)), vec4<f32>(-101f, -221f, -959f, global0.x), select(vec4<bool>(global2.x, true, global4.c.a, true), vec4<bool>(global2.x, global2.x, false, true), vec4<bool>(true, global2.x, global2.x, global2.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1021f, 346f, global0.x, global4.c.b)))) * _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(func_2(vec2<bool>(global4.b, global4.b), ~arg_0.x, -748f, Struct_2(vec2<u32>(0u, global4.c.c), true, global4.c))), global2.zyw, _wgslsmith_add_vec4_i32(~vec4<i32>(-130i, -2147483647i, -12531i, -38077i), -vec4<i32>(-1i, arg_0.x, global4.c.d.x, u_input.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(0u, 21u)], global3[_wgslsmith_index_u32(global4.c.c, 21u)]), vec2<u32>(1u, global3[_wgslsmith_index_u32(global4.c.c, 21u)])) | ~4294967295u))), u_input.a, Struct_2(min(global4.a, global4.a), global2.x, Struct_1(!any(vec3<bool>(true, global4.c.a, false)), _wgslsmith_div_f32(-1050f, _wgslsmith_f_op_f32(global4.c.b + global0.x)), ~_wgslsmith_mult_u32(57409u, global4.a.x), vec3<i32>(select(-1i, 29297i, global2.x), 1i, 16629i))));
    var var_1 = 21728u;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(global0.x * 788f), global4.c.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)) * -311f) - -138f));
    let var_3 = vec2<bool>(false, _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, global4.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 53812u, 73145u, 1u), vec4<u32>(global4.a.x, var_0.c, 11098u, global3[_wgslsmith_index_u32(4294967295u, 21u)]))) <= firstTrailingBit(1u));
    let var_4 = _wgslsmith_mod_vec4_i32(u_input.a, u_input.a);
    return Struct_2(global4.a, all(!vec3<bool>(true, global3[_wgslsmith_index_u32(26660u, 21u)] >= global3[_wgslsmith_index_u32(var_0.c, 21u)], global4.b)), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global4.c.b, -1421f, 1688f, 513f), vec4<f32>(1097f, global4.c.b, var_0.b, 679f)))), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(var_4.xyz, arg_0), -global4.c.d.x), firstLeadingBit(-2147483647i), _wgslsmith_mult_i32(global4.c.d.x & 0i, ~arg_0.x), u_input.a.x), Struct_2(vec2<u32>(~global4.c.c, _wgslsmith_dot_vec4_u32(vec4<u32>(26411u, global4.a.x, 20005u, global3[_wgslsmith_index_u32(var_0.c, 21u)]), vec4<u32>(0u, 55502u, 0u, 42361u))), false, global4.c)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<f32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec3_f32(arg_2.xww + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(599f, 927f, arg_1.b)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(arg_2.zzy, arg_2.zwy, global4.b)))))));
    let var_0 = arg_1.d.zx;
    global2 = vec4<bool>(select(false & arg_1.a, arg_1.a, _wgslsmith_f_op_f32(-arg_2.x) <= arg_0.c.b), arg_0.c.a, _wgslsmith_div_u32(_wgslsmith_div_u32(arg_0.a.x, _wgslsmith_mult_u32(4294967295u, global4.a.x)), 4294967295u & global3[_wgslsmith_index_u32(min(114823u, arg_1.c), 21u)]) != firstLeadingBit(arg_0.a.x), !((all(vec4<bool>(true, global2.x, false, arg_0.c.a)) || select(true, global2.x, arg_0.c.a)) & !(global3[_wgslsmith_index_u32(14097u, 21u)] == 0u)));
    var var_1 = vec4<bool>((global4.a.x | global4.c.c) > (global3[_wgslsmith_index_u32(arg_1.c, 21u)] ^ global3[_wgslsmith_index_u32(arg_1.c, 21u)]), !all(global2.zw), true & func_1(arg_1.d ^ _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -1i, var_0.x), vec3<i32>(arg_0.c.d.x, arg_1.d.x, u_input.a.x))).b, arg_1.a);
    var var_2 = func_1(vec3<i32>(global1[_wgslsmith_index_u32(10710u, 5u)], -1i, arg_0.c.d.x) >> (~(~(~vec3<u32>(global4.a.x, 0u, global4.c.c))) % vec3<u32>(32u)));
    return Struct_2(~vec2<u32>(max(reverseBits(arg_0.a.x), ~global3[_wgslsmith_index_u32(13180u, 21u)]), global4.c.c), var_1.x, Struct_1(true, arg_1.b, ~14197u, vec3<i32>(arg_1.d.x, global1[_wgslsmith_index_u32(~arg_1.c, 5u)], select(-32205i, 3639i, true)) << (vec3<u32>(_wgslsmith_mult_u32(1u, 1u), arg_0.c.c, reverseBits(0u)) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_5(func_1(-u_input.a.zxz), global4.c, vec4<f32>(_wgslsmith_f_op_f32(-global4.c.b), 153f, _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(ceil(-1588f)), vec3<bool>(global2.x & global4.c.a, all(vec2<bool>(global4.c.a, global4.b)), true), -u_input.a, abs(func_4(vec4<f32>(-1530f, global4.c.b, global4.c.b, global0.x), vec4<i32>(-2147483647i, global4.c.d.x, global1[_wgslsmith_index_u32(1u, 5u)], global4.c.d.x), Struct_2(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30060u, 21u)], 21u)], 6171u), global4.c.a, global4.c)).c))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-637f, -928f)), _wgslsmith_f_op_f32(801f + -1000f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1608f, global4.c.b)) * _wgslsmith_f_op_f32(select(876f, -1636f, global2.x))))));
    let var_0 = func_5(func_1(u_input.a.xzx), global4.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.c.b, _wgslsmith_f_op_f32(floor(-532f)), _wgslsmith_f_op_f32(global4.c.b * global0.x), _wgslsmith_f_op_f32(ceil(global0.x)))), vec4<f32>(471f, _wgslsmith_div_f32(global0.x, global4.c.b), -1000f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1813f)))))));
    let var_1 = Struct_2(vec2<u32>(var_0.a.x, var_0.c.c), !(firstLeadingBit(global4.c.d.x) < -1i), var_0.c);
    let var_2 = ~(~(~_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, 1u, global3[_wgslsmith_index_u32(1u, 21u)], 10232u), ~vec4<u32>(7085u, 0u, global3[_wgslsmith_index_u32(0u, 21u)], 2156u), min(vec4<u32>(var_1.c.c, 39994u, 40801u, 70900u), vec4<u32>(global4.a.x, global3[_wgslsmith_index_u32(var_0.c.c, 21u)], var_0.c.c, 23797u)))));
    let var_3 = select(!(!select(global2.xyx, global2.zzw, false)), vec3<bool>(!all(vec2<bool>(true, false)), !var_1.c.a, true), !(!global2.xwy));
    global3 = array<u32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1499f))), 1000f) - global4.c.b));
}

