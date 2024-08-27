struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: bool,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: vec4<f32> = vec4<f32>(-718f, 657f, -1103f, 999f);

var<private> global2: u32 = 111772u;

var<private> global3: array<vec2<f32>, 9>;

var<private> global4: Struct_4 = Struct_4(Struct_1(i32(-2147483648), vec2<i32>(-51548i, 27213i), 1u, vec3<f32>(215f, 737f, 214f), true), vec4<i32>(4347i, -20333i, 1i, -38719i), Struct_1(34087i, vec2<i32>(-1i, -18843i), 0u, vec3<f32>(752f, -1004f, 2713f), true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> u32 {
    global4 = Struct_4(global4.c, -reverseBits(~max(global4.b, global4.b)), Struct_1(-30398i, -(vec2<i32>(arg_0, arg_0) & countOneBits(u_input.a)), ~(~49493u) << (min(0u, firstLeadingBit(104827u)) % 32u), global4.c.d, all(vec4<bool>(!global4.c.e, false, true, false))));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.c.d.x, global1.x, global4.c.e))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) + _wgslsmith_f_op_f32(-global4.c.d.x)), global1.x)));
    let var_0 = Struct_3(global1.wx, ~global4.b.yzy, _wgslsmith_add_i32(countOneBits(_wgslsmith_add_i32(arg_0 >> (14722u % 32u), global4.c.a)), -_wgslsmith_dot_vec3_i32(~global4.b.yww, select(vec3<i32>(-2147483647i, 2147483647i, 0i), global4.b.xww, vec3<bool>(global4.c.e, global4.a.e, global4.c.e)))), global4.c.b.x, _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(f32(-1f) * -951f)));
    let var_1 = any(vec4<bool>(true, all(select(vec4<bool>(false, false, global4.c.e, true), vec4<bool>(false, true, global4.a.e, false), true)), !(global0[_wgslsmith_index_u32(global4.c.c, 21u)] > u_input.c), global4.c.e)) & global4.a.e;
    return _wgslsmith_mod_u32(global4.a.c, firstTrailingBit(reverseBits(1u)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> vec2<bool> {
    let var_0 = select(vec4<bool>(global4.a.e, !select(all(vec4<bool>(global4.a.e, arg_1.c, false, true)), all(vec2<bool>(true, true)), all(vec2<bool>(arg_0.c.e, true))), global4.c.e, all(vec2<bool>(true, true))), select(select(!vec4<bool>(arg_1.c, arg_1.c, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, arg_0.c.e, arg_0.c.e, global4.a.e), vec4<bool>(false, arg_1.c, true, true), global4.a.e)), !(!vec4<bool>(true, false, arg_0.c.e, false)), arg_1.c), select(vec4<bool>(all(vec2<bool>(true, arg_1.c)), !arg_0.a.e, true, true), select(select(select(vec4<bool>(true, arg_0.c.e, false, global4.c.e), vec4<bool>(arg_0.a.e, global4.a.e, false, arg_1.c), global4.c.e), !vec4<bool>(global4.a.e, false, false, global4.a.e), all(vec3<bool>(false, true, false))), select(!vec4<bool>(arg_1.c, arg_1.c, false, arg_0.c.e), vec4<bool>(false, arg_0.c.e, global4.c.e, true), true), !select(vec4<bool>(arg_1.c, true, false, global4.c.e), vec4<bool>(global4.a.e, false, arg_1.c, arg_1.c), vec4<bool>(arg_1.c, true, global4.c.e, true))), true));
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, global4.a.d.x, true)) - arg_0.a.d.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_0.c.d.x, global4.c.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.d.x) - _wgslsmith_f_op_f32(1240f + arg_1.a))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a, 2035f, 1355f, _wgslsmith_f_op_f32(1756f * _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.d.x, arg_1.d.x, 643f, global4.a.d.x))), countOneBits(arg_0.c.b.x) == -(arg_0.c.b.x ^ arg_0.c.b.x))), var_0.x));
    let var_1 = arg_0;
    var var_2 = Struct_3(vec2<f32>(arg_0.a.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -543f), _wgslsmith_f_op_f32(round(792f))))))), -arg_0.b.xwx, 1i, ~firstLeadingBit(_wgslsmith_mult_i32(-arg_1.b, 0i)), arg_1.d.x);
    let var_3 = var_1.c;
    return select(!var_0.xy, vec2<bool>(true, arg_0.a.e || (arg_0.a.e != all(var_0.www))), any(vec4<bool>(all(!vec4<bool>(var_3.e, true, true, var_3.e)), any(var_0), 1i >= _wgslsmith_dot_vec4_i32(vec4<i32>(811i, arg_0.c.b.x, arg_1.b, var_3.b.x), arg_0.b), select(global4.a.e | var_3.e, 1i <= arg_1.b, all(var_0)))));
}

fn func_2(arg_0: vec3<u32>) -> Struct_4 {
    var var_0 = Struct_2(-538f, global4.c.b.x, false, vec2<f32>(global4.c.d.x, -986f), u_input.b);
    var var_1 = func_4(Struct_4(Struct_1(var_0.b, u_input.a, global4.a.c, _wgslsmith_f_op_vec3_f32(-global1.xxy), true), global4.b, Struct_1(_wgslsmith_mult_i32(min(12084i, global4.b.x), 1i), global4.a.b, func_3(_wgslsmith_mult_i32(global4.a.a, 0i)), vec3<f32>(_wgslsmith_f_op_f32(abs(global1.x)), global4.c.d.x, -1000f), false)), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1381f, var_0.d.x)) + _wgslsmith_f_op_f32(-global1.x)), 684f), ~(-2147483647i << (~u_input.c % 32u)), false, _wgslsmith_f_op_vec2_f32(step(global1.wz, var_0.d)), ~u_input.b));
    let var_2 = Struct_4(global4.a, global4.b, global4.c);
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d) + _wgslsmith_f_op_vec2_f32(var_2.a.d.yz - global4.c.d.xz))))), _wgslsmith_mod_vec3_i32(var_2.b.yxy, countOneBits(vec3<i32>(~var_0.b, 5000i, 32343i))), ~firstLeadingBit(_wgslsmith_dot_vec3_i32(~var_2.b.wyw, ~vec3<i32>(2147483647i, 0i, var_0.b))), _wgslsmith_div_i32(0i, abs(32031i)), global4.a.d.x);
    var var_4 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(floor(var_2.a.d.x)))) * 1251f), -1838i, var_2.a.e, global4.a.d.yz, u_input.b | vec3<u32>(_wgslsmith_dot_vec2_u32(select(u_input.b.yz, var_0.e.yz, var_2.a.e), ~var_0.e.zx), ~47389u, 15098u));
    return var_2;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_3) -> u32 {
    global2 = ~(~arg_0.c.c);
    global3 = array<vec2<f32>, 9>();
    var var_0 = ~vec4<u32>(_wgslsmith_div_u32(1u, _wgslsmith_add_u32(~global4.a.c, global4.a.c)), u_input.b.x, func_2(_wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global4.c.c, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], u_input.c), ~vec3<u32>(u_input.b.x, 0u, global0[_wgslsmith_index_u32(u_input.b.x, 21u)]))).a.c, _wgslsmith_add_u32(arg_0.a.c, max(16862u, 4294967295u)) | u_input.c);
    var var_1 = vec4<bool>(global1.x == _wgslsmith_f_op_f32(-arg_1.e), true, func_4(Struct_4(Struct_1(1i, firstLeadingBit(arg_1.b.xx), firstLeadingBit(arg_0.a.c), arg_0.c.d, global4.c.e || arg_0.a.e), firstTrailingBit(vec4<i32>(-2147483647i, 2147483647i, arg_0.c.a, arg_1.b.x)), global4.a), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1400f * 823f) - -1894f), _wgslsmith_mod_i32(min(arg_0.b.x, 2147483647i), 2147483647i), !(arg_1.c <= u_input.d), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(global4.c.d.yy, arg_0.c.d.xz, vec2<bool>(arg_0.c.e, global4.c.e))), _wgslsmith_f_op_vec2_f32(-global4.a.d.zy), true)), select(_wgslsmith_add_vec3_u32(u_input.b, var_0.zwz), ~vec3<u32>(0u, 1u, var_0.x), vec3<bool>(global4.c.e, false, arg_0.c.e)))).x, !arg_0.a.e);
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(abs(global4.c.d.x)))), vec3<i32>(-func_2(countOneBits(var_0.xyx)).a.a, -1i & max(abs(arg_1.d), abs(2147483647i)), -(~_wgslsmith_div_i32(global4.c.b.x, u_input.d))), _wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(arg_0.b, vec4<i32>(-47811i, arg_1.c, arg_1.c, -15314i)), vec4<i32>(-u_input.a.x, _wgslsmith_clamp_i32(-23860i, arg_1.c, 36567i), _wgslsmith_clamp_i32(2752i, arg_0.c.a, 36810i), _wgslsmith_sub_i32(0i, global4.a.b.x))) << (~_wgslsmith_div_u32(4506u >> (0u % 32u), var_0.x) % 32u), arg_1.b.x, _wgslsmith_f_op_f32(arg_1.e - arg_0.a.d.x));
    return ~(~_wgslsmith_sub_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(129567u, 21u)], 9784u), min(var_0.x, _wgslsmith_add_u32(var_0.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)]))));
}

fn func_6(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_3) -> vec3<u32> {
    global4 = func_2(u_input.b);
    global1 = vec4<f32>(_wgslsmith_f_op_f32(floor(global4.a.d.x)), -832f, _wgslsmith_div_f32(364f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(495f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-229f, _wgslsmith_f_op_f32(global1.x - 144f)) + _wgslsmith_f_op_f32(min(arg_2.e, -1110f)))));
    var var_0 = vec3<i32>(select(global4.a.a, global4.b.x, global4.c.e || true), _wgslsmith_dot_vec4_i32(-global4.b, ~_wgslsmith_div_vec4_i32(global4.b, _wgslsmith_clamp_vec4_i32(global4.b, vec4<i32>(-1i, -1i, -2147483647i, 46961i), vec4<i32>(arg_2.c, -2147483647i, global4.b.x, global4.c.b.x)))), max(-arg_2.b.x, -(u_input.d << (u_input.c % 32u))) << (~44013u % 32u));
    var var_1 = _wgslsmith_f_op_f32(global4.c.d.x + global4.c.d.x);
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-690f, -1596f)), global4.c.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - 661f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(349f + arg_2.e))))), global4.c.d);
    return u_input.b;
}

fn func_1() -> u32 {
    let var_0 = Struct_2(_wgslsmith_div_f32(global4.a.d.x, 327f), global4.b.x, true, global3[_wgslsmith_index_u32(34616u, 9u)], max(func_6(func_5(func_2(vec3<u32>(0u, 4294967295u, 21244u)), Struct_3(global3[_wgslsmith_index_u32(global4.a.c, 9u)], global4.b.xwy, -25741i, u_input.d, 343f)), !(!vec2<bool>(global4.a.e, global4.a.e)), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.c.d.x, global4.c.d.x)), vec3<i32>(global4.c.a, -308i, -1i), 1i, global4.c.b.x ^ 2147483647i, _wgslsmith_f_op_f32(279f + -299f))), reverseBits(firstLeadingBit(vec3<u32>(global4.c.c, 36023u, 1735u)))));
    let var_1 = -6190i;
    let var_2 = vec2<u32>(var_0.e.x, _wgslsmith_mod_u32(1u, abs(global0[_wgslsmith_index_u32(46922u, 21u)])));
    let var_3 = Struct_1(0i | -(abs(global4.a.b.x) & -2147483647i), u_input.a, 1u, vec3<f32>(1429f, _wgslsmith_f_op_f32(-global4.a.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -533f)))), true | (_wgslsmith_f_op_f32(round(global1.x)) < -1150f));
    let var_4 = ~_wgslsmith_add_vec3_u32(vec3<u32>(~global0[_wgslsmith_index_u32(0u, 21u)], 4294967295u >> (u_input.c % 32u), 4294967295u | var_0.e.x), ~select(var_0.e, var_0.e, vec3<bool>(true, var_0.c, var_0.c))) & var_0.e;
    return 18532u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(vec4<u32>(104043u, global0[_wgslsmith_index_u32(u_input.b.x, 21u)], func_1(), 12150u));
    global3 = array<vec2<f32>, 9>();
    var var_1 = true;
    let var_2 = firstTrailingBit(global4.a.a);
    var var_3 = Struct_1(62197i, _wgslsmith_div_vec2_i32(-abs(func_2(var_0.wwx).b.ww), ~vec2<i32>(-global4.a.b.x, _wgslsmith_mod_i32(var_2, var_2))), ~((~6195u | min(53027u, global0[_wgslsmith_index_u32(0u, 21u)])) << (global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(u_input.b.x, u_input.c)), 21u)] % 32u)), vec3<f32>(_wgslsmith_f_op_f32(floor(global4.a.d.x)), -1555f, global1.x), global4.c.e);
    let var_4 = 62560u;
    global4 = Struct_4(func_2(select(u_input.b, u_input.b, global4.a.e)).c, global4.b, Struct_1(countOneBits(firstTrailingBit(~var_3.b.x)), _wgslsmith_add_vec2_i32(-vec2<i32>(global4.b.x, global4.b.x), vec2<i32>(-8777i, var_3.b.x)), 0u, var_3.d, true));
    var var_5 = global4.a;
    global0 = array<u32, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(482f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(559f, 1049f, global4.a.d.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1441f, -1000f, 528f))) * var_5.d)));
}

