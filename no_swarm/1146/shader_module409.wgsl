struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(4294967295u, Struct_2(Struct_1(vec4<u32>(1u, 1036u, 4294967295u, 1u), 0u, vec4<f32>(591f, -224f, 1448f, 1677f), vec4<bool>(true, false, true, false)), Struct_1(vec4<u32>(3317u, 28793u, 0u, 4294967295u), 32708u, vec4<f32>(-1503f, -123f, 726f, 591f), vec4<bool>(false, true, false, false)), Struct_1(vec4<u32>(64748u, 41505u, 4294967295u, 6335u), 4294967295u, vec4<f32>(320f, 473f, -1621f, -430f), vec4<bool>(true, false, true, true)), 4294967295u, Struct_1(vec4<u32>(4294967295u, 4294967295u, 4012u, 75882u), 94613u, vec4<f32>(-1434f, -1831f, 176f, -426f), vec4<bool>(true, false, true, true))));

var<private> global1: vec2<u32> = vec2<u32>(0u, 4294967295u);

var<private> global2: array<vec3<i32>, 12>;

var<private> global3: array<i32, 18>;

var<private> global4: array<bool, 7> = array<bool, 7>(true, false, false, false, false, true, false);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    var var_0 = global0.b.a;
    var var_1 = ~global0.a;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(291f, _wgslsmith_f_op_f32(arg_0.x + 1926f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.b.c.x + 1446f)), global0.b.a.d.x))));
    var var_3 = true;
    var_3 = select(true, any(vec4<bool>(true && !global4[_wgslsmith_index_u32(15231u, 7u)], !global4[_wgslsmith_index_u32(4294967295u & global1.x, 7u)], !all(global0.b.c.d.xwz), true)), !select(global4[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 7u)], global0.b.a.d.x, var_0.d.x));
    return var_0.c.x;
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> vec4<u32> {
    global1 = reverseBits(~(~vec2<u32>(global1.x, 1u)) >> (global0.b.b.a.xw % vec2<u32>(32u)));
    let var_0 = ~u_input.b;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.c.c.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b.e.c.x, global0.b.b.c.x)))))), global0.b.c.c.x);
    let var_2 = arg_1;
    var var_3 = (all(global0.b.c.d.xw) == any(arg_1.d.ywy)) & (global3[_wgslsmith_index_u32(1u, 18u)] <= firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(58576i, global3[_wgslsmith_index_u32(0u, 18u)]), vec2<i32>(16243i, -1412i))));
    return vec4<u32>(~var_2.a.x, _wgslsmith_div_u32(~firstLeadingBit(arg_0), 35701u) ^ _wgslsmith_dot_vec4_u32(firstTrailingBit(global0.b.c.a), ~(~arg_1.a)), abs(abs(83815u)), 42067u);
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    let var_0 = u_input.b;
    var var_1 = global0.b.b.a;
    var_1 = _wgslsmith_add_vec4_u32(func_2(~firstTrailingBit(countOneBits(19677u)), global0.b.c), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.x, _wgslsmith_mult_u32(func_2(var_1.x, global0.b.c).x, ~arg_0), func_2(arg_0 & 0u, Struct_1(vec4<u32>(26304u, 1u, 2565u, global0.a), 298u, vec4<f32>(1771f, global0.b.c.c.x, global0.b.c.c.x, -2065f), global0.b.b.d)).x, arg_0), select(global0.b.e.a, max(global0.b.b.a, global0.b.c.a >> (global0.b.b.a % vec4<u32>(32u))), true)));
    global3 = array<i32, 18>();
    global1 = ~countOneBits(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(var_1.yx, vec2<u32>(var_0, global1.x)), global0.b.a.a.zx)) << (var_1.xz % vec2<u32>(32u));
    return global0.b.e;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_4) -> Struct_1 {
    global4 = array<bool, 7>();
    global3 = array<i32, 18>();
    var var_0 = !arg_1;
    let var_1 = Struct_2(global0.b.b, arg_2.a.b.b, arg_2.a.b.e, 17766u << (func_2(4294967295u, Struct_1(min(vec4<u32>(30586u, u_input.b, global0.a, 5977u), global0.b.c.a), arg_0.a.x, _wgslsmith_f_op_vec4_f32(-global0.b.e.c), select(vec4<bool>(arg_0.d.x, false, global0.b.a.d.x, true), arg_1, arg_2.a.b.a.d.x))).x % 32u), arg_2.a.b.a);
    var var_2 = arg_2.a;
    return Struct_1(~(func_1(max(49438u, u_input.b), 53261i).a & _wgslsmith_mod_vec4_u32(arg_0.a, _wgslsmith_mult_vec4_u32(var_1.b.a, vec4<u32>(arg_0.b, 17147u, 60087u, arg_0.a.x)))), ~(~arg_0.b) & ~(~func_2(var_1.b.b, var_2.b.c).x), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.b.a.c.x * 472f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(var_1.a.c.x, 337f))) + 292f), _wgslsmith_f_op_f32(597f - -971f), global0.b.b.c.x))), !vec4<bool>(var_2.b.a.d.x, false, any(select(vec3<bool>(var_2.b.c.d.x, var_0.x, global4[_wgslsmith_index_u32(65456u, 7u)]), var_0.wyz, var_2.b.e.d.zyy)), true || all(var_1.e.d.yxw)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 12>();
    global2 = array<vec3<i32>, 12>();
    var var_0 = Struct_3(1u, global0.b);
    var var_1 = Struct_3(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.b | 44422u, _wgslsmith_add_u32(4294967295u, global1.x), var_0.b.e.a.x), vec3<u32>(global0.b.c.b, ~4294967295u, 0u)), global0.b.a.a.yxz), Struct_2(Struct_1(vec4<u32>(global0.b.c.b, 1u, u_input.b, var_0.a) << (global0.b.c.a % vec4<u32>(32u)), ~min(41587u, 32044u), _wgslsmith_f_op_vec4_f32(select(var_0.b.e.c, global0.b.c.c, vec4<bool>(var_0.b.a.d.x, global4[_wgslsmith_index_u32(51964u, 7u)], false, global4[_wgslsmith_index_u32(21653u, 7u)]))), !vec4<bool>(var_0.b.e.d.x, false, global0.b.e.d.x, false)), Struct_1(max(~global0.b.e.a, vec4<u32>(4294967295u, global1.x, 1u, 6726u)), _wgslsmith_dot_vec3_u32(global0.b.e.a.zzx | vec3<u32>(u_input.a, 91304u, u_input.a), vec3<u32>(var_0.b.d, 60981u, global1.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.b.a.c)), !var_0.b.e.d), func_4(func_1(4680u, firstTrailingBit(-1i)), !global0.b.a.d, Struct_4(Struct_3(u_input.b, var_0.b))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.b.d, u_input.b), reverseBits(4294967295u)), global0.b.c));
    let var_2 = ~_wgslsmith_sub_vec2_u32(global0.b.b.a.yz, global0.b.c.a.wy);
    let var_3 = global4[_wgslsmith_index_u32(48841u, 7u)];
    global4 = array<bool, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.x, global1.x, 4294967295u), global0.b.c.a), var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec2<f32>(1044f, var_1.b.b.c.x))))))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.e.c.x - global0.b.c.c.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-755f, 369f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.b.b.c.x, global0.b.a.c.x))))))), _wgslsmith_div_vec2_u32(~vec2<u32>(_wgslsmith_add_u32(0u, u_input.a), global0.a), _wgslsmith_add_vec2_u32(max(var_0.b.e.a.ww, ~vec2<u32>(global0.b.c.b, 47070u)), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 90079u), _wgslsmith_div_vec2_u32(vec2<u32>(55777u, var_2.x), vec2<u32>(global0.a, u_input.a))))), var_1.b.c.c.wx);
}

