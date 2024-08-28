struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<bool>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: f32,
    d: i32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 21> = array<f32, 21>(2654f, -1146f, 397f, 685f, -179f, -972f, -1270f, -1731f, -1588f, 302f, -385f, -1000f, -1000f, 530f, 1045f, -209f, 1761f, -1051f, -1344f, -454f, 525f);

var<private> global1: array<vec3<bool>, 20>;

var<private> global2: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(-8913i, -3008i, 4558i), vec3<i32>(-15740i, 2147483647i, i32(-2147483648)), vec3<i32>(-36006i, 1i, -6431i), vec3<i32>(-1i, i32(-2147483648), -75324i), vec3<i32>(2147483647i, 1i, 55555i), vec3<i32>(i32(-2147483648), 1559i, 2147483647i));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: u32, arg_3: vec2<bool>) -> vec3<i32> {
    let var_0 = _wgslsmith_add_u32(0u, 0u);
    global0 = array<f32, 21>();
    let var_1 = Struct_5(Struct_2(_wgslsmith_f_op_f32(max(arg_1.x, 510f)), Struct_1(_wgslsmith_div_vec2_u32(max(vec2<u32>(0u, 97827u), vec2<u32>(4294967295u, arg_0.x)), ~vec2<u32>(arg_0.x, 1u)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_0), vec2<u32>(55048u, 63876u)), vec2<u32>(u_input.b.x, 48678u)), !global1[_wgslsmith_index_u32(0u, 20u)], all(vec3<bool>(true, arg_3.x, false)), u_input.c.yxx), Struct_1(_wgslsmith_mod_vec2_u32(~vec2<u32>(var_0, var_0), min(arg_0.xx, arg_0.yz)), ~(arg_0.zx & vec2<u32>(u_input.b.x, arg_0.x)), vec3<bool>(arg_3.x, true, all(arg_3)), false, _wgslsmith_mod_vec3_u32(select(vec3<u32>(arg_0.x, u_input.a, arg_0.x), vec3<u32>(u_input.b.x, u_input.c.x, 1u), arg_3.x), _wgslsmith_mult_vec3_u32(vec3<u32>(68110u, arg_0.x, 48200u), vec3<u32>(39067u, 50888u, arg_2))))));
    global2 = array<vec3<i32>, 6>();
    let var_2 = ~_wgslsmith_sub_i32(firstTrailingBit(reverseBits(1i)) | 0i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -33285i), max(vec2<i32>(0i, 2147483647i), vec2<i32>(0i, -1i))));
    return -global2[_wgslsmith_index_u32(45006u, 6u)];
}

fn func_2() -> vec4<bool> {
    let var_0 = vec4<i32>(7138i, -5315i, ~0i, _wgslsmith_dot_vec3_i32(func_3(u_input.c.wyz, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(663f, global0[_wgslsmith_index_u32(51115u, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)]), vec3<f32>(global0[_wgslsmith_index_u32(9651u, 21u)], 430f, global0[_wgslsmith_index_u32(u_input.c.x, 21u)]), true)))), u_input.a, vec2<bool>(true, true)), min(vec3<i32>(-95009i, 8639i << (0u % 32u), abs(2147483647i)), -vec3<i32>(0i, -50755i, 2147483647i) << (select(vec3<u32>(24712u, 4294967295u, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.a), vec3<bool>(false, false, false)) % vec3<u32>(32u)))));
    let var_1 = u_input.a;
    global0 = array<f32, 21>();
    let var_2 = Struct_4(~0u, Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(~var_1, 21u)], 276f, 1224f, global0[_wgslsmith_index_u32(var_1, 21u)]) - vec4<f32>(global0[_wgslsmith_index_u32(countOneBits(var_1), 21u)], _wgslsmith_f_op_f32(-956f - global0[_wgslsmith_index_u32(u_input.b.x, 21u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 21u)] + 436f), -267f)), vec2<f32>(735f, _wgslsmith_f_op_f32(f32(-1f) * -391f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(var_1, 21u)])))), -53439i);
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.b.a - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(758f, var_2.c, 3200f, global0[_wgslsmith_index_u32(79565u, 21u)])))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_2.b.a)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_2.b.a + var_2.b.a))))), var_2.b.a);
    return vec4<bool>(select(-39441i >= var_2.d, any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(global1[_wgslsmith_index_u32(0u, 20u)], vec3<bool>(false, false, true), vec3<bool>(true, false, false)))), select((var_0.x <= var_2.d) && true, all(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), true)))), false, false, true);
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = any(func_2()) & arg_0;
    global1 = array<vec3<bool>, 20>();
    var var_1 = ~global2[_wgslsmith_index_u32(u_input.b.x, 6u)];
    var var_2 = vec2<bool>(!arg_0, true);
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-914f, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(1u, 4294967295u, u_input.c.x, 13738u)), 21u)], _wgslsmith_f_op_f32(-325f + global0[_wgslsmith_index_u32(50613u, 21u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 21u)] * global0[_wgslsmith_index_u32(u_input.b.x, 21u)])))))));
    return Struct_1(min(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.zy, vec2<u32>(8778u, 4294967295u)), vec2<u32>(15101u, 39696u) >> (u_input.c.ww % vec2<u32>(32u))), ~vec2<u32>(u_input.c.x, u_input.b.x)) ^ min(vec2<u32>(u_input.a, u_input.b.x), vec2<u32>(reverseBits(3851u), u_input.c.x)), vec2<u32>(u_input.b.x, u_input.c.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.c.xy, _wgslsmith_sub_vec2_u32(~u_input.c.yx, max(vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(u_input.c.zw, u_input.c.yw)))), 20u)], var_2.x, ~(~_wgslsmith_clamp_vec3_u32(u_input.c.xwy ^ u_input.b.xzz, ~u_input.c.xww, countOneBits(u_input.b.xyz))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3) -> Struct_3 {
    var var_0 = Struct_1(~arg_1.b.a, ~arg_1.b.a, !vec3<bool>(true, arg_1.c.d, true), arg_1.b.c.x, min(vec3<u32>(~(arg_0.b.a.x << (arg_0.c.b.x % 32u)), ~14184u, ~4294967295u), arg_0.b.e));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(910f, _wgslsmith_f_op_f32(min(-1060f, -1554f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -950f)), _wgslsmith_f_op_f32(floor(arg_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -359f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-248f - _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(2416u, 21u)], arg_2.b.x))), global0[_wgslsmith_index_u32(12996u, 21u)], arg_2.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(336f, arg_0.a, -1642f)))))), arg_0.b.d));
    var_0 = arg_0.b;
    global2 = array<vec3<i32>, 6>();
    var_0 = Struct_1(arg_0.b.b, _wgslsmith_sub_vec2_u32(var_0.a, arg_0.c.b), func_1(true).c, all(func_2().wyy), vec3<u32>(_wgslsmith_div_u32(abs(~u_input.c.x), var_0.e.x), var_0.a.x, _wgslsmith_div_u32(u_input.b.x, 0u)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(4294967295u, func_4(Struct_2(global0[_wgslsmith_index_u32(4294967295u, 21u)], func_1(true), func_1(false)), Struct_2(_wgslsmith_f_op_f32(select(-374f, global0[_wgslsmith_index_u32(4294967295u, 21u)], true)), Struct_1(firstLeadingBit(u_input.b.zx), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.ww, u_input.b.zz), !global1[_wgslsmith_index_u32(49280u, 20u)], -2017f >= global0[_wgslsmith_index_u32(22112u, 21u)], abs(u_input.b.zxx)), Struct_1(u_input.b.yz, u_input.c.zw, func_1(true).c, func_2().x, u_input.c.wzx)), Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(704f, global0[_wgslsmith_index_u32(115776u, 21u)], global0[_wgslsmith_index_u32(55920u, 21u)], global0[_wgslsmith_index_u32(u_input.a, 21u)])) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(593f, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(73399u, 21u)], global0[_wgslsmith_index_u32(17772u, 21u)])))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 21u)], 311f)))))), _wgslsmith_div_f32(1433f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(54675u, 21u)]) * -837f) - global0[_wgslsmith_index_u32(~4294967295u, 21u)])), 1i);
    var var_1 = var_0.d;
    let var_2 = var_0.d;
    let var_3 = Struct_4(~43462u, var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -802f), var_0.d);
    var var_4 = Struct_5(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1597f * -757f) + global0[_wgslsmith_index_u32(~var_0.a, 21u)])), Struct_1(select(u_input.c.xw, u_input.c.yy, false) << (vec2<u32>(u_input.c.x, 1u) % vec2<u32>(32u)), vec2<u32>(var_3.a, u_input.c.x), vec3<bool>(false, false, any(vec4<bool>(true, false, true, true))), false, vec3<u32>(_wgslsmith_div_u32(103493u, u_input.b.x), func_1(false).b.x, ~8645u)), func_1((var_0.a ^ 99037u) >= _wgslsmith_dot_vec3_u32(u_input.c.zxw, u_input.c.www))));
    global1 = array<vec3<bool>, 20>();
    var var_5 = vec3<u32>(~u_input.a, var_3.a, u_input.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b.b) * _wgslsmith_f_op_vec2_f32(vec2<f32>(185f, 1000f) * vec2<f32>(334f, var_3.b.a.x))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.b.b)))));
}

