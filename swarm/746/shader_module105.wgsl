struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    let var_0 = ~reverseBits(u_input.b | _wgslsmith_sub_u32(1u, 1u));
    var var_1 = !(arg_0.x > ~(arg_0.x ^ _wgslsmith_clamp_i32(arg_0.x, 1i, global0.a)));
    var_1 = select(reverseBits(~(~arg_0.x)), global0.b.x, any(vec4<bool>(true, true, true, true)) | true) < -26597i;
    let var_2 = Struct_1(global0.a, vec2<i32>(1i, _wgslsmith_dot_vec2_i32(-(vec2<i32>(-493i, global0.b.x) ^ vec2<i32>(global0.a, arg_0.x)), vec2<i32>(-u_input.a.x, abs(0i)))), arg_0.x, vec4<f32>(_wgslsmith_f_op_f32(global0.d.x * _wgslsmith_f_op_f32(370f * -1622f)), _wgslsmith_div_f32(global0.d.x, global0.d.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.d.x + -1000f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global0.d.x)))))), arg_0.x);
    var var_3 = ~u_input.d;
    return -30637i;
}

fn func_2(arg_0: i32, arg_1: u32) -> u32 {
    global0 = Struct_1(min(~(-global0.a ^ min(arg_0, u_input.c.x)), abs(0i >> (u_input.d.x % 32u)) & (u_input.c.x << (1u % 32u))), vec2<i32>(~u_input.c.x, func_3(_wgslsmith_add_vec4_i32(vec4<i32>(global0.c, arg_0, 39958i, -26554i), vec4<i32>(arg_0, arg_0, global0.a, u_input.c.x))) ^ _wgslsmith_mod_i32(countOneBits(u_input.a.x), global0.c)), _wgslsmith_add_i32(12525i, 3969i), _wgslsmith_f_op_vec4_f32(-global0.d), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -arg_0), _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(1i, 0i)), select(vec2<i32>(arg_0, global0.a), vec2<i32>(-2147483647i, global0.a), true)))));
    let var_0 = vec3<bool>(select(!((global0.e > global0.b.x) || (global0.d.x >= global0.d.x)), !(true && all(vec4<bool>(true, true, true, false))), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2582f)) + global0.d.x) <= -987f, !any(!select(vec2<bool>(false, false), vec2<bool>(true, false), false)));
    global0 = Struct_1(~max(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.c.x, arg_0), _wgslsmith_mult_i32(38791i, 11005i))), vec2<i32>(_wgslsmith_div_i32(0i << (u_input.b % 32u), 0i), -39694i), -_wgslsmith_mod_i32(-(~global0.c), ~(-2147483647i)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)), global0.d.x, _wgslsmith_f_op_f32(abs(1734f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1282f, -1111f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2409f, global0.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d.x), -566f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2450f, -1000f)))))), firstTrailingBit(arg_0 | 0i));
    var var_1 = _wgslsmith_dot_vec2_i32(~firstTrailingBit(vec2<i32>(-arg_0, arg_0)), -reverseBits(global0.b));
    return arg_1;
}

fn func_1() -> vec2<bool> {
    var var_0 = 1i;
    let var_1 = _wgslsmith_f_op_f32(ceil(global0.d.x));
    var var_2 = Struct_1(reverseBits(-2147483647i << (0u % 32u)), u_input.c, -2147483647i >> (_wgslsmith_clamp_u32(19721u, 30981u, func_2(firstTrailingBit(u_input.c.x), 7809u)) % 32u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_1, global0.d.x, global0.d.x, global0.d.x), global0.d)))))), global0.b.x);
    var_2 = Struct_1(_wgslsmith_mod_i32(firstTrailingBit(-_wgslsmith_sub_i32(global0.c, global0.e)), -26797i), _wgslsmith_add_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, var_2.a), u_input.c, ~vec2<i32>(-2147483647i, var_2.b.x)), reverseBits(_wgslsmith_add_vec2_i32(u_input.c, global0.b))), _wgslsmith_sub_i32(-26215i, -(~(-5388i))), global0.d, _wgslsmith_div_i32(-(2147483647i & (global0.c ^ global0.c)), ~3i));
    var var_3 = Struct_1(-44747i, abs(reverseBits(~vec2<i32>(-25601i, global0.e) << (~vec2<u32>(u_input.d.x, u_input.d.x) % vec2<u32>(32u)))), -1i, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 + var_2.d.x)), var_1)), var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1431f))) + _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(floor(-378f)))), var_1), var_2.a);
    return !select(vec2<bool>(true, true), vec2<bool>(_wgslsmith_mod_i32(10252i, u_input.c.x) != select(u_input.a.x, 42746i, false), (u_input.b & 1u) < _wgslsmith_div_u32(22919u, 33751u)), vec2<bool>(!(var_3.d.x < var_2.d.x), true));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = vec3<bool>(true, all(vec2<bool>(!arg_1.x, !(!arg_1.x))), arg_0.x);
    global0 = Struct_1(34153i, ~u_input.c, ~(-30876i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.d)), _wgslsmith_add_i32(-2147483647i, 83967i));
    var var_1 = Struct_1((2147483647i | (u_input.c.x & 23378i)) ^ 2147483647i, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(22788i, -15204i, -2147483647i, 35035i) & vec4<i32>(u_input.a.x, -2147483647i, global0.b.x, global0.a), vec4<i32>(u_input.a.x, u_input.c.x, 0i, -5326i) & vec4<i32>(-23456i, -32685i, u_input.a.x, -4843i)), global0.a), abs(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a)) | _wgslsmith_mult_i32(1i, max(global0.b.x, 51859i))), -u_input.a.x, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(global0.d))))))), min(~u_input.a.x, ~42844i));
    var var_2 = Struct_1(global0.b.x, u_input.c, select(_wgslsmith_dot_vec2_i32(select(min(u_input.c, vec2<i32>(u_input.a.x, var_1.a)), reverseBits(vec2<i32>(2147483647i, var_1.c)), vec2<bool>(true, arg_1.x)), global0.b), 35737i, arg_0.x & !select(arg_1.x, var_0.x, arg_1.x)), var_1.d, 2147483647i);
    var var_3 = global0.d.x;
    return Struct_1(1i, u_input.c, -var_2.b.x, _wgslsmith_f_op_vec4_f32(max(global0.d, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(541f, var_2.d.x, -1000f, var_1.d.x), vec4<f32>(var_1.d.x, 952f, var_2.d.x, -1286f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.x, global0.d.x, var_1.d.x, var_2.d.x)), _wgslsmith_div_vec4_f32(vec4<f32>(var_2.d.x, 336f, -1319f, global0.d.x), var_2.d)))))), i32(-1i) * -294i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(select(!func_1(), select(vec2<bool>(true, true), func_1(), false), func_1()), select(vec2<bool>(true, true), select(func_1(), vec2<bool>(true, true), all(vec3<bool>(true, true, false))), vec2<bool>(true, true)));
    var var_0 = _wgslsmith_f_op_vec2_f32(global0.d.zz - global0.d.xy);
    var var_1 = u_input.d.yx;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global0.d.x * -1000f), var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1499f), _wgslsmith_f_op_f32(max(239f, -1000f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(853f, global0.d.x, _wgslsmith_f_op_f32(round(736f)), _wgslsmith_f_op_f32(f32(-1f) * -1018f)) * vec4<f32>(_wgslsmith_f_op_f32(min(-1000f, var_0.x)), global0.d.x, _wgslsmith_f_op_f32(-1925f * 244f), global0.d.x)))) - _wgslsmith_f_op_vec4_f32(global0.d + vec4<f32>(524f, global0.d.x, var_0.x, _wgslsmith_f_op_f32(max(-1000f, -285f)))));
    var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(var_1.x, reverseBits(49909u)), u_input.d.xx);
    let var_3 = countOneBits(u_input.a.zz);
    var var_4 = ~var_1.x >> (var_1.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(14807u, ~(~8774u), ~1u) & _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b, u_input.d.x), vec3<u32>(u_input.d.x, var_1.x, u_input.d.x)), u_input.d), var_1.x), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(var_2.x + 1108f), -351f, _wgslsmith_f_op_f32(-global0.d.x)), _wgslsmith_f_op_vec3_f32(-global0.d.wzz))))), global0.b, vec3<i32>(-(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global0.b.x, -42538i), vec3<i32>(1i, -22495i, u_input.c.x)) >> (0u % 32u)), -u_input.a.x, u_input.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-298f)))));
}

