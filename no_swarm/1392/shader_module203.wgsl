struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: u32,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<i32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: Struct_3,
    d: u32,
}

struct Struct_5 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<i32, 7> = array<i32, 7>(-1299i, 3357i, 1i, -25707i, -35020i, 26358i, 1i);

var<private> global2: array<vec2<f32>, 7>;

var<private> global3: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: u32) -> u32 {
    global0 = ~(~(~(~(~vec3<u32>(u_input.a, global0.x, 31240u)))));
    let var_0 = -1i;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(max(881f, _wgslsmith_f_op_f32(min(235f, -729f)))))));
    let var_2 = !vec4<bool>(!any(vec3<bool>(true, true, true)), false, true, !(firstLeadingBit(var_0) <= -32949i));
    var var_3 = !var_2.wx;
    return ~(u_input.a ^ 87567u);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: bool) -> u32 {
    global0 = vec3<u32>(~func_3(arg_2.x, firstLeadingBit(arg_0.x)), 42975u, 17260u);
    global0 = arg_1.e.b;
    var var_0 = Struct_3(arg_1.b.b, Struct_2(-arg_1.c, true, !arg_3, arg_0.x, _wgslsmith_f_op_f32(-arg_1.b.e)), select(abs(-_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -38667i, arg_1.c.x), vec3<i32>(arg_1.e.c, 40961i, global1[_wgslsmith_index_u32(arg_1.e.d, 7u)]))), ((arg_1.b.a ^ arg_1.e.a) & firstLeadingBit(vec3<i32>(u_input.b.x, u_input.b.x, 8912i))) & vec3<i32>(min(1i, u_input.b.x), ~global1[_wgslsmith_index_u32(global0.x, 7u)], global1[_wgslsmith_index_u32(arg_0.x, 7u)] & -52563i), !(!(!vec3<bool>(false, false, arg_1.b.c)))), vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, u_input.b.x, global1[_wgslsmith_index_u32(arg_0.x, 7u)], arg_1.b.a.x), countOneBits(vec4<i32>(global1[_wgslsmith_index_u32(arg_0.x, 7u)], global1[_wgslsmith_index_u32(global0.x, 7u)], 0i, u_input.b.x)) << (reverseBits(arg_0) % vec4<u32>(32u))), u_input.b.x, countOneBits(-1i), -21851i), arg_1.e);
    var_0 = arg_1;
    var var_1 = Struct_1(vec3<i32>(~(-(~u_input.b.x)), 0i, ~(-global1[_wgslsmith_index_u32(arg_0.x << (var_0.b.d % 32u), 7u)])), ~(~vec3<u32>(countOneBits(arg_0.x), firstTrailingBit(global0.x), arg_1.b.d)), (min(u_input.b.x ^ u_input.b.x, _wgslsmith_sub_i32(var_0.e.a.x, global1[_wgslsmith_index_u32(arg_0.x, 7u)])) & _wgslsmith_mod_i32(arg_1.c.x, firstTrailingBit(global1[_wgslsmith_index_u32(13744u, 7u)]))) | -21598i, _wgslsmith_div_u32(arg_1.b.d, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, arg_0.x, 0u), arg_0)), arg_0.x);
    return 4294967295u;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    global0 = ~((~arg_2.b | ((vec3<u32>(arg_1, arg_0, 42619u) >> (vec3<u32>(1u, arg_1, 0u) % vec3<u32>(32u))) ^ ~arg_2.b)) >> (~arg_2.b % vec3<u32>(32u)));
    global0 = ~vec3<u32>(u_input.a, 21623u, ~18181u);
    let var_0 = Struct_3(!all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false))), Struct_2(arg_2.a, func_3(_wgslsmith_f_op_f32(abs(arg_3.x)), select(arg_2.d, arg_1, true)) > ~(~0u), true, 1u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-338f + -1000f) * _wgslsmith_f_op_f32(exp2(arg_3.x))) - -675f)), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, arg_2.a.x, global1[_wgslsmith_index_u32(19762u, 7u)], 21910i), vec4<i32>(arg_2.a.x, -37980i, arg_2.c, -1i)))), 391i, -arg_2.a.x), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.x, -73320i, 1i, 1i) ^ vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(12760u, 7u)], global1[_wgslsmith_index_u32(52199u, 7u)], -8439i), ~vec4<i32>(u_input.b.x, -18850i, arg_2.c, 48858i)), firstLeadingBit(-31728i << (arg_1 % 32u)), ~countOneBits(global1[_wgslsmith_index_u32(arg_1, 7u)]), 1i & -global1[_wgslsmith_index_u32(arg_0, 7u)]), (abs(vec4<i32>(u_input.b.x, arg_2.a.x, arg_2.c, -17842i)) << (~vec4<u32>(arg_2.b.x, arg_2.e, 20022u, 0u) % vec4<u32>(32u))) << (vec4<u32>(~4043u, func_3(arg_3.x, global0.x), arg_1 >> (arg_1 % 32u), arg_0) % vec4<u32>(32u))), arg_2);
    var var_1 = Struct_3(var_0.a, Struct_2(vec3<i32>(~reverseBits(27310i), 11031i, ~min(global1[_wgslsmith_index_u32(4294967295u, 7u)], u_input.b.x)), min(_wgslsmith_dot_vec4_i32(vec4<i32>(6917i, var_0.c.x, -30730i, u_input.b.x), vec4<i32>(var_0.c.x, var_0.c.x, -21510i, arg_2.c)), arg_2.c) != (u_input.b.x ^ firstLeadingBit(82076i)), var_0.a, 1u << (_wgslsmith_sub_u32(0u, ~global0.x) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.x * var_0.b.e), _wgslsmith_f_op_f32(var_0.b.e - arg_3.x))))), ~(~vec3<i32>(max(0i, 2147483647i), u_input.b.x, arg_2.a.x)), ~countOneBits(~vec4<i32>(-24002i, arg_2.c, arg_2.a.x, u_input.b.x)), Struct_1(arg_2.a, firstLeadingBit(~arg_2.b), var_0.c.x, _wgslsmith_dot_vec3_u32(var_0.e.b, vec3<u32>(0u, global0.x | 4294967295u, arg_0)), firstLeadingBit(arg_0) ^ 0u));
    global0 = firstLeadingBit(reverseBits(~(vec3<u32>(1u, arg_1, arg_1) ^ vec3<u32>(0u, 1u, 1u)) ^ vec3<u32>(1u, 8919u, _wgslsmith_mult_u32(40473u, arg_0))));
    return var_0.e;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: vec3<i32>) -> Struct_3 {
    global0 = vec3<u32>(u_input.a, u_input.a, _wgslsmith_add_u32(~(~arg_0.x), 4294967295u)) >> (_wgslsmith_sub_vec3_u32(~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(arg_0, arg_0), arg_0), arg_0) % vec3<u32>(32u));
    var var_0 = func_4(1u, _wgslsmith_dot_vec2_u32(arg_0.zx, ~vec2<u32>(arg_0.x | 1u, func_2(vec4<u32>(u_input.a, arg_0.x, global0.x, 4294967295u), Struct_3(arg_1.x, Struct_2(arg_2, false, true, arg_0.x, 180f), arg_2, vec4<i32>(u_input.b.x, -1i, global1[_wgslsmith_index_u32(4294967295u, 7u)], u_input.b.x), Struct_1(vec3<i32>(arg_2.x, global1[_wgslsmith_index_u32(arg_0.x, 7u)], 2147483647i), vec3<u32>(4294967295u, u_input.a, 59171u), -1i, u_input.a, global0.x)), vec2<f32>(1383f, 515f), true))), Struct_1(vec3<i32>(_wgslsmith_clamp_i32(u_input.b.x, -2147483647i, 8669i) >> ((37384u | global0.x) % 32u), 4326i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_2.x, -6270i), vec3<i32>(arg_2.x, 0i, u_input.b.x))), vec3<u32>(firstTrailingBit(57425u), 4027u, _wgslsmith_sub_u32(countOneBits(global0.x), arg_0.x)), _wgslsmith_div_i32(1i, _wgslsmith_sub_i32(u_input.b.x, -77119i) & (-1i & u_input.b.x)), _wgslsmith_mod_u32(arg_0.x, 4294967295u), _wgslsmith_add_u32(_wgslsmith_div_u32(firstTrailingBit(arg_0.x), arg_0.x), global0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -2101f, -596f, 1770f))))));
    let var_1 = Struct_3(~select(_wgslsmith_div_u32(u_input.a, global0.x), 0u, false) >= firstTrailingBit(_wgslsmith_sub_u32(func_2(vec4<u32>(0u, 0u, u_input.a, var_0.e), Struct_3(arg_1.x, Struct_2(vec3<i32>(-1i, 18999i, -21972i), true, arg_1.x, 15277u, -1162f), var_0.a, vec4<i32>(var_0.a.x, global1[_wgslsmith_index_u32(6068u, 7u)], u_input.b.x, global1[_wgslsmith_index_u32(arg_0.x, 7u)]), Struct_1(arg_2, vec3<u32>(100397u, global0.x, global0.x), u_input.b.x, u_input.a, 53530u)), vec2<f32>(-1508f, 952f), arg_1.x), ~u_input.a)), Struct_2(vec3<i32>(select(1i, 0i, arg_1.x & arg_1.x), ~(var_0.c ^ 33478i), 1i), true, all(!arg_1.yzw), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~arg_2, _wgslsmith_mod_vec4_i32(firstLeadingBit(-(~vec4<i32>(arg_2.x, 1i, 68239i, 3598i))), vec4<i32>(i32(-1i) * -2147483647i, -1i, -2717i, 2147483647i)), func_4(23433u, 4294967295u, func_4(firstTrailingBit(_wgslsmith_dot_vec2_u32(global0.xx, global0.xz)), global0.x, Struct_1(vec3<i32>(-34962i, var_0.a.x, -1i) >> (arg_0 % vec3<u32>(32u)), abs(arg_0), var_0.c ^ 0i, _wgslsmith_mult_u32(u_input.a, 61683u), var_0.e), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(694f, 1000f, -1678f, -265f), vec4<f32>(-1487f, -160f, 822f, 430f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-204f, -1097f, -772f, 431f), vec4<f32>(-1120f, 1057f, -377f, 497f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-3310f, 963f, -1808f, -133f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1223f, 1388f, -454f, 1143f))))));
    var var_2 = any(select(select(select(select(arg_1.zy, vec2<bool>(var_1.a, var_1.b.c), arg_1.xz), select(vec2<bool>(var_1.b.b, var_1.a), vec2<bool>(var_1.a, arg_1.x), arg_1.zw), false), !arg_1.yw, !select(arg_1.zx, vec2<bool>(true, var_1.a), arg_1.yw)), !select(arg_1.xw, vec2<bool>(var_1.a, var_1.a), select(arg_1.wx, arg_1.zy, var_1.a)), select(vec2<bool>(arg_1.x, true), select(!arg_1.yy, vec2<bool>(arg_1.x, true), true), all(select(arg_1.zwx, vec3<bool>(arg_1.x, arg_1.x, false), vec3<bool>(true, arg_1.x, arg_1.x))))));
    var var_3 = 1000f;
    return Struct_3(var_1.b.b, Struct_2(-abs(min(vec3<i32>(-2147483647i, u_input.b.x, 0i), vec3<i32>(-34975i, 0i, -2147483647i))), true, 0i < u_input.b.x, 8797u, 1311f), vec3<i32>(select(1i, arg_2.x, var_0.c != ~1i), 2147483647i, 2104i), var_1.d, func_4(_wgslsmith_mod_u32(~4294967295u << (max(27684u, u_input.a) % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.b, arg_0), countOneBits(var_1.e.b))), 30611u, Struct_1(arg_2, _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(var_1.e.b, vec3<u32>(0u, u_input.a, u_input.a)), var_0.b >> (var_1.e.b % vec3<u32>(32u))), -24978i, var_1.b.d, func_4(4294967295u, 0u, var_1.e, vec4<f32>(168f, var_1.b.e, 944f, var_1.b.e)).d >> (1u % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.e, var_1.b.e, var_1.b.e, var_1.b.e)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(478f, var_1.b.e, -357f, -737f), vec4<f32>(-895f, -595f, var_1.b.e, var_1.b.e)))) * vec4<f32>(_wgslsmith_f_op_f32(var_1.b.e + var_1.b.e), _wgslsmith_f_op_f32(select(273f, 479f, true)), _wgslsmith_f_op_f32(round(-1369f)), _wgslsmith_f_op_f32(sign(var_1.b.e))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-196f, -1000f)), -1649f)), ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(23195u, 60336u, global0.x, 1u), vec4<u32>(u_input.a, 4294967295u, 13656u, u_input.a)))), func_1(_wgslsmith_mult_vec3_u32(~select(vec3<u32>(global0.x, u_input.a, u_input.a), vec3<u32>(69391u, 1u, 103582u), true), ~(~vec3<u32>(global0.x, u_input.a, global0.x))), vec4<bool>(all(vec4<bool>(false, true, false, true)), select(true, true, true) || true, all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true)), true), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-15610i, u_input.b.x, -1i), vec3<i32>(u_input.b.x, global1[_wgslsmith_index_u32(23046u, 7u)], -37476i) | vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(global0.x, 7u)], global1[_wgslsmith_index_u32(global0.x, 7u)], -17513i), vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(u_input.a, 7u)], 2147483647i), vec3<i32>(-2147483647i, u_input.b.x, global1[_wgslsmith_index_u32(global0.x, 7u)])))), 1u);
    var var_1 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b.e)))), var_0.c.b.e, var_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(388f))), _wgslsmith_f_op_f32(min(var_0.c.b.e, -718f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.b.e), _wgslsmith_f_op_f32(var_0.c.b.e * var_0.c.b.e), var_0.c.b.e, -611f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1251f, var_0.a.x, -437f, var_0.a.x) + vec4<f32>(var_0.c.b.e, -1327f, var_0.a.x, var_0.c.b.e)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(183f, 894f, var_0.c.b.e, -1082f)))))));
    var var_2 = Struct_5(~(-(~firstTrailingBit(u_input.b.x))), func_2(var_0.b, func_1(_wgslsmith_div_vec3_u32(func_1(var_0.c.e.b, vec4<bool>(false, true, false, var_0.c.a), vec3<i32>(u_input.b.x, -4511i, global1[_wgslsmith_index_u32(14173u, 7u)])).e.b, var_0.b.zzw), select(select(vec4<bool>(var_0.c.b.b, false, var_0.c.a, var_0.c.b.c), vec4<bool>(var_0.c.b.b, var_0.c.a, false, true), var_0.c.b.c), !vec4<bool>(var_0.c.a, false, var_0.c.a, true), false), _wgslsmith_mod_vec3_i32(var_0.c.c, ~vec3<i32>(-1i, var_0.c.e.c, var_0.c.e.c))), _wgslsmith_f_op_vec2_f32(-var_1.xz), _wgslsmith_f_op_f32(trunc(-1287f)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-112f + var_0.a.x), 1055f)));
    var var_3 = Struct_2(-vec3<i32>(-(35313i ^ var_0.c.c.x), _wgslsmith_mod_i32(var_0.c.e.c & global1[_wgslsmith_index_u32(0u, 7u)], -9716i), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.x, 1u), 7u)] << (~u_input.a % 32u)), all(!select(!vec3<bool>(var_0.c.a, true, true), select(vec3<bool>(false, var_0.c.a, var_0.c.a), vec3<bool>(var_0.c.a, true, false), vec3<bool>(false, var_0.c.b.b, false)), var_0.c.a)), !(!(-325f >= _wgslsmith_f_op_f32(-var_1.x))), ~u_input.a, var_0.c.b.e);
    var_2 = Struct_5(_wgslsmith_mult_i32(u_input.b.x, firstLeadingBit(var_3.a.x) & 31806i) << (u_input.a % 32u), ~func_3(1317f, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 1608u) >> (vec2<u32>(global0.x, 0u) % vec2<u32>(32u)), ~vec2<u32>(20196u, 54472u))));
    var_3 = func_1(~vec3<u32>(var_2.b, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(19012u, var_3.d, var_0.c.b.d, 0u)), ~var_0.b), func_2(var_0.b, var_0.c, global2[_wgslsmith_index_u32(min(18695u, 4294967295u), 7u)], all(vec4<bool>(var_0.c.a, var_0.c.b.c, true, var_3.b)))), vec4<bool>(true, true, any(vec2<bool>(false, func_1(vec3<u32>(26418u, 0u, 20208u), vec4<bool>(false, false, var_3.c, var_3.b), var_0.c.c).a)), false), var_3.a).b;
    global0 = _wgslsmith_clamp_vec3_u32(~var_0.c.e.b, reverseBits(var_0.c.e.b), min(~_wgslsmith_sub_vec3_u32(firstTrailingBit(vec3<u32>(var_3.d, 4294967295u, 13057u)), var_0.b.yxw << (vec3<u32>(0u, global0.x, 44283u) % vec3<u32>(32u))), var_0.c.e.b));
    var var_4 = countOneBits(firstLeadingBit(-_wgslsmith_div_vec3_i32(var_3.a, vec3<i32>(-46449i, 35782i, u_input.b.x))));
    var var_5 = Struct_2(var_3.a, var_3.b, !(!(_wgslsmith_f_op_f32(1457f - var_0.a.x) != _wgslsmith_div_f32(var_3.e, var_1.x))), ~max(firstLeadingBit(~1u), reverseBits(53802u)), _wgslsmith_f_op_f32(max(-609f, 204f)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(-vec3<i32>(abs(var_4.x), var_3.a.x, 16832i)), vec4<i32>(_wgslsmith_div_i32(var_2.a, -var_4.x), var_5.a.x, ~(i32(-1i) * -2147483647i), 2147483647i) | ~vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(12248u, 7u)], min(36859i, 28486i), firstTrailingBit(var_2.a)), -1329f, var_0.c.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_1.wyx, vec3<f32>(461f, -1000f, var_5.e))) * var_1.yxw))), _wgslsmith_f_op_vec3_f32(var_1.wwy + _wgslsmith_f_op_vec3_f32(var_1.xxy - var_1.xxx))));
}

