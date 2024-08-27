struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(1629f, -1529f, -1369f), 1000f, vec4<f32>(293f, 861f, -2258f, -932f), vec2<bool>(false, false));

var<private> global1: array<u32, 7>;

var<private> global2: array<i32, 30>;

var<private> global3: vec3<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> bool {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(global0.c.x * arg_0), vec4<f32>(_wgslsmith_f_op_f32(1f - 1445f), -856f, _wgslsmith_f_op_f32(f32(-1f) * -351f), global0.a.x), !select(vec2<bool>(any(vec3<bool>(false, global0.d.x, true)), any(vec3<bool>(true, global0.d.x, true))), vec2<bool>(true, global0.d.x), global0.d));
    var var_0 = i32(-1i) * -1i;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(456f, global0.a.x, arg_0))), global0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.x) - arg_0), arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(arg_0, -719f, global0.d.x))))) + vec4<f32>(arg_0, _wgslsmith_div_f32(-375f, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.c.x + -817f))), _wgslsmith_f_op_f32(f32(-1f) * -415f))), global3.zy);
    var var_2 = !all(!(!vec4<bool>(global3.x, true, false, var_1.d.x)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a) - vec3<f32>(arg_0, -244f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-384f - arg_0)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -227f))))) * -963f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_1.c.x, 485f, -1837f) - _wgslsmith_f_op_vec4_f32(-var_1.c)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(172f, arg_0, global0.b, global0.a.x)))), var_1.d);
    return true;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 1758f, var_0) - vec3<f32>(arg_0.x, global0.a.x, -1605f)), arg_0.zzz)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0.xyy + arg_0.zwz), _wgslsmith_f_op_vec3_f32(max(global0.c.xwy, arg_0.yzx)), vec3<bool>(true, global3.x, global0.d.x))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - -1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-738f, arg_0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * global0.b))), true)), vec4<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0)) * _wgslsmith_f_op_f32(ceil(420f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(774f)), -1316f))), 406f), global3.yx);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(max(arg_0.wxw, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(arg_0.yyy, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, global0.b, 908f) - vec3<f32>(-1593f, var_0, 1395f)))))))), global0.b, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, global0.b, 2718f, -1571f) + global0.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-119f + -1054f), _wgslsmith_f_op_f32(-3046f + -475f), var_0, _wgslsmith_f_op_f32(sign(310f)))))), vec2<bool>(func_3(1794f), !global3.x & !(!global0.d.x)));
    var var_2 = ~abs(min(_wgslsmith_add_vec3_i32(vec3<i32>(34813i, -41215i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 30u)]), vec3<i32>(u_input.a, 50615i, u_input.a)), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.a, arg_1.x), vec3<i32>(2147483647i, -1i, arg_1.x)), -vec3<i32>(u_input.a, 0i, 4848i), _wgslsmith_clamp_vec3_i32(vec3<i32>(0i, global2[_wgslsmith_index_u32(0u, 30u)], arg_1.x), vec3<i32>(u_input.a, global2[_wgslsmith_index_u32(18880u, 30u)], 28943i), vec3<i32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 7u)], 30u)], 0i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 30u)])))));
    let var_3 = vec4<u32>(7618u, 34907u, ~global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, ~0u, global1[_wgslsmith_index_u32(0u, 7u)]), 7u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)], global1[_wgslsmith_index_u32(7183u, 7u)], 55441u)), min(firstTrailingBit(vec3<u32>(0u, 11455u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 7u)], 7u)], 7u)])), vec3<u32>(1u, global1[_wgslsmith_index_u32(4294967295u, 7u)], 1u) & vec3<u32>(4294967295u, 76848u, global1[_wgslsmith_index_u32(80450u, 7u)]))), 7u)]), 7u)]);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))) - 1000f);
}

fn func_1() -> f32 {
    global0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(global0.c, vec2<i32>(-17698i, -36557i)))), global0.b, _wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -806f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - _wgslsmith_f_op_f32(-global0.c.x)))), all(vec3<bool>(global3.x, true, -1i >= global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66660u, 7u)], 30u)])))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1163f, global0.c.x, 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.b)), _wgslsmith_f_op_f32(step(446f, 1604f))))), global0.d);
    var var_0 = ~abs(_wgslsmith_div_vec3_u32(vec3<u32>(76579u, ~global1[_wgslsmith_index_u32(27867u, 7u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(7081u, global1[_wgslsmith_index_u32(40369u, 7u)]), 7u)]), abs(vec3<u32>(global1[_wgslsmith_index_u32(0u, 7u)], 33808u, global1[_wgslsmith_index_u32(0u, 7u)]))));
    var var_1 = firstLeadingBit(_wgslsmith_div_u32(44555u, var_0.x));
    let var_2 = u_input.a;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b * global0.b) - -1150f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.c.wwz, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1502f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1())))) + -1276f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, -2147f, -582f) + global0.c) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, 494f, global0.c.x, global0.a.x))))))), select(vec2<bool>(global0.d.x, 4294967295u < global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)]), select(global0.d, !select(vec2<bool>(false, false), vec2<bool>(global3.x, false), false), !select(vec2<bool>(false, global3.x), global0.d, true)), !(!(!global3.yz))));
    global3 = !(!(!vec3<bool>(global0.d.x, !global3.x, true)));
    var var_0 = Struct_1(global0.c.wyx, 741f, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-885f, global0.c.x)), global0.c.x, _wgslsmith_f_op_f32(min(-316f, -1099f)), _wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.a.x, global0.a.x, global0.b, global0.a.x), global0.c))) - global0.c))), !global0.d);
    var var_1 = ~18738u;
    let var_2 = vec2<u32>(global1[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_add_u32(abs(1u | countOneBits(global1[_wgslsmith_index_u32(4294967295u, 7u)])), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(76862u, 7u)]), 7u)], ~global1[_wgslsmith_index_u32(_wgslsmith_add_u32(53210u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 7u)], 7u)]), 7u)])));
    let x = u_input.a;
    s_output = StorageBuffer(~1u, min(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(abs(~82014u), 7u)], 0u), 27502u), var_0.a);
}

