struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(4294967295u, 24203u, 4294967295u, 4294967295u));

var<private> global1: vec4<u32>;

var<private> global2: array<u32, 6>;

var<private> global3: array<i32, 32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<bool>) -> u32 {
    global1 = ~arg_0.a;
    global3 = array<i32, 32>();
    let var_0 = 1u;
    global3 = array<i32, 32>();
    var var_1 = vec4<u32>(~global2[_wgslsmith_index_u32(7472u, 6u)] >> (reverseBits(~_wgslsmith_mod_u32(var_0, global2[_wgslsmith_index_u32(0u, 6u)])) % 32u), ~global2[_wgslsmith_index_u32(~77981u, 6u)], 10595u, _wgslsmith_add_u32(~_wgslsmith_add_u32(~global1.x, ~52398u), ~max(28250u, _wgslsmith_div_u32(30086u, global1.x))));
    return ~(~1u);
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = u_input.c.xx;
    var var_1 = arg_0;
    let var_2 = vec2<u32>(func_3(Struct_1(~vec4<u32>(global0.a.x, global1.x, 23942u, arg_0.a.x)), firstTrailingBit(~(vec2<u32>(1u, arg_0.a.x) & vec2<u32>(var_1.a.x, var_1.a.x))), vec2<bool>(true, select(true, true, select(false, false, true)))), arg_0.a.x);
    var_1 = arg_0;
    let var_3 = -vec4<i32>(var_0.x, 1i, 10842i, -6551i);
    return !((_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -1167i), vec2<i32>(var_0.x, var_3.x)), -2147483647i) | var_0.x) <= (_wgslsmith_mod_i32(reverseBits(27975i), var_3.x ^ global3[_wgslsmith_index_u32(var_2.x, 32u)]) >> (min(~arg_0.a.x, ~42700u) % 32u)));
}

fn func_4(arg_0: f32, arg_1: i32) -> Struct_1 {
    var var_0 = (_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(100788u, 6u)] & 58573u, 32u)] >> (global1.x % 32u), -22236i) == max(1i, ~min(-2147483647i, arg_1))) && (!(all(vec3<bool>(true, false, true)) && (global0.a.x < 7147u)) & true);
    let var_1 = _wgslsmith_dot_vec2_i32(firstLeadingBit(_wgslsmith_mod_vec2_i32(~u_input.a, _wgslsmith_mult_vec2_i32(u_input.a, vec2<i32>(-2147483647i, 22601i)))), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1, 2147483647i), u_input.a) ^ -vec2<i32>(global3[_wgslsmith_index_u32(global0.a.x, 32u)], -15809i), vec2<i32>(abs(u_input.a.x), firstLeadingBit(u_input.d.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, 0i), reverseBits(vec2<i32>(-2147483647i, -5129i))))) >> (~global0.a.x % 32u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(656f, -1021f)), -1723f));
    var var_3 = true;
    var var_4 = Struct_1(~(global0.a >> (_wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.x, global0.a.x, global2[_wgslsmith_index_u32(global0.a.x, 6u)], global0.a.x), ~global0.a) % vec4<u32>(32u))));
    return Struct_1(vec4<u32>(~((global2[_wgslsmith_index_u32(53903u, 6u)] ^ var_4.a.x) | global0.a.x), _wgslsmith_add_u32(global0.a.x, 45408u), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, global2[_wgslsmith_index_u32(var_4.a.x, 6u)], global2[_wgslsmith_index_u32(0u, 6u)]) ^ _wgslsmith_div_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 6u)], 42249u, 62949u), vec3<u32>(var_4.a.x, global1.x, 4294967295u)), vec3<u32>(9948u, ~global1.x, firstTrailingBit(1u))), 58158u));
}

fn func_1() -> i32 {
    var var_0 = func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1982f)) + -239f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1577f + 1f)))), ~(select(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.a.x, 6u)], 32u)] >> (47317u % 32u), 2147483647i, func_2(Struct_1(global0.a))) | ~abs(4669i)));
    global0 = func_4(_wgslsmith_div_f32(-2426f, _wgslsmith_f_op_f32(abs(1922f))), u_input.a.x ^ u_input.c.x);
    let var_1 = abs(-firstTrailingBit(0i));
    global3 = array<i32, 32>();
    var var_2 = _wgslsmith_mod_i32(select(2809i, _wgslsmith_clamp_i32(-(u_input.a.x ^ -51803i), var_1, -1i), false), var_1);
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, func_1()), -vec2<i32>(33738i, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(64956u, 32u)], -17389i)) | ~2147483647i));
    var var_1 = func_4(-853f, 1i);
    var var_2 = Struct_1(~(~(~(~var_1.a))));
    var var_3 = func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(710f - _wgslsmith_f_op_f32(round(-282f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, 2335f, false))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-268f, -134f)) * _wgslsmith_f_op_f32(floor(171f)))))), 0i);
    var var_4 = ~(i32(-1i) * -var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-488f - -531f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -223f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1077f + 592f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(391f - -1468f))))));
}

