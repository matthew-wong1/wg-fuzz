struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 29>;

var<private> global1: vec3<f32>;

var<private> global2: array<i32, 3> = array<i32, 3>(18905i, -5237i, 2147483647i);

var<private> global3: array<Struct_2, 7>;

var<private> global4: Struct_1 = Struct_1(vec3<f32>(1340f, -439f, -159f), 39310u);

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = arg_1;
    let var_1 = select(!select(vec4<bool>(false, false, true, arg_0.x), !arg_0, true), vec4<bool>(!(!arg_0.x != false), all(!select(arg_0.www, arg_0.zzy, vec3<bool>(true, true, false))), arg_1.a.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) - 135f), !(!arg_0.x)), !(!(!arg_0)));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(354f)))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1293f * 1432f)))), true)) == global4.a.x;
    global4 = arg_1;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_1.a.xx, arg_1.a.zz)) * vec2<f32>(global4.a.x, arg_1.a.x)) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.yy - global1.zz)))))));
    return -(~vec4<i32>(~global2[_wgslsmith_index_u32(4294967295u, 3u)] >> (~arg_1.b % 32u), -global2[_wgslsmith_index_u32(0u, 3u)], ~_wgslsmith_add_i32(0i, 0i), ~global2[_wgslsmith_index_u32(25345u, 3u)]));
}

fn func_2() -> vec2<bool> {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-473f)))))), 490f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.a.x + global1.x), _wgslsmith_f_op_f32(f32(-1f) * -305f)))));
    var var_0 = abs(-func_3(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), Struct_1(_wgslsmith_f_op_vec3_f32(-global4.a), countOneBits(global4.b))));
    let var_1 = global3[_wgslsmith_index_u32(u_input.b.x, 7u)];
    global3 = array<Struct_2, 7>();
    let var_2 = var_1.c.zw;
    return select(select(var_1.c.wz, var_1.c.yx, !var_1.c.xy), var_1.c.yw, !select(var_1.c.zz, !select(var_1.c.yz, vec2<bool>(var_2.x, true), var_1.c.ww), select(var_1.c.xz, vec2<bool>(false, var_1.c.x), any(vec3<bool>(var_2.x, var_2.x, var_2.x)))));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: i32, arg_3: vec4<bool>) -> Struct_2 {
    let var_0 = Struct_1(vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(global1.x)), -1000f), 1u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global4.a.x), _wgslsmith_f_op_f32(-var_0.a.x), global4.a.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(393f, -304f, var_0.a.x), vec3<f32>(-149f, global1.x, global1.x), false))) + vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1537f), _wgslsmith_f_op_f32(-global4.a.x)))), global4.b);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a + vec3<f32>(1952f, global4.a.x, var_1.a.x))) + global4.a)), ~reverseBits(u_input.b.x));
    let var_3 = -504f;
    let var_4 = min(-25558i, -_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(0i, arg_2, -30937i), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_2, 2147483647i, arg_2), u_input.a)), u_input.a));
    return global3[_wgslsmith_index_u32(1u, 7u)];
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: bool) -> vec3<u32> {
    global4 = arg_1;
    var var_0 = func_4(func_2(), -40474i, (u_input.d.x << (50290u % 32u)) >> (arg_2 % 32u), select(vec4<bool>(func_2().x, all(!vec2<bool>(true, arg_0.c.x)), true, true), vec4<bool>((global1.x < global4.a.x) & !arg_3, arg_0.c.x, true, true), arg_0.d > ~66811u));
    var var_1 = Struct_2(arg_1.a.x, vec3<u32>(4294967295u, _wgslsmith_mult_u32(var_0.d, 1u), ~29199u), select(var_0.c, var_0.c, vec4<bool>(arg_3, any(vec3<bool>(false, arg_3, arg_0.c.x)) && true, (arg_3 && arg_3) && true, any(!arg_0.c.wxx))), var_0.d, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_1.a.x - -552f), _wgslsmith_f_op_f32(-821f + -161f), -688f)), ~(~u_input.b.x)));
    let var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-442f + global4.a.x) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.a * 337f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.e.a.x - -471f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(820f, -238f, true)), -235f))), any(!func_4(vec2<bool>(false, arg_3), 0i, u_input.a.x, arg_0.c).c))), ~abs(reverseBits(var_0.b)), !arg_0.c, global4.b, arg_0.e);
    var var_3 = Struct_1(global4.a, _wgslsmith_dot_vec3_u32(~arg_0.b, select(var_0.b, u_input.b.ywy, true)));
    return abs(select(_wgslsmith_sub_vec3_u32(func_4(vec2<bool>(arg_3, false), u_input.a.x, global2[_wgslsmith_index_u32(arg_0.d, 3u)], var_2.c).b, ~var_2.b), ~_wgslsmith_mod_vec3_u32(arg_0.b, vec3<u32>(u_input.b.x, 1u, 4294967295u)), select(var_0.c.yyy, vec3<bool>(arg_3, true, arg_3), false & arg_0.c.x)) | ~(var_0.b << (vec3<u32>(var_2.b.x, arg_2, 36973u) % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global1.x, ~select(func_1(Struct_2(global4.a.x, u_input.b.wyy, vec4<bool>(true, true, true, true), 4294967295u, Struct_1(vec3<f32>(global4.a.x, global4.a.x, 100f), 13041u)), Struct_1(vec3<f32>(-822f, global1.x, -878f), 28149u), ~52072u, select(true, false, false)), vec3<u32>(u_input.b.x, firstTrailingBit(global4.b), ~global4.b), true), func_4(vec2<bool>(true, true), _wgslsmith_add_i32(15534i, -min(2147483647i, -2763i)), u_input.d.x, func_4(vec2<bool>(true, true), u_input.d.x, 0i, !func_4(vec2<bool>(false, false), -2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 3u)], vec4<bool>(true, false, true, false)).c).c).c, _wgslsmith_dot_vec4_u32(vec4<u32>(23624u, ~u_input.b.x, ~u_input.b.x, 1u), u_input.b) | 4294967295u, func_4(func_2(), -u_input.c.x, abs(global2[_wgslsmith_index_u32(global4.b, 3u)]), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)).e);
    let var_1 = -1i;
    global0 = array<vec2<u32>, 29>();
    let var_2 = var_0.e;
    let var_3 = ~firstTrailingBit(0u);
    let var_4 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(4294967295u) & ~global4.b, _wgslsmith_clamp_u32(~35732u, var_0.d, select(var_3, ~global4.b, !var_0.c.x))), 7u)];
    global1 = _wgslsmith_f_op_vec3_f32(global4.a * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-510f, global4.a.x, -2015f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-191f, -489f, var_0.e.a.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, global4.a.x, global1.x) * vec3<f32>(-174f, -641f, global1.x))))));
    var var_5 = func_4(select(vec2<bool>(var_0.c.x, false || !var_0.c.x), vec2<bool>(all(vec2<bool>(true, true)), var_0.c.x), !var_4.c.x), select(~_wgslsmith_mult_i32(-47558i, _wgslsmith_sub_i32(-4655i, 0i)), firstTrailingBit(abs(0i)), any(select(vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x), vec4<bool>(var_4.c.x, var_4.c.x, false, var_0.c.x), func_4(var_4.c.yy, -2147483647i, u_input.a.x, vec4<bool>(var_0.c.x, true, false, var_0.c.x)).c))), ~22210i, func_4(vec2<bool>(2147483647i == _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(1160u, 3u)], var_1), false), -((i32(-1i) * -8385i) >> (~var_0.e.b % 32u)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_0.d ^ 33958u), ~firstLeadingBit(u_input.b.ww)), 3u)], vec4<bool>(0u > ~var_0.b.x, false, true, any(var_0.c.zx))).c).c.www;
    let var_6 = var_0.c.yx;
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -1i, u_input.c.yz | firstTrailingBit(u_input.c.yz), _wgslsmith_f_op_f32(-136f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(global4.a.x, var_0.e.a.x)))), _wgslsmith_div_f32(var_2.a.x, var_4.e.a.x))), u_input.b.xzz);
}

