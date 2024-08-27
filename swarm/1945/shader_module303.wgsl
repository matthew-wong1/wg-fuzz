struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: i32;

var<private> global2: u32 = 0u;

var<private> global3: Struct_1;

var<private> global4: array<vec2<u32>, 11>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: i32) -> bool {
    global1 = arg_0;
    let var_0 = Struct_1(global3.a, _wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, ~abs(arg_1)), 841i), vec2<i32>(u_input.a, ~0i), global3.c, _wgslsmith_f_op_vec3_f32(floor(global3.e)));
    var var_1 = u_input.b.ywz;
    let var_2 = vec2<f32>(490f, global3.e.x);
    var_1 = ~firstTrailingBit(vec3<u32>(min(u_input.b.x, 18945u), var_1.x, ~(~var_1.x)));
    return true;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0;
    let var_1 = select(arg_0.a.yzx, vec3<bool>(func_3(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.c.x, -8167i, u_input.a, arg_0.c.x), ~vec4<i32>(global3.b, -28957i, var_0.b, global3.b)), firstTrailingBit(i32(-1i) * -9545i)), true, 1389f <= global3.e.x), !vec3<bool>(arg_0.a.x, !(!global3.a.x), var_0.a.x));
    var var_2 = var_0;
    let var_3 = Struct_1(!(!var_0.a), global3.c.x, ~(-abs(var_2.d) | arg_0.c), max(reverseBits(-vec2<i32>(var_0.b, 51696i)), var_2.c), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.e.x + 458f), _wgslsmith_f_op_f32(arg_0.e.x + arg_0.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.x * global3.e.x)), global3.e.x))));
    return Struct_1(select(select(var_0.a, var_2.a, true), vec4<bool>(true, true, global3.a.x, !var_0.a.x), !var_0.a.x), i32(-1i) * -21132i, _wgslsmith_clamp_vec2_i32(global3.c, vec2<i32>(firstTrailingBit(-1i), -var_3.b), vec2<i32>(_wgslsmith_mod_i32(~(-10384i), u_input.a), u_input.a)), ~var_0.c, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(var_3.e.x)), _wgslsmith_f_op_f32(var_3.e.x - arg_0.e.x), _wgslsmith_f_op_f32(min(arg_0.e.x, var_3.e.x))) + vec3<f32>(_wgslsmith_div_f32(1414f, var_0.e.x), var_2.e.x, _wgslsmith_f_op_f32(round(var_2.e.x)))))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(_wgslsmith_add_i32(-50734i, countOneBits(global3.d.x)), -(i32(-1i) * -1i)) & 1i;
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-arg_0.e.x);
    global3 = Struct_1(!vec4<bool>(select(var_1.a.x, global3.a.x, var_1.a.x), true, global3.a.x, true), ~(-18941i), _wgslsmith_clamp_vec2_i32(arg_0.d, vec2<i32>(global3.b, 0i), var_1.d), _wgslsmith_add_vec2_i32(arg_0.c, vec2<i32>(2147483647i, -15629i)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - -416f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f - arg_0.e.x), _wgslsmith_f_op_f32(global3.e.x * -437f))))));
    global4 = array<vec2<u32>, 11>();
    return arg_0;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> vec4<i32> {
    global3 = arg_0;
    let var_0 = _wgslsmith_add_i32(_wgslsmith_add_i32(firstLeadingBit(38247i), _wgslsmith_mult_i32(15272i, global3.b)) | 1i, abs(u_input.a)) & global3.c.x;
    global3 = global0[_wgslsmith_index_u32(u_input.b.x, 30u)];
    var var_1 = vec4<i32>(-firstLeadingBit(1i), 0i, countOneBits(~global3.b), abs(arg_0.b));
    let var_2 = Struct_1(select(vec4<bool>(arg_2, true, ~7219u >= _wgslsmith_div_u32(u_input.b.x, 1u), all(!arg_0.a)), !(!arg_0.a), func_2(Struct_1(arg_1.a, global3.c.x >> (u_input.b.x % 32u), var_1.xw, vec2<i32>(-23492i, 12242i), _wgslsmith_f_op_vec3_f32(arg_1.e + vec3<f32>(429f, arg_1.e.x, global3.e.x)))).a), -1i, select(firstTrailingBit(_wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(0i, 1i)), global3.d)), select(vec2<i32>(1i, var_0), -vec2<i32>(-2147483647i, u_input.a), true), true), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.b, _wgslsmith_clamp_i32(arg_0.d.x, global3.d.x, arg_0.b), abs(u_input.a), 0i), firstLeadingBit(~vec4<i32>(var_1.x, var_0, -42295i, arg_1.b))), max(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, global3.b, var_0), -vec4<i32>(global3.b, var_0, 2147483647i, u_input.a)), ~max(1832i, u_input.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global3.e, vec3<f32>(arg_0.e.x, global3.e.x, arg_0.e.x))))));
    return vec4<i32>(1i, func_4(func_2(func_2(var_2)), true).b, (firstLeadingBit(_wgslsmith_div_i32(arg_1.c.x, global3.b)) ^ (u_input.a ^ ~2147483647i)) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.d.x, arg_1.d.x, -2147483647i, arg_1.b) | firstTrailingBit(vec4<i32>(8546i, 44521i, u_input.a, -1i)), firstLeadingBit(min(vec4<i32>(var_0, 19468i, arg_0.b, var_2.b), vec4<i32>(0i, 0i, var_2.c.x, arg_1.d.x)))), _wgslsmith_add_i32(~_wgslsmith_clamp_i32(func_2(var_2).d.x, -4787i, var_1.x), countOneBits(var_1.x)));
}

fn func_1(arg_0: u32, arg_1: bool) -> i32 {
    global4 = array<vec2<u32>, 11>();
    global0 = array<Struct_1, 30>();
    global1 = _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_add_i32(global3.c.x, u_input.a), global3.c.x, 29378i, global3.d.x)), func_5(global0[_wgslsmith_index_u32(arg_0, 30u)], func_4(func_2(Struct_1(vec4<bool>(false, false, arg_1, global3.a.x), 79274i, vec2<i32>(2147483647i, global3.d.x), global3.d, vec3<f32>(2136f, -471f, global3.e.x))), any(vec4<bool>(true, true, true, true))), (_wgslsmith_mod_i32(global3.d.x, global3.d.x) << (u_input.b.x % 32u)) < ~global3.c.x));
    return (u_input.a ^ global3.b) << (~abs(4294967295u) % 32u);
}

fn func_6(arg_0: i32) -> StorageBuffer {
    global3 = func_4(global0[_wgslsmith_index_u32(4294967295u, 30u)], !((_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, 7799u), u_input.b.yxw) << (75434u % 32u)) <= ~9853u));
    let var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(-global3.e.x);
    global2 = _wgslsmith_sub_u32(min(var_0, _wgslsmith_div_u32(u_input.b.x & 74561u, ~1u) >> (45301u % 32u)), ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~u_input.b, select(u_input.b, vec4<u32>(u_input.b.x, u_input.b.x, var_0, var_0), vec4<bool>(true, global3.a.x, global3.a.x, true))), vec4<u32>(~u_input.b.x, u_input.b.x, ~41743u, 4294967295u | var_0)));
    let var_2 = Struct_1(global3.a, global3.c.x, -vec2<i32>((-7196i << (u_input.b.x % 32u)) | (arg_0 ^ arg_0), _wgslsmith_dot_vec4_i32(-vec4<i32>(-1112i, u_input.a, 2147483647i, global3.c.x), vec4<i32>(1i, global3.c.x, 21630i, -1i) >> (u_input.b % vec4<u32>(32u)))), -select(-vec2<i32>(-36251i, 17855i) >> (min(global4[_wgslsmith_index_u32(u_input.b.x, 11u)], global4[_wgslsmith_index_u32(1u, 11u)]) % vec2<u32>(32u)), global3.d, global3.a.x), _wgslsmith_f_op_vec3_f32(trunc(global3.e)));
    return StorageBuffer(min(global3.c, abs(-abs(vec2<i32>(global3.c.x, 1i)))), ~(~5198u), 856f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a;
    let var_0 = vec2<u32>(u_input.b.x, u_input.b.x);
    var var_1 = ~u_input.b.xwx;
    let var_2 = false;
    let var_3 = var_2;
    global3 = global0[_wgslsmith_index_u32(1u | _wgslsmith_dot_vec4_u32(reverseBits(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 58959u, 15974u, 0u), vec4<u32>(u_input.b.x, 4294967295u, var_1.x, var_0.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, _wgslsmith_add_u32(u_input.b.x, 0u), var_0.x, 0u), ~u_input.b)), 30u)];
    let var_4 = true;
    let x = u_input.a;
    s_output = func_6(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(func_1(var_1.x, global3.a.x), global3.b), -2147483647i), _wgslsmith_sub_i32(~20271i, 1i)));
}

