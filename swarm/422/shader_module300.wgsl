struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: bool,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1;

var<private> global2: array<f32, 30>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1) -> vec4<i32> {
    var var_0 = -384f;
    var var_1 = arg_0;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.e.x << (u_input.c.x % 32u), 30u)] + 1f))))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e.x, 43745u, global1.b, u_input.c.x), vec4<u32>(16815u, 4294967295u, 13917u, 0u)) | _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b, countOneBits(global1.b), _wgslsmith_mult_u32(1u, arg_0.b), 0u), firstLeadingBit(select(vec4<u32>(61893u, 0u, arg_0.b, arg_0.b), vec4<u32>(u_input.e.x, 8598u, 21958u, arg_0.b), arg_0.d))), vec3<f32>(global2[_wgslsmith_index_u32(1u, 30u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 30u)] + global2[_wgslsmith_index_u32(u_input.e.x, 30u)]) - _wgslsmith_f_op_f32(floor(133f)))), _wgslsmith_f_op_f32(sign(-314f))), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, i32(-1i) * -54508i, var_1.e.x, firstTrailingBit(u_input.d.x)), vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, 0i, var_1.e.x), vec4<i32>(arg_0.e.x, u_input.a.x, arg_0.e.x, -2147483647i)), 1i), firstTrailingBit(reverseBits(-29825i)), ~(-arg_0.e.x))), i32(-1i) * -var_1.e.x);
    global2 = array<f32, 30>();
    var_1 = arg_0;
    return ~_wgslsmith_mult_vec4_i32(vec4<i32>(abs(_wgslsmith_sub_i32(var_1.e.x, var_1.e.x)), _wgslsmith_dot_vec4_i32(~var_2.d, var_2.d ^ vec4<i32>(-13264i, 0i, var_1.e.x, var_1.e.x)), i32(-1i) * -23826i, max(_wgslsmith_div_i32(var_2.d.x, -1i), ~(-2147483647i))), var_2.d);
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = Struct_2(405f, vec4<u32>(global1.b, _wgslsmith_div_u32(~44099u, 30575u), 36924u, 18684u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(u_input.c.x, 30u)], -119f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(412f, global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(29615u, 30u)]) * vec3<f32>(global2[_wgslsmith_index_u32(u_input.e.x, 30u)], global2[_wgslsmith_index_u32(u_input.c.x, 30u)], global2[_wgslsmith_index_u32(1u, 30u)])))) * vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1012f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -2356f) * _wgslsmith_div_f32(global2[_wgslsmith_index_u32(37429u, 30u)], 999f)), global2[_wgslsmith_index_u32(~global1.b, 30u)])), func_3(Struct_1(vec4<bool>(true, true, arg_0, !arg_0), _wgslsmith_add_u32(~22128u, 1u), any(!vec2<bool>(true, arg_0)), arg_0, _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.a.zx, global1.e, global1.e), ~vec2<i32>(global1.e.x, u_input.a.x), u_input.b.xx ^ vec2<i32>(u_input.a.x, u_input.a.x)))), 2147483647i);
    let var_1 = vec3<u32>(global1.b, u_input.c.x, 80335u);
    var var_2 = u_input.c.x;
    global0 = select(select(global1.a, !select(global1.a, global1.a, true), global1.a.x), vec4<bool>(all(vec3<bool>(any(global1.a.wy), false, false)), global0.x, !(!arg_0) | all(global1.a.yxx), !all(select(vec4<bool>(false, false, global1.a.x, global0.x), global1.a, vec4<bool>(true, arg_0, false, global1.a.x)))), !global1.a);
    let var_3 = firstTrailingBit(vec2<u32>(4294967295u, firstTrailingBit(110247u) ^ global1.b));
    return var_0.b.x & 50847u;
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = -640f;
    let var_1 = vec2<f32>(-200f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(245f, -356f) * _wgslsmith_f_op_f32(-var_0)))) + _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(firstLeadingBit(arg_2.x), 30u)]))));
    let var_2 = select(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.b.x), _wgslsmith_add_vec2_i32(global1.e ^ arg_0.xz, abs(firstLeadingBit(arg_0.xx)))), ~(-max(vec2<i32>(924i, -1i), ~u_input.d)), !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -895f), _wgslsmith_f_op_f32(sign(811f)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-715f, global2[_wgslsmith_index_u32(u_input.c.x, 30u)])) + _wgslsmith_div_f32(var_1.x, global2[_wgslsmith_index_u32(101u, 30u)]))));
    global0 = global1.a;
    let var_3 = Struct_2(_wgslsmith_f_op_f32(floor(-604f)), vec4<u32>(5665u, global1.b, _wgslsmith_clamp_u32(global1.b & _wgslsmith_mod_u32(arg_2.x, 93334u), u_input.e.x, 36017u), firstTrailingBit(reverseBits(4294967295u >> (arg_2.x % 32u)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_1.x)))), global2[_wgslsmith_index_u32(1u, 30u)]), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.c.x) >> (vec2<u32>(u_input.c.x, u_input.e.x) % vec2<u32>(32u)), arg_2), 30u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1247f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1000f - 832f), 536f)))), arg_0, arg_1);
    return Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~(u_input.c.x << (global1.b % 32u)), 30u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_3.a)))))), firstTrailingBit(var_3.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_3.c * var_3.c), var_3.c))))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(u_input.a.x | -30313i, arg_0.x >> (38351u % 32u)), -2147483647i, var_2.x, arg_0.x), _wgslsmith_sub_vec4_i32(-vec4<i32>(var_2.x, 2147483647i, 4759i, 2147483647i), vec4<i32>(arg_1, 81719i | global1.e.x, 2147483647i, ~arg_0.x))), var_2.x);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> bool {
    let var_0 = arg_1;
    let var_1 = var_0.b;
    var var_2 = ~(arg_1.e ^ _wgslsmith_sub_vec2_i32(global1.e, abs(vec2<i32>(global1.e.x, global1.e.x) ^ u_input.a.zx)));
    global2 = array<f32, 30>();
    let var_3 = func_4(vec4<i32>(u_input.d.x, countOneBits(0i) << (max(3689u, arg_1.b) % 32u), i32(-1i) * -2147483647i, u_input.a.x), -(~(-(~var_2.x))), vec2<u32>(_wgslsmith_mult_u32(var_1, func_2(global1.c)), 4294967295u) ^ ~arg_0);
    return !global1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(global1.a, !select(vec4<bool>(func_1(vec2<u32>(u_input.e.x, 1u), Struct_1(global1.a, 81465u, global1.a.x, global1.a.x, global1.e)), any(global1.a), global1.d != true, global2[_wgslsmith_index_u32(76652u, 30u)] >= global2[_wgslsmith_index_u32(u_input.e.x, 30u)]), global1.a, true), true);
    global2 = array<f32, 30>();
    let var_0 = global0.x;
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1354f, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.b, u_input.e.x) << (global1.b % 32u), 30u)]) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(global1.b, u_input.e.x), global1.b, u_input.e.x), 30u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(15917u, 30u)])))))));
    var var_3 = all(vec4<bool>(global0.x && true, all(!select(vec2<bool>(global0.x, false), global0.yy, global0.yx)), select(any(global1.a), false, !(global1.b <= global1.b)), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(min(0i, _wgslsmith_mult_i32(~_wgslsmith_add_i32(1i, -11005i), -25826i)));
}

