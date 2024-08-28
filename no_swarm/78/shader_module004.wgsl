struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: i32,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
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

var<private> global0: array<u32, 21> = array<u32, 21>(4294967295u, 0u, 100u, 27700u, 0u, 3078u, 0u, 4294967295u, 0u, 4294967295u, 7232u, 4294967295u, 16293u, 0u, 61733u, 79465u, 14573u, 14887u, 73297u, 0u, 122265u);

var<private> global1: array<i32, 28>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool) -> f32 {
    global0 = array<u32, 21>();
    var var_0 = true;
    global1 = array<i32, 28>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(-arg_1.a), -979f)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.a, _wgslsmith_f_op_f32(1380f * arg_0.a), _wgslsmith_div_f32(arg_1.a, 1000f))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, -2602f, -1102f)) + vec3<f32>(540f, arg_1.a, -1271f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.a + arg_0.a), _wgslsmith_f_op_f32(544f * 1078f), _wgslsmith_f_op_f32(-1200f - 971f)), vec3<f32>(-1706f, _wgslsmith_f_op_f32(trunc(arg_1.a)), arg_0.a))));
    var var_2 = arg_1.c.e;
    return arg_1.a;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_2) -> vec3<bool> {
    let var_0 = arg_0;
    global0 = array<u32, 21>();
    var var_1 = vec4<bool>(arg_0.c.d.b.x, arg_3.b.b.x, var_0.e.x, arg_1.d.c.x);
    let var_2 = arg_2;
    var var_3 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, _wgslsmith_f_op_f32(round(var_2.a)), _wgslsmith_f_op_f32(f32(-1f) * -110f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a, -551f, -1000f)))))));
    return !arg_3.d.b;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<i32>) -> Struct_2 {
    global1 = array<i32, 28>();
    let var_0 = _wgslsmith_add_i32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~global0[_wgslsmith_index_u32(u_input.a.x, 21u)], ~(~u_input.d.x)) | 9457u, 28u)], i32(-1i) * -1i);
    let var_1 = vec4<bool>(29253u > _wgslsmith_clamp_u32(4294967295u, 31990u, 35210u), true, all(select(arg_0.xy, arg_0.zy, arg_0.x)), true);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-570f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(Struct_3(-1412f, true, Struct_2(vec2<i32>(arg_1.x, u_input.e), Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18012u, 21u)], 21u)], arg_0, vec2<bool>(var_1.x, true)), 4294967295u, Struct_1(u_input.a.x, var_1.ywz, arg_0.zz), var_1.x), -11662i, vec2<bool>(true, true)), Struct_3(-1073f, true, Struct_2(arg_1.xy, Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], var_1.zyx, vec2<bool>(false, true)), global0[_wgslsmith_index_u32(u_input.d.x, 21u)], Struct_1(u_input.a.x, arg_0, arg_0.zy), var_1.x), arg_1.x, vec2<bool>(false, false)), arg_0.x == arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1215f)) - -988f), true))), var_1.x, Struct_2(~vec2<i32>(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(u_input.d.x, 28u)], -2147483647i), firstLeadingBit(arg_1.x)), Struct_1(_wgslsmith_dot_vec3_u32(u_input.d.zzy, u_input.d.wxz), vec3<bool>(arg_0.x && arg_0.x, any(vec3<bool>(arg_0.x, false, true)), !arg_0.x), arg_0.zx), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstLeadingBit(115073u), _wgslsmith_dot_vec4_u32(u_input.d, u_input.d)) | countOneBits(~26429u), 21u)], Struct_1(1u << (0u % 32u), vec3<bool>(arg_1.x > -32003i, var_1.x, true), vec2<bool>(arg_0.x, func_2(Struct_3(-634f, arg_0.x, Struct_2(arg_1.xz, Struct_1(59647u, arg_0, var_1.yx), 29006u, Struct_1(global0[_wgslsmith_index_u32(22418u, 21u)], vec3<bool>(true, arg_0.x, true), vec2<bool>(var_1.x, false)), true), -44962i, var_1.xy), Struct_2(arg_1.xx, Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], var_1.zxw, vec2<bool>(arg_0.x, false)), 26239u, Struct_1(global0[_wgslsmith_index_u32(u_input.d.x, 21u)], vec3<bool>(var_1.x, true, false), var_1.wz), var_1.x), Struct_3(1380f, arg_0.x, Struct_2(arg_1.zz, Struct_1(0u, arg_0, vec2<bool>(true, false)), 0u, Struct_1(global0[_wgslsmith_index_u32(4294967295u, 21u)], vec3<bool>(arg_0.x, true, var_1.x), var_1.yw), arg_0.x), arg_1.x, vec2<bool>(var_1.x, arg_0.x)), Struct_2(arg_1.yy, Struct_1(20857u, vec3<bool>(false, arg_0.x, false), vec2<bool>(true, true)), 88470u, Struct_1(4427u, arg_0, vec2<bool>(true, false)), arg_0.x)).x)), arg_0.x), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 21u)], 28u)], !vec2<bool>(var_1.x, true));
    global0 = array<u32, 21>();
    return var_2.c;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global0 = array<u32, 21>();
    global1 = array<i32, 28>();
    let var_0 = arg_0.d;
    let var_1 = vec2<f32>(-233f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1602f - _wgslsmith_f_op_f32(f32(-1f) * -1768f)))))));
    global0 = array<u32, 21>();
    return func_3(!vec3<bool>(any(arg_0.d.b.xz), func_2(Struct_3(1089f, false, arg_0, arg_0.a.x, vec2<bool>(false, var_0.b.x)), arg_0, Struct_3(908f, var_0.c.x, arg_0, 1i, vec2<bool>(var_0.c.x, true)), arg_0).x, all(vec4<bool>(var_0.b.x, arg_0.e, arg_0.d.b.x, var_0.c.x))), firstTrailingBit(vec3<i32>(-u_input.e, _wgslsmith_dot_vec2_i32(arg_0.a, arg_0.a), 2147483647i) | (vec3<i32>(-25377i, -1i, 1i) >> (u_input.d.wxx % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(664f * _wgslsmith_f_op_f32(func_1(Struct_3(210f, false, Struct_2(vec2<i32>(41862i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 28u)]), Struct_1(u_input.d.x, vec3<bool>(var_0.x, true, false), vec2<bool>(true, var_0.x)), u_input.a.x, Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], vec3<bool>(var_0.x, var_0.x, false), vec2<bool>(true, var_0.x)), var_0.x), global1[_wgslsmith_index_u32(1u, 28u)], vec2<bool>(var_0.x, var_0.x)), Struct_3(-1352f, true, Struct_2(vec2<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 28u)], 2147483647i), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], vec3<bool>(var_0.x, var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), 4590u, Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33159u, 21u)], 21u)], vec3<bool>(var_0.x, var_0.x, var_0.x), vec2<bool>(false, var_0.x)), false), global1[_wgslsmith_index_u32(4294967295u, 28u)], vec2<bool>(true, false)), var_0.x))) + _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-2646f, -954f), 834f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-692f * -1233f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -323f), -1208f))))))));
    global0 = array<u32, 21>();
    let var_2 = func_4(func_3(vec3<bool>(!all(vec4<bool>(true, true, true, false)), all(func_2(Struct_3(403f, var_0.x, Struct_2(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], u_input.e), Struct_1(u_input.d.x, vec3<bool>(var_0.x, true, true), vec2<bool>(var_0.x, var_0.x)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], Struct_1(global0[_wgslsmith_index_u32(28896u, 21u)], vec3<bool>(var_0.x, false, true), vec2<bool>(false, var_0.x)), var_0.x), global1[_wgslsmith_index_u32(4294967295u, 28u)], vec2<bool>(true, false)), Struct_2(vec2<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a.x, 28u)]), Struct_1(u_input.a.x, vec3<bool>(var_0.x, var_0.x, var_0.x), vec2<bool>(true, true)), 40601u, Struct_1(global0[_wgslsmith_index_u32(1u, 21u)], vec3<bool>(var_0.x, var_0.x, true), vec2<bool>(true, var_0.x)), false), Struct_3(1865f, var_0.x, Struct_2(vec2<i32>(-2901i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], 28u)]), Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], vec3<bool>(var_0.x, true, var_0.x), vec2<bool>(var_0.x, true)), 28989u, Struct_1(u_input.a.x, vec3<bool>(false, var_0.x, false), vec2<bool>(var_0.x, var_0.x)), false), global1[_wgslsmith_index_u32(26650u, 28u)], vec2<bool>(true, true)), Struct_2(vec2<i32>(1i, 17878i), Struct_1(global0[_wgslsmith_index_u32(9045u, 21u)], vec3<bool>(var_0.x, var_0.x, var_0.x), vec2<bool>(true, var_0.x)), 1u, Struct_1(138753u, vec3<bool>(false, var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x)), false))), !(var_0.x || var_0.x)), firstLeadingBit(-_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e, -43746i, global1[_wgslsmith_index_u32(1u, 28u)]), vec3<i32>(global1[_wgslsmith_index_u32(u_input.d.x, 28u)], 2147483647i, 2147483647i)))));
    var var_3 = _wgslsmith_sub_u32(var_2.c, var_2.c);
    var var_4 = -2147483647i;
    let var_5 = 1200f;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_add_u32(reverseBits(~48063u), u_input.a.x), abs(var_2.b.a), _wgslsmith_add_u32(var_2.d.a, global0[_wgslsmith_index_u32(60039u, 21u)])));
}

