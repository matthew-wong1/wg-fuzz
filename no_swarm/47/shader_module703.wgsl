struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true));

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

var<private> global2: array<bool, 9>;

var<private> global3: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(1u), Struct_1(4294967295u), Struct_1(30475u), Struct_1(0u), Struct_1(0u), Struct_1(28812u), Struct_1(0u), Struct_1(4294967295u), Struct_1(34931u), Struct_1(51160u), Struct_1(32041u), Struct_1(9993u), Struct_1(1u), Struct_1(51397u), Struct_1(4294967295u), Struct_1(1u), Struct_1(27016u), Struct_1(88886u), Struct_1(1u), Struct_1(0u), Struct_1(23505u));

var<private> global4: array<vec2<bool>, 17>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = global3[_wgslsmith_index_u32(36230u, 21u)];
    var var_1 = Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, reverseBits(_wgslsmith_dot_vec3_u32(u_input.b.wyy, u_input.b.wxw)), _wgslsmith_mod_u32(min(1u, u_input.b.x), var_0.a)) >> (34497u % 32u), 21u)], Struct_1(u_input.b.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-676f, -984f, -788f))))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b.x, 4294967295u) >> (var_0.a % 32u), min(~u_input.b.x, 83450u)), 1u, firstLeadingBit(~min(var_0.a, var_0.a)), ~reverseBits(45425u)), 13581u);
    let var_2 = Struct_2(global3[_wgslsmith_index_u32((((u_input.b.x << (var_1.a.a % 32u)) | ~4294967295u) | ~0u) << (0u % 32u), 21u)], Struct_1(65971u), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_f32(select(773f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(440f))), false)), _wgslsmith_f_op_f32(ceil(var_1.c.x))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(min(countOneBits(vec4<u32>(var_1.d.x, 4294967295u, 4294967295u, 4294967295u)), var_1.d), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(var_0.a, 1u, 35134u, var_1.b.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 1u, 62502u, var_0.a), vec4<u32>(u_input.b.x, 101913u, 4294967295u, u_input.b.x), u_input.b))), ~vec4<u32>(var_1.b.a, var_0.a, ~28345u, 1u)), countOneBits(~(abs(var_0.a) >> (_wgslsmith_mod_u32(var_1.d.x, u_input.b.x) % 32u))));
    global2 = array<bool, 9>();
    global0 = array<vec4<bool>, 18>();
    return false;
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = !select(select(vec2<bool>(func_3(), !global2[_wgslsmith_index_u32(87921u, 9u)]), select(vec2<bool>(false, global1.x), select(vec2<bool>(global2[_wgslsmith_index_u32(7507u, 9u)], global2[_wgslsmith_index_u32(1u, 9u)]), vec2<bool>(true, true), global2[_wgslsmith_index_u32(1u, 9u)]), !global2[_wgslsmith_index_u32(1u, 9u)]), vec2<bool>(global1.x, true)), global1.xy, false);
    let var_1 = Struct_2(Struct_1(~(~_wgslsmith_mod_u32(u_input.b.x, u_input.b.x))), global3[_wgslsmith_index_u32(u_input.b.x, 21u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-721f)) + arg_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 * arg_0), 1410f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0, 200f) - _wgslsmith_f_op_f32(-468f * 811f))) - vec3<f32>(_wgslsmith_f_op_f32(arg_0 * arg_0), _wgslsmith_f_op_f32(trunc(-119f)), _wgslsmith_f_op_f32(sign(arg_0)))), vec4<u32>(~17111u, ~max(u_input.b.x, 1u) & (0u >> (countOneBits(u_input.b.x) % 32u)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), ~u_input.b), select(vec4<u32>(u_input.b.x, 1u, 61640u, u_input.b.x) | vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), ~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 76346u), vec4<bool>(false, false, global1.x, var_0.x))), 1u), ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.b.zx, vec2<u32>(4294967295u, u_input.b.x)), _wgslsmith_sub_vec2_u32(u_input.b.xx, vec2<u32>(0u, 1u))) << (abs(_wgslsmith_mult_u32(107271u, ~u_input.b.x)) % 32u));
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1000f, -1513f, arg_0))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 188f, arg_0) + vec3<f32>(860f, -930f, arg_0))))), vec3<f32>(arg_0, -561f, arg_0));
    let var_3 = global3[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_add_u32(~(_wgslsmith_dot_vec2_u32(u_input.b.zx, var_1.d.zx) ^ 4294967295u), ~u_input.b.x)), 21u)];
    let var_4 = var_1.b;
    return _wgslsmith_f_op_f32(abs(-1848f));
}

fn func_1() -> bool {
    return 915f > _wgslsmith_f_op_f32(min(1315f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(1090f)) * _wgslsmith_div_f32(1725f, -445f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1605f)), 1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 21>();
    let var_0 = global3[_wgslsmith_index_u32(u_input.b.x, 21u)];
    global4 = array<vec2<bool>, 17>();
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1060f, 1109f, 462f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1377f, -1192f, -1484f)))))), u_input.c.x, _wgslsmith_div_f32(-700f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1222f, _wgslsmith_f_op_f32(f32(-1f) * -1536f))))), u_input.c.x, firstLeadingBit(abs(vec3<i32>(-2147483647i, firstTrailingBit(u_input.c.x), 1i))));
}

