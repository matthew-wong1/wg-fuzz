struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 222f;

var<private> global1: array<i32, 9>;

var<private> global2: bool;

var<private> global3: vec4<bool> = vec4<bool>(false, true, false, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: f32) -> vec2<u32> {
    global1 = array<i32, 9>();
    var var_0 = any(select(global3.xy, !select(vec2<bool>(true, true), global3.zz, global3.x), select(!select(global3.xx, vec2<bool>(global3.x, false), global3.x), select(!vec2<bool>(global3.x, true), vec2<bool>(false, global3.x), false), vec2<bool>(true, all(global3.zxy)))));
    var var_1 = Struct_1(countOneBits(46791u));
    var_0 = !any(select(!global3.zz, vec2<bool>(true, global3.x), select(false | global3.x, global3.x, true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -580f), arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1672f, arg_1, 1273f))))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, _wgslsmith_f_op_f32(max(arg_1, arg_1)), -204f))));
    return _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(min(u_input.c.x | 38447u, 1u), var_1.a), abs(vec2<u32>(var_1.a >> (u_input.b % 32u), u_input.b | var_1.a)), abs(vec2<u32>(min(u_input.c.x, 28160u), u_input.c.x))), vec2<u32>(7601u, _wgslsmith_mult_u32(var_1.a, abs(u_input.b))) & ~_wgslsmith_clamp_vec2_u32(abs(u_input.c), u_input.c, u_input.c));
}

fn func_2(arg_0: vec3<u32>) -> Struct_2 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -565f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2022f)) + _wgslsmith_f_op_f32(465f - -1000f))))), -352f, -1245f);
    let var_1 = 612f;
    let var_2 = _wgslsmith_mod_vec2_u32(~func_3(-2147483647i, -251f), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, arg_0.x), u_input.c) >> (vec2<u32>(~arg_0.x, ~u_input.b) % vec2<u32>(32u))));
    var var_3 = Struct_2(global3.x, all(global3.yy), Struct_1(min(1u, firstTrailingBit(0u & arg_0.x))), select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(2146u, 9u)] < u_input.a, false), !global3.yxy, !select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(global3.x, global3.x, global3.x), global3.xyx)), vec3<bool>(!global3.x, !(false | global3.x), true), select(global3.wxx, vec3<bool>(select(global3.x, false, global3.x), global3.x, true), all(!vec4<bool>(false, true, global3.x, true)))));
    var_3 = Struct_2(all(select(vec3<bool>(false, global3.x, all(vec3<bool>(true, true, false))), !(!var_3.d), global3.x)), any(vec4<bool>(true, any(vec2<bool>(global3.x, global3.x)) | (var_3.d.x || false), global3.x, true)), Struct_1(_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_mult_u32(66052u, var_2.x)) << (~4294967295u % 32u)), var_3.d);
    return Struct_2(false, true, var_3.c, select(vec3<bool>(!any(vec4<bool>(var_3.d.x, false, true, false)), var_3.d.x, var_3.d.x & all(vec4<bool>(false, var_3.a, global3.x, true))), !(!select(vec3<bool>(global3.x, false, global3.x), global3.zzx, false)), true));
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<u32>, arg_3: Struct_2) -> u32 {
    let var_0 = ~50096u;
    var var_1 = _wgslsmith_add_i32(~49403i, 14126i);
    global3 = vec4<bool>(any(!vec3<bool>(25236u >= arg_3.c.a, any(vec2<bool>(false, global3.x)), true)), true, false, arg_3.a);
    var var_2 = abs(arg_0);
    var_1 = _wgslsmith_mult_i32(i32(-1i) * -abs(~global1[_wgslsmith_index_u32(0u, 9u)]), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~(-37219i), u_input.a, -global1[_wgslsmith_index_u32(3151u, 9u)], reverseBits(global1[_wgslsmith_index_u32(var_2.x, 9u)])), -(~vec4<i32>(-25060i, 0i, global1[_wgslsmith_index_u32(20409u, 9u)], -2147483647i))), -(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.c.x), 9u)] & u_input.a)));
    return 83248u;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mult_u32(u_input.c.x, u_input.b) | func_4(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c, _wgslsmith_sub_vec2_u32(u_input.c, vec2<u32>(21469u, 5862u))), _wgslsmith_mult_vec2_u32(firstTrailingBit(u_input.c), ~u_input.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(136f, 282f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1024f))), ~abs(u_input.c) >> (_wgslsmith_div_vec2_u32(u_input.c, u_input.c) % vec2<u32>(32u)), func_2(~(vec3<u32>(u_input.c.x, 11520u, u_input.c.x) & vec3<u32>(1u, 53501u, 81279u))));
    global1 = array<i32, 9>();
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1055f))))));
    global3 = vec4<bool>(false, true, any(select(global3.yx, vec2<bool>(all(vec3<bool>(false, false, global3.x)), global3.x & false), false)), any(select(select(vec4<bool>(global3.x, global3.x, global3.x, global3.x), vec4<bool>(true, true, true, true), !vec4<bool>(true, false, global3.x, true)), select(select(vec4<bool>(false, true, global3.x, true), vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, global3.x, global3.x)), !vec4<bool>(false, global3.x, true, global3.x), any(vec4<bool>(global3.x, global3.x, true, true))), vec4<bool>(global3.x, global3.x, all(vec2<bool>(global3.x, global3.x)), global3.x))));
    var var_1 = Struct_2(false, any(vec2<bool>(true, global3.x)), Struct_1(_wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.c.x, var_0), vec4<u32>(var_0, 103004u, var_0, u_input.b)), countOneBits(4294967295u))), global3.yww);
    return var_1.c;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = func_2(~select(~vec3<u32>(arg_0.a, u_input.b, 18840u), ~vec3<u32>(1u, u_input.c.x, 0u), global3.x & false)).c;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(978f - 705f) + _wgslsmith_f_op_f32(sign(710f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(135f)) - _wgslsmith_f_op_f32(min(356f, -857f))))))));
    let var_0 = vec3<i32>(-46258i, max(-1i, abs(~(~(-1i)))), -global1[_wgslsmith_index_u32(u_input.c.x, 9u)]);
    let var_1 = func_5(func_1(), ~global1[_wgslsmith_index_u32(~3046u, 9u)]);
    let var_2 = -604f;
    var var_3 = 71147u;
    var var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) * vec2<f32>(var_2, 1021f))))))));
    let var_5 = !any(global3.wzx);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec4<u32>(44451u, ~var_1.a, ~9388u, u_input.c.x)), vec3<u32>(~(~u_input.c.x << (_wgslsmith_sub_u32(27028u, u_input.b) % 32u)), ~1u, firstTrailingBit(~(~15797u))), -var_0.x, vec2<u32>(select(3913u, ~47823u, var_5) ^ 4294967295u, (_wgslsmith_mod_u32(u_input.b, var_1.a) | _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(1u, 72574u))) & firstLeadingBit(1u)));
}

