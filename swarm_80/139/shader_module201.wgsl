struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec2<f32>;

var<private> global2: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(1000f), Struct_1(-132f), Struct_1(-254f), Struct_1(-1870f), Struct_1(185f));

var<private> global3: array<f32, 1>;

var<private> global4: vec3<bool>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec4<i32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(6166u, 1u)]) * _wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x)))), global1.x);
    var var_1 = global2[_wgslsmith_index_u32(u_input.a, 5u)];
    var var_2 = abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, u_input.a, 0u, u_input.a), max(~vec4<u32>(u_input.a, u_input.a, 1u, 10173u), vec4<u32>(0u, 0u, 1u, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, u_input.a)))) | firstLeadingBit(max(~(~vec4<u32>(4294967295u, u_input.a, 47002u, u_input.a)), ~vec4<u32>(0u, 1u, 69913u, u_input.a) & ~vec4<u32>(50032u, 71115u, 62034u, u_input.a)));
    var var_3 = reverseBits(firstTrailingBit(~abs(abs(vec4<u32>(var_2.x, var_2.x, var_2.x, u_input.a)))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_2.x, 1u)] * var_1.a)))));
    return ~(vec4<i32>(1i, 1i, 1i, 1i) ^ ((select(vec4<i32>(2147483647i, 33880i, -2147483647i, -1i), vec4<i32>(5230i, -12636i, 0i, 0i), global4.x) >> (~vec4<u32>(0u, 4294967295u, u_input.a, 4294967295u) % vec4<u32>(32u))) | select(vec4<i32>(-2147483647i, 2147483647i, 2147483647i, -24287i), vec4<i32>(-1i, 10083i, -1i, 4048i), vec4<bool>(global4.x, false, true, global4.x))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>) -> f32 {
    global3 = array<f32, 1>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global1.x));
    let var_1 = global0.x;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, -377f))) - global0.x), global0.x);
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-1238f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2539f)) * _wgslsmith_f_op_f32(trunc(1965f))))), global1.x) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(652f, global1.x) * vec2<f32>(var_0.a, -106f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) + vec2<f32>(371f, global1.x)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-940f, var_0.a), vec2<f32>(1000f, var_0.a), global4.zx))), true))));
    return _wgslsmith_f_op_f32(-var_0.a);
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(u_input.a, 1u)])) - _wgslsmith_f_op_f32(func_4(_wgslsmith_clamp_vec4_i32(func_3(), max(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, -20632i, 13751i, -69798i), vec4<i32>(-10587i, 884i, 0i, arg_1)), countOneBits(vec4<i32>(0i, -11207i, arg_1, arg_1))), vec4<i32>(arg_1, 0i, firstTrailingBit(arg_1), arg_1)), ~reverseBits(vec2<u32>(38813u, 4294967295u) & vec2<u32>(0u, u_input.a)))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, 1307f)) - global1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-323f)), _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(-43709i, arg_1, arg_1, arg_1), vec4<i32>(0i, -12458i, 2147483647i, -46133i)) ^ vec4<i32>(1i, arg_1, arg_1, -2147483647i), ~vec2<u32>(1u, 21801u) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))))));
    global2 = array<Struct_1, 5>();
    global4 = !vec3<bool>(true, global4.x, true);
    let var_2 = ~u_input.a < _wgslsmith_mod_u32(min(min(u_input.a, u_input.a) & 6862u, ~(u_input.a & 2035u)), 1u);
    return global2[_wgslsmith_index_u32(0u, 5u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global3 = array<f32, 1>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(-arg_0.a)) + -1571f))));
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, _wgslsmith_f_op_f32(arg_2.a * 1199f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1252f, arg_1.a) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-131f, 288f) * vec2<f32>(2051f, var_0.a))))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.a, -744f))), vec2<bool>(all(select(vec2<bool>(false, true), global4.zx, vec2<bool>(global4.x, true))), global4.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-323f, 363f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(u_input.a, 1u)], global1.x) + vec2<f32>(532f, -531f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 1944f), vec2<f32>(-933f, -817f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(139f, global3[_wgslsmith_index_u32(4294967295u, 1u)]) - vec2<f32>(1022f, 1000f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -2318f)))));
    var var_1 = global4.x;
    let var_2 = ~(~countOneBits(vec2<u32>(93249u, 27592u)));
    return Struct_1(-269f);
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = !vec2<bool>(!(arg_0 == _wgslsmith_f_op_f32(min(-151f, 313f))), true != any(!vec2<bool>(global4.x, global4.x)));
    return func_5(global2[_wgslsmith_index_u32(~4294967295u, 5u)], global2[_wgslsmith_index_u32(0u, 5u)], func_2(global2[_wgslsmith_index_u32(u_input.a ^ (~u_input.a >> (_wgslsmith_mod_u32(25421u, 1u) % 32u)), 5u)], _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(-2147483647i, 2147483647i, -15982i, -35336i)), max(countOneBits(vec4<i32>(2147483647i, -2147483647i, 1i, 2147483647i)), vec4<i32>(-54968i, 2147483647i, 18751i, 0i)))));
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = func_2(arg_2, (min(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, -2147483647i, -2147483647i), vec4<i32>(-12397i, 1i, 1i, 2147483647i)), 1i) | -23110i) >> (_wgslsmith_add_u32(firstLeadingBit(_wgslsmith_add_u32(13757u, arg_1)), u_input.a) % 32u));
    var_1 = Struct_1(-421f);
    global4 = !select(select(!(!vec3<bool>(global4.x, true, global4.x)), vec3<bool>(global4.x || false, false, true), vec3<bool>(global4.x, any(vec2<bool>(true, global4.x)), true)), select(!vec3<bool>(global4.x, global4.x, global4.x), !(!vec3<bool>(true, global4.x, global4.x)), any(vec4<bool>(false, true, true, global4.x)) || global4.x), select(select(vec3<bool>(true, true, global4.x), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, global4.x)), select(vec3<bool>(global4.x, true, false), vec3<bool>(false, global4.x, global4.x), vec3<bool>(global4.x, true, global4.x))), select(vec3<bool>(global4.x, global4.x, true), vec3<bool>(global4.x, false, true), true), select(global4.x, all(vec4<bool>(global4.x, global4.x, global4.x, true)), global4.x | false)));
    var var_2 = u_input.a;
    return func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -904f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(!(true == global4.x), global4.x, !global4.x);
    var var_1 = func_6(func_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), firstLeadingBit((min(1u, 4294967295u) ^ u_input.a) & reverseBits(_wgslsmith_mod_u32(1u, u_input.a))), Struct_1(-766f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - -1285f)) - -149f) + _wgslsmith_f_op_f32(-global1.x)));
    let var_2 = vec3<u32>(4294967295u, u_input.a, _wgslsmith_add_u32(4294967295u ^ reverseBits(u_input.a), 16055u) | 62912u);
    let var_3 = global2[_wgslsmith_index_u32(var_2.x << (~(var_2.x ^ 28758u) % 32u), 5u)];
    global3 = array<f32, 1>();
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_3.a, global1.x))))) + vec2<f32>(func_6(global2[_wgslsmith_index_u32(1u, 5u)], ~(~u_input.a), func_5(func_2(Struct_1(610f), -33002i), func_2(global2[_wgslsmith_index_u32(var_2.x, 5u)], -2147483647i), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, var_2.x), 5u)]), _wgslsmith_f_op_f32(step(var_3.a, _wgslsmith_div_f32(global1.x, 298f)))).a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))))));
    let var_4 = -1000f;
    var var_5 = Struct_1(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-vec3<i32>(12566i, -54860i, 51450i))) & select(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(3500i, -19384i, -51265i), vec3<i32>(-27851i, -7452i, -1i)), abs(vec3<i32>(-2147483647i, -610i, -2147483647i))), vec3<i32>(9602i, func_3().x, 1i), false), vec4<i32>(~(~select(0i, -35805i, true)), 72039i, ~(-1981i), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, 31984i, 8833i), func_3().wwx), ~(-2147483647i))), var_2.x);
}

