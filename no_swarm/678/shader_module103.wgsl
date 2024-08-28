struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<i32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-297f, -1000f, -768f), vec3<f32>(-164f, -739f, 654f), vec3<f32>(139f, -306f, 687f), vec3<f32>(-224f, -1172f, 157f));

var<private> global1: vec2<u32>;

var<private> global2: array<vec2<f32>, 29>;

var<private> global3: u32 = 4294967295u;

var<private> global4: vec2<f32> = vec2<f32>(566f, 1988f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> i32 {
    let var_0 = ~global1.x;
    let var_1 = firstLeadingBit(u_input.a) | u_input.a;
    let var_2 = Struct_1(global4.x);
    return u_input.b.x;
}

fn func_2() -> f32 {
    global0 = array<vec3<f32>, 4>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -747f))), _wgslsmith_f_op_f32(abs(global4.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.x), -425f), global4.x)), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global4.x, -874f, global4.x), global0[_wgslsmith_index_u32(u_input.a, 4u)])) * _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(4294967295u, 4u)] * vec3<f32>(global4.x, global4.x, 1427f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1038f, 571f, global4.x) - global0[_wgslsmith_index_u32(4294967295u, 4u)]))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -764f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global0[_wgslsmith_index_u32(~u_input.a, 4u)], _wgslsmith_f_op_vec3_f32(step(global0[_wgslsmith_index_u32(45115u, 4u)], vec3<f32>(-669f, global4.x, 1687f))))) + _wgslsmith_div_vec3_f32(vec3<f32>(907f, global4.x, global4.x), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(global1.x, 4u)]))), ~(~(vec4<u32>(4294967295u, 0u, 72334u, global1.x) << (vec4<u32>(global1.x, u_input.a, 84887u, u_input.a) % vec4<u32>(32u)))), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global4.x + global4.x))))), _wgslsmith_mult_vec3_i32(u_input.b, ~_wgslsmith_clamp_vec3_i32(~vec3<i32>(0i, u_input.b.x, u_input.b.x), u_input.b, -vec3<i32>(-57134i, 25374i, u_input.b.x))), 1i);
    global4 = _wgslsmith_f_op_vec2_f32(floor(var_0.a.wz));
    var var_1 = _wgslsmith_clamp_vec2_i32(-max(vec2<i32>(-34669i, u_input.b.x) | var_0.c.xy, max(vec2<i32>(u_input.b.x, 9993i), u_input.b.yz)), -vec2<i32>(var_0.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, -36487i, u_input.b.x), vec4<i32>(-1i, 2147483647i, -1i, 2147483647i))), u_input.b.yx) & vec2<i32>(58895i | var_0.c.x, func_3());
    var_0 = Struct_3(var_0.a, var_0.b, vec3<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, var_1.x, -76453i) | vec4<i32>(-3010i, var_0.d, var_0.d, 40036i), firstLeadingBit(vec4<i32>(var_1.x, 15955i, 2147483647i, -12955i))), ~(-16730i), select(var_0.c.x, 36297i, true)), ~countOneBits(_wgslsmith_clamp_i32(~2147483647i, ~u_input.b.x, select(0i, -1i, true))));
    return _wgslsmith_f_op_f32(global4.x * var_0.a.x);
}

fn func_4(arg_0: f32, arg_1: vec4<u32>) -> vec2<bool> {
    global3 = ~(~(~(~4294967295u)));
    global1 = vec2<u32>(u_input.a, min(3124u, ~(~(~98u))));
    var var_0 = 625f;
    let var_1 = vec3<bool>(!(true | !all(vec4<bool>(false, true, true, false))), true, true);
    global4 = _wgslsmith_f_op_vec2_f32(min(global2[_wgslsmith_index_u32(0u, 29u)], vec2<f32>(_wgslsmith_f_op_f32(-global4.x), 208f)));
    return var_1.xy;
}

fn func_1(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = vec4<i32>(arg_0.d, 2147483647i >> (firstTrailingBit(u_input.a & arg_0.b.d.x) % 32u), select(1i, firstLeadingBit(countOneBits(_wgslsmith_mult_i32(arg_0.c.x, 30242i))), false), 2147483647i);
    let var_1 = !func_4(_wgslsmith_f_op_f32(func_2()), firstLeadingBit(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.b.d.x, 33460u, u_input.a, global1.x), arg_0.b.d))));
    global0 = array<vec3<f32>, 4>();
    let var_2 = _wgslsmith_f_op_vec4_f32(arg_0.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.a + arg_0.a) + arg_0.a));
    let var_3 = arg_0;
    return !vec4<bool>(false, all(select(!vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, var_1.x, true), vec3<bool>(false, false, true))), true, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 29>();
    let var_0 = u_input.b.x;
    global1 = ~vec2<u32>(firstTrailingBit(~global1.x & abs(53864u)), 1u);
    global3 = global1.x;
    var var_1 = select(select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true)), false)), vec4<bool>(!any(vec3<bool>(false, true, true)), true, true, any(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), false))), !select(!select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true), select(vec4<bool>(true, true, true, true), func_1(Struct_3(vec4<f32>(global4.x, global4.x, -586f, -235f), Struct_2(global0[_wgslsmith_index_u32(u_input.a, 4u)], Struct_1(global4.x), global0[_wgslsmith_index_u32(u_input.a, 4u)], vec4<u32>(global1.x, global1.x, 0u, 24301u), Struct_1(130f)), u_input.b, -1i)), vec4<bool>(true, true, true, true)), false));
    var_1 = vec4<bool>(!var_1.x, false, func_1(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(119f, -175f, 656f, 735f), vec4<f32>(global4.x, 938f, global4.x, global4.x)))), Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, global4.x) - global0[_wgslsmith_index_u32(global1.x, 4u)]), Struct_1(global4.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, 993f) + vec3<f32>(global4.x, 524f, global4.x)), ~vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a), Struct_1(global4.x)), vec3<i32>(u_input.b.x, -26813i, 2147483647i) ^ ~vec3<i32>(-7012i, var_0, 5593i), var_0)).x, true != !(_wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(-4150i, var_0)) > -2147483647i));
    let var_2 = Struct_3(vec4<f32>(-1021f, global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1045f)), _wgslsmith_f_op_f32(max(global4.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4.x)))))), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(11734u, 6970u, global1.x), vec3<u32>(u_input.a, global1.x, u_input.a)) >> ((global1.x ^ 1u) % 32u), u_input.a), 4u)], Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.x, 426f)))), global0[_wgslsmith_index_u32(u_input.a, 4u)], ~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(13153u, global1.x, global1.x, global1.x)), ~vec4<u32>(0u, 23820u, u_input.a, u_input.a), vec4<u32>(14486u, global1.x, 4294967295u, global1.x)), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(global4.x)))))), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 14210i, var_0), select(u_input.b, vec3<i32>(2620i, 1i, -2147483647i), vec3<bool>(var_1.x, var_1.x, false)) & vec3<i32>(var_0, u_input.b.x, -1i), vec3<i32>(i32(-1i) * -64531i, -1i, 2147483647i))), _wgslsmith_sub_i32(var_0, abs(var_0)));
    global3 = ~_wgslsmith_dot_vec2_u32(~firstLeadingBit(firstLeadingBit(vec2<u32>(39382u, 43591u))), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(global1.x, 0u), vec2<u32>(var_2.b.d.x, global1.x))));
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.a.x, -203f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_2.a.yy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_2.a.xw, var_2.b.a.xx)) * _wgslsmith_f_op_vec2_f32(var_2.b.a.zy * vec2<f32>(-1000f, var_2.b.a.x))), !(!var_1.xz)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(var_2.a.wz, var_2.b.c.yy)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1000f, -1145f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.b.a, -623f)) * _wgslsmith_f_op_vec2_f32(-var_2.a.zz))), (!var_1.x & true) | var_1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(28369u);
}

