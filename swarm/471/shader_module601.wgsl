struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21> = array<bool, 21>(false, true, true, true, false, true, true, false, false, false, true, true, true, false, false, true, true, false, false, false, false);

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 23>;

var<private> global3: array<vec4<f32>, 8>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> u32 {
    let var_0 = 45943i;
    var var_1 = var_0;
    var_1 = u_input.b.x;
    let var_2 = true;
    var var_3 = global1.e;
    return (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(84601u, global1.e.b.x, var_3.b.x, global1.c.x), vec4<u32>(12421u, global1.e.b.x, var_3.b.x, u_input.a.x)) | 20070u, 1u) >> (select(~27278u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u), u_input.a) <= 1u) % 32u)) >> (52994u % 32u);
}

fn func_2() -> Struct_1 {
    let var_0 = global1.e;
    let var_1 = Struct_2(_wgslsmith_div_u32(_wgslsmith_clamp_u32(var_0.b.x, func_3(-1318f, vec3<f32>(-1662f, 438f, -1176f)), _wgslsmith_add_u32(global1.a, 1u)), ~(~18356u)) & _wgslsmith_dot_vec2_u32(min(var_0.b, _wgslsmith_clamp_vec2_u32(vec2<u32>(79491u, 0u), vec2<u32>(var_0.b.x, global1.a), u_input.a.yw)), vec2<u32>(~u_input.a.x, firstTrailingBit(41946u))), ~max(33906i, -(~global1.b)), ~vec3<u32>(0u, global1.e.b.x | 50737u, 59478u & var_0.b.x), u_input.b.x, Struct_1(true, _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.b.x, 1u) | var_0.b, global1.e.b), ~vec2<u32>(21590u, global1.e.b.x))));
    var var_2 = ~_wgslsmith_dot_vec3_u32(select(select(vec3<u32>(var_1.e.b.x, global1.c.x, var_1.e.b.x), max(vec3<u32>(1u, 90349u, var_0.b.x), u_input.a.wyw), false), max(vec3<u32>(global1.e.b.x, 52277u, var_0.b.x), vec3<u32>(var_1.a, var_0.b.x, 59732u)), select(!vec3<bool>(global1.e.a, true, global1.e.a), select(vec3<bool>(global1.e.a, global0[_wgslsmith_index_u32(12547u, 21u)], false), vec3<bool>(false, var_0.a, global1.e.a), vec3<bool>(false, var_1.e.a, false)), !vec3<bool>(var_0.a, global1.e.a, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]))), vec3<u32>(global1.e.b.x ^ (52395u ^ var_0.b.x), ~global1.e.b.x, ~firstLeadingBit(23815u)));
    var var_3 = global1.e;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(203f * 591f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1611f, -1527f) * -150f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(854f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(319f, -1929f) - _wgslsmith_f_op_f32(-654f * 215f)))), _wgslsmith_div_f32(-679f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(616f, 1824f)) + _wgslsmith_f_op_f32(round(-1031f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -579f)), _wgslsmith_f_op_f32(min(-1000f, -214f)))), 617f));
    return Struct_1(true && !(all(vec3<bool>(false, false, true)) & false), _wgslsmith_clamp_vec2_u32(~reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(1u, u_input.a.x))), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(global1.a, 31607u)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_3.b.x, 37018u), vec2<u32>(1u, global1.a)), max(vec2<u32>(var_1.a, 4294967295u), vec2<u32>(var_1.a, 27286u)))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 53307u), reverseBits(vec2<u32>(var_3.b.x, 4209u)) & _wgslsmith_sub_vec2_u32(global1.c.xy, global1.c.zy), ~vec2<u32>(var_0.b.x, global1.e.b.x))));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec2<u32>, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = u_input.b.x;
    global1 = Struct_2(func_2().b.x, ~_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec3_i32(-u_input.b.zzx, vec3<i32>(28250i, 2147483647i, var_0) << (u_input.a.wxw % vec3<u32>(32u)))), _wgslsmith_add_vec3_u32(abs(global1.c), global1.c), -30933i, global1.e);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -854f);
    global2 = array<Struct_2, 23>();
    var_1 = arg_3.x;
    return Struct_2(func_2().b.x, reverseBits(~global1.d), ~_wgslsmith_add_vec3_u32(u_input.a.wzy, countOneBits(~global1.c)), -(_wgslsmith_sub_i32(-2147483647i, -1i) >> (_wgslsmith_add_u32(4294967295u, ~arg_0.b.x) % 32u)), func_2());
}

fn func_1() -> Struct_2 {
    global2 = array<Struct_2, 23>();
    var var_0 = u_input.b.yx;
    var var_1 = ~vec4<i32>(global1.d, _wgslsmith_div_i32(0i, u_input.b.x), -1i, _wgslsmith_div_i32(-84628i, _wgslsmith_div_i32(u_input.b.x, var_0.x))) | u_input.b;
    var var_2 = global1.e;
    let var_3 = max(2147483647i, ~(~u_input.b.x));
    return func_4(func_2(), _wgslsmith_add_u32(var_2.b.x, ~(global1.e.b.x & 30697u) | 1u), vec2<u32>(16546u, _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a.x, 1u, u_input.a.x >> (global1.c.x % 32u), max(u_input.a.x, global1.a)), ~u_input.a)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(867f, -1041f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1345f, -325f) - vec2<f32>(-1796f, -298f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1469f, -1179f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 8>();
    global0 = array<bool, 21>();
    var var_0 = 1u;
    var var_1 = -387f;
    global1 = func_1();
    var var_2 = select(!select(select(vec3<bool>(false, global1.e.a, false), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], false, true), vec3<bool>(true, true, false), vec3<bool>(false, global1.e.a, false)), true), select(vec3<bool>(false, false, true), !vec3<bool>(true, false, global0[_wgslsmith_index_u32(25953u, 21u)]), vec3<bool>(true, true, true)), vec3<bool>(true, !global1.e.a, any(vec2<bool>(global1.e.a, true)))), !vec3<bool>(false, global1.e.a, true), select(!any(vec4<bool>(global1.e.a, true, global1.e.a, global1.e.a)), !(firstLeadingBit(53047i) >= -global1.d), func_2().a));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(4294967295u));
}

