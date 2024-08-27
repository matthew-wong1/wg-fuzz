struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: bool,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5>;

var<private> global1: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(Struct_1(vec4<u32>(13385u, 1u, 8017u, 13611u), vec3<i32>(i32(-2147483648), -54345i, 3212i)), vec2<u32>(1u, 4294967295u), true, vec2<bool>(true, false)), Struct_3(Struct_1(vec4<u32>(4294967295u, 1u, 33091u, 0u), vec3<i32>(2147483647i, -1i, 5606i)), vec2<u32>(0u, 1u), true, vec2<bool>(false, false)), Struct_3(Struct_1(vec4<u32>(1u, 1u, 4294967295u, 0u), vec3<i32>(i32(-2147483648), -1i, 20301i)), vec2<u32>(31148u, 4294967295u), false, vec2<bool>(true, false)), Struct_3(Struct_1(vec4<u32>(42682u, 38995u, 1u, 91007u), vec3<i32>(1i, 0i, 0i)), vec2<u32>(10641u, 76982u), false, vec2<bool>(false, true)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> f32 {
    var var_0 = ~(arg_1.b.xy << (countOneBits(u_input.e) % vec2<u32>(32u)));
    global1 = array<Struct_3, 4>();
    global1 = array<Struct_3, 4>();
    var_0 = arg_1.a.b.xy;
    let var_1 = global1[_wgslsmith_index_u32(127295u, 4u)];
    return _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(-arg_0));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(f32(-1f) * -564f), Struct_2(Struct_1(vec4<u32>(4294967295u, 0u, u_input.b, u_input.e.x), vec3<i32>(u_input.c.x, -42032i, 41969i)), vec3<i32>(u_input.c.x, u_input.c.x, 63942i), Struct_1(vec4<u32>(1u, 1u, 0u, 1u), u_input.c), -70561i))))));
    let var_1 = -(~vec4<i32>(49242i, i32(-1i) * -33267i, countOneBits(1i), 43338i));
    let var_2 = Struct_1(vec4<u32>(~u_input.e.x, max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, 6289u, 1u, u_input.d.x), vec4<u32>(3549u, u_input.b, u_input.b, 1u)), u_input.b), _wgslsmith_add_u32(~u_input.b, u_input.e.x), 1u) | select(firstLeadingBit(vec4<u32>(u_input.d.x, u_input.d.x, 31517u, u_input.d.x)), max(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 70980u, 36440u, 4294967295u), vec4<u32>(27461u, u_input.e.x, u_input.e.x, u_input.e.x)), vec4<u32>(0u, 55848u, 40284u, 20227u) | vec4<u32>(1u, 45570u, u_input.b, 69389u)), _wgslsmith_f_op_f32(max(-652f, -1369f)) == _wgslsmith_f_op_f32(sign(-100f))), var_1.yyy);
    let var_3 = Struct_1(vec4<u32>(var_2.a.x >> (var_2.a.x % 32u), _wgslsmith_dot_vec4_u32(select(select(vec4<u32>(4294967295u, u_input.e.x, 4294967295u, 0u), vec4<u32>(u_input.b, var_2.a.x, 61914u, 1u), arg_0), select(vec4<u32>(0u, 121976u, 23244u, var_2.a.x), vec4<u32>(var_2.a.x, u_input.e.x, u_input.e.x, var_2.a.x), vec4<bool>(false, arg_0, arg_0, false)), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), var_2.a), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~u_input.b), u_input.d.zx), _wgslsmith_dot_vec2_u32(var_2.a.xw, ~vec2<u32>(var_2.a.x, 4294967295u))), vec3<i32>(-1i) * -(~var_2.b));
    var_0 = _wgslsmith_f_op_f32(trunc(-717f));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -671f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2204f * 2069f))))))));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: f32) -> Struct_1 {
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3, _wgslsmith_f_op_f32(func_2(false)), arg_3), vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1594f)), 1f)));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-62396i, -2147483647i, abs(2147483647i), ~var_2), _wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(-63420i, 10999i, -30137i, var_2))) ^ (u_input.a << (min(vec4<u32>(1u, u_input.d.x, 72618u, arg_1.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, u_input.b, 1u, u_input.b), vec4<u32>(4294967295u, var_0, 22621u, 52314u))) % vec4<u32>(32u))), min(vec4<i32>(_wgslsmith_div_i32(reverseBits(arg_0), ~1i), firstLeadingBit(firstTrailingBit(u_input.c.x)), _wgslsmith_div_i32(arg_0, var_2), reverseBits(var_2)), u_input.a));
    global1 = array<Struct_3, 4>();
    return Struct_1(abs((~vec4<u32>(var_0, 1u, 1u, u_input.b) ^ max(vec4<u32>(35080u, var_0, var_0, 22787u), vec4<u32>(var_0, 4294967295u, 4294967295u, var_0))) | _wgslsmith_add_vec4_u32(~vec4<u32>(0u, var_0, 0u, 47025u), countOneBits(vec4<u32>(var_0, 0u, 0u, 1u)))), var_3.yxx);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2(true)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(547f, 313f)) * -551f), 1236f, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -468f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1361f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-695f, -2097f))))), _wgslsmith_f_op_f32(-765f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(587f + 647f) + 1f)));
    let var_1 = Struct_4(vec3<bool>(arg_1, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(525f, 539f), var_0.x)) >= -1267f, (_wgslsmith_f_op_f32(ceil(var_0.x)) <= -392f) | any(!vec4<bool>(arg_1, arg_1, false, arg_1))));
    global1 = array<Struct_3, 4>();
    var var_2 = vec2<u32>(_wgslsmith_div_u32(20582u, u_input.d.x), arg_3);
    var var_3 = firstTrailingBit(u_input.a);
    return Struct_1(~vec4<u32>(_wgslsmith_div_u32(firstTrailingBit(u_input.d.x), max(arg_0, arg_0)), arg_3, u_input.d.x, 4294967295u), _wgslsmith_mult_vec3_i32(u_input.a.zwx, ~var_3.xzx));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<u32>, 5>();
    global0 = array<vec2<u32>, 5>();
    global0 = array<vec2<u32>, 5>();
    let var_0 = func_4(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.d.x, 60781u) & u_input.e, select(u_input.d.xy, _wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(u_input.d.x, 5u)], vec2<u32>(49674u, u_input.e.x)) ^ select(u_input.d.zz, global0[_wgslsmith_index_u32(10445u, 5u)], true), vec2<bool>(u_input.b < u_input.d.x, false))), false != any(vec2<bool>(true, true)), func_1(_wgslsmith_dot_vec2_i32(max(u_input.a.yw, firstLeadingBit(vec2<i32>(u_input.c.x, u_input.a.x))), vec2<i32>(u_input.c.x, u_input.a.x)), u_input.d, vec4<bool>(true, true, true, true), _wgslsmith_div_f32(195f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(526f)), _wgslsmith_f_op_f32(trunc(2411f))))), reverseBits(_wgslsmith_clamp_u32(1u << (firstLeadingBit(u_input.e.x) % 32u), firstTrailingBit(u_input.b), 4294967295u)));
    var var_1 = -vec4<i32>(var_0.b.x, -_wgslsmith_mult_i32(var_0.b.x, ~u_input.a.x), -reverseBits(var_0.b.x), u_input.c.x);
    var var_2 = _wgslsmith_div_f32(935f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(select(-1000f, 1000f, true)), false)), 304f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(695f)))));
    var var_3 = _wgslsmith_add_u32(14256u, u_input.e.x << (~(u_input.e.x >> (var_0.a.x % 32u)) % 32u)) | (_wgslsmith_div_u32(var_0.a.x, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(74787u, 4294967295u, var_0.a.x, 39975u)), var_0.a)) | ~firstTrailingBit(~0u));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1665f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(445f, -103f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(874f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-698f)))) * _wgslsmith_f_op_f32(func_2(var_0.b.x <= max(0i, var_1.x)))));
    var_3 = min(var_0.a.x, _wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(~abs(var_0.a.x >> (u_input.e.x % 32u)), 5u)], firstLeadingBit(min(var_0.a.ww, global0[_wgslsmith_index_u32(~1u, 5u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(reverseBits(var_0.a.x), _wgslsmith_clamp_u32(select(func_4(var_0.a.x, false, Struct_1(vec4<u32>(u_input.d.x, 26323u, 0u, 1u), vec3<i32>(-2147483647i, u_input.c.x, u_input.a.x)), 0u).a.x, u_input.e.x | var_0.a.x, any(vec4<bool>(true, false, false, false))), ~select(20078u, u_input.e.x, false), ~max(var_0.a.x, u_input.b)), reverseBits(select(~u_input.b, var_0.a.x | var_0.a.x, any(vec2<bool>(false, true)))), countOneBits(u_input.d.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(2159f, var_4.x) * vec2<f32>(390f, 952f)))) + var_4.yz), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_4.zx))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-var_4.x), var_4.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -365f)), var_4.x))));
}

