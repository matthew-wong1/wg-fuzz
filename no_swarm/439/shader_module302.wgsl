struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(35950i, vec4<u32>(0u, 4935u, 32811u, 1u), vec2<u32>(82660u, 8046u));

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>) -> u32 {
    global0 = Struct_1(6324i, min(_wgslsmith_mult_vec4_u32(global0.b, ~vec4<u32>(global0.b.x, u_input.a, global0.c.x, 19024u)), reverseBits(~global0.b) | vec4<u32>(~global0.b.x, 1u, _wgslsmith_div_u32(32476u, 18267u), global0.b.x)), vec2<u32>(~_wgslsmith_div_u32(~17386u, global0.c.x), firstLeadingBit(global0.c.x)));
    global0 = Struct_1(~_wgslsmith_sub_i32(i32(-1i) * -48012i, -4341i), vec4<u32>(0u << (global0.b.x % 32u), global0.b.x, ~(reverseBits(129098u) >> (u_input.a % 32u)), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 21665u, arg_0.x), arg_0), _wgslsmith_dot_vec3_u32(global0.b.yyx, vec3<u32>(global0.b.x, global0.b.x, 4294967295u)))), arg_0.yy);
    let var_0 = Struct_1(2147483647i, vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(~31878u, ~u_input.a), 62018u), _wgslsmith_dot_vec4_u32(~vec4<u32>(48239u, u_input.a, arg_0.x, arg_0.x), ~global0.b), global0.b.x, _wgslsmith_dot_vec4_u32(countOneBits(global0.b), vec4<u32>(4294967295u, min(global0.c.x, 4294967295u), abs(u_input.a), ~arg_0.x))), vec2<u32>(97849u, ~2362u << (_wgslsmith_div_u32(24024u, 4294967295u) % 32u)) << (_wgslsmith_mult_vec2_u32(~select(arg_0.yx, arg_0.yy, vec2<bool>(false, true)), abs(global0.c ^ global0.c)) % vec2<u32>(32u)));
    let var_1 = Struct_1(countOneBits(1i), var_0.b, vec2<u32>(~1u, _wgslsmith_div_u32(1u >> (~4294967295u % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(60195u, u_input.a, 4294967295u), arg_0), var_0.b.zxx | vec3<u32>(u_input.a, var_0.c.x, 15986u)))));
    let var_2 = !select(vec4<bool>(true, true, any(vec3<bool>(true, true, true)), firstLeadingBit(arg_1.x) > countOneBits(global0.a)), vec4<bool>(true, true, 4294967295u == firstTrailingBit(var_0.c.x), false), select(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), false)), true, any(vec4<bool>(true, true, true, true))));
    return 20352u;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec3<f32>) -> i32 {
    var var_0 = Struct_1(6146i << (1u % 32u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, ~firstTrailingBit(global0.b.x), global0.b.x, func_3(vec3<u32>(1u, 108605u, u_input.a), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.a, -1i, 2147483647i, u_input.b), vec4<i32>(u_input.b, 2954i, global0.a, u_input.b)))), _wgslsmith_add_vec4_u32(~global0.b, ~(~vec4<u32>(global0.b.x, 33015u, 30892u, u_input.a))), min(~vec4<u32>(u_input.a, 13987u, 39983u, global0.b.x), ~(~vec4<u32>(global0.c.x, u_input.a, u_input.a, global0.b.x)))), vec2<u32>(u_input.a, ~1u));
    var var_1 = vec4<f32>(727f, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -1228f);
    let var_2 = global0.c.x;
    var var_3 = Struct_1(global0.a, max(select(var_0.b, countOneBits(abs(vec4<u32>(global0.b.x, global0.b.x, var_0.c.x, var_0.b.x))), select(vec4<bool>(false, arg_0, arg_1, arg_1), select(vec4<bool>(false, true, false, arg_1), vec4<bool>(arg_1, arg_0, arg_0, arg_0), vec4<bool>(arg_1, true, true, arg_0)), all(vec2<bool>(false, arg_1)))), select(var_0.b, ~var_0.b, vec4<bool>(any(vec2<bool>(false, arg_1)), !arg_1, all(vec2<bool>(true, false)), var_1.x != 545f))), firstTrailingBit(var_0.c));
    let var_4 = Struct_1(63477i, global0.b, ~reverseBits(vec2<u32>(14277u, _wgslsmith_dot_vec3_u32(var_3.b.wzx, var_3.b.zxz))));
    return 2147483647i;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool, arg_2: f32, arg_3: vec4<i32>) -> Struct_1 {
    global0 = Struct_1(arg_3.x >> (~(~func_3(vec3<u32>(global0.c.x, 0u, global0.c.x), vec4<i32>(u_input.b, arg_3.x, arg_3.x, u_input.b))) % 32u), vec4<u32>(global0.c.x, func_3(abs(_wgslsmith_div_vec3_u32(global0.b.wyw, vec3<u32>(0u, 8838u, 33303u))), firstLeadingBit(arg_3) >> (global0.b % vec4<u32>(32u))), reverseBits(14581u), global0.c.x), ~_wgslsmith_sub_vec2_u32(reverseBits(min(global0.b.wy, global0.c)), vec2<u32>(_wgslsmith_sub_u32(7913u, 1u), ~u_input.a)));
    let var_0 = Struct_1(~u_input.b, global0.b, abs(global0.c));
    var var_1 = var_0;
    return var_0;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<bool>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    global0 = func_4(arg_1, arg_1.x, 878f, vec4<i32>(-(~1i & func_2(arg_1.x, true, vec3<f32>(1000f, 498f, -491f))), ~arg_2, ~(~abs(arg_3.a)), 1i));
    var var_0 = func_4(vec3<bool>(!all(!vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x)), arg_1.x, arg_1.x), arg_1.x, -270f, vec4<i32>(~(0i >> (_wgslsmith_mult_u32(arg_3.c.x, arg_3.b.x) % 32u)), _wgslsmith_mult_i32(countOneBits(_wgslsmith_sub_i32(global0.a, arg_2)), -1i), _wgslsmith_dot_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a, 0i, global0.a, -1i), vec4<i32>(global0.a, 2147483647i, -2147483647i, 18394i))), vec4<i32>(func_4(vec3<bool>(arg_1.x, true, arg_1.x), true, -1622f, vec4<i32>(0i, arg_2, arg_3.a, u_input.b)).a, _wgslsmith_sub_i32(-225i, 1i), global0.a, _wgslsmith_div_i32(global0.a, 3815i))), ~(-1i)));
    let var_1 = select(!(!select(arg_1.zy, select(arg_1.xz, vec2<bool>(true, true), true), arg_1.yx)), select(arg_1.zy, vec2<bool>(arg_1.x, arg_0.x <= _wgslsmith_div_i32(global0.a, arg_2)), select(select(select(vec2<bool>(true, arg_1.x), vec2<bool>(false, false), arg_1.xz), vec2<bool>(true, arg_1.x), vec2<bool>(arg_1.x, arg_1.x)), !select(vec2<bool>(arg_1.x, arg_1.x), arg_1.yz, arg_1.zx), all(arg_1.xx) | false)), vec2<bool>(true, !(0i < u_input.b)));
    let var_2 = i32(-1i) * -(~(~arg_0.x));
    let var_3 = any(arg_1.zx);
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(vec3<i32>(21441i, 6671i, -countOneBits(_wgslsmith_div_i32(u_input.b, u_input.b))), vec3<bool>(true, true, true), u_input.b, Struct_1(~23104i, ~min(vec4<u32>(global0.c.x, u_input.a, 0u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(37018u, 37570u, 3418u, global0.b.x), global0.b)), global0.b.wx));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1094f)))), -1022f)));
    var_0 = -2612f;
    let var_1 = Struct_1(~(~max(global0.a, global0.a)) & 5723i, (global0.b << (~(~vec4<u32>(u_input.a, 11603u, global0.c.x, global0.b.x)) % vec4<u32>(32u))) ^ vec4<u32>(global0.b.x, func_4(vec3<bool>(false, false, false), true, _wgslsmith_f_op_f32(f32(-1f) * -334f), -vec4<i32>(global0.a, 2147483647i, u_input.b, u_input.b)).b.x, u_input.a, _wgslsmith_mod_u32(global0.c.x << (global0.b.x % 32u), ~u_input.a)), vec2<u32>(~global0.c.x, max(~global0.c.x, _wgslsmith_mult_u32(u_input.a, 5290u) | func_4(vec3<bool>(true, true, false), false, 672f, vec4<i32>(global0.a, global0.a, 36481i, -10125i)).c.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(485f, -1000f, -890f, 365f), vec4<f32>(-600f, 1166f, 403f, -431f))), vec4<f32>(-1244f, _wgslsmith_f_op_f32(f32(-1f) * -1842f), _wgslsmith_f_op_f32(384f + 1194f), _wgslsmith_f_op_f32(f32(-1f) * -258f)), vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-158f, -1000f) + _wgslsmith_f_op_f32(2446f * -799f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(750f))), _wgslsmith_f_op_f32(f32(-1f) * -673f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(985f * 661f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-557f, -439f, -1159f, -925f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2297f, 1331f, 451f, 825f))), any(vec2<bool>(true, true))))));
    let var_3 = (-abs(vec4<i32>(-1i, -186i, 2147483647i, -24771i)) | (_wgslsmith_mult_vec4_i32(vec4<i32>(global0.a, -1i, -1i, u_input.b), _wgslsmith_div_vec4_i32(vec4<i32>(global0.a, 2147483647i, u_input.b, global0.a), vec4<i32>(0i, 1i, 20842i, 1i))) | vec4<i32>(var_1.a << (4294967295u % 32u), func_2(true, true, vec3<f32>(var_2.x, 132f, -825f)), u_input.b, 21883i))) | ((-min(vec4<i32>(u_input.b, var_1.a, global0.a, -15757i), vec4<i32>(-8476i, 1i, -23506i, global0.a)) & abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -9750i, 0i, 17373i), vec4<i32>(global0.a, var_1.a, global0.a, -1i)))) >> (~(vec4<u32>(4294967295u, var_1.c.x, 1u, var_1.c.x) >> (var_1.b % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_4 = _wgslsmith_f_op_f32(-995f + var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~var_3);
}

