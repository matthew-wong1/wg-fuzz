struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: Struct_2 = Struct_2(-631f, true);

var<private> global2: array<i32, 9> = array<i32, 9>(1i, 39250i, 1i, 0i, 20355i, 51008i, i32(-2147483648), 35150i, 49678i);

var<private> global3: vec3<f32> = vec3<f32>(-576f, -1492f, 456f);

var<private> global4: array<bool, 26>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = u_input.c;
    let var_1 = Struct_1(true, _wgslsmith_div_u32(18864u, global0[_wgslsmith_index_u32(~68243u, 9u)]), -vec4<i32>(global2[_wgslsmith_index_u32(~14932u, 9u)], -21i, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c.x, var_0.x), vec2<i32>(0i, -2147483647i)), vec2<i32>(1i, var_0.x)), 22584i), u_input.a, reverseBits(~u_input.a.x));
    global0 = array<u32, 9>();
    var var_2 = !vec4<bool>(global4[_wgslsmith_index_u32(~firstTrailingBit(4294967295u), 26u)] | all(select(vec4<bool>(var_1.a, false, false, false), vec4<bool>(false, global1.b, true, arg_0.b), true)), u_input.a.x > _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(6430u, 9u)] >> (4774u % 32u), 40176u), all(vec3<bool>(var_1.a && global1.b, true, true)), !select(var_1.a || global4[_wgslsmith_index_u32(var_1.b, 26u)], all(vec3<bool>(arg_0.b, global1.b, global1.b)), global4[_wgslsmith_index_u32(firstTrailingBit(var_1.b), 26u)]));
    var var_3 = vec4<f32>(global1.a, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-468f + 364f)), -555f);
    return Struct_1(all(vec2<bool>(var_1.a, arg_0.b)), u_input.a.x, vec4<i32>(max(u_input.c.x, var_0.x), 0i, ~_wgslsmith_mult_i32(u_input.b, var_0.x), global2[_wgslsmith_index_u32(firstTrailingBit(reverseBits(var_1.e)), 9u)]), vec3<u32>(_wgslsmith_mult_u32(min(4294967295u, ~22146u), ~_wgslsmith_mult_u32(var_1.d.x, u_input.a.x)), u_input.a.x, 1u), var_1.e);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: bool) -> vec4<i32> {
    let var_0 = Struct_2(global1.a, arg_2);
    let var_1 = vec4<bool>(!all(vec3<bool>(global4[_wgslsmith_index_u32(64985u, 26u)], var_0.b, false)) & any(vec2<bool>(true, true)), var_0.b, any(vec2<bool>(global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 26u)], true)), true);
    global1 = var_0;
    var var_2 = !(!select(vec4<bool>(global1.b, var_0.b, !var_0.b, false), select(select(vec4<bool>(var_1.x, false, global1.b, global1.b), vec4<bool>(var_1.x, global1.b, global1.b, var_0.b), false), select(var_1, var_1, true), true), false || all(var_1.xyw)));
    var var_3 = global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], 26u)];
    return ~(~(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.d.x, 1i, u_input.c.x), vec4<i32>(42487i, u_input.b, global2[_wgslsmith_index_u32(0u, 9u)], -22431i), vec4<i32>(2147483647i, 7966i, -18762i, 1i))));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    var var_0 = vec4<bool>(-1580f < global3.x, true, all(!vec3<bool>(arg_1.a, true, func_2(Struct_2(global3.x, global4[_wgslsmith_index_u32(40997u, 26u)])).a)), false);
    let var_1 = arg_2.c.xx;
    let var_2 = func_2(Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(105f * global1.a) * -225f))), true));
    let var_3 = Struct_2(global3.x, var_2.a);
    var_0 = !(!(!select(vec4<bool>(global4[_wgslsmith_index_u32(50521u, 26u)], true, global1.b, global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2.e, 9u)], 26u)]), !vec4<bool>(global4[_wgslsmith_index_u32(58553u, 26u)], false, false, true), !vec4<bool>(true, arg_1.a, true, var_0.x))));
    return Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(903f * 1000f))), -237f))), !var_2.a);
}

fn func_1(arg_0: Struct_2) -> vec3<u32> {
    global0 = array<u32, 9>();
    global1 = func_4(u_input.a.x, func_2(arg_0), Struct_1(2147483647i <= -global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 1u, func_3(vec4<u32>(~u_input.a.x, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 9u)], 21298u), ~44163u, ~global0[_wgslsmith_index_u32(10893u, 9u)]), global3.x, any(!vec3<bool>(true, arg_0.b, true))), reverseBits(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(101926u, global0[_wgslsmith_index_u32(0u, 9u)], 0u)), ~vec3<u32>(1u, 6778u, 4294967295u), ~vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], 9u)], 9u)]))), _wgslsmith_add_u32(~(~4294967295u), 0u)));
    let var_0 = arg_0;
    var var_1 = select(!(!(!vec2<bool>(var_0.b, false))), vec2<bool>(func_2(arg_0).a, var_0.b), vec2<bool>(select(true, false, var_0.b), all(vec4<bool>(true, var_0.b, any(vec3<bool>(false, true, global4[_wgslsmith_index_u32(u_input.a.x, 26u)])), global0[_wgslsmith_index_u32(u_input.a.x, 9u)] > 111606u))));
    var var_2 = func_2(var_0);
    return vec3<u32>(min(~u_input.a.x, global0[_wgslsmith_index_u32(func_2(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -661f), global4[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4866u, 9u)] ^ 50492u, 26u)])).e, 9u)]), ~var_2.e, _wgslsmith_mod_u32(var_2.d.x, reverseBits(_wgslsmith_mod_u32(u_input.a.x, var_2.e & 75683u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d.x;
    let var_1 = Struct_1(global1.b, countOneBits(firstLeadingBit(31895u)), max(select(_wgslsmith_sub_vec4_i32(vec4<i32>(57985i, var_0, u_input.c.x, u_input.b), vec4<i32>(1i, -2147483647i, -12636i, 0i) >> (vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)], 4294967295u) % vec4<u32>(32u))), ~(-vec4<i32>(global2[_wgslsmith_index_u32(20047u, 9u)], u_input.b, global2[_wgslsmith_index_u32(20904u, 9u)], var_0)), !(!vec4<bool>(global4[_wgslsmith_index_u32(32548u, 26u)], global4[_wgslsmith_index_u32(2424u, 26u)], false, global4[_wgslsmith_index_u32(4294967295u, 26u)]))), vec4<i32>(_wgslsmith_mult_i32(var_0, var_0), _wgslsmith_mult_i32(2147483647i, abs(1i)), min(i32(-1i) * -6975i, _wgslsmith_mod_i32(var_0, u_input.d.x)), firstLeadingBit(24225i))), func_1(Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(385f, global1.a), _wgslsmith_div_f32(-848f, global1.a)), select(any(vec3<bool>(true, global4[_wgslsmith_index_u32(1u, 26u)], global1.b)), true, false))), u_input.a.x);
    let var_2 = var_1.c;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1456f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + 675f) + -720f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(803f, global3.x))))))), -1000f, global1.a);
    global2 = array<i32, 9>();
    global4 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.d.yy);
}

