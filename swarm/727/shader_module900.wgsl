struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3 = Struct_3(194f, vec3<f32>(-173f, 283f, -184f), 0i);

var<private> global2: array<vec3<bool>, 23>;

var<private> global3: Struct_2 = Struct_2(vec3<f32>(-1714f, -447f, -642f), true, Struct_1(2147483647i), Struct_1(-4239i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> i32 {
    global1 = Struct_3(global1.b.x, vec3<f32>(_wgslsmith_f_op_f32(floor(-2047f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.a.x), 1525f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(473f, global1.b.x), _wgslsmith_f_op_f32(min(global3.a.x, -615f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1421f), _wgslsmith_f_op_f32(f32(-1f) * -1166f))))), select(2147483647i, -(i32(-1i) * -2147483647i) & global3.c.a, global3.b));
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(192f - _wgslsmith_f_op_f32(f32(-1f) * -479f)) * -2135f), global3.a, _wgslsmith_div_i32(countOneBits(abs(_wgslsmith_sub_i32(global1.c, global1.c))), select(-2147483647i, (u_input.a.x << (0u % 32u)) | -12051i, false)));
    var var_1 = global3.d.a;
    var var_2 = -1i;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1511f + 713f)), global1.a)))));
    return var_0.c;
}

fn func_2(arg_0: u32, arg_1: u32) -> vec3<f32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -172f), global3.a, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(u_input.b.x, func_3(-1095f, vec2<bool>(true, true)), -1i)), u_input.b));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(345f, global1.b.x) - global1.b.x)))), _wgslsmith_f_op_f32(-var_0.b.x));
    var var_2 = vec2<f32>(-468f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -2017f))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1)) * _wgslsmith_div_f32(632f, -1365f))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -888f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -335f))), global1.b.x)), -19739i > _wgslsmith_div_i32(~global1.c, -1i), global3.c, global3.c);
    let var_4 = var_0;
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_0.b)));
}

fn func_1() -> bool {
    var var_0 = Struct_1(0i);
    global3 = Struct_2(_wgslsmith_f_op_vec3_f32(global1.b * _wgslsmith_f_op_vec3_f32(func_2(firstTrailingBit(select(0u, u_input.c.x, true)), _wgslsmith_mod_u32(~10600u, ~u_input.c.x)))), true, global3.c, global3.c);
    let var_1 = Struct_3(global3.a.x, vec3<f32>(-1065f, _wgslsmith_f_op_f32(sign(651f)), -648f), global0.a);
    global1 = var_1;
    global2 = array<vec3<bool>, 23>();
    return -19172i > (~_wgslsmith_mod_i32(var_0.a, i32(-1i) * -2147483647i) & (global1.c & -1360i));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = u_input.a.xxz;
    global2 = array<vec3<bool>, 23>();
    global1 = Struct_3(858f, global1.b, -_wgslsmith_add_i32(-(~(-27894i)), -1i));
    global1 = Struct_3(_wgslsmith_f_op_f32(global3.a.x - -1190f), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(252f, -791f, 1000f) + global1.b) - global1.b), global3.a) - global1.b), arg_1.x);
    let var_1 = !all(!(!arg_0));
    return Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-615f, global1.b.x, 275f))), _wgslsmith_f_op_vec3_f32(exp2(global1.b)))), !var_1, global3.d, Struct_1(8348i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec4<bool>(func_1(), false, !global3.b, true), -min((vec2<i32>(-13191i, 13992i) >> (u_input.c.zy % vec2<u32>(32u))) & _wgslsmith_clamp_vec2_i32(u_input.a.wy, u_input.a.yx, vec2<i32>(global3.d.a, global0.a)), vec2<i32>(-64467i, -16450i)));
    global3 = var_0;
    let var_1 = global3.c;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1326f)), 379f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.b, _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global3.a.x, global3.a.x, 292f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0.a + vec3<f32>(var_0.a.x, var_0.a.x, -119f)))))), ~(-57950i));
    global1 = var_2;
    global0 = func_4(!vec4<bool>((u_input.c.x ^ 0u) <= u_input.c.x, any(vec2<bool>(true, true)), global3.b, false), select(u_input.b.yy, ~vec2<i32>(-var_0.d.a, -1i), all(!global2[_wgslsmith_index_u32(~u_input.c.x, 23u)]))).c;
    var var_3 = _wgslsmith_mod_u32(reverseBits(~16205u), u_input.c.x);
    let var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), u_input.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a.x, _wgslsmith_f_op_f32(f32(-1f) * -849f), var_4.b.x, -444f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-522f, var_2.a, -519f, 1033f) - vec4<f32>(1523f, var_2.b.x, -1313f, -220f)) + vec4<f32>(336f, 1223f, -429f, -1154f)), _wgslsmith_f_op_f32(min(-1161f, var_4.b.x)) <= _wgslsmith_f_op_f32(-global1.b.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1672f, 511f, -1328f, -566f))))), ~reverseBits(vec2<i32>(2147483647i, global3.d.a >> (47305u % 32u))));
}

