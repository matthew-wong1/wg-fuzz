struct Struct_1 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 2>;

var<private> global1: Struct_2 = Struct_2(vec3<bool>(false, false, true));

var<private> global2: array<f32, 15> = array<f32, 15>(1282f, 1084f, 464f, 162f, -1035f, 1827f, -2441f, -234f, 544f, 999f, -655f, -1826f, 1000f, 585f, -758f);

var<private> global3: vec4<bool> = vec4<bool>(false, true, false, false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0;
    var var_1 = Struct_2(!select(vec3<bool>(true, true, global3.x), !vec3<bool>(global3.x, false, false), select(!vec3<bool>(global1.a.x, global1.a.x, true), select(vec3<bool>(global3.x, global1.a.x, global3.x), vec3<bool>(true, global1.a.x, global3.x), vec3<bool>(true, global1.a.x, global1.a.x)), 34429u >= u_input.b.x)));
    let var_2 = Struct_2(global1.a);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, var_0.a, -3130f))))));
    var var_4 = 15739i;
    return _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(countOneBits(select(-2147483647i, 26151i, var_1.a.x)), max(~(-77i), _wgslsmith_sub_i32(-22295i, 1i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -11219i), ~vec2<i32>(-2147483647i, -1i)))), vec3<i32>(-_wgslsmith_div_i32(0i, -49106i), -70143i, 12070i) >> (~firstTrailingBit(vec3<u32>(arg_0.b.x, var_0.b.x, u_input.a.x)) % vec3<u32>(32u)));
}

fn func_2() -> f32 {
    let var_0 = vec3<i32>(~func_3(Struct_1(-812f, max(vec3<u32>(30703u, u_input.b.x, u_input.a.x), vec3<u32>(u_input.b.x, 1u, 45866u)))), -min(-18277i >> (_wgslsmith_mod_u32(u_input.a.x, u_input.a.x) % 32u), 36181i << (u_input.b.x % 32u)), min(_wgslsmith_mod_i32(firstTrailingBit(i32(-1i) * -2147483647i), -abs(-29799i)), -(i32(-1i) * -83779i)));
    global0 = array<vec3<i32>, 2>();
    let var_1 = ~1u;
    var var_2 = ~_wgslsmith_mult_vec2_u32(~u_input.b, ~select(u_input.a, abs(u_input.a), global3.x));
    var var_3 = ~1u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(~12795u, 15u)])));
}

fn func_4(arg_0: vec4<f32>, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    global2 = array<f32, 15>();
    let var_0 = Struct_2(vec3<bool>(global3.x || !global1.a.x, global1.a.x, global3.x));
    var var_1 = var_0;
    let var_2 = arg_2;
    var_1 = var_0;
    return arg_2;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_2 {
    let var_0 = func_4(vec4<f32>(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(step(-1226f, _wgslsmith_f_op_f32(f32(-1f) * -941f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 15u)] * 1189f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -746f) + _wgslsmith_div_f32(arg_1.a, 1416f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(-940f * global2[_wgslsmith_index_u32(4294967295u, 15u)])))), 4294967295u, arg_1);
    global1 = Struct_2(global3.yxw);
    var var_1 = Struct_2(global3.yxy);
    let var_2 = firstLeadingBit(select(select(arg_1.b.yz ^ abs(vec2<u32>(arg_1.b.x, 45143u)), firstTrailingBit(~u_input.a), !select(global1.a.yz, vec2<bool>(true, arg_0), global3.x)), arg_1.b.zx, !vec2<bool>(any(vec4<bool>(var_1.a.x, global3.x, false, true)), 866f <= var_0.a)));
    var var_3 = arg_1.b;
    return Struct_2(vec3<bool>(!(!global1.a.x), any(select(!vec4<bool>(global1.a.x, true, false, var_1.a.x), select(vec4<bool>(false, false, global1.a.x, arg_0), vec4<bool>(global1.a.x, true, var_1.a.x, global1.a.x), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, false, arg_0))), all(!select(vec4<bool>(global3.x, true, var_1.a.x, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 15>();
    let var_0 = func_1(global1.a.x, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(781f, 398f, global3.x)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 15u)] - 447f))), _wgslsmith_div_vec3_u32(reverseBits(~vec3<u32>(u_input.b.x, u_input.b.x, 1227u)), _wgslsmith_sub_vec3_u32(vec3<u32>(15362u, u_input.b.x, 57618u), vec3<u32>(81500u, u_input.b.x, u_input.b.x)) & _wgslsmith_mult_vec3_u32(vec3<u32>(66889u, 23597u, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u)))));
    let var_1 = (u_input.b.x | 69053u) > ~(~(~_wgslsmith_clamp_u32(u_input.b.x, u_input.a.x, 1u)));
    global3 = select(!vec4<bool>(true, true, false, !var_1), !(!vec4<bool>(!var_0.a.x, true, !global1.a.x, select(false, var_0.a.x, global3.x))), global1.a.x);
    var var_2 = vec2<bool>(true, any(func_1(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), u_input.b) < (u_input.b.x << (u_input.a.x % 32u)), Struct_1(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], abs(vec3<u32>(3437u, u_input.a.x, u_input.a.x)))).a.zy));
    var var_3 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], 366f, global2[_wgslsmith_index_u32(u_input.a.x, 15u)], global2[_wgslsmith_index_u32(0u, 15u)]))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-429f, -1000f, -1088f, global2[_wgslsmith_index_u32(3357u, 15u)]))))), 77938u, func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(55961u, 15u)], global2[_wgslsmith_index_u32(0u, 15u)], -1000f, 1474f), vec4<f32>(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], 1000f, -1380f, 377f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1831f, global2[_wgslsmith_index_u32(1u, 15u)], global2[_wgslsmith_index_u32(u_input.b.x, 15u)], 1221f), vec4<f32>(1021f, global2[_wgslsmith_index_u32(u_input.a.x, 15u)], 426f, -1000f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(353f, global2[_wgslsmith_index_u32(0u, 15u)], 945f, global2[_wgslsmith_index_u32(u_input.b.x, 15u)]) - vec4<f32>(global2[_wgslsmith_index_u32(43374u, 15u)], 731f, global2[_wgslsmith_index_u32(u_input.a.x, 15u)], -825f))))), 1u, func_4(vec4<f32>(1281f, _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(0u, 15u)], -963f)), -406f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 15u)])), 0u >> (~u_input.a.x % 32u), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -976f), vec3<u32>(3537u, u_input.a.x, u_input.a.x) << (vec3<u32>(4294967295u, 34654u, u_input.a.x) % vec3<u32>(32u))))));
    let var_4 = func_1(all(select(!(!vec4<bool>(global3.x, false, false, global1.a.x)), vec4<bool>(false, var_0.a.x, false, true), vec4<bool>(true, true, any(vec3<bool>(true, var_2.x, var_0.a.x)), true))), Struct_1(_wgslsmith_f_op_f32(786f + _wgslsmith_f_op_f32(-var_3.a)), ~firstLeadingBit(select(var_3.b, vec3<u32>(34262u, u_input.a.x, u_input.a.x), vec3<bool>(global1.a.x, global1.a.x, global3.x)))));
    global2 = array<f32, 15>();
    var var_5 = 66806u;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(reverseBits(global0[_wgslsmith_index_u32(~51109u, 2u)]), (vec3<i32>(0i, 41344i, 28138i) << (vec3<u32>(u_input.b.x, 16523u, u_input.a.x) % vec3<u32>(32u))) | vec3<i32>(54194i, -58907i, -23309i))), 0u);
}

