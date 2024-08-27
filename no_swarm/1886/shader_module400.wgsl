struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: bool,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<i32, 12>;

var<private> global2: Struct_2 = Struct_2(false, -36815i, vec3<u32>(41320u, 4671u, 4730u), true, Struct_1(vec2<f32>(660f, 1293f), vec2<i32>(1i, 1i), -1000f, vec3<bool>(true, true, true)));

var<private> global3: array<vec4<u32>, 9>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: Struct_3) -> bool {
    let var_0 = Struct_4(Struct_2(global2.e.d.x, -(-93500i >> (arg_1.d % 32u)), ~u_input.c.zzz, global0.a.d.x, arg_1.a.e), vec3<u32>(arg_1.d, 53965u, u_input.c.x), global2.e, _wgslsmith_div_u32(0u, global2.c.x));
    var var_1 = global2.a;
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-670f + _wgslsmith_div_f32(-351f, 1158f))));
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.c)), -859f), -abs(~arg_3.a.b | firstTrailingBit(arg_1.c.b)), arg_3.a.a.x, global0.a.d);
    let var_4 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c.c), _wgslsmith_f_op_f32(step(375f, -867f)))), vec2<i32>(-1i) * -arg_3.a.b, global2.e.a.x, vec3<bool>(any(!vec4<bool>(var_0.c.d.x, var_3.d.x, false, true)), arg_3.a.d.x, any(!vec2<bool>(global2.d, var_0.a.e.d.x)))));
    return !any(global2.e.d.zy);
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    global2 = Struct_2(global2.a, arg_2.b.x, ~firstTrailingBit(vec3<u32>(54889u, u_input.c.x, arg_1.x) & global2.c), func_3(vec2<bool>(true, true), Struct_4(Struct_2(arg_0, arg_2.b.x, reverseBits(vec3<u32>(9950u, u_input.c.x, 0u)), arg_0, global2.e), ~vec3<u32>(arg_1.x, 1u, arg_1.x), arg_2, u_input.c.x), reverseBits(vec4<i32>(_wgslsmith_clamp_i32(arg_2.b.x, 0i, u_input.a), ~global2.b, global2.e.b.x & 49118i, abs(19346i))), Struct_3(global0.a)), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.a) + _wgslsmith_f_op_vec2_f32(-arg_2.a)), _wgslsmith_add_vec2_i32(vec2<i32>(countOneBits(global1[_wgslsmith_index_u32(global2.c.x, 12u)]), 0i), select(vec2<i32>(global0.a.b.x, global1[_wgslsmith_index_u32(u_input.c.x, 12u)]), ~u_input.b.zx, !vec2<bool>(global2.a, true))), -618f, !global0.a.d));
    global1 = array<i32, 12>();
    var var_0 = false;
    let var_1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2.c, -624f, global0.a.d.x)))), _wgslsmith_f_op_f32(select(global0.a.c, global2.e.a.x, global2.d))), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.b, arg_2.b.x, 0i, arg_2.b.x), vec4<i32>(6061i, global0.a.b.x, 3314i, global0.a.b.x)) | -15145i, _wgslsmith_mod_i32(select(arg_2.b.x, global0.a.b.x, global0.a.d.x), 113462i)), -vec2<i32>(1i, arg_2.b.x)), global2.e.a.x, !vec3<bool>(true, all(vec2<bool>(global2.d, global2.a)), arg_0));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c, 1129f, global2.e.c, -202f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.c, var_1.a.x, global0.a.a.x, global0.a.c))), !vec4<bool>(false, true, false, arg_2.d.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -390f, global2.e.a.x, global2.e.a.x), vec4<f32>(arg_2.a.x, -1295f, var_1.c, global2.e.c), arg_0)))))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1512f, global2.e.c, 171f, var_1.c), vec4<f32>(arg_2.a.x, 597f, arg_2.c, arg_2.a.x))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, -1000f, -1112f, 1416f) * vec4<f32>(arg_2.c, -1000f, arg_2.c, 1819f))))))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x + -2008f)));
}

fn func_2(arg_0: Struct_4) -> i32 {
    let var_0 = Struct_3(Struct_1(vec2<f32>(global2.e.c, _wgslsmith_f_op_f32(floor(arg_0.c.c))), _wgslsmith_sub_vec2_i32(global2.e.b, vec2<i32>(global1[_wgslsmith_index_u32(global2.c.x, 12u)], arg_0.a.b) ^ arg_0.c.b), _wgslsmith_f_op_f32(round(global2.e.c)), !vec3<bool>(any(vec4<bool>(true, false, false, true)), any(vec3<bool>(global0.a.d.x, false, global0.a.d.x)), global0.a.d.x)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(!func_3(vec2<bool>(true, true), Struct_4(Struct_2(global2.a, 0i, vec3<u32>(u_input.c.x, 19872u, u_input.c.x), false, Struct_1(global0.a.a, u_input.b.yz, var_0.a.c, global2.e.d)), global2.c, arg_0.a.e, 4294967295u), ~vec4<i32>(2147483647i, 37315i, global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(u_input.c.x, 12u)]), Struct_3(var_0.a)), vec4<u32>(arg_0.b.x, arg_0.d >> (~arg_0.a.c.x % 32u), ~(21736u >> (1u % 32u)), 0u), global2.e)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.a.x)) + var_0.a.c));
    var var_2 = arg_0.a;
    var var_3 = var_0;
    global1 = array<i32, 12>();
    return _wgslsmith_dot_vec2_i32(abs(_wgslsmith_mod_vec2_i32(var_0.a.b, firstLeadingBit(vec2<i32>(-16629i, var_3.a.b.x)))), abs(select(u_input.b.yz, global2.e.b, select(select(vec2<bool>(global0.a.d.x, global0.a.d.x), global2.e.d.xx, var_3.a.d.x), vec2<bool>(arg_0.a.a, global0.a.d.x), vec2<bool>(global0.a.d.x, true)))));
}

fn func_1() -> u32 {
    let var_0 = -abs(_wgslsmith_mult_i32(-(-63754i << (global2.c.x % 32u)), func_2(Struct_4(Struct_2(false, global1[_wgslsmith_index_u32(0u, 12u)], u_input.c.ywz, global2.e.d.x, global2.e), global2.c, global2.e, global2.c.x))));
    global3 = array<vec4<u32>, 9>();
    let var_1 = vec4<u32>(global2.c.x, u_input.c.x, 22228u, countOneBits(firstTrailingBit(9150u) >> (0u % 32u)));
    let var_2 = true;
    let var_3 = global2.e.d.x;
    return 16614u;
}

fn func_5(arg_0: u32, arg_1: u32) -> vec3<f32> {
    global2 = Struct_2(global2.d, i32(-1i) * -(u_input.a >> (~global2.c.x % 32u)), vec3<u32>(~(~_wgslsmith_div_u32(52685u, global2.c.x)), u_input.c.x << (_wgslsmith_add_u32(arg_1 >> (15348u % 32u), ~20099u) % 32u), arg_1), all(global2.e.d), global2.e);
    global2 = Struct_2(global0.a.d.x, ~global2.e.b.x, reverseBits(select(vec3<u32>(select(arg_0, 1u, false), u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.c.zx)), vec3<u32>(arg_0, arg_0, 25574u) | vec3<u32>(93263u, 2694u, arg_1), global0.a.d)), all(vec3<bool>(global2.a, true, true)), Struct_1(global2.e.a, global2.e.b ^ (-u_input.b.zx & min(vec2<i32>(-2556i, -2147483647i), u_input.b.zy)), _wgslsmith_f_op_f32(func_4(all(vec4<bool>(global0.a.d.x, false, false, global2.e.d.x)), select(global3[_wgslsmith_index_u32(~4294967295u, 9u)], ~vec4<u32>(4294967295u, 16836u, u_input.c.x, u_input.c.x), all(vec4<bool>(global0.a.d.x, false, global2.d, false))), global2.e)), global0.a.d));
    global3 = array<vec4<u32>, 9>();
    global2 = Struct_2(global0.a.d.x, _wgslsmith_dot_vec3_i32(-u_input.b, -min(reverseBits(vec3<i32>(global0.a.b.x, 0i, -1i)), reverseBits(vec3<i32>(-29599i, -12676i, u_input.b.x)))), ~vec3<u32>(_wgslsmith_mult_u32(u_input.c.x, _wgslsmith_mult_u32(arg_1, 11078u)), ~func_1(), _wgslsmith_mod_u32(1u, global2.c.x)), false && global0.a.d.x, Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global0.a.a))), select(~global2.e.b, vec2<i32>(~27629i, i32(-1i) * -39225i), global0.a.d.xy), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global2.e.a.x)))), !global2.e.d));
    global1 = array<i32, 12>();
    return _wgslsmith_div_vec3_f32(vec3<f32>(global0.a.a.x, _wgslsmith_f_op_f32(-global2.e.a.x), _wgslsmith_f_op_f32(-1000f * global0.a.a.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.c))), _wgslsmith_f_op_f32(func_4(global2.e.d.x, u_input.c, Struct_1(global2.e.a, vec2<i32>(1i, global0.a.b.x), global0.a.c, global2.e.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<f32>(330f, global2.e.c, -1748f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_5(u_input.c.x, reverseBits(u_input.c.x) | func_1())) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-210f, _wgslsmith_f_op_f32(f32(-1f) * -786f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e.c) + _wgslsmith_f_op_f32(sign(global2.e.c)))) - vec3<f32>(_wgslsmith_f_op_f32(1669f * -1442f), 362f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.e.a.x))))));
    global2 = Struct_2(true, _wgslsmith_add_i32(u_input.b.x, u_input.b.x), ~_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(global2.c, u_input.c.wxw, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 0u, u_input.c.x), vec3<u32>(21291u, u_input.c.x, 1u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c.x, u_input.c.x, global2.c.x), vec3<u32>(17488u, global2.c.x, 1u))), all(global2.e.d.yz), global2.e);
    let var_1 = global2.c.xy;
    let var_2 = 39026u;
    global1 = array<i32, 12>();
    let var_3 = var_2;
    let var_4 = Struct_2(true, i32(-1i) * -1i, (u_input.c.yzz >> (vec3<u32>(~u_input.c.x, var_2, ~25252u) % vec3<u32>(32u))) >> (global2.c % vec3<u32>(32u)), all(!vec3<bool>(true, false, global0.a.d.x)), global2.e);
    global3 = array<vec4<u32>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(select(var_4.e.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_5(102433u, 3083u)).x, -1526f), true)), _wgslsmith_f_op_f32(-649f * _wgslsmith_f_op_f32(exp2(global0.a.c)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a.x + _wgslsmith_f_op_f32(global0.a.a.x - global0.a.c))))));
}

