struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1000f, 784f, 643f);

var<private> global1: array<vec2<u32>, 9>;

var<private> global2: vec3<i32> = vec3<i32>(38800i, i32(-2147483648), -32247i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    var var_0 = true;
    let var_1 = select(select(any(vec4<bool>(true, false, 878f >= global0.x, all(vec2<bool>(false, true)))), !(!arg_0.c.x), all(!select(vec3<bool>(true, arg_0.c.x, arg_0.c.x), arg_0.c.zzy, vec3<bool>(false, false, true)))), all(select(arg_0.c.zy, select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, arg_0.c.x), arg_0.c.x), arg_0.c.yy), (arg_0.c.x && arg_0.c.x) || all(vec4<bool>(true, false, true, arg_0.c.x)))), all(arg_0.c.zw));
    let var_2 = Struct_3(vec4<bool>(true, u_input.d.x <= -961i, arg_0.c.x, var_1), arg_0, ~vec2<u32>(4294967295u, firstTrailingBit(~arg_0.b.x)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-global0.xz);
    global2 = reverseBits(abs(-(select(vec3<i32>(30784i, global2.x, arg_0.a.c.x), vec3<i32>(var_2.b.a.c.x, -1i, arg_0.a.b), var_2.b.c.zyy) & vec3<i32>(26710i, arg_0.a.c.x, 1i))));
    return !vec4<bool>(var_2.a.x, arg_0.b.x != reverseBits(~1u), any(vec2<bool>(false, true)) | false, any(arg_0.c.zwx) & !var_1);
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<f32>) -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(366f, 102f, _wgslsmith_f_op_f32(ceil(arg_1.a.a.x))), vec3<f32>(_wgslsmith_f_op_f32(min(-316f, -730f)), -1000f, 1320f), any(vec4<bool>(arg_1.c.x, true, arg_1.c.x, arg_1.c.x)))), arg_1.a.a, !func_3(arg_1).wyx)));
    var var_0 = _wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.x))), -2444f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, arg_1.a.a.x, arg_1.c.x)) - _wgslsmith_f_op_f32(min(1293f, arg_1.a.a.x))) + 1f)));
    var var_1 = arg_1;
    return !vec4<bool>(arg_1.c.x, any(!arg_1.c), arg_1.c.x, all(arg_1.c.wz));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>) -> f32 {
    let var_0 = Struct_1(vec3<f32>(-537f, global0.x, -926f), _wgslsmith_clamp_i32(global2.x, ~countOneBits(global2.x & global2.x), global2.x | _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -1i, 0i, 87428i), vec4<i32>(1i, 2147483647i, -2147483647i, -2147483647i)), u_input.b.x)), global2.zz);
    global1 = array<vec2<u32>, 9>();
    let var_1 = Struct_2(var_0, _wgslsmith_mult_vec3_u32(min(u_input.a, vec3<u32>(1u, 1u, 1u)), ~min(u_input.c, vec3<u32>(0u, 0u, 4294967295u))), func_4(vec4<u32>(~(4294967295u >> (1u % 32u)), ~0u, firstLeadingBit(0u), ~u_input.c.x), Struct_2(var_0, vec3<u32>(u_input.c.x, ~u_input.c.x, u_input.c.x), func_3(Struct_2(Struct_1(var_0.a, 4817i, vec2<i32>(-35510i, var_0.c.x)), vec3<u32>(u_input.c.x, 1u, 4294967295u), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_0, vec2<f32>(324f, 295f))) - var_0.a.zz))));
    var var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(max(select(~vec4<u32>(49717u, 1u, u_input.c.x, var_1.b.x), max(vec4<u32>(11282u, 95464u, 0u, 40858u), vec4<u32>(u_input.a.x, var_1.b.x, 1u, 4294967295u)), select(var_1.c, vec4<bool>(true, arg_1.x, false, false), var_1.c)), vec4<u32>(19607u, abs(var_1.b.x), var_1.b.x, 1u << (1u % 32u))), vec4<u32>(u_input.a.x & (u_input.c.x << (var_1.b.x % 32u)), _wgslsmith_mod_u32(~44151u, min(u_input.a.x, 26694u)), _wgslsmith_clamp_u32(var_1.b.x, _wgslsmith_div_u32(32435u, var_1.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, 1u), vec3<u32>(var_1.b.x, 0u, u_input.a.x))), u_input.a.x)), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, ~94118u), var_1.b.yy), var_1.b.x & 4294967295u);
    global0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.a.a, vec3<f32>(var_1.a.a.x, global0.x, 622f)))) * vec3<f32>(-409f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.x - var_1.a.a.x), _wgslsmith_f_op_f32(-var_1.a.a.x)), var_1.a.a.x))));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.a.a.x)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: bool) -> f32 {
    var var_0 = -(~vec4<i32>(u_input.b.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(-31612i, -2147483647i, arg_1.a.x, global2.x), -vec4<i32>(u_input.b.x, arg_1.a.x, arg_1.a.x, 20894i)), u_input.b.x, -6532i));
    let var_1 = true;
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x >> (arg_0.x % 32u), max(4294967295u, 62961u), u_input.a.x, _wgslsmith_dot_vec3_u32(arg_1.b.wxw, vec3<u32>(arg_0.x, 4294967295u, 9578u))), vec4<u32>(arg_0.x, arg_1.b.x, 4294967295u, ~u_input.c.x)), 20833u);
    global2 = -_wgslsmith_add_vec3_i32(vec3<i32>(~_wgslsmith_mod_i32(global2.x, arg_1.a.x), -u_input.b.x, -(arg_1.a.x | var_0.x)), u_input.d);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(global0.xy - global0.zz), vec3<bool>(arg_2, false, arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2066f * -743f)), arg_1.c) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(450f, -1116f, 671f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, -954f, 497f))))));
    return 2239f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global2 = vec3<i32>(u_input.b.x, 0i, firstTrailingBit(-_wgslsmith_div_i32(19989i, -67681i))) | firstTrailingBit(_wgslsmith_mod_vec3_i32(var_0, min(vec3<i32>(-55607i, global2.x, var_0.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, global2.x, global2.x), u_input.d))));
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(-1200f, 175f, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -964f) * _wgslsmith_f_op_f32(func_1(u_input.a.yy, Struct_4(var_0, vec4<u32>(58206u, u_input.a.x, u_input.c.x, 1u), global0.x), true))))), vec3<f32>(global0.x, 1553f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-796f)), global0.x)));
    var var_1 = Struct_3(func_3(Struct_2(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(2166f, global0.x, global0.x)), 1i, ~u_input.b.yz), abs(u_input.c), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true)), true))), Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -122f, global0.x) + vec3<f32>(global0.x, 337f, global0.x)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, global0.x, global0.x)))), abs(var_0.x >> (u_input.a.x % 32u)), _wgslsmith_div_vec2_i32(u_input.b.xz, ~var_0.yx)), vec3<u32>(~0u, u_input.a.x, ~0u), !(!func_3(Struct_2(Struct_1(vec3<f32>(-1304f, 926f, -1521f), var_0.x, u_input.b.zz), u_input.c, vec4<bool>(false, true, false, true))))), global1[_wgslsmith_index_u32(u_input.c.x, 9u)]);
    global0 = vec3<f32>(-274f, _wgslsmith_f_op_f32(round(global0.x)), global0.x);
    global1 = array<vec2<u32>, 9>();
    let var_2 = var_1.b;
    let var_3 = _wgslsmith_f_op_f32(-global0.x) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(442f)) * _wgslsmith_f_op_f32(max(global0.x, global0.x)));
    var var_4 = vec4<u32>(~((~4294967295u << (var_1.b.b.x % 32u)) | 4294967295u), abs(_wgslsmith_mult_u32(var_2.b.x & var_1.b.b.x, u_input.c.x)), 4294967295u, ~var_2.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(global0.x, _wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, max(global2.x >> (var_4.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.a.c.x, u_input.b.x, -2147483647i, 56397i), vec4<i32>(17653i, var_0.x, 22907i, 32842i)))), _wgslsmith_mult_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, var_1.b.a.c.x), vec2<i32>(var_1.b.a.c.x, 1i), var_1.b.a.c), _wgslsmith_mult_vec2_i32(reverseBits(var_1.b.a.c), global2.xx))), global2.zz, _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_4.x, ~26277u, reverseBits(62539u)), _wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(46466u, 4294967295u, var_1.c.x)), var_4.wyz)), vec3<u32>(var_4.x, 82931u, firstLeadingBit(~var_2.b.x)), vec3<u32>(select(~var_1.c.x, var_1.b.b.x, select(true, true, var_3)), var_4.x, 12667u)), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(select(~vec2<i32>(var_1.b.a.c.x, -40478i), u_input.d.xz, 10287i > u_input.d.x), var_0.xy), -34762i));
}

