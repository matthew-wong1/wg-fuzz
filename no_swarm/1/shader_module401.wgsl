struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: u32;

var<private> global2: array<bool, 24>;

var<private> global3: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(1u, 20388u), vec2<u32>(0u, 22322u), vec2<u32>(1u, 28980u), vec2<u32>(52124u, 5136u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 3834u), vec2<u32>(84234u, 0u), vec2<u32>(0u, 2969u), vec2<u32>(29035u, 0u), vec2<u32>(0u, 4294967295u), vec2<u32>(44656u, 25561u), vec2<u32>(26067u, 41561u), vec2<u32>(1u, 12369u), vec2<u32>(0u, 84286u), vec2<u32>(2640u, 8624u), vec2<u32>(62963u, 4294967295u), vec2<u32>(29098u, 1u), vec2<u32>(0u, 17476u), vec2<u32>(0u, 54715u), vec2<u32>(27119u, 10657u), vec2<u32>(160688u, 4616u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 72102u), vec2<u32>(4294967295u, 13386u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = select(~(~arg_2.c), vec4<i32>(countOneBits(i32(-1i) * -arg_2.c.x), countOneBits(17007i), select(-1i, 9047i, !arg_2.b.x), -3215i), arg_2.b);
    return arg_0;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> bool {
    global2 = array<bool, 24>();
    var var_0 = ~_wgslsmith_div_i32(1i ^ arg_0.c.x, _wgslsmith_mult_i32(func_3(arg_0.c.x, !arg_3.b.xwx, arg_1, -83205i), arg_0.c.x));
    var var_1 = Struct_1(arg_3.a, vec4<bool>(all(!vec2<bool>(arg_1.b.x, false)) & false, arg_2, !(!(!arg_2)), any(vec2<bool>(true, !arg_1.b.x))), firstTrailingBit(-(abs(arg_1.c) << (select(vec4<u32>(0u, 4294967295u, arg_3.d.x, 89513u), vec4<u32>(27221u, u_input.e.x, u_input.b.x, 4294967295u), arg_0.b.x) % vec4<u32>(32u)))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.d.x, 0u), select(vec2<u32>(arg_3.d.x, 7330u), _wgslsmith_clamp_vec2_u32(global3[_wgslsmith_index_u32(arg_3.d.x, 24u)], vec2<u32>(arg_0.d.x, u_input.e.x), vec2<u32>(u_input.b.x, 3967u)), select(global2[_wgslsmith_index_u32(28285u, 24u)], arg_3.b.x, arg_0.b.x))), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.d.x, 1u, arg_3.d.x), vec3<u32>(arg_0.d.x, arg_3.d.x, arg_3.d.x)) | ~79086u, 0u), 1u, 42558u));
    global2 = array<bool, 24>();
    var var_2 = arg_0;
    return true;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: Struct_1) -> vec4<bool> {
    global1 = ~u_input.e.x;
    global3 = array<vec2<u32>, 24>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_3.a), select(arg_0, !arg_3.b, !(!(u_input.a < 1i))), vec4<i32>(firstTrailingBit(-188i), func_3(_wgslsmith_add_i32(arg_3.c.x, arg_3.c.x) >> (max(u_input.e.x, 4294967295u) % 32u), !(!vec3<bool>(arg_0.x, true, global2[_wgslsmith_index_u32(4294967295u, 24u)])), arg_3, -63844i), -arg_3.c.x, -1i), countOneBits(_wgslsmith_mod_vec4_u32(firstTrailingBit(arg_3.d), vec4<u32>(1u, 0u, arg_3.d.x, arg_3.d.x) >> (u_input.e % vec4<u32>(32u))) & vec4<u32>(reverseBits(u_input.e.x), 60473u, arg_3.d.x ^ 0u, abs(22640u))));
    var var_1 = 1000f;
    let var_2 = select(!select(!arg_1.yz, arg_1.zz, vec2<bool>(all(vec3<bool>(true, true, arg_3.b.x)), select(arg_3.b.x, arg_3.b.x, arg_3.b.x))), arg_3.b.wx, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1938f + arg_2.x), _wgslsmith_f_op_f32(-arg_2.x)) - var_0.a) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(step(var_0.a, -707f)))));
    return var_0.b;
}

fn func_1() -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2435f)), func_4(vec4<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 24u)], false, true, false)), true, !all(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(12348u, 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(u_input.e.x, 24u)])), true), vec3<bool>(false, !func_2(Struct_1(117f, vec4<bool>(global2[_wgslsmith_index_u32(0u, 24u)], false, global2[_wgslsmith_index_u32(84234u, 24u)], true), vec4<i32>(u_input.d.x, -1i, global0.x, -35547i), vec4<u32>(u_input.e.x, 44609u, u_input.b.x, 34739u)), Struct_1(-1000f, vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(36000u, 24u)], false, true), vec4<i32>(global0.x, 5184i, -1i, 0i), u_input.e), false, Struct_1(-133f, vec4<bool>(true, global2[_wgslsmith_index_u32(0u, 24u)], false, global2[_wgslsmith_index_u32(51902u, 24u)]), vec4<i32>(global0.x, -20633i, global0.x, 1i), vec4<u32>(34650u, 3495u, u_input.b.x, 33691u))), global2[_wgslsmith_index_u32(11636u, 24u)]), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-203f, -1093f, -883f), vec3<f32>(234f, 178f, 764f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(843f, -415f, -1237f), vec3<f32>(-1970f, 1100f, 537f), global2[_wgslsmith_index_u32(u_input.e.x, 24u)]))))), Struct_1(752f, !select(vec4<bool>(global2[_wgslsmith_index_u32(3066u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(u_input.e.x, 24u)], true), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.e.x, 24u)], global2[_wgslsmith_index_u32(0u, 24u)], false), false), vec4<i32>(-global0.x, ~u_input.a, global0.x, _wgslsmith_mult_i32(u_input.c.x, global0.x)), ~(u_input.e >> (vec4<u32>(13629u, u_input.e.x, u_input.e.x, u_input.e.x) % vec4<u32>(32u))))), vec4<i32>(select(~u_input.d.x, 0i, true), global0.x, 0i, u_input.d.x), vec4<u32>(_wgslsmith_sub_u32(abs(~u_input.e.x), 1u), 1u, 45939u, ~(~(0u >> (u_input.b.x % 32u)))));
    var var_1 = min(select(var_0.d.x, firstLeadingBit(var_0.d.x), var_0.b.x), _wgslsmith_clamp_u32(1u, ~_wgslsmith_add_u32(u_input.b.x, var_0.d.x), _wgslsmith_div_u32(u_input.e.x, 43275u)));
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(select(var_0.c, var_0.c ^ var_0.c, false), -var_0.c), _wgslsmith_sub_i32(~(var_0.c.x | abs(29848i)), reverseBits(28186i) >> (abs(1u) % 32u)));
    let var_3 = var_0.c.xz;
    global3 = array<vec2<u32>, 24>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1911f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * 119f)) + 1000f) + var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(!(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.e.x, 24u)], true)), select(!vec2<bool>(true, global2[_wgslsmith_index_u32(67105u, 24u)]), select(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 24u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], false), vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(u_input.e.x, 24u)])), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(9079u, u_input.e.x), 24u)]), global2[_wgslsmith_index_u32(1u, 24u)]), vec2<bool>(~u_input.b.x != (u_input.e.x << (4294967295u % 32u)), !any(vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(func_1()) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -986f) * 200f));
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(50237u, 3636u, u_input.b.x), u_input.e.yxx), abs(1u)), u_input.e.x & _wgslsmith_sub_u32(1u, u_input.b.x), u_input.b.x, ~_wgslsmith_div_u32(43560u, 33803u)), ~u_input.e & ~select(vec4<u32>(u_input.b.x, 50186u, u_input.e.x, 39171u), vec4<u32>(1u, u_input.b.x, u_input.e.x, 4294967295u), global2[_wgslsmith_index_u32(29313u, 24u)])) << (u_input.b.x % 32u);
    let var_2 = Struct_1(-1349f, select(!(!(!vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(0u, 24u)]))), select(!vec4<bool>(var_0.x, false, var_0.x, var_0.x), select(!vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 24u)], var_0.x, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], var_0.x), vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 24u)], true, var_0.x), !vec4<bool>(global2[_wgslsmith_index_u32(0u, 24u)], true, true, var_0.x)), false), !func_4(vec4<bool>(var_0.x, false, var_0.x, global2[_wgslsmith_index_u32(1u, 24u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], var_0.x, global2[_wgslsmith_index_u32(31629u, 24u)]), vec3<bool>(global2[_wgslsmith_index_u32(58494u, 24u)], true, true), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.e.x, 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)])), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(294f, 170f, -600f), vec3<f32>(725f, -2952f, -123f))), Struct_1(-694f, vec4<bool>(true, false, true, true), vec4<i32>(-22638i, global0.x, -2147483647i, 25856i), vec4<u32>(u_input.e.x, u_input.b.x, u_input.b.x, 40816u)))), max(-(vec4<i32>(global0.x, -32i, u_input.d.x, global0.x) & (vec4<i32>(global0.x, 38608i, global0.x, global0.x) >> (u_input.e % vec4<u32>(32u)))), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, -1i, -7849i, u_input.d.x), vec4<i32>(u_input.d.x, global0.x, u_input.c.x, u_input.d.x), vec4<i32>(0i, 36939i, u_input.a, global0.x)), ~vec4<i32>(global0.x, -1i, -62717i, global0.x)) << (u_input.e % vec4<u32>(32u))), firstLeadingBit(u_input.e));
    let var_3 = var_2.d.x;
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.x, vec2<f32>(-1064f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -677f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(985f, var_2.a)));
}

