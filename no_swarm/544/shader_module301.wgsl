struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: vec3<i32>;

var<private> global2: u32;

var<private> global3: Struct_1;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    let var_0 = !(!(!vec4<bool>(u_input.a != 47211u, any(vec2<bool>(false, true)), all(vec2<bool>(false, false)), true)));
    var var_1 = _wgslsmith_add_vec3_u32(~select(~min(vec3<u32>(global0[_wgslsmith_index_u32(global3.a.x, 9u)], 4294967295u, 0u), vec3<u32>(global0[_wgslsmith_index_u32(1u, 9u)], 11505u, global3.a.x)), countOneBits(vec3<u32>(u_input.a, u_input.a, 61018u) & vec3<u32>(9807u, 0u, 61350u)), any(var_0.wwz)), select((~vec3<u32>(global0[_wgslsmith_index_u32(global3.a.x, 9u)], 31530u, global0[_wgslsmith_index_u32(4294967295u, 9u)]) | _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.a, 73763u), vec3<u32>(3583u, 1u, global0[_wgslsmith_index_u32(u_input.a, 9u)]))) & ~_wgslsmith_mult_vec3_u32(vec3<u32>(83086u, 23650u, global0[_wgslsmith_index_u32(0u, 9u)]), vec3<u32>(global3.a.x, 4294967295u, global0[_wgslsmith_index_u32(u_input.a, 9u)])), _wgslsmith_clamp_vec3_u32(~max(vec3<u32>(53518u, global3.a.x, global0[_wgslsmith_index_u32(u_input.a, 9u)]), vec3<u32>(1u, u_input.a, 0u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(71546u, 9u)], u_input.a, u_input.a), ~vec3<u32>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(u_input.a, 9u)], global3.a.x)), ~vec3<u32>(1u, 66565u, 0u)), var_0.x | var_0.x));
    let var_2 = u_input.b.xzz;
    var var_3 = _wgslsmith_f_op_f32(trunc(794f));
    let var_4 = Struct_1(global3.a, reverseBits(abs(u_input.b.x)), select(select(var_2.yz ^ (global3.e.xw >> (vec2<u32>(55045u, u_input.a) % vec2<u32>(32u))), select(max(vec2<i32>(34546i, global1.x), global1.zy), vec2<i32>(-23626i, u_input.c.x), any(vec3<bool>(false, var_0.x, false))), global1.x <= 1i), _wgslsmith_clamp_vec2_i32(firstLeadingBit(var_2.xy) & _wgslsmith_add_vec2_i32(global1.yx, vec2<i32>(33693i, u_input.c.x)), _wgslsmith_mult_vec2_i32(var_2.xy, vec2<i32>(0i, 2217i)) & ~global3.e.xx, select(u_input.b.xz, var_2.xy >> (vec2<u32>(global0[_wgslsmith_index_u32(0u, 9u)], 57978u) % vec2<u32>(32u)), vec2<bool>(var_0.x, true))), select(select(select(var_0.zx, var_0.xz, var_0.yz), vec2<bool>(var_0.x, true), !var_0.x), var_0.zy, !(!vec2<bool>(var_0.x, false)))), ~(-1i) >> (_wgslsmith_div_u32(1u, 19945u) % 32u), global3.e);
    return global1.x;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> f32 {
    var var_0 = !vec4<bool>(any(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), ~arg_0.a.x < u_input.a, (31881i << (_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, arg_0.a.x), vec2<u32>(24087u, 1u)) % 32u)) < func_3(), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1, 1707f, -1000f, 202f))))))))));
    global0 = array<u32, 9>();
    let var_2 = _wgslsmith_clamp_i32(u_input.c.x, global1.x, select(-2147483647i, _wgslsmith_mult_i32(1i, -_wgslsmith_div_i32(2147483647i, u_input.c.x)), false));
    var var_3 = global3.e;
    return var_1.x;
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_4(-u_input.c.zz >> (vec2<u32>(global3.a.x, ~0u) % vec2<u32>(32u)), !all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(func_4(Struct_1(~vec2<u32>(global3.a.x, global3.a.x), ~(global3.b << (17404u % 32u)), -(~vec2<i32>(-20275i, -1i)), global1.x, vec4<i32>(1i, 7657i, func_3(), u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1097f))), 1393f);
    global2 = global3.a.x;
    global3 = Struct_1(min(firstLeadingBit(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32044u, 9u)], 9u)] << (4294967295u % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 46679u), vec3<u32>(55347u, 4349u, 1u)))), _wgslsmith_mod_vec2_u32(select(global3.a, global3.a, select(vec2<bool>(var_0.b, false), vec2<bool>(var_0.b, var_0.b), vec2<bool>(var_0.b, false))), global3.a)), var_0.a.x, max(abs(select(~var_0.a, vec2<i32>(1i, 2147483647i), true)), -_wgslsmith_clamp_vec2_i32(global1.zy, u_input.b.yz, vec2<i32>(-46887i, 0i))), _wgslsmith_mult_i32(i32(-1i) * -1i, _wgslsmith_mod_i32(var_0.a.x, ~(~18379i))), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.b, select(vec4<i32>(u_input.b.x, -16354i, var_0.a.x, -40490i), u_input.b, vec4<bool>(var_0.b, false, true, false))), _wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.b.x, 16008i, global1.x, -2147483647i), global3.e), abs(u_input.b))), ~vec4<i32>(firstTrailingBit(u_input.b.x), global3.b, ~u_input.c.x, ~2147483647i)));
    let var_1 = Struct_3(true, -global1.x, global1.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1379f, var_0.c, 290f) * vec3<f32>(var_0.c, 171f, 1217f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -3025f, var_0.d))))));
    global1 = vec3<i32>(-(~(i32(-1i) * -17719i)), _wgslsmith_div_i32(global1.x, firstTrailingBit(48316i)), ~var_0.a.x);
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.d.x, -290f), vec2<f32>(-294f, 394f))))), var_1.d.xx, Struct_1(~countOneBits(max(global3.a, vec2<u32>(0u, global3.a.x))), -_wgslsmith_div_i32(max(u_input.b.x, var_1.c), -30411i), _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a.x, 1i), ~vec2<i32>(-2111i, -6421i)), _wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.c.xy), vec2<i32>(2147483647i, 1i)), ~global1.yy), _wgslsmith_mod_i32(abs(u_input.c.x), var_1.b), abs(global3.e)));
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: vec2<bool>, arg_3: bool) -> Struct_1 {
    global0 = array<u32, 9>();
    var var_0 = Struct_4(vec2<i32>(_wgslsmith_dot_vec3_i32(arg_0.c.e.wyx, abs(u_input.c)), -2147483647i), global0[_wgslsmith_index_u32(min(4294967295u, _wgslsmith_sub_u32(0u, global3.a.x) >> (45314u % 32u)), 9u)] <= ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(arg_0.c.a.x, arg_0.c.a.x), 0u), arg_0.b.x, _wgslsmith_f_op_f32(round(arg_1)));
    let var_1 = false;
    let var_2 = 396f;
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 * arg_1), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-592f * var_2), _wgslsmith_f_op_f32(func_4(arg_0.c, _wgslsmith_f_op_f32(-1000f - var_0.d))))))));
    return func_2().c;
}

fn func_1() -> i32 {
    global3 = func_5(func_2(), -731f, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(!select(false, false, false), true)), true);
    global0 = array<u32, 9>();
    return u_input.c.x;
}

fn func_6(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> u32 {
    let var_0 = vec4<bool>(arg_2.a, any(!(!select(vec4<bool>(arg_2.a, false, false, true), vec4<bool>(arg_2.a, arg_2.a, true, arg_2.a), vec4<bool>(arg_2.a, arg_2.a, true, false)))), true | (12754i != func_2().c.e.x), true);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_2().c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -654f)))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d.x) * arg_2.d.x), _wgslsmith_f_op_f32(arg_2.d.x - 1000f)));
    global3 = Struct_1(_wgslsmith_clamp_vec2_u32(~func_5(Struct_2(vec2<f32>(2375f, -420f), arg_2.d.xy, Struct_1(vec2<u32>(78001u, global0[_wgslsmith_index_u32(arg_0, 9u)]), 11943i, u_input.b.zw, arg_2.b, u_input.b)), _wgslsmith_f_op_f32(step(-697f, -1000f)), select(vec2<bool>(false, true), var_0.xx, var_0.zy), false && var_0.x).a, firstLeadingBit(vec2<u32>(~4294967295u, arg_0)), select(func_5(func_2(), _wgslsmith_f_op_f32(arg_2.d.x - 229f), vec2<bool>(var_0.x, true), var_0.x).a, vec2<u32>(2509u ^ u_input.a, max(4294967295u, u_input.a)), select(vec2<bool>(true, arg_2.a), var_0.wx, vec2<bool>(arg_2.a, true)))), -37667i, global1.zx, _wgslsmith_dot_vec4_i32(global3.e, vec4<i32>(firstTrailingBit(func_1()), _wgslsmith_dot_vec3_i32(~vec3<i32>(1584i, global1.x, global1.x), vec3<i32>(u_input.b.x, u_input.b.x, 1996i)), u_input.c.x, -max(-13816i, global1.x))), vec4<i32>(global3.b | global1.x, func_2().c.c.x, -25328i, select(-global3.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-30665i, 1i), global1.zx), all(var_0.yw)) & -(~arg_2.c)));
    global2 = _wgslsmith_sub_u32(~global3.a.x, countOneBits(1u));
    var var_2 = global0[_wgslsmith_index_u32(~min(~4294967295u, u_input.a), 9u)];
    return abs(arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(u_input.a, 9u)] ^ global0[_wgslsmith_index_u32(51172u, 9u)]) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(global3.a.x, 33291u, global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global3.a.x, 9u)], 9u)]), vec4<u32>(0u, u_input.a, 1u, u_input.a)), 9u)], _wgslsmith_clamp_u32(~countOneBits(global0[_wgslsmith_index_u32(15825u, 9u)]), 1u, ~4294967295u)), func_1(), Struct_3(false, _wgslsmith_mult_i32(1i, firstTrailingBit(global1.x)) | firstLeadingBit(global3.b), _wgslsmith_div_i32(func_2().c.d, firstTrailingBit(global1.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-818f * 1195f), _wgslsmith_f_op_f32(-1000f + -1308f), 828f) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(251f, -875f, 147f))), vec3<f32>(-723f, 137f, -379f), all(vec4<bool>(false, false, true, false)))))));
    global0 = array<u32, 9>();
    var var_1 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1121f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1119f)), 572f) - 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(vec2<u32>(14046u, global3.a.x), global3.b, global3.e.xw, 1i, u_input.b), 1f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1488f, 308f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2().a.x + -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(868f, -1228f)) + _wgslsmith_f_op_f32(trunc(2194f)))))));
    var var_2 = select(vec4<bool>(-893f <= _wgslsmith_f_op_f32(abs(var_1.x)), all(vec2<bool>(any(vec4<bool>(true, false, false, false)), select(false, false, false))), false, any(vec2<bool>(global3.e.x <= global3.e.x, true))), vec4<bool>(true, true, true, true), true && any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    let var_3 = Struct_3(var_2.x, -u_input.c.x, -global1.x, _wgslsmith_f_op_vec3_f32(max(var_1.zzw, var_1.wzz)));
    let var_4 = Struct_4(max(vec2<i32>(countOneBits(u_input.b.x) ^ global1.x, u_input.b.x), select(func_5(Struct_2(var_1.wx, vec2<f32>(1000f, 755f), Struct_1(vec2<u32>(global0[_wgslsmith_index_u32(global3.a.x, 9u)], 5827u), 25224i, u_input.c.yy, u_input.c.x, vec4<i32>(u_input.b.x, global3.c.x, var_3.b, u_input.c.x))), var_3.d.x, vec2<bool>(true, var_3.a), var_3.a).c, global3.c, vec2<bool>(true, !var_2.x))), var_3.a, 990f, var_3.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(global3.a & ~(~global3.a ^ ~global3.a));
}

