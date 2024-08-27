struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<i32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(i32(-2147483648), 1i);

var<private> global1: array<u32, 12>;

var<private> global2: vec4<f32> = vec4<f32>(-485f, -704f, 587f, -874f);

var<private> global3: array<u32, 32> = array<u32, 32>(1u, 0u, 4294967295u, 0u, 4294967295u, 17357u, 63797u, 7183u, 0u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 3940u, 25850u, 1u, 1u, 0u, 4294967295u, 21701u, 4294967295u, 0u, 1u, 34407u, 24233u, 0u, 0u, 0u, 65801u, 4294967295u, 1u, 1u);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> bool {
    let var_0 = Struct_4(Struct_2(Struct_1(_wgslsmith_add_vec2_i32(u_input.a.zy, u_input.a.zx)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-309f, global2.x, -1780f), vec3<f32>(global2.x, global2.x, 300f), vec3<bool>(false, false, true))))), _wgslsmith_f_op_vec3_f32(global2.xxx - _wgslsmith_f_op_vec3_f32(select(global2.xyz, global2.yzz, vec3<bool>(false, false, true))))), u_input.a.yyz, Struct_1(~vec2<i32>(1i, u_input.b)), vec3<u32>(9700u, _wgslsmith_mod_u32(12611u, 4294967295u), global3[_wgslsmith_index_u32(firstTrailingBit(global3[_wgslsmith_index_u32(1u, 32u)]), 32u)]) ^ (~u_input.d & u_input.d)), Struct_1(firstTrailingBit(vec2<i32>(-1i, u_input.b)) & u_input.a.xz));
    global1 = array<u32, 12>();
    var var_1 = vec3<bool>(all(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec4<bool>(false, false, true, false))), true)), true | !any(vec4<bool>(true, true, true, true)), !(!any(vec4<bool>(false, true, true, false))));
    var var_2 = -firstLeadingBit(global0.x);
    var_1 = !vec3<bool>(!(!var_1.x & any(vec3<bool>(var_1.x, true, var_1.x))), _wgslsmith_dot_vec3_i32(~var_0.a.c, _wgslsmith_sub_vec3_i32(var_0.a.c, var_0.a.c)) < -(~(-74355i)), !var_1.x);
    return reverseBits(select(i32(-1i) * -2147483647i, -abs(global0.x), false)) >= ~(~(-2147483647i | -var_0.a.a.a.x));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> vec2<i32> {
    global1 = array<u32, 12>();
    global0 = select(vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, -global0.x & (u_input.b & -20578i)), -2147483647i), u_input.a.yz, all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_3()), vec4<bool>(true, true, true, true), true)));
    let var_0 = Struct_3(11376i, Struct_2(Struct_1(_wgslsmith_div_vec2_i32(u_input.a.zy, vec2<i32>(u_input.a.x, u_input.b)) << (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global2.xzz))))), select(vec3<i32>(u_input.a.x, u_input.b, -379i) | vec3<i32>(global0.x, global0.x, 5612i), ~(~vec3<i32>(global0.x, -2147483647i, global0.x)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))), Struct_1(firstTrailingBit(u_input.a.zw)), vec3<u32>(5411u, _wgslsmith_dot_vec4_u32(vec4<u32>(41248u, global3[_wgslsmith_index_u32(1u, 32u)], 37290u, 69912u), _wgslsmith_clamp_vec4_u32(vec4<u32>(31834u, global1[_wgslsmith_index_u32(2976u, 12u)], 19594u, 8494u), vec4<u32>(global3[_wgslsmith_index_u32(u_input.c, 32u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(21909u, 32u)], 32u)], global1[_wgslsmith_index_u32(u_input.d.x, 12u)], global3[_wgslsmith_index_u32(4294967295u, 32u)]), vec4<u32>(global3[_wgslsmith_index_u32(0u, 32u)], 45655u, u_input.d.x, 0u))), ~global1[_wgslsmith_index_u32(0u, 12u)] & u_input.c)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.d.yx | vec2<u32>(u_input.d.x, 1u), u_input.d.zz), ~4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, 33157u), 32u)], 32u)], max(0u, ~1u)) ^ (select(~vec4<u32>(global3[_wgslsmith_index_u32(12747u, 32u)], 1u, 0u, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(34183u, global1[_wgslsmith_index_u32(0u, 12u)], 39060u, 8011u), vec4<u32>(91789u, 20372u, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19574u, 32u)], 12u)], 16167u)), vec4<bool>(true, true, true, true)) ^ (vec4<u32>(u_input.c, u_input.c, 0u, 4294967295u) & max(vec4<u32>(11742u, global3[_wgslsmith_index_u32(u_input.c, 32u)], 0u, global1[_wgslsmith_index_u32(50695u, 12u)]), vec4<u32>(1u, 4294967295u, 4294967295u, 16700u)))));
    let var_1 = false;
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1186f, -512f, arg_1.x, 1985f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.b.x, -827f, global2.x, 1338f))), vec4<f32>(var_0.b.b.x, _wgslsmith_f_op_f32(-789f * -950f), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(trunc(-1617f)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(arg_1.x, global2.x)), _wgslsmith_f_op_f32(var_0.b.b.x * -1547f), 483f, -1012f)))));
    return _wgslsmith_sub_vec2_i32(max(u_input.a.wx, u_input.a.wz | firstLeadingBit(u_input.a.xz)), select(vec2<i32>(~global0.x, -1i), vec2<i32>(firstLeadingBit(u_input.b ^ 0i), -46799i), vec2<bool>(var_0.b.b.x > 2249f, arg_0 < arg_0)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1119f, 815f, 1105f, -1494f))))))));
    var var_0 = min(abs(3810u), global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(arg_1.e.x, arg_1.e.x ^ _wgslsmith_mod_u32(u_input.d.x, arg_1.e.x)), 32u)]);
    var var_1 = Struct_3(-global0.x, Struct_2(arg_1.d, vec3<f32>(_wgslsmith_f_op_f32(step(-849f, global2.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global2.x, 1410f))), -1337f), arg_1.c, arg_1.a, min(~arg_1.e, vec3<u32>(67530u << (global1[_wgslsmith_index_u32(9412u, 12u)] % 32u), 1u, ~1u))), vec4<u32>(1u, 4294967295u, 29917u, abs((53606u >> (u_input.c % 32u)) << (~global3[_wgslsmith_index_u32(u_input.c, 32u)] % 32u))));
    global0 = var_1.b.c.yx;
    let var_2 = _wgslsmith_f_op_f32(-global2.x);
    return Struct_1(var_1.b.c.zy);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: vec2<u32>) -> Struct_2 {
    var var_0 = 24971u;
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x * 1721f)));
    return Struct_2(func_4(func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global2.x)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(global2.yz)), global2.zw))), Struct_2(Struct_1(vec2<i32>(-1i, u_input.b)), vec3<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, global2.x), vec3<i32>(20775i, abs(-1i), func_2(-1858f, vec2<f32>(319f, global2.x)).x), Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, 1i), vec2<i32>(0i, -2813i))), ~vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], 4294967295u, arg_2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(522f, global2.x, -2459f)))))))), u_input.a.wzx, func_4(vec2<i32>(i32(-1i) * -1i, -16950i) & _wgslsmith_sub_vec2_i32(u_input.a.wx, func_2(-1000f, global2.xw)), Struct_2(Struct_1(u_input.a.zw), vec3<f32>(_wgslsmith_f_op_f32(min(158f, arg_0)), _wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_f32(-global2.x)), -abs(u_input.a.xxy), Struct_1(countOneBits(vec2<i32>(0i, u_input.b))), vec3<u32>(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(u_input.c, 12u)], 14830u), 39573u ^ u_input.d.x, arg_2.x))), firstLeadingBit(abs(abs(arg_1.yyw))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<u32>) -> f32 {
    let var_0 = ~_wgslsmith_mult_vec2_u32(abs(max(u_input.d.xy, arg_0.e.xx)) | ~_wgslsmith_mod_vec2_u32(u_input.d.yx, u_input.d.yy), arg_2);
    var var_1 = reverseBits(~arg_0.c);
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -862f)))));
    global3 = array<u32, 32>();
    global2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, 836f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -792f) * global2.x), -570f)));
    return global2.x;
}

fn func_6(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: f32) -> Struct_2 {
    let var_0 = vec2<bool>(!all(vec2<bool>(true, true)), !(!(false | all(vec4<bool>(false, true, false, false)))));
    var var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + 1633f)) * -1000f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1023f, global2.x))))), select(_wgslsmith_sub_vec4_u32(vec4<u32>(28288u, global3[_wgslsmith_index_u32(32031u, 32u)], global1[_wgslsmith_index_u32(arg_1, 12u)], arg_1) ^ vec4<u32>(1u, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 12u)], 32u)], 53621u, 0u), vec4<u32>(4219u, u_input.c, global3[_wgslsmith_index_u32(39194u, 32u)], arg_1)) << (select(vec4<u32>(48661u, arg_1, 4294967295u, 13030u), select(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3955u, 12u)], 12u)], 0u, 9263u, u_input.d.x), vec4<u32>(arg_1, global1[_wgslsmith_index_u32(21547u, 12u)], global1[_wgslsmith_index_u32(arg_1, 12u)], 20341u), var_0.x), vec4<bool>(true, true, false, var_0.x)) % vec4<u32>(32u)), vec4<u32>(global3[_wgslsmith_index_u32(~(~4294967295u), 32u)], countOneBits(~u_input.c), 0u, global3[_wgslsmith_index_u32(countOneBits(arg_1 | global3[_wgslsmith_index_u32(0u, 32u)]), 32u)]), vec4<bool>(all(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), any(vec4<bool>(var_0.x, var_0.x, var_0.x, true)), any(select(vec3<bool>(var_0.x, true, false), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, true))), any(vec4<bool>(true, var_0.x, var_0.x, false)))), vec2<u32>(19840u, 7397u)).d;
    let var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -133f) + arg_3), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) - arg_3))));
    var var_3 = func_1(-722f, vec4<u32>(4294967295u, 58046u, reverseBits(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d)) & countOneBits(63085u), 0u), _wgslsmith_add_vec2_u32(abs(min(~u_input.d.yz, vec2<u32>(43966u, arg_1))), u_input.d.zy));
    let var_4 = Struct_4(func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1123f - _wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_div_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(u_input.c, 12u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(50535u, 32u)], 12u)], 24548u, 27353u), ~vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], global3[_wgslsmith_index_u32(19577u, 32u)], 37797u, global3[_wgslsmith_index_u32(46692u, 32u)])), _wgslsmith_sub_vec2_u32(vec2<u32>(21112u, ~0u), ~var_3.e.zz)), var_3.a);
    return Struct_2(func_1(arg_3, ~_wgslsmith_div_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(64586u, 32u)], 4294967295u, arg_1, 0u), ~vec4<u32>(3959u, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 12u)], 32u)], global1[_wgslsmith_index_u32(1u, 12u)], 17291u)), ~vec2<u32>(abs(4487u), arg_1)).d, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-298f)) + _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(var_3.b.x * -201f))), _wgslsmith_f_op_f32(-var_3.b.x), arg_3), ~select(reverseBits(var_3.c), _wgslsmith_sub_vec3_i32(reverseBits(var_4.a.c), vec3<i32>(var_4.b.a.x, var_4.a.a.a.x, var_3.d.a.x)), true), Struct_1(vec2<i32>(func_1(994f, ~vec4<u32>(4294967295u, 67417u, u_input.d.x, 47240u), vec2<u32>(23686u, 53752u)).a.a.x, var_4.a.a.a.x)), (_wgslsmith_div_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(arg_1, 32u)], global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(45499u, 32u)], 12u)], 653u), vec3<u32>(u_input.c, 4496u, 4294967295u) | u_input.d) >> (vec3<u32>(max(u_input.d.x, var_4.a.e.x), u_input.c ^ 34168u, ~arg_1) % vec3<u32>(32u))) ^ (firstTrailingBit(firstLeadingBit(vec3<u32>(var_3.e.x, 36612u, global1[_wgslsmith_index_u32(61673u, 12u)]))) & ~vec3<u32>(global3[_wgslsmith_index_u32(var_3.e.x, 32u)], global1[_wgslsmith_index_u32(0u, 12u)], 19879u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a.yx;
    let var_0 = func_6(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-897f, _wgslsmith_f_op_f32(1773f - global2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x - global2.x), _wgslsmith_f_op_f32(sign(194f))))))), ~(~firstTrailingBit(~global1[_wgslsmith_index_u32(48508u, 12u)])), u_input.b, _wgslsmith_f_op_f32(func_5(func_1(global2.x, abs(~vec4<u32>(u_input.c, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c, 32u)], 12u)], 14700u, 43647u)), vec2<u32>(1u, 42525u)), func_1(406f, ~abs(vec4<u32>(u_input.d.x, u_input.d.x, 53895u, global1[_wgslsmith_index_u32(0u, 12u)])), u_input.d.yy), u_input.d.zz)));
    global1 = array<u32, 12>();
    let var_1 = ~(~var_0.a.a.x);
    var var_2 = Struct_4(Struct_2(Struct_1(var_0.c.xy), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.x), global2.x, _wgslsmith_f_op_f32(-var_0.b.x)) * vec3<f32>(_wgslsmith_f_op_f32(min(-1262f, var_0.b.x)), _wgslsmith_f_op_f32(global2.x - -779f), global2.x)), firstTrailingBit(var_0.c), func_4(u_input.a.wy, Struct_2(func_6(-626f, 1u, global0.x, 1050f).a, var_0.b, vec3<i32>(2147483647i, 37125i, u_input.b) | u_input.a.xyw, var_0.a, u_input.d)), _wgslsmith_mult_vec3_u32(var_0.e, ~vec3<u32>(1u, var_0.e.x, global1[_wgslsmith_index_u32(9641u, 12u)]))), Struct_1(-_wgslsmith_div_vec2_i32(u_input.a.xx, _wgslsmith_mod_vec2_i32(u_input.a.yx, vec2<i32>(global0.x, 1197i)))));
    let var_3 = vec4<bool>(true, !select(any(vec3<bool>(true, true, true)), any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), _wgslsmith_mult_u32(15957u, 1u) > _wgslsmith_sub_u32(var_0.e.x, var_0.e.x)), all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), true), vec2<bool>(true, all(vec3<bool>(false, true, true))), vec2<bool>(true, true))), false);
    let var_4 = Struct_3(abs(_wgslsmith_sub_i32(abs(~25284i), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 0i, var_1, u_input.b), u_input.a), reverseBits(u_input.a)))), Struct_2(Struct_1(vec2<i32>(_wgslsmith_mod_i32(1i, -46284i), reverseBits(u_input.b))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.b.x, global2.x)), global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x * -1686f), var_0.b.x)), u_input.a.zyx, func_6(-1086f, 73515u, -(global0.x << (37550u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.a.b.x, 1000f)) + _wgslsmith_f_op_f32(max(-1551f, 581f)))).a, ~(~_wgslsmith_add_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.e.x, 12u)], 12u)], global1[_wgslsmith_index_u32(0u, 12u)], var_2.a.e.x), vec3<u32>(5415u, 0u, 0u)))), vec4<u32>(4294967295u ^ reverseBits(global3[_wgslsmith_index_u32(4294967295u, 32u)]), global1[_wgslsmith_index_u32(~var_0.e.x, 12u)], 1u, _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, var_0.e.x, 75373u)), func_1(var_2.a.b.x, vec4<u32>(global1[_wgslsmith_index_u32(0u, 12u)], 102514u, u_input.c, u_input.c), var_0.e.xx).e)) | vec4<u32>(firstLeadingBit(max(var_2.a.e.x, global1[_wgslsmith_index_u32(u_input.d.x, 12u)])), u_input.d.x, var_2.a.e.x, ~12187u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(var_4.a, _wgslsmith_clamp_i32(2147483647i, _wgslsmith_div_i32(var_2.a.d.a.x, var_2.a.c.x), -(~0i))), vec4<u32>(_wgslsmith_add_u32(0u, u_input.d.x), ~43721u, 45008u >> (firstTrailingBit(_wgslsmith_div_u32(4294967295u, 88920u)) % 32u), _wgslsmith_sub_u32(~915u, ~(~var_4.c.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.b.x), var_0.b.x, -136f))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_4.b.b.x)), -403f), _wgslsmith_f_op_f32(f32(-1f) * -596f), _wgslsmith_f_op_f32(step(var_2.a.b.x, _wgslsmith_f_op_f32(round(147f)))))));
}

