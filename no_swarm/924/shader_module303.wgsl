struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: array<Struct_1, 2>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_2(1430f, any(vec2<bool>(0u > _wgslsmith_div_u32(1825u, u_input.d.x), !(!global0[_wgslsmith_index_u32(arg_0, 25u)]))), global1[_wgslsmith_index_u32(~0u, 2u)]);
    let var_1 = reverseBits(min(-1i, abs(-29929i)));
    let var_2 = firstTrailingBit(abs(~(~arg_1)));
    let var_3 = !select(!(!select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 25u)], true, arg_2.c.c, false), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.x, 25u)], var_0.c.a, global0[_wgslsmith_index_u32(var_2.x, 25u)], false), vec4<bool>(var_0.b, true, true, false))), vec4<bool>(_wgslsmith_f_op_f32(-var_0.a) > _wgslsmith_f_op_f32(-arg_2.a), global0[_wgslsmith_index_u32(countOneBits(var_2.x), 25u)], true, !all(vec2<bool>(false, arg_2.b))), !vec4<bool>(any(vec3<bool>(false, global0[_wgslsmith_index_u32(73954u, 25u)], arg_2.b)), arg_2.b, 11387u <= var_2.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d.x, 4294967295u), 25u)]));
    var var_4 = Struct_1(global0[_wgslsmith_index_u32(~var_2.x, 25u)], max(select(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1, 1i, -1i, 1i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, -4i, u_input.a, var_1), arg_2.c.b)), ~arg_2.c.b, global0[_wgslsmith_index_u32(firstTrailingBit(firstLeadingBit(1952u)), 25u)]), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, _wgslsmith_mod_i32(2147483647i, var_0.c.b.x), var_1, abs(var_0.c.b.x)), ~countOneBits(arg_2.c.b))), !(!var_3.x));
    return countOneBits(-30355i);
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_1, 2>();
    var var_0 = select((_wgslsmith_mult_vec2_u32(u_input.d.xz, _wgslsmith_mod_vec2_u32(vec2<u32>(29818u, 4294967295u), u_input.d.xw)) | vec2<u32>(17884u, 4294967295u)) << (_wgslsmith_div_vec2_u32(max(u_input.d.yy, _wgslsmith_sub_vec2_u32(u_input.d.yy, vec2<u32>(14577u, 16914u))), u_input.d.zz) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(abs(~(vec2<u32>(u_input.d.x, u_input.d.x) >> (u_input.d.wy % vec2<u32>(32u)))), vec2<u32>(abs(countOneBits(1u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, 50007u, u_input.d.x, 90456u), select(u_input.d, u_input.d, vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.d.x, 25u)], global0[_wgslsmith_index_u32(u_input.d.x, 25u)]))))), select(!(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 25u)], global0[_wgslsmith_index_u32(28839u, 25u)])), select(!select(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 25u)]), vec2<bool>(true, false), global0[_wgslsmith_index_u32(8221u, 25u)]), select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 25u)], false), !vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 25u)]), select(vec2<bool>(false, false), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 25u)]), false)), all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 25u)], false, global0[_wgslsmith_index_u32(1u, 25u)], global0[_wgslsmith_index_u32(u_input.d.x, 25u)]))), vec2<bool>(true || select(false, false, global0[_wgslsmith_index_u32(43356u, 25u)]), true)));
    global1 = array<Struct_1, 2>();
    var_0 = u_input.d.zz;
    global1 = array<Struct_1, 2>();
    return Struct_1(global0[_wgslsmith_index_u32(0u, 25u)], vec4<i32>(-1i, ~(~(-10740i)), func_3(var_0.x, abs(u_input.d.xz | vec2<u32>(0u, u_input.d.x)), Struct_2(_wgslsmith_f_op_f32(808f + 960f), true, global1[_wgslsmith_index_u32(min(38161u, u_input.d.x), 2u)])), firstLeadingBit(1i)), any(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 25u)], !(!global0[_wgslsmith_index_u32(879u, 25u)]), all(vec4<bool>(global0[_wgslsmith_index_u32(6436u, 25u)], global0[_wgslsmith_index_u32(var_0.x, 25u)], false, true)), u_input.a == ~(-14854i))));
}

fn func_1() -> f32 {
    let var_0 = abs(_wgslsmith_clamp_i32(-u_input.b.x, u_input.b.x, u_input.a));
    var var_1 = 1i;
    global0 = array<bool, 25>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1765f, _wgslsmith_f_op_f32(f32(-1f) * -1187f), any(vec3<bool>(false, true, false)))), _wgslsmith_f_op_f32(round(-100f))), _wgslsmith_f_op_f32(f32(-1f) * -1559f))));
    var var_3 = func_2();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -300f))))) * _wgslsmith_div_f32(1006f, 1102f));
}

fn func_4(arg_0: vec3<f32>, arg_1: bool, arg_2: u32, arg_3: u32) -> bool {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(4294967295u, _wgslsmith_mod_u32(arg_2, arg_2), 30653u, arg_3 ^ ~min(arg_2, arg_3))), 2u)];
    global0 = array<bool, 25>();
    var var_1 = !any(select(vec3<bool>(global0[_wgslsmith_index_u32(0u >> (arg_2 % 32u), 25u)], any(vec2<bool>(true, false)), global0[_wgslsmith_index_u32(0u, 25u)]), !(!vec3<bool>(true, var_0.c, var_0.c)), vec3<bool>(all(vec2<bool>(false, false)), any(vec4<bool>(arg_1, arg_1, false, global0[_wgslsmith_index_u32(1u, 25u)])), var_0.a)));
    let var_2 = var_0.b;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * -532f) + _wgslsmith_f_op_f32(f32(-1f) * -1498f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(630f + arg_0.x) + 1878f) * arg_0.x)));
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 25>();
    var var_0 = abs(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(11649u, 1u), vec2<u32>(u_input.d.x, 56777u)), vec2<u32>(0u, 0u)), ~vec2<u32>(u_input.d.x, 1u)) | max(vec2<u32>(u_input.d.x, max(u_input.d.x, 36638u)), abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, 20907u), u_input.d.yz))));
    var var_1 = ~u_input.d;
    var var_2 = _wgslsmith_div_f32(-255f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1010f)), -1000f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-877f)), -281f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, 309f)))), !all(select(vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 25u)], true, global0[_wgslsmith_index_u32(var_1.x, 25u)]), vec4<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 25u)], false, global0[_wgslsmith_index_u32(var_0.x, 25u)], global0[_wgslsmith_index_u32(var_1.x, 25u)]), true)))));
    let var_3 = vec4<bool>(func_4(vec3<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1223f - 380f), _wgslsmith_f_op_f32(sign(-732f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1062f)) + _wgslsmith_f_op_f32(1700f + 674f))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, 1u, 55155u)), u_input.d.ywy), 25u)], u_input.d.x, u_input.d.x), select(func_4(vec3<f32>(-1377f, _wgslsmith_f_op_f32(sign(177f)), 502f), abs(0u) == firstTrailingBit(u_input.d.x), abs(_wgslsmith_dot_vec2_u32(var_1.zz, vec2<u32>(u_input.d.x, u_input.d.x))), var_0.x), func_2().a, any(select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 25u)]), !global0[_wgslsmith_index_u32(var_1.x, 25u)]))), func_2().c && true, all(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 25u)]))));
    let var_4 = global1[_wgslsmith_index_u32(min(max(var_0.x, u_input.d.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, var_1.x, 4294967295u), min(u_input.d, vec4<u32>(0u, 71130u, u_input.d.x, 0u))) % 32u)), var_1.x), 2u)];
    let var_5 = ~((vec2<u32>(_wgslsmith_mult_u32(1u, var_0.x), firstLeadingBit(var_1.x)) >> (vec2<u32>(0u, _wgslsmith_sub_u32(var_0.x, var_0.x)) % vec2<u32>(32u))) >> (select(vec2<u32>(0u, var_1.x), select(u_input.d.yz >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(var_1.zy, u_input.d.wz), !var_3.x), true) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -323f)), _wgslsmith_f_op_f32(abs(-352f)), _wgslsmith_f_op_f32(ceil(-1444f)), 1f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-671f - 1922f), _wgslsmith_f_op_f32(f32(-1f) * -2190f), _wgslsmith_f_op_f32(f32(-1f) * -110f), _wgslsmith_div_f32(1188f, 662f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1273f, 1937f, -380f, -371f)))), u_input.c.x | -func_2().b.x, _wgslsmith_add_vec3_i32(var_4.b.xxy, abs(_wgslsmith_sub_vec3_i32(var_4.b.xxx, u_input.b))) & (vec3<i32>(-1i) * -countOneBits(u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-620f, 1146f, var_4.c)) + _wgslsmith_f_op_f32(-336f + 1081f)))));
}

