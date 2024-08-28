struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 9>;

var<private> global3: f32;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_1) -> u32 {
    global3 = _wgslsmith_div_f32(global1.d.x, arg_2.c);
    global2 = array<Struct_1, 9>();
    let var_0 = Struct_3(arg_2, _wgslsmith_f_op_f32(max(arg_2.c, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b * global1.d.x), 992f)))), Struct_1((select(vec2<u32>(1u, global0.x), u_input.b.xz, global1.a.yy) ^ global1.c.d.zy) >> (reverseBits(~vec2<u32>(global1.c.a.x, arg_2.d.x)) % vec2<u32>(32u)), !any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(arg_2.c * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1000f))))), ~(global1.c.d & arg_2.d)), min(_wgslsmith_mult_vec2_u32(vec2<u32>(~0u, 0u), _wgslsmith_sub_vec2_u32(vec2<u32>(80065u, u_input.c), ~vec2<u32>(global1.c.a.x, arg_2.a.x))), ~(~arg_2.a | arg_2.d.zz)));
    global0 = ~vec2<u32>(global1.c.a.x, u_input.d);
    var var_1 = vec3<bool>(global1.a.x, all(select(vec2<bool>(any(vec2<bool>(global1.c.b, false)), false), vec2<bool>(true, true), select(global1.a.zw, vec2<bool>(var_0.c.b, global1.a.x), any(global1.a)))), all(!select(vec2<bool>(arg_2.b, false), global1.a.zz, global1.a.wx)) || global1.c.b);
    return _wgslsmith_dot_vec2_u32(~(~select(var_0.d, ~vec2<u32>(9079u, var_0.a.d.x), true)), vec2<u32>(55705u, arg_2.a.x));
}

fn func_2() -> Struct_2 {
    var var_0 = 23948u > abs(_wgslsmith_sub_u32(0u >> (global0.x % 32u), 35256u));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.c)) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1060f - _wgslsmith_f_op_f32(-global1.c.c))));
    var var_1 = vec4<u32>(u_input.c, global1.c.d.x, _wgslsmith_dot_vec2_u32(firstLeadingBit(~(~u_input.b.xx)), vec2<u32>(u_input.d, ~0u << (~global1.c.d.x % 32u))), global0.x);
    var var_2 = -33956i;
    var_1 = select(~vec4<u32>(0u, global0.x, 1u, firstTrailingBit(4294967295u)), _wgslsmith_mod_vec4_u32(abs(~vec4<u32>(1u, var_1.x, u_input.b.x, global0.x)), abs(vec4<u32>(~global0.x, select(global0.x, global0.x, global1.c.b), ~1u, 20587u))), !global1.a);
    return Struct_2(vec4<bool>(all(vec3<bool>(global1.c.b, true, 28895u != global0.x)), !(!(47672u > global0.x)), !global1.c.b, !any(vec2<bool>(false, global1.c.b))), global1.d.x, Struct_1(u_input.b.xz, !(-273f < global1.e.x) & true, global1.b, _wgslsmith_mod_vec3_u32(min(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 1u, var_1.x), vec3<u32>(0u, 4294967295u, 22727u)), vec3<u32>(1u, 1u, var_1.x)), vec3<u32>(func_3(-2284i, u_input.a.x, global1.c), ~43883u, 61223u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(global1.e, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.d.x, -2488f, global1.c.c, 177f), _wgslsmith_div_vec4_f32(global1.d, global1.d), select(global1.a, vec4<bool>(global1.a.x, true, false, false), false))), true)))), global1.e);
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = func_2();
    var var_1 = arg_2;
    let var_2 = arg_0;
    let var_3 = _wgslsmith_add_vec2_i32(select(-vec2<i32>(28090i, -2147483647i), vec2<i32>(2601i, -2147483647i), arg_1 == 1u) >> (select(~vec2<u32>(var_1.c.a.x, u_input.d), _wgslsmith_mod_vec2_u32(arg_3.a, u_input.b.zz), false) % vec2<u32>(32u)), max(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, -2147483647i), u_input.a.xz)), vec2<i32>(arg_0, 0i))) ^ u_input.a.zy;
    let var_4 = Struct_4(Struct_3(arg_2.c, arg_3.c, arg_3, select(func_2().c.d.yx, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(72713u, 0u), var_1.c.a), abs(23614u)), !all(var_0.a))), arg_3.a.x & firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.d.x, global0.x, var_0.c.d.x), vec3<u32>(1u, 0u, 24121u))), func_2());
    return arg_2.a;
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<bool>) -> Struct_4 {
    var var_0 = global1.a;
    let var_1 = !(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.d.x, global0.x, 18217u, 1u), ~vec4<u32>(39775u, global1.c.a.x, 0u, u_input.b.x))) > global1.c.a.x);
    global1 = func_2();
    let var_2 = Struct_4(Struct_3(Struct_1(vec2<u32>(_wgslsmith_div_u32(37730u, 4294967295u), func_2().c.a.x), global1.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-432f * -1000f), global1.b)), vec3<u32>(1u, ~92069u, 0u)), _wgslsmith_f_op_f32(sign(global1.e.x)), Struct_1(vec2<u32>(_wgslsmith_mod_u32(1u, global0.x), firstTrailingBit(2484u)), func_2().a.x & all(arg_0.zz), -247f, vec3<u32>(~global0.x, u_input.b.x, 58357u)), global1.c.a), min(_wgslsmith_sub_u32(max(u_input.c, ~global0.x), 1u), 20478u), Struct_2(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.c.c)))), global2[_wgslsmith_index_u32(19636u, 9u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.e * global1.d))), global1.d));
    let var_3 = Struct_1(vec2<u32>(var_2.b, u_input.d) << (vec2<u32>(4294967295u << (~u_input.d % 32u), select(_wgslsmith_div_u32(0u, u_input.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, var_2.a.c.a.x), vec3<u32>(global0.x, 21121u, 1u)), all(vec4<bool>(var_0.x, var_2.a.a.b, var_2.c.c.b, arg_0.x)))) % vec2<u32>(32u)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-521f, var_2.c.d.x) * global1.e.x) * _wgslsmith_f_op_f32(f32(-1f) * -456f)), countOneBits(global1.c.d) << (select(~vec3<u32>(u_input.c, u_input.d, u_input.c), vec3<u32>(15779u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 3937u, global0.x, 0u), vec4<u32>(4294967295u, global1.c.a.x, var_2.a.a.a.x, 51330u)), var_2.b | 4294967295u), !any(arg_1.xyw)) % vec3<u32>(32u)));
    return var_2;
}

fn func_1() -> bool {
    let var_0 = u_input.a.wz;
    let var_1 = func_5(global1.a, select(func_4(u_input.a.x, (40501u >> (global0.x % 32u)) & (15232u >> (global1.c.a.x % 32u)), func_2(), func_2().c), vec4<bool>(!(!global1.a.x), true, global1.a.x, global1.a.x), !((global1.e.x != -1035f) && true)));
    var var_2 = var_0;
    var var_3 = var_1;
    global3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_3.c.c.c)), var_3.a.c.c) - global1.d.x))));
    return !all(var_1.c.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global1.d.x;
    let var_0 = Struct_2(select(global1.a, !(!(!vec4<bool>(true, global1.c.b, global1.c.b, global1.c.b))), func_1()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.d.x))) * _wgslsmith_f_op_f32(-global1.e.x)), global2[_wgslsmith_index_u32(~31957u, 9u)], _wgslsmith_div_vec4_f32(global1.e, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-global1.e)))), func_5(!select(!global1.a, !global1.a, global1.a), func_5(func_2().a, vec4<bool>(true, false == global1.c.b, true, true)).c.a).c.d);
    let var_1 = func_5(var_0.a, vec4<bool>(!func_5(vec4<bool>(true, global1.a.x, true, true), !vec4<bool>(var_0.a.x, var_0.a.x, true, global1.a.x)).a.a.b, global1.c.b, true, any(var_0.a.yx))).a;
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(311f)) + -969f);
    let var_2 = _wgslsmith_mult_i32(~u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-(u_input.a.x ^ u_input.a.x), _wgslsmith_dot_vec2_i32(~vec2<i32>(-12879i, u_input.a.x), u_input.a.wz)), u_input.a.yy));
    var var_3 = var_1.a.b;
    let var_4 = _wgslsmith_f_op_f32(exp2(var_1.c.c));
    global2 = array<Struct_1, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.a.x, var_2, global1.c.b), min(~(~(~u_input.c)), var_1.d.x), ~(~vec4<u32>(1u, ~var_1.a.d.x, _wgslsmith_mult_u32(var_0.c.d.x, 15962u), ~u_input.c)), 4294967295u, -1028f);
}

