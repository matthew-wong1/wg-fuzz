struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec4<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32 = 29578i;

var<private> global2: u32 = 1u;

var<private> global3: Struct_1;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    var var_0 = Struct_4(12038i);
    global3 = Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 1u), select(u_input.a, u_input.a, vec2<bool>(global3.d.x, false))), _wgslsmith_add_vec2_u32(vec2<u32>(1439u, u_input.a.x) & u_input.a, u_input.a)), u_input.a.x), vec3<f32>(global3.c, global3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)) + global3.c)), _wgslsmith_f_op_f32(-1f), global3.d, (global3.d.x & global3.e) | !global3.d.x);
    global1 = abs(67293i);
    global3 = Struct_1(~_wgslsmith_add_u32(u_input.a.x, _wgslsmith_mult_u32(4294967295u, u_input.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.b.x))), global3.c) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, -499f, global3.b.x)))) - _wgslsmith_f_op_vec3_f32(max(global3.b, _wgslsmith_f_op_vec3_f32(-global3.b))))), global3.b.x, global3.d, all(global3.d.xw));
    let var_1 = Struct_2(Struct_1(min(global3.a, 4294967295u), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.b.x, -382f, 2103f), _wgslsmith_f_op_vec3_f32(-global3.b))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global3.b)), _wgslsmith_f_op_vec3_f32(global3.b - vec3<f32>(global3.c, -333f, global3.c))))), _wgslsmith_f_op_f32(floor(-1347f)), global3.d, ~(1u ^ global3.a) != global3.a), 44794u, vec3<f32>(_wgslsmith_f_op_f32(-global3.c), -651f, global3.c));
    return _wgslsmith_mult_u32(_wgslsmith_clamp_u32(~var_1.b, 1u, 18165u) | _wgslsmith_add_u32(1u, u_input.a.x << (0u % 32u)), max(u_input.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global3.a, 0u) >> (vec3<u32>(global3.a, global3.a, u_input.a.x) % vec3<u32>(32u)), ~vec3<u32>(global3.a, var_1.b, 1u))));
}

fn func_2(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<u32>) -> Struct_1 {
    global3 = Struct_1(select(func_3(), 19186u, !(!any(global3.d))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)), global3.c, global3.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2404f)))) - _wgslsmith_f_op_f32(global3.b.x * global3.c)), global3.d, true);
    var var_0 = Struct_1(reverseBits(0u), global3.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(518f * -981f))), !vec4<bool>(arg_0.x, !(arg_0.x & arg_0.x), false, all(arg_0)), true);
    var var_1 = Struct_1(~(~abs(52671u ^ arg_2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_f_op_vec3_f32(-global3.b), all(vec2<bool>(true, false)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c, 1000f, -631f) - global3.b)) + vec3<f32>(var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -949f), _wgslsmith_f_op_f32(-274f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(504f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.c, 1361f, global3.e)))) * global3.c), !select(vec4<bool>(any(global3.d), all(global3.d), select(true, false, false), true), !vec4<bool>(false, global3.e, true, true), true || (arg_0.x | true)), false);
    let var_2 = Struct_2(Struct_1(u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(403f * var_0.b.x), 318f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1478f, 2463f, false)))), var_1.c, vec4<bool>(var_1.d.x, var_1.e, true, any(var_1.d.zzx)), true), _wgslsmith_dot_vec2_u32(~arg_2, arg_2), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_1.b, vec3<f32>(var_1.b.x, -122f, var_0.c)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b + vec3<f32>(-560f, 515f, 1079f)) - vec3<f32>(var_1.b.x, var_0.b.x, var_0.b.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b))));
    var var_3 = var_2.a;
    return var_2.a;
}

fn func_1(arg_0: u32, arg_1: bool) -> vec4<f32> {
    var var_0 = 1824f;
    let var_1 = vec2<bool>(true & (select(4294967295u, max(0u, u_input.a.x), select(arg_1, global3.d.x, true)) == 72720u), (u_input.b.x >= reverseBits(-13751i)) || (!arg_1 && any(!global3.d.xy)));
    global3 = func_2(vec3<bool>(!all(global3.d.zyz), false, (~1u & (global3.a >> (u_input.a.x % 32u))) > u_input.a.x), _wgslsmith_mod_u32(max(~_wgslsmith_mult_u32(u_input.a.x, 33802u), u_input.a.x), abs(global3.a)), vec2<u32>(36746u, countOneBits(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, global3.a))) & abs(vec2<u32>(~56670u, u_input.a.x)));
    global2 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(min(u_input.a.x, 1u), ~4294967295u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(0u, 2126u)), global3.a)), vec4<u32>(~1u, 4294967295u, ~(4294967295u ^ global3.a), ~(~arg_0)), _wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(global3.a, 1u, global3.a, 37735u)), ~(vec4<u32>(global3.a, 86426u, 0u, arg_0) << (vec4<u32>(arg_0, global3.a, 0u, 79660u) % vec4<u32>(32u))), ~vec4<u32>(0u, u_input.a.x, 1u, arg_0) << (~vec4<u32>(arg_0, 4294967295u, global3.a, global3.a) % vec4<u32>(32u)))), ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(74512u, global3.a, u_input.a.x, arg_0) ^ vec4<u32>(0u, global3.a, arg_0, arg_0), vec4<u32>(4038u, 1u, 1u, 4264u) ^ vec4<u32>(arg_0, 23990u, arg_0, global3.a)), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 3042u, arg_0, arg_0) ^ vec4<u32>(1u, 4294967295u, arg_0, arg_0), vec4<u32>(25507u, 46507u, u_input.a.x, arg_0) ^ vec4<u32>(arg_0, global3.a, arg_0, 1u))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.c)))) - _wgslsmith_f_op_f32(-global3.c)), -686f, _wgslsmith_f_op_f32(ceil(1370f)));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, global3.c, 187f, -261f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1005f, var_2.x, global3.b.x, 863f) * vec4<f32>(var_2.x, 1973f, 420f, -123f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, -286f, var_2.x, -357f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global3.c, var_2.x, 1035f, global3.c), vec4<f32>(628f, -1275f, var_2.x, 406f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.d.yw;
    let var_1 = u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(func_1(~firstTrailingBit(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a)), any(!vec3<bool>(var_0.x, global3.e, true)))), -15345i, _wgslsmith_div_f32(global3.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global3.b.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.c + 452f), _wgslsmith_f_op_f32(floor(-2030f)))))), _wgslsmith_mult_vec2_u32(vec2<u32>(min(u_input.a.x, ~1u), ~1u), min(reverseBits(~vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a, u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 80392u), u_input.a)))), abs(vec3<u32>(4294967295u, func_3(), ~global3.a)) << (~vec3<u32>(93891u, 21944u, abs(u_input.a.x)) % vec3<u32>(32u)));
}

