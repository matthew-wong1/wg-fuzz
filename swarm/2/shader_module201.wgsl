struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: array<vec2<bool>, 4> = array<vec2<bool>, 4>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global2: vec2<u32> = vec2<u32>(4294967295u, 14147u);

var<private> global3: u32 = 14148u;

var<private> global4: vec3<f32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 258f, 908f))))) * vec3<f32>(_wgslsmith_f_op_f32(sign(global4.x)), -533f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global4.x - 287f), _wgslsmith_f_op_f32(ceil(arg_0.x))))))));
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-global4.x)) + -138f) + _wgslsmith_f_op_f32(floor(arg_1.b)))));
    var var_3 = arg_1;
    let var_4 = global2.x;
    return vec4<bool>(arg_1.a.x, var_1.c, any(var_1.a), any(var_1.a.zw) || var_3.d);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = true;
    let var_1 = vec2<bool>(false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(trunc(global4.x))) + 1f) <= _wgslsmith_f_op_f32(1000f - -1000f));
    var var_2 = Struct_1(!(!func_3(_wgslsmith_f_op_vec2_f32(-global4.xy), Struct_1(arg_1.a, -615f, arg_0.x, true), global0[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 9u)], min(u_input.a, u_input.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) * global4.x)), arg_0.x, var_1.x);
    var var_3 = !vec2<bool>(arg_1.d, !(!var_2.c));
    var var_4 = arg_1;
    return Struct_1(vec4<bool>(!(!(!arg_0.x)), false, false, !var_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1163f - arg_1.b))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) + _wgslsmith_div_f32(var_2.b, var_4.b)))), var_4.c, all(!vec4<bool>(func_3(vec2<f32>(243f, var_4.b), Struct_1(arg_1.a, -294f, var_2.c, var_4.c), Struct_1(vec4<bool>(true, false, arg_0.x, var_2.d), 616f, arg_0.x, true), 37583i).x, true, false, var_4.c)));
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    global3 = _wgslsmith_clamp_u32(~(~38689u), 4294967295u, ~global2.x & u_input.d) & _wgslsmith_mod_u32(0u, global2.x);
    var var_0 = func_2(arg_1.a.wwz, global0[_wgslsmith_index_u32(1u, 9u)]);
    global0 = array<Struct_1, 9>();
    let var_1 = select(var_0.a.xx, select(vec2<bool>(false, !(arg_1.b > arg_1.b)), func_2(select(!vec3<bool>(false, false, arg_1.a.x), arg_1.a.zyz, all(vec3<bool>(false, var_0.c, false))), func_2(vec3<bool>(true, true, true), Struct_1(vec4<bool>(var_0.d, arg_1.d, false, var_0.a.x), global4.x, false, true))).a.yz, arg_1.a.zw), false);
    global3 = 1u;
    return func_2(!(!vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.c)), global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(4294967295u, ~(u_input.d | 0u)), 9u)]);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    var var_0 = global2.x;
    var var_1 = _wgslsmith_sub_u32(u_input.d, 2112u) >> (firstTrailingBit(14672u) % 32u);
    var var_2 = firstLeadingBit(-1i);
    var var_3 = _wgslsmith_f_op_f32(-global4.x);
    let var_4 = 4294967295u;
    return -(~(-_wgslsmith_clamp_i32(-u_input.a, ~(-2147483647i), max(52848i, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32(-1i, func_4(global0[_wgslsmith_index_u32(~global2.x, 9u)], func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global4.x)))), global0[_wgslsmith_index_u32(~(u_input.d ^ 1u), 9u)])));
    global0 = array<Struct_1, 9>();
    let var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, ~4294967295u, min(51230u, ~u_input.b), ~(global2.x ^ u_input.d)), ~vec4<u32>(_wgslsmith_add_u32(0u, u_input.b), 131872u, ~global2.x, _wgslsmith_add_u32(u_input.b, global2.x))), ~(~vec4<u32>(~global2.x, _wgslsmith_mult_u32(47208u, 2117u), 1u, 49174u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global4.x, 1019f, global4.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-359f, global4.x, 1081f)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, global4.x, 1049f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-586f, 685f, global4.x)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global4.x, global4.x, 2498f), vec3<f32>(908f, global4.x, global4.x))))), all(global1[_wgslsmith_index_u32(global2.x, 4u)]) & all(vec2<bool>(true, true))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-267f, _wgslsmith_f_op_f32(step(-176f, global4.x)), _wgslsmith_f_op_f32(select(global4.x, global4.x, false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-105f, -1099f, -765f) * vec3<f32>(639f, global4.x, -343f)))))));
    var var_3 = func_2(vec3<bool>(true, true, true), func_2(vec3<bool>(false, true, true | func_3(vec2<f32>(-1000f, global4.x), global0[_wgslsmith_index_u32(global2.x, 9u)], Struct_1(vec4<bool>(true, true, true, false), -341f, true, false), -34355i).x), func_1(-738f, Struct_1(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), _wgslsmith_f_op_f32(-946f * global4.x), func_2(vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(1u, 9u)]).d, true))));
    let var_4 = !vec4<bool>(all(vec4<bool>(false, var_3.a.x, var_3.c & var_3.a.x, func_3(global4.xy, global0[_wgslsmith_index_u32(var_1.x, 9u)], Struct_1(var_3.a, var_2.x, true, true), -2147483647i).x)), any(!select(vec3<bool>(true, false, var_3.d), var_3.a.xzx, var_3.a.x)), false, !var_3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-682f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, -625f))));
}

