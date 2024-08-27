struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 35534u, 0u);

var<private> global1: Struct_1;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    global0 = vec3<u32>(global0.x ^ global0.x, u_input.e.x, u_input.e.x);
    var var_0 = _wgslsmith_mod_vec3_u32(~(~(~u_input.e.yxw)), u_input.d.zyx);
    var var_1 = arg_3;
    var_1 = arg_0;
    var var_2 = arg_1;
    return u_input.b.xx;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = max(u_input.a.xw, func_3(Struct_1(vec2<bool>(global1.a.x, global1.a.x)), Struct_1(vec2<bool>(false, false)), Struct_1(global1.a), Struct_1(select(global1.a, vec2<bool>(global1.a.x, true), global1.a)))) >> (~u_input.d.zw % vec2<u32>(32u));
    var_0 = firstLeadingBit(vec2<i32>(var_0.x, arg_2.x));
    let var_1 = Struct_1(!select(select(!vec2<bool>(global1.a.x, global1.a.x), select(global1.a, vec2<bool>(true, global1.a.x), global1.a.x), select(vec2<bool>(false, global1.a.x), global1.a, true)), global1.a, any(global1.a)));
    var var_2 = !vec4<bool>(var_1.a.x, all(vec3<bool>(var_1.a.x || false, !var_1.a.x, any(vec4<bool>(var_1.a.x, false, var_1.a.x, true)))), false, var_1.a.x);
    var_2 = !vec4<bool>(all(select(vec4<bool>(global1.a.x, global1.a.x, var_1.a.x, false), select(vec4<bool>(false, false, false, var_1.a.x), vec4<bool>(var_2.x, global1.a.x, var_1.a.x, global1.a.x), false), !vec4<bool>(false, global1.a.x, false, var_1.a.x))), all(vec3<bool>(true, true, false)), true, 14094i < firstLeadingBit(_wgslsmith_dot_vec3_i32(u_input.a.yyz, u_input.c)));
    return var_1;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global1 = arg_1;
    var var_0 = arg_1;
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(856f, 294f, -177f), vec3<f32>(109f, 125f, 1105f))))))), vec4<f32>(_wgslsmith_f_op_f32(503f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-775f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(944f)) * _wgslsmith_f_op_f32(789f + 445f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-231f, 920f))))), 344f, _wgslsmith_f_op_f32(abs(1f))), u_input.a.zxy);
    global1 = func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(543f, 2204f, 621f))) - vec3<f32>(1f, 1f, 1f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(1594f, 731f, 117f, 844f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(127f, 879f, -978f, -1260f), vec4<f32>(754f, -3200f, -337f, -1000f)))))) + vec4<f32>(743f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -182f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1324f, 1097f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -939f)))), u_input.b);
    var_1 = func_2(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(501f - -1017f)), _wgslsmith_div_f32(1269f, -1185f), true)), -422f, _wgslsmith_f_op_f32(ceil(-611f))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -599f, 199f, -235f)), vec4<f32>(757f, -1204f, -552f, 333f), !vec4<bool>(global1.a.x, global1.a.x, true, global1.a.x))), vec4<f32>(_wgslsmith_f_op_f32(select(-1000f, -1078f, false)), _wgslsmith_f_op_f32(step(-1000f, -366f)), _wgslsmith_f_op_f32(max(-1000f, -838f)), 655f))))), _wgslsmith_add_vec3_i32(u_input.a.zzx, vec3<i32>(u_input.a.x, 37095i, u_input.c.x)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    var var_1 = select(func_1((_wgslsmith_div_vec2_u32(vec2<u32>(global0.x, global0.x), u_input.d.yw) ^ ~vec2<u32>(u_input.d.x, global0.x)) << (~(~global0.zy) % vec2<u32>(32u)), Struct_1(global1.a), Struct_1(!global1.a)), u_input.d.x, true);
    var var_2 = vec4<bool>(global1.a.x, any(vec3<bool>(select(global1.a.x, false, global1.a.x) || false, (global1.a.x && true) | (global1.a.x == true), ~(-1i) < _wgslsmith_clamp_i32(u_input.a.x, u_input.c.x, 13648i))), global1.a.x, true);
    var var_3 = Struct_1(vec2<bool>(global1.a.x, global1.a.x || true));
    var var_4 = Struct_1(var_3.a);
    global1 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-840f, -395f, 960f))), _wgslsmith_div_vec3_f32(vec3<f32>(-1706f, -1054f, 1005f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-697f, -1642f, -278f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(1724f)), -1192f, -113f) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(207f, -875f, -147f) - vec3<f32>(369f, -446f, 1971f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-326f, -1573f, 667f, 2848f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1454f, -1744f, -845f, 547f) - vec4<f32>(-118f, -478f, 935f, 2364f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(372f, -475f, 1677f, -1928f)), vec4<f32>(734f, -478f, -153f, 1000f), var_2.x & true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, -1842f, 1437f, -765f), vec4<f32>(398f, 685f, -309f, -1146f))), !select(vec4<bool>(false, false, var_3.a.x, false), vec4<bool>(var_2.x, false, true, var_2.x), var_4.a.x)))), _wgslsmith_sub_vec3_i32(-(vec3<i32>(74003i, 2147483647i, u_input.b.x) & vec3<i32>(6277i, u_input.b.x, -46862i)), ~(~var_0.zxx)) ^ u_input.b);
    var var_5 = _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -55875i, -22721i, u_input.a.x), vec4<i32>(max(u_input.c.x, _wgslsmith_sub_i32(0i, -16659i)), -36503i, var_0.x, u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(_wgslsmith_mod_i32(u_input.c.x, -var_5.x), u_input.a.x >> (u_input.d.x % 32u))), 29646u, vec2<f32>(-1811f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1025f)) - _wgslsmith_f_op_f32(ceil(325f))) * 675f)), global0.x, vec4<i32>(-2147483647i, -1i, ~2147483647i, i32(-1i) * -var_0.x));
}

