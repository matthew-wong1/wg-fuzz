struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23>;

var<private> global1: bool;

var<private> global2: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(1i, 2147483647i, i32(-2147483648), 1i), vec4<i32>(0i, i32(-2147483648), 2147483647i, 1i), vec4<i32>(-19134i, 41315i, 9986i, -51836i), vec4<i32>(-15508i, 6467i, 2147483647i, 12744i), vec4<i32>(0i, -12760i, 62170i, 38123i), vec4<i32>(24811i, i32(-2147483648), 0i, -1i));

var<private> global3: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global4: bool = true;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: f32, arg_3: i32) -> vec3<bool> {
    global2 = array<vec4<i32>, 6>();
    let var_0 = abs(global2[_wgslsmith_index_u32(arg_1, 6u)]);
    global2 = array<vec4<i32>, 6>();
    global0 = array<vec4<bool>, 23>();
    global0 = array<vec4<bool>, 23>();
    return vec3<bool>(global3.x, true, global3.x);
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = select(select(global0[_wgslsmith_index_u32(~arg_0, 23u)], global0[_wgslsmith_index_u32(0u, 23u)], !global3.x), !(!select(vec4<bool>(true, false, global3.x, true), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0, 86809u), 23u)], false)), all(func_3(_wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(u_input.b, arg_0)), 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -103f), ~(u_input.a | -1i))));
    var var_1 = u_input.a;
    var var_2 = countOneBits(select(vec3<u32>(_wgslsmith_div_u32(4294967295u, u_input.b), ~1u, firstLeadingBit(4294967295u)), min(_wgslsmith_clamp_vec3_u32(vec3<u32>(33280u, 1u, u_input.b), vec3<u32>(80726u, u_input.b, 4294967295u), vec3<u32>(u_input.b, 4294967295u, arg_0)), ~vec3<u32>(1u, 4294967295u, u_input.b)), !(!var_0.x)) | ~_wgslsmith_add_vec3_u32(vec3<u32>(2367u, 1u, u_input.b) & vec3<u32>(1u, u_input.b, 4294967295u), vec3<u32>(u_input.b, arg_0, 4294967295u)));
    var var_3 = vec4<u32>(_wgslsmith_mod_u32(arg_0, 1u) ^ min(var_2.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, 0u), vec2<u32>(arg_0, 17397u)), 79266u)), select(1u, u_input.b, -2147483647i < ~(~u_input.a)), u_input.b, ~(var_2.x & arg_0));
    let var_4 = Struct_1(vec4<i32>(min(~u_input.a, ~abs(u_input.a)), reverseBits(-9880i), ~1i, _wgslsmith_div_i32(u_input.a, -(i32(-1i) * -37609i))), ~u_input.a, ~(~vec4<u32>(65353u, var_3.x, var_3.x, var_3.x) | vec4<u32>(1u, var_3.x, u_input.b, arg_0)) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 3077u, 0u, var_2.x), abs(vec4<u32>(var_3.x, var_3.x, 26906u, var_3.x))) % vec4<u32>(32u)), vec3<i32>(firstTrailingBit(_wgslsmith_sub_i32(u_input.a, u_input.a)) << (1u % 32u), u_input.a, ~(u_input.a << (u_input.b % 32u))), _wgslsmith_div_u32(u_input.b, u_input.b));
    return -max(u_input.a, firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-12419i, var_4.a.x), vec2<i32>(151i, -14971i)))) ^ -2147483647i;
}

fn func_1(arg_0: f32, arg_1: Struct_3) -> i32 {
    global3 = !vec4<bool>(arg_1.a.x, true, !global3.x, false);
    var var_0 = arg_1.b.d;
    return _wgslsmith_mod_i32(_wgslsmith_mult_i32(-9180i, arg_1.b.b), arg_1.b.b) | _wgslsmith_clamp_i32(min(-u_input.a, var_0.x), _wgslsmith_mult_i32(u_input.a & firstTrailingBit(var_0.x), _wgslsmith_mult_i32(i32(-1i) * -45964i, -34324i)), _wgslsmith_sub_i32(func_2(43165u << (arg_1.b.e % 32u)), ~(~u_input.a)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_3 {
    var var_0 = func_1(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -788f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-566f - 668f) + _wgslsmith_f_op_f32(f32(-1f) * -326f))))), Struct_3(select(global3.zy, func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(41707u, u_input.b, arg_0.e), arg_3.c.wzy), 1u, _wgslsmith_f_op_f32(f32(-1f) * -603f), arg_3.a.x).zz, false), Struct_1(vec4<i32>(i32(-1i) * -1i, arg_3.a.x << (u_input.b % 32u), ~u_input.a, 3481i), func_1(_wgslsmith_f_op_f32(-2382f - -929f), Struct_3(vec2<bool>(true, false), Struct_1(vec4<i32>(-2147483647i, 37870i, arg_2.b, u_input.a), -1i, arg_0.c, vec3<i32>(24522i, 1i, -2147483647i), arg_3.e), -4145i, vec4<f32>(-1325f, 1000f, -552f, -160f))), arg_3.c, arg_3.d, _wgslsmith_clamp_u32(~arg_0.c.x, 8645u, 12117u | arg_2.e)), arg_0.b, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-557f, -445f, -911f, 1318f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-505f, 579f, 966f, -1000f)))))));
    let var_1 = Struct_3(!vec2<bool>(func_3(4294967295u, arg_2.e, 963f, 2147483647i).x & true, arg_1), Struct_1(min(arg_0.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(15928i, 39828i, 13445i, arg_2.d.x), ~global2[_wgslsmith_index_u32(20414u, 6u)], reverseBits(vec4<i32>(-2147483647i, u_input.a, arg_2.b, u_input.a)))), ~(i32(-1i) * -1049i), ~(~(~vec4<u32>(13266u, 0u, 14649u, arg_3.c.x))), vec3<i32>(_wgslsmith_div_i32(-2147483647i, i32(-1i) * -7669i), ~arg_3.d.x, abs(-1i)), _wgslsmith_mult_u32(9830u, 0u)), ~arg_2.a.x & (_wgslsmith_clamp_i32(u_input.a, arg_0.d.x, _wgslsmith_div_i32(arg_2.b, -2147483647i)) ^ arg_3.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1940f, 894f, -670f, -149f) + vec4<f32>(1231f, -1644f, 1000f, -417f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(583f, 1330f, -250f, -455f))))))));
    let var_2 = ~max(_wgslsmith_mult_vec2_u32(firstTrailingBit(arg_3.c.xy), ~(~vec2<u32>(1u, var_1.b.e))), vec2<u32>(16498u, 4294967295u));
    let var_3 = var_1;
    var_0 = -(-max(-34074i, arg_2.d.x) << (_wgslsmith_mod_u32(u_input.b, 0u) % 32u)) | -39330i;
    return var_3;
}

fn func_5(arg_0: Struct_3) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.d.x))))), _wgslsmith_f_op_f32(520f * _wgslsmith_f_op_f32(floor(arg_0.d.x)))));
    global0 = array<vec4<bool>, 23>();
    global0 = array<vec4<bool>, 23>();
    var var_1 = vec4<i32>(_wgslsmith_dot_vec2_i32(~arg_0.b.d.yx, vec2<i32>(0i, _wgslsmith_dot_vec2_i32(arg_0.b.d.zz, arg_0.b.a.wz & arg_0.b.d.zx))), ~(-func_2(990u) | u_input.a), _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(arg_0.b.b, -53002i, _wgslsmith_mod_i32(u_input.a, -1i))), -vec3<i32>(~(-3521i), abs(u_input.a), _wgslsmith_mod_i32(arg_0.c, -9825i))), _wgslsmith_add_i32(func_4(func_4(arg_0.b, true, Struct_1(vec4<i32>(arg_0.c, u_input.a, -2147483647i, -22109i), 36678i, arg_0.b.c, arg_0.b.d, 17178u), func_4(arg_0.b, false, arg_0.b, arg_0.b).b).b, arg_0.a.x, Struct_1(-vec4<i32>(u_input.a, arg_0.b.b, -1i, u_input.a), max(arg_0.b.b, u_input.a), arg_0.b.c & arg_0.b.c, vec3<i32>(u_input.a, arg_0.b.a.x, arg_0.b.d.x), firstTrailingBit(u_input.b)), func_4(Struct_1(vec4<i32>(u_input.a, u_input.a, 762i, -34154i), -48186i, vec4<u32>(u_input.b, 4294967295u, 4218u, 40874u), arg_0.b.d, 0u), false, Struct_1(global2[_wgslsmith_index_u32(u_input.b, 6u)], arg_0.b.d.x, arg_0.b.c, arg_0.b.a.xxz, 11839u), Struct_1(vec4<i32>(arg_0.b.b, u_input.a, u_input.a, u_input.a), arg_0.c, arg_0.b.c, arg_0.b.d, arg_0.b.e)).b).c, arg_0.c));
    var var_2 = ~(39736u << (~4294967295u % 32u));
    return StorageBuffer(select(arg_0.b.c.xxw, vec3<u32>(select(u_input.b, arg_0.b.c.x, false), ~u_input.b, 66374u << (arg_0.b.c.x % 32u)), !func_3(1u, u_input.b, arg_0.d.x, -13648i).x) << ((~(~vec3<u32>(u_input.b, 0u, u_input.b)) ^ abs(abs(vec3<u32>(u_input.b, 4294967295u, 0u)))) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 6>();
    let x = u_input.a;
    s_output = func_5(func_4(Struct_1(vec4<i32>(u_input.a, select(u_input.a, 1i, global3.x), 0i, u_input.a), func_1(-2512f, Struct_3(vec2<bool>(true, global3.x), Struct_1(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), u_input.a, vec4<u32>(57587u, u_input.b, 0u, 38424u), vec3<i32>(u_input.a, u_input.a, -6148i), u_input.b), u_input.a, vec4<f32>(670f, 334f, -1395f, 1026f))), vec4<u32>(38273u, 4294967295u, ~25215u, 22245u), ~vec3<i32>(-1i, 2147483647i, u_input.a), firstLeadingBit(0u)), !any(!global0[_wgslsmith_index_u32(u_input.b, 23u)]), Struct_1(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, 8275u), 6u)], -u_input.a, ~(~vec4<u32>(120124u, u_input.b, 1u, u_input.b)), ~abs(vec3<i32>(u_input.a, -1i, u_input.a)), _wgslsmith_mod_u32(0u, u_input.b) ^ ~u_input.b), Struct_1(vec4<i32>(-2147483647i, u_input.a, 1i, u_input.a) | ~vec4<i32>(-2147483647i, 0i, u_input.a, -45624i), ~21157i & func_2(4294967295u), ~countOneBits(vec4<u32>(1u, u_input.b, 0u, u_input.b)), vec3<i32>(u_input.a, ~2147483647i, -33977i), u_input.b)));
}

