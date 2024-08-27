struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec2<bool> {
    var var_0 = Struct_1(arg_0.a);
    let var_1 = Struct_2(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x << (u_input.a.x % 32u), ~24289u), u_input.b.x) | abs(u_input.d.x));
    var var_2 = u_input.d.x <= ~0u;
    let var_3 = u_input.a;
    var var_4 = arg_0;
    return vec2<bool>(!(!(!var_0.a.x)), var_4.a.x);
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: vec2<bool>, arg_3: vec3<bool>) -> i32 {
    let var_0 = Struct_1(!arg_3);
    var var_1 = vec4<i32>(-18967i, _wgslsmith_dot_vec3_i32(~vec3<i32>(-4564i, 1i, ~arg_1), select(_wgslsmith_add_vec3_i32(~vec3<i32>(2147483647i, arg_1, -1i), -vec3<i32>(arg_1, -1i, arg_1)), min(-vec3<i32>(arg_1, arg_1, -2147483647i), reverseBits(vec3<i32>(-11188i, -2147483647i, arg_1))), false)), arg_1, -1i);
    var var_2 = vec4<bool>(var_0.a.x, func_3(var_0, _wgslsmith_f_op_f32(1f + 1f)).x, false, !arg_2.x);
    let var_3 = var_0;
    var var_4 = Struct_2(arg_0.x >> (4294967295u % 32u));
    return (~arg_1 >> (u_input.c.x % 32u)) & _wgslsmith_dot_vec2_i32(reverseBits(abs(vec2<i32>(var_1.x, var_1.x))), ~vec2<i32>(-27923i, var_1.x));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_add_vec3_u32(firstLeadingBit(~_wgslsmith_sub_vec3_u32(u_input.c, u_input.a)), ~u_input.b.wwy);
    let var_1 = vec3<bool>(false, (false | (1i <= (-2147483647i << (var_0.x % 32u)))) & (_wgslsmith_mod_i32(abs(-2147483647i), ~(-44485i)) > func_4(u_input.c.zx, -35314i, func_3(Struct_1(vec3<bool>(false, false, false)), 1854f), vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -235f), 685f)) + _wgslsmith_f_op_f32(f32(-1f) * -534f)) != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -482f), _wgslsmith_f_op_f32(f32(-1f) * -336f))))));
    let var_2 = vec4<u32>(_wgslsmith_sub_u32(10422u, min(abs(1u), ~19697u)), max(u_input.d.x, _wgslsmith_add_u32(~firstTrailingBit(u_input.d.x), ~1u)), ~(~(~1u)), 1u);
    var var_3 = Struct_1(vec3<bool>(var_1.x, var_1.x, true));
    var var_4 = Struct_1(select(select(select(select(vec3<bool>(false, var_3.a.x, var_1.x), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, false, false)), vec3<bool>(var_1.x, false, var_1.x), select(var_1, var_1, vec3<bool>(var_1.x, var_3.a.x, false))), vec3<bool>(!var_3.a.x, false, true), true), !var_3.a, all(!(!vec4<bool>(var_1.x, var_3.a.x, var_1.x, true)))));
    return Struct_1(vec3<bool>(any(!select(vec4<bool>(var_4.a.x, true, false, false), vec4<bool>(var_3.a.x, true, var_4.a.x, false), var_4.a.x)), true, select(func_3(Struct_1(var_1), _wgslsmith_f_op_f32(max(1193f, -1051f))).x, any(vec3<bool>(true, var_1.x, var_3.a.x)), true || all(var_3.a.yz))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    var var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(-(~reverseBits(vec2<i32>(2147483647i, -61983i))), abs(firstLeadingBit(vec2<i32>(13482i, -8711i)))), 2147483647i, select(54778i, 1i << (1u % 32u), !var_0.a.x) << ((~u_input.b.x << (_wgslsmith_add_u32(u_input.b.x & 54602u, countOneBits(50588u)) % 32u)) % 32u));
    var_1 = ~select(max(-countOneBits(vec3<i32>(2147483647i, var_1.x, 1i)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-38797i, -45330i, var_1.x), vec3<i32>(var_1.x, -4959i, -27404i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(4113i, 2147483647i, -9514i), vec3<i32>(var_1.x, 29159i, -1663i), vec3<i32>(-32326i, -1i, var_1.x)))), vec3<i32>(-1i) * -(~vec3<i32>(-10828i, -1i, 15729i)), true);
    var_1 = ~abs(~firstTrailingBit(vec3<i32>(-2147483647i, var_1.x, 19477i)) ^ abs(_wgslsmith_div_vec3_i32(vec3<i32>(var_1.x, var_1.x, -1i), vec3<i32>(var_1.x, -2147483647i, -7470i))));
    var_1 = _wgslsmith_clamp_vec3_i32(~_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(var_1.x, 8368i, 0i)), vec3<i32>(firstTrailingBit(var_1.x), 50193i, 0i), vec3<i32>(-var_1.x, -1i, var_1.x)), -vec3<i32>(_wgslsmith_clamp_i32(2147483647i, -2147483647i, func_4(u_input.c.zz, -1i, var_0.a.yz, vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x))), 33920i, -var_1.x), ~_wgslsmith_mod_vec3_i32(~(-vec3<i32>(var_1.x, var_1.x, var_1.x)), -max(vec3<i32>(var_1.x, var_1.x, var_1.x), vec3<i32>(var_1.x, -3509i, var_1.x))));
    return Struct_1(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var var_1 = !all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false)));
    let var_2 = func_1();
    var var_3 = -(-2147483647i << (_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 0u), vec2<u32>(u_input.d.x, 0u)), u_input.c.x) % 32u)) >> (max(u_input.a.x, ~u_input.c.x) % 32u);
    var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 6295u), vec3<u32>(4294967295u, u_input.a.x, 4294967295u)), ~u_input.c), ~abs(1u))), u_input.b.xx);
    var_3 = select(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, 85643i, 33162i), reverseBits(select(vec3<i32>(2147483647i, -28045i, -1i), vec3<i32>(-24918i, -39365i, 0i), var_2.a.x))), _wgslsmith_mod_i32(-22384i, countOneBits(_wgslsmith_sub_i32(2147483647i, 0i))), -(~2147483647i)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(1i, -2147483647i, 2147483647i), vec3<i32>(firstTrailingBit(1i), 1i, max(2147483647i, -1i))), -(~1i)), false);
    var_0 = abs(_wgslsmith_clamp_u32(~u_input.b.x, u_input.b.x, u_input.b.x));
    var var_4 = abs(select(firstTrailingBit(vec3<u32>(_wgslsmith_add_u32(u_input.d.x, 4294967295u), u_input.c.x, u_input.b.x)), _wgslsmith_clamp_vec3_u32(abs(u_input.b.wyw), select(u_input.a, ~vec3<u32>(u_input.b.x, 32076u, 74508u), true), u_input.a), !var_2.a.x));
    let var_5 = Struct_1(vec3<bool>(true || !all(vec2<bool>(var_2.a.x, var_2.a.x)), false, var_2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~func_4(_wgslsmith_div_vec2_u32(var_4.xx, vec2<u32>(2563u, var_4.x)), _wgslsmith_mult_i32(1i, 1i), !vec2<bool>(var_5.a.x, true), !vec3<bool>(true, var_2.a.x, true)) & _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(8266i, 70221i), vec2<i32>(-68393i, 17565i)) >> (var_4.x % 32u), _wgslsmith_clamp_i32(abs(-15390i), -4346i << (u_input.d.x % 32u), i32(-1i) * -20073i)), _wgslsmith_sub_u32(~firstTrailingBit(~u_input.b.x), u_input.b.x));
}

