struct Struct_1 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 12>;

var<private> global1: vec3<u32> = vec3<u32>(1u, 0u, 27201u);

var<private> global2: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<f32>(-1251f, -2060f, -592f, -1765f), vec4<i32>(1i, 42083i, 22023i, 2147483647i)));

var<private> global3: f32;

var<private> global4: vec2<i32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<i32> {
    return abs(_wgslsmith_add_vec3_i32(-select(vec3<i32>(u_input.a, u_input.a, global4.x), vec3<i32>(u_input.b, 6544i, 41463i), true) << (u_input.c % vec3<u32>(32u)), vec3<i32>(1i, -2147483647i, 83813i)));
}

fn func_2() -> vec3<u32> {
    let var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(global4.x, -36718i, 37710i) >> (u_input.c % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(func_3(), min(vec3<i32>(global4.x, u_input.b, global4.x), vec3<i32>(u_input.a, global4.x, global4.x)), vec3<i32>(-2147483647i, global4.x, 13193i) << (u_input.c % vec3<u32>(32u)))), _wgslsmith_mult_vec3_i32(firstTrailingBit(min(vec3<i32>(1i, -60070i, u_input.b), vec3<i32>(u_input.a, 12088i, global4.x))), select(-vec3<i32>(-29633i, u_input.b, -2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(12538i, 8939i, global4.x), vec3<i32>(1i, 9216i, -1i)), u_input.d != 0u))), _wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(u_input.e, u_input.e), vec2<i32>(0i, u_input.e.x) >> (vec2<u32>(1u, u_input.d) % vec2<u32>(32u))), select(max(min(vec2<i32>(-2147483647i, global4.x), vec2<i32>(4989i, -8624i)), _wgslsmith_div_vec2_i32(u_input.e, u_input.e)), ~u_input.e, select(vec2<bool>(true, true), vec2<bool>(true, true), true))), ~global4.x);
    var var_1 = 0u;
    let var_2 = false;
    let var_3 = !vec2<bool>(!any(select(vec4<bool>(true, var_2, true, var_2), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, var_2))), all(!(!vec3<bool>(true, var_2, false))));
    global0 = array<vec4<i32>, 12>();
    return u_input.c >> (~_wgslsmith_mult_vec3_u32(u_input.c, u_input.c) % vec3<u32>(32u));
}

fn func_1(arg_0: vec3<f32>) -> vec2<f32> {
    global1 = ~(~_wgslsmith_add_vec3_u32(func_2(), select(u_input.c, vec3<u32>(global1.x, 1u, 25926u), vec3<bool>(false, false, false)) >> (vec3<u32>(u_input.c.x, u_input.d, global1.x) % vec3<u32>(32u))));
    global1 = ~select(u_input.c, ~((u_input.c | u_input.c) >> (~vec3<u32>(global1.x, global1.x, 22615u) % vec3<u32>(32u))), vec3<bool>(true, true, 1i < _wgslsmith_sub_i32(u_input.b, global4.x)));
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x)))))), arg_0.x);
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(300f, 268f, 117f, arg_0.x)))))), abs(max(~(-vec4<i32>(-1i, global4.x, u_input.a, -2147483647i)), global0[_wgslsmith_index_u32(~u_input.c.x, 12u)] >> (~vec4<u32>(u_input.c.x, 1u, 15782u, u_input.d) % vec4<u32>(32u)))));
    global1 = u_input.c;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_0.zx)));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: vec2<f32>) -> u32 {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(arg_2.x + arg_2.x)), arg_2.x)), _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_div_f32(arg_2.x, arg_2.x))), arg_2.x, _wgslsmith_f_op_f32(-arg_2.x)), vec4<i32>(countOneBits(u_input.e.x), 2147483647i, _wgslsmith_mod_i32(_wgslsmith_add_i32(global4.x, global4.x), abs(global4.x)) >> (((8107u << (u_input.c.x % 32u)) >> (abs(global1.x) % 32u)) % 32u), firstTrailingBit(10770i)));
    let var_1 = Struct_1(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-322f, 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.x, var_0.a.x, arg_0.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.x))))), arg_2.x), _wgslsmith_sub_vec4_i32(min(var_0.b, select(vec4<i32>(1377i, -2147483647i, u_input.a, -26783i), vec4<i32>(u_input.a, u_input.a, global4.x, global4.x) >> (vec4<u32>(u_input.d, 0u, arg_1.x, 25649u) % vec4<u32>(32u)), 1035i <= global4.x)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i & u_input.e.x, global4.x, -26365i, u_input.b), min(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.e.x, global4.x, -2147483647i, 0i), var_0.b), global0[_wgslsmith_index_u32(u_input.c.x, 12u)]))));
    global2 = array<Struct_1, 1>();
    var var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(max(_wgslsmith_add_u32(~arg_1.x, global1.x), _wgslsmith_dot_vec3_u32(~arg_1, ~vec3<u32>(580u, 36764u, global1.x))), countOneBits(_wgslsmith_mult_u32(18116u, _wgslsmith_dot_vec4_u32(vec4<u32>(17542u, 1u, arg_1.x, u_input.c.x), vec4<u32>(u_input.c.x, global1.x, global1.x, 0u)))), global1.x, _wgslsmith_sub_u32(~63772u << (~global1.x % 32u), _wgslsmith_div_u32(arg_1.x, global1.x))), vec4<u32>(abs(_wgslsmith_dot_vec2_u32(global1.zx, arg_1.zx) & arg_1.x), u_input.d, 11236u, ~min(abs(arg_1.x), 20484u)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1028f - var_0.a.x), _wgslsmith_div_f32(-301f, var_0.a.x), _wgslsmith_f_op_f32(sign(-390f)), var_1.a.x) + var_1.a)), firstTrailingBit(~(-vec4<i32>(1i, -2147483647i, var_0.b.x, -54053i))));
    return abs(u_input.c.x);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: u32) -> vec3<i32> {
    var var_0 = !vec3<bool>(!all(vec3<bool>(true, false, true)), true, all(vec3<bool>(true, true, true)));
    var var_1 = _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, 18089i) >> (vec2<u32>(_wgslsmith_div_u32(countOneBits(arg_2), reverseBits(arg_0.x)), global1.x) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_sub_i32(arg_1.b.x, ~(~(-38604i))), ~1i));
    var var_2 = var_0.x;
    var var_3 = vec3<bool>(49990u == ~(~(4294967295u >> (arg_2 % 32u))), false, all(!vec3<bool>(!var_0.x, true, all(vec3<bool>(var_0.x, true, var_0.x)))));
    var var_4 = _wgslsmith_f_op_f32(min(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1034f, 735f)))));
    return _wgslsmith_mod_vec3_i32(~firstTrailingBit(countOneBits(arg_1.b.zzx) & _wgslsmith_sub_vec3_i32(arg_1.b.zyx, arg_1.b.xyx)), _wgslsmith_div_vec3_i32(~(-_wgslsmith_mod_vec3_i32(arg_1.b.xxy, arg_1.b.wzw)), _wgslsmith_sub_vec3_i32(arg_1.b.ywz, arg_1.b.yzx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_add_vec4_u32(vec4<u32>(global1.x, global1.x, 0u, global1.x) | (vec4<u32>(50624u, 0u, 19706u, 10481u) & vec4<u32>(83160u, global1.x, 1u, 4294967295u)), ~firstLeadingBit(vec4<u32>(u_input.c.x, u_input.d, 1u, u_input.d))), global2[_wgslsmith_index_u32(0u, 1u)], func_4(vec2<bool>(true, true), ~reverseBits(u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec3<f32>(-214f, -1632f, 262f)))))) & vec3<i32>(abs(-(-1i | global4.x)), -70318i, 35600i);
    global0 = array<vec4<i32>, 12>();
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1144f))), -216f) + vec4<f32>(-697f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1556f)))), _wgslsmith_div_f32(-1297f, _wgslsmith_f_op_f32(f32(-1f) * -182f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(763f - -264f) + -534f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(397f, -502f, -1280f, -866f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2037f, -641f, 738f, -1659f))) * vec4<f32>(-1710f, -106f, 594f, 141f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(885f, 1598f, 1230f, 904f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1096f, -616f, 1382f, 419f) - vec4<f32>(1659f, -969f, 219f, 2621f))))))));
    global0 = array<vec4<i32>, 12>();
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(var_1 - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(var_1)))), vec4<i32>(var_0.x, func_5(select(select(vec4<u32>(4294967295u, global1.x, u_input.d, 4609u), vec4<u32>(1u, 1u, 1u, 4294967295u), vec4<bool>(true, true, false, true)), ~vec4<u32>(global1.x, global1.x, 1u, u_input.d), vec4<bool>(true, true, true, true)), global2[_wgslsmith_index_u32(u_input.d ^ ~global1.x, 1u)], _wgslsmith_sub_u32(u_input.d, ~global1.x)).x, -u_input.e.x << (~_wgslsmith_dot_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(global1.x, 26315u, u_input.c.x)) % 32u), 60829i));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(346f, _wgslsmith_f_op_f32(exp2(var_1.x))), global1.xy, 1u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-347f, -1000f)))), var_2.a.x, 127f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-174f))) - var_2.a.x)), _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.wxw, vec3<f32>(222f, var_1.x, 1049f)) - var_1.ywx)))).x);
}

