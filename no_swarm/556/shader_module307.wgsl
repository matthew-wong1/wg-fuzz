struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31>;

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: array<vec2<u32>, 24>;

var<private> global3: i32 = -1i;

var<private> global4: array<i32, 32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: i32, arg_3: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -614f);
    var var_1 = global1.x;
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(633f, var_0), vec2<f32>(-101f, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2129f, var_0)))))), Struct_1(-19141i, select(vec2<bool>(global1.x, !global1.x), global1.zz, global1.zz), 1558f), Struct_1(64930i | max(global4[_wgslsmith_index_u32(arg_0, 32u)], -25631i), vec2<bool>(global1.x, true & !global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1255f)), 4294967295u, Struct_1(~(i32(-1i) * -19567i), !(!vec2<bool>(global1.x, global1.x)), var_0));
    let var_3 = !select(select(select(vec2<bool>(true, var_2.c.b.x), !var_2.b.b, vec2<bool>(false, false)), global1.zx, all(select(vec3<bool>(false, var_2.e.b.x, true), vec3<bool>(false, false, true), global1.x))), vec2<bool>(!(false != global1.x), !(arg_2 != -29176i)), !var_2.b.b);
    let var_4 = Struct_1(_wgslsmith_sub_i32(-7215i | max(u_input.a, abs(-44690i)), var_2.e.a), !(!select(!global1.zy, select(vec2<bool>(false, var_2.b.b.x), vec2<bool>(var_3.x, true), true), var_0 > -233f)), _wgslsmith_f_op_f32(min(-134f, -1104f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: u32, arg_3: bool) -> f32 {
    let var_0 = 1u;
    var var_1 = Struct_3(arg_1);
    var_1 = Struct_3(Struct_2(arg_1.a, Struct_1(reverseBits(0i), !vec2<bool>(arg_3, arg_1.e.b.x), -660f), Struct_1(_wgslsmith_mult_i32(-17318i, abs(-1i)), vec2<bool>(arg_1.c.b.x, arg_3), 1212f), ~min(abs(9639u), ~4294967295u), arg_1.c));
    let var_2 = _wgslsmith_div_f32(arg_1.e.c, arg_1.a.x);
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec4_u32(~u_input.e, vec4<u32>(u_input.d, var_1.a.d, 48876u, var_1.a.d)) & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.d, 4294967295u, var_1.a.d), select(vec4<u32>(arg_2, var_0, 0u, arg_1.d), vec4<u32>(61046u, 43305u, 80379u, arg_1.d), false)), u_input.e, arg_0, vec4<i32>(firstTrailingBit(global4[_wgslsmith_index_u32(arg_2, 32u)]), -26090i, u_input.c, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1000f))))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1431f - -993f), arg_1.c.c, any(arg_1.e.b))), _wgslsmith_f_op_f32(floor(arg_1.c.c)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(646f * arg_1.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(382f - 1302f))))));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(u_input.c, select(global1.yy, global1.yy, !(!(!global1.zz))), _wgslsmith_f_op_f32(func_4(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, countOneBits(u_input.b.x)), 32u)], Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-388f + 833f), _wgslsmith_div_f32(-744f, 399f)), Struct_1(2147483647i, vec2<bool>(global1.x, global1.x), _wgslsmith_f_op_f32(func_3(83033u, u_input.b, u_input.c, vec4<i32>(-1i, -1i, global4[_wgslsmith_index_u32(36053u, 32u)], u_input.a)))), Struct_1(u_input.a, select(vec2<bool>(global1.x, global1.x), global0[_wgslsmith_index_u32(u_input.e.x, 31u)], global1.x), _wgslsmith_div_f32(945f, 617f)), _wgslsmith_mod_u32(u_input.d, 38294u), Struct_1(-1i, !global1.xy, -634f)), _wgslsmith_add_u32(firstLeadingBit(u_input.d), ~4294967295u), !global1.x)));
    global2 = array<vec2<u32>, 24>();
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(~select(~u_input.a, var_0.a, !global1.x), reverseBits(_wgslsmith_mult_i32(~(-1i), _wgslsmith_div_i32(u_input.c, u_input.c))), var_0.a), vec3<i32>(-1i) * -vec3<i32>(-u_input.a, -u_input.c, ~(-10314i)));
    var var_2 = -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(35387i, min(u_input.a, var_0.a)) & _wgslsmith_div_i32(_wgslsmith_mult_i32(1i, var_0.a), ~(-1i)), u_input.c, ~(~abs(u_input.a)));
    global3 = ~(~(-_wgslsmith_mult_i32(var_0.a, i32(-1i) * -52560i)));
    return 1u;
}

fn func_5(arg_0: u32, arg_1: vec4<u32>) -> vec4<i32> {
    global2 = array<vec2<u32>, 24>();
    global0 = array<vec2<bool>, 31>();
    global4 = array<i32, 32>();
    global3 = u_input.c >> (_wgslsmith_div_u32(44202u, 37879u) % 32u);
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(208f * -915f))) - 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1627f - 583f)))), _wgslsmith_div_f32(-605f, _wgslsmith_f_op_f32(-1202f + 106f)));
    return vec4<i32>(global4[_wgslsmith_index_u32(35937u, 32u)], min(abs(u_input.a), u_input.c), ~global4[_wgslsmith_index_u32(~1u >> (((arg_0 & arg_0) >> (u_input.b.x % 32u)) % 32u), 32u)], firstLeadingBit(u_input.c));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = vec2<bool>(true, false);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-303f, _wgslsmith_f_op_f32(func_3(u_input.d, ~vec4<u32>(u_input.e.x, 10528u, 4294967295u, u_input.e.x), _wgslsmith_mod_i32(0i, arg_1.x), vec4<i32>(arg_1.x, u_input.c, -2147483647i, global4[_wgslsmith_index_u32(u_input.d, 32u)]))), any(vec2<bool>(false, false)))))), 826f, _wgslsmith_f_op_f32(f32(-1f) * -977f));
    let var_2 = vec2<i32>(max(i32(-1i) * -28210i, ~(-_wgslsmith_mod_i32(arg_1.x, -2147483647i))), _wgslsmith_sub_i32(~select(-2147483647i, arg_0.x, false), _wgslsmith_mod_i32(arg_1.x, 1i)) ^ ~(~(-37851i)));
    let var_3 = Struct_1(i32(-1i) * -1i, select(!global1.xy, vec2<bool>(global1.x, !(!global1.x)), any(!(!global1.zz))), var_1.x);
    let var_4 = !(!(!select(vec3<bool>(var_0.x, true, false), !vec3<bool>(false, var_3.b.x, false), any(vec2<bool>(var_3.b.x, true)))));
    return Struct_3(Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(var_1.xy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_1.zy, vec2<f32>(var_3.c, var_1.x)) + _wgslsmith_f_op_vec2_f32(-var_1.xx))), Struct_1(select(40332i, -5237i, true), select(!vec2<bool>(var_3.b.x, false), var_4.yx, var_4.x || var_3.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.x, -1269f, var_0.x)) + _wgslsmith_f_op_f32(-var_1.x))), var_3, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b.xxy, ~vec3<u32>(0u, 55505u, 5291u)), vec3<u32>(abs(u_input.b.x), 1u, ~25027u)), var_3));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3) -> bool {
    let var_0 = func_6(-select(_wgslsmith_add_vec2_i32(vec2<i32>(-244i, -1i), vec2<i32>(-1i, -36972i)) >> ((global2[_wgslsmith_index_u32(arg_0.a.d, 24u)] & vec2<u32>(6322u, 1u)) % vec2<u32>(32u)), ~firstLeadingBit(vec2<i32>(-61445i, 0i)), vec2<bool>(true, true)), func_5(func_2(), u_input.b));
    let var_1 = var_0.a.c;
    let var_2 = func_6(max(vec2<i32>((1i ^ u_input.a) ^ ~9561i, (arg_1.a.c.a | arg_1.a.b.a) << (u_input.e.x % 32u)), ~_wgslsmith_sub_vec2_i32(abs(vec2<i32>(-1i, global4[_wgslsmith_index_u32(var_0.a.d, 32u)])), vec2<i32>(arg_1.a.c.a, arg_1.a.e.a))), -vec4<i32>(0i, ~_wgslsmith_add_i32(36612i, global4[_wgslsmith_index_u32(u_input.d, 32u)]), ~(-var_0.a.b.a), abs(1i)));
    var var_3 = func_5(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(~var_2.a.d, select(arg_1.a.d, 28504u, global1.x), abs(271u), var_0.a.d)), firstTrailingBit(vec4<u32>(u_input.d, var_2.a.d, var_0.a.d, 16327u) << (u_input.b % vec4<u32>(32u))) ^ u_input.b), _wgslsmith_add_vec4_u32(abs(vec4<u32>(~u_input.b.x, 1u | var_2.a.d, func_6(vec2<i32>(0i, var_1.a), vec4<i32>(var_2.a.c.a, -2147483647i, 1i, 23935i)).a.d, _wgslsmith_add_u32(1u, var_2.a.d))), (vec4<u32>(1u, 4294967295u, u_input.e.x, 4294967295u) ^ (u_input.b | vec4<u32>(var_0.a.d, arg_0.a.d, 4294967295u, 25565u))) << (u_input.b % vec4<u32>(32u)))).x;
    let var_4 = var_0;
    return any(vec4<bool>((_wgslsmith_sub_i32(-4494i, arg_1.a.c.a) << (23897u % 32u)) < 767i, !arg_0.a.c.b.x, arg_0.a.b.b.x, true));
}

fn func_7(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    global3 = _wgslsmith_dot_vec3_i32(-(max(vec3<i32>(u_input.c, global4[_wgslsmith_index_u32(u_input.b.x, 32u)], global4[_wgslsmith_index_u32(1u, 32u)]), vec3<i32>(arg_2.a, u_input.a, 18412i)) ^ ~vec3<i32>(176i, -1i, arg_2.a)), ~(firstTrailingBit(vec3<i32>(arg_2.a, 4630i, arg_2.a)) | vec3<i32>(0i, -25585i, 1i))) & max(_wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_2.a, u_input.c, arg_2.a, 18958i), vec4<i32>(-1i, 2689i, -1i, 14587i))), ~min(vec4<i32>(0i, 39675i, global4[_wgslsmith_index_u32(u_input.b.x, 32u)], 1i), vec4<i32>(global4[_wgslsmith_index_u32(0u, 32u)], -7968i, -1i, arg_2.a))), ~u_input.c);
    let var_0 = Struct_1(_wgslsmith_sub_i32(u_input.c, -27965i), global1.xy, arg_3.x);
    global3 = _wgslsmith_sub_i32(u_input.a, var_0.a);
    let var_1 = func_6(_wgslsmith_add_vec2_i32(min(vec2<i32>(15583i, _wgslsmith_mult_i32(global4[_wgslsmith_index_u32(u_input.e.x, 32u)], arg_2.a)), -vec2<i32>(u_input.a, 0i) << (firstTrailingBit(u_input.b.yy) % vec2<u32>(32u))), reverseBits(vec2<i32>(-1i, -20317i) ^ vec2<i32>(global4[_wgslsmith_index_u32(4294967295u, 32u)], arg_2.a)) | (vec2<i32>(-1i) * -vec2<i32>(-2872i, u_input.a))), vec4<i32>(u_input.a << (u_input.d % 32u), var_0.a, global4[_wgslsmith_index_u32(func_2(), 32u)], -_wgslsmith_add_i32(u_input.a, u_input.a)) | firstTrailingBit(-(~vec4<i32>(2147483647i, var_0.a, arg_2.a, var_0.a)))).a;
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(534f + 159f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(var_1.a, var_1.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1.b.c) - vec2<f32>(arg_2.c, -972f))))), func_6(_wgslsmith_mod_vec2_i32(max(vec2<i32>(u_input.c, -1i), vec2<i32>(1i, global4[_wgslsmith_index_u32(1u, 32u)])), func_5(u_input.e.x, u_input.e).xw), abs(vec4<i32>(var_1.c.a, -1i, 2147483647i, u_input.a))).a.b, Struct_1(1i, vec2<bool>(!arg_1.x, false), var_0.c), _wgslsmith_clamp_u32(4294967295u, u_input.e.x, var_1.d), var_0));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-156f, -1188f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1365f, -592f)))) * _wgslsmith_div_f32(-1231f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1000f)), 1475f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(183f - -1342f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1107f + 1381f), _wgslsmith_f_op_f32(trunc(-870f))))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1697f * _wgslsmith_f_op_f32(f32(-1f) * -505f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-224f * -1059f)))) * _wgslsmith_f_op_f32(func_7(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x) < 20244u, vec3<bool>(func_1(Struct_3(Struct_2(vec2<f32>(235f, -493f), Struct_1(global4[_wgslsmith_index_u32(5649u, 32u)], global0[_wgslsmith_index_u32(21345u, 31u)], 330f), Struct_1(u_input.c, global1.xz, 150f), u_input.e.x, Struct_1(11985i, vec2<bool>(global1.x, global1.x), 1197f))), Struct_3(Struct_2(vec2<f32>(294f, 249f), Struct_1(2147483647i, vec2<bool>(global1.x, false), 1140f), Struct_1(global4[_wgslsmith_index_u32(0u, 32u)], global0[_wgslsmith_index_u32(u_input.e.x, 31u)], 405f), 4294967295u, Struct_1(global4[_wgslsmith_index_u32(1u, 32u)], vec2<bool>(false, global1.x), 1526f)))), any(vec3<bool>(global1.x, false, true)), true), func_6(abs(vec2<i32>(18482i, -2147483647i)), firstTrailingBit(vec4<i32>(u_input.a, global4[_wgslsmith_index_u32(u_input.b.x, 32u)], global4[_wgslsmith_index_u32(4294967295u, 32u)], global4[_wgslsmith_index_u32(u_input.b.x, 32u)]))).a.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(2387f, -412f, 617f))))));
    let var_1 = vec4<f32>(var_0.x, var_0.x, var_0.x, 2378f);
    var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), -858f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.x, var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1158f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, 317f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_7(false, vec3<bool>(global1.x, global1.x, global1.x), Struct_1(global4[_wgslsmith_index_u32(u_input.e.x, 32u)], global0[_wgslsmith_index_u32(0u, 31u)], var_0.x), var_0.wxy)))), _wgslsmith_f_op_f32(f32(-1f) * -687f))), !vec4<bool>((u_input.c ^ 0i) == -22806i, false | any(vec3<bool>(true, global1.x, true)), true, global1.x & (1u >= u_input.d))));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1000f - -1653f), -127f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(26367u, u_input.b, global4[_wgslsmith_index_u32(0u, 32u)], vec4<i32>(u_input.a, u_input.c, global4[_wgslsmith_index_u32(8333u, 32u)], 0i))), var_1.x))), func_6(-firstLeadingBit(vec2<i32>(u_input.c, u_input.a)), vec4<i32>(-1i) * -vec4<i32>(6966i, u_input.a, global4[_wgslsmith_index_u32(0u, 32u)], -17430i)).a.e, func_6(abs(vec2<i32>(u_input.c, u_input.a) ^ countOneBits(vec2<i32>(0i, 1i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, -2147483647i, 0i), vec4<i32>(u_input.a, 9896i, 0i, u_input.a)), 1i, reverseBits(u_input.c)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.c, 61302i), vec4<i32>(global4[_wgslsmith_index_u32(u_input.d, 32u)], 61971i, u_input.c, -2147483647i)) & firstLeadingBit(vec4<i32>(-56611i, 0i, -1i, global4[_wgslsmith_index_u32(u_input.b.x, 32u)])), vec4<i32>(_wgslsmith_div_i32(1i, global4[_wgslsmith_index_u32(23115u, 32u)]), 0i, firstLeadingBit(u_input.a), abs(-1i)))).a.b, ~func_2(), Struct_1(~(~1i), vec2<bool>(false, !global1.x), var_1.x));
    var var_3 = select(vec3<bool>((any(vec4<bool>(global1.x, global1.x, var_2.b.b.x, var_2.c.b.x)) | global1.x) && global1.x, var_2.b.b.x, true), select(vec3<bool>(true, true, true), vec3<bool>(any(select(vec4<bool>(false, true, true, var_2.e.b.x), vec4<bool>(true, global1.x, true, true), var_2.e.b.x)), all(vec3<bool>(false, var_2.b.b.x, false)), global1.x), select(select(!vec3<bool>(var_2.b.b.x, false, false), vec3<bool>(true, var_2.c.b.x, true), select(vec3<bool>(var_2.c.b.x, global1.x, global1.x), vec3<bool>(var_2.c.b.x, false, true), true)), !select(vec3<bool>(global1.x, global1.x, var_2.b.b.x), vec3<bool>(var_2.b.b.x, global1.x, true), vec3<bool>(var_2.b.b.x, global1.x, false)), global1.x)), !global1.x);
    global3 = -select(global4[_wgslsmith_index_u32(1u, 32u)], global4[_wgslsmith_index_u32(u_input.d, 32u)], 380f < var_0.x);
    global4 = array<i32, 32>();
    global3 = max(-1i, _wgslsmith_div_i32(_wgslsmith_div_i32(0i, u_input.a | 1i), ~_wgslsmith_add_i32(global4[_wgslsmith_index_u32(var_2.d, 32u)], 0i)));
    let x = u_input.a;
    s_output = StorageBuffer(func_5(u_input.b.x, _wgslsmith_mult_vec4_u32(abs(u_input.b), vec4<u32>(u_input.e.x, u_input.d, var_2.d, var_2.d) ^ vec4<u32>(0u, u_input.b.x, var_2.d, 1u))).xxy, _wgslsmith_dot_vec3_i32(firstTrailingBit(-(vec3<i32>(-1i, u_input.c, 1i) ^ vec3<i32>(u_input.c, 2147483647i, global4[_wgslsmith_index_u32(5132u, 32u)]))), abs(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a, -1953i, u_input.a), vec3<i32>(var_2.e.a, 52885i, -2147483647i) | vec3<i32>(u_input.a, -15800i, -2147483647i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_2.c.c, _wgslsmith_f_op_f32(var_2.c.c + var_1.x), _wgslsmith_f_op_f32(max(var_1.x, 467f)), _wgslsmith_f_op_f32(abs(var_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1, var_1, var_3.x)))))));
}

