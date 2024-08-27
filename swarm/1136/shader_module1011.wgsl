struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 76220u;

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<u32>(4294967295u, 4294967295u, 9713u), vec2<f32>(-1287f, -776f), vec3<bool>(false, false, false), true), Struct_1(vec3<u32>(8847u, 4294967295u, 16623u), vec2<f32>(543f, -771f), vec3<bool>(true, false, false), false));

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 24452u, 26250u, 63962u);

var<private> global4: vec3<u32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> vec3<bool> {
    global3 = _wgslsmith_sub_vec4_u32(abs(min(~(~vec4<u32>(global0.a.x, global3.x, global0.a.x, global4.x)), vec4<u32>(1u, _wgslsmith_clamp_u32(0u, 1u, global4.x), 48184u, 1u))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(9184u, 4294967295u), vec2<u32>(1u, 1u)), ~firstLeadingBit(global0.a.x), global4.x, 13903u) & ~vec4<u32>(global0.a.x, min(arg_1.a.x, 0u), select(48991u, 4294967295u, false), 1u));
    let var_0 = 61779i;
    global1 = ~(_wgslsmith_add_u32(arg_1.a.x, ~0u) >> (_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec2_u32(arg_1.a.xy, max(vec2<u32>(86883u, 28144u), arg_1.a.xy)), global0.a.x) % 32u));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.b.x + 839f), _wgslsmith_f_op_f32(step(-1000f, -1066f)), _wgslsmith_f_op_f32(arg_1.b.x - arg_1.b.x)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1122f, arg_1.b.x, -1000f) + vec3<f32>(arg_0, global0.b.x, -370f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.b.x, arg_1.b.x, 583f) - vec3<f32>(1726f, 315f, global0.b.x))))));
    var var_2 = global2[_wgslsmith_index_u32(arg_1.a.x, 2u)];
    return select(select(vec3<bool>(false, any(arg_1.c.xx), false), !select(select(var_2.c, vec3<bool>(var_2.d, arg_1.d, arg_1.d), global0.d), vec3<bool>(true, arg_1.c.x, true), false), all(!(!vec4<bool>(var_2.c.x, true, true, var_2.d)))), var_2.c, false);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    global0 = Struct_1(arg_1.a, arg_1.b, !select(!func_3(arg_1.b.x, global2[_wgslsmith_index_u32(arg_0, 2u)]), vec3<bool>(select(arg_1.d, true, arg_1.d), all(vec2<bool>(global0.c.x, true)), true), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.b.x * -364f)) >= arg_1.b.x);
    global3 = ~vec4<u32>(max(firstLeadingBit(global0.a.x), ~27006u), ~81090u, 4294967295u | arg_0, _wgslsmith_div_u32(1u, 1u)) >> (~countOneBits(~vec4<u32>(arg_1.a.x, 64717u, global3.x, 23978u)) % vec4<u32>(32u));
    global3 = ~firstLeadingBit(firstLeadingBit(vec4<u32>(global3.x, global0.a.x, arg_0, 0u) >> (vec4<u32>(38198u, global4.x, 14228u, arg_1.a.x) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_u32(max(vec4<u32>(5170u, 21851u, arg_0, arg_1.a.x), vec4<u32>(global3.x, 97107u, arg_0, global0.a.x)), ~vec4<u32>(0u, 37644u, arg_0, global4.x)));
    global4 = global0.a;
    let var_0 = ~reverseBits(_wgslsmith_add_vec4_u32(~vec4<u32>(global3.x, 37702u, arg_0, 4294967295u), max(vec4<u32>(1u, global3.x, 4294967295u, 49874u), vec4<u32>(12199u, global0.a.x, 14426u, arg_0)))) >> (_wgslsmith_mod_vec4_u32(~(~(~vec4<u32>(42170u, arg_1.a.x, global0.a.x, 0u))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(48695u, global4.x, 4294967295u, global4.x), select(vec4<u32>(arg_0, 1u, global4.x, 107384u), vec4<u32>(arg_0, global0.a.x, arg_0, 36584u), true))) % vec4<u32>(32u));
    return arg_1;
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(trunc(arg_1.b.x));
    global2 = array<Struct_1, 2>();
    let var_1 = func_2(_wgslsmith_mod_u32(~firstLeadingBit(global0.a.x) & (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.x, 35158u, 14690u, global4.x), vec4<u32>(4294967295u, arg_2.a.x, global0.a.x, arg_2.a.x)) | _wgslsmith_mult_u32(22069u, global4.x)), ~(~reverseBits(global3.x))), Struct_1(~vec3<u32>(global0.a.x, ~67025u, arg_1.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1121f, global0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -772f))), !arg_1.c, true), true | any(vec2<bool>(true & global0.c.x, arg_2.d)), -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, arg_0.x), u_input.a.yzz));
    global4 = global3.zww;
    var var_2 = global3.wz;
    return var_1.c.x;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(func_2(1u, Struct_1(global3.zzz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.b, vec2<f32>(arg_3.x, -606f), global0.c.x))), select(!vec3<bool>(false, arg_1, false), !vec3<bool>(false, false, arg_2.d), select(vec3<bool>(arg_1, global0.d, arg_2.c.x), global0.c, arg_2.c.x)), !arg_1), global0.c.x | true, u_input.a.xyx).b.x + 159f);
    let var_1 = ~30399u;
    let var_2 = ~(u_input.a.x & -7906i) > -_wgslsmith_sub_i32(u_input.a.x, -(~arg_0));
    var var_3 = Struct_1(vec3<u32>(global4.x, 7001u, ~(~global0.a.x) << (_wgslsmith_dot_vec3_u32(~vec3<u32>(global4.x, var_1, 0u), _wgslsmith_div_vec3_u32(global3.yzx, vec3<u32>(1u, 7404u, var_1))) % 32u)), _wgslsmith_f_op_vec2_f32(min(global0.b, global0.b)), select(!vec3<bool>(any(global0.c.yx), true, any(arg_2.c)), arg_2.c, arg_2.c), global0.d);
    global3 = firstTrailingBit(vec4<u32>(~(var_3.a.x >> (firstLeadingBit(44869u) % 32u)), firstTrailingBit(~(~arg_2.a.x)), ~(~arg_2.a.x) >> (abs(var_3.a.x) % 32u), abs(global3.x)));
    return func_2(~var_3.a.x, func_2(~abs(~var_1), func_2(_wgslsmith_div_u32(global0.a.x, 1u), func_2(1u, func_2(20373u, Struct_1(vec3<u32>(arg_2.a.x, 17648u, 643u), vec2<f32>(arg_3.x, arg_2.b.x), arg_2.c, arg_1), var_2, u_input.a.zxw), true, vec3<i32>(-57770i, 17943i, arg_0)), true, vec3<i32>(max(-1i, 1i), -1i, -2147483647i)), !(!(global4.x >= 0u)), ~u_input.a.xzz), false, u_input.a.xwy);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32, arg_3: bool) -> Struct_1 {
    global1 = abs(~(_wgslsmith_div_u32(arg_0.a.x, 1u) & 1u)) << (arg_0.a.x % 32u);
    var var_0 = ~vec3<u32>(~global3.x, global3.x, ~func_2(89609u ^ global0.a.x, global2[_wgslsmith_index_u32(global4.x, 2u)], true, vec3<i32>(-2147483647i, 22734i, arg_2)).a.x);
    let var_1 = arg_0;
    let var_2 = ~firstTrailingBit(_wgslsmith_div_vec2_u32(~(~vec2<u32>(0u, 16025u)), abs(abs(arg_0.a.yx))));
    var var_3 = Struct_1(vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.x, var_0.x, 27086u), abs(vec4<u32>(arg_0.a.x, global3.x, arg_0.a.x, global4.x))), ~(~(~global4.x)), 1u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global0.b), global0.b)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-568f, arg_0.b.x), func_2(var_1.a.x, Struct_1(arg_0.a, vec2<f32>(arg_0.b.x, arg_1.x), vec3<bool>(false, false, arg_3), true), global0.d, vec3<i32>(arg_2, -37159i, arg_2)).b) + _wgslsmith_div_vec2_f32(vec2<f32>(-1931f, arg_0.b.x), _wgslsmith_f_op_vec2_f32(step(arg_1.xy, vec2<f32>(global0.b.x, global0.b.x)))))), !(!vec3<bool>(true, global0.c.x, false)), _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, 45585i), u_input.a.zy) <= ~(-(u_input.a.x & -6607i)));
    return Struct_1(global3.zzw, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.b.x * 1978f), 180f)), _wgslsmith_f_op_f32(arg_0.b.x * arg_1.x)))), select(arg_0.c, !arg_0.c, false), !arg_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(-_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(71331i, u_input.a.x)), vec2<i32>(-1831i, -45953i)), -1000f <= _wgslsmith_f_op_f32(global0.b.x * -877f), Struct_1(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(global0.a, global0.a), vec3<u32>(8068u, global0.a.x, global4.x) >> (vec3<u32>(global4.x, 0u, global0.a.x) % vec3<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(step(-1438f, global0.b.x)), _wgslsmith_f_op_f32(select(-405f, -504f, global0.c.x))), !vec3<bool>(false, global0.c.x, false), func_1(vec2<i32>(u_input.a.x, 10093i), global2[_wgslsmith_index_u32(~11906u, 2u)], global2[_wgslsmith_index_u32(117584u, 2u)])), vec4<f32>(-192f, 202f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b.x * global0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1991f))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(1000f)), 1000f, _wgslsmith_f_op_f32(-global0.b.x))))), max(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, u_input.a), vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x)) ^ abs(u_input.a.x), _wgslsmith_sub_i32(0i, u_input.a.x)), true);
    global2 = array<Struct_1, 2>();
    global4 = _wgslsmith_div_vec3_u32(~select(func_2(~global4.x, Struct_1(vec3<u32>(global0.a.x, global4.x, 20786u), var_0.b, var_0.c, false), true, vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)).a, global0.a, true), ~firstLeadingBit(vec3<u32>(global3.x, 68212u, global3.x) | vec3<u32>(global3.x, 0u, 1770u)));
    let var_1 = any(var_0.c.zz);
    global1 = 4294967295u;
    global1 = _wgslsmith_dot_vec2_u32(firstLeadingBit(abs(var_0.a.zz)), _wgslsmith_add_vec2_u32(vec2<u32>(global3.x << (0u % 32u), ~global3.x) | vec2<u32>(select(23836u, 0u, true), 4294967295u), global4.yy));
    var var_2 = 8005i;
    let var_3 = ~select(select(~vec4<u32>(0u, global3.x, global4.x, global0.a.x), vec4<u32>(1u, _wgslsmith_div_u32(var_0.a.x, 1u), global4.x, var_0.a.x), (2147483647i & u_input.a.x) >= _wgslsmith_clamp_i32(u_input.a.x, -14357i, 2147483647i)), vec4<u32>(firstTrailingBit(10389u), ~min(1u, 1u), global4.x, ~(~42119u)), false);
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~62500u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(53805u, 1u), _wgslsmith_mod_u32(~50239u, select(global0.a.x, global3.x, var_1))), global3.x, reverseBits(var_3.x << (~global3.x % 32u)))), 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zy ^ u_input.a.xz, vec2<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -16493i, -2223i), ~(-u_input.a.xzy))), global0.b.x);
}

