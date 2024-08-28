struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 25>;

var<private> global1: u32 = 27032u;

var<private> global2: array<i32, 27>;

var<private> global3: u32 = 0u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_5, arg_1: i32, arg_2: u32) -> f32 {
    global0 = array<Struct_4, 25>();
    var var_0 = arg_0.a.zy;
    var var_1 = arg_2;
    let var_2 = Struct_2(true);
    var var_3 = global0[_wgslsmith_index_u32(~8287u, 25u)];
    return var_3.d.x;
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: vec3<u32>) -> Struct_1 {
    global0 = array<Struct_4, 25>();
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -531f, _wgslsmith_div_f32(-733f, arg_1), _wgslsmith_f_op_f32(func_3(Struct_5(vec4<u32>(u_input.d, u_input.d, 54770u, 1u), vec3<bool>(arg_0.a.a, true, arg_0.a.a)), arg_0.b, arg_2.x)))))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-165f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1 + -535f), _wgslsmith_div_f32(2131f, arg_1)))), -996f, arg_0.a.a)), _wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-210f + arg_1))) - var_0.x), var_0.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), arg_1, !arg_0.a.a)), 1633f, !(1000f >= arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 + -574f) * -977f) + var_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.x)) - 657f))), arg_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(arg_1)), arg_1, arg_0.a.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(arg_1 + arg_1))), 119f)), vec4<bool>(true, true, arg_0.a.a, _wgslsmith_f_op_f32(1000f + 1000f) >= arg_1)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.xzz * var_0.xxz));
    return Struct_1(all(select(!(!vec2<bool>(arg_0.a.a, arg_0.a.a)), select(vec2<bool>(true, arg_0.a.a), vec2<bool>(true, arg_0.a.a), true), true)), u_input.d);
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> u32 {
    var var_0 = Struct_4(arg_0.b, func_2(Struct_3(Struct_2(arg_0.a.b < arg_1), u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x * 383f) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, arg_0.d.x), _wgslsmith_f_op_f32(min(arg_0.d.x, arg_0.d.x))))), select(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, arg_0.a.b), vec3<u32>(1u, 35296u, u_input.d)), (vec3<u32>(0u, arg_0.a.b, 63990u) >> (vec3<u32>(36047u, 26799u, 55024u) % vec3<u32>(32u))) | abs(vec3<u32>(u_input.d, 4294967295u, 1u)), true)), true, vec4<f32>(_wgslsmith_f_op_f32(-1683f * arg_0.d.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(466f + arg_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + arg_0.d.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(max(-222f, -535f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.d.x)) + -1308f)))), ~arg_0.e);
    var var_1 = 10798u;
    var var_2 = _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, i32(-1i) * -2147483647i, 40746i >> (var_0.b.b % 32u), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a)) | vec4<i32>(-2147483647i, abs(2147483647i), max(-12440i, 1i), abs(10285i)), ~_wgslsmith_div_vec4_i32(vec4<i32>(25673i, arg_0.e.x, arg_0.e.x, arg_0.e.x), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.e.x, 2147483647i, 0i, 2147483647i), vec4<i32>(-35939i, 0i, 1i, u_input.b)))), -(~min(vec4<i32>(arg_0.e.x, -34137i, arg_0.e.x, global2[_wgslsmith_index_u32(arg_1, 27u)]), -vec4<i32>(-55255i, global2[_wgslsmith_index_u32(72151u, 27u)], u_input.b, -16397i))));
    let var_3 = Struct_1(var_0.b.a && var_0.b.a, 0u);
    var var_4 = countOneBits(~(-u_input.e));
    return var_0.a.b >> ((u_input.d >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b, u_input.d, ~arg_1, 1u), _wgslsmith_mult_vec4_u32(~vec4<u32>(arg_1, u_input.d, 14366u, 6853u), vec4<u32>(34578u, arg_0.a.b, 4294967295u, 0u) ^ vec4<u32>(arg_1, var_0.a.b, 0u, arg_0.a.b))) % 32u)) % 32u);
}

fn func_5(arg_0: u32, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: Struct_2) -> Struct_3 {
    global2 = array<i32, 27>();
    var var_0 = ~(i32(-1i) * -countOneBits(15796i));
    var var_1 = -30589i;
    return Struct_3(Struct_2(arg_3.a), -24285i);
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = func_5(arg_1.b, vec3<f32>(1f, 1f, 1f), vec2<u32>(func_4(Struct_4(func_2(Struct_3(Struct_2(true), global2[_wgslsmith_index_u32(4294967295u, 27u)]), 1213f, vec3<u32>(47446u, 17906u, u_input.d)), Struct_1(arg_1.a, 4294967295u), select(arg_1.a, arg_1.a, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(277f, 1633f, 1000f, -170f)), max(vec2<i32>(u_input.e, 3657i), u_input.a.yz)), _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(59844u, 37452u)), vec2<u32>(u_input.d, u_input.d) | vec2<u32>(36466u, 4294967295u))), (~arg_1.b << (4294967295u % 32u)) >> (abs(~61971u) % 32u)), Struct_2(arg_1.a));
    var var_1 = vec2<i32>(-1i) * -u_input.a.xy;
    var var_2 = false;
    return Struct_2(true);
}

fn func_6(arg_0: Struct_3, arg_1: u32, arg_2: f32) -> StorageBuffer {
    global0 = array<Struct_4, 25>();
    global1 = ~func_4(global0[_wgslsmith_index_u32(arg_1, 25u)], 1u);
    var var_0 = Struct_5(~max(min(~vec4<u32>(u_input.d, u_input.d, arg_1, arg_1), vec4<u32>(4294967295u, arg_1, 4294967295u, 19602u)), vec4<u32>(7296u, 0u, 0u, firstLeadingBit(arg_1))), !vec3<bool>(true, arg_0.a.a, any(vec2<bool>(false, true))));
    let var_1 = all(!(!var_0.b));
    let var_2 = Struct_4(Struct_1(true, 5415u), Struct_1(any(var_0.b), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.x, 4294967295u) >> (vec2<u32>(var_0.a.x, var_0.a.x) % vec2<u32>(32u)), var_0.a.ww)), true, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(f32(-1f) * -691f)), arg_2, -1000f))), abs(vec2<i32>(-24174i, 11222i) | firstLeadingBit(u_input.a.zx & u_input.a.zz)));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(var_2.d.yyw)), select(min(_wgslsmith_mod_vec4_u32(var_0.a, vec4<u32>(u_input.d, 16822u, 18842u, arg_1)), ~vec4<u32>(u_input.d, 14989u, arg_1, 38549u)) & _wgslsmith_mult_vec4_u32(var_0.a, ~var_0.a), _wgslsmith_add_vec4_u32(~abs(vec4<u32>(arg_1, 1u, var_0.a.x, u_input.d)), ~_wgslsmith_clamp_vec4_u32(var_0.a, vec4<u32>(var_2.a.b, 0u, 0u, var_0.a.x), var_0.a)), !vec4<bool>(var_0.b.x & arg_0.a.a, var_2.a.b != var_0.a.x, all(var_0.b), !var_0.b.x)), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(0i, arg_0.b)) | vec2<i32>(global2[_wgslsmith_index_u32(73331u, 27u)], 15358i), vec2<i32>(_wgslsmith_div_i32(-2147483647i, 35107i), -var_2.e.x)), vec2<i32>(global2[_wgslsmith_index_u32(firstLeadingBit(~var_0.a.x), 27u)], 33070i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_2.d.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(Struct_3(func_1(1u, Struct_1(true, firstTrailingBit(0u))), 29763i), abs(0u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(831f - 243f)));
}

