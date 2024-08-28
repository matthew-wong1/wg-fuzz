struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec3<u32>(1u, 61661u, 28982u)), Struct_2(vec3<u32>(16017u, 15133u, 1u)), Struct_2(vec3<u32>(0u, 43358u, 1u)), Struct_2(vec3<u32>(1u, 49624u, 0u)), Struct_2(vec3<u32>(23435u, 0u, 1u)), Struct_2(vec3<u32>(2986u, 18977u, 23058u)), Struct_2(vec3<u32>(23448u, 7741u, 4294967295u)), Struct_2(vec3<u32>(16554u, 0u, 1u)), Struct_2(vec3<u32>(1u, 4294967295u, 0u)), Struct_2(vec3<u32>(109335u, 36652u, 4294967295u)), Struct_2(vec3<u32>(4294967295u, 4294967295u, 50399u)), Struct_2(vec3<u32>(48627u, 4294967295u, 25586u)), Struct_2(vec3<u32>(4294967295u, 37915u, 1u)), Struct_2(vec3<u32>(1u, 4294967295u, 41145u)), Struct_2(vec3<u32>(43180u, 7748u, 1u)), Struct_2(vec3<u32>(0u, 98083u, 4294967295u)), Struct_2(vec3<u32>(4294967295u, 77483u, 1u)), Struct_2(vec3<u32>(13736u, 6547u, 14677u)), Struct_2(vec3<u32>(93328u, 0u, 4634u)), Struct_2(vec3<u32>(21705u, 1u, 0u)), Struct_2(vec3<u32>(3788u, 4294967295u, 4294967295u)), Struct_2(vec3<u32>(5578u, 1u, 1u)), Struct_2(vec3<u32>(4294967295u, 31039u, 1u)));

var<private> global2: array<u32, 14>;

var<private> global3: bool;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: bool) -> f32 {
    global1 = array<Struct_2, 23>();
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-584f - _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1.x)) * arg_1.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(837f, -1000f)))))), arg_1);
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - 469f))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + 1400f) * _wgslsmith_f_op_f32(940f - 2025f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(702f, 1341f, arg_2)) - 192f)))));
    let var_2 = global2[_wgslsmith_index_u32(0u, 14u)];
    let var_3 = arg_2;
    return 654f;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: bool) -> vec2<u32> {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 485f))), vec2<f32>(-856f, _wgslsmith_f_op_f32(arg_0 + arg_0)))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(func_3(vec3<i32>(-1i, -13791i, arg_1) | vec3<i32>(arg_1, arg_1, -28232i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(813f, 1026f, 124f) * vec3<f32>(739f, arg_0, arg_0))), arg_2))));
    global3 = false;
    global1 = array<Struct_2, 23>();
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -272f)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1199f, arg_0, 710f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(757f, 565f, var_0.x) - vec3<f32>(2434f, 632f, arg_0)) * vec3<f32>(var_0.x, var_0.x, arg_0))) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, 2426f, arg_0) - vec3<f32>(arg_0, 1073f, var_0.x)), vec3<f32>(var_0.x, var_0.x, 753f), !vec3<bool>(false, arg_2, false))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-357f, -464f, var_0.x) * vec3<f32>(1000f, 1149f, 1141f))))))));
    return countOneBits(abs(select(~(~vec2<u32>(u_input.a, 115u)), vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 14u)] & global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 14u)], 14u)], 14u)], 21469u), vec2<bool>(1u > u_input.e.x, !arg_2))));
}

fn func_1() -> bool {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.e, ~func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(498f - 1000f)), min(21630i, select(-22108i, -34237i, false)), select(true, false, true))), 23u)];
    let var_1 = vec3<bool>(all(vec4<bool>(true, true, true, false)), true, all(vec4<bool>(true, true, false, !any(vec3<bool>(true, true, true)))));
    var var_2 = Struct_2(max(vec3<u32>(firstTrailingBit(~4294967295u), ~1u, 44482u), var_0.a));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -502f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(select(-51713i, 43664i, var_1.x), min(68716i, 2147483647i), _wgslsmith_mod_i32(-14492i, 25737i)), vec3<f32>(1f, 1f, 1f), !var_1.x))), -731f);
    var var_4 = -1365f;
    return all(!var_1.yz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(2147483647i, abs(_wgslsmith_mod_i32(_wgslsmith_div_i32(i32(-1i) * -72282i, -2147483647i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, -33822i, 0i), vec3<i32>(-2147483647i, 1i, 9618i)), countOneBits(vec3<i32>(-2147483647i, -95942i, -1i))))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1694f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-2098f, 1348f), _wgslsmith_f_op_f32(-1316f * 936f)))), -481f), _wgslsmith_f_op_f32(-406f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1026f + -247f) + -455f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-816f)), _wgslsmith_f_op_f32(f32(-1f) * -1033f)))));
    let var_2 = any(select(vec2<bool>(func_1(), all(vec4<bool>(true, true, true, true))), vec2<bool>(!func_1(), _wgslsmith_f_op_f32(f32(-1f) * -107f) >= var_1.b), !select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true))));
    let var_3 = _wgslsmith_div_vec4_u32(vec4<u32>(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~119507u, 14u)] & global2[_wgslsmith_index_u32(7983u, 14u)], 14u)]), firstTrailingBit(global2[_wgslsmith_index_u32(u_input.e.x, 14u)]), _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(~15115u, 14u)] >> (0u % 32u), u_input.a), _wgslsmith_mod_u32(u_input.c, reverseBits(84295u ^ global2[_wgslsmith_index_u32(u_input.a, 14u)]))), vec4<u32>(~6572u, countOneBits(83847u), ~1u, ~(~(4294967295u ^ global2[_wgslsmith_index_u32(u_input.b, 14u)]))));
    let var_4 = Struct_2(min(_wgslsmith_add_vec3_u32(max(vec3<u32>(var_3.x, global2[_wgslsmith_index_u32(74902u, 14u)], 23966u), select(vec3<u32>(var_3.x, u_input.e.x, var_3.x), vec3<u32>(var_3.x, 26119u, var_3.x), vec3<bool>(var_2, var_2, var_2))), vec3<u32>(56397u, 1u, 108510u)), countOneBits(var_3.zxy)));
    var var_5 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_3.x, 4294967295u) | select(_wgslsmith_clamp_u32(~var_4.a.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(var_4.a.zx, var_3.yx), 14u)], 14u)], ~41901u) ^ 4294967295u, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a)) - _wgslsmith_f_op_f32(-227f - var_1.a)), 13541i, true).x, true), 23u)];
    let var_6 = vec3<bool>(all(vec2<bool>(true, var_2)), true, false);
    var var_7 = vec2<bool>(!(!var_6.x), false);
    let x = u_input.a;
    s_output = StorageBuffer(max(var_3, _wgslsmith_sub_vec4_u32(var_3, vec4<u32>(var_4.a.x, 4836u, 42125u, 25324u))) | (var_3 << (var_3 % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(firstTrailingBit(vec3<i32>(23662i, 1i, 0i)) ^ vec3<i32>(14614i, 0i, 0i), vec3<f32>(_wgslsmith_div_f32(var_1.c, -569f), var_1.b, _wgslsmith_f_op_f32(min(1314f, var_1.c))), false))), ~1u);
}

