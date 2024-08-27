struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec2<bool>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_3, 21>;

var<private> global2: array<u32, 2>;

var<private> global3: Struct_2;

var<private> global4: array<Struct_3, 32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> i32 {
    global2 = array<u32, 2>();
    var var_0 = all(vec2<bool>(true | (u_input.e < 1i), all(vec4<bool>(true, true, true, true)))) && (~u_input.e >= 1i);
    global4 = array<Struct_3, 32>();
    var var_1 = countOneBits(~(~arg_2.x));
    global1 = array<Struct_3, 21>();
    return -1i;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_1(abs(vec2<u32>(9133u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.b, arg_3, 4294967295u, global2[_wgslsmith_index_u32(14881u, 2u)]), vec4<u32>(0u, 1u, 4294967295u, u_input.a)))) >> ((~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, global0.b), vec2<u32>(0u, 50526u)) ^ (abs(vec2<u32>(4294967295u, global0.b)) | abs(vec2<u32>(u_input.c, global2[_wgslsmith_index_u32(0u, 2u)])))) % vec2<u32>(32u)), true, vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + 1000f)) > _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -263f))), arg_0.x), -(~func_3(_wgslsmith_f_op_vec2_f32(-global0.a.zz), _wgslsmith_f_op_vec2_f32(-global3.a.yz), min(vec2<u32>(global3.b, 46523u), vec2<u32>(30910u, global2[_wgslsmith_index_u32(arg_3, 2u)])))), arg_1.x);
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1457f, _wgslsmith_f_op_f32(sign(-919f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(round(144f)))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, -899f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.x, -1550f, 292f), global0.a, vec3<bool>(false, true, false))))))), global2[_wgslsmith_index_u32(~u_input.d, 2u)]);
    var var_2 = global1[_wgslsmith_index_u32(global3.b, 21u)];
    global1 = array<Struct_3, 21>();
    var var_3 = _wgslsmith_clamp_i32(53012i, countOneBits(~abs(-19237i) << ((_wgslsmith_mult_u32(u_input.d, global0.b) << (4294967295u % 32u)) % 32u)), arg_2.x);
    return var_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = reverseBits(select(select(~select(vec4<u32>(global2[_wgslsmith_index_u32(120013u, 2u)], u_input.c, 4294967295u, 40434u), vec4<u32>(49786u, 4294967295u, 15400u, global2[_wgslsmith_index_u32(62490u, 2u)]), vec4<bool>(false, arg_2.c.x, false, arg_2.c.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(99414u, u_input.c, global0.b, arg_2.a.x), vec4<u32>(arg_2.a.x, 6285u, 8252u, u_input.c)), select(select(vec4<bool>(true, arg_2.c.x, true, true), vec4<bool>(arg_2.c.x, arg_2.c.x, arg_2.b, arg_2.c.x), false), select(vec4<bool>(arg_2.b, false, arg_2.c.x, arg_2.c.x), vec4<bool>(true, true, arg_2.b, arg_2.c.x), vec4<bool>(arg_2.c.x, true, true, true)), !vec4<bool>(arg_2.b, true, arg_2.b, true))), vec4<u32>(arg_1.b, 0u, abs(min(arg_0.b, u_input.b)), _wgslsmith_add_u32(arg_1.b, 4294967295u)), all(select(!vec3<bool>(true, arg_2.c.x, false), !vec3<bool>(false, arg_2.c.x, false), any(vec4<bool>(false, arg_2.c.x, false, arg_2.b))))));
    var var_1 = 0i;
    let var_2 = _wgslsmith_dot_vec3_i32(-(~(-vec3<i32>(-34541i, arg_2.e, 34427i) << (select(var_0.wwy, var_0.xwy, arg_2.c.x) % vec3<u32>(32u)))), select(firstLeadingBit(vec3<i32>(u_input.e, u_input.e, -1i)), abs(~_wgslsmith_sub_vec3_i32(vec3<i32>(0i, u_input.e, arg_2.e), vec3<i32>(2147483647i, -2147483647i, -26244i))), _wgslsmith_add_u32(arg_0.b, abs(0u)) > firstLeadingBit(1u)));
    return arg_2;
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec4<i32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = ~firstLeadingBit(vec3<u32>(~(~global0.b), ~u_input.c, _wgslsmith_div_u32(9903u, 4294967295u)));
    var var_1 = vec3<bool>(~0i == arg_2.x, func_4(func_2(!vec3<bool>(true, arg_3.c.x, arg_3.c.x), vec3<i32>(u_input.e, arg_2.x, -1i), ~vec2<i32>(arg_3.e, arg_2.x), reverseBits(arg_0)), func_2(select(vec3<bool>(true, arg_3.b, false), vec3<bool>(arg_3.c.x, arg_3.b, true), true), countOneBits(vec3<i32>(arg_3.e, arg_2.x, u_input.e)), arg_2.zy, firstTrailingBit(4294967295u)), arg_3).a.x <= (global0.b ^ abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, global0.b, arg_0, 66688u), vec4<u32>(var_0.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(43464u, 2u)], 2u)], arg_0, 56569u)))), false);
    var var_2 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.b, 20632u, global2[_wgslsmith_index_u32(arg_0, 2u)]), vec3<u32>(0u, 1u, 80857u)), ~min(vec3<u32>(1u, 4294967295u, global0.b), vec3<u32>(4294967295u, arg_0, global0.b)), ~abs(vec3<u32>(u_input.d, 23641u, arg_3.a.x))), ~((vec3<u32>(0u, 4294967295u, 0u) & vec3<u32>(0u, arg_3.a.x, global0.b)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(4730u, global3.b, var_0.x), vec3<u32>(arg_3.a.x, arg_0, 1u)) % vec3<u32>(32u)))), ~vec3<u32>(~_wgslsmith_mult_u32(global3.b, u_input.b), 1u, firstTrailingBit(0u)));
    var var_3 = arg_3;
    global0 = func_2(vec3<bool>(false, !(_wgslsmith_f_op_f32(ceil(arg_1)) < _wgslsmith_f_op_f32(global3.a.x - global0.a.x)), false), abs(countOneBits(arg_2.xyx)), arg_2.yx ^ arg_2.yy, global0.b);
    return !vec4<bool>(!(any(vec2<bool>(false, arg_3.b)) && true), arg_3.b, true & func_4(Struct_2(global3.a, 3214u), func_2(vec3<bool>(true, arg_3.b, arg_3.c.x), vec3<i32>(-13186i, -7497i, 2147483647i), vec2<i32>(0i, arg_3.e), arg_0), Struct_1(var_0.xx, var_1.x, vec2<bool>(var_3.c.x, false), arg_2.x, arg_2.x)).c.x, false);
}

fn func_6(arg_0: vec4<bool>, arg_1: u32, arg_2: bool) -> Struct_2 {
    let var_0 = vec4<bool>(!arg_0.x && arg_0.x, !(!arg_0.x), !any(!vec4<bool>(arg_0.x, true, false, arg_0.x)) | !(!(!arg_2)), arg_0.x);
    var var_1 = select(vec3<bool>(true, arg_0.x, arg_2), select(var_0.zzz, select(!arg_0.xxz, vec3<bool>(!arg_2, !arg_0.x, arg_2 & arg_2), all(arg_0)), var_0.x), vec3<bool>(arg_2, var_0.x, true));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1291f, _wgslsmith_f_op_f32(-global0.a.x), any(!(!arg_0.zxy)))) - _wgslsmith_f_op_f32(f32(-1f) * -609f));
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(global3.a.zx));
    let var_4 = Struct_1(~(~(vec2<u32>(arg_1, u_input.c) & vec2<u32>(4294967295u, arg_1))) << (_wgslsmith_div_vec2_u32(vec2<u32>(func_4(Struct_2(vec3<f32>(442f, -232f, global0.a.x), u_input.d), Struct_2(vec3<f32>(global3.a.x, var_3.x, global3.a.x), 0u), Struct_1(vec2<u32>(u_input.b, 4294967295u), true, arg_0.wy, 1i, u_input.e)).a.x, global2[_wgslsmith_index_u32(countOneBits(55983u), 2u)]), ~vec2<u32>(66962u, 1u)) % vec2<u32>(32u)), false, arg_0.xx, -42345i, firstTrailingBit(1i));
    return Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global3.a, global3.a, var_0.zxx))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-502f)), _wgslsmith_f_op_f32(f32(-1f) * -1171f), -138f))), func_2(!vec3<bool>(var_0.x, var_4.c.x, arg_2), vec3<i32>(-35200i, 2147483647i, ~(-558i)), vec2<i32>(~0i, i32(-1i) * -2147483647i), global0.b).b << ((global3.b & ~(~1u)) % 32u));
}

fn func_1(arg_0: bool) -> i32 {
    global2 = array<u32, 2>();
    var var_0 = reverseBits(-_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.e, -1i), ~(-vec3<i32>(u_input.e, u_input.e, -9380i))));
    let var_1 = !((!all(vec2<bool>(arg_0, arg_0)) || true) | true);
    let var_2 = -_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, reverseBits(var_0.x)), var_0.xy), select(vec2<i32>(var_0.x, var_0.x), _wgslsmith_div_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(72907i, -31508i)), select(vec2<bool>(arg_0, var_1), vec2<bool>(arg_0, arg_0), vec2<bool>(false, var_1))) << (max(vec2<u32>(global2[_wgslsmith_index_u32(global3.b, 2u)], u_input.d) ^ vec2<u32>(global3.b, 0u), vec2<u32>(55305u, global0.b) << (vec2<u32>(global2[_wgslsmith_index_u32(global3.b, 2u)], u_input.d) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global0 = func_6(select(func_5(global0.b, global0.a.x, min(-vec4<i32>(34601i, var_2.x, 2147483647i, var_0.x), ~vec4<i32>(var_0.x, 18232i, u_input.e, var_2.x)), func_4(func_2(vec3<bool>(arg_0, var_1, arg_0), vec3<i32>(var_2.x, var_2.x, -1i), vec2<i32>(-20582i, var_0.x), global0.b), func_2(vec3<bool>(false, true, true), vec3<i32>(-63682i, -21409i, 34100i), var_2, 0u), Struct_1(vec2<u32>(global3.b, u_input.c), arg_0, vec2<bool>(var_1, var_1), 5092i, u_input.e))), !vec4<bool>(any(vec2<bool>(var_1, true)), 27017i == var_2.x, true, all(vec4<bool>(arg_0, arg_0, true, arg_0))), vec4<bool>(!var_1, select(true, true, arg_0) && false, select(false, var_1 && var_1, var_1), false)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(39037u, global3.b), _wgslsmith_add_vec2_u32(vec2<u32>(51265u, 1u) | vec2<u32>(35339u, u_input.d), func_4(Struct_2(global0.a, 2493u), Struct_2(vec3<f32>(526f, global0.a.x, -1868f), 23383u), Struct_1(vec2<u32>(global0.b, global3.b), true, vec2<bool>(arg_0, arg_0), -1i, var_2.x)).a) ^ ~(~vec2<u32>(0u, 46768u))), 2u)], func_4(func_2(select(vec3<bool>(false, false, arg_0), vec3<bool>(true, arg_0, false), vec3<bool>(false, arg_0, false)), countOneBits(vec3<i32>(0i, -56400i, u_input.e)), vec2<i32>(var_0.x, var_0.x), 1u), Struct_2(global0.a, ~11750u), func_4(Struct_2(global0.a, 4294967295u), Struct_2(global0.a, global3.b), func_4(Struct_2(global3.a, 4294967295u), Struct_2(global0.a, 0u), Struct_1(vec2<u32>(25934u, 4294967295u), false, vec2<bool>(false, var_1), 11348i, var_2.x)))).b || true);
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-311f))), -2122f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1675f) * _wgslsmith_f_op_f32(min(global3.a.x, 756f))))), 0u);
    global4 = array<Struct_3, 32>();
    var var_1 = true;
    var var_2 = reverseBits(vec3<i32>(u_input.e, -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, u_input.e), vec2<i32>(u_input.e, u_input.e)), vec2<i32>(1i, 1i)), min(func_1(u_input.e >= 0i), -(i32(-1i) * -12659i))));
    global4 = array<Struct_3, 32>();
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.a, func_2(vec3<bool>(false, false, false), vec3<i32>(u_input.e, -20791i, 47749i), var_2.xy, u_input.b).b << (4294967295u % 32u)), global2[_wgslsmith_index_u32(reverseBits(var_0.b ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 2u)], 2u)]) & _wgslsmith_div_u32(16740u, firstLeadingBit(34108u)), 2u)], 8451u >> (countOneBits(1u) % 32u)), vec3<u32>(~0u, ~var_0.b, 64159u)), 21u)];
    var_2 = _wgslsmith_mod_vec3_i32(-((vec3<i32>(1i, var_3.e.d, u_input.e) >> ((vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 2u)], global3.b, 26031u) & vec3<u32>(0u, 0u, 31294u)) % vec3<u32>(32u))) & vec3<i32>(-var_2.x, var_3.a.d ^ var_2.x, func_3(global0.a.zy, global0.a.zz, vec2<u32>(62140u, var_3.a.a.x)))), -_wgslsmith_add_vec3_i32(~select(vec3<i32>(-21036i, 2147483647i, 2147483647i), vec3<i32>(u_input.e, var_3.a.d, -8290i), var_3.b.x), -vec3<i32>(20559i, var_3.a.e, 0i)));
    let var_4 = Struct_3(func_4(var_3.c, var_3.c, Struct_1(select(max(vec2<u32>(u_input.d, u_input.c), var_3.e.a), vec2<u32>(1u, 18100u), var_3.e.b), var_3.a.c.x, func_5(global2[_wgslsmith_index_u32(6568u, 2u)] | global3.b, _wgslsmith_f_op_f32(global3.a.x - var_3.c.a.x), vec4<i32>(var_3.e.e, 23607i, 0i, u_input.e) & vec4<i32>(var_3.d.e, var_3.d.e, var_2.x, 2147483647i), Struct_1(vec2<u32>(var_0.b, u_input.d), false, vec2<bool>(true, false), 2147483647i, var_3.a.d)).zy, u_input.e, var_2.x)), !var_3.b, Struct_2(vec3<f32>(1209f, _wgslsmith_f_op_f32(f32(-1f) * -1419f), _wgslsmith_f_op_f32(-719f * _wgslsmith_f_op_f32(select(var_3.c.a.x, global3.a.x, var_3.a.b)))), _wgslsmith_clamp_u32(~(~8014u), 0u, ~abs(u_input.b))), var_3.e, var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, var_4.a.e, var_2.x), vec3<i32>(12077i, -2147483647i, var_2.x)), -1i, func_4(var_4.c, var_3.c, Struct_1(var_3.d.a, var_4.d.b, vec2<bool>(true, var_3.d.b), var_3.d.d, 34222i)).d), _wgslsmith_clamp_vec3_i32(max(vec3<i32>(2147483647i, -33306i, u_input.e), vec3<i32>(var_4.a.e, var_3.e.e, u_input.e)), vec3<i32>(var_4.a.e, -2147483647i, var_4.e.d) << (vec3<u32>(28174u, global2[_wgslsmith_index_u32(100673u, 2u)], global0.b) % vec3<u32>(32u)), vec3<i32>(var_3.a.e, var_4.e.e, u_input.e)))), 2147483647i);
}

