struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true));

var<private> global2: array<vec2<f32>, 24> = array<vec2<f32>, 24>(vec2<f32>(-1056f, 1000f), vec2<f32>(-195f, 125f), vec2<f32>(-1000f, 949f), vec2<f32>(1049f, -1240f), vec2<f32>(-1195f, -672f), vec2<f32>(213f, 192f), vec2<f32>(-1000f, -1928f), vec2<f32>(1000f, -368f), vec2<f32>(1000f, 1347f), vec2<f32>(-1669f, 1000f), vec2<f32>(-772f, -121f), vec2<f32>(508f, -284f), vec2<f32>(-831f, 312f), vec2<f32>(930f, 932f), vec2<f32>(981f, 800f), vec2<f32>(749f, 714f), vec2<f32>(-746f, -113f), vec2<f32>(145f, -976f), vec2<f32>(-1329f, -1181f), vec2<f32>(976f, 199f), vec2<f32>(-316f, 1191f), vec2<f32>(-141f, 1754f), vec2<f32>(569f, 672f), vec2<f32>(-1349f, 1670f));

var<private> global3: Struct_1;

var<private> global4: i32 = 46896i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.b, 16659u, _wgslsmith_dot_vec3_u32(~global0.b.wyz, arg_0.a.a.b.xyz), u_input.b), max(vec4<u32>(global3.b.x ^ u_input.b, u_input.b >> (global3.b.x % 32u), 14462u, ~u_input.b), arg_0.a.a.b)), vec4<u32>(1u, ~_wgslsmith_clamp_u32(u_input.b, global3.b.x, global3.b.x), max(40881u, ~4294967295u), arg_0.a.a.b.x) | _wgslsmith_mod_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, arg_0.a.a.b.x, 1u, 0u), vec4<u32>(8675u, arg_0.a.a.b.x, 1u, global0.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, arg_0.a.a.b.x, u_input.b, arg_0.a.a.b.x), _wgslsmith_div_vec4_u32(global3.b, global3.b))));
    var var_1 = Struct_1(reverseBits(-global3.a), global3.b, 43586i, global3.d, arg_0.a.a.e);
    var var_2 = global3.a;
    global4 = -20437i;
    var_1 = arg_0.a.a;
    return Struct_1(1i, ~vec4<u32>(~var_1.b.x, _wgslsmith_sub_u32(arg_0.a.a.b.x, u_input.b) & (global0.b.x >> (0u % 32u)), ~(~0u), min(94374u, ~var_1.b.x)), _wgslsmith_clamp_i32(~reverseBits(u_input.d.x), countOneBits(global3.a ^ global3.a), 58930i), global0.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -571f), var_1.e)));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<f32>) -> f32 {
    let var_0 = 1i;
    var var_1 = 4294967295u;
    global3 = Struct_1(16934i, _wgslsmith_div_vec4_u32(global0.b >> (_wgslsmith_clamp_vec4_u32(~global0.b, vec4<u32>(13394u, u_input.b, u_input.b, 45449u), vec4<u32>(0u, 4294967295u, 111877u, global3.b.x)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(~u_input.b, global0.b.x, _wgslsmith_add_u32(36959u, global3.b.x), 0u), min(vec4<u32>(global3.b.x, 4294967295u, 4294967295u, u_input.b), ~global3.b), _wgslsmith_add_vec4_u32(global0.b, global3.b))), arg_0 ^ -43554i, vec2<bool>(global3.d.x, !(-512f >= arg_2.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)))));
    var_1 = global3.b.x;
    global4 = _wgslsmith_add_i32((_wgslsmith_add_i32(~29198i, u_input.c.x) | func_1(Struct_3(Struct_2(Struct_1(-1i, vec4<u32>(40859u, global3.b.x, 44370u, 4294967295u), 2147483647i, global0.d, global3.e), false), vec4<f32>(global0.e, -267f, arg_2.x, arg_2.x))).c) & (46977i << (_wgslsmith_mod_u32(global0.b.x, 0u) % 32u)), 1i);
    return -175f;
}

fn func_2(arg_0: i32) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.e - _wgslsmith_div_f32(-837f, _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.c, global0.c, -11625i), vec3<i32>(0i, global3.c, arg_0)), ~vec4<i32>(global3.a, u_input.a.x, -61574i, global0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-207f, global0.e, 566f)))))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-228f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(Struct_3(Struct_2(Struct_1(i32(-1i) * -1i, ~global3.b, max(global0.c, global0.a), global0.d, _wgslsmith_f_op_f32(select(global0.e, global0.e, global0.d.x))), true), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.e - 361f) - _wgslsmith_div_f32(321f, global3.e)), _wgslsmith_f_op_f32(-global3.e), global3.e, global3.e)));
    global1 = array<vec4<bool>, 16>();
    var var_0 = _wgslsmith_f_op_f32(func_2(select(firstTrailingBit(i32(-1i) * -1i), -max(25261i, u_input.c.x), !all(vec4<bool>(global0.d.x, global0.d.x, global3.d.x, global0.d.x))))) >= _wgslsmith_div_f32(global3.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1330f, _wgslsmith_f_op_f32(exp2(global3.e))))));
    global4 = u_input.d.x;
    global2 = array<vec2<f32>, 24>();
    var var_1 = Struct_3(Struct_2(func_1(Struct_3(Struct_2(Struct_1(-2147483647i, global0.b, -2147483647i, global0.d, 1415f), false), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(324f, global0.e, -1767f, global0.e))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(1i))) < global0.e), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global3.e - -1010f), 973f, _wgslsmith_div_f32(689f, -393f), _wgslsmith_f_op_f32(1587f * -1466f))))));
    var var_2 = var_1.a;
    global2 = array<vec2<f32>, 24>();
    global4 = ~u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(global0.e, _wgslsmith_sub_u32(var_1.a.a.b.x, 4294967295u), vec2<i32>(global3.a, _wgslsmith_sub_i32(-func_1(Struct_3(var_1.a, vec4<f32>(global0.e, 705f, global0.e, var_2.a.e))).c, reverseBits(global3.c))));
}

