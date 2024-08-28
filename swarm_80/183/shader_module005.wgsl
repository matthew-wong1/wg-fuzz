struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_1, 23>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = ~(~(~max(_wgslsmith_sub_vec3_u32(vec3<u32>(13933u, arg_2.c, 1u), vec3<u32>(arg_2.c, 8991u, 0u)), vec3<u32>(0u, arg_2.a, arg_2.a) << (vec3<u32>(arg_0.x, 1u, 4294967295u) % vec3<u32>(32u)))));
    global0 = array<Struct_1, 24>();
    var var_1 = !global1.wyx;
    var var_2 = true;
    let var_3 = true;
    return global0[_wgslsmith_index_u32(11816u, 24u)];
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(vec2<u32>(1u, 1u) >> (~vec2<u32>(arg_1.c, arg_1.a) % vec2<u32>(32u)), vec3<i32>(u_input.a.x ^ 47214i, select(u_input.a.x, -2147483647i, false), ~u_input.a.x), Struct_1(firstLeadingBit(19468u), arg_1.b, 24789u)).b.wyw - arg_1.b.zzx));
    var var_1 = func_2(_wgslsmith_div_vec2_u32(min(vec2<u32>(arg_1.a, arg_1.a) & vec2<u32>(1u, arg_1.c), vec2<u32>(arg_1.a, arg_1.c) | vec2<u32>(54408u, 0u)), _wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(24106u, 0u)), ~vec2<u32>(arg_1.a, 0u))) ^ vec2<u32>(~arg_1.c, _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(arg_1.a, 4294967295u)), vec2<u32>(1u, arg_1.a))), countOneBits(~(~(vec3<i32>(-2147483647i, -27892i, u_input.a.x) | vec3<i32>(u_input.a.x, 13207i, u_input.a.x)))), func_2(~(~abs(vec2<u32>(arg_1.a, arg_1.a))), ~(vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i) | vec3<i32>(49875i, 10364i, u_input.a.x)) >> (vec3<u32>(func_2(vec2<u32>(4294967295u, 1u), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(4294967295u, vec4<f32>(-1000f, var_0.x, arg_0.x, arg_0.x), 1u)).a, _wgslsmith_mult_u32(58604u, arg_1.c), ~arg_1.c) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(~(~arg_1.a), 24u)]));
    var var_2 = arg_1;
    let var_3 = global0[_wgslsmith_index_u32(min(var_2.c, 3902u), 24u)];
    var_2 = Struct_1(arg_1.a, arg_0, ~4294967295u);
    return func_2(vec2<u32>(min(~(~var_1.c), _wgslsmith_mod_u32(~var_2.a, min(0u, 1u))), ~_wgslsmith_add_u32(~var_2.c, abs(arg_1.a))), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(countOneBits(_wgslsmith_sub_u32(1u, arg_1.c >> (4294967295u % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2639f, arg_1.b.x, 288f, 554f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.b.x, var_3.b.x, -1436f, var_3.b.x), vec4<f32>(var_0.x, var_0.x, var_1.b.x, var_3.b.x), vec4<bool>(global1.x, true, false, false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3.b))), arg_1.c & var_1.c));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(ceil(arg_0.b.x)), _wgslsmith_div_f32(arg_1.b.x, 768f), _wgslsmith_f_op_f32(-arg_1.b.x)) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1411f, arg_1.b.x, arg_0.b.x, -607f)))))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-503f, 642f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -326f), _wgslsmith_f_op_f32(288f * _wgslsmith_f_op_f32(sign(225f))))), 905f) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1910f))), _wgslsmith_f_op_f32(sign(-1428f)), -703f, arg_1.b.x), var_0));
    let var_2 = global2[_wgslsmith_index_u32(arg_0.a, 23u)];
    let var_3 = select(global1.zx, !select(select(!global1.xw, select(global1.xx, global1.yw, global1.x), vec2<bool>(global1.x, global1.x)), select(!vec2<bool>(true, global1.x), select(global1.yw, global1.wz, vec2<bool>(true, global1.x)), vec2<bool>(true, global1.x)), global1.zw), !select(vec2<bool>(!global1.x, true), vec2<bool>(true, true), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -32181i, 18895i, u_input.a.x), vec4<i32>(-2147483647i, 18548i, 2147483647i, -2147483647i)) == -u_input.a.x));
    let var_4 = func_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b) - _wgslsmith_f_op_vec4_f32(var_0 * var_2.b))))), func_3(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(var_0, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-178f, -666f, arg_0.b.x, arg_1.b.x), arg_1.b)))), arg_0.b)), func_2(select(abs(arg_2.wx), ~vec2<u32>(48638u, 4294967295u), !var_3.x), vec3<i32>(-1i) * -vec3<i32>(26724i, 0i, u_input.a.x), Struct_1(arg_1.a & 3434u, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(187f, 1782f, -1138f, -718f))), 0u))));
    return global1.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    let var_0 = vec3<bool>(select((-1i & u_input.a.x) > ~51801i, !arg_0, arg_0) & false, !global1.x, func_4(arg_1, func_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.x, 800f, arg_1.b.x, arg_1.b.x)))), func_2(vec2<u32>(arg_1.c, 13703u) >> (vec2<u32>(arg_1.c, arg_1.c) % vec2<u32>(32u)), vec3<i32>(u_input.a.x, arg_2.x, -36166i), Struct_1(4294967295u, vec4<f32>(-1677f, 333f, arg_1.b.x, arg_1.b.x), arg_1.a))), countOneBits(~vec4<u32>(1u, 4294967295u, 1u, 0u)), vec2<u32>(abs(arg_1.a) | ~arg_1.c, 32494u << (~arg_1.a % 32u))));
    global1 = !vec4<bool>(global1.x, any(!select(vec4<bool>(global1.x, true, arg_0, var_0.x), vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, arg_0))), !(arg_1.c == 1u) | arg_0, true);
    let var_1 = arg_1.b.x;
    global2 = array<Struct_1, 23>();
    global0 = array<Struct_1, 24>();
    return _wgslsmith_f_op_f32(arg_1.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(328f + var_1)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<bool>(true, global1.x), global1.wy, global1.x), select(global1.xw, global1.wy, !select(select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, true), global1.x), vec2<bool>(true, true), true)), global1.wy);
    var var_1 = !(!any(vec2<bool>(any(vec4<bool>(var_0.x, false, false, global1.x)), !global1.x)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -326f) * _wgslsmith_f_op_f32(max(-796f, 709f))), -1000f))), -842f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_1(global1.x, Struct_1(9081u, vec4<f32>(475f, -733f, -1189f, -398f), 0u), vec2<i32>(u_input.a.x, u_input.a.x))), _wgslsmith_f_op_f32(581f + 441f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1767f)), func_3(vec4<f32>(-1000f, -1000f, -1027f, 1317f), global2[_wgslsmith_index_u32(4294967295u, 23u)]).b.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_3 = _wgslsmith_mult_u32(1u | select(~abs(4294967295u), abs(_wgslsmith_clamp_u32(5542u, 48016u, 4294967295u)), var_0.x), reverseBits(41742u));
    global1 = !(!select(select(!vec4<bool>(false, true, false, global1.x), select(vec4<bool>(false, global1.x, var_0.x, global1.x), vec4<bool>(true, var_0.x, false, false), false), !var_0.x), vec4<bool>(any(vec4<bool>(global1.x, var_0.x, true, global1.x)), true, all(vec3<bool>(true, global1.x, true)), false), global1.x && false));
    let var_4 = abs(min(select(firstTrailingBit(1i), select(0i, -2147483647i, var_0.x), var_0.x), u_input.a.x) ^ -_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a.x, -1i), -u_input.a.x));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1779f, var_2.x, 1075f, -823f))))))));
    let var_5 = 0u;
    var var_6 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.x)) - var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - var_2.x)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, abs(76298u)), vec3<u32>(1u, ~countOneBits(var_3), ~_wgslsmith_mult_u32(var_5, 4294967295u))));
}

