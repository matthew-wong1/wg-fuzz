struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_2;

var<private> global2: i32 = -27083i;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec4<f32>) -> f32 {
    let var_0 = global1.a;
    let var_1 = !vec2<bool>(!any(vec3<bool>(true, false, false)), any(vec2<bool>(any(vec2<bool>(true, false)), true)));
    global2 = abs(22843i);
    let var_2 = vec2<i32>(abs(-12269i), u_input.c);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(exp2(arg_0))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1211f), global0.x, var_1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-758f)) + _wgslsmith_div_f32(global0.x, global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 + 1687f) * _wgslsmith_f_op_f32(trunc(1416f))))))));
    return -594f;
}

fn func_2() -> vec3<f32> {
    let var_0 = Struct_1(~(~max(~global1.a.a, global1.a.a)), u_input.c, _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(u_input.a, u_input.b.x, u_input.b.x))), vec3<u32>(6844u, u_input.b.x, u_input.a << (1u % 32u)) | vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(10495u, u_input.b.x, u_input.a)), ~u_input.b.x, 1u)));
    var var_1 = 4294967295u >> (global1.a.c % 32u);
    global1 = Struct_2(var_0, global0.x);
    var var_2 = Struct_2(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(min(805f, _wgslsmith_f_op_f32(309f * 2082f))), 1868f, vec4<f32>(1678f, 411f, _wgslsmith_f_op_f32(min(global0.x, 913f)), _wgslsmith_f_op_f32(-global0.x))))));
    var var_3 = !(!vec2<bool>(any(vec2<bool>(false, false)), all(vec2<bool>(true, true))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b, -579f, 1072f) * vec3<f32>(global1.b, 235f, var_2.b))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1023f, 2109f, 1628f), vec3<f32>(1000f, -484f, 1304f), vec3<bool>(var_3.x, var_3.x, var_3.x))))))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(var_2.b - _wgslsmith_f_op_f32(global0.x + global1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b * var_2.b) - global0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-506f, var_2.b)))))));
}

fn func_1() -> Struct_1 {
    global2 = ~global1.a.b;
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-737f, -316f, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1490f - -717f), _wgslsmith_f_op_f32(1000f + global0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * global1.b)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1000f, global1.b)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(914f, 479f, -383f) + vec3<f32>(522f, 1888f, 826f)), _wgslsmith_f_op_vec3_f32(func_2()), vec3<bool>(true, false, false))))));
    var var_1 = Struct_1(vec4<i32>(-global1.a.b, global1.a.a.x, 1i, 0i), u_input.c, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(global1.a.c, 53694u), 25393u, max(23340u, 1u)));
    global0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.b, _wgslsmith_div_f32(-1156f, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(890f + var_0.x), _wgslsmith_f_op_f32(func_3(global0.x, global1.b, vec4<f32>(1000f, -1432f, var_0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 1105f, global0.x, global1.b))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.x, -902f)), -1203f)))));
    var_1 = Struct_1(~var_1.a, _wgslsmith_dot_vec2_i32(var_1.a.zw, reverseBits(var_1.a.zz) ^ _wgslsmith_div_vec2_i32(vec2<i32>(-9012i, -26636i), vec2<i32>(-37312i, var_1.b))) << (var_1.c % 32u), global1.a.c);
    return global1.a;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(global1.a, 194f);
    var_0 = Struct_2(arg_1, 326f);
    let var_1 = func_1();
    var var_2 = _wgslsmith_add_vec2_u32(~(~(~(vec2<u32>(arg_1.c, 1u) & vec2<u32>(var_1.c, 20296u)))), select(vec2<u32>(_wgslsmith_mult_u32(1629u, global1.a.c), 0u), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~u_input.b.xy, vec2<u32>(var_1.c, 47752u)), _wgslsmith_add_vec2_u32(~u_input.b.yy, vec2<u32>(var_0.a.c, global1.a.c))), vec2<bool>(false, true)));
    let var_3 = ~(vec4<u32>(arg_1.c, countOneBits(var_1.c), func_1().c, ~select(var_2.x, 0u, true)) << (vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(global1.a.c, 15102u), 1u | var_2.x), countOneBits(var_0.a.c), 1u, ~abs(4294967295u)) % vec4<u32>(32u)));
    return Struct_2(func_1(), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(round(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(global1.b, 1031f, false)))) - global0.x))));
}

fn func_5(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>, arg_3: u32) -> Struct_1 {
    let var_0 = select(!vec2<bool>(any(vec2<bool>(arg_1, true)), true), vec2<bool>(false, true), select(vec2<bool>(arg_1, all(select(vec2<bool>(true, arg_1), vec2<bool>(true, true), false))), select(!(!vec2<bool>(false, arg_1)), !select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1)), select(select(vec2<bool>(false, arg_1), vec2<bool>(arg_1, arg_1), true), select(vec2<bool>(arg_1, arg_1), vec2<bool>(true, false), vec2<bool>(arg_1, true)), u_input.c <= arg_2.x)), all(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, true, arg_1), vec3<bool>(false, true, true)))));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.b, 604f)) * var_1.b);
    global2 = u_input.c;
    var var_3 = abs(~66129u);
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_5(func_4(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), true), func_1()), all(vec2<bool>(true, true)), global1.a.a.wx, min(14475u, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-315f, global0.x))));
    global2 = _wgslsmith_dot_vec3_i32(var_0.a.a.yzy, _wgslsmith_mod_vec3_i32(var_0.a.a.www, ~global1.a.a.wyw) << (u_input.b % vec3<u32>(32u)));
    var var_1 = -((var_0.a.a >> (~reverseBits(vec4<u32>(global1.a.c, u_input.a, 1u, var_0.a.c)) % vec4<u32>(32u))) << (~reverseBits(firstTrailingBit(vec4<u32>(u_input.b.x, global1.a.c, var_0.a.c, 4294967295u))) % vec4<u32>(32u)));
    global2 = 48529i;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.x), -1179f));
    let var_3 = func_4(vec3<bool>(false, false, any(vec4<bool>(true, true, true, true))), var_0.a).a;
    global2 = i32(-1i) * -2147483647i;
    var var_4 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(select(min(~u_input.b, _wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(global1.a.c, 36163u, var_0.a.c))), ~u_input.b, select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true)), vec3<u32>(40443u, u_input.a, _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.b.xx), _wgslsmith_div_vec2_u32(vec2<u32>(0u, 18529u), vec2<u32>(global1.a.c, 0u))))), abs(vec3<u32>(_wgslsmith_mod_u32(func_1().c, ~4065u), u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(23046u, u_input.a, 4294967295u), ~vec3<u32>(1u, 0u, var_3.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(u_input.b.xz ^ ~vec2<u32>(global1.a.c, 13259u))), global0.yx, _wgslsmith_mod_vec4_u32((reverseBits(vec4<u32>(var_3.c, 6363u, 4294967295u, 4294967295u)) >> (min(vec4<u32>(18236u, var_0.a.c, 4294967295u, var_0.a.c), vec4<u32>(51915u, 1u, var_3.c, 21385u)) % vec4<u32>(32u))) ^ select(vec4<u32>(var_3.c, 28910u, global1.a.c, 90117u), vec4<u32>(global1.a.c, 0u, u_input.b.x, 4294967295u) & vec4<u32>(1u, 104720u, 1u, var_3.c), false), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(u_input.a, 14302u, var_0.a.c, 2989u), vec4<u32>(u_input.a, u_input.b.x, 1u, 16669u)), ~vec4<u32>(34268u, u_input.a, u_input.a, 0u), ~vec4<u32>(72750u, 0u, 1u, u_input.b.x)) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, var_3.c, var_0.a.c), vec4<u32>(1u, 4294967295u, 65806u, 0u))));
}

