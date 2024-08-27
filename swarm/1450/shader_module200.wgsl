struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 9> = array<vec4<i32>, 9>(vec4<i32>(i32(-2147483648), 1i, 8929i, 4181i), vec4<i32>(14049i, 0i, 1i, i32(-2147483648)), vec4<i32>(0i, -27153i, 36232i, i32(-2147483648)), vec4<i32>(-9803i, 1i, -1i, 62974i), vec4<i32>(-36890i, 6053i, 0i, i32(-2147483648)), vec4<i32>(-1i, 1i, -37438i, -22337i), vec4<i32>(i32(-2147483648), 2147483647i, 5896i, -4010i), vec4<i32>(16731i, 61861i, -8425i, 2147483647i), vec4<i32>(-9690i, 71010i, 15547i, 32346i));

var<private> global1: array<bool, 3>;

var<private> global2: array<vec3<i32>, 10>;

var<private> global3: u32;

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32, arg_3: u32) -> vec2<bool> {
    let var_0 = arg_0.c;
    var var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b.x)));
    var var_2 = global4.x;
    global1 = array<bool, 3>();
    global3 = firstLeadingBit(~((arg_2 | 375u) | ~1u));
    return vec2<bool>(false, true);
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3, arg_3: f32) -> vec4<i32> {
    var var_0 = !(!(!vec4<bool>(arg_1.c.b.x <= arg_2.a.c, global4.x, global4.x, true)));
    var var_1 = ~reverseBits(_wgslsmith_add_vec3_i32(global2[_wgslsmith_index_u32(23450u, 10u)] ^ vec3<i32>(2147483647i, -2147483647i, arg_1.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.b, arg_1.b, -2147483647i), vec3<i32>(-40767i, 2147483647i, -70313i), vec3<i32>(-9723i, arg_1.b, -1i)))) | (abs(_wgslsmith_add_vec3_i32(select(vec3<i32>(u_input.a.x, -33804i, 9722i), global2[_wgslsmith_index_u32(98304u, 10u)], false), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -36938i), vec3<i32>(u_input.a.x, -2147483647i, arg_1.b)))) << (_wgslsmith_sub_vec3_u32(~(vec3<u32>(arg_1.c.a, arg_0, 39455u) ^ vec3<u32>(arg_2.a.a, arg_0, 1u)), arg_1.d.zzx) % vec3<u32>(32u)));
    var var_2 = vec3<i32>(arg_1.b ^ arg_1.a, 79704i, -47241i);
    let var_3 = min(vec4<u32>(~_wgslsmith_dot_vec4_u32(~arg_1.d, vec4<u32>(arg_0, 4294967295u, 1u, arg_1.d.x)), _wgslsmith_dot_vec2_u32(~select(vec2<u32>(arg_1.c.a, 41320u), vec2<u32>(arg_1.c.a, arg_2.a.a), false), vec2<u32>(reverseBits(arg_2.b), 78617u)), _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, 54024u, 20618u), max(arg_1.d.zzz, vec3<u32>(1u, arg_0, arg_2.a.a)), !global4.x), _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.c.a, arg_2.a.a, 1u), abs(vec3<u32>(1u, arg_0, 14372u)))), _wgslsmith_mult_u32(u_input.b, _wgslsmith_mod_u32(arg_0, abs(0u)))), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.a.a, u_input.b, 4294967295u, u_input.b), vec4<u32>(131572u, arg_1.c.a, arg_1.c.a, 1u) & arg_1.d)));
    let var_4 = 4294967295u;
    return global0[_wgslsmith_index_u32(arg_0, 9u)];
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: bool, arg_3: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(440f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -276f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1842f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-695f, 1475f)) * _wgslsmith_f_op_f32(f32(-1f) * -497f)), -770f)) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(669f, 1859f))) - -1016f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -1078f)));
    global4 = select(select(func_2(Struct_2(~u_input.a.x, _wgslsmith_sub_i32(-1i, 2147483647i), Struct_1(u_input.b, vec3<f32>(var_0.x, -1000f, var_0.x), var_0.x, true), vec4<u32>(4294967295u, 7302u, arg_1.x, 4294967295u) | vec4<u32>(u_input.b, arg_0.x, arg_0.x, 5433u)), vec4<i32>(-8217i, 35495i, firstTrailingBit(1i), _wgslsmith_div_i32(-15594i, u_input.a.x)), u_input.b >> (1u % 32u), firstLeadingBit(38687u)), !select(!vec2<bool>(global4.x, true), select(vec2<bool>(true, global1[_wgslsmith_index_u32(arg_1.x, 3u)]), vec2<bool>(false, global4.x), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 3u)])), vec2<bool>(arg_2, true)), vec2<bool>(any(vec4<bool>(arg_2, false, global4.x, global4.x)) != true, true)), vec2<bool>(false, global1[_wgslsmith_index_u32(24722u, 3u)]), func_2(Struct_2(i32(-1i) * -30416i, -arg_3.x, Struct_1(40811u, _wgslsmith_f_op_vec3_f32(vec3<f32>(412f, 592f, var_0.x) + vec3<f32>(326f, var_0.x, var_0.x)), 2205f, true), _wgslsmith_mult_vec4_u32(~arg_1, ~vec4<u32>(arg_0.x, 50149u, arg_1.x, u_input.b))), _wgslsmith_mod_vec4_i32(select(~global0[_wgslsmith_index_u32(u_input.b, 9u)], func_3(69636u, Struct_2(u_input.a.x, u_input.a.x, Struct_1(38894u, var_0.wwx, var_0.x, false), vec4<u32>(0u, arg_1.x, 20618u, 1197u)), Struct_3(Struct_1(43857u, var_0.xzz, 1365f, false), arg_1.x, global4.x), var_0.x), vec4<bool>(global4.x, global4.x, false, global1[_wgslsmith_index_u32(84715u, 3u)])), global0[_wgslsmith_index_u32(~4294967295u, 9u)] | -global0[_wgslsmith_index_u32(arg_1.x, 9u)]), 50624u, _wgslsmith_clamp_u32(arg_0.x ^ 0u, arg_1.x, 1u)).x);
    var var_1 = _wgslsmith_div_f32(1114f, -682f);
    global3 = 4294967295u;
    global0 = array<vec4<i32>, 9>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -31571i;
    var var_1 = all(vec2<bool>(func_1(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 10720u, u_input.b), vec3<u32>(u_input.b, u_input.b, 4294967295u)) | countOneBits(vec3<u32>(15253u, 1u, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(88558u, u_input.b, 81469u, u_input.b), ~vec4<u32>(u_input.b, u_input.b, 75275u, 1u)), !(u_input.b < 1u), u_input.a), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.b, u_input.b) & u_input.b, ~u_input.b), 3u)]));
    global0 = array<vec4<i32>, 9>();
    var_1 = _wgslsmith_f_op_f32(max(-128f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(480f + _wgslsmith_f_op_f32(f32(-1f) * -1186f)) * _wgslsmith_f_op_f32(select(-557f, -340f, global4.x))))) >= -199f;
    global1 = array<bool, 3>();
    let var_2 = Struct_1(4294967295u, vec3<f32>(344f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-124f, -919f))), -1771f), _wgslsmith_f_op_f32(-658f + _wgslsmith_f_op_f32(-369f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(624f, -1000f) - -989f))), ((~u_input.b << (1u % 32u)) << (32436u % 32u)) < ~(~(u_input.b ^ u_input.b)));
    var_1 = (_wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 4294967295u) ^ vec2<u32>(u_input.b, 0u), countOneBits(vec2<u32>(4522u, var_2.a)), all(vec4<bool>(var_2.d, false, global1[_wgslsmith_index_u32(4294967295u, 3u)], global4.x))), firstTrailingBit(vec2<u32>(var_2.a, 26335u)) ^ (vec2<u32>(var_2.a, 12989u) << (vec2<u32>(var_2.a, u_input.b) % vec2<u32>(32u)))) << (abs(~(~var_2.a)) % 32u)) < reverseBits(u_input.b | 14649u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.c - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(679f - var_2.b.x) * -596f)) - -247f), _wgslsmith_div_f32(var_2.b.x, var_2.b.x), u_input.b >> (_wgslsmith_sub_u32(4294967295u, ~var_2.a) % 32u));
}

