struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<u32>,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<i32, 6>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_2, arg_3: vec4<f32>) -> u32 {
    global0 = Struct_3(select(vec4<bool>(any(arg_2.c.a.zx), any(vec3<bool>(global0.a.x, global0.a.x, true)) | all(global0.a), any(select(vec3<bool>(arg_2.d, false, false), arg_2.c.a, global0.a.x)), true), global0.a, true));
    global1 = array<i32, 6>();
    global0 = Struct_3(!vec4<bool>(arg_2.c.a.x, all(select(arg_2.c.a, arg_2.c.a, false)), all(vec2<bool>(false, true)), arg_2.c.a.x));
    global1 = array<i32, 6>();
    var var_0 = arg_0.yz;
    return 0u;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<i32>) -> bool {
    var var_0 = Struct_3(!select(select(!global0.a, !vec4<bool>(arg_1.d, true, global0.a.x, false), !vec4<bool>(arg_1.c.a.x, global0.a.x, arg_1.d, false)), global0.a, reverseBits(u_input.a) < 81809u));
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), -189f) + arg_1.a.yx);
    var var_2 = arg_0;
    var_1 = _wgslsmith_f_op_vec2_f32(arg_1.a.wz + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-arg_1.a.zz), vec2<f32>(1000f, 1000f), select(vec2<bool>(true, arg_1.c.a.x), var_0.a.xz, false))))));
    var var_3 = var_2.x;
    return any(!(!(!var_0.a.xx)));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_div_i32(_wgslsmith_div_i32(-1i & ~global1[_wgslsmith_index_u32(u_input.a, 6u)], u_input.b.x), -2147483647i);
    let var_1 = _wgslsmith_sub_u32(~(~(~4294967295u)), ~(1u | func_2(vec3<u32>(u_input.a, 1u, 4294967295u), u_input.a, Struct_2(vec4<f32>(-1346f, -2333f, -200f, 2059f), vec2<u32>(u_input.a, u_input.a), Struct_1(vec3<bool>(global0.a.x, true, false), u_input.b, u_input.a, -305f, -2147483647i), global0.a.x, u_input.a), vec4<f32>(-1000f, -457f, 387f, 1299f)))) << (15826u % 32u);
    var var_2 = Struct_3(vec4<bool>(func_3(vec3<i32>(_wgslsmith_add_i32(7159i, 10634i), 15516i, reverseBits(21348i)), Struct_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1388f, -1417f, 235f, 781f))), ~vec2<u32>(var_1, 0u), Struct_1(vec3<bool>(global0.a.x, true, true), u_input.b, var_1, 212f, global1[_wgslsmith_index_u32(u_input.a, 6u)]), any(global0.a), _wgslsmith_div_u32(61788u, u_input.a)), vec3<i32>(u_input.c & global1[_wgslsmith_index_u32(u_input.a, 6u)], u_input.b.x, 1i)), true, !global0.a.x, !global0.a.x));
    let var_3 = vec2<bool>(global0.a.x, all(!select(!var_2.a, !var_2.a, false)));
    let var_4 = u_input.b.x;
    return global1[_wgslsmith_index_u32(4294967295u, 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-func_1(), -1i | _wgslsmith_mult_i32(u_input.b.x, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(43125u, u_input.a, 40246u), 6u)]), -27297i, i32(-1i) * -1i), vec4<i32>(func_1(), _wgslsmith_dot_vec3_i32(firstTrailingBit(-vec3<i32>(27203i, 25166i, global1[_wgslsmith_index_u32(32276u, 6u)])), _wgslsmith_mod_vec3_i32(vec3<i32>(-68091i, -1i, u_input.c), firstLeadingBit(vec3<i32>(u_input.c, -46350i, u_input.c)))), 27945i, -19795i));
    global1 = array<i32, 6>();
    global1 = array<i32, 6>();
    var var_1 = global0.a.yzy;
    var var_2 = vec4<i32>(5919i << (0u % 32u), -2590i, -2147483647i, 820i);
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1122f, 864f, _wgslsmith_f_op_f32(f32(-1f) * -1143f), _wgslsmith_f_op_f32(floor(-948f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-781f, -389f, -864f, -1294f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-390f, -497f, -1372f, -273f)))) * _wgslsmith_div_vec4_f32(vec4<f32>(-465f, 1466f, -1371f, _wgslsmith_f_op_f32(-463f * -552f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(944f, 3145f, 1573f, 815f) + vec4<f32>(640f, 175f, 1122f, -1242f)))))), _wgslsmith_mod_vec2_u32(~vec2<u32>(~u_input.a, select(u_input.a, u_input.a, false)), abs(~select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), false))), Struct_1(select(select(select(global0.a.yzz, global0.a.zzx, global0.a.x), vec3<bool>(var_1.x, var_1.x, false), true), global0.a.wyy, true | var_1.x), select(select(var_2.zx | u_input.b, select(u_input.b, var_2.zx, true), true), _wgslsmith_mod_vec2_i32(var_2.wy, vec2<i32>(global1[_wgslsmith_index_u32(u_input.a, 6u)], -33918i)), var_1.zy), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -527f)), -global1[_wgslsmith_index_u32(~0u & u_input.a, 6u)]), func_3(select(_wgslsmith_clamp_vec3_i32(var_2.wwx, vec3<i32>(-1i, global1[_wgslsmith_index_u32(u_input.a, 6u)], var_2.x), var_2.yxx), ~_wgslsmith_div_vec3_i32(vec3<i32>(-38765i, var_2.x, global1[_wgslsmith_index_u32(u_input.a, 6u)]), var_2.zzz), vec3<bool>(any(var_1.xx), func_3(vec3<i32>(u_input.c, u_input.c, u_input.c), Struct_2(vec4<f32>(-158f, -851f, -1245f, -525f), vec2<u32>(u_input.a, 25666u), Struct_1(vec3<bool>(var_1.x, false, global0.a.x), vec2<i32>(u_input.b.x, u_input.b.x), 0u, -296f, 24319i), false, 4294967295u), vec3<i32>(u_input.c, 2147483647i, global1[_wgslsmith_index_u32(67657u, 6u)])), global0.a.x)), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 1226f, -822f, 478f)))), ~vec2<u32>(5069u, u_input.a), Struct_1(vec3<bool>(false, global0.a.x, true), vec2<i32>(-1i, var_2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -526f), -var_2.x), !global0.a.x, u_input.a), abs(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(var_2.yxy, var_2.xzz), var_2.xyz))), ~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a, var_3.b.x, u_input.a, u_input.a), abs(vec4<u32>(var_3.e, 6833u, u_input.a, 38713u))), firstLeadingBit(abs(vec4<u32>(3650u, u_input.a, u_input.a, 0u))), global0.a.x)), _wgslsmith_clamp_i32(abs(min(-1i, 14748i)), global1[_wgslsmith_index_u32(u_input.a << (0u % 32u), 6u)], func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-241f + var_3.a.x) * var_3.a.x)), -(~var_2.yy ^ _wgslsmith_clamp_vec2_i32(max(var_2.yw, var_2.ww), var_2.xy >> (var_3.b % vec2<u32>(32u)), u_input.b)));
}

