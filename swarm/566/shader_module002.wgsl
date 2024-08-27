struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<i32, 25>;

var<private> global2: Struct_1;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: f32) -> u32 {
    global1 = array<i32, 25>();
    global1 = array<i32, 25>();
    var var_0 = true | (true | (_wgslsmith_f_op_f32(select(-563f, _wgslsmith_f_op_f32(f32(-1f) * -1782f), arg_0)) <= _wgslsmith_f_op_f32(-523f + global2.c.x)));
    let var_1 = global2.b;
    global1 = array<i32, 25>();
    return _wgslsmith_div_u32(53245u, 22297u);
}

fn func_2(arg_0: f32) -> vec3<u32> {
    global0 = array<Struct_1, 24>();
    var var_0 = Struct_1(~(~(~_wgslsmith_div_vec2_u32(global2.a, global2.a))), ~vec3<u32>(1u, func_3(false, vec2<bool>(true, false), -2824f), _wgslsmith_clamp_u32(48647u, 4294967295u, 4294967295u)) ^ global2.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global2.c.x, global2.c.x, arg_0))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global2.c.x, 1000f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, global2.c.x, -718f))))), u_input.c);
    let var_1 = Struct_1(vec2<u32>((~65285u << (countOneBits(u_input.c) % 32u)) & _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_0.b, var_0.b), ~29493u), 20772u & var_0.a.x), ~_wgslsmith_clamp_vec3_u32(~(vec3<u32>(0u, 1u, 4294967295u) | vec3<u32>(global2.d, var_0.a.x, 1u)), ~(~global2.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(global2.a.x, var_0.d, 4294967295u), var_0.b, _wgslsmith_div_vec3_u32(global2.b, vec3<u32>(25908u, 4294967295u, var_0.b.x)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1352f, global2.c.x, var_0.c.x))))), firstLeadingBit(~1u));
    global2 = Struct_1((~_wgslsmith_clamp_vec2_u32(global2.a, var_1.b.xx, vec2<u32>(4889u, 90847u)) ^ (~global2.b.xy & (global2.b.zy << (global2.a % vec2<u32>(32u))))) << (reverseBits(vec2<u32>(0u, var_0.b.x)) % vec2<u32>(32u)), countOneBits(var_1.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(var_0.c)) * vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -955f)), global2.c.x)), abs(_wgslsmith_sub_u32(countOneBits(33713u), _wgslsmith_div_u32(_wgslsmith_add_u32(global2.d, 26445u), 4294967295u))));
    var var_2 = Struct_1(vec2<u32>(u_input.d, ~0u), _wgslsmith_mod_vec3_u32(reverseBits(var_1.b), _wgslsmith_sub_vec3_u32(~abs(vec3<u32>(1u, global2.b.x, 0u)), select(vec3<u32>(1u, 0u, var_0.b.x), max(vec3<u32>(3301u, u_input.d, 4294967295u), vec3<u32>(global2.d, var_0.d, var_0.d)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.c, global2.c, vec3<bool>(false, false, false))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1409f, 319f, -261f) - vec3<f32>(var_1.c.x, var_1.c.x, -2281f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.x, 1071f, 1445f) + vec3<f32>(arg_0, 1440f, -523f))))), global2.d);
    return reverseBits(global2.b);
}

fn func_1() -> vec3<f32> {
    var var_0 = func_2(global2.c.x);
    var var_1 = !all(vec3<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), false)), false, _wgslsmith_f_op_f32(f32(-1f) * -211f) >= _wgslsmith_div_f32(1039f, global2.c.x)));
    let var_2 = select(vec2<bool>(!all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true)), select(all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), true, false)), !select(vec2<bool>(all(vec2<bool>(false, true)), true), vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))), vec2<bool>(true, true));
    let var_3 = ~_wgslsmith_dot_vec4_i32(-countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(46713u, 25u)], u_input.a.x, global1[_wgslsmith_index_u32(global2.b.x, 25u)]), vec4<i32>(47352i, global1[_wgslsmith_index_u32(0u, 25u)], -1i, global1[_wgslsmith_index_u32(global2.a.x, 25u)]))), vec4<i32>(1i >> (var_0.x % 32u), 0i, 1i, _wgslsmith_sub_i32(-2147483647i, global1[_wgslsmith_index_u32(func_2(global2.c.x).x, 25u)])));
    global2 = Struct_1(max(~vec2<u32>(firstTrailingBit(55575u), 20726u), global2.b.zy), _wgslsmith_sub_vec3_u32(abs(~global2.b), countOneBits(~global2.b)) | firstTrailingBit(vec3<u32>(var_0.x, 1u, 54201u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global2.c))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.c.x, global2.c.x, 589f), vec3<f32>(1735f, 1425f, global2.c.x))) * _wgslsmith_f_op_vec3_f32(-global2.c))))), u_input.c);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-936f)), _wgslsmith_f_op_f32(-global2.c.x)) + _wgslsmith_f_op_f32(-1142f + _wgslsmith_f_op_f32(f32(-1f) * -488f))), _wgslsmith_div_f32(global2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -124f) - _wgslsmith_f_op_f32(step(2024f, -1084f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-836f * -388f), global2.c.x))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>) -> Struct_1 {
    global1 = array<i32, 25>();
    let var_0 = true;
    let var_1 = abs(vec4<i32>(firstTrailingBit(firstLeadingBit(1i)), -u_input.a.x, 0i, reverseBits(~_wgslsmith_add_i32(-1i, arg_2.x))));
    var var_2 = arg_0.a;
    let var_3 = arg_1;
    return Struct_1(~(~_wgslsmith_div_vec2_u32(arg_0.b.yz, ~vec2<u32>(0u, u_input.d))), _wgslsmith_mult_vec3_u32(~arg_0.b, global2.b), _wgslsmith_div_vec3_f32(global2.c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 191f) + global2.c.x), 775f, _wgslsmith_f_op_f32(trunc(arg_0.c.x)))), ~_wgslsmith_dot_vec4_u32(firstLeadingBit(select(vec4<u32>(global2.a.x, 33517u, 7117u, global2.a.x), vec4<u32>(var_2.x, 120323u, arg_0.b.x, arg_0.a.x), vec4<bool>(false, true, true, true))), ~vec4<u32>(1u, 22255u, u_input.d, global2.a.x) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(21843u, u_input.c, arg_0.d, u_input.d), vec4<u32>(u_input.d, 82567u, 0u, 49515u)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 25>();
    global2 = func_4(Struct_1(global2.a, _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(global2.b, global2.b), ~vec3<u32>(u_input.d, global2.a.x, 4294967295u) | _wgslsmith_mod_vec3_u32(global2.b, vec3<u32>(38813u, u_input.c, 4294967295u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.c * global2.c) - _wgslsmith_f_op_vec3_f32(func_1())), _wgslsmith_dot_vec4_u32(max(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, global2.d, global2.a.x), vec4<u32>(1u, u_input.c, 0u, 43382u)), vec4<u32>(global2.a.x, global2.d, 12210u, global2.d)), (vec4<u32>(55765u, 24964u, 4294967295u, 12864u) | vec4<u32>(u_input.c, 0u, 101288u, 0u)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(49202u, 1u, u_input.d, u_input.d), vec4<u32>(6932u, global2.d, 22885u, global2.a.x)) % vec4<u32>(32u)))), global2.c.x, select(-vec4<i32>(1i, _wgslsmith_mod_i32(-63120i, 1i), u_input.e.x, 2147483647i), min(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b, u_input.a.x, global1[_wgslsmith_index_u32(u_input.d, 25u)], -1i), ~vec4<i32>(u_input.a.x, u_input.b, 2147483647i, u_input.e.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -1i, global1[_wgslsmith_index_u32(45515u, 25u)], u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.c, 25u)], 16620i, 1i), vec4<i32>(u_input.a.x, global1[_wgslsmith_index_u32(4294967295u, 25u)], u_input.a.x, 1i)), ~vec4<i32>(-59482i, u_input.a.x, -2147483647i, global1[_wgslsmith_index_u32(global2.b.x, 25u)]))), !all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
    let var_0 = Struct_1(select(global2.a, _wgslsmith_mod_vec2_u32(func_2(global2.c.x).zy, vec2<u32>(u_input.c, 26991u)), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))) << (global2.a % vec2<u32>(32u)), abs(global2.b), _wgslsmith_f_op_vec3_f32(func_1()), 15520u);
    global1 = array<i32, 25>();
    let var_1 = func_4(var_0, global2.c.x, u_input.e >> (vec4<u32>(min(~u_input.d, max(var_0.a.x, var_0.b.x)), min(u_input.c, countOneBits(0u)), global2.b.x, ~4294967295u << (_wgslsmith_dot_vec2_u32(var_0.a, vec2<u32>(var_0.b.x, u_input.d)) % 32u)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(40078u, var_1.d, 4294967295u << (var_0.a.x % 32u), _wgslsmith_div_u32(42593u, var_1.b.x))), -global1[_wgslsmith_index_u32(u_input.d ^ (firstTrailingBit(6607u) & 2145u), 25u)], vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -441f)), -1525f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_1.c.x)))))), vec4<f32>(-956f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_0.c.x)))))), var_0.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.c.x + 1343f), var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(281f, -727f))), false))));
}

