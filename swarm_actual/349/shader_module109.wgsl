struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec3<f32>,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec4<u32>,
    d: Struct_2,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 32>;

var<private> global1: array<vec2<f32>, 2>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    var var_0 = countOneBits(u_input.b);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(f32(-1f) * -832f))), -1000f, true)), vec2<i32>(~(u_input.a ^ ~u_input.a), 1i), 5854u, Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-742f, -871f) * vec2<f32>(-394f, -1372f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(801f, 349f) - vec2<f32>(-1079f, -1055f)))), _wgslsmith_f_op_vec2_f32(ceil(global1[_wgslsmith_index_u32(abs(u_input.d), 2u)])), !select(vec2<bool>(true, false), vec2<bool>(true, false), false))), false, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-227f, -1551f), -880f, -157f)), _wgslsmith_mult_i32(2147483647i, global0[_wgslsmith_index_u32(u_input.d & 0u, 32u)] & arg_0.x), -vec2<i32>(global0[_wgslsmith_index_u32(~11440u, 32u)], 2185i)), Struct_1(_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(0u, 2u)]), true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(966f, 1628f, -994f), vec3<f32>(363f, 1142f, -695f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-179f, -218f, -1000f)))), any(vec2<bool>(false, false)))), arg_0.x, -u_input.c.xz));
    var var_2 = Struct_4(~vec3<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(25966u, 32u)] << (var_1.c % 32u), _wgslsmith_add_i32(-1i, -2147483647i)), ~48563i, u_input.a));
    var var_3 = select(select(!(!vec3<bool>(var_1.e.b, true, var_1.d.b)), select(vec3<bool>(!var_1.d.b, var_2.a.x >= -6033i, all(vec3<bool>(var_1.e.b, false, false))), vec3<bool>(false && var_1.e.b, var_1.d.b && false, var_1.d.b), true), all(!(!vec3<bool>(true, var_1.e.b, var_1.d.b)))), select(select(select(!vec3<bool>(true, false, var_1.e.b), select(vec3<bool>(false, false, var_1.e.b), vec3<bool>(false, true, true), false), !vec3<bool>(var_1.d.b, var_1.e.b, true)), !(!vec3<bool>(false, var_1.d.b, var_1.e.b)), !select(vec3<bool>(true, var_1.e.b, true), vec3<bool>(true, false, var_1.e.b), false)), vec3<bool>((var_1.c != u_input.e) && var_1.d.b, var_1.d.b, any(vec3<bool>(true, true, true))), all(vec4<bool>(var_1.e.b, all(vec4<bool>(true, var_1.e.b, var_1.d.b, var_1.d.b)), var_1.e.b, var_1.e.b))), false);
    var var_4 = var_1.e;
    return var_1.e.b;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: i32, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(527f, -141f))))), u_input.c.zy, ~4294967295u, arg_0.d, Struct_1(_wgslsmith_div_vec2_f32(arg_3.d.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.c.x, -2162f) - arg_3.d.c.xz))), arg_0.d.b & (arg_3.c < select(0u, 0u, true)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-arg_0.d.c), arg_3.d.c)), arg_2, u_input.c.xy));
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, arg_3.d.c.x), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(355f, 1000f), var_0.d.c.zx))))), all(select(!vec3<bool>(arg_3.d.b, var_0.d.b, true), !vec3<bool>(var_0.d.b, var_0.e.b, var_0.d.b), true)), vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.d.a.x)), _wgslsmith_f_op_f32(var_0.e.a.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1265f)), 1048f, arg_3.d.b || true))), -411f), -40722i, vec2<i32>(abs(_wgslsmith_dot_vec2_i32(arg_3.d.e, vec2<i32>(1i, -1i))), _wgslsmith_mod_i32(2147483647i, 26184i)) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c, 32462u), vec2<u32>(arg_3.c, 4294967295u)), u_input.e) % vec2<u32>(32u)));
    let var_2 = vec2<bool>(false, var_0.e.b);
    let var_3 = Struct_3(Struct_2(-2072f, vec2<i32>(_wgslsmith_clamp_i32(1i, -2324i | arg_0.e.e.x, i32(-1i) * -1i), var_0.b.x >> (~var_0.c % 32u)), 1u, var_1, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.d.c.zx, arg_3.e.a))), !any(vec3<bool>(var_2.x, var_1.b, var_0.d.b)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-303f, arg_0.d.a.x, var_0.d.c.x)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-740f, 131f, -255f)))), ~(-var_0.e.d), _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, arg_3.b.x), vec2<i32>(arg_2, -13591i)) << (~vec2<u32>(arg_3.c, 1u) % vec2<u32>(32u)))), u_input.c.yw, vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(9893u, 1574u), vec2<u32>(1u, arg_0.c)) << (46431u % 32u), 1u, ~(arg_0.c | (arg_0.c & 43085u)), select(19214u, countOneBits(3569u), all(vec3<bool>(false, var_2.x, var_1.b)))), var_0, vec2<i32>(-1i) * -(vec2<i32>(-1i) * -var_0.e.e));
    let var_4 = ~u_input.c.x;
    return var_3.c.wyx;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> Struct_4 {
    global1 = array<vec2<f32>, 2>();
    let var_0 = ~func_4(Struct_2(-225f, -vec2<i32>(15957i, 0i), _wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, 30563u), _wgslsmith_sub_u32(4294967295u, u_input.e)), Struct_1(arg_0.wz, false, _wgslsmith_f_op_vec3_f32(select(arg_0.xwz, arg_0.xww, vec3<bool>(false, true, true))), ~global0[_wgslsmith_index_u32(u_input.d, 32u)], u_input.c.wz ^ u_input.c.zz), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, 1218f)), func_3(u_input.c.yx), vec3<f32>(-930f, arg_0.x, 435f), ~1971i, vec2<i32>(arg_1, arg_1) | vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 32u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1279f - 649f)), u_input.c.x, Struct_2(647f, ~(vec2<i32>(1i, global0[_wgslsmith_index_u32(1u, 32u)]) << (vec2<u32>(1u, 0u) % vec2<u32>(32u))), 1u, Struct_1(arg_0.zw, arg_1 >= -1049i, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.x, arg_0.x, arg_0.x))), -arg_1, u_input.c.wx), Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.xy), false, arg_0.yxx, 1i, _wgslsmith_clamp_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.d, 32u)], -52204i), vec2<i32>(-15015i, u_input.b), vec2<i32>(u_input.c.x, global0[_wgslsmith_index_u32(2511u, 32u)])))));
    return Struct_4(~_wgslsmith_add_vec3_i32(u_input.c.wxw, vec3<i32>(u_input.c.x, -2147483647i, arg_1) ^ select(u_input.c.xyw, vec3<i32>(1i, arg_1, arg_1), true)));
}

fn func_5(arg_0: Struct_4) -> f32 {
    var var_0 = u_input.e;
    global0 = array<i32, 32>();
    let var_1 = countOneBits(vec4<u32>(countOneBits(reverseBits(~27324u)), 72149u, _wgslsmith_div_u32(u_input.e, ~4294967295u), ~u_input.e));
    var var_2 = func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(1823f)))) + _wgslsmith_f_op_f32(round(1141f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -410f))))), _wgslsmith_f_op_f32(f32(-1f) * -156f), _wgslsmith_f_op_f32(round(-413f))), abs(-firstTrailingBit(-u_input.c.x)));
    var var_3 = ~var_2.a.x;
    return -1934f;
}

fn func_1() -> vec4<u32> {
    global1 = array<vec2<f32>, 2>();
    global1 = array<vec2<f32>, 2>();
    global0 = array<i32, 32>();
    global0 = array<i32, 32>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -207f)))), vec2<i32>(firstLeadingBit(-59842i), 0i), u_input.d, Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(u_input.e, 2u)])))), false, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1770f, 1187f, -815f)), vec3<f32>(-1048f, _wgslsmith_div_f32(-458f, 1168f), _wgslsmith_div_f32(-442f, -2398f)))), select(11913i, 1i, true) >> (~1u % 32u), vec2<i32>(5186i, 16831i)), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -545f), _wgslsmith_f_op_f32(func_5(func_2(vec4<f32>(396f, 357f, 539f, 483f), 33375i)))), any(vec2<bool>(false, false)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1068f, 328f, -208f) * vec3<f32>(-585f, -342f, -268f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-480f, 917f, -1213f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1225f, -971f, -1612f), vec3<f32>(-385f, -797f, 1287f)))), true)), -1i & -(0i | u_input.c.x), ~vec2<i32>(-13054i, _wgslsmith_mult_i32(u_input.a, -2147483647i))));
    return vec4<u32>(45308u, ~49764u, _wgslsmith_add_u32(~4294967295u, ~2846u & var_0.c), 1u) & ~vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.d), vec3<u32>(28308u, 1u, var_0.c), vec3<u32>(var_0.c, var_0.c, 0u)), ~vec3<u32>(0u, 1u, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 0u), vec2<u32>(u_input.d, var_0.c)), ~20311u, max(u_input.d, _wgslsmith_clamp_u32(u_input.d, 46713u, u_input.d)));
}

fn func_6(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec4<u32>, arg_3: Struct_3) -> u32 {
    var var_0 = arg_3.a.d;
    var var_1 = u_input.c;
    var var_2 = vec3<bool>(true, !func_3(-vec2<i32>(10329i, 32626i)) == arg_3.a.d.b, all(select(!select(vec3<bool>(var_0.b, true, arg_0.d.d.b), vec3<bool>(true, var_0.b, arg_3.d.e.b), arg_3.a.d.b), vec3<bool>(arg_1.x == -46065i, !var_0.b, arg_3.d.a == -1259f), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, arg_0.a.d.b), vec3<bool>(false, true, arg_0.d.d.b))))));
    global1 = array<vec2<f32>, 2>();
    let var_3 = _wgslsmith_mult_i32(33807i, ~9664i);
    return 756u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(firstLeadingBit(u_input.d), ~u_input.d >> (1u % 32u), ~(~u_input.d)) & vec3<u32>(~(~_wgslsmith_sub_u32(u_input.d, u_input.e)), firstTrailingBit(func_6(Struct_3(Struct_2(453f, vec2<i32>(global0[_wgslsmith_index_u32(u_input.d, 32u)], -1i), 27513u, Struct_1(global1[_wgslsmith_index_u32(u_input.d, 2u)], true, vec3<f32>(-1922f, -2045f, -105f), global0[_wgslsmith_index_u32(u_input.d, 32u)], vec2<i32>(-19514i, u_input.c.x)), Struct_1(global1[_wgslsmith_index_u32(94871u, 2u)], false, vec3<f32>(-1440f, -112f, 323f), 1i, vec2<i32>(global0[_wgslsmith_index_u32(u_input.e, 32u)], global0[_wgslsmith_index_u32(u_input.e, 32u)]))), vec2<i32>(global0[_wgslsmith_index_u32(u_input.d, 32u)], -10517i), vec4<u32>(0u, 0u, 20778u, u_input.d), Struct_2(-1540f, vec2<i32>(u_input.b, global0[_wgslsmith_index_u32(u_input.d, 32u)]), 1u, Struct_1(global1[_wgslsmith_index_u32(u_input.d, 2u)], false, vec3<f32>(347f, -1000f, 797f), u_input.b, vec2<i32>(-1i, u_input.b)), Struct_1(global1[_wgslsmith_index_u32(u_input.d, 2u)], true, vec3<f32>(-1063f, 337f, 794f), -2147483647i, vec2<i32>(-3599i, -1i))), vec2<i32>(1i, u_input.b)), ~u_input.c.wx, func_1(), Struct_3(Struct_2(1000f, u_input.c.xz, 0u, Struct_1(global1[_wgslsmith_index_u32(u_input.e, 2u)], true, vec3<f32>(-228f, 379f, 271f), global0[_wgslsmith_index_u32(0u, 32u)], u_input.c.yw), Struct_1(global1[_wgslsmith_index_u32(1u, 2u)], false, vec3<f32>(-1308f, 461f, 1422f), global0[_wgslsmith_index_u32(u_input.e, 32u)], u_input.c.yx)), vec2<i32>(-2147483647i, 0i), vec4<u32>(4294967295u, u_input.e, u_input.d, u_input.d), Struct_2(2147f, vec2<i32>(2147483647i, 0i), u_input.d, Struct_1(global1[_wgslsmith_index_u32(u_input.d, 2u)], true, vec3<f32>(311f, 1021f, 988f), 38162i, vec2<i32>(2147483647i, 1i)), Struct_1(global1[_wgslsmith_index_u32(u_input.d, 2u)], true, vec3<f32>(456f, 1234f, -503f), global0[_wgslsmith_index_u32(60899u, 32u)], u_input.c.zy)), vec2<i32>(u_input.b, 10665i)))), 0u);
    global1 = array<vec2<f32>, 2>();
    let var_1 = ~func_6(Struct_3(Struct_2(-1280f, select(vec2<i32>(-1i, global0[_wgslsmith_index_u32(var_0.x, 32u)]), u_input.c.xx, vec2<bool>(false, false)), _wgslsmith_mult_u32(u_input.d, var_0.x), Struct_1(global1[_wgslsmith_index_u32(var_0.x, 2u)], true, vec3<f32>(768f, 317f, 389f), global0[_wgslsmith_index_u32(17498u, 32u)], vec2<i32>(-63062i, u_input.a)), Struct_1(global1[_wgslsmith_index_u32(u_input.e, 2u)], false, vec3<f32>(372f, 103f, -1278f), 2147483647i, vec2<i32>(16667i, global0[_wgslsmith_index_u32(var_0.x, 32u)]))), countOneBits(_wgslsmith_sub_vec2_i32(u_input.c.wy, vec2<i32>(global0[_wgslsmith_index_u32(u_input.d, 32u)], -1i))), vec4<u32>(u_input.e, u_input.d, ~1u, ~var_0.x), Struct_2(_wgslsmith_f_op_f32(round(578f)), abs(u_input.c.wy), countOneBits(var_0.x), Struct_1(global1[_wgslsmith_index_u32(var_0.x, 2u)], false, vec3<f32>(-1000f, 175f, 1813f), u_input.c.x, u_input.c.zz), Struct_1(vec2<f32>(-505f, 1284f), true, vec3<f32>(-1461f, 367f, -103f), u_input.b, u_input.c.xw)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -26500i), vec2<i32>(global0[_wgslsmith_index_u32(96148u, 32u)], -44517i), -u_input.c.wz)), u_input.c.xz, vec4<u32>(~var_0.x << (u_input.d % 32u), var_0.x, max(91450u, u_input.e << (78484u % 32u)), firstTrailingBit(var_0.x)), Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -484f), _wgslsmith_sub_vec2_i32(vec2<i32>(9443i, -5699i), vec2<i32>(u_input.a, -60153i)), u_input.e, Struct_1(global1[_wgslsmith_index_u32(1u, 2u)], false, vec3<f32>(-1669f, 1000f, 458f), -47372i, u_input.c.yy), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 2u)], true, vec3<f32>(-564f, 892f, 265f), global0[_wgslsmith_index_u32(var_0.x, 32u)], vec2<i32>(0i, u_input.a))), vec2<i32>(-2147483647i & u_input.a, 35142i), firstTrailingBit(~vec4<u32>(117909u, 14472u, u_input.e, 1599u)), Struct_2(_wgslsmith_div_f32(1978f, 1000f), _wgslsmith_div_vec2_i32(u_input.c.wx, vec2<i32>(-2147483647i, -9529i)), 0u, Struct_1(vec2<f32>(-235f, -615f), false, vec3<f32>(1000f, -948f, -488f), -2147483647i, vec2<i32>(38839i, -2147483647i)), Struct_1(vec2<f32>(-1640f, -618f), false, vec3<f32>(190f, -2457f, 909f), global0[_wgslsmith_index_u32(var_0.x, 32u)], vec2<i32>(u_input.a, u_input.c.x))), u_input.c.yz));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(ceil(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(40623u, _wgslsmith_div_u32(~var_1, 1u)), 2u)])), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -445f, -711f) + vec3<f32>(668f, -1000f, 538f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1102f, -479f, -473f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(956f, -108f, 2286f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-113f, -260f, -1476f) - vec3<f32>(500f, 219f, -208f))) + vec3<f32>(_wgslsmith_f_op_f32(min(181f, 856f)), 1760f, _wgslsmith_f_op_f32(f32(-1f) * -899f)))), _wgslsmith_add_i32(2147483647i >> (func_1().x % 32u), ~countOneBits(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(22039u, 32u)], u_input.c.x))), reverseBits(-firstLeadingBit(select(u_input.c.xz, u_input.c.wz, vec2<bool>(true, true)))));
    global1 = array<vec2<f32>, 2>();
    global1 = array<vec2<f32>, 2>();
    let var_3 = abs(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(abs(max(vec3<i32>(54655i, u_input.a, 41790i), u_input.c.xwy)), (u_input.c.xww >> (vec3<u32>(var_0.x, 1u, 58137u) % vec3<u32>(32u))) ^ vec3<i32>(14509i, var_2.d, -22295i)), abs(u_input.c.yww)));
    global0 = array<i32, 32>();
    var var_4 = Struct_3(Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_2.c.x)), var_2.c.x), u_input.c.yx, var_0.x, Struct_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -234f), _wgslsmith_f_op_f32(var_2.c.x * -218f)), true, vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(1169f + -261f), var_2.c.x), ~0i, vec2<i32>(var_3, _wgslsmith_div_i32(-2147483647i, 2147483647i))), Struct_1(vec2<f32>(-627f, _wgslsmith_div_f32(-1000f, 418f)), var_2.b, var_2.c, var_3, var_2.e)), vec2<i32>(37113i, min(var_2.e.x, u_input.c.x)), ~(~select(vec4<u32>(71475u, 11595u, u_input.d, 17076u), vec4<u32>(4294967295u, var_0.x, 22306u, var_0.x), var_2.b)), Struct_2(_wgslsmith_f_op_f32(var_2.a.x * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.a.x)))), _wgslsmith_sub_vec2_i32(~abs(vec2<i32>(var_3, -1i)), countOneBits(vec2<i32>(var_2.d, u_input.b))), func_4(Struct_2(1075f, vec2<i32>(var_3, var_2.d), u_input.e, Struct_1(global1[_wgslsmith_index_u32(var_0.x, 2u)], false, vec3<f32>(582f, var_2.a.x, var_2.a.x), global0[_wgslsmith_index_u32(1602u, 32u)], vec2<i32>(2147483647i, 0i)), Struct_1(global1[_wgslsmith_index_u32(var_0.x, 2u)], true, vec3<f32>(-374f, -724f, var_2.a.x), 0i, var_2.e)), _wgslsmith_f_op_f32(var_2.c.x + -526f), firstTrailingBit(59241i), Struct_2(-201f, vec2<i32>(2147483647i, var_2.e.x), 17680u, Struct_1(global1[_wgslsmith_index_u32(u_input.e, 2u)], false, vec3<f32>(var_2.c.x, var_2.a.x, 216f), 24432i, var_2.e), Struct_1(var_2.c.yy, true, vec3<f32>(var_2.c.x, var_2.c.x, var_2.a.x), global0[_wgslsmith_index_u32(21039u, 32u)], u_input.c.wx))).x | 11155u, Struct_1(_wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(14416u | u_input.e, 2u)], vec2<f32>(var_2.a.x, -355f), select(vec2<bool>(var_2.b, var_2.b), vec2<bool>(true, false), var_2.b))), var_2.b, vec3<f32>(_wgslsmith_f_op_f32(1685f - var_2.a.x), -1713f, _wgslsmith_f_op_f32(-var_2.c.x)), _wgslsmith_add_i32(~var_2.e.x, _wgslsmith_clamp_i32(u_input.c.x, global0[_wgslsmith_index_u32(4294967295u, 32u)], 23806i)), -u_input.c.yw), Struct_1(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_2.a.x, var_2.c.x))), func_3(vec2<i32>(-39958i, -1i)), vec3<f32>(_wgslsmith_f_op_f32(-var_2.c.x), -1790f, _wgslsmith_div_f32(-1000f, var_2.c.x)), _wgslsmith_div_i32(2147483647i, ~var_3), vec2<i32>(1i, -2146i))), max(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -var_2.e, countOneBits(vec2<i32>(global0[_wgslsmith_index_u32(u_input.d, 32u)], 2147483647i) >> (var_0.xx % vec2<u32>(32u)))), select(~_wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(38264u, 32u)], var_2.d), var_2.e), vec2<i32>(-1i) * -vec2<i32>(-1i, var_3), !(!vec2<bool>(false, var_2.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_f_op_f32(func_5(Struct_4(vec3<i32>(var_4.a.e.e.x, -1i, ~var_2.e.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_4.a.a, var_4.a.e.c.x, var_2.c.x, 1948f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.d.c.x, 235f, -725f, var_2.c.x)), vec4<bool>(var_2.b, true, var_2.b, false)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-215f, var_4.d.a, var_2.a.x, var_2.c.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_4.a.d.c.x, var_2.a.x, var_2.c.x, var_4.d.d.a.x)))))));
}

