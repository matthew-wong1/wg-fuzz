struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: array<vec3<i32>, 6>;

var<private> global2: array<bool, 18> = array<bool, 18>(false, false, true, false, true, false, true, false, true, true, true, false, false, false, false, true, false, true);

var<private> global3: Struct_1;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> i32 {
    global1 = array<vec3<i32>, 6>();
    global1 = array<vec3<i32>, 6>();
    var var_0 = -vec2<i32>(1i, 16337i);
    let var_1 = vec4<i32>(abs(min(max(var_0.x, 2147483647i), var_0.x) & -u_input.a.x), _wgslsmith_div_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(select(vec2<i32>(var_0.x, var_0.x), vec2<i32>(-2147483647i, var_0.x), vec2<bool>(global2[_wgslsmith_index_u32(40143u, 18u)], true)), vec2<i32>(17204i, global3.b)), firstLeadingBit(global3.b)), 6246i), global3.b, u_input.b);
    var_0 = select(global3.a, ~firstTrailingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-16531i, global3.b), max(vec2<i32>(var_1.x, -6259i), u_input.a), countOneBits(vec2<i32>(global3.a.x, 42846i)))), !(!(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 18u)], false))));
    return select(var_0.x, -(~min(-17000i, u_input.b)), true);
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> vec4<i32> {
    var var_0 = global3.a.x;
    global2 = array<bool, 18>();
    global3 = Struct_1(vec2<i32>(firstTrailingBit(_wgslsmith_clamp_i32(u_input.a.x, -2147483647i, global3.a.x)) | -37554i, u_input.b << (_wgslsmith_dot_vec2_u32(vec2<u32>(56789u, arg_0.x) >> (vec2<u32>(u_input.c.x, arg_0.x) % vec2<u32>(32u)), u_input.c & arg_0.zx) % 32u)), _wgslsmith_clamp_i32(-_wgslsmith_add_i32(global3.a.x, func_3(arg_0.x)), i32(-1i) * -21752i, select(global3.a.x, _wgslsmith_div_i32(u_input.b, u_input.a.x), arg_1)));
    global0 = array<Struct_2, 24>();
    global3 = Struct_1(-_wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(~u_input.a.x, reverseBits(10940i))), ~(i32(-1i) * -firstTrailingBit(global3.b)));
    return firstTrailingBit(vec4<i32>(firstLeadingBit(_wgslsmith_clamp_i32(-6313i, global3.a.x, u_input.a.x)), abs(firstTrailingBit(global3.b)), abs(u_input.b) >> (1u % 32u), u_input.b)) | -(vec4<i32>(-1i, u_input.a.x & global3.b, u_input.a.x >> (arg_0.x % 32u), 37561i) << (firstTrailingBit(arg_0) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<f32>, arg_2: i32, arg_3: i32) -> vec4<i32> {
    var var_0 = 565f;
    var_0 = -1000f;
    var var_1 = _wgslsmith_div_i32(arg_2, (1835i | arg_0.x) ^ _wgslsmith_sub_i32(-18600i, -2147483647i));
    var var_2 = _wgslsmith_f_op_f32(abs(arg_1.x));
    var var_3 = true;
    return vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(func_2(vec4<u32>(42338u, 1u, u_input.c.x, u_input.c.x) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 28015u, u_input.c.x, u_input.c.x), vec4<u32>(0u, 0u, 4294967295u, 0u)) % vec4<u32>(32u)), false), vec4<i32>(max(_wgslsmith_clamp_i32(arg_2, 19803i, 11169i), arg_2), -arg_3, _wgslsmith_add_i32(i32(-1i) * -40215i, arg_3), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(-3444i, 2147483647i, -1i)), vec3<i32>(1i, -2147483647i, u_input.a.x) << (vec3<u32>(9299u, u_input.c.x, u_input.c.x) % vec3<u32>(32u))))), func_2(select(~vec4<u32>(4294967295u, 27770u, u_input.c.x, u_input.c.x) & ~vec4<u32>(4294967295u, 24014u, u_input.c.x, u_input.c.x), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(63122u, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 13667u, u_input.c.x, 1u)), ~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<u32>(u_input.c.x, 24527u, u_input.c.x, u_input.c.x)), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 18u)], global2[_wgslsmith_index_u32(u_input.c.x, 18u)], false, false)), !(global2[_wgslsmith_index_u32(1u, 18u)] || global2[_wgslsmith_index_u32(0u, 18u)])).x, arg_0.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec4<i32>) -> vec4<u32> {
    let var_0 = Struct_3(vec3<u32>(reverseBits(u_input.c.x), u_input.c.x, abs(abs(u_input.c.x))) >> (~_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), max(vec3<u32>(1u, u_input.c.x, 0u), vec3<u32>(u_input.c.x, u_input.c.x, 46608u))) % vec3<u32>(32u)), u_input.c.x ^ _wgslsmith_dot_vec4_u32(~(~vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 35046u)), firstTrailingBit(countOneBits(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x)))), Struct_1(~abs(vec2<i32>(25575i, -53953i)), select(reverseBits(arg_2.x) << (20175u % 32u), -1i, true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1041f, -1000f, 239f, 368f), vec4<f32>(1f, 1f, 1f, 1f)))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(266f - -764f), _wgslsmith_f_op_f32(trunc(2312f)))), -1193f, -1810f, -784f)), global0[_wgslsmith_index_u32(~countOneBits(firstLeadingBit(~0u)), 24u)]);
    return _wgslsmith_mod_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.x, 1087u, var_0.a.x, var_0.b), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 32080u)), _wgslsmith_div_vec4_u32(vec4<u32>(27074u, u_input.c.x, 1u, 6157u), vec4<u32>(u_input.c.x, 20903u, 22486u, var_0.a.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(7207u, 5094u, u_input.c.x, 4294967295u), ~vec4<u32>(52506u, var_0.b, u_input.c.x, 35735u)) ^ ~(~vec4<u32>(var_0.a.x, u_input.c.x, u_input.c.x, var_0.b))) >> (vec4<u32>(u_input.c.x, var_0.a.x, var_0.a.x | (~u_input.c.x << (~u_input.c.x % 32u)), abs(var_0.a.x ^ ~40954u)) % vec4<u32>(32u));
}

fn func_5(arg_0: f32, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(sign(arg_0))), arg_0), _wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1114f + arg_0))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(284f - arg_0) - _wgslsmith_f_op_f32(-arg_0))), arg_0), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-805f - arg_0), _wgslsmith_f_op_f32(min(arg_0, arg_0)), arg_0, _wgslsmith_div_f32(-1479f, 729f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(250f, -1378f, arg_0, arg_0)))))))));
    var var_1 = vec4<bool>(select(!global2[_wgslsmith_index_u32(~(~975u), 18u)], global2[_wgslsmith_index_u32(arg_1.x, 18u)], !any(vec2<bool>(global2[_wgslsmith_index_u32(arg_1.x, 18u)], true))), all(!(!vec2<bool>(global2[_wgslsmith_index_u32(5562u, 18u)], true))) || global2[_wgslsmith_index_u32(max(~func_4(vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 18u)], true), global1[_wgslsmith_index_u32(116314u, 6u)], vec4<i32>(26701i, global3.a.x, -55009i, global3.a.x)).x, 63336u), 18u)], all(vec3<bool>(false, !global2[_wgslsmith_index_u32(u_input.c.x, 18u)] || true, global2[_wgslsmith_index_u32(1u, 18u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-335f))) <= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + -1140f) - 1000f))));
    let var_2 = Struct_5(Struct_2(Struct_1(global3.a >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, 1522u), vec2<u32>(u_input.c.x, 137152u)) % vec2<u32>(32u)), ~max(-1i, 10530i))), select(firstTrailingBit((-25647i ^ global3.b) >> (0u % 32u)), 1i, global2[_wgslsmith_index_u32(28464u, 18u)] || true), u_input.c.x, countOneBits(~arg_1));
    let var_3 = arg_1.yzw;
    let var_4 = countOneBits(abs(~arg_1.yz));
    return Struct_1(-var_2.a.a.a, 0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global3.a.x << (1u % 32u), _wgslsmith_div_i32(u_input.a.x >> (u_input.c.x % 32u), ~global3.b)), vec2<i32>(-1i) * -(vec2<i32>(global3.a.x, u_input.a.x) | vec2<i32>(global3.a.x, 30297i))), vec2<i32>(abs(48227i), global3.a.x));
    global3 = func_5(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(max(198f, -212f))), reverseBits(~vec4<u32>(1u, u_input.c.x, u_input.c.x, u_input.c.x) << (func_4(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 18u)], true, true), _wgslsmith_add_vec3_i32(global1[_wgslsmith_index_u32(26223u, 6u)], vec3<i32>(1i, var_0, global3.b)), func_1(vec2<i32>(12398i, global3.b), vec3<f32>(-830f, 920f, -1209f), var_0, var_0)) % vec4<u32>(32u))));
    global0 = array<Struct_2, 24>();
    global2 = array<bool, 18>();
    let var_1 = vec3<u32>(~12614u, u_input.c.x, ~_wgslsmith_add_u32(~_wgslsmith_mult_u32(u_input.c.x, 19699u), (4294967295u ^ u_input.c.x) & ~u_input.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~1u, ~firstTrailingBit(11521u)) >> (var_1.x % 32u), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-284f, -1638f, 1279f), vec3<f32>(-1000f, 666f, 458f), vec3<bool>(global2[_wgslsmith_index_u32(2775u, 18u)], global2[_wgslsmith_index_u32(19992u, 18u)], false))) + vec3<f32>(1f, 1f, 1f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(377f, -1626f, 397f)))))), ~(func_2(abs(vec4<u32>(4294967295u, 50472u, u_input.c.x, u_input.c.x)), true).zy >> (_wgslsmith_mod_vec2_u32(var_1.yy, ~vec2<u32>(u_input.c.x, var_1.x)) % vec2<u32>(32u))));
}

