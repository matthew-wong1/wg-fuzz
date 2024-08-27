struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(743f, 2027f, 255f, 1371f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> vec2<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.a.x, -1000f, arg_3.a.x, -1804f)), arg_3.a)) + _wgslsmith_f_op_vec4_f32(-global0.a)));
    var_0 = arg_3;
    global0 = arg_3;
    return u_input.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: vec2<i32>) -> f32 {
    var var_0 = Struct_1(arg_0);
    let var_1 = var_0.a.x;
    var var_2 = Struct_3(reverseBits(arg_1.yz), ~(-arg_2.x));
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global0.a, global0.a) * global0.a))));
    var var_4 = Struct_3(~(~_wgslsmith_mult_vec2_u32(~vec2<u32>(var_2.a.x, 1u), func_3(18588u, Struct_1(vec2<i32>(44837i, 6231i)), Struct_1(arg_0), Struct_2(global0.a)))), var_2.b);
    return _wgslsmith_f_op_f32(1925f + _wgslsmith_f_op_f32(abs(2494f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = -(((countOneBits(arg_1.x) & ~1i) >> (min(~41092u, u_input.a.x >> (83028u % 32u)) % 32u)) & _wgslsmith_clamp_i32(_wgslsmith_mult_i32(countOneBits(4975i), arg_1.x), arg_1.x, 1i));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1244f, arg_0.x, 1769f, global0.a.x) * vec4<f32>(global0.a.x, 1000f, arg_0.x, 350f)) - _wgslsmith_f_op_vec4_f32(select(global0.a, global0.a, true)))))));
    var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-vec2<i32>(var_0, var_0), firstTrailingBit(vec3<u32>(u_input.a.x, u_input.a.x, 0u)), min(vec2<i32>(arg_1.x, var_0), arg_1.xy)))), -1328f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a.x * 2320f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1979f - var_1.a.x)))), -291f));
    return Struct_2(var_1.a);
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> i32 {
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(906f - _wgslsmith_f_op_f32(-853f + arg_1.a.x)), _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(-global0.a.x)), 173f, -1405f), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(trunc(arg_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1814f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.x)))))));
    global0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-779f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-109f * -737f))), arg_1.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(arg_1.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -293f))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) - arg_1.a.x)))));
    var var_0 = Struct_1(vec2<i32>(min(-2147483647i, i32(-1i) * -2147483647i), 1i));
    var_0 = Struct_1(select(var_0.a, _wgslsmith_div_vec2_i32(var_0.a, ~var_0.a), vec2<bool>(true, true)));
    let var_1 = _wgslsmith_clamp_i32(min(var_0.a.x, var_0.a.x), var_0.a.x, -1i);
    return var_0.a.x;
}

fn func_5(arg_0: bool, arg_1: i32) -> Struct_2 {
    let var_0 = Struct_3(u_input.a << (~((u_input.a >> (vec2<u32>(35179u, u_input.a.x) % vec2<u32>(32u))) & (u_input.a << (vec2<u32>(u_input.a.x, 4294967295u) % vec2<u32>(32u)))) % vec2<u32>(32u)), max(-(reverseBits(1i) ^ arg_1), ~(-(arg_1 ^ -1i))));
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global0.a, global0.a)) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(global0.a, vec4<f32>(global0.a.x, 674f, -1177f, global0.a.x)), _wgslsmith_f_op_vec4_f32(global0.a * global0.a))))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(844f))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-global0.a.x))) * _wgslsmith_f_op_f32(f32(-1f) * -131f));
    global0 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-171f)) * -1507f), _wgslsmith_f_op_f32(1786f * -1000f))), _wgslsmith_mod_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-6689i, arg_1, -13517i) | vec3<i32>(var_0.b, arg_1, var_0.b), countOneBits(vec3<i32>(-2147483647i, var_0.b, arg_1)), vec3<i32>(13564i, 1i, arg_1)), vec3<i32>(2147483647i, var_0.b, var_0.b & 1i)));
    return func_1(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.a.x - global0.a.x)))))), select(vec3<i32>(_wgslsmith_div_i32(54215i, -74120i), -46164i, ~(-44633i)), ~abs(~vec3<i32>(var_0.b, var_0.b, -2147483647i)), vec3<bool>(true, -var_0.b <= (var_0.b & arg_1), !(!arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1i;
    var var_1 = -select(0i, _wgslsmith_add_i32(38333i, 1i), true);
    let var_2 = (20848u ^ _wgslsmith_div_u32(u_input.a.x, u_input.a.x)) >= _wgslsmith_sub_u32(75493u, _wgslsmith_dot_vec4_u32(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 39065u, u_input.a.x, 63616u), vec4<u32>(32168u, u_input.a.x, u_input.a.x, u_input.a.x))), ~(~vec4<u32>(4294967295u, 0u, u_input.a.x, 4294967295u))));
    global0 = func_5(any(select(vec3<bool>(!var_2, var_2, var_2), vec3<bool>(true, false, var_2 | true), select(vec3<bool>(var_2, false, var_2), vec3<bool>(true, true, true), !var_2))), ~(-func_4(~15346u, func_1(global0.a.ww, vec3<i32>(2359i, 1i, -15011i)))));
    let x = u_input.a;
    s_output = StorageBuffer(~select(~u_input.a.x, firstLeadingBit(1u), true), ~(~max(~vec3<u32>(24769u, 23343u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, 0u))), _wgslsmith_add_u32(u_input.a.x, ~7970u << (~_wgslsmith_clamp_u32(1u, u_input.a.x, 103246u) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global0.a.zzy)))));
}

