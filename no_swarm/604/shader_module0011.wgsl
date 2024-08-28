struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
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

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<u32>(34442u, 0u), 1u, vec2<f32>(-459f, -1163f)), vec3<bool>(false, true, true), vec3<bool>(false, true, true));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.c.x, -574f, -1000f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-971f, arg_1.c.x, global1.a.c.x) + vec3<f32>(arg_1.c.x, 1036f, arg_1.c.x)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.c.x, 1422f, -764f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-929f, arg_1.c.x, arg_1.c.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.c.x, -1918f, 384f)))))));
    var var_1 = Struct_1(arg_0.wz, 4294967295u, arg_1.c);
    var_1 = global1.a;
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(582f, 1000f), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-525f, 1620f), vec2<f32>(arg_1.c.x, global1.a.c.x))))) + vec2<f32>(-729f, _wgslsmith_div_f32(arg_1.c.x, var_1.c.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global1.a.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.c.x, -884f) + var_0.zx), global1.c.yy))), global1.b.xz)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.c.x, global1.a.c.x), _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.c.x, -1412f), var_0.yy))))))));
    let var_3 = Struct_1(vec2<u32>(abs(max(arg_1.a.x, global1.a.b)) << (0u % 32u), min(_wgslsmith_clamp_u32(global1.a.b, 4294967295u, global1.a.b), ~16906u) << (global1.a.a.x % 32u)), arg_1.a.x, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_1.c * vec2<f32>(-1040f, global1.a.c.x)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_0.xy + var_1.c))))))));
    return !vec4<bool>(global1.b.x, global1.c.x, select(any(vec2<bool>(global1.c.x, global1.c.x)), !(true & global1.b.x), all(vec3<bool>(global1.b.x, global1.c.x, false))), global1.b.x & global1.c.x);
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<u32>) -> vec4<bool> {
    global1 = Struct_2(Struct_1(vec2<u32>(arg_2.x, 1u), arg_2.x, arg_1), vec3<bool>(arg_0, global1.c.x, all(!global1.c.xy)), select(select(select(select(vec3<bool>(false, arg_0, global1.b.x), global1.b, global1.c), select(global1.b, global1.b, vec3<bool>(false, true, true)), global1.c.x), !select(vec3<bool>(false, false, true), vec3<bool>(global1.b.x, true, global1.c.x), vec3<bool>(global1.b.x, global1.b.x, true)), global1.b), !select(!global1.c, !global1.c, arg_1.x > 1000f), all(!select(vec4<bool>(true, global1.b.x, global1.b.x, false), vec4<bool>(arg_0, arg_0, true, true), true))));
    global1 = Struct_2(global1.a, !global1.c, select(!vec3<bool>(true, all(vec4<bool>(arg_0, true, arg_0, arg_0)), arg_0), !global1.c, !all(func_3(vec4<u32>(arg_2.x, 1u, 1u, 11126u), global1.a))));
    var var_0 = Struct_2(global1.a, !vec3<bool>(any(vec3<bool>(false, global1.b.x, false)), !arg_0 | global1.b.x, all(!vec2<bool>(arg_0, false))), !select(select(select(vec3<bool>(arg_0, true, global1.c.x), vec3<bool>(global1.c.x, global1.c.x, false), global1.c), func_3(vec4<u32>(1u, 32870u, arg_2.x, 0u), global1.a).yxx, global1.b), vec3<bool>(arg_1.x == global1.a.c.x, arg_0, all(vec4<bool>(true, arg_0, false, global1.b.x))), arg_0));
    let var_1 = var_0.a;
    let var_2 = global1.a;
    return func_3(reverseBits(firstTrailingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(2320u, 50769u, 0u, global1.a.b), vec4<u32>(6965u, global1.a.b, global1.a.a.x, 1u)))), var_0.a);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = arg_1.a.c.x;
    var var_1 = vec2<u32>(arg_1.a.a.x, global1.a.b);
    global0 = false;
    let var_2 = select(select(!select(vec4<bool>(arg_1.b.x, arg_0.x, true, true), vec4<bool>(true, arg_1.b.x, true, arg_0.x), !global1.c.x), !(!(!vec4<bool>(false, arg_0.x, arg_1.b.x, false))), all(!vec4<bool>(false, global1.c.x, global1.c.x, arg_0.x))), func_2(all(vec2<bool>(true, any(vec4<bool>(arg_1.c.x, true, true, global1.c.x)))), arg_1.a.c, vec3<u32>(~firstTrailingBit(var_1.x), ~max(arg_1.a.b, var_1.x), 4294967295u)), all(!(!select(vec2<bool>(arg_0.x, arg_1.b.x), vec2<bool>(global1.c.x, arg_1.c.x), vec2<bool>(global1.c.x, arg_1.b.x)))));
    let var_3 = 8603i;
    return !select(global1.c.yy, global1.b.yy, vec2<bool>(global1.b.x, all(select(vec2<bool>(true, false), global1.c.xy, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(484f, -364f, global1.a.c.x) * vec3<f32>(234f, global1.a.c.x, global1.a.c.x))) * vec3<f32>(-372f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -791f)))));
    var var_1 = _wgslsmith_sub_u32(~(~(~global1.a.a.x & global1.a.a.x)), 61871u | global1.a.a.x);
    global0 = true | ((all(func_1(global1.c, Struct_2(global1.a, vec3<bool>(global1.b.x, true, true), global1.c))) != func_2(func_1(vec3<bool>(global1.c.x, global1.b.x, false), Struct_2(Struct_1(vec2<u32>(global1.a.b, 0u), global1.a.a.x, global1.a.c), vec3<bool>(global1.c.x, false, false), vec3<bool>(global1.b.x, global1.c.x, false))).x, vec2<f32>(global1.a.c.x, 1379f), _wgslsmith_add_vec3_u32(vec3<u32>(4205u, 2130u, global1.a.a.x), vec3<u32>(10911u, 5747u, 0u))).x) && !global1.c.x);
    var var_2 = vec3<bool>((true | global1.b.x) & global1.c.x, global1.c.x, all(func_2(true, var_0.zz, vec3<u32>(1u, 102320u, 1u) ^ (vec3<u32>(0u, 1u, global1.a.b) & vec3<u32>(0u, global1.a.b, 13635u))).zxw));
    global0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(~(select(vec3<u32>(0u, global1.a.b, 0u), vec3<u32>(4294967295u, global1.a.b, global1.a.b), false) | ~vec3<u32>(global1.a.b, global1.a.b, 21869u)) << (~(~firstTrailingBit(vec3<u32>(global1.a.a.x, global1.a.a.x, 75129u))) % vec3<u32>(32u)));
}

