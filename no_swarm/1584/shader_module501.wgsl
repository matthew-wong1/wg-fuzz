struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(609f, Struct_2(vec4<f32>(689f, 1591f, 130f, 243f)), 46289u, 187f, 2147483647i);

var<private> global1: vec3<f32> = vec3<f32>(291f, 513f, -816f);

var<private> global2: f32;

var<private> global3: vec3<bool>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> f32 {
    var var_0 = global3.yy;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -660f)), -783f, any(!global3.xy))), global0.a)), global0.b, ~global0.c, global0.d, firstLeadingBit(firstTrailingBit(countOneBits(~(-1i)))));
    let var_2 = _wgslsmith_sub_vec3_i32(-_wgslsmith_mult_vec3_i32(max(vec3<i32>(global0.e, var_1.e, 40972i), vec3<i32>(var_1.e, 0i, 1i)), ~vec3<i32>(0i, 0i, 29705i)), select(vec3<i32>(_wgslsmith_mod_i32(1i, firstTrailingBit(var_1.e)), abs(firstLeadingBit(var_1.e)), ~select(var_1.e, global0.e, global3.x)), vec3<i32>(1i, ~1i, global0.e), vec3<bool>(!all(arg_1), true || arg_1.x, global3.x)));
    global1 = vec3<f32>(arg_0.a.x, 618f, global1.x);
    let var_3 = 20674u;
    return 960f;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: u32, arg_3: i32) -> f32 {
    global0 = Struct_3(_wgslsmith_f_op_f32(func_3(Struct_1(global0.b.a.xxx), global3.yz)), global0.b, 0u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global0.a)))), -684i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-159f, -185f))) + _wgslsmith_f_op_f32(max(348f, _wgslsmith_f_op_f32(global1.x + 1103f)))), global1.x)));
}

fn func_1(arg_0: bool) -> vec3<bool> {
    let var_0 = vec4<bool>(false, global3.x, any(global3.xx), global3.x);
    let var_1 = _wgslsmith_div_f32(global1.x, 1314f);
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(global3.x, var_0.x, 1u, reverseBits(-73273i)))));
    let var_3 = Struct_3(global0.d, Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(701f, var_1, 1929f, 157f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(global0.b.a - global0.b.a))))), global0.c, _wgslsmith_f_op_f32(-583f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-281f)))), global0.e);
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(117f, 1000f)), _wgslsmith_div_f32(249f, 959f), 1000f), vec3<f32>(_wgslsmith_f_op_f32(857f * -1806f), _wgslsmith_f_op_f32(global0.a * -906f), _wgslsmith_f_op_f32(176f + var_3.b.a.x)), var_0.zxz)))));
    return select(var_0.yyy, var_0.yxw, vec3<bool>(all(!select(vec2<bool>(global3.x, true), vec2<bool>(true, var_0.x), var_0.xw)), !arg_0, all(!(!var_0.wzy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(582f, _wgslsmith_f_op_f32(-605f * _wgslsmith_f_op_f32(ceil(global0.a))))) - _wgslsmith_f_op_f32(min(global0.b.a.x, _wgslsmith_f_op_f32(ceil(global0.d))))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.x))) - global1.x))));
    var var_1 = global0.c;
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.b.a.x + 820f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + global0.b.a.x), -1073f, false)))), global1.x))));
    global3 = select(vec3<bool>(true, (true || !global3.x) & global3.x, global3.x), select(vec3<bool>((global0.c | 62770u) != firstTrailingBit(1u), true, true), select(!func_1(global3.x), vec3<bool>(false, all(vec4<bool>(global3.x, true, true, global3.x)), !global3.x), true), true), vec3<bool>(false, true, any(func_1(global3.x).yx)));
    var var_2 = countOneBits(vec3<i32>(-16166i, 0i, -22499i));
    var_1 = select(~_wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_sub_vec2_u32(~u_input.a, vec2<u32>(u_input.b.x, u_input.c.x))), global0.c, true);
    var var_3 = global0.b;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

