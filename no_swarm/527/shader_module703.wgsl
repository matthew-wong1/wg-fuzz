struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(true, true, true, true, true, false, true, true, false, false, false, false, true, false, false, true, true, true, false, false, true, false, true, true, false, false);

var<private> global1: Struct_1 = Struct_1(844f, true, vec4<i32>(2147483647i, 0i, i32(-2147483648), 1i), vec3<f32>(1442f, -1000f, -915f));

var<private> global2: array<f32, 29>;

var<private> global3: Struct_1 = Struct_1(1742f, true, vec4<i32>(-12484i, -9833i, i32(-2147483648), 2147483647i), vec3<f32>(315f, -806f, 1086f));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>) -> u32 {
    let var_0 = arg_0;
    var var_1 = ~arg_1.x;
    global2 = array<f32, 29>();
    global3 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global3.a, arg_0.d.x)), -995f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -374f))))), !any(select(!vec4<bool>(global1.b, arg_0.b, false, false), select(vec4<bool>(true, var_0.b, false, var_0.b), vec4<bool>(global3.b, arg_0.b, true, false), global1.b), vec4<bool>(global3.b, global1.b, global0[_wgslsmith_index_u32(4294967295u, 26u)], true))), vec4<i32>(arg_0.c.x, global1.c.x, _wgslsmith_mult_i32(i32(-1i) * -global3.c.x, global3.c.x), u_input.a.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-var_0.d))));
    let var_2 = _wgslsmith_mult_u32(arg_1.x, arg_1.x ^ _wgslsmith_dot_vec3_u32(vec3<u32>(abs(46544u), countOneBits(arg_1.x), 21568u), arg_1));
    return max(var_2, ~(~(~(~arg_1.x))));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a - global3.a)), _wgslsmith_f_op_f32(-global1.a), 221f, global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(func_3(arg_0, ~vec3<u32>(0u, 4294967295u, 1u)), firstLeadingBit(_wgslsmith_div_u32(1u, 58323u))), 29u)]);
    global0 = array<bool, 26>();
    var var_1 = arg_0;
    var var_2 = ~vec2<u32>(~(~func_3(Struct_1(var_1.d.x, var_1.b, vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), vec3<f32>(1036f, global2[_wgslsmith_index_u32(0u, 29u)], var_0.x)), vec3<u32>(522u, 32570u, 4294967295u))), 36536u);
    let var_3 = !(!(!(!(!vec2<bool>(arg_0.b, true)))));
    return Struct_1(-258f, global1.b, vec4<i32>(global1.c.x, 1i, -25448i, _wgslsmith_mod_i32(-u_input.a.x, _wgslsmith_clamp_i32(global1.c.x, 15970i, var_1.c.x)) ^ _wgslsmith_mult_i32(firstLeadingBit(5110i), var_1.c.x)), vec3<f32>(_wgslsmith_f_op_f32(-539f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(var_2.x, 29u)], global3.d.x) + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 29u)], -247f))), _wgslsmith_f_op_f32(select(-989f, 586f, false))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = vec3<u32>(43165u ^ arg_0, 1u, ~arg_0);
    let var_1 = vec2<f32>(-1000f, _wgslsmith_div_f32(global3.d.x, 1837f));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(770f - _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_1.a)))))));
    let var_3 = vec4<bool>(true, false, !global0[_wgslsmith_index_u32(~(~var_0.x), 26u)], (arg_1.c.x ^ -_wgslsmith_dot_vec4_i32(global3.c, arg_1.c)) <= 0i);
    var_0 = ~vec3<u32>(1u, _wgslsmith_div_u32(~(~var_0.x), abs(min(arg_0, var_0.x))), ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.x, 4294967295u), ~arg_0));
    return vec3<bool>(true, false, _wgslsmith_f_op_f32(-1f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.a)) + _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(f32(-1f) * -1309f))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> u32 {
    global0 = array<bool, 26>();
    let var_0 = func_2(Struct_1(1501f, global3.b, ((arg_3.c ^ global1.c) & (vec4<i32>(global1.c.x, 0i, 1172i, -21192i) << (vec4<u32>(1u, 57340u, 1u, 13901u) % vec4<u32>(32u)))) << (vec4<u32>(_wgslsmith_mod_u32(5026u, 1u), 63665u, 0u, ~20356u) % vec4<u32>(32u)), vec3<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~38151u, 29u)], arg_0.d.x), -124f, arg_0.a)), true);
    var var_1 = ~(~_wgslsmith_div_u32(1u, ~1u));
    var var_2 = vec4<u32>(reverseBits(~abs(14043u)), ~abs(~4294967295u), _wgslsmith_mod_u32(0u, 32720u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 31168u, 4294967295u), vec3<u32>(1u, 55499u, 0u)) % 32u), ~func_3(Struct_1(global3.d.x, arg_0.b, vec4<i32>(u_input.a.x, arg_3.c.x, -22267i, 4522i), vec3<f32>(arg_1, 766f, global1.d.x)), ~vec3<u32>(1u, 1u, 49664u))) >> ((vec4<u32>(1u, 1u, 1u, 1u) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u));
    global3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a * -166f), _wgslsmith_f_op_f32(-arg_0.a)))), var_0.b, arg_3.c, _wgslsmith_f_op_vec3_f32(func_2(Struct_1(1479f, select(global3.b, true, false), firstLeadingBit(vec4<i32>(arg_3.c.x, global3.c.x, -30954i, global3.c.x)), _wgslsmith_f_op_vec3_f32(-arg_3.d)), true).d + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, global3.a, global3.d.x))))));
    return 0u;
}

fn func_1(arg_0: u32) -> StorageBuffer {
    global2 = array<f32, 29>();
    var var_0 = Struct_1(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.d.x))) + _wgslsmith_f_op_f32(f32(-1f) * -852f))), global0[_wgslsmith_index_u32(func_5(Struct_1(261f, true, global1.c, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global3.d)))), -640f, func_4(0u, func_2(Struct_1(global1.d.x, false, global1.c, vec3<f32>(global1.a, -1000f, global2[_wgslsmith_index_u32(4294967295u, 29u)])), true), Struct_1(_wgslsmith_div_f32(801f, 432f), any(vec2<bool>(true, false)), vec4<i32>(8586i, global3.c.x, 26073i, -1i), vec3<f32>(global2[_wgslsmith_index_u32(arg_0, 29u)], 360f, 1179f))), func_2(Struct_1(_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(24730u, 29u)], -235f)), func_4(arg_0, Struct_1(global1.d.x, global1.b, vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, global1.c.x), vec3<f32>(660f, global3.a, 640f)), Struct_1(1000f, false, vec4<i32>(global3.c.x, 9739i, -1i, -6283i), global1.d)).x, ~vec4<i32>(global3.c.x, global1.c.x, u_input.a.x, u_input.a.x), vec3<f32>(1018f, 1000f, 1129f)), global3.b)), 26u)], global3.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-509f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(select(0u, arg_0, false), 29u)]), _wgslsmith_f_op_f32(-global1.a))));
    global0 = array<bool, 26>();
    var var_1 = _wgslsmith_clamp_vec4_i32(~select(global3.c, ~vec4<i32>(-2147483647i, 18472i, -1i, 3708i), global3.b), -reverseBits(abs(~vec4<i32>(var_0.c.x, u_input.a.x, 1i, -19121i))), -var_0.c);
    let var_2 = func_2(Struct_1(_wgslsmith_div_f32(-159f, _wgslsmith_f_op_f32(floor(-352f))), any(select(vec2<bool>(false, false), func_4(arg_0, Struct_1(1000f, false, vec4<i32>(0i, -11814i, global1.c.x, 2147483647i), vec3<f32>(global1.a, var_0.d.x, var_0.d.x)), Struct_1(-434f, global1.b, global3.c, global3.d)).yy, any(vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 26u)])))), _wgslsmith_mod_vec4_i32(var_0.c, ~vec4<i32>(global3.c.x, -2147483647i, global1.c.x, var_0.c.x)), _wgslsmith_f_op_vec3_f32(-var_0.d)), global1.b);
    return StorageBuffer(_wgslsmith_add_vec3_i32(vec3<i32>(~(~56262i), 0i, ~var_1.x), vec3<i32>(2147483647i, 2007i, 0i) << (vec3<u32>(0u, arg_0 << (arg_0 % 32u), func_3(Struct_1(1774f, false, var_2.c, vec3<f32>(var_0.d.x, global3.d.x, var_2.d.x)), vec3<u32>(arg_0, arg_0, arg_0))) % vec3<u32>(32u))), vec2<u32>(63471u, 0u), _wgslsmith_f_op_f32(-var_0.a), abs((vec4<i32>(2147483647i, -1i, 10095i, -1i) >> (vec4<u32>(arg_0, 0u, 0u, arg_0) % vec4<u32>(32u))) << (~abs(vec4<u32>(arg_0, arg_0, arg_0, 14788u)) % vec4<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, arg_0, 4294967295u, arg_0), vec4<u32>(4294967295u, 7951u, arg_0, 0u)) | min(vec4<u32>(arg_0, arg_0, 0u, arg_0), vec4<u32>(arg_0, 15182u, arg_0, 1u)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 1u, 39811u, 122924u), vec4<u32>(arg_0, arg_0, arg_0, 57606u), vec4<u32>(arg_0, 1u, 26410u, 0u))), func_3(Struct_1(_wgslsmith_f_op_f32(-1000f * var_2.d.x), global0[_wgslsmith_index_u32(arg_0, 26u)], vec4<i32>(global1.c.x, -22461i, global1.c.x, var_2.c.x), _wgslsmith_f_op_vec3_f32(global3.d - vec3<f32>(168f, -149f, -1386f))), ~vec3<u32>(3315u, 12333u, arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var_0 = true;
    let var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(global3.c.xww, global3.c.xxy), global3.c.yyy), 11347i ^ max(1i, select(firstTrailingBit(-2147483647i), global1.c.x, global0[_wgslsmith_index_u32(~38766u, 26u)])), u_input.a.x);
    let x = u_input.a;
    s_output = func_1(18424u);
}

