struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: f32 = -1000f;

var<private> global2: array<vec2<bool>, 32>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -605f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-671f, -436f), -203f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -584f))));
    var var_1 = select(~_wgslsmith_mod_vec3_i32(~vec3<i32>(-47140i, 0i, u_input.b.x), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, u_input.c, u_input.b.x) >> (u_input.a % vec3<u32>(32u)), vec3<i32>(u_input.c, 2147483647i, 1520i))), -firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.c, u_input.d) >> (vec3<u32>(global0.x, u_input.a.x, 49497u) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(0i, u_input.d, u_input.c)))), true);
    var_1 = abs(vec3<i32>(_wgslsmith_div_i32(u_input.c, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_1.x, 1712i, u_input.c), vec4<i32>(u_input.d, u_input.d, var_1.x, 0i)))), ~(-74578i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(var_1.x, 2147483647i, u_input.b.x), ~vec3<i32>(23435i, var_1.x, u_input.d)), vec3<i32>(var_1.x, u_input.b.x, -2147483647i) | select(vec3<i32>(var_1.x, u_input.d, u_input.d), vec3<i32>(u_input.d, var_1.x, -40830i), false))));
    global1 = -727f;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1134f + 534f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1898f, 1876f), -928f))))), -129f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(717f + 461f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -318f)))), any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true))))));
    return u_input.b;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_1(~(~global0.zx | vec2<u32>(max(u_input.a.x, global0.x), u_input.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1484f, _wgslsmith_f_op_f32(1082f + 1176f), _wgslsmith_div_f32(867f, 997f)))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(577f, 957f, -1493f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-677f, 1478f, 1000f)))))), _wgslsmith_clamp_vec2_i32(u_input.b, -u_input.b << (vec2<u32>(1u, _wgslsmith_clamp_u32(1u, 0u, 40757u)) % vec2<u32>(32u)), abs(abs(func_3()))), select(select(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(1u, global0.x), u_input.a.x), 32u)], vec2<bool>(-50661i != u_input.c, true), !any(global2[_wgslsmith_index_u32(global0.x, 32u)])), select(global2[_wgslsmith_index_u32(3970u, 32u)], global2[_wgslsmith_index_u32(abs(global0.x), 32u)], select(vec2<bool>(true, true), select(vec2<bool>(true, false), global2[_wgslsmith_index_u32(u_input.a.x, 32u)], vec2<bool>(true, false)), any(vec4<bool>(true, true, true, false)))), global2[_wgslsmith_index_u32(global0.x, 32u)]));
    global0 = countOneBits(max(select(vec4<u32>(var_0.a.x, _wgslsmith_dot_vec3_u32(global0.wzz, u_input.a), 20234u, 0u), _wgslsmith_sub_vec4_u32(~vec4<u32>(32975u, u_input.a.x, var_0.a.x, u_input.a.x), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, 33455u, u_input.a.x, u_input.a.x), vec4<u32>(22241u, 1u, global0.x, global0.x))), true), vec4<u32>(var_0.a.x & (u_input.a.x ^ var_0.a.x), 1918u, abs(global0.x), ~_wgslsmith_div_u32(8588u, 24767u))));
    let var_1 = Struct_4(Struct_2(global0.xwx, vec3<bool>(select(false, true, all(vec3<bool>(var_0.d.x, var_0.d.x, var_0.d.x))), !(!var_0.d.x), -389f > _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_clamp_vec3_u32(select(global0.yxw, vec3<u32>(var_0.a.x, global0.x, 26395u), vec3<bool>(false, var_0.d.x, var_0.d.x)) | ~global0.xxy, global0.xxz, global0.xxw)), Struct_1(max(vec2<u32>(_wgslsmith_mult_u32(global0.x, var_0.a.x), ~48750u), firstTrailingBit(global0.xx)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b) - var_0.b), var_0.b, !var_0.d.x)), max(u_input.b, abs(vec2<i32>(33233i, 3376i))), var_0.d), Struct_2(vec3<u32>(21589u, u_input.a.x & ~var_0.a.x, 0u), vec3<bool>(var_0.d.x, var_0.d.x, false), reverseBits(vec3<u32>(0u, var_0.a.x, global0.x) << (u_input.a % vec3<u32>(32u))) ^ reverseBits(u_input.a)));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.x)));
    let var_3 = max(vec2<i32>(8221i, -(~abs(var_0.c.x))), vec2<i32>(u_input.d, var_0.c.x) >> (vec2<u32>(~(~4294967295u), min(_wgslsmith_add_u32(1u, var_1.b.a.x), ~var_1.c.a.x)) % vec2<u32>(32u)));
    return Struct_2(vec3<u32>(var_1.b.a.x, select((var_0.a.x >> (var_0.a.x % 32u)) << (_wgslsmith_div_u32(global0.x, var_1.b.a.x) % 32u), _wgslsmith_div_u32(0u, var_1.b.a.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, var_0.a.x, global0.x), vec4<u32>(var_0.a.x, 0u, var_0.a.x, 0u)) % 32u), true), _wgslsmith_clamp_u32(var_0.a.x, countOneBits(58044u), u_input.a.x)), !(!vec3<bool>(var_0.d.x, select(var_0.d.x, var_0.d.x, false), var_1.b.c.x == u_input.b.x)), ~vec3<u32>(var_0.a.x, select(var_1.b.a.x, 4294967295u, var_1.b.d.x), ~u_input.a.x ^ ~4294967295u));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec3<u32>) -> Struct_3 {
    global1 = _wgslsmith_f_op_f32(floor(1418f));
    var var_0 = Struct_4(arg_1, Struct_1(arg_3.zz, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-869f, 1000f) * 1234f), -520f, _wgslsmith_f_op_f32(-483f + _wgslsmith_f_op_f32(f32(-1f) * -811f))), firstLeadingBit(u_input.b) ^ u_input.b, vec2<bool>(!(arg_1.c.x >= arg_1.a.x), (arg_1.a.x ^ arg_1.a.x) > _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 49201u, arg_1.a.x, global0.x), vec4<u32>(u_input.a.x, global0.x, arg_1.a.x, global0.x)))), Struct_2(global0.yww, vec3<bool>(true, arg_1.b.x, (arg_1.b.x & arg_1.b.x) | (arg_1.c.x <= arg_3.x)), ~select(~vec3<u32>(u_input.a.x, global0.x, arg_3.x), vec3<u32>(u_input.a.x, arg_1.c.x, global0.x), arg_1.b)));
    global1 = var_0.b.b.x;
    var var_1 = -var_0.b.c.x;
    var var_2 = -vec2<i32>(-(var_0.b.c.x & u_input.b.x) << (global0.x % 32u), -(~(i32(-1i) * -15025i)));
    return Struct_3(Struct_1((u_input.a.xy & reverseBits(vec2<u32>(global0.x, u_input.a.x))) | min(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a.x, arg_3.x), var_0.b.a), min(global0.zx, global0.zz)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(floor(var_0.b.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1280f))), ~vec2<i32>(~u_input.d, -arg_2.x), global2[_wgslsmith_index_u32(global0.x, 32u)]), var_0.b, arg_2 ^ firstLeadingBit(vec4<i32>(~var_0.b.c.x, firstTrailingBit(2147483647i), 26884i, arg_2.x)));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> Struct_1 {
    var var_0 = func_4(-_wgslsmith_clamp_i32(~_wgslsmith_mult_i32(-1i, 2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.c), u_input.b) << (~arg_2.a.x % 32u), reverseBits(u_input.d)), func_2(), ~(-min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 60398i, 0i, -27652i), vec4<i32>(u_input.c, 1i, 0i, 2147483647i)), vec4<i32>(46763i, 14856i, arg_0, -6440i))), u_input.a);
    var var_1 = min(~(~_wgslsmith_mult_u32(21022u, abs(global0.x))), 61507u);
    var var_2 = var_0.b.c;
    let var_3 = ~(~select(-func_4(-20306i, Struct_2(vec3<u32>(var_0.a.a.x, 4294967295u, 46593u), vec3<bool>(arg_2.b.x, true, true), u_input.a), var_0.c, vec3<u32>(arg_2.a.x, 1u, var_0.a.a.x)).a.c, abs(vec2<i32>(-4727i, 73331i)), !(62563u <= arg_2.a.x)));
    var var_4 = ~reverseBits(~select(global0.yw, arg_2.c.yz, global2[_wgslsmith_index_u32(global0.x, 32u)]) << (~firstTrailingBit(var_0.a.a) % vec2<u32>(32u)));
    return var_0.b;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: vec3<u32>) -> bool {
    var var_0 = -235f;
    let var_1 = 0u;
    let var_2 = select(vec4<bool>(true, !arg_1.c.b.x, arg_1.b.d.x, arg_2.x), select(select(!select(vec4<bool>(arg_1.b.d.x, arg_1.b.d.x, true, arg_1.a.b.x), vec4<bool>(arg_1.c.b.x, arg_2.x, arg_1.a.b.x, arg_2.x), true), !select(vec4<bool>(false, arg_1.c.b.x, arg_1.b.d.x, true), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), vec4<bool>(arg_1.c.b.x, true, false, arg_2.x)), select(select(vec4<bool>(arg_2.x, arg_2.x, arg_1.b.d.x, false), vec4<bool>(arg_2.x, arg_2.x, arg_1.b.d.x, arg_1.a.b.x), vec4<bool>(false, arg_1.a.b.x, false, false)), select(vec4<bool>(arg_1.c.b.x, arg_2.x, arg_1.c.b.x, true), vec4<bool>(arg_1.c.b.x, false, arg_1.b.d.x, true), arg_2.x), select(vec4<bool>(true, arg_1.c.b.x, arg_1.a.b.x, true), vec4<bool>(arg_1.a.b.x, arg_2.x, arg_2.x, arg_2.x), arg_2.x))), !select(!vec4<bool>(arg_1.b.d.x, arg_2.x, arg_2.x, false), !vec4<bool>(arg_1.c.b.x, arg_2.x, arg_1.c.b.x, arg_1.c.b.x), true), !vec4<bool>(false, any(vec4<bool>(false, arg_1.c.b.x, false, true)), arg_1.a.b.x, true)), vec4<bool>(arg_1.c.b.x, !(!select(true, true, true)), all(vec3<bool>(true, arg_2.x, true)), arg_1.a.b.x));
    let var_3 = Struct_1(firstTrailingBit(_wgslsmith_add_vec2_u32(func_1(~(-17407i), arg_1.b.b.x, Struct_2(vec3<u32>(global0.x, arg_3.x, global0.x), vec3<bool>(false, var_2.x, true), vec3<u32>(global0.x, var_1, 1u))).a, arg_3.yy)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_1.b.b, vec3<f32>(arg_1.b.b.x, -102f, arg_1.b.b.x), var_2.xxy)) - func_4(arg_1.b.c.x, arg_1.a, arg_0, arg_1.c.a).b.b)))), u_input.b, var_2.yw);
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(389f))), _wgslsmith_div_f32(var_3.b.x, 756f))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(reverseBits(-abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, u_input.c, u_input.b.x, 0i), vec4<i32>(2147483647i, -31723i, 2147483647i, u_input.b.x)))));
    let var_1 = !vec4<bool>(74675u == u_input.a.x, func_5(var_0, Struct_4(Struct_2(vec3<u32>(global0.x, u_input.a.x, 1u), vec3<bool>(true, false, false), u_input.a), func_1(var_0.x, 1000f, Struct_2(global0.ywz, vec3<bool>(false, false, false), global0.ywy)), func_2()), global2[_wgslsmith_index_u32(0u & u_input.a.x, 32u)], global0.zyw), true, !(!func_5(vec4<i32>(var_0.x, -24786i, 47724i, 2147483647i), Struct_4(Struct_2(vec3<u32>(u_input.a.x, u_input.a.x, 23936u), vec3<bool>(false, false, true), vec3<u32>(global0.x, u_input.a.x, 4294967295u)), Struct_1(vec2<u32>(1u, global0.x), vec3<f32>(-547f, -202f, -1726f), vec2<i32>(58875i, -46320i), vec2<bool>(true, true)), Struct_2(u_input.a, vec3<bool>(false, true, true), global0.xyx)), vec2<bool>(true, true), vec3<u32>(u_input.a.x, global0.x, u_input.a.x))));
    var var_2 = abs(-14719i);
    var_2 = 1i;
    let var_3 = Struct_2(abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(81421u, global0.x, 9818u), global0.xxw | vec3<u32>(u_input.a.x, u_input.a.x, 18055u), select(global0.xwz, global0.ywy, var_1.x)), reverseBits(~vec3<u32>(68625u, 4294967295u, u_input.a.x)), firstTrailingBit(vec3<u32>(52189u, 4294967295u, 1u)))), !var_1.yxy, global0.zzw);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(415f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(636f * -936f), -1362f)), var_1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(295f, 175f), 1f) - _wgslsmith_f_op_f32(-259f - 309f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -239f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-255f - -1051f), 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(1u, ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, u_input.a.x, var_3.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_3.c.x, u_input.a.x, 13413u, var_3.a.x), vec4<u32>(52670u, var_3.a.x, 40322u, u_input.a.x)))), _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(24873u, u_input.a.x, var_3.a.x)), vec3<u32>(13233u, global0.x, u_input.a.x)), ~global0.x >> (global0.x % 32u)), abs(1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(160f, -339f), vec2<f32>(856f, 1000f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(408f, 1000f) * vec2<f32>(1619f, -1000f))), vec2<f32>(-985f, -1000f)))));
}

