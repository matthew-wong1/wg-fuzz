struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: vec2<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 2>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32) -> vec3<i32> {
    global0 = array<vec4<i32>, 2>();
    global0 = array<vec4<i32>, 2>();
    var var_0 = _wgslsmith_f_op_f32(-158f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-167f - 496f))), _wgslsmith_f_op_f32(f32(-1f) * -1094f)))));
    let var_1 = Struct_1(max(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 0u, arg_0), vec3<u32>(arg_0, 0u, u_input.a))) | min(_wgslsmith_mult_u32(1u, 14302u), _wgslsmith_div_u32(1u, 1u)), u_input.a), u_input.a, (abs(vec4<i32>(36983i, 6468i, 2147483647i, 43991i)) ^ _wgslsmith_add_vec4_i32(global0[_wgslsmith_index_u32(4294967295u, 2u)], vec4<i32>(2147483647i, -43672i, -68463i, 1i) | global0[_wgslsmith_index_u32(4294967295u, 2u)])) ^ global0[_wgslsmith_index_u32(u_input.a ^ (~44912u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, arg_0, u_input.a), vec4<u32>(u_input.a, 1u, 1u, 42979u)) % 32u)), 2u)], -8086i, 1i);
    global0 = array<vec4<i32>, 2>();
    return -var_1.c.xyy;
}

fn func_4(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_2, arg_3: vec3<f32>) -> vec2<bool> {
    global0 = array<vec4<i32>, 2>();
    let var_0 = Struct_3(arg_2.b.yx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1850f, arg_3.x, arg_3.x)), -_wgslsmith_mult_i32(min(arg_2.a, arg_1), arg_1) | -(-arg_2.d.d & 0i), arg_3.x);
    let var_1 = arg_2.b.zxx;
    return !(!arg_2.b.xx);
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = func_4(func_3(_wgslsmith_add_u32(47621u, (0u ^ arg_0) & 1u)), i32(-1i) * -1i, Struct_2(~_wgslsmith_dot_vec4_i32(vec4<i32>(35478i, 53094i, 10078i, 52235i), global0[_wgslsmith_index_u32(u_input.a, 2u)] ^ global0[_wgslsmith_index_u32(32217u, 2u)]), vec4<bool>(true, true, true, true), ~_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, arg_0), _wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_0), vec2<u32>(27100u, u_input.a))), Struct_1(4294967295u, _wgslsmith_add_u32(~arg_0, ~1u), global0[_wgslsmith_index_u32(31085u, 2u)], _wgslsmith_sub_i32(select(5900i, 1i, false), firstLeadingBit(2147483647i)), -_wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(u_input.a, 2u)], vec4<i32>(21904i, -2147483647i, -1i, 1i)))), vec3<f32>(_wgslsmith_f_op_f32(-1000f + 236f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1464f + 262f) * -1523f), 1000f, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -545f)))))));
    global0 = array<vec4<i32>, 2>();
    let var_1 = ~vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(1892u, 19322u, u_input.a), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, u_input.a, arg_0), vec3<u32>(u_input.a, arg_0, 10820u))), ~((arg_0 | u_input.a) << (u_input.a % 32u)));
    global0 = array<vec4<i32>, 2>();
    let var_2 = select(select(!vec4<bool>(!var_0.x, !var_0.x, all(vec3<bool>(var_0.x, var_0.x, var_0.x)), var_0.x), select(!(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)), select(select(vec4<bool>(false, true, false, true), vec4<bool>(var_0.x, var_0.x, false, false), true), select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, true, true), vec4<bool>(var_0.x, false, false, var_0.x)), !var_0.x), false), !(!vec4<bool>(false, var_0.x, var_0.x, var_0.x))), select(select(!(!vec4<bool>(true, var_0.x, var_0.x, var_0.x)), !vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), vec4<bool>(true, var_0.x, firstTrailingBit(66588u) <= 45438u, true), !select(!vec4<bool>(false, true, var_0.x, var_0.x), !vec4<bool>(true, var_0.x, true, true), vec4<bool>(true, true, var_0.x, true))), !(!(all(vec3<bool>(var_0.x, true, var_0.x)) & (0u >= u_input.a))));
    return ~u_input.a;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4, arg_2: u32) -> Struct_2 {
    let var_0 = arg_1.c.d;
    var var_1 = Struct_2(-1i, arg_1.c.b, vec2<u32>(_wgslsmith_div_u32(~41282u, countOneBits(1u)), ~(4294967295u ^ arg_1.a.a)), Struct_1(28277u, _wgslsmith_mod_u32(u_input.a, 26089u), vec4<i32>(var_0.c.x | 1i, countOneBits(0i), _wgslsmith_mod_i32(2147483647i, 11630i) >> (_wgslsmith_dot_vec2_u32(arg_1.c.c, arg_1.c.c) % 32u), func_3(26574u).x), i32(-1i) * -13307i, arg_1.b));
    let var_2 = Struct_1(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, 61996u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, var_1.d.a), ~vec3<u32>(arg_2, 35328u, 5057u)), ~var_1.c.x), (min(var_0.a, var_1.c.x) ^ 0u) ^ ~(~_wgslsmith_clamp_u32(u_input.a, 4294967295u, arg_1.c.d.a)), vec4<i32>(func_3(var_1.c.x).x, arg_0.c, -2147483647i | _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_1.a, var_1.d.d, -2147483647i, var_0.c.x)), abs(var_0.c)), var_0.e), -arg_1.b, var_0.c.x);
    let var_3 = Struct_3(arg_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x), arg_0.d, _wgslsmith_div_f32(arg_0.d, arg_0.d)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d, arg_0.d, 1575f) * vec3<f32>(arg_0.d, arg_0.b.x, arg_0.b.x)) * _wgslsmith_f_op_vec3_f32(step(arg_0.b, arg_0.b))))), -(countOneBits(_wgslsmith_mod_i32(-16075i, arg_0.c)) | 3754i), arg_0.b.x);
    var var_4 = Struct_1(4294967295u, u_input.a, var_1.d.c, 38750i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(global0[_wgslsmith_index_u32(14157u, 2u)]), ~var_1.d.c) << (~firstTrailingBit(vec4<u32>(u_input.a, var_2.a, arg_2, 4294967295u)) % vec4<u32>(32u)), vec4<i32>(arg_1.a.e, 2147483647i, 1i, var_0.c.x & min(arg_1.d.x, arg_1.c.d.e))));
    return Struct_2(2147483647i, !arg_1.c.b, _wgslsmith_add_vec2_u32(arg_1.c.c >> (vec2<u32>(~arg_2, _wgslsmith_mult_u32(arg_1.a.b, u_input.a)) % vec2<u32>(32u)), abs(vec2<u32>(arg_2 & var_1.d.a, ~63556u))), arg_1.c.d);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: bool, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = func_5(Struct_3(select(select(select(vec2<bool>(arg_2, true), vec2<bool>(true, true), vec2<bool>(arg_2, arg_2)), select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, arg_2), arg_2), arg_2 & true), vec2<bool>(true, true), !(!arg_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(546f, 1293f, 346f)) * vec3<f32>(-1178f, -957f, 475f))), abs(2147483647i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -395f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(272f)))))), Struct_4(Struct_1(firstLeadingBit(firstTrailingBit(1u)), func_2(arg_3.b), arg_3.c, _wgslsmith_mod_i32(0i, select(4948i, 0i, arg_2)), max(arg_3.d, -2822i)), min(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.e, arg_0.x, arg_0.x, 0i), arg_3.c), _wgslsmith_div_i32(arg_0.x, arg_3.d)) >> (87753u % 32u), Struct_2(arg_0.x, !select(vec4<bool>(false, arg_2, arg_2, arg_2), vec4<bool>(arg_2, false, arg_2, true), vec4<bool>(arg_2, arg_2, arg_2, false)), vec2<u32>(abs(arg_1), ~arg_1), arg_3), abs(global0[_wgslsmith_index_u32(40148u, 2u)])), 0u);
    global0 = array<vec4<i32>, 2>();
    var var_1 = abs(~(~max(countOneBits(var_0.d.c.ww), abs(arg_0.yy))));
    let var_2 = ~_wgslsmith_add_i32(0i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, var_1.x, arg_3.c.x, var_1.x), var_0.d.c << (vec4<u32>(23621u, u_input.a, arg_1, arg_3.b) % vec4<u32>(32u)))));
    var var_3 = vec4<u32>(_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_div_u32(0u, u_input.a)), arg_3.a), _wgslsmith_mod_u32(_wgslsmith_div_u32(4294967295u, select(arg_1, 1u, true)), u_input.a), arg_3.a, _wgslsmith_add_u32(u_input.a, 36310u)) << (vec4<u32>(_wgslsmith_add_u32(67306u, abs(1u)), arg_3.a, u_input.a, _wgslsmith_mod_u32(~0u & var_0.c.x, ~(~0u))) % vec4<u32>(32u));
    return !select(vec2<bool>(true, true), select(vec2<bool>(true, !arg_2), var_0.b.zx, false), var_0.b.wx);
}

fn func_6(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = func_5(Struct_3(vec2<bool>(true, arg_0), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-716f, _wgslsmith_f_op_f32(-156f + 583f), _wgslsmith_f_op_f32(max(607f, 296f))))), -countOneBits(-3632i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1452f + -231f)))), Struct_4(func_5(Struct_3(!vec2<bool>(arg_1.b.x, arg_1.b.x), vec3<f32>(2078f, 1000f, -281f), -2147483647i, -353f), Struct_4(arg_2, arg_1.a, func_5(Struct_3(arg_1.b.ww, vec3<f32>(1474f, 342f, -1008f), -32589i, -492f), Struct_4(arg_2, 34610i, Struct_2(0i, vec4<bool>(false, true, arg_1.b.x, false), arg_1.c, Struct_1(4693u, arg_1.c.x, vec4<i32>(-2147483647i, 1i, 1i, -12778i), 5061i, arg_2.d)), vec4<i32>(1i, -5423i, -61794i, -79305i)), var_0.a), arg_1.d.c | vec4<i32>(arg_1.d.d, 1i, -22495i, arg_1.a)), 88832u).d, -51170i, Struct_2(select(arg_2.d, i32(-1i) * -9483i, !arg_0), !vec4<bool>(arg_1.b.x, false, false, arg_0), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a, 0u), vec2<u32>(arg_2.b, 4294967295u)), arg_2), _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, arg_2.e, -1i, var_0.e), abs(vec4<i32>(1568i, arg_2.e, 2147483647i, 1i))), ~firstLeadingBit(vec4<i32>(arg_2.d, 3377i, arg_2.d, -2147483647i)))), 71939u | ~(~firstLeadingBit(arg_1.d.b)));
    var var_2 = vec4<i32>(~var_1.a ^ (_wgslsmith_dot_vec2_i32(vec2<i32>(-19801i, arg_1.a) & arg_2.c.zw, abs(vec2<i32>(-1i, arg_2.d))) ^ -var_1.d.c.x), countOneBits(_wgslsmith_dot_vec3_i32(var_0.c.zzw | vec3<i32>(arg_2.c.x, -21405i, -9897i), abs(vec3<i32>(-25436i, 1505i, 16138i)))) >> (55982u % 32u), firstTrailingBit(0i | arg_2.e), countOneBits(var_1.a));
    global0 = array<vec4<i32>, 2>();
    let var_3 = ~(~select(_wgslsmith_mod_vec3_u32(~vec3<u32>(14247u, var_1.d.b, var_1.d.a), select(vec3<u32>(4908u, u_input.a, 25671u), vec3<u32>(arg_2.b, var_1.c.x, 4294967295u), true)), vec3<u32>(80016u, 1u, ~arg_1.d.b), select(vec3<bool>(true, true, true), vec3<bool>(false, true, arg_1.b.x), arg_1.b.zyz)));
    return Struct_1(select(u_input.a, reverseBits(_wgslsmith_mod_u32(4294967295u, var_1.d.b)) ^ var_0.a, !arg_0), 4294967295u, _wgslsmith_mod_vec4_i32(~(~(~var_1.d.c)), arg_2.c ^ -select(global0[_wgslsmith_index_u32(var_1.d.a, 2u)], global0[_wgslsmith_index_u32(arg_1.c.x, 2u)], var_1.b)), _wgslsmith_div_i32(i32(-1i) * -2147483647i, ~firstTrailingBit(max(arg_1.a, 0i))), -77966i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i & abs(-15013i << (u_input.a % 32u));
    global0 = array<vec4<i32>, 2>();
    let var_1 = func_6(!(true == any(func_1(vec3<i32>(-3250i, -2147483647i, var_0), u_input.a, false, Struct_1(u_input.a, u_input.a, vec4<i32>(0i, var_0, 0i, var_0), 2239i, var_0)))), Struct_2(_wgslsmith_sub_i32(var_0, var_0), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), true), ~vec2<u32>(~u_input.a, u_input.a), func_5(Struct_3(vec2<bool>(false, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(1004f, 483f, -411f) * vec3<f32>(800f, -436f, -1382f)), var_0, _wgslsmith_f_op_f32(floor(-199f))), Struct_4(Struct_1(u_input.a, 67933u, vec4<i32>(var_0, 2147483647i, var_0, var_0), -6092i, var_0), var_0, Struct_2(-1878i, vec4<bool>(true, true, false, true), vec2<u32>(u_input.a, 1u), Struct_1(u_input.a, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 2u)], -2147483647i, var_0)), vec4<i32>(-2147483647i, var_0, -1i, var_0) | global0[_wgslsmith_index_u32(u_input.a, 2u)]), ~1u).d), func_5(Struct_3(func_1(vec3<i32>(23751i, 2147483647i, var_0), func_2(u_input.a), select(false, true, true), func_5(Struct_3(vec2<bool>(false, false), vec3<f32>(757f, 110f, 196f), var_0, -181f), Struct_4(Struct_1(4294967295u, 24123u, global0[_wgslsmith_index_u32(u_input.a, 2u)], var_0, var_0), 1793i, Struct_2(var_0, vec4<bool>(true, true, true, true), vec2<u32>(13945u, 1u), Struct_1(u_input.a, u_input.a, global0[_wgslsmith_index_u32(13887u, 2u)], 17342i, -51445i)), vec4<i32>(0i, 23342i, 36009i, 2417i)), 68460u).d), vec3<f32>(_wgslsmith_div_f32(-2669f, 2092f), _wgslsmith_f_op_f32(f32(-1f) * -224f), _wgslsmith_f_op_f32(trunc(-980f))), var_0, -414f), Struct_4(Struct_1(_wgslsmith_sub_u32(u_input.a, u_input.a), countOneBits(u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 2u)], -var_0, abs(var_0)), var_0, func_5(Struct_3(vec2<bool>(true, true), vec3<f32>(155f, -1163f, -257f), var_0, -941f), Struct_4(Struct_1(89436u, u_input.a, vec4<i32>(var_0, var_0, -3038i, -71875i), var_0, var_0), -52058i, Struct_2(-2147483647i, vec4<bool>(true, false, false, true), vec2<u32>(4294967295u, u_input.a), Struct_1(u_input.a, u_input.a, global0[_wgslsmith_index_u32(4294967295u, 2u)], var_0, 2147483647i)), global0[_wgslsmith_index_u32(u_input.a, 2u)]), 4294967295u), vec4<i32>(~(-12519i), countOneBits(var_0), -1i, 47806i)), _wgslsmith_sub_u32(1u, 1u)).d);
    global0 = array<vec4<i32>, 2>();
    global0 = array<vec4<i32>, 2>();
    let var_2 = Struct_4(func_6(any(vec2<bool>(true, true)), Struct_2(i32(-1i) * -2147483647i, vec4<bool>(false, true, true, true), _wgslsmith_mult_vec2_u32(vec2<u32>(55673u, u_input.a), firstTrailingBit(vec2<u32>(var_1.b, var_1.b))), Struct_1(1u, func_2(18585u), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.e, var_0, var_1.e, var_0), global0[_wgslsmith_index_u32(u_input.a, 2u)]), var_1.d ^ var_1.c.x, _wgslsmith_div_i32(var_0, 65405i))), Struct_1(~(23322u ^ var_1.b), ~u_input.a, ~abs(vec4<i32>(-6318i, 2147483647i, 2147483647i, var_1.d)), -_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, -1i, -2147483647i), var_1.c.wyy), ~_wgslsmith_clamp_i32(-45981i, 1i, var_1.c.x))), var_0, Struct_2(var_1.e << (~1u % 32u), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), false)), min(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, var_1.a), vec2<u32>(var_1.a, var_1.b)), select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(55162u, u_input.a), true)), _wgslsmith_div_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), vec2<u32>(var_1.a, 0u))), var_1), func_6((-var_1.e & _wgslsmith_mult_i32(var_1.e, var_1.c.x)) > -var_1.d, func_5(Struct_3(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 789f, 267f)), 1i, _wgslsmith_f_op_f32(603f + 459f)), Struct_4(func_5(Struct_3(vec2<bool>(true, true), vec3<f32>(1621f, -497f, -1923f), 9978i, -869f), Struct_4(var_1, var_0, Struct_2(var_0, vec4<bool>(true, false, true, false), vec2<u32>(u_input.a, var_1.b), Struct_1(u_input.a, 0u, global0[_wgslsmith_index_u32(65500u, 2u)], -1i, 1i)), vec4<i32>(var_1.c.x, 17064i, var_1.e, var_1.d)), var_1.b).d, 1i ^ var_0, func_5(Struct_3(vec2<bool>(false, true), vec3<f32>(-719f, -1221f, -277f), 2147483647i, -1998f), Struct_4(var_1, 23909i, Struct_2(var_0, vec4<bool>(true, false, false, true), vec2<u32>(43893u, u_input.a), var_1), global0[_wgslsmith_index_u32(u_input.a, 2u)]), 49553u), func_6(false, Struct_2(4009i, vec4<bool>(true, true, false, false), vec2<u32>(13357u, var_1.b), var_1), Struct_1(0u, 0u, global0[_wgslsmith_index_u32(55519u, 2u)], var_1.e, -2147483647i)).c), _wgslsmith_div_u32(_wgslsmith_clamp_u32(0u, var_1.a, u_input.a), abs(u_input.a))), Struct_1(var_1.b, 0u, global0[_wgslsmith_index_u32(10781u, 2u)], max(~23392i, var_0), -_wgslsmith_sub_i32(var_1.d, 59805i))).c);
    let x = u_input.a;
    s_output = StorageBuffer(func_6(var_2.c.b.x, var_2.c, Struct_1(_wgslsmith_clamp_u32(var_1.b, 28318u, var_2.c.c.x) | ~u_input.a, u_input.a ^ var_2.c.c.x, vec4<i32>(var_0, _wgslsmith_mult_i32(var_2.a.c.x, var_1.e), 1i, var_0), reverseBits(var_2.b), i32(-1i) * -2147483647i)).c, ~(~_wgslsmith_clamp_u32(~var_2.c.c.x, var_1.a, 22535u)), reverseBits(abs(~var_2.c.c)) | vec2<u32>(reverseBits(u_input.a | 1u), _wgslsmith_dot_vec4_u32(max(vec4<u32>(var_2.a.b, u_input.a, var_1.b, 4294967295u), vec4<u32>(u_input.a, u_input.a, var_2.a.b, var_2.a.a)), vec4<u32>(67823u, 77814u, u_input.a, 33914u) << (vec4<u32>(0u, 1u, 4840u, var_2.c.d.a) % vec4<u32>(32u)))), vec2<u32>(_wgslsmith_mod_u32(4294967295u, var_1.a), u_input.a));
}

