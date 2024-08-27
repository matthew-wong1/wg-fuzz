struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: u32 = 30507u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: i32) -> bool {
    let var_0 = 22935u;
    global0 = array<u32, 5>();
    var var_1 = Struct_2(Struct_1(reverseBits(_wgslsmith_mult_vec3_u32(max(vec3<u32>(var_0, arg_0.x, var_0), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 5u)], 33493u, u_input.a.x)), _wgslsmith_add_vec3_u32(u_input.a, u_input.a))), 1000f, -26710i ^ arg_3), (_wgslsmith_f_op_f32(max(arg_1.a.x, -1075f)) == arg_1.a.x) || !(arg_1.a.x < arg_1.a.x));
    global1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.a.b)) * _wgslsmith_f_op_f32(f32(-1f) * -926f)) * arg_1.a.x)));
    return true;
}

fn func_2() -> u32 {
    let var_0 = select(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(select(true, false, false), false), all(vec3<bool>(true, true, true))), vec2<bool>(func_3(vec2<u32>(u_input.a.x, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 5u)], 5u)]), Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(-408f, -1036f, 1017f) * vec3<f32>(-462f, 799f, -1700f)), any(vec2<bool>(true, false))), vec3<f32>(-327f, 1171f, _wgslsmith_f_op_f32(sign(546f))), _wgslsmith_mult_i32(686i, ~(-17666i))), false), select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, select(false, all(vec3<bool>(false, true, false)), true)), vec2<bool>(true, true)));
    let var_1 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(~0i, abs(-64788i)), ~(~(-2147483647i)), -14634i), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(max(-34206i, 2147483647i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 36686i), vec2<i32>(-2147483647i, 2147483647i)), 1i))) | -(1i << (_wgslsmith_clamp_u32(0u, ~4294967295u, ~1317u) % 32u));
    global0 = array<u32, 5>();
    let var_2 = var_0.x;
    global1 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 1u, u_input.a.x) ^ vec4<u32>(u_input.a.x, 50825u, 1u, u_input.b), ~vec4<u32>(13361u, 79573u, 0u, 47745u)), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(57490u, 13434u, 21779u, 28769u)), ~vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.a.x))) >> (_wgslsmith_div_u32(firstLeadingBit(43133u), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], u_input.a.x, 1u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 0u, 12739u)), global0[_wgslsmith_index_u32(countOneBits(11394u), 5u)])) % 32u);
    return u_input.b;
}

fn func_4(arg_0: bool, arg_1: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_1(vec3<u32>(~19293u, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 1u), ~(~arg_1)), ~(arg_1.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(arg_1.x, 5u)]), arg_1) % 32u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-620f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1585f - 868f), 1000f)))), min(_wgslsmith_mod_i32(abs(i32(-1i) * -22562i), 1i), 0i));
    var var_1 = max(abs(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-var_0.c, ~(-66648i)), _wgslsmith_mod_i32(~var_0.c, 5517i))), var_0.c);
    var var_2 = 9821u;
    let var_3 = _wgslsmith_sub_vec3_i32(~select(-(~vec3<i32>(1i, -1i, 1i)), ~(-vec3<i32>(var_0.c, -2147483647i, 18213i)), vec3<bool>(4294967295u <= u_input.b, true, true)), vec3<i32>(var_0.c, ~(-var_0.c), ~var_0.c));
    var var_4 = var_0;
    return Struct_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.b))), _wgslsmith_f_op_f32(step(var_4.b, -755f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_4.b)) + _wgslsmith_f_op_f32(exp2(var_0.b)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-651f)), -2102f, _wgslsmith_f_op_f32(ceil(373f)))), vec3<bool>(arg_0, select(!arg_0, arg_0 & arg_0, any(vec4<bool>(arg_0, false, arg_0, false))), ~1u <= u_input.a.x))), !func_3(select(~vec2<u32>(18720u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.x, 5u)], 5u)]), vec2<u32>(16885u, u_input.b), vec2<bool>(arg_0, arg_0)), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(702f, var_0.b, var_0.b)), arg_0), vec3<f32>(_wgslsmith_f_op_f32(floor(var_4.b)), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_div_f32(-2167f, var_4.b)), 1i));
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = func_4(!all(vec4<bool>(true, true, true, true)), vec2<u32>(~(58611u | abs(u_input.a.x)), select(func_2(), u_input.b, true | any(vec4<bool>(true, false, true, true)))));
    let var_1 = Struct_2(Struct_1(reverseBits(firstLeadingBit(~vec3<u32>(arg_0, 0u, global0[_wgslsmith_index_u32(arg_0, 5u)]))), 246f, -2147483647i), func_4(!(!var_0.b), ~_wgslsmith_mod_vec2_u32(vec2<u32>(36921u, arg_0), ~u_input.a.zx)).b);
    let var_2 = Struct_4(u_input.a, var_1, vec3<u32>(~(~_wgslsmith_div_u32(arg_0, arg_0)), (4294967295u ^ ~u_input.b) << (global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(132u, u_input.b), vec2<u32>(58418u, 0u))), 5u)] % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(46675u, 1u), abs(u_input.a.xz)) >> (_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 5u)], 4294967295u), 5u)], 5u)], u_input.b >> (28497u % 32u)) % 32u)));
    global0 = array<u32, 5>();
    var var_3 = var_2;
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.b) * _wgslsmith_f_op_f32(var_2.b.a.b + -340f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b)), 1647f)), -586f), func_4(true, u_input.a.zy).b);
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_4(u_input.a & vec3<u32>(~firstTrailingBit(4294967295u), 0u, 1u), Struct_2(arg_2, !(!arg_1.b | (arg_2.c > -31857i))), vec3<u32>(arg_2.a.x, reverseBits(~_wgslsmith_sub_u32(0u, arg_2.a.x)), reverseBits(u_input.a.x)));
    global0 = array<u32, 5>();
    var var_1 = firstTrailingBit(26659u);
    var var_2 = Struct_2(arg_2, false);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(532f, 320f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.a.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-254f)), -362f)) + -1698f)), -206f, arg_1.a.x);
    return _wgslsmith_f_op_f32(-1862f * var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(~(~u_input.a), u_input.a, u_input.a), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(164f, 350f)), func_1(4294967295u), Struct_1(select(u_input.a, vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<bool>(true, true, true)), -2277f, firstLeadingBit(2147483647i)))), 1i), !select(true, firstTrailingBit(-58165i) > -36450i, any(vec3<bool>(true, true, true))));
    global1 = ~max(~(1u ^ global0[_wgslsmith_index_u32(99174u, 5u)]), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(var_0.a.a.x, 5u)], 5u)], 5u)], 5u)]) ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(abs(u_input.b), global0[_wgslsmith_index_u32(4294967295u, 5u)], u_input.a.x >> (1u % 32u), u_input.a.x), select(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(1u, 5u)], 4294967295u, global0[_wgslsmith_index_u32(13612u, 5u)], 66059u), vec4<u32>(global0[_wgslsmith_index_u32(0u, 5u)], u_input.b, 1u, 0u)), _wgslsmith_sub_vec4_u32(vec4<u32>(1u, global0[_wgslsmith_index_u32(23148u, 5u)], 232u, var_0.a.a.x), vec4<u32>(var_0.a.a.x, 66616u, 36079u, var_0.a.a.x)), vec4<bool>(var_0.b, false, var_0.b, true)));
    var var_1 = func_1(global0[_wgslsmith_index_u32(39762u, 5u)]);
    var var_2 = ~33410i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a, -vec3<i32>(~(var_0.a.c << (25184u % 32u)), _wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.a.c, -19360i), 0i << (u_input.a.x % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.c, 44777i), vec2<i32>(32092i, -62589i)) ^ (var_0.a.c >> (6569u % 32u))), _wgslsmith_f_op_f32(sign(-775f)), 39084u, abs(-abs(vec4<i32>(-4270i, -20480i, var_0.a.c, var_0.a.c))) >> (~select(abs(vec4<u32>(u_input.b, u_input.a.x, 0u, 1u)), _wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.a.x, 83194u, 4294967295u, global0[_wgslsmith_index_u32(var_0.a.a.x, 5u)]), vec4<u32>(global0[_wgslsmith_index_u32(var_0.a.a.x, 5u)], 1u, u_input.a.x, 0u)), var_0.b) % vec4<u32>(32u)));
}

