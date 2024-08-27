struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 10> = array<i32, 10>(19881i, -9456i, -1i, -10131i, 0i, -6387i, -8438i, 33550i, 43277i, 0i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32) -> i32 {
    global0 = array<i32, 10>();
    var var_0 = 4294967295u;
    var_0 = 20494u;
    var_0 = (_wgslsmith_div_u32(arg_0, ~arg_0) ^ ~1u) | min(~(arg_0 >> (min(4294967295u, 6351u) % 32u)), 67305u);
    let var_1 = select(~firstTrailingBit(~1u), arg_0, true);
    return countOneBits(~global0[_wgslsmith_index_u32(select(1u, 1u, true), 10u)]);
}

fn func_2(arg_0: f32, arg_1: Struct_2) -> bool {
    let var_0 = vec4<i32>(u_input.a, arg_1.a.a.x, global0[_wgslsmith_index_u32(~(~arg_1.a.d.x), 10u)], min(func_3(arg_1.a.d.x), -arg_1.a.a.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.b, arg_1.b, arg_1.b, 1401f)))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(379f, arg_1.b, arg_0, 449f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(984f, -263f, -1071f, -1103f))), select(vec4<bool>(arg_1.a.c, true, arg_1.a.c, true), vec4<bool>(arg_1.a.c, true, false, arg_1.a.c), arg_1.a.c))))));
    var var_2 = Struct_3(!(!(!(!vec2<bool>(arg_1.a.c, true)))), vec4<u32>(_wgslsmith_add_u32(countOneBits(~arg_1.a.d.x), arg_1.a.d.x), 1u, firstTrailingBit(arg_1.a.d.x), _wgslsmith_clamp_u32(86897u ^ arg_1.a.d.x, _wgslsmith_mod_u32(1u, arg_1.a.d.x), abs(111477u))));
    let var_3 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-35219i, firstLeadingBit(2147483647i)), abs(_wgslsmith_div_i32(~54640i, _wgslsmith_add_i32(global0[_wgslsmith_index_u32(var_2.b.x, 10u)], var_0.x)))), select(6462i >> (~var_2.b.x % 32u), 46917i, !arg_1.a.c), _wgslsmith_mult_i32((_wgslsmith_sub_i32(0i, 1i) << (_wgslsmith_mult_u32(48947u, var_2.b.x) % 32u)) >> (abs(~arg_1.a.d.x) % 32u), _wgslsmith_clamp_i32(0i, 10823i, countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.a.d.x, var_2.b.x), 10u)]))), firstLeadingBit(-4166i));
    var var_4 = 638f;
    return arg_0 != arg_1.a.b;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> i32 {
    var var_0 = arg_1.a;
    var var_1 = Struct_2(arg_1, arg_1.b);
    var var_2 = Struct_3(!vec2<bool>(all(vec4<bool>(var_1.a.c, false, false, false)) & true, arg_0), ~((~vec4<u32>(arg_1.d.x, arg_1.d.x, arg_1.d.x, var_1.a.d.x) | select(vec4<u32>(80510u, var_1.a.d.x, var_1.a.d.x, 1u), vec4<u32>(arg_1.d.x, 82326u, arg_1.d.x, 2023u), vec4<bool>(false, arg_1.c, false, true))) >> (vec4<u32>(_wgslsmith_div_u32(1u, 31687u), countOneBits(var_1.a.d.x), ~var_1.a.d.x, 16421u) % vec4<u32>(32u))));
    let var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.b)) + 560f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-292f)))));
    let var_4 = var_1.a;
    return -38402i;
}

fn func_1() -> Struct_3 {
    let var_0 = ~(~vec2<u32>(0u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(7050u, 39061u, 0u, 4294967295u), vec4<u32>(7010u, 4874u, 0u, 0u)))));
    var var_1 = vec2<i32>(func_4(any(vec4<bool>(any(vec4<bool>(false, false, false, false)), false, true, func_2(-872f, Struct_2(Struct_1(vec3<i32>(u_input.a, 0i, -26458i), 1326f, false, vec4<u32>(51992u, 1u, var_0.x, 0u)), -434f)))), Struct_1(min(vec3<i32>(-1i, global0[_wgslsmith_index_u32(var_0.x, 10u)], global0[_wgslsmith_index_u32(23866u, 10u)]), abs(vec3<i32>(-1i, global0[_wgslsmith_index_u32(var_0.x, 10u)], u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-290f, 376f) * 795f), true, _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, 1u, 47909u, var_0.x), firstTrailingBit(vec4<u32>(var_0.x, 53450u, 4294967295u, 1u)))), countOneBits(1i)), countOneBits(_wgslsmith_div_i32(~(i32(-1i) * -1i), max(-2147483647i, global0[_wgslsmith_index_u32(68422u, 10u)]) << (var_0.x % 32u))));
    var var_2 = _wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_mult_vec3_i32(firstTrailingBit(max(vec3<i32>(-15581i, 11585i, global0[_wgslsmith_index_u32(var_0.x, 10u)]), vec3<i32>(551i, -1396i, -1i))), min(abs(vec3<i32>(0i, 20860i, -1i)), vec3<i32>(46083i, -2147483647i, u_input.a)))), (~countOneBits(vec3<i32>(var_1.x, u_input.a, -2147483647i)) >> (~(~vec3<u32>(var_0.x, 4294967295u, var_0.x)) % vec3<u32>(32u))) ^ ~(~(vec3<i32>(var_1.x, 1i, u_input.a) << (vec3<u32>(87658u, 31030u, 4294967295u) % vec3<u32>(32u)))));
    var var_3 = Struct_3(select(vec2<bool>(true, (var_0.x != var_0.x) | select(true, false, false)), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(true, true), true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false)), select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, false), vec2<bool>(false, false)), true)), vec4<u32>(abs(~var_0.x), ~var_0.x, 79095u, var_0.x));
    let var_4 = firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x | var_0.x, var_3.b.x, ~var_3.b.x), var_3.b.xxz)) | reverseBits(var_3.b.wzx);
    return Struct_3(var_3.a, abs((var_3.b | min(vec4<u32>(var_4.x, 78986u, 1u, 0u), var_3.b)) ^ (var_3.b ^ vec4<u32>(34049u, 58074u, var_4.x, var_0.x))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1) -> vec3<u32> {
    global0 = array<i32, 10>();
    let var_0 = vec4<i32>(_wgslsmith_sub_i32(~(~u_input.a), -(-u_input.a >> (_wgslsmith_sub_u32(arg_0.b.x, arg_0.b.x) % 32u))), u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(countOneBits(u_input.a), -global0[_wgslsmith_index_u32(arg_1.d.x, 10u)]), vec2<i32>(-arg_1.a.x, ~arg_1.a.x)) >> (4294967295u % 32u), abs(_wgslsmith_div_i32(-1i, 1i)));
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    global0 = array<i32, 10>();
    return ~(~arg_0.b.yyw) ^ ~vec3<u32>(~countOneBits(4294967295u), 9105u, abs(select(arg_0.b.x, 26927u, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(4294967295u, 1u, firstTrailingBit(~_wgslsmith_add_u32(1u, 4515u))) ^ _wgslsmith_add_vec3_u32(func_5(func_1(), Struct_1(vec3<i32>(u_input.a, -40887i, u_input.a), 2255f, func_2(927f, Struct_2(Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(0u, 10u)], u_input.a), -378f, false, vec4<u32>(0u, 44966u, 4294967295u, 13758u)), 978f)), select(vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(4294967295u, 0u, 0u, 4294967295u), false))), min(vec3<u32>(35041u >> (1u % 32u), 1u, ~6229u), firstLeadingBit(vec3<u32>(36463u, 7823u, 1u))));
    let var_1 = select(abs(vec2<i32>(abs(-global0[_wgslsmith_index_u32(var_0.x, 10u)]), global0[_wgslsmith_index_u32((var_0.x << (var_0.x % 32u)) ^ (1u >> (var_0.x % 32u)), 10u)])), vec2<i32>(30870i, func_4(true | any(vec4<bool>(false, true, false, true)), Struct_1(vec3<i32>(-1i, global0[_wgslsmith_index_u32(30235u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)]), _wgslsmith_f_op_f32(f32(-1f) * -1458f), var_0.x >= var_0.x, func_1().b), ~(-45524i))), vec2<bool>(true, true));
    var var_2 = select(select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), false), true), !vec4<bool>(false, func_1().a.x, false, false), vec4<bool>((var_1.x | -23145i) <= global0[_wgslsmith_index_u32(~4294967295u, 10u)], true && func_1().a.x, true, !all(vec4<bool>(true, false, false, true)))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false))), select(vec4<bool>(true, false, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), false), all(vec2<bool>(true, true)))), false);
    let var_3 = func_1();
    var var_4 = ~firstLeadingBit(vec3<i32>(~u_input.a, countOneBits(_wgslsmith_mult_i32(-30018i, var_1.x)), global0[_wgslsmith_index_u32(4294967295u, 10u)]));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(~(-5578i), firstTrailingBit(var_4.x)) ^ var_4.x, var_0.x, _wgslsmith_f_op_f32(min(1352f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(938f * 1295f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1501f))))))), abs(vec2<u32>(var_0.x, countOneBits(var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1084f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(621f, 597f), true)), -454f)));
}

