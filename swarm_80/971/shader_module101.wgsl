struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: vec2<f32>,
    d: Struct_2,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 24>;

var<private> global1: array<i32, 7>;

var<private> global2: array<f32, 27>;

var<private> global3: array<f32, 1>;

var<private> global4: array<vec3<f32>, 10>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    return _wgslsmith_clamp_u32(36124u, u_input.b, u_input.a.x);
}

fn func_4(arg_0: bool, arg_1: Struct_5, arg_2: vec4<f32>, arg_3: bool) -> vec3<u32> {
    var var_0 = Struct_1(vec4<f32>(global2[_wgslsmith_index_u32((31936u << (~u_input.a.x % 32u)) | ~(arg_1.e.x | arg_1.a.x), 27u)], _wgslsmith_f_op_f32(2010f + -268f), arg_1.c.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))))), !select(select(arg_1.d.c.b, vec2<bool>(arg_1.d.b, false), arg_3), !vec2<bool>(arg_0, true), arg_3), ~_wgslsmith_div_vec4_u32(~vec4<u32>(41373u, 79443u, u_input.b, u_input.b), u_input.a));
    var var_1 = Struct_3(vec3<u32>(countOneBits(~56889u), reverseBits(~arg_1.a.x), var_0.c.x), arg_1.d.c, arg_1.d.c.b, -872f);
    let var_2 = Struct_3(~firstLeadingBit(vec3<u32>(65515u, abs(var_0.c.x), ~arg_1.a.x)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1557f)), 1f, -1840f, global3[_wgslsmith_index_u32(~(~1u), 1u)]), var_1.b.b, _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.c.x, u_input.b, _wgslsmith_clamp_u32(var_1.b.c.x, 16880u, var_0.c.x), u_input.a.x), ~u_input.a)), vec2<bool>(var_0.b.x, arg_1.d.b), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~1u, 1u)]));
    global1 = array<i32, 7>();
    var_0 = arg_1.d.c;
    return vec3<u32>(0u, ~var_2.a.x, 0u);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_4) -> i32 {
    let var_0 = func_4(!arg_0.x, Struct_5(abs(arg_1.a.zzx), true, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(722f)) - _wgslsmith_f_op_f32(434f * 1000f)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b, 1u)] - _wgslsmith_f_op_f32(abs(131f)))), Struct_2(_wgslsmith_mod_i32(max(-2147483647i, 2147483647i), u_input.c), arg_0.x, Struct_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b, 27u)], -1191f, -236f, 278f))), arg_0.yy, _wgslsmith_clamp_vec4_u32(arg_1.a, arg_1.a, vec4<u32>(4294967295u, 22609u, 4294967295u, 30212u))), vec4<i32>(~(-29636i), _wgslsmith_dot_vec3_i32(u_input.e.yzz, vec3<i32>(global1[_wgslsmith_index_u32(0u, 7u)], 1i, u_input.c)), -33440i, -global1[_wgslsmith_index_u32(arg_1.a.x, 7u)])), firstLeadingBit(~arg_1.a.wyw)), vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~select(43945u, 1u, arg_0.x), 27u)] - 284f), global2[_wgslsmith_index_u32(abs(~u_input.a.x), 27u)], _wgslsmith_div_f32(333f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b, 1u)]), _wgslsmith_f_op_f32(420f + 1000f), all(vec3<bool>(arg_0.x, false, true))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(func_3(vec3<f32>(global2[_wgslsmith_index_u32(1u, 27u)], global3[_wgslsmith_index_u32(u_input.b, 1u)], global3[_wgslsmith_index_u32(u_input.b, 1u)])), 1u)], _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a.x, 27u)])), global3[_wgslsmith_index_u32(~(~52619u), 1u)]))), all(select(vec4<bool>(false, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, false, false, arg_0.x), false)) == arg_0.x);
    var var_1 = countOneBits(min(vec4<i32>(_wgslsmith_div_i32(u_input.c, _wgslsmith_div_i32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 42979i)), global1[_wgslsmith_index_u32(arg_1.a.x, 7u)], u_input.e.x, min(_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(arg_1.a.x, 7u)], u_input.d, global1[_wgslsmith_index_u32(14755u, 7u)]), min(0i, 2972i))), _wgslsmith_clamp_vec4_i32(~u_input.e, vec4<i32>(abs(0i), _wgslsmith_sub_i32(u_input.d, global1[_wgslsmith_index_u32(arg_1.a.x, 7u)]), 10485i, _wgslsmith_add_i32(-12857i, -1i)), -_wgslsmith_mult_vec4_i32(u_input.e, u_input.e))));
    var_1 = u_input.e;
    let var_2 = Struct_3(arg_1.a.zxw, Struct_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(~19515u, 27u)], -279f, _wgslsmith_f_op_f32(719f - global2[_wgslsmith_index_u32(1u, 27u)]), _wgslsmith_div_f32(181f, global3[_wgslsmith_index_u32(23160u, 1u)])), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(1u, 27u)], -336f, global2[_wgslsmith_index_u32(30317u, 27u)], -1329f) * vec4<f32>(960f, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], global2[_wgslsmith_index_u32(4294967295u, 27u)], -266f)) + vec4<f32>(global3[_wgslsmith_index_u32(var_0.x, 1u)], global2[_wgslsmith_index_u32(u_input.b, 27u)], -775f, -1029f)), arg_0.x)), arg_0.yz, ~((arg_1.a >> (u_input.a % vec4<u32>(32u))) << (u_input.a % vec4<u32>(32u)))), select(!vec2<bool>(!arg_0.x, true), vec2<bool>(!any(vec3<bool>(false, arg_0.x, arg_0.x)), !arg_0.x), true), global3[_wgslsmith_index_u32(func_3(vec3<f32>(_wgslsmith_f_op_f32(min(-906f, 1555f)), _wgslsmith_f_op_f32(f32(-1f) * -1014f), global2[_wgslsmith_index_u32(arg_1.a.x, 27u)])), 1u)]);
    let var_3 = Struct_4(arg_1.a);
    return _wgslsmith_add_i32(-max(0i, u_input.d), var_1.x << ((~var_2.b.c.x | arg_1.a.x) % 32u));
}

fn func_1(arg_0: u32) -> Struct_5 {
    return Struct_5(~(~u_input.a.wyw), true, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -891f), 649f), Struct_2(abs(func_2(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), Struct_4(u_input.a))), false, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(26188u, 27u)] * 1907f), _wgslsmith_f_op_f32(f32(-1f) * -304f), _wgslsmith_f_op_f32(max(292f, 1286f)), _wgslsmith_f_op_f32(1355f - -543f)), select(vec2<bool>(true, true), vec2<bool>(true, true), true), ~(~u_input.a)), u_input.e), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_0 | 1u, arg_0) >> (reverseBits(~vec3<u32>(28553u, u_input.b, 33042u)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 1219u, 29791u) >> (u_input.a.yxz % vec3<u32>(32u)), ~u_input.a.yzy), u_input.a.xzw)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<f32, 1>();
    var var_0 = func_1((reverseBits(20770u) | u_input.b) | _wgslsmith_dot_vec4_u32(abs(u_input.a), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 1u, 0u, u_input.b)), u_input.a ^ u_input.a)));
    let var_1 = _wgslsmith_clamp_vec2_i32(firstTrailingBit(firstLeadingBit(vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 7u)], var_0.d.d.x))) >> (vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(17070u, u_input.b), firstLeadingBit(0u)), ~func_1(u_input.a.x).e.x) % vec2<u32>(32u)), vec2<i32>(u_input.e.x, -5214i), var_0.d.d.yw);
    var var_2 = Struct_2(var_0.d.a ^ (-(global1[_wgslsmith_index_u32(0u, 7u)] | 2147483647i) & 0i), true, var_0.d.c, select(vec4<i32>(abs(-28175i), ~var_1.x, -56885i, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(20677u, 1u), 7u)]) | vec4<i32>(global1[_wgslsmith_index_u32(~var_0.a.x, 7u)], 1i, -2147483647i, 0i), abs(firstLeadingBit(reverseBits(u_input.e))), var_0.d.c.b.x));
    global0 = array<vec3<bool>, 24>();
    var var_3 = var_2.c.a.x;
    var var_4 = any(vec4<bool>(var_0.b, any(vec4<bool>(true, var_2.c.b.x, var_2.c.b.x, false)), var_2.c.b.x, -2134f >= var_0.c.x));
    global0 = array<vec3<bool>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_clamp_vec4_u32(u_input.a, ~u_input.a, ~vec4<u32>(u_input.b, var_2.c.c.x, 4294967295u, u_input.b)), vec4<u32>(abs(~1u), min(var_0.a.x, var_2.c.c.x << (var_2.c.c.x % 32u)), 7977u, ~1u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e.x, u_input.a.x), var_2.c.c.xz)), var_2.c.b.x), var_0.c.x, _wgslsmith_f_op_vec2_f32(var_2.c.a.yz * var_2.c.a.xy), var_1);
}

