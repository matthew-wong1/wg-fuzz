struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24>;

var<private> global1: Struct_1;

var<private> global2: array<u32, 16>;

var<private> global3: array<i32, 17> = array<i32, 17>(i32(-2147483648), 1i, -38486i, -72141i, -27542i, -5217i, 1i, 1i, 0i, 0i, 30081i, 24893i, 2147483647i, 32603i, 35712i, 32931i, i32(-2147483648));

var<private> global4: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(667f, _wgslsmith_f_op_f32(min(2044f, -115f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -648f) - -1467f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-233f + _wgslsmith_f_op_f32(-482f + -1000f)), -393f)));
    let var_1 = -1000f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    let var_2 = ~8592i;
    var var_3 = 4389i;
    let var_4 = global4.b.x;
    return vec3<bool>(all(!select(!vec2<bool>(var_1, false), !vec2<bool>(global0[_wgslsmith_index_u32(global4.b.x, 24u)], global0[_wgslsmith_index_u32(13592u, 24u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 24u)], false))), !all(vec3<bool>(true, any(vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 24u)], var_1)), global0[_wgslsmith_index_u32(0u | arg_0.x, 24u)])), any(select(!select(vec2<bool>(var_1, global0[_wgslsmith_index_u32(arg_0.x, 24u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(global4.b.x, 24u)]), vec2<bool>(global0[_wgslsmith_index_u32(global4.b.x, 24u)], false)), select(!vec2<bool>(false, global0[_wgslsmith_index_u32(global4.b.x, 24u)]), select(vec2<bool>(var_1, var_1), vec2<bool>(false, true), global0[_wgslsmith_index_u32(global4.b.x, 24u)]), true), !select(false, true, true))));
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = _wgslsmith_dot_vec3_i32(abs(vec3<i32>(countOneBits(_wgslsmith_div_i32(u_input.c.x, global3[_wgslsmith_index_u32(u_input.b, 17u)])), 2756i, u_input.a.x)), u_input.a.xzz);
    var var_1 = vec3<bool>(false, true, arg_0);
    var_1 = !func_3(firstLeadingBit(~global4.b.xx));
    let var_2 = !any(var_1.zx);
    var var_3 = var_1.x;
    return false;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    global3 = array<i32, 17>();
    var var_0 = select(select(vec2<bool>(true, arg_0), select(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_2.b.x, 24u)]), vec2<bool>(false, arg_0), vec2<bool>(arg_1, global0[_wgslsmith_index_u32(u_input.b, 24u)])), vec2<bool>(func_2(false), true), false), vec2<bool>(any(!vec4<bool>(false, false, arg_1, false)), true)), select(!select(vec2<bool>(false, arg_0), !vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 24u)]), true), select(vec2<bool>(true, false), !select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_0), vec2<bool>(arg_1, true)), func_3(arg_2.b.zy).xz), select(!select(vec2<bool>(false, global0[_wgslsmith_index_u32(5718u, 24u)]), vec2<bool>(global0[_wgslsmith_index_u32(global1.b.x, 24u)], global0[_wgslsmith_index_u32(87459u, 24u)]), vec2<bool>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.b.x, 16u)], 24u)], false)), !vec2<bool>(true, arg_1), vec2<bool>(true, true))), select(select(!vec2<bool>(arg_1, true), select(vec2<bool>(true, arg_0), !vec2<bool>(true, arg_1), any(vec3<bool>(arg_0, arg_1, arg_1))), func_3(~arg_2.b.yy).zz), vec2<bool>(!all(vec3<bool>(true, arg_0, true)), true), arg_1));
    var var_1 = ~u_input.c.x;
    global4 = Struct_1(u_input.a.x, firstLeadingBit(_wgslsmith_mult_vec3_u32((vec3<u32>(29875u, global4.b.x, global4.b.x) | vec3<u32>(global4.b.x, 151902u, 62776u)) | _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 4294967295u, 20608u), global4.b), ~(~global1.b))));
    var var_2 = select(_wgslsmith_div_vec2_u32(abs(vec2<u32>(~14717u, global2[_wgslsmith_index_u32(17314u, 16u)])), vec2<u32>(4294967295u, 1u) << (_wgslsmith_mod_vec2_u32(global1.b.yz << (arg_2.b.zx % vec2<u32>(32u)), vec2<u32>(global1.b.x, global2[_wgslsmith_index_u32(74311u, 16u)])) % vec2<u32>(32u))), global4.b.xy, global1.a < _wgslsmith_mult_i32(global1.a, arg_2.a));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(global0[_wgslsmith_index_u32(u_input.b, 24u)], false, Struct_1(abs(global1.a), select(global4.b, _wgslsmith_div_vec3_u32(vec3<u32>(110784u, 1u, 0u), vec3<u32>(3810u, 0u, global1.b.x) ^ vec3<u32>(77138u, global4.b.x, 55970u)), true)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, min(1i, countOneBits(1i)), global4.a), vec3<i32>(-11703i, -global4.a, global4.a)));
    let var_0 = abs(_wgslsmith_clamp_u32(func_1(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b, global1.b.x), 24u)], true, Struct_1(_wgslsmith_mult_i32(17687i, -11429i), global1.b), ~abs(vec3<i32>(global4.a, global1.a, global4.a))).b.x, ~(~abs(1733u)), ~1u));
    global1 = func_1(global0[_wgslsmith_index_u32(~(27451u >> (global4.b.x % 32u)), 24u)], any(vec3<bool>(false, global0[_wgslsmith_index_u32(4087u, 24u)] & !global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(85795u & (38929u & u_input.b), 24u)])), Struct_1(36564i, _wgslsmith_div_vec3_u32(vec3<u32>(firstTrailingBit(var_0), 1u << (var_0 % 32u), ~var_0), ~global4.b)), u_input.a.xyz);
    let var_1 = func_1(true || any(!select(vec3<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(var_0, 24u)]), vec3<bool>(global0[_wgslsmith_index_u32(global4.b.x, 24u)], global0[_wgslsmith_index_u32(global4.b.x, 24u)], global0[_wgslsmith_index_u32(40981u, 24u)]), false)), global0[_wgslsmith_index_u32(32639u, 24u)], Struct_1(0i, _wgslsmith_div_vec3_u32(select(global4.b, vec3<u32>(1u, 12158u, u_input.b) | global4.b, global0[_wgslsmith_index_u32(~global1.b.x, 24u)]), ~(~vec3<u32>(9086u, 15502u, 18257u)))), u_input.a.ywx);
    global1 = var_1;
    let var_2 = abs(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_add_u32(33807u, var_1.b.x), global2[_wgslsmith_index_u32(global4.b.x | 4294967295u, 16u)]), ~global4.b.yx, global4.b.yz), vec2<u32>(48902u & ~global4.b.x, _wgslsmith_mult_u32(~4294967295u, ~596u))));
    let var_3 = func_1(global0[_wgslsmith_index_u32(~global4.b.x >> (1u % 32u), 24u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1390f)) * 713f)) != -1000f, func_1(true, global0[_wgslsmith_index_u32(global4.b.x, 24u)], var_1, u_input.a.yzw), ~select(abs(vec3<i32>(1i, 2147483647i, -32119i)), _wgslsmith_sub_vec3_i32(u_input.a.wwz, vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 17u)], -2147483647i, global4.a)) & _wgslsmith_mod_vec3_i32(u_input.a.wwx, vec3<i32>(-1i, -9732i, var_1.a)), vec3<bool>(false, true, global0[_wgslsmith_index_u32(~global1.b.x, 24u)])));
    var var_4 = !(!select(vec2<bool>(select(global0[_wgslsmith_index_u32(63559u, 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]), !global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 16u)], 24u)]), select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(global0[_wgslsmith_index_u32(14050u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)])), vec2<bool>(global0[_wgslsmith_index_u32(select(4294967295u, var_2.x, true), 24u)], !global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.b.x, 16u)], 24u)])));
    var var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(~global1.b.x, 17u)]);
}

