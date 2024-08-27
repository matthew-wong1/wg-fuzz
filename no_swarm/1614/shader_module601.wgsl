struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 3>;

var<private> global1: i32;

var<private> global2: array<vec2<u32>, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<i32> {
    global1 = -56276i ^ (-select(-u_input.a.x, 0i, any(global0[_wgslsmith_index_u32(1u, 3u)])) & -u_input.a.x);
    var var_0 = -41471i;
    global2 = array<vec2<u32>, 8>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-263f, -1150f, _wgslsmith_f_op_f32(min(1186f, -1615f)), 313f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1237f, 1241f))), _wgslsmith_f_op_f32(f32(-1f) * -952f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1114f)) - -1868f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -613f))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-2622f - -128f), _wgslsmith_f_op_f32(round(1080f)), 885f, _wgslsmith_f_op_f32(trunc(276f))), vec4<f32>(-913f, _wgslsmith_f_op_f32(907f * -165f), -1231f, _wgslsmith_f_op_f32(ceil(-470f)))))));
    var var_2 = var_1.zw;
    return -_wgslsmith_add_vec2_i32(countOneBits(~_wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(u_input.b, -9261i))), _wgslsmith_sub_vec2_i32(min(u_input.a, vec2<i32>(2147483647i, u_input.b)), vec2<i32>(-22185i, ~0i)));
}

fn func_2() -> vec4<u32> {
    let var_0 = vec4<i32>(1i, ~(-14812i), u_input.b, u_input.a.x);
    let var_1 = Struct_2(func_3());
    let var_2 = Struct_2(abs(countOneBits(u_input.a ^ vec2<i32>(1i, 2147483647i))) | ~func_3());
    return countOneBits(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 46095u, 4294967295u, 0u), vec4<u32>(18909u, 100557u, 4294967295u, 4294967295u), vec4<u32>(44932u, 1u, 4294967295u, 12315u))), ~vec4<u32>(10735u, 71277u, 1u, 0u)), ~vec4<u32>(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(0u, 8u)]), max(107062u, 24332u), ~4294967295u, _wgslsmith_add_u32(64253u, 1u))));
}

fn func_1() -> Struct_2 {
    let var_0 = ~func_2();
    var var_1 = -(firstLeadingBit(0i) & firstTrailingBit(_wgslsmith_dot_vec2_i32(u_input.a, _wgslsmith_div_vec2_i32(u_input.a, u_input.a))));
    global1 = i32(-1i) * -2147483647i;
    global1 = ~_wgslsmith_mod_i32(_wgslsmith_sub_i32(-(~1i), _wgslsmith_sub_i32(u_input.a.x, ~u_input.b)), 1i);
    var var_2 = 0u;
    return Struct_2(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = !(!vec3<bool>((u_input.a.x == 0i) | false, any(vec4<bool>(true, true, true, true)), true));
    global1 = _wgslsmith_sub_i32(1i, -1i);
    var var_2 = Struct_1(any(var_1.yx), -(~min(_wgslsmith_dot_vec2_i32(var_0.a, vec2<i32>(var_0.a.x, -26250i)), _wgslsmith_sub_i32(u_input.b, u_input.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(303f, _wgslsmith_f_op_f32(226f - _wgslsmith_f_op_f32(step(1295f, -1000f))))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(546f)) - _wgslsmith_f_op_f32(f32(-1f) * -506f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(707f - 1084f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(198f, 338f, 821f)), vec3<f32>(-643f, -391f, -1353f), true)) + vec3<f32>(403f, _wgslsmith_f_op_f32(max(1054f, 329f)), _wgslsmith_f_op_f32(round(-1029f))))), vec4<bool>(!(_wgslsmith_add_i32(var_0.a.x, var_0.a.x) >= var_0.a.x), var_1.x || any(!vec4<bool>(var_1.x, false, var_1.x, var_1.x)), (~var_0.a.x == 14386i) || var_1.x, true));
    let var_3 = Struct_1(var_2.a && false, abs(~(-26129i)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1977f - 2017f), 1146f)), _wgslsmith_f_op_vec3_f32(var_2.d + _wgslsmith_f_op_vec3_f32(select(var_2.d, var_2.d, !(true && var_2.a)))), vec4<bool>(true, any(select(var_2.e, vec4<bool>(var_1.x, true, var_2.a, false), !var_2.e)), !all(var_1) != (var_1.x == !var_2.e.x), !var_2.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_3.d.x), _wgslsmith_f_op_f32(-1530f - var_2.d.x), _wgslsmith_f_op_f32(max(-951f, 1019f)), _wgslsmith_div_f32(-483f, 133f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1056f, 1000f, var_2.c, 589f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.d.x, var_2.d.x, var_2.d.x, 301f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-905f, -1000f, -1521f, 1220f), vec4<f32>(793f, -1888f, -222f, -223f)))))), abs(abs(-vec4<i32>(var_2.b, var_0.a.x, 23545i, 2147483647i))), var_0.a.x, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(214f))))), _wgslsmith_f_op_f32(f32(-1f) * -807f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(var_2.d.x)))))), global2[_wgslsmith_index_u32(1u, 8u)] >> ((~max(global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)]) & global2[_wgslsmith_index_u32(1u, 8u)]) % vec2<u32>(32u)));
}

