struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> bool {
    var var_0 = 19536i;
    let var_1 = Struct_1(false, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-445f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -357f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1023f - -1000f)))), vec4<u32>((select(47478u, u_input.b.x, false) << ((u_input.d & 1u) % 32u)) << (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 30739u, u_input.d), u_input.b), _wgslsmith_add_u32(u_input.b.x, u_input.d)) % 32u), u_input.b.x, 1u, _wgslsmith_div_u32(~42650u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(47549u, 70515u), vec2<u32>(u_input.d, 0u)), 18089u, firstTrailingBit(u_input.b.x)))));
    let var_2 = Struct_1(select(!var_1.a, var_1.a | false, false), vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.x), -410f), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(18665u), u_input.b.x, countOneBits(1u), var_1.c.x), min(_wgslsmith_sub_vec4_u32(var_1.c, vec4<u32>(var_1.c.x, var_1.c.x, 53628u, 38247u)), _wgslsmith_add_vec4_u32(var_1.c, var_1.c)), vec4<u32>(abs(26594u), 1u, 4294967295u, ~81357u)), firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 0u, 1u, 0u), vec4<u32>(26060u, u_input.b.x, 4294967295u, var_1.c.x))) << (_wgslsmith_mod_vec4_u32(abs(var_1.c), var_1.c >> (vec4<u32>(var_1.c.x, 66211u, u_input.b.x, 1u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_3 = Struct_1(false, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(var_2.b)))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(~var_2.c.x, _wgslsmith_add_u32(1u, 18649u), reverseBits(59331u)), 71766u, reverseBits(_wgslsmith_dot_vec2_u32(var_2.c.xy, global0[_wgslsmith_index_u32(0u, 16u)])), var_2.c.x), (~var_2.c >> (var_2.c % vec4<u32>(32u))) ^ reverseBits(var_2.c)));
    var var_4 = !(!(!select(vec4<bool>(var_2.a, false, false, false), vec4<bool>(var_3.a, var_3.a, var_3.a, var_3.a), vec4<bool>(false, var_2.a, true, false))));
    return false;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> Struct_1 {
    global0 = array<vec2<u32>, 16>();
    global0 = array<vec2<u32>, 16>();
    var var_0 = arg_2.yx;
    var var_1 = Struct_1(func_3(), _wgslsmith_f_op_vec2_f32(select(arg_2.xz, vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0.x)))), var_0.x), vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.d, 50463u), vec4<u32>(4294967295u, 4294967295u, 1u, 1u)) < abs(u_input.b.x), true))), ~(~vec4<u32>(~u_input.b.x, 30626u, u_input.b.x, firstLeadingBit(24523u))));
    return Struct_1(true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(var_1.b.x, var_0.x, false)), _wgslsmith_f_op_f32(step(arg_2.x, _wgslsmith_f_op_f32(trunc(1750f))))), _wgslsmith_f_op_vec2_f32(trunc(var_1.b)), select(func_3(), var_1.a, true || arg_0))), firstTrailingBit(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.c.x, u_input.b.x, var_1.c.x, u_input.b.x) ^ var_1.c, _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_1.c.x, 15824u, u_input.b.x), vec4<u32>(199u, u_input.b.x, var_1.c.x, var_1.c.x))))));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = func_2(~(~_wgslsmith_sub_u32(1u, u_input.d)) <= _wgslsmith_clamp_u32(2739u, max(21410u, 4294967295u), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x)), vec2<i32>(1i, -41374i), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -516f, 2216f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-874f, 472f, 224f)))), vec3<f32>(1f, 1f, 1f)), countOneBits(-(~vec3<i32>(u_input.a, arg_0.x, -42116i))) ^ _wgslsmith_add_vec3_i32(arg_0.wzx, arg_0.xwy >> (max(u_input.b, u_input.b) % vec3<u32>(32u))));
    var_0 = func_2(!((false && (var_0.c.x >= u_input.d)) == var_0.a), ~(-(arg_0.yw | arg_0.yz)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1387f, -1631f, 1575f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2398f, -1646f, -1825f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-734f, 258f, var_0.b.x), vec3<f32>(-638f, var_0.b.x, var_0.b.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.b.x, var_0.b.x, -202f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, var_0.b.x, var_0.b.x)))))), arg_0.wxw);
    return func_2(any(select(!(!vec4<bool>(var_0.a, var_0.a, var_0.a, false)), !(!vec4<bool>(var_0.a, var_0.a, true, var_0.a)), select(select(vec4<bool>(var_0.a, false, false, var_0.a), vec4<bool>(false, var_0.a, true, false), vec4<bool>(false, false, true, var_0.a)), select(vec4<bool>(true, var_0.a, var_0.a, true), vec4<bool>(var_0.a, false, var_0.a, var_0.a), vec4<bool>(true, var_0.a, true, var_0.a)), 0u < var_0.c.x))), arg_0.wx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x + 1682f)) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b.x, var_0.b.x, 1504f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(369f, var_0.b.x, -1335f))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(520f, -1709f, var_0.b.x))))))), arg_0.wwy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<i32>(~u_input.a, 0i, ~(-15345i), ~0i));
    var var_1 = vec4<bool>(false, var_0.a, var_0.a, true);
    global0 = array<vec2<u32>, 16>();
    global0 = array<vec2<u32>, 16>();
    var var_2 = var_1.x;
    var_2 = any(vec2<bool>(true, var_1.x));
    var var_3 = var_0.c;
    var_3 = ~(~var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-1i, u_input.a), 4181u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-445f))))))));
}

