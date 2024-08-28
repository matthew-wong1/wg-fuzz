struct Struct_1 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: vec3<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 66846u;

var<private> global1: array<Struct_1, 9>;

var<private> global2: Struct_3;

var<private> global3: f32;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<u32>) -> Struct_4 {
    var var_0 = ~select(vec3<i32>(arg_1.a.c.x, _wgslsmith_sub_i32(-32191i, 26540i), 1i), max(-vec3<i32>(u_input.b, u_input.b, arg_0.c.x), vec3<i32>(arg_0.a.c.x, -4494i, 31114i)), true) | -_wgslsmith_sub_vec3_i32(min(arg_1.a.b.yxw, arg_1.c) | (global2.b.wzx & vec3<i32>(1i, u_input.a, arg_1.c.x)), global2.b.wyx);
    var var_1 = Struct_1(abs(-_wgslsmith_mult_vec2_i32(var_0.zy << (global2.a.a.xz % vec2<u32>(32u)), vec2<i32>(-8706i, global2.b.x))), _wgslsmith_f_op_f32(656f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1949f + 1000f), _wgslsmith_f_op_f32(arg_1.a.a.b.b * arg_0.a.a.b.b), true)))));
    global3 = 323f;
    var var_2 = Struct_1(var_0.zy, _wgslsmith_f_op_f32(ceil(-1000f)));
    var var_3 = 22808u;
    return arg_0;
}

fn func_3(arg_0: vec2<i32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1155f + global2.a.b.b))) + -2082f), _wgslsmith_f_op_f32(round(global2.a.b.b)), true));
    global1 = array<Struct_1, 9>();
    let var_1 = vec2<i32>(global2.c.x | -u_input.a, 51104i) | select(~_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(global2.a.c.a, global2.b.wz), abs(vec2<i32>(global2.a.b.a.x, arg_0.x)), _wgslsmith_add_vec2_i32(global2.a.c.a, vec2<i32>(arg_0.x, 0i))), ~abs(_wgslsmith_sub_vec2_i32(arg_0, arg_0)), select(vec2<bool>(global2.a.e && false, all(vec4<bool>(true, global2.a.e, global2.a.e, true))), select(vec2<bool>(true, global2.a.e), vec2<bool>(true, global2.a.e), global2.a.e), any(vec2<bool>(global2.a.e, false))));
    var var_2 = func_1(Struct_4(func_1(Struct_4(Struct_3(Struct_2(global2.a.d, Struct_1(arg_0, -794f), Struct_1(global2.b.xx, -777f), global2.a.d, global2.a.e), global2.b, vec3<i32>(global2.c.x, var_1.x, -32444i)), true, global2.b.yyz, true), func_1(func_1(Struct_4(Struct_3(global2.a, vec4<i32>(38709i, -24051i, var_1.x, global2.c.x), global2.b.xwy), global2.a.e, vec3<i32>(global2.b.x, 0i, arg_0.x), global2.a.e), Struct_4(Struct_3(global2.a, vec4<i32>(u_input.a, var_1.x, -1i, var_1.x), vec3<i32>(-61001i, var_1.x, -31157i)), true, vec3<i32>(arg_0.x, global2.a.b.a.x, global2.b.x), false), vec2<u32>(30199u, global2.a.a.x)), Struct_4(Struct_3(Struct_2(vec3<u32>(4294967295u, 32856u, global2.a.d.x), global2.a.c, global2.a.b, vec3<u32>(26617u, global2.a.a.x, global2.a.d.x), global2.a.e), global2.b, vec3<i32>(-2147483647i, u_input.a, global2.b.x)), global2.a.e, vec3<i32>(global2.a.c.a.x, -1i, var_1.x), global2.a.e), vec2<u32>(13410u, global2.a.a.x) >> (vec2<u32>(1u, global2.a.d.x) % vec2<u32>(32u))), vec2<u32>(global2.a.a.x, min(global2.a.d.x, 1u))).a, false | global2.a.e, ~(vec3<i32>(-1i) * -vec3<i32>(-46888i, -1i, u_input.c)), all(select(select(vec3<bool>(true, global2.a.e, true), vec3<bool>(true, global2.a.e, false), vec3<bool>(true, false, global2.a.e)), !vec3<bool>(global2.a.e, global2.a.e, true), vec3<bool>(false, global2.a.e, global2.a.e)))), func_1(Struct_4(Struct_3(global2.a, abs(global2.b), global2.c), _wgslsmith_f_op_f32(floor(1020f)) <= _wgslsmith_f_op_f32(floor(-771f)), min(_wgslsmith_add_vec3_i32(vec3<i32>(global2.a.b.a.x, 0i, u_input.a), global2.c), global2.b.xwy), !global2.a.e), func_1(func_1(Struct_4(Struct_3(Struct_2(global2.a.a, Struct_1(vec2<i32>(global2.c.x, var_1.x), 456f), global2.a.b, global2.a.d, true), global2.b, global2.b.wwz), true, vec3<i32>(arg_0.x, 2147483647i, arg_0.x), global2.a.e), Struct_4(Struct_3(Struct_2(vec3<u32>(global2.a.d.x, global2.a.a.x, 0u), Struct_1(vec2<i32>(35786i, global2.b.x), var_0), global1[_wgslsmith_index_u32(4294967295u, 9u)], vec3<u32>(global2.a.a.x, global2.a.a.x, global2.a.d.x), false), vec4<i32>(5990i, arg_0.x, global2.a.b.a.x, -6315i), vec3<i32>(var_1.x, -2147483647i, arg_0.x)), global2.a.e, global2.c, global2.a.e), global2.a.a.zy), Struct_4(func_1(Struct_4(Struct_3(Struct_2(vec3<u32>(4294967295u, 30662u, 26608u), global1[_wgslsmith_index_u32(1584u, 9u)], global1[_wgslsmith_index_u32(8628u, 9u)], global2.a.a, global2.a.e), vec4<i32>(-16895i, u_input.b, u_input.c, -87967i), global2.b.yzx), global2.a.e, global2.b.xzy, global2.a.e), Struct_4(Struct_3(global2.a, vec4<i32>(10651i, u_input.b, var_1.x, global2.a.c.a.x), global2.b.xwz), true, global2.c, true), global2.a.d.xz).a, true, vec3<i32>(-2147483647i, arg_0.x, -20681i), global2.a.e), func_1(func_1(Struct_4(Struct_3(Struct_2(global2.a.a, global1[_wgslsmith_index_u32(102957u, 9u)], Struct_1(vec2<i32>(arg_0.x, u_input.b), global2.a.c.b), vec3<u32>(global2.a.a.x, 1u, global2.a.a.x), global2.a.e), vec4<i32>(-2147483647i, arg_0.x, 0i, arg_0.x), vec3<i32>(-2147483647i, var_1.x, 2147483647i)), false, vec3<i32>(arg_0.x, global2.b.x, arg_0.x), false), Struct_4(Struct_3(global2.a, global2.b, vec3<i32>(-38488i, global2.b.x, -1i)), false, vec3<i32>(u_input.c, global2.b.x, u_input.b), global2.a.e), global2.a.a.zy), func_1(Struct_4(Struct_3(Struct_2(vec3<u32>(global2.a.a.x, global2.a.d.x, global2.a.a.x), Struct_1(global2.b.xx, -1545f), Struct_1(arg_0, var_0), global2.a.a, false), vec4<i32>(-52414i, -2147483647i, u_input.c, 2147483647i), vec3<i32>(1i, global2.a.b.a.x, global2.b.x)), true, vec3<i32>(var_1.x, 9506i, var_1.x), global2.a.e), Struct_4(Struct_3(global2.a, global2.b, vec3<i32>(2147483647i, 9400i, -1i)), global2.a.e, global2.c, true), vec2<u32>(global2.a.a.x, 30191u)), firstTrailingBit(vec2<u32>(98185u, global2.a.d.x))).a.a.d.zx), _wgslsmith_add_vec2_u32(countOneBits(select(vec2<u32>(13074u, 4294967295u), global2.a.a.xz, false)), global2.a.d.xx)), firstTrailingBit(vec2<u32>(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(global2.a.a.x, 1u), 18854u, global2.a.d.x | 7097u)))).a.a;
    global1 = array<Struct_1, 9>();
    return abs(vec3<i32>(_wgslsmith_dot_vec2_i32(var_1, ~vec2<i32>(arg_0.x, 20726i)), global2.b.x, i32(-1i) * -24713i));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_2) -> vec3<u32> {
    let var_0 = ~func_3(-vec2<i32>(global2.a.b.a.x, _wgslsmith_dot_vec2_i32(arg_0.b.a, arg_3.c.a)));
    return abs(vec3<u32>(0u, ~4294967295u, _wgslsmith_mod_u32(abs(0u), abs(1u << (global2.a.d.x % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.b;
    let var_1 = vec4<bool>(true, true, true, true);
    let var_2 = Struct_3(Struct_2(_wgslsmith_add_vec3_u32(~vec3<u32>(global2.a.a.x, 862u, 36829u), func_2(global2.a, func_1(Struct_4(Struct_3(global2.a, global2.b, global2.b.xyz), false, vec3<i32>(u_input.a, 13623i, 10306i), false), Struct_4(Struct_3(global2.a, vec4<i32>(var_0.x, u_input.c, 14805i, 2147483647i), vec3<i32>(u_input.b, 29623i, global2.a.b.a.x)), true, global2.c, true), global2.a.d.yz), global2.a, func_1(Struct_4(Struct_3(global2.a, global2.b, global2.c), false, global2.b.zzw, var_1.x), Struct_4(Struct_3(Struct_2(global2.a.d, global1[_wgslsmith_index_u32(global2.a.d.x, 9u)], global1[_wgslsmith_index_u32(global2.a.d.x, 9u)], global2.a.d, false), vec4<i32>(-1i, var_0.x, -36850i, u_input.c), var_0.xwy), global2.a.e, var_0.wyw, var_1.x), global2.a.d.xx).a.a)), func_1(Struct_4(func_1(Struct_4(Struct_3(Struct_2(global2.a.d, global2.a.c, Struct_1(vec2<i32>(-1i, global2.c.x), global2.a.c.b), vec3<u32>(global2.a.d.x, global2.a.d.x, 90261u), false), vec4<i32>(-24769i, 1i, 2147483647i, 19279i), var_0.wzw), global2.a.e, global2.c, true), Struct_4(Struct_3(global2.a, global2.b, var_0.zxz), true, var_0.zyx, false), vec2<u32>(1u, global2.a.a.x)).a, true, var_0.xzy, global2.a.e), func_1(func_1(Struct_4(Struct_3(global2.a, vec4<i32>(1i, 0i, -1i, global2.c.x), global2.b.zxw), false, var_0.wzz, var_1.x), Struct_4(Struct_3(Struct_2(vec3<u32>(global2.a.d.x, 0u, global2.a.d.x), global2.a.b, global1[_wgslsmith_index_u32(global2.a.a.x, 9u)], global2.a.a, true), global2.b, vec3<i32>(global2.c.x, u_input.c, global2.a.c.a.x)), true, global2.c, true), global2.a.a.zy), Struct_4(Struct_3(global2.a, vec4<i32>(global2.b.x, global2.c.x, u_input.b, u_input.c), global2.b.xxx), global2.a.e, var_0.yww, var_1.x), _wgslsmith_mult_vec2_u32(vec2<u32>(global2.a.a.x, 21345u), vec2<u32>(global2.a.a.x, 69048u))), ~global2.a.d.xy << (~vec2<u32>(global2.a.d.x, 15760u) % vec2<u32>(32u))).a.a.c, global2.a.c, ~_wgslsmith_sub_vec3_u32(~global2.a.d, vec3<u32>(global2.a.a.x, 58350u, 4294967295u)), var_1.x), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(firstLeadingBit(global2.b), _wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(2147483647i, -6363i, u_input.c, -1i)), vec4<i32>(0i, -11437i, 2147483647i, global2.b.x))), global2.b | -(~vec4<i32>(u_input.b, 2147483647i, -2147483647i, -2147483647i))), _wgslsmith_add_vec3_i32(~_wgslsmith_mult_vec3_i32(-global2.c, var_0.yww), _wgslsmith_sub_vec3_i32(vec3<i32>(i32(-1i) * -1i, global2.b.x, u_input.b), vec3<i32>(~53257i, u_input.a, global2.c.x))));
    var var_3 = var_2;
    let var_4 = ~var_3.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(select(global2.b.x, _wgslsmith_mult_i32(~(-1i), global2.b.x), select(all(var_1.yy), true, var_2.a.e)), u_input.c), vec2<f32>(global2.a.c.b, var_3.a.b.b), _wgslsmith_f_op_f32(f32(-1f) * -1205f));
}

