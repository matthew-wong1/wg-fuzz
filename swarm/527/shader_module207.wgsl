struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4>;

var<private> global1: vec3<f32> = vec3<f32>(440f, 1157f, 1000f);

var<private> global2: array<Struct_4, 1>;

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global4: vec2<i32> = vec2<i32>(80004i, i32(-2147483648));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_2) -> vec4<bool> {
    global0 = array<Struct_2, 4>();
    let var_0 = arg_3.c.a;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global1.x, arg_2))) * -536f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) * _wgslsmith_f_op_f32(step(arg_3.d.x, arg_3.d.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(arg_3.d.x + -1000f))))));
    var var_2 = Struct_4(Struct_3(Struct_1(min(firstLeadingBit(1i), global4.x)), vec3<f32>(-1268f, _wgslsmith_f_op_f32(max(755f, _wgslsmith_div_f32(1000f, -456f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2)))), select(select(arg_0.zx, !arg_1.xx, select(arg_0.yy, arg_0.yz, arg_1.zx)), select(select(arg_1.yy, arg_0.wy, global3.zw), select(arg_1.zy, arg_0.wz, global3.zz), vec2<bool>(true, global3.x)), select(!arg_1.yx, select(global3.xz, arg_0.ww, vec2<bool>(false, true)), all(global3.xww)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_3.d.xx), global1.xy, vec2<bool>(-global4.x < -var_0, true))), ~(~(arg_3.a.x >> (u_input.a.x % 32u))), ~select(arg_3.a.x, u_input.a.x, arg_1.x));
    var var_3 = countOneBits(-_wgslsmith_add_vec2_i32(vec2<i32>(1i, _wgslsmith_sub_i32(-1i, var_2.a.a.a)), ~vec2<i32>(var_0, 2147483647i)));
    return vec4<bool>(arg_0.x, var_2.a.a.a < reverseBits(2147483647i), global3.x, true);
}

fn func_2() -> vec4<bool> {
    let var_0 = abs(~u_input.a);
    global3 = vec4<bool>(!(global3.x && true), any(select(!select(vec3<bool>(true, global3.x, true), vec3<bool>(global3.x, true, global3.x), global3.yzz), !(!vec3<bool>(global3.x, global3.x, global3.x)), true)), !global3.x, false | (-2147483647i < ~(global4.x & global4.x)));
    var var_1 = select(global3.zz, vec2<bool>(!global3.x, global3.x), global3.x);
    let var_2 = !select(func_3(!select(vec4<bool>(true, global3.x, false, global3.x), vec4<bool>(var_1.x, false, var_1.x, true), false), select(vec3<bool>(true, true, true), global3.wxz, select(global3.zxy, global3.yzx, global3.xxw)), -722f, Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, 1u, u_input.a.x), vec4<u32>(43021u, 1u, u_input.a.x, u_input.a.x)), Struct_1(global4.x), Struct_1(8584i), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) + vec3<f32>(global1.x, 1177f, 1000f)), Struct_1(global4.x))), !select(vec4<bool>(var_1.x, global3.x, false, true), !vec4<bool>(global3.x, global3.x, global3.x, true), !vec4<bool>(var_1.x, false, global3.x, false)), !(!all(vec4<bool>(global3.x, var_1.x, true, false))));
    var var_3 = global2[_wgslsmith_index_u32(~var_0.x, 1u)];
    return var_2;
}

fn func_1() -> i32 {
    global3 = func_2();
    var var_0 = 331f;
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(func_1(), global4.x);
    let var_1 = firstTrailingBit(vec3<i32>(global4.x, 18738i, _wgslsmith_sub_i32(abs(_wgslsmith_add_i32(var_0.x, -12156i)), abs(~global4.x))));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.x, 195f, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(round(111f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2162f)) * 234f)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2 - vec4<f32>(820f, global1.x, -1167f, -2627f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2), _wgslsmith_div_vec4_f32(var_2, var_2)))));
    var var_4 = -1i;
    var var_5 = global0[_wgslsmith_index_u32(abs(max(select(~0u >> (firstLeadingBit(45918u) % 32u), u_input.a.x, all(global3.xwy) && any(global3.zx)), u_input.a.x)), 4u)];
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
    let var_7 = Struct_2(~var_5.a, Struct_1(var_1.x), var_5.e, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(var_3.yyw, var_5.d)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-516f, -1325f, var_2.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, global1.x) * vec3<f32>(var_5.d.x, -1053f, -921f)))))), var_5.b);
    var var_8 = select(func_3(vec4<bool>(!(!global3.x), !global3.x, !global3.x, true), vec3<bool>(false, !all(global3.xw), !(global3.x || global3.x)), var_7.d.x, global0[_wgslsmith_index_u32(var_5.a.x, 4u)]).xx, vec2<bool>(true, global3.x), !vec2<bool>(true, !global3.x));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(((var_7.a >> (vec4<u32>(u_input.a.x, 1u, 19907u, 1u) % vec4<u32>(32u))) | vec4<u32>(u_input.a.x, 14884u, 1u, 4294967295u)) | var_7.a), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1082f, -1274f, var_5.d.x, -1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(var_2))), vec4<bool>(false, func_2().x, _wgslsmith_f_op_f32(-var_3.x) <= _wgslsmith_f_op_f32(184f - 478f), false))), u_input.a.x, _wgslsmith_sub_i32(-var_1.x, -4906i), ~var_7.a.wzz);
}

