struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: bool,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: u32,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_5 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 16>;

var<private> global1: vec3<u32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> bool {
    let var_0 = firstTrailingBit(0i);
    var var_1 = vec4<bool>(firstLeadingBit(_wgslsmith_add_u32(40452u, global1.x)) == ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, global1.x), vec4<u32>(0u, u_input.a, global1.x, u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(102118u, 1u, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, 4294967295u, 0u))), true, all(!vec4<bool>(true, select(true, false, false), true, true)), 1u >= u_input.a);
    var var_2 = Struct_2(arg_1.x, abs(_wgslsmith_add_u32(global1.x, ~abs(global1.x))), ~vec2<i32>(var_0 ^ (-30752i << (global1.x % 32u)), var_0), select(min(25915u, _wgslsmith_div_u32(global1.x, global1.x)), 4294967295u, true) > ~firstLeadingBit(countOneBits(global1.x)));
    return false;
}

fn func_2(arg_0: vec3<bool>) -> u32 {
    var var_0 = vec4<bool>(func_3(22407i, u_input.b | _wgslsmith_mult_vec3_i32(-u_input.b, vec3<i32>(u_input.c.x, u_input.b.x, u_input.b.x) >> (vec3<u32>(0u, global1.x, 0u) % vec3<u32>(32u)))), arg_0.x, _wgslsmith_div_u32(global1.x, ~(~u_input.a)) == _wgslsmith_add_u32(~(~global1.x), global1.x | 29414u), true && arg_0.x);
    let var_1 = Struct_4(Struct_3(_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, 42376u, 5916u, 52659u) << (vec4<u32>(1u, global1.x, global1.x, u_input.a) % vec4<u32>(32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 35510u, u_input.a, 24523u), vec4<u32>(global1.x, global1.x, 35162u, 66672u))) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.a, 15744u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 61382u)), firstTrailingBit(_wgslsmith_add_i32(-24680i, u_input.b.x)) ^ -36407i, true, _wgslsmith_f_op_f32(select(1718f, -1000f, !var_0.x & all(vec2<bool>(arg_0.x, true))))), _wgslsmith_div_vec2_i32(vec2<i32>(-18150i, select(-61663i, u_input.c.x, true)), _wgslsmith_mult_vec2_i32(~vec2<i32>(1i, -2147483647i), _wgslsmith_add_vec2_i32(u_input.b.xx, vec2<i32>(u_input.b.x, u_input.b.x)))) ^ u_input.b.xy, 20199u, Struct_1(vec3<bool>(true, arg_0.x, any(select(vec4<bool>(false, var_0.x, arg_0.x, false), vec4<bool>(false, arg_0.x, var_0.x, arg_0.x), arg_0.x))), -vec2<i32>(max(-56164i, 17386i), _wgslsmith_mod_i32(-1i, u_input.b.x)), ~32212i), vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-732f - -1521f)) * -246f), _wgslsmith_f_op_f32(-611f - _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -1293f)))));
    global0 = array<Struct_5, 16>();
    let var_2 = arg_0.x;
    return ~(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(48275u, 38412u, 99215u), countOneBits(var_1.a.a.xzy))) ^ ~u_input.a);
}

fn func_1(arg_0: Struct_3) -> bool {
    let var_0 = ~func_2(select(select(vec3<bool>(arg_0.c, arg_0.c, arg_0.c), vec3<bool>(arg_0.c, false, true), vec3<bool>(arg_0.c, false, arg_0.c)), !(!vec3<bool>(true, arg_0.c, arg_0.c)), false));
    let var_1 = 1u;
    var var_2 = Struct_1(!(!vec3<bool>(4005i > u_input.c.x, false, any(vec3<bool>(arg_0.c, false, arg_0.c)))), -(countOneBits(u_input.c.xw) >> (~vec2<u32>(5370u, 1u) % vec2<u32>(32u))), ~(~arg_0.b));
    global1 = ~(~vec3<u32>(_wgslsmith_dot_vec4_u32(~arg_0.a, min(arg_0.a, vec4<u32>(22372u, global1.x, arg_0.a.x, arg_0.a.x))), global1.x, countOneBits(0u | global1.x)));
    let var_3 = Struct_3(max(min(abs(arg_0.a), vec4<u32>(arg_0.a.x, global1.x, 4294967295u, arg_0.a.x)) & arg_0.a, ~arg_0.a), var_2.c, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d) + -120f));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(864f * -439f)))))) - _wgslsmith_f_op_f32(min(1368f, _wgslsmith_f_op_f32(f32(-1f) * -665f))));
    let var_1 = Struct_1(vec3<bool>(!func_1(Struct_3(vec4<u32>(global1.x, global1.x, 4294967295u, global1.x), -1i, false, 730f)), all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), true)), 1550f <= _wgslsmith_f_op_f32(-var_0)), vec2<i32>(-1i, -u_input.c.x) & abs(u_input.b.xy), -7703i);
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-347f, 883f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, 333f), vec2<f32>(-785f, -323f), vec2<bool>(true, false))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, var_0), vec2<f32>(-1000f, 291f), var_1.a.yz)))))), vec2<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-819f, var_0) + 2542f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1142f, -808f), vec2<f32>(var_0, -1142f)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * 253f) * _wgslsmith_div_f32(378f, 1907f)), _wgslsmith_f_op_f32(f32(-1f) * -635f))), !(all(vec3<bool>(var_1.a.x, var_1.a.x, true)) != all(vec3<bool>(true, var_1.a.x, true)))));
    global1 = ~vec3<u32>(59308u, u_input.a, 3795u);
    let var_3 = vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.a), reverseBits(global1.xy)), vec2<u32>(37029u, 10018u)), ~_wgslsmith_clamp_u32(firstTrailingBit(~u_input.a), u_input.a, _wgslsmith_mult_u32(_wgslsmith_mult_u32(global1.x, global1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(46526u, global1.x, u_input.a), vec3<u32>(4294967295u, global1.x, global1.x)))), reverseBits(21245u));
    global1 = var_3;
    let var_4 = Struct_4(Struct_3(reverseBits(_wgslsmith_div_vec4_u32(select(vec4<u32>(global1.x, 0u, global1.x, 4294967295u), vec4<u32>(1u, 6451u, 1075u, 366u), vec4<bool>(var_1.a.x, var_1.a.x, true, var_1.a.x)), ~vec4<u32>(u_input.a, global1.x, 1u, 4294967295u))), var_1.c, any(!(!vec3<bool>(var_1.a.x, false, true))), var_0), vec2<i32>(-(var_1.b.x & -5825i), 2147483647i), _wgslsmith_sub_u32(_wgslsmith_sub_u32(firstTrailingBit(global1.x), var_3.x), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, 1u, u_input.a, 15617u), vec4<u32>(var_3.x, u_input.a, 1u, var_3.x)), ~0u, abs(var_3.x)), _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(global1.x, 6901u, 0u)), select(var_3, var_3, var_1.a.x)))), var_1, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.x))), var_2.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0), 1000f, 2186f))));
    global1 = var_4.a.a.wxz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(var_4.a.a, var_4.a.a, _wgslsmith_sub_vec4_u32(var_4.a.a, countOneBits(var_4.a.a)) & var_4.a.a), vec3<i32>(countOneBits(-1i), _wgslsmith_sub_i32(var_1.c, abs(-447i)), _wgslsmith_add_i32(var_4.d.c & _wgslsmith_sub_i32(65989i, var_4.a.b), _wgslsmith_mod_i32(1924i, select(var_1.c, 49970i, false)))));
}

