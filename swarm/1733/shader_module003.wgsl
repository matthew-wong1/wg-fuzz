struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec4<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<bool>;

var<private> global2: u32;

var<private> global3: vec2<i32>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> vec2<bool> {
    var var_0 = Struct_4(1i, global1.xx);
    var var_1 = _wgslsmith_div_vec2_u32(arg_1.yy, arg_1.yx ^ arg_1.yz);
    let var_2 = Struct_5(arg_0.d, select(select(select(select(global1.yz, vec2<bool>(false, arg_0.d.a), arg_0.d.a), select(global1.yy, var_0.b, true), arg_0.d.a), vec2<bool>(true, var_0.b.x), !all(vec2<bool>(false, false))), select(vec2<bool>(true, true), vec2<bool>(true, any(global1.zx)), select(true, false, global3.x >= 59181i)), true));
    var_1 = arg_1.zy;
    var_1 = ~vec2<u32>(arg_0.c, 19865u);
    return vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(228f + -449f)) < arg_0.a.x, global1.x);
}

fn func_2(arg_0: vec3<i32>) -> bool {
    global3 = countOneBits(abs(arg_0.yy));
    let var_0 = arg_0;
    let var_1 = Struct_5(Struct_1(all(!(!global1.yy))), select(select(global1.ww, select(select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, global1.x), global1.wy), !global1.xz, global1.x), -global3.x == 19084i), global1.xy, select(vec2<bool>(true, true), global1.wy, !func_3(Struct_2(vec2<f32>(-984f, 907f), vec2<bool>(global1.x, global1.x), 0u, Struct_1(global1.x)), vec3<u32>(u_input.b, u_input.b, 1u)))));
    global2 = u_input.b;
    let var_2 = var_1;
    return false;
}

fn func_1() -> Struct_4 {
    var var_0 = u_input.a;
    var var_1 = Struct_1(!(!all(vec3<bool>(global1.x, global1.x, false))));
    global0 = -1i;
    let var_2 = _wgslsmith_mult_u32(~u_input.b, firstLeadingBit(1u) << (~u_input.b % 32u));
    global1 = !vec4<bool>(var_1.a, func_2(vec3<i32>(-1i ^ u_input.a, firstTrailingBit(-9363i), u_input.a)), func_2(firstLeadingBit(vec3<i32>(1i, u_input.a, -77585i)) | select(vec3<i32>(u_input.a, 5453i, global3.x), vec3<i32>(6244i, 50614i, 58423i), global1.wyz)), all(select(func_3(Struct_2(vec2<f32>(-1012f, -137f), global1.zw, 25809u, Struct_1(global1.x)), vec3<u32>(u_input.b, u_input.b, 59416u)), !global1.xy, !global1.wx)));
    return Struct_4(_wgslsmith_mod_i32(countOneBits(-(~global3.x)), 1i), !select(global1.xx, global1.zz, vec2<bool>(!global1.x, true)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: u32) -> Struct_4 {
    let var_0 = arg_1.b.x;
    let var_1 = Struct_4(_wgslsmith_clamp_i32(1i & global3.x, ~arg_0.x, -u_input.a), !func_1().b);
    var var_2 = true;
    let var_3 = _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~u_input.b, 86017u, 4294967295u ^ u_input.b), vec3<u32>(13262u, abs(54913u), u_input.b), ~vec3<u32>(1u, 51018u, 67648u)) ^ _wgslsmith_div_vec3_u32(~max(vec3<u32>(45513u, arg_2, 71423u), vec3<u32>(u_input.b, arg_2, 12111u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_2, u_input.b, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(1u, arg_2, 4294967295u), vec3<u32>(u_input.b, 83394u, u_input.b)), vec3<u32>(u_input.b, 14208u, arg_2))), vec3<u32>(~(~1u) >> (u_input.b % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(arg_2 ^ 5148u, u_input.b)), 16211u));
    let var_4 = ~u_input.b;
    return func_1();
}

fn func_5(arg_0: bool, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: i32) -> Struct_1 {
    var var_0 = -2147483647i;
    var var_1 = -717f;
    var_1 = 284f;
    global1 = select(vec4<bool>(false, !func_1().b.x, true, arg_1.b.x), select(!select(vec4<bool>(true, true, false, arg_0), select(vec4<bool>(false, false, false, arg_0), vec4<bool>(global1.x, false, false, true), vec4<bool>(true, true, global1.x, arg_0)), !vec4<bool>(arg_0, global1.x, global1.x, true)), !(!(!vec4<bool>(true, arg_0, arg_0, arg_1.b.x))), !vec4<bool>(true, global1.x, !arg_0, arg_1.b.x && true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-113f - _wgslsmith_div_f32(-862f, 1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(654f)))) != -1385f);
    let var_2 = Struct_3(1494f);
    return Struct_1(!arg_0);
}

fn func_6(arg_0: Struct_2, arg_1: vec3<f32>) -> Struct_5 {
    var var_0 = vec4<i32>(6029i, u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(~global3.x | 1i, u_input.a, ~countOneBits(global3.x)), vec3<i32>(-_wgslsmith_mult_i32(global3.x, -5137i), -1i, u_input.a)), 25136i);
    global2 = u_input.b;
    let var_1 = max(~arg_0.c, 1u);
    let var_2 = select(select(global1.ywx, !select(global1.xyw, global1.xzw, true), vec3<bool>(any(!global1.wxz), all(vec4<bool>(arg_0.d.a, global1.x, global1.x, true)), global1.x)), vec3<bool>(35181i != abs(var_0.x | 14593i), !func_1().b.x, all(vec3<bool>(any(vec3<bool>(true, arg_0.b.x, arg_0.b.x)), !global1.x, all(vec2<bool>(false, arg_0.b.x))))), vec3<bool>(global1.x, true, !(!func_3(arg_0, vec3<u32>(u_input.b, 1u, u_input.b)).x)));
    global1 = vec4<bool>(-67035i > _wgslsmith_dot_vec2_i32(~var_0.yw | countOneBits(var_0.yx), var_0.yx ^ -var_0.xx), any(vec4<bool>(u_input.a == -1i, all(vec4<bool>(arg_0.b.x, false, arg_0.b.x, true)), true, func_3(Struct_2(arg_0.a, var_2.zx, 5207u, arg_0.d), vec3<u32>(51547u, arg_0.c, u_input.b)).x)) & func_4(select(var_0.wy, _wgslsmith_mult_vec2_i32(var_0.xx, var_0.wy), !var_2.zx), func_1(), ~_wgslsmith_add_u32(0u, u_input.b)).b.x, any(global1.wzz), any(vec2<bool>(true, all(global1.yy))));
    return Struct_5(Struct_1(global1.x), !(!vec2<bool>(func_5(global1.x, Struct_4(var_0.x, global1.xy), vec4<u32>(u_input.b, arg_0.c, var_1, 30668u), 8279i).a, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-430f, -433f))), !(!(!vec2<bool>(global1.x, true))), _wgslsmith_mod_u32(94696u, u_input.b << (_wgslsmith_clamp_u32(u_input.b, u_input.b, 1u) % 32u)), func_5(false, func_4(vec2<i32>(-1i, 0i), func_1(), u_input.b), ~vec4<u32>(u_input.b, 42918u, u_input.b, u_input.b), u_input.a)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(245f, 1056f, -1000f)))))))));
    var var_1 = !var_0.a.a;
    let var_2 = var_0.a;
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(342f, 223f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1232f, 1077f) + vec2<f32>(337f, -178f)) * vec2<f32>(-1035f, -1272f))))));
    let var_4 = func_6(Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.x, -1050f) * vec2<f32>(-1172f, 1351f))))), vec2<bool>(true | (var_2.a & var_0.b.x), func_2(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, 2147483647i, global3.x), vec3<i32>(-11247i, 9608i, 1i)))), min(~u_input.b, 36639u), func_6(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.x, 1004f)), vec2<bool>(true, var_0.a.a), abs(66524u), var_0.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, -1254f, 1280f)), vec3<f32>(var_3.x, var_3.x, var_3.x))).a), vec3<f32>(-145f, var_3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1035f, var_3.x, false)) - _wgslsmith_f_op_f32(max(var_3.x, -1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, reverseBits(4294967295u), ~vec2<u32>((u_input.b << (u_input.b % 32u)) >> (reverseBits(u_input.b) % 32u), u_input.b), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -1087f, var_3.x, var_3.x) * vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x)) + vec4<f32>(-1517f, _wgslsmith_f_op_f32(select(var_3.x, var_3.x, false)), _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(-var_3.x))), vec4<f32>(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(616f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.x), var_3.x), -120f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-953f, var_3.x, var_3.x, var_3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1815f, 658f, -1728f, var_3.x)), var_2.a))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, 1438f, 1000f, var_3.x) + vec4<f32>(1015f, -919f, var_3.x, 2501f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, var_3.x, -153f, var_3.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-962f, -287f, 471f, 1018f) * vec4<f32>(var_3.x, 786f, -1171f, var_3.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(879f, var_3.x, -870f, -819f) - vec4<f32>(1000f, var_3.x, -245f, 485f))))));
}

