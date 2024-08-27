struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 13>;

var<private> global1: array<bool, 26>;

var<private> global2: bool = false;

var<private> global3: i32;

var<private> global4: Struct_1 = Struct_1(i32(-2147483648), true, vec3<f32>(-656f, 1000f, -802f), 571f);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> bool {
    global1 = array<bool, 26>();
    global2 = true;
    var var_0 = arg_2;
    var var_1 = true;
    let var_2 = 1u;
    return _wgslsmith_f_op_f32(-global4.d) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = -23382i;
    global1 = array<bool, 26>();
    var var_1 = Struct_3(Struct_1(u_input.a, false, global0[_wgslsmith_index_u32(4294967295u, 13u)], global4.c.x), !(!select(!vec2<bool>(global1[_wgslsmith_index_u32(1445u, 26u)], arg_0.b), !vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 26u)]), any(vec2<bool>(arg_0.b, true)))), ~(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(44740u, 4294967295u, 4294967295u), vec3<u32>(25059u, 66562u, 37667u)))));
    var_1 = Struct_3(var_1.a, vec2<bool>(-277f != arg_0.c.x, global4.b), var_1.c);
    let var_2 = Struct_1(var_1.a.a >> (~var_1.c % 32u), true, vec3<f32>(-418f, _wgslsmith_f_op_f32(global4.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(527f, -313f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.d + _wgslsmith_f_op_f32(step(903f, 3167f))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-410f)), _wgslsmith_f_op_f32(666f + 307f)))), 2376f);
    return global4.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<u32>, arg_3: f32) -> u32 {
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_mod_i32(6627i, 1i >> (_wgslsmith_add_u32(74023u, arg_2.x) % 32u)), ~1i), _wgslsmith_sub_i32(-1359i, ~(~11072i)), _wgslsmith_div_i32(u_input.a, func_3(Struct_1(~global4.a, true, vec3<f32>(arg_3, arg_3, global4.d), _wgslsmith_f_op_f32(trunc(-1133f))))), -(~(global4.a & 0i)) | firstTrailingBit(arg_0.x));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(399f))), _wgslsmith_f_op_f32(ceil(-277f)), 178f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global4.d + 1245f), _wgslsmith_div_f32(406f, arg_3), _wgslsmith_f_op_f32(round(global4.d))))), _wgslsmith_f_op_f32(1133f + arg_3));
    global3 = _wgslsmith_mult_i32(max(~arg_0.x, -12303i), ~_wgslsmith_dot_vec2_i32(var_0.zx | var_0.zz, firstLeadingBit(vec2<i32>(2147483647i, arg_0.x))) ^ global4.a);
    var var_2 = -(firstLeadingBit(_wgslsmith_div_vec3_i32(select(var_0.wyy, var_0.zwy, global1[_wgslsmith_index_u32(1u, 26u)]), var_0.wxy)) & select(reverseBits(-vec3<i32>(u_input.a, -12625i, arg_1)), -abs(var_0.xwx), true));
    let var_3 = ~select(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, 0u), reverseBits(vec2<u32>(arg_2.x, 9731u))), min(_wgslsmith_mult_u32(1u, 1u), ~4294967295u), 4294967295u | _wgslsmith_dot_vec3_u32(vec3<u32>(11206u, 0u, arg_2.x), vec3<u32>(arg_2.x, 1u, arg_2.x))), abs(~vec3<u32>(0u, 22072u, arg_2.x) & _wgslsmith_sub_vec3_u32(vec3<u32>(arg_2.x, 39668u, arg_2.x), vec3<u32>(arg_2.x, arg_2.x, arg_2.x))), any(!vec3<bool>(global4.b, global1[_wgslsmith_index_u32(arg_2.x, 26u)], global1[_wgslsmith_index_u32(arg_2.x, 26u)])));
    return reverseBits(~(~reverseBits(arg_2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-1i, func_1(Struct_1(40897i >> (_wgslsmith_clamp_u32(1u, 54403u, 0u) % 32u), true, _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(11675u, 13u)]), -424f), vec4<u32>(min(15804u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 1u, 111192u), vec4<u32>(7511u, 0u, 706u, 71608u))), _wgslsmith_mult_u32(select(4294967295u, 4294967295u, global1[_wgslsmith_index_u32(34327u, 26u)]), 15567u), 4294967295u, ~(~87780u)), Struct_1(u_input.a, select(true, false, true) && true, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(1u), 1u), 13u)], -988f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.c - _wgslsmith_f_op_vec3_f32(global4.c - vec3<f32>(2181f, -733f, 715f))) + global4.c)), _wgslsmith_f_op_f32(select(global4.c.x, 1000f, global4.b)));
    let var_1 = _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(8815u, 1u, firstTrailingBit(4294967295u))) | vec3<u32>(countOneBits(39955u), countOneBits(36328u), ~(~47527u)), (vec3<u32>(~36705u, 7536u, func_2(vec2<i32>(4012i, var_0.a), -2147483647i, vec2<u32>(89802u, 36139u), var_0.d)) | max(firstLeadingBit(vec3<u32>(4294967295u, 47083u, 40548u)), ~vec3<u32>(0u, 1u, 4294967295u))) & ~(~(~vec3<u32>(0u, 61552u, 33877u))));
    let var_2 = (~_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, var_1.x), var_1.x) & (_wgslsmith_dot_vec3_u32(max(var_1, vec3<u32>(4294967295u, 4294967295u, 0u)), min(var_1, var_1)) << (1u % 32u))) & 1u;
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.zz))));
    global3 = ~(~var_0.a);
    global3 = _wgslsmith_mod_i32(-14755i, 2147483647i);
    var_0 = Struct_1(-2147483647i, var_0.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, 469f, _wgslsmith_f_op_f32(871f - -1000f)))), -1958f);
    let var_4 = firstTrailingBit(vec2<i32>(~u_input.a, var_0.a)) ^ _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(-abs(vec2<i32>(5787i, global4.a)), vec2<i32>(max(u_input.a, 2132i), u_input.a | global4.a), vec2<i32>(var_0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(12485i, var_0.a, 1i, u_input.a), vec4<i32>(-1i, 0i, u_input.a, 62491i)))), _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a, 1i), vec2<i32>(13267i, -27690i) | vec2<i32>(-56274i, var_0.a)) & -vec2<i32>(var_0.a, 1i), vec2<i32>(63534i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global4.a, u_input.a), vec3<i32>(2147483647i, var_0.a, 20073i))) | vec2<i32>(abs(-61630i), _wgslsmith_mult_i32(var_0.a, 2147483647i)));
    global0 = array<vec3<f32>, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(min(var_3.x, -726f)), _wgslsmith_f_op_f32(max(var_0.d, 831f))))))), -145f, _wgslsmith_f_op_f32(f32(-1f) * -644f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.d, var_0.c.x, 824f), _wgslsmith_f_op_vec3_f32(var_0.c + vec3<f32>(229f, var_0.d, global4.d))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(219f, 247f, global4.d))), _wgslsmith_f_op_vec3_f32(trunc(var_0.c))))), vec3<f32>(global4.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-350f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(var_0.c.x - 1494f)))));
}

