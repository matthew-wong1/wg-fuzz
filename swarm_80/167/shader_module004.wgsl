struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, false, false, false, true, false, true, false, true, false, true, true, false);

var<private> global1: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<f32>(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(640f + global1.a) * -2742f), global1.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1158f - 162f) - _wgslsmith_f_op_f32(global1.a * global1.a)), global1.a) * _wgslsmith_f_op_f32(585f * global1.a)));
    global0 = array<bool, 13>();
    var var_1 = firstLeadingBit(_wgslsmith_add_u32(u_input.a, abs(u_input.a)));
    global1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -606f));
    let var_2 = Struct_2(~vec4<u32>(4294967295u, 29609u, _wgslsmith_dot_vec2_u32(u_input.c, u_input.b.yx) | 34539u, _wgslsmith_mult_u32(u_input.c.x, 80053u)));
    return Struct_2(var_2.a);
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    let var_0 = Struct_2(func_2().a);
    var var_1 = vec3<bool>(true, global0[_wgslsmith_index_u32(countOneBits(firstLeadingBit(_wgslsmith_mod_u32(6029u, u_input.b.x)) >> (u_input.c.x % 32u)), 13u)], false);
    var var_2 = arg_0;
    var var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-459f, 269f, global1.a)), vec3<f32>(919f, global1.a, 434f))) - vec3<f32>(global1.a, _wgslsmith_f_op_f32(-global1.a), -994f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + _wgslsmith_f_op_f32(global1.a - global1.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2375f - -417f)), global1.a))));
    var var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x * -159f))))))));
    return func_2();
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = select(select(select(select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], false, true), vec4<bool>(true, true, global0[_wgslsmith_index_u32(7738u, 13u)], true), global0[_wgslsmith_index_u32(0u, 13u)]), !vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)], true, global0[_wgslsmith_index_u32(4294967295u, 13u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], true)), !select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(arg_2.x, 13u)], global0[_wgslsmith_index_u32(0u, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], false, true, global0[_wgslsmith_index_u32(u_input.a, 13u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], global0[_wgslsmith_index_u32(arg_2.x, 13u)], true)), !(!vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(0u, 13u)]))), select(select(!vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(arg_1.a.x, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], false), vec4<bool>(true, true, true, true), false), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a.x << (arg_1.a.x % 32u), 13u)], global0[_wgslsmith_index_u32(45512u, 13u)], !global0[_wgslsmith_index_u32(31913u, 13u)], global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), true), !(!(!vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2.x, 13u)], false, false)))), !select(vec4<bool>(global0[_wgslsmith_index_u32(arg_2.x, 13u)], global0[_wgslsmith_index_u32(u_input.c.x, 13u)] | false, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], false), select(select(vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 13u)], global0[_wgslsmith_index_u32(arg_1.a.x, 13u)], global0[_wgslsmith_index_u32(arg_1.a.x, 13u)], false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(4294967295u, 13u)], false), vec4<bool>(global0[_wgslsmith_index_u32(43380u, 13u)], global0[_wgslsmith_index_u32(arg_2.x, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], true)), !vec4<bool>(true, global0[_wgslsmith_index_u32(111899u, 13u)], false, global0[_wgslsmith_index_u32(1u, 13u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(8269u, 13u)], true, global0[_wgslsmith_index_u32(arg_2.x, 13u)], global0[_wgslsmith_index_u32(arg_2.x, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 13u)], global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(arg_2.x, 13u)], true), global0[_wgslsmith_index_u32(u_input.b.x, 13u)])), select(vec4<bool>(global0[_wgslsmith_index_u32(39687u, 13u)], true, false, true), select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c.x, 13u)], global0[_wgslsmith_index_u32(arg_2.x, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(9111u, 13u)], global0[_wgslsmith_index_u32(9305u, 13u)], global0[_wgslsmith_index_u32(arg_2.x, 13u)], false), false), true)), any(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(38121u, 13u)], false, false, global0[_wgslsmith_index_u32(arg_1.a.x, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 13u)], global0[_wgslsmith_index_u32(arg_1.a.x, 13u)], global0[_wgslsmith_index_u32(36584u, 13u)], false), global0[_wgslsmith_index_u32(arg_2.x, 13u)]))));
    global1 = Struct_1(_wgslsmith_f_op_f32(-1000f * global1.a));
    global1 = Struct_1(global1.a);
    var_0 = !(!vec4<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(1i, arg_0)) < _wgslsmith_sub_i32(34654i, -3766i), var_0.x, true, any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 13u)], false, false))));
    var var_1 = ~vec3<u32>(47783u, arg_2.x, u_input.a);
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-909f)), -1334f));
}

fn func_1() -> i32 {
    global1 = func_4(1i, func_3(select(1u, 4294967295u, global0[_wgslsmith_index_u32(~u_input.a, 13u)]), func_2()), vec2<u32>(firstLeadingBit(firstTrailingBit(firstTrailingBit(1u))), func_3(44294u, Struct_2(select(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u), vec4<u32>(u_input.a, u_input.c.x, 50416u, 1u), true))).a.x));
    var var_0 = _wgslsmith_div_vec3_u32(~func_3(reverseBits(1u), func_2()).a.ywx & u_input.b, reverseBits(u_input.b));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -636f);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(step(-1070f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1, 239f)), _wgslsmith_f_op_f32(-var_1))))), global1.a);
    var_0 = u_input.b;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global0[_wgslsmith_index_u32(67161u, 13u)];
    let var_1 = vec4<bool>(false, true, !(!select(global0[_wgslsmith_index_u32(u_input.a, 13u)] & true, global1.a > -782f, all(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 13u)], global0[_wgslsmith_index_u32(u_input.a, 13u)])))), !(-20698i < func_1()));
    var var_2 = Struct_2(max(~(~firstTrailingBit(vec4<u32>(21857u, 24960u, u_input.c.x, 41149u))), _wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.c.x, 3080u), vec4<u32>(u_input.a, u_input.a, 1u, u_input.b.x))), vec4<u32>(4294967295u, 1u, u_input.a, 4294967295u) >> (~vec4<u32>(u_input.a, 29904u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)))));
    var var_3 = var_2.a.x & var_2.a.x;
    global1 = func_4(-33376i, Struct_2(var_2.a), _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(25779u, ~16596u)), vec2<u32>(~0u, 1u)));
    var_3 = _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, var_2.a.x), firstLeadingBit(func_2().a.x)), 73697u, 103194u, 12155u), vec4<u32>(min(u_input.b.x, 382u), 4294967295u, 37703u, 1u));
    var var_4 = !(!all(vec3<bool>(var_1.x, global0[_wgslsmith_index_u32(1u, 13u)], true)) || all(var_1));
    var var_5 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_i32(firstTrailingBit(~vec4<i32>(25688i, -1i, -85642i, -3486i)) >> (~vec4<u32>(1u, var_2.a.x, var_2.a.x, var_5.a.x) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mod_i32(i32(-1i) * -1i, countOneBits(-1i)), 1i, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, -34524i, 0i), vec4<i32>(0i, 0i, -17391i, -1i)) ^ 42329i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(global1.a)))), _wgslsmith_f_op_f32(-func_4(-1i, Struct_2(vec4<u32>(0u, var_5.a.x, var_5.a.x, u_input.b.x)), var_2.a.xz).a))), ~(-30626i), global1.a);
}

