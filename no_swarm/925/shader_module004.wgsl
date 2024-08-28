struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 4>;

var<private> global2: array<Struct_2, 26>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_3(Struct_2(vec2<bool>(false, all(select(vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.e.x, 4u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.e.x, 4u)]), true))), arg_0, true), Struct_1(u_input.b.yw & vec2<i32>(global0.d, u_input.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.e.x))), vec3<i32>(max(~u_input.a.x, 2147483647i), arg_0.c.x, -countOneBits(0i)), _wgslsmith_div_i32(3821i, _wgslsmith_dot_vec4_i32(u_input.b, ~u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(261f, global0.e.x, -446f)) * arg_0.e)), arg_0, _wgslsmith_f_op_vec3_f32(-arg_0.e));
    global2 = array<Struct_2, 26>();
    let var_1 = firstLeadingBit(_wgslsmith_add_vec4_u32(abs(u_input.e), _wgslsmith_sub_vec4_u32(~u_input.e >> (~u_input.e % vec4<u32>(32u)), max(select(u_input.e, u_input.e, true), vec4<u32>(8397u, 69512u, u_input.e.x, 0u) >> (vec4<u32>(79023u, 0u, u_input.e.x, u_input.e.x) % vec4<u32>(32u))))));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 1u), 4u)];
    var var_3 = var_0.c.e;
    return 22523u ^ select(var_1.x << (_wgslsmith_clamp_u32(countOneBits(32226u), ~var_1.x, _wgslsmith_dot_vec3_u32(u_input.e.zyx, u_input.e.zyz)) % 32u), countOneBits(~u_input.e.x), all(!select(vec3<bool>(var_0.a.c, true, global1[_wgslsmith_index_u32(u_input.e.x, 4u)]), vec3<bool>(false, true, true), vec3<bool>(true, false, global1[_wgslsmith_index_u32(var_1.x, 4u)]))));
}

fn func_2() -> bool {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.c, func_3(Struct_1(-global0.c.xz, _wgslsmith_f_op_f32(select(-2058f, global0.b, true)), select(global0.c, global0.c, vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.e.x, 4u)], global1[_wgslsmith_index_u32(3548u, 4u)])), abs(2147483647i), vec3<f32>(961f, 850f, global0.e.x))), ~_wgslsmith_clamp_u32(u_input.e.x, 85849u, u_input.e.x) | countOneBits(u_input.e.x | 35387u)), _wgslsmith_mod_u32(111849u, u_input.e.x)), 26u)];
    var var_1 = Struct_5(vec2<f32>(var_0.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(300f))))), var_0.b, ~var_0.b.a.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(519f, 302f, global0.e.x, var_0.b.e.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1.b.b, var_1.b.b, -351f, -765f), vec4<f32>(-2291f, var_1.a.x, 933f, var_0.b.e.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-829f, -1122f, 280f, -286f))), !vec4<bool>(true, true, true, var_0.c)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1431f, _wgslsmith_f_op_f32(abs(global0.e.x)), _wgslsmith_div_f32(var_1.a.x, -667f), _wgslsmith_f_op_f32(select(var_1.b.e.x, var_1.a.x, global1[_wgslsmith_index_u32(u_input.e.x, 4u)])))))), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(global1[_wgslsmith_index_u32(43018u, 4u)], global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(47610u, 4u)], global1[_wgslsmith_index_u32(u_input.e.x, 4u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(u_input.c, 4u)], global1[_wgslsmith_index_u32(u_input.e.x, 4u)])), !(!vec4<bool>(var_0.c, var_0.c, true, false)), false), select(!vec4<bool>(true, false, true, var_0.a.x), !vec4<bool>(false, global1[_wgslsmith_index_u32(13180u, 4u)], global1[_wgslsmith_index_u32(62045u, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]), all(!vec3<bool>(var_0.c, var_0.a.x, true))), select(!select(vec4<bool>(true, var_0.c, false, true), vec4<bool>(global1[_wgslsmith_index_u32(21688u, 4u)], global1[_wgslsmith_index_u32(1u, 4u)], var_0.c, var_0.a.x), vec4<bool>(true, global1[_wgslsmith_index_u32(109187u, 4u)], true, false)), !select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 4u)], false, var_0.a.x, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 4u)], false, var_0.c, true), global1[_wgslsmith_index_u32(8308u, 4u)]), true))));
    var var_3 = 1u;
    let var_4 = Struct_1(_wgslsmith_add_vec2_i32(var_1.b.c.zy, var_1.b.c.yx), global0.e.x, vec3<i32>(43775i, global0.c.x, 1781i), ~firstLeadingBit(min(~global0.c.x, _wgslsmith_div_i32(1i, var_1.c))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_1.b.e, _wgslsmith_f_op_vec3_f32(-global0.e)))))));
    return any(vec2<bool>((!global1[_wgslsmith_index_u32(u_input.e.x, 4u)] && true) & select(var_0.c, false, global1[_wgslsmith_index_u32(u_input.c, 4u)]), any(!vec4<bool>(var_0.a.x, true, var_0.a.x, global1[_wgslsmith_index_u32(78504u, 4u)]))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: vec4<i32>, arg_3: vec3<u32>) -> i32 {
    global0 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(~(-2147483647i), 1i), u_input.b.yz, u_input.a << (vec2<u32>(~20408u, _wgslsmith_mult_u32(arg_3.x, arg_3.x)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global0.b, -999f, true)))))) - 597f), _wgslsmith_mod_vec3_i32(max(arg_2.yzz, _wgslsmith_mult_vec3_i32(vec3<i32>(-58522i, u_input.d, u_input.b.x), ~vec3<i32>(-72312i, 0i, u_input.b.x))), abs(global0.c)), firstTrailingBit(-33182i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1210f, global0.b), -502f, _wgslsmith_f_op_f32(f32(-1f) * -1732f)))));
    let var_0 = Struct_3(Struct_2(select(select(vec2<bool>(arg_1, true), !vec2<bool>(arg_0, true), arg_0 || global1[_wgslsmith_index_u32(0u, 4u)]), select(vec2<bool>(arg_1, true), vec2<bool>(true, arg_1), !vec2<bool>(arg_1, arg_1)), arg_0), Struct_1(min(min(vec2<i32>(-2147483647i, -20924i), vec2<i32>(u_input.b.x, global0.a.x)), abs(arg_2.xw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * 1575f)), arg_2.zyy, ~(~30579i), _wgslsmith_f_op_vec3_f32(ceil(global0.e))), !(!global1[_wgslsmith_index_u32(arg_3.x, 4u)])), Struct_1(vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mult_i32(arg_2.x, u_input.a.x), u_input.a.x << (23437u % 32u)), -86895i), 940f, ~(~arg_2.xyx), ~2147483647i, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.e) - _wgslsmith_f_op_vec3_f32(floor(global0.e)))))), Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(global0.a, global0.a), vec2<i32>(-23320i, arg_2.x)) >> (_wgslsmith_add_vec2_u32(~vec2<u32>(13215u, arg_3.x), arg_3.yz) % vec2<u32>(32u)), global0.e.x, global0.c, 15388i, global0.e), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1114f * 2029f) - _wgslsmith_f_op_f32(global0.e.x * global0.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, -743f) + global0.e.x)))));
    let var_1 = !select(vec4<bool>(arg_0, true, all(vec2<bool>(true, true)), global1[_wgslsmith_index_u32(u_input.c, 4u)]), select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 4u)], true, false), select(vec4<bool>(arg_0, true, var_0.a.c, global1[_wgslsmith_index_u32(arg_3.x, 4u)]), vec4<bool>(false, var_0.a.a.x, arg_1, true), arg_0), vec4<bool>(global1[_wgslsmith_index_u32(0u, 4u)], true, global1[_wgslsmith_index_u32(u_input.e.x, 4u)], arg_1)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, arg_1, false, arg_1), vec4<bool>(var_0.a.a.x, var_0.a.c, false, false)), !vec4<bool>(arg_1, var_0.a.a.x, arg_1, true), true), select(vec4<bool>(var_0.a.a.x, arg_0, global1[_wgslsmith_index_u32(4294967295u, 4u)], true), select(vec4<bool>(false, arg_1, var_0.a.c, global1[_wgslsmith_index_u32(arg_3.x, 4u)]), vec4<bool>(false, false, arg_1, true), vec4<bool>(arg_1, true, true, false)), select(true, global1[_wgslsmith_index_u32(0u, 4u)], var_0.a.a.x))), vec4<bool>(false, func_2(), true, all(!var_0.a.a)));
    global1 = array<bool, 4>();
    global0 = Struct_1(vec2<i32>(_wgslsmith_mod_i32(-global0.c.x, _wgslsmith_add_i32(-47342i, arg_2.x)) | u_input.d, countOneBits(33141i)), 1441f, _wgslsmith_add_vec3_i32(vec3<i32>(-1i, ~(-global0.d), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, 1i, 7482i, var_0.b.a.x) << (u_input.e % vec4<u32>(32u)), u_input.b << (u_input.e % vec4<u32>(32u)))), u_input.b.zzz), i32(-1i) * -abs(0i), var_0.b.e);
    return -29855i;
}

fn func_1() -> i32 {
    global1 = array<bool, 4>();
    let var_0 = vec4<i32>(_wgslsmith_dot_vec2_i32(select(global0.a, global0.c.zz, vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 4u)] != global1[_wgslsmith_index_u32(u_input.c, 4u)])), ~vec2<i32>(global0.a.x, -28228i)), reverseBits(u_input.d ^ 35124i), 6322i, func_4(all(select(vec4<bool>(true, global1[_wgslsmith_index_u32(41319u, 4u)], false, false), vec4<bool>(true, global1[_wgslsmith_index_u32(40571u, 4u)], global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 4u)], false, global1[_wgslsmith_index_u32(u_input.e.x, 4u)], global1[_wgslsmith_index_u32(u_input.c, 4u)]))), func_2() == global1[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_mult_vec4_i32(u_input.b, u_input.b & vec4<i32>(global0.d, global0.a.x, -1i, 2147483647i)), _wgslsmith_clamp_vec3_u32(select(vec3<u32>(4294967295u, u_input.e.x, u_input.e.x), vec3<u32>(u_input.e.x, 1u, 17562u), true), vec3<u32>(81333u, 4294967295u, 55370u), u_input.e.yyz & u_input.e.yzy)) << (~u_input.e.x % 32u));
    let var_1 = global2[_wgslsmith_index_u32(1u, 26u)];
    let var_2 = min(u_input.e, vec4<u32>(u_input.c, _wgslsmith_dot_vec3_u32(u_input.e.xyy, vec3<u32>(32943u, 77172u, u_input.c)), select(abs(4294967295u), reverseBits(abs(u_input.e.x)), global1[_wgslsmith_index_u32(61032u, 4u)]), 4294967295u));
    let var_3 = vec4<bool>(true, !(!any(vec4<bool>(true, false, true, false))), false, all(select(vec4<bool>(var_0.x > global0.c.x, u_input.a.x <= 2147483647i, true, any(vec3<bool>(var_1.c, var_1.c, false))), select(!vec4<bool>(var_1.c, true, false, var_1.c), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 4u)], true, true, true), true), true)));
    return firstLeadingBit(7250i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(countOneBits(25354i), func_1()));
}

