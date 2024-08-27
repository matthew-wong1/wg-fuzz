struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: array<vec3<f32>, 16>;

var<private> global1: Struct_1 = Struct_1(-1153f);

var<private> global2: f32;

var<private> global3: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(sign(550f)));
    global0 = array<vec3<f32>, 16>();
    global1 = var_0;
    let var_1 = Struct_1(global1.a);
    global0 = array<vec3<f32>, 16>();
    return 103f;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())));
    let var_1 = vec4<bool>(false && select(!all(vec4<bool>(true, false, true, false)), !select(true, true, true), select(true, false, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)))), -_wgslsmith_clamp_i32(49077i, 1i, _wgslsmith_div_i32(-2147483647i, -68306i)) == (abs(~2538i) & _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, 1i) >> (arg_0.wyw % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i))), true);
    let var_2 = Struct_1(global3.a);
    var var_3 = vec2<f32>(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)));
    var var_4 = abs(~(-12737i) >> (select(8571u, select(u_input.a.x, arg_0.x, true), true | var_1.x) % 32u));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<u32>, arg_3: vec2<i32>) -> i32 {
    var var_0 = func_2(firstLeadingBit(~_wgslsmith_add_vec4_u32(~arg_2, ~vec4<u32>(u_input.a.x, arg_2.x, 78404u, 37043u))));
    var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1157f, _wgslsmith_f_op_f32(-var_0.a), arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -1703f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, -399f, -1093f, 270f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.a, global3.a, arg_0.a, arg_0.a))), vec4<bool>(true, true, true, true))), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a), arg_0.a, _wgslsmith_div_f32(var_0.a, var_0.a), _wgslsmith_f_op_f32(trunc(-1388f))))))));
    global2 = -407f;
    var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(582f, global1.a, 1220f, 1083f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(879f, global3.a, -1862f, global1.a) * vec4<f32>(-735f, var_1.x, global1.a, -1091f)) + _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, -258f, global3.a, global1.a), vec4<f32>(-504f, arg_1, -471f, 1009f))) + vec4<f32>(_wgslsmith_f_op_f32(abs(var_0.a)), 864f, _wgslsmith_f_op_f32(min(global3.a, global1.a)), -461f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, _wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_div_f32(406f, global3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(215f * -455f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(211f, arg_1, global3.a, global1.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, -1000f, -1000f, 738f))))), true));
    return 0i;
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = ~func_4(func_2(~select(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<u32>(0u, u_input.a.x, 27521u, 29931u), vec4<bool>(true, true, true, true))), -1495f, vec4<u32>(u_input.a.x, u_input.a.x, max(_wgslsmith_mult_u32(76704u, 20999u), u_input.a.x), select(~99995u, abs(36266u), false)), countOneBits((vec2<i32>(0i, 1i) >> (u_input.a.yy % vec2<u32>(32u))) & select(vec2<i32>(-1i, 2147483647i), vec2<i32>(87092i, 0i), vec2<bool>(false, true))));
    global3 = Struct_1(global3.a);
    let var_1 = ~u_input.a.zz;
    global2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -721f)))));
    let var_2 = false;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a * _wgslsmith_f_op_f32(f32(-1f) * -929f)))), _wgslsmith_div_f32(global3.a, -1000f));
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - 343f) - _wgslsmith_f_op_f32(global3.a * global3.a)));
    var_0 = Struct_1(-1000f);
    let var_1 = select(vec2<bool>(false, !all(vec2<bool>(true, true))), vec2<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), select(true, true, false))), false), vec2<bool>(true, true));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * 300f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(select(~(~21015u), _wgslsmith_dot_vec2_u32(~u_input.a.zz, _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(75947u, 101231u))), !var_1.x), ~select(select(u_input.a.x, 1u, var_1.x), u_input.a.x ^ 11494u, u_input.a.x > u_input.a.x), u_input.a.x));
}

