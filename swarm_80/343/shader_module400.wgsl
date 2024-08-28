struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = Struct_1(any(vec4<bool>(false, true, true, select(global0.a, true, !arg_2.a))));
    global0 = Struct_1(!global2.a);
    global0 = var_0;
    global1 = arg_1;
    global0 = var_0;
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = 1582f;
    var var_1 = ~_wgslsmith_div_i32(u_input.a.x, -_wgslsmith_sub_i32(max(u_input.a.x, 46563i), max(0i, -1i)));
    global1 = ~u_input.a.x;
    var var_2 = arg_3;
    let var_3 = arg_1;
    return func_2(arg_3, ~_wgslsmith_dot_vec3_i32(u_input.a, countOneBits(u_input.a << (u_input.b % vec3<u32>(32u)))), Struct_1(true), ~1u);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global1 = -2147483647i;
    let var_0 = func_3(Struct_1(true), arg_1.a, 1587f, arg_1);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1839f), -734f) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(215f, 889f) * vec2<f32>(-369f, 273f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1583f, -332f))), all(vec4<bool>(var_0.a, arg_1.a, arg_2.a, arg_1.a))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(262f, 839f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1456f, -1596f) * vec2<f32>(1419f, 374f)), global0.a)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-255f, -432f), vec2<f32>(1000f, 653f)))))));
    var var_2 = arg_1;
    global1 = 0i;
    return Struct_1(var_0.a);
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = func_4(0u, func_3(func_2(Struct_1(u_input.b.x == 4294967295u), _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_mod_i32(u_input.a.x, -10407i)), Struct_1(global2.a), 0u), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -905f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(360f - 252f))), Struct_1(false)), Struct_1(false));
    let var_1 = Struct_1(global0.a);
    var_0 = Struct_1(var_0.a);
    let var_2 = var_1;
    global0 = var_1;
    return var_2;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> i32 {
    let var_0 = 1u;
    var var_1 = u_input.a.xz;
    global1 = ~1i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2460f + -552f)))) - _wgslsmith_f_op_f32(-500f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_3 = select(select(!select(vec3<bool>(true, false, true), select(vec3<bool>(arg_3, false, true), vec3<bool>(true, true, arg_1.a), global0.a), any(vec4<bool>(true, false, true, arg_1.a))), select(vec3<bool>(true, true, any(vec2<bool>(global0.a, global2.a))), vec3<bool>(global2.a, arg_2 > 15205i, all(vec3<bool>(false, global2.a, true))), var_1.x >= ~u_input.a.x), !select(select(vec3<bool>(true, arg_0, false), vec3<bool>(false, global0.a, true), arg_1.a), vec3<bool>(arg_3, arg_0, global2.a), arg_3)), vec3<bool>(false, !(!any(vec3<bool>(false, false, arg_1.a))), true), !vec3<bool>(!(u_input.b.x == 25520u), !all(vec3<bool>(global0.a, true, false)), func_1(vec4<bool>(arg_0, arg_3, true, true)).a == any(vec4<bool>(arg_0, global0.a, arg_3, arg_1.a))));
    return 32013i;
}

fn func_6(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_1(any(!vec4<bool>(true, arg_0.x >= -1983f, true, true)));
    var var_1 = vec4<bool>(func_2(Struct_1(true), 0i, Struct_1(func_4(48525u, Struct_1(global2.a), arg_2).a), u_input.c.x).a, arg_2.a, !(!all(vec3<bool>(true, true, false)) | !all(vec4<bool>(true, true, true, true))), true);
    var var_2 = max(firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.a.zx, u_input.a.xy) ^ 8306i), abs(u_input.a.x));
    let var_3 = arg_1.x;
    let var_4 = Struct_1(var_0.a);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-625f, 480f, 719f)))))), u_input.a.xz, Struct_1(firstTrailingBit(u_input.a.x >> (u_input.c.x % 32u)) < u_input.a.x), func_5(global2.a, func_1(vec4<bool>(global0.a, global0.a, false, false)), ~(-1473i), all(vec3<bool>(false, true, true))) | countOneBits(_wgslsmith_clamp_i32(-u_input.a.x, ~u_input.a.x, 1i)));
    let var_1 = Struct_1(any(select(select(select(vec2<bool>(true, global0.a), vec2<bool>(true, false), vec2<bool>(var_0.a, true)), vec2<bool>(true, true), select(vec2<bool>(true, global2.a), vec2<bool>(var_0.a, false), vec2<bool>(false, global0.a))), !(!vec2<bool>(false, global2.a)), select(!vec2<bool>(false, var_0.a), vec2<bool>(global2.a, var_0.a), var_0.a & true))));
    let var_2 = func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-235f + 224f), -675f, _wgslsmith_f_op_f32(1328f - 1521f)) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-622f, -1000f, -480f), vec3<f32>(-421f, 226f, -894f), vec3<bool>(var_0.a, var_1.a, true))))))), reverseBits(vec2<i32>(_wgslsmith_add_i32(min(45871i, 10775i), u_input.a.x << (u_input.b.x % 32u)), firstTrailingBit(u_input.a.x))), Struct_1(any(vec3<bool>(true, var_1.a & true, false))), u_input.a.x);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_4 = !(!(!(!select(vec3<bool>(var_2.a, true, global0.a), vec3<bool>(true, var_1.a, global0.a), false))));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))) + 423f)));
    global1 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_5, u_input.c.x, _wgslsmith_dot_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, 40436i, -18441i) >> (vec4<u32>(u_input.b.x, 0u, 15599u, u_input.c.x) % vec4<u32>(32u)), vec4<i32>(u_input.a.x, 7049i, u_input.a.x, -1i)), countOneBits(_wgslsmith_div_vec4_i32(~vec4<i32>(13316i, 20582i, -36747i, u_input.a.x), max(vec4<i32>(-58286i, u_input.a.x, u_input.a.x, 8886i), vec4<i32>(u_input.a.x, -1i, 458i, u_input.a.x))))), ~35074i);
}

