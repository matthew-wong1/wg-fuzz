struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(i32(-2147483648), -24008i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<f32>(-210f, 791f)), 1243f, Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(19601i, i32(-2147483648)), vec2<i32>(19376i, 65002i), vec2<f32>(2158f, 1367f)), true);

var<private> global1: array<Struct_2, 14>;

var<private> global2: bool;

var<private> global3: vec2<f32>;

var<private> global4: array<Struct_2, 12>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = 2127u;
    let var_1 = global1[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(~1u, ~(~1u)), reverseBits(1u), 1u)), 14u)];
    global0 = Struct_2(global0.a, -895f, Struct_1(vec4<bool>(true, true, all(vec4<bool>(false, false, global0.a.a.x, false)), !all(global0.a.a.xyz)), ~(-var_1.a.b) ^ ~_wgslsmith_mult_vec2_i32(vec2<i32>(41169i, -26592i), var_1.c.c), ~(~global0.c.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_1.c.d))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(var_1.c.d, vec2<f32>(global3.x, global0.b)), _wgslsmith_f_op_vec2_f32(floor(var_1.a.d))))), !select(all(!vec4<bool>(global0.c.a.x, var_1.d, global0.d, var_1.a.a.x)), global0.d, global0.a.a.x));
    var var_2 = 42618u;
    let var_3 = vec3<i32>(-4026i, ~22990i, var_1.c.c.x) << (~vec3<u32>(1u, 12609u, select(~0u, 4294967295u, false)) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1162f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.x, _wgslsmith_f_op_f32(1425f - global0.c.d.x)))))));
}

fn func_2(arg_0: vec4<f32>) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-1139f, _wgslsmith_f_op_f32(select(-1016f, global0.b, !global0.c.a.x))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(f32(-1f) * -1156f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.wzy + vec3<f32>(arg_0.x, 329f, 777f)) + _wgslsmith_div_vec3_f32(arg_0.wyw, vec3<f32>(-386f, arg_0.x, -403f)))))));
    var var_1 = global0.c;
    let var_2 = global0.a;
    global4 = array<Struct_2, 12>();
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(arg_0));
    return -_wgslsmith_clamp_vec2_i32(var_1.c, ~(~vec2<i32>(global0.a.b.x, u_input.a)), vec2<i32>(-1i) * -(~vec2<i32>(2147483647i, u_input.a)));
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: i32) -> Struct_1 {
    var var_0 = arg_0.c.d;
    let var_1 = reverseBits(abs(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -1996f, var_0.x, -811f) * vec4<f32>(-1000f, -307f, 1669f, 342f))))));
    var var_2 = ~(-2147483647i | _wgslsmith_mult_i32(_wgslsmith_mult_i32(global0.c.b.x, -2147483647i) ^ ~arg_2, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 0i, 42631i) | vec3<i32>(arg_0.c.c.x, -2147483647i, 2147483647i), abs(vec3<i32>(18353i, 31004i, 607i)))));
    global3 = global0.a.d;
    var var_3 = (1u & select(min(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(57254u, 7344u, 4294967295u), vec3<u32>(56395u, 53135u, 50171u))), firstLeadingBit(~1u), true)) >> (~(~1u) % 32u);
    return Struct_1(!vec4<bool>(any(!vec2<bool>(true, global0.d)), !(global0.a.a.x || false), any(vec4<bool>(arg_1.x, true, global0.d, false)), arg_0.c.a.x), var_1, ~vec2<i32>(-21616i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_1.x), var_1)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.c.d), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(351f + -1241f), global0.b)), global0.a.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global4[_wgslsmith_index_u32(0u, 12u)], vec3<bool>(global0.d, global0.a.a.x, !any(select(global0.a.a, global0.c.a, vec4<bool>(false, global0.a.a.x, global0.a.a.x, global0.d)))), ~u_input.a);
    let var_1 = _wgslsmith_f_op_f32(-var_0.d.x);
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2889f, -797f)) - var_0.d)))) + vec2<f32>(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.b)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.d.x, var_0.d.x)))))));
    let var_2 = _wgslsmith_f_op_f32(-global3.x);
    let var_3 = reverseBits(vec4<u32>(1u, 1u, ~1u, 1u));
    global4 = array<Struct_2, 12>();
    global2 = func_1(global4[_wgslsmith_index_u32(7493u, 12u)], vec3<bool>(false, abs(select(var_3.x, var_3.x, true)) <= (_wgslsmith_dot_vec2_u32(var_3.zw, var_3.zx) ^ _wgslsmith_div_u32(1u, 17169u)), var_1 < global0.b), global0.a.c.x).a.x;
    var_0 = Struct_1(vec4<bool>(all(vec2<bool>(var_0.a.x, false)) && var_0.a.x, var_0.a.x, true, !(global0.a.a.x & global0.a.a.x) != (var_3.x > var_3.x)), vec2<i32>(1i, i32(-1i) * -1i) | vec2<i32>(10278i, _wgslsmith_sub_i32(min(var_0.c.x, global0.c.c.x), var_0.b.x)), global0.a.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-468f, -1167f))), _wgslsmith_f_op_f32(f32(-1f) * -696f)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d))))));
    var var_4 = max(vec2<i32>(-1i) * -vec2<i32>(countOneBits(u_input.a), -54771i), -(global0.a.c ^ (~vec2<i32>(var_0.c.x, var_0.c.x) | vec2<i32>(var_0.b.x, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(~(~var_3.x)), _wgslsmith_dot_vec3_u32(~select(vec3<u32>(var_3.x, 0u, var_3.x), vec3<u32>(0u, 8699u, 1u), global0.d), ~vec3<u32>(32345u, 4294967295u, var_3.x)), true));
}

