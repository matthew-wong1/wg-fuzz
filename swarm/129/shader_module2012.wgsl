struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<bool>;

var<private> global2: array<bool, 19> = array<bool, 19>(false, false, false, true, false, false, true, true, false, true, true, false, true, false, true, false, false, true, true);

var<private> global3: array<Struct_1, 10>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> vec3<f32> {
    var var_0 = vec2<bool>(true, true);
    global1 = select(!vec4<bool>(!var_0.x, !global1.x, global2[_wgslsmith_index_u32(u_input.b >> (u_input.b % 32u), 19u)], true), vec4<bool>(select(_wgslsmith_f_op_f32(arg_2 * arg_2) > _wgslsmith_f_op_f32(-arg_0), var_0.x, false), true | arg_1.a, 1f > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(arg_0, -518f)))), !(!all(global1.wyx))), select(!vec4<bool>(!var_0.x, global1.x, arg_1.a, true), !vec4<bool>(arg_1.a, global1.x, any(vec4<bool>(true, var_0.x, true, true)), true), !select(select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(arg_1.a, var_0.x, global2[_wgslsmith_index_u32(u_input.b, 19u)], var_0.x), var_0.x), !vec4<bool>(var_0.x, global1.x, global1.x, global2[_wgslsmith_index_u32(u_input.b, 19u)]), select(var_0.x, false, true))));
    global3 = array<Struct_1, 10>();
    let var_1 = 2147483647i | _wgslsmith_mod_i32(_wgslsmith_mult_i32(-51555i, u_input.c.x), _wgslsmith_div_i32(firstLeadingBit(select(2147483647i, u_input.c.x, true)), u_input.c.x));
    let var_2 = Struct_3(u_input.b, Struct_2(vec4<bool>(select(global1.x == global1.x, false, true), true && global1.x, true, true), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, countOneBits(u_input.b)), 10u)], arg_1, ~vec4<u32>(26942u, 4294967295u, countOneBits(u_input.b), countOneBits(u_input.b)), var_1 << (firstTrailingBit(_wgslsmith_clamp_u32(u_input.b, 53646u, 0u)) % 32u)), select(select(vec3<bool>(arg_1.a, true, true), global1.yxy, select(select(global1.wxy, global1.xwz, false), vec3<bool>(true, true, var_0.x), global1.x)), vec3<bool>(var_0.x, _wgslsmith_f_op_f32(abs(1134f)) > _wgslsmith_f_op_f32(-269f * arg_0), any(select(global1.ww, vec2<bool>(true, global1.x), global1.wx))), any(!vec4<bool>(true, arg_1.a, false, global1.x))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(824f, arg_0, -481f))))) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-548f, -1237f, _wgslsmith_f_op_f32(-352f + arg_0))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0 + 958f), _wgslsmith_f_op_f32(-228f * arg_0), arg_0) - vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(arg_0 * 1171f), 1776f)), arg_1.a)));
}

fn func_2() -> f32 {
    let var_0 = 660f;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-440f - 274f)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(var_0))))), _wgslsmith_div_f32(-520f, var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-520f, 117f) - -640f) - 419f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(select(1000f, var_0, false)), Struct_1(global1.x), _wgslsmith_div_f32(1035f, var_0))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_1.x, _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(var_1.x + var_1.x)))));
    let var_3 = ~(-(~u_input.c.www));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) * var_0));
    return var_0;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(-597f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -751f), _wgslsmith_f_op_f32(1836f + 557f)))), _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(select(-1000f, -881f, global1.x)), _wgslsmith_f_op_f32(select(-1638f, -1093f, global1.x)), 1348f)))));
    global0 = ~u_input.c.x;
    global0 = -(~1i) >> (~(~u_input.b) % 32u);
    global0 = u_input.a;
    let var_1 = _wgslsmith_mod_i32(-56220i, i32(-1i) * -u_input.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) - 1661f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.b & reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.b, 1u), vec4<u32>(0u, u_input.b, u_input.b, 1183u))), max(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, u_input.b, u_input.b)), vec3<u32>(u_input.b, 1u, u_input.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(33470u, 4294967295u), vec2<u32>(1u, 1u)))), ~(1i << (max(_wgslsmith_clamp_u32(u_input.b, 4294967295u, 15967u), 0u) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-1094f, 413f))))), 526f, _wgslsmith_f_op_f32(abs(1684f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(f32(-1f) * -759f)))), u_input.a);
}

