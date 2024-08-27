struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 15>;

var<private> global2: array<vec2<bool>, 28>;

var<private> global3: vec3<f32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global2 = array<vec2<bool>, 28>();
    let var_0 = Struct_1(vec3<bool>(true, true, all(select(select(vec3<bool>(arg_0.x, arg_0.x, global0.a.x), vec3<bool>(true, arg_1.a.x, global0.a.x), vec3<bool>(false, false, global0.a.x)), arg_0, arg_0.x))));
    let var_1 = !select(!(!select(vec4<bool>(arg_1.a.x, true, var_0.a.x, global0.a.x), vec4<bool>(false, arg_1.a.x, true, true), vec4<bool>(false, true, false, arg_0.x))), vec4<bool>(arg_0.x && any(var_0.a), true, true, true), false);
    var var_2 = var_0;
    return var_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = select(!select(!vec4<bool>(arg_1.a.x, true, true, arg_1.a.x), select(vec4<bool>(true, false, false, arg_1.a.x), select(vec4<bool>(arg_1.a.x, arg_1.a.x, true, true), vec4<bool>(arg_1.a.x, arg_0.a.x, false, true), arg_1.a.x), false != global0.a.x), !select(vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x), vec4<bool>(true, false, false, false), vec4<bool>(global0.a.x, true, true, true))), vec4<bool>(arg_0.a.x, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1546f * global3.x)) > _wgslsmith_f_op_f32(-_wgslsmith_div_f32(117f, global3.x)), any(select(vec4<bool>(global0.a.x, global0.a.x, true, true), select(vec4<bool>(arg_0.a.x, false, false, true), vec4<bool>(false, arg_2.a.x, false, arg_0.a.x), false), true))), -_wgslsmith_mult_i32(2147483647i, -1i) <= _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-16i, -41085i)), abs(vec2<i32>(1i, 1i))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, global3.x)))), vec4<f32>(_wgslsmith_div_f32(global3.x, global3.x), _wgslsmith_f_op_f32(floor(-114f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(213f + global3.x)), 725f), func_2(!arg_2.a, arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2757f) - _wgslsmith_f_op_f32(round(-798f)))).a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(step(global3.x, global3.x)), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -2829f), _wgslsmith_f_op_f32(f32(-1f) * -502f)))))));
    var_0 = !(!select(select(select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(global0.a.x, true, true, arg_2.a.x), vec4<bool>(arg_2.a.x, var_0.x, false, arg_0.a.x)), !vec4<bool>(arg_0.a.x, false, arg_0.a.x, arg_1.a.x), !vec4<bool>(global0.a.x, true, arg_1.a.x, false)), vec4<bool>(!var_0.x, arg_2.a.x, false, !arg_1.a.x), vec4<bool>(true, global0.a.x, true, all(var_0.xxz))));
    global1 = array<u32, 15>();
    var var_2 = Struct_1(arg_1.a);
    return 61788u;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: vec3<bool>) -> vec3<f32> {
    var var_0 = Struct_1(vec3<bool>(((global3.x >= 1944f) & any(vec4<bool>(false, false, arg_1.a.x, arg_1.a.x))) && (func_3(Struct_1(vec3<bool>(false, true, arg_3.x)), arg_1, arg_1) == 12071u), !(global1[_wgslsmith_index_u32(reverseBits(u_input.b), 15u)] >= 43083u), !(reverseBits(0u) < global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.x, 33687u), 15u)])));
    var_0 = arg_1;
    global2 = array<vec2<bool>, 28>();
    let var_1 = firstTrailingBit(~u_input.a);
    var var_2 = i32(-1i) * -5547i;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2348f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -365f) + 2197f), _wgslsmith_f_op_f32(trunc(-363f))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.x, global3.x, arg_2)) + -1720f) - global3.x)), arg_0.x, _wgslsmith_f_op_f32(select(-824f, 265f, arg_2)));
    global2 = array<vec2<bool>, 28>();
    global1 = array<u32, 15>();
    var var_1 = arg_1;
    var var_2 = arg_1;
    return Struct_1(var_1.a);
}

fn func_1(arg_0: bool, arg_1: f32) -> vec2<u32> {
    let var_0 = !select(!(!(!vec4<bool>(global0.a.x, global0.a.x, arg_0, true))), select(vec4<bool>(true || arg_0, true, true, true), select(vec4<bool>(true, false, arg_0, arg_0), !vec4<bool>(arg_0, false, arg_0, false), true), vec4<bool>(any(vec2<bool>(false, arg_0)), all(vec4<bool>(arg_0, true, arg_0, true)), false, 861f <= arg_1)), !(!(!vec4<bool>(global0.a.x, arg_0, true, arg_0))));
    var var_1 = func_5(_wgslsmith_f_op_vec3_f32(func_4(~_wgslsmith_div_vec2_i32(vec2<i32>(3688i, 2147483647i), vec2<i32>(-1i, 16772i)), func_2(select(vec3<bool>(true, true, true), select(vec3<bool>(global0.a.x, true, arg_0), var_0.zxx, global0.a), all(var_0.wwz)), Struct_1(select(var_0.wwx, global0.a, vec3<bool>(global0.a.x, global0.a.x, var_0.x))), _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(u_input.a.x, u_input.b)), vec2<u32>(u_input.b, _wgslsmith_add_u32(u_input.a.x, 0u)), vec2<u32>(func_3(Struct_1(vec3<bool>(false, global0.a.x, global0.a.x)), Struct_1(vec3<bool>(true, true, true)), Struct_1(global0.a)), _wgslsmith_mod_u32(4294967295u, 1u))), func_2(!vec3<bool>(false, false, global0.a.x), func_2(global0.a, func_2(var_0.xxw, Struct_1(var_0.xyw), arg_1), _wgslsmith_f_op_f32(-591f - global3.x)), _wgslsmith_div_f32(global3.x, 1000f)).a)), func_2(global0.a, func_2(!func_2(var_0.xwy, Struct_1(var_0.xxw), global3.x).a, func_2(!vec3<bool>(false, arg_0, true), Struct_1(var_0.yxx), -1212f), _wgslsmith_f_op_vec3_f32(func_4(vec2<i32>(60302i, -30341i) << (u_input.a.yw % vec2<u32>(32u)), Struct_1(vec3<bool>(global0.a.x, false, false)), u_input.a.xy, !global0.a)).x), global3.x), !all(var_0.zx));
    global0 = Struct_1(var_1.a);
    var_1 = func_5(_wgslsmith_f_op_vec3_f32(func_4(vec2<i32>(1i, -1i), func_5(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, global3.x, -876f), vec3<f32>(1727f, arg_1, global3.x)))), func_2(!var_1.a, func_5(vec3<f32>(-2223f, -487f, -386f), Struct_1(var_1.a), true), _wgslsmith_f_op_f32(arg_1 - 879f)), arg_0), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, min(4294967295u, global1[_wgslsmith_index_u32(1u, 15u)])), ~(u_input.a.zx << (u_input.a.yz % vec2<u32>(32u)))), func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(2121f, -862f, 212f), vec3<f32>(global3.x, arg_1, arg_1))), Struct_1(vec3<bool>(var_0.x, false, true)), func_5(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.x, -410f, global3.x))), func_2(var_0.zzw, Struct_1(vec3<bool>(global0.a.x, false, false)), global3.x), all(var_0.yzz)).a.x).a)), Struct_1(var_1.a), false & !(_wgslsmith_f_op_f32(select(arg_1, global3.x, false)) >= arg_1));
    var var_2 = Struct_1(vec3<bool>(true, (reverseBits(global1[_wgslsmith_index_u32(4294967295u, 15u)]) < u_input.a.x) == (all(var_0) & false), !(!arg_0)));
    return ~(~u_input.a.zw);
}

fn func_6(arg_0: vec2<u32>) -> StorageBuffer {
    global0 = func_2(!func_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 1000f, -1380f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, global3.x, global3.x))))), func_2(!vec3<bool>(true, true, global0.a.x), func_5(vec3<f32>(global3.x, global3.x, 592f), Struct_1(global0.a), false), _wgslsmith_f_op_f32(abs(-413f))), !global0.a.x).a, Struct_1(vec3<bool>(true, false, all(!vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(796f, _wgslsmith_f_op_f32(-global3.x)))));
    let var_0 = Struct_1(global0.a);
    var var_1 = vec2<f32>(_wgslsmith_div_f32(-609f, _wgslsmith_div_f32(-1000f, -1360f)), global3.x);
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-508f)), -964f, true));
    global1 = array<u32, 15>();
    return StorageBuffer(reverseBits(~_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 0u), firstLeadingBit(u_input.a.wyz))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-728f, global3.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-560f, global3.x, true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(global3.xy)), _wgslsmith_f_op_vec2_f32(step(global3.xy, vec2<f32>(-1000f, var_2))), !global0.a.x)) - vec2<f32>(_wgslsmith_f_op_f32(1081f + 283f), 820f)))), reverseBits(vec4<u32>(func_1(var_0.a.x, _wgslsmith_div_f32(var_1.x, var_2)).x, select(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], false) ^ 15619u, global1[_wgslsmith_index_u32(26589u, 15u)], ~(~0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -711f;
    let var_1 = select(any(vec4<bool>(select(true, true, global0.a.x), any(vec4<bool>(global0.a.x, true, global0.a.x, false)), true, false)), global0.a.x | all(!vec4<bool>(global0.a.x, global0.a.x, global0.a.x, false)), global0.a.x) || true;
    let x = u_input.a;
    s_output = func_6(max(~func_1(global3.x > global3.x, _wgslsmith_f_op_f32(global3.x + -2212f)), ~u_input.a.yy ^ (vec2<u32>(52391u, u_input.a.x) >> (~u_input.a.wx % vec2<u32>(32u)))));
}

