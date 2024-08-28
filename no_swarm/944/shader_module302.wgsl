struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(4294967295u, 1999u, 35300u));

var<private> global1: vec2<f32> = vec2<f32>(156f, 2444f);

var<private> global2: Struct_2 = Struct_2(vec3<u32>(52894u, 1u, 0u));

var<private> global3: vec3<i32> = vec3<i32>(-19158i, -1i, -60185i);

var<private> global4: vec3<f32>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: Struct_2) -> f32 {
    let var_0 = vec4<bool>(false, false, any(!vec4<bool>(true, false, any(vec4<bool>(false, true, true, true)), true)), true);
    var var_1 = 223f;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(930f, global4.x) + global1.x) * 375f))));
    global1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global4.x), 418f) * global4.xy)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.yy))));
    global2 = Struct_2(~vec3<u32>(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(14766u, arg_1.x, 58956u, global2.a.x)), select(arg_1, vec4<u32>(arg_0.a.x, 97799u, 7755u, 0u), var_0.x)), 20572u, (1u ^ global2.a.x) >> (4294967295u % 32u)));
    return _wgslsmith_f_op_f32(ceil(886f));
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_dot_vec3_u32(arg_1.a, ~(~(~(global0.a & vec3<u32>(u_input.a, global0.a.x, 2271u)))));
    var var_1 = i32(-1i) * -1i;
    let var_2 = arg_1;
    global0 = arg_1;
    global4 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1079f))), arg_0, _wgslsmith_f_op_f32(func_3(Struct_2(arg_1.a), _wgslsmith_sub_vec4_u32(vec4<u32>(global2.a.x, global0.a.x, arg_1.a.x, arg_1.a.x), vec4<u32>(1u, global0.a.x, var_0, u_input.a) ^ vec4<u32>(1u, var_2.a.x, arg_1.a.x, arg_1.a.x)), ~_wgslsmith_add_vec2_u32(global2.a.xz, vec2<u32>(global0.a.x, global2.a.x)), Struct_2(_wgslsmith_mult_vec3_u32(global2.a, vec3<u32>(1u, var_0, u_input.a)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(332f + 538f)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, -987f) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1035f, 150f, -816f)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-417f, global4.x, -1736f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(157f, global1.x, global1.x) + vec3<f32>(-1152f, global4.x, -1040f)))), select(vec3<bool>(arg_2.x, false, arg_2.x), !vec3<bool>(arg_2.x, arg_2.x, arg_2.x), select(arg_2, arg_2, false)))))));
    return arg_1.a.x;
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> vec3<u32> {
    global2 = Struct_2(_wgslsmith_clamp_vec3_u32(reverseBits(_wgslsmith_clamp_vec3_u32(arg_2.a, vec3<u32>(global0.a.x, 0u, u_input.a) >> (vec3<u32>(33064u, 0u, global2.a.x) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(global2.a, vec3<u32>(u_input.a, 27743u, 45782u)))), min(arg_2.a, countOneBits(_wgslsmith_div_vec3_u32(arg_2.a, vec3<u32>(7120u, u_input.a, 1u)))), vec3<u32>(func_2(-845f, Struct_2(vec3<u32>(0u, 15455u, 113504u)), !arg_2.b.yxy), select(110019u, 54894u, arg_2.b.x), arg_2.a.x)));
    var var_0 = Struct_2(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(~arg_2.a.x, _wgslsmith_dot_vec2_u32(global2.a.xx, arg_2.a.xx), _wgslsmith_div_u32(global2.a.x, 4294967295u)), arg_2.a), ~vec3<u32>(64137u, global2.a.x, 0u) << ((vec3<u32>(1562u, arg_2.a.x, 1u) & min(vec3<u32>(global0.a.x, 65495u, global0.a.x), vec3<u32>(0u, global0.a.x, 341u))) % vec3<u32>(32u))));
    var var_1 = select(select(!select(vec3<bool>(false, arg_0.x, true), vec3<bool>(arg_0.x, arg_0.x, true), true), select(vec3<bool>(!arg_0.x, any(vec4<bool>(false, false, arg_2.b.x, true)), any(vec4<bool>(arg_0.x, arg_2.b.x, false, arg_0.x))), !select(vec3<bool>(true, arg_2.b.x, arg_2.b.x), arg_0.zxz, vec3<bool>(arg_2.b.x, false, true)), ~arg_2.a.x != 0u), all(select(vec3<bool>(true, true, false), arg_0.wwz, arg_2.b.xwy)) | true), select(arg_0.wxz, !arg_2.b.wyw, select(!arg_2.b.yyy, vec3<bool>(arg_2.a.x < arg_2.a.x, true, true), select(!arg_2.b.yww, select(vec3<bool>(arg_0.x, false, arg_2.b.x), vec3<bool>(arg_0.x, false, false), arg_2.b.x), vec3<bool>(true, arg_0.x, false)))), _wgslsmith_sub_i32(-5452i, -u_input.b.x) <= global3.x);
    global0 = Struct_2(~_wgslsmith_mult_vec3_u32(~(var_0.a | arg_2.a), vec3<u32>(~arg_2.a.x, 4294967295u, ~global0.a.x)));
    global1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(239f * arg_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -338f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.xx * vec2<f32>(730f, global4.x)) - _wgslsmith_f_op_vec2_f32(select(global4.zz, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_2.c.x, global4.x), global4.zz, arg_0.xz)), arg_2.b.zx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.c.xy))))));
    return global2.a;
}

fn func_4(arg_0: Struct_2) -> f32 {
    global4 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(308f, -684f, global1.x))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-235f, -860f, -1084f))))))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-121f, global4.x, global1.x) - vec3<f32>(1317f, 947f, global1.x)))))));
    let var_0 = select(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), true)), arg_0.a.x <= (_wgslsmith_add_u32(arg_0.a.x, 4294967295u) << (abs(26221u) % 32u)), true) | true;
    let var_1 = reverseBits(select(u_input.b.wzx, reverseBits(vec3<i32>(global3.x, ~global3.x, u_input.c | 1i)), select(select(select(vec3<bool>(var_0, var_0, true), vec3<bool>(false, var_0, var_0), vec3<bool>(true, var_0, var_0)), vec3<bool>(true, false, var_0), !vec3<bool>(false, var_0, var_0)), vec3<bool>(all(vec3<bool>(true, var_0, var_0)), all(vec3<bool>(var_0, false, true)), any(vec4<bool>(var_0, true, var_0, false))), select(!vec3<bool>(var_0, false, false), select(vec3<bool>(true, true, var_0), vec3<bool>(var_0, var_0, var_0), true), any(vec4<bool>(var_0, var_0, var_0, true))))));
    let var_2 = vec4<i32>(firstTrailingBit(~reverseBits(_wgslsmith_dot_vec2_i32(global3.yz, vec2<i32>(0i, -2147483647i)))), global3.x, reverseBits(_wgslsmith_sub_i32(select(u_input.b.x, global3.x, false) ^ global3.x, 7047i)), ~select(2147483647i, -1i, var_0));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(trunc(global4.x))));
    return _wgslsmith_f_op_f32(-global4.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global2.a);
    global1 = vec2<f32>(-134f, _wgslsmith_f_op_f32(func_4(Struct_2(func_1(vec4<bool>(false, false, false, true), -470f, Struct_1(global0.a, vec4<bool>(false, false, false, true), vec4<f32>(1717f, global4.x, -654f, global1.x), vec4<f32>(1083f, -432f, global4.x, global1.x))) >> (vec3<u32>(global0.a.x, 50923u, global0.a.x) % vec3<u32>(32u))))));
    var var_1 = _wgslsmith_f_op_f32(-global1.x);
    let var_2 = vec2<bool>(true, u_input.b.x <= (global3.x >> (~(~4294967295u) % 32u)));
    let var_3 = var_0;
    global2 = var_3;
    var var_4 = var_3;
    let var_5 = vec4<bool>(all(vec2<bool>(global3.x == u_input.c, false)), all(vec4<bool>(!(!var_2.x), true, true, true)), ((-21443i >> (~global0.a.x % 32u)) > 22373i) && false, all(!var_2));
    let x = u_input.a;
    s_output = StorageBuffer(-1i >> (0u % 32u), ~_wgslsmith_mult_i32(u_input.b.x, global3.x), select(min(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, 26769u, var_4.a.x), vec3<u32>(global2.a.x, var_3.a.x, 1u)), select(vec3<u32>(var_3.a.x, 1u, var_0.a.x), vec3<u32>(var_0.a.x, 1u, 592u), vec3<bool>(true, true, var_5.x))), ~global2.a | global0.a), vec3<u32>(~global2.a.x, ~1u, 4294967295u), vec3<bool>(-647f != _wgslsmith_f_op_f32(-global4.x), !(!var_2.x), any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)))), select(abs(_wgslsmith_sub_i32(-global3.x, 1i)), u_input.c, var_2.x), ~func_1(!vec4<bool>(var_5.x, false, var_2.x, var_2.x), global4.x, Struct_1(~global2.a, !vec4<bool>(var_2.x, var_2.x, var_5.x, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, global1.x, global1.x, 449f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-683f, 1000f, -1574f, global1.x)))));
}

