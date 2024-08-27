struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>) -> vec2<bool> {
    var var_0 = -68933i;
    var var_1 = max(-vec4<i32>(~select(2147483647i, -2147483647i, arg_0.b.x), ~(-1i), _wgslsmith_mod_i32(1i, -1i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, 0i), -2147483647i)), vec4<i32>(firstTrailingBit(1i), -max(_wgslsmith_dot_vec2_i32(vec2<i32>(40669i, 7902i), vec2<i32>(1i, 0i)), -44610i), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), select(vec2<i32>(1354i, -2147483647i), vec2<i32>(-38933i, 2147483647i), vec2<bool>(arg_1.a.b.x, arg_1.a.b.x))) & countOneBits(0i), firstLeadingBit(-1i)));
    var_0 = var_1.x;
    let var_2 = arg_1;
    var var_3 = !vec3<bool>(_wgslsmith_sub_u32(~1u, 1u) > (_wgslsmith_mod_u32(arg_2.x, 0u) >> (4294967295u % 32u)), false, arg_0.b.x);
    return select(!select(!(!var_3.zy), select(vec2<bool>(arg_0.a, true), !arg_1.a.b, false), !vec2<bool>(arg_0.b.x, var_3.x)), vec2<bool>(true, all(select(vec4<bool>(false, var_2.c, false, var_3.x), select(vec4<bool>(var_2.c, true, var_2.a.d, true), vec4<bool>(true, true, false, arg_0.a), arg_0.a), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(866f)), 325f))) == _wgslsmith_f_op_f32(-697f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -722f))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    var var_0 = Struct_1(false, arg_0.b, arg_1.c, true);
    var_0 = arg_0;
    let var_1 = true;
    var var_2 = Struct_1(2147483647i == (4934i << (var_0.c % 32u)), !(!func_3(arg_1, arg_2, ~arg_2.b.yy)), ~var_0.c, true);
    let var_3 = Struct_2(arg_2.a, select(select(arg_2.d.ywy, vec3<u32>(arg_1.c, 38357u, 4294967295u), vec3<bool>(true, var_2.a, var_1)) | ~arg_2.b, ~arg_2.d.xwz, select(!vec3<bool>(arg_0.a, true, false), vec3<bool>(var_1, var_2.b.x, var_1), false)) & vec3<u32>(~min(5120u, var_2.c), ~_wgslsmith_div_u32(42340u, 29593u), _wgslsmith_clamp_u32(~100379u, ~arg_2.d.x, 35579u)), all(vec2<bool>((arg_2.a.b.x || var_0.d) & arg_1.a, !any(vec3<bool>(var_2.b.x, var_0.b.x, true)))), abs(vec4<u32>(abs(26737u), 56281u, reverseBits(29872u), ~4294967295u) & _wgslsmith_add_vec4_u32(arg_2.d, countOneBits(arg_2.d))));
    return -abs(select(min(-10906i, 17567i), _wgslsmith_clamp_i32(-1i, -1641i, 1i), var_3.c & arg_2.c)) | (_wgslsmith_add_i32(18405i, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(18544i, -2147483647i, 1i), vec3<i32>(786i, -32433i, 2147483647i)))) & ~abs(~(-1i)));
}

fn func_2() -> u32 {
    var var_0 = vec4<u32>(1u, 0u, u_input.b, u_input.a);
    var var_1 = min(_wgslsmith_div_i32(-9074i, -countOneBits(1i)), -1i);
    var var_2 = func_4(Struct_1(false, func_3(Struct_1(any(vec4<bool>(true, false, false, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), false), ~8423u, false), Struct_2(Struct_1(false, vec2<bool>(false, false), var_0.x, true), vec3<u32>(4294967295u, var_0.x, u_input.a), all(vec2<bool>(true, false)), countOneBits(vec4<u32>(31647u, 1u, u_input.a, 0u))), var_0.xz), var_0.x, false), Struct_1(true, !vec2<bool>(func_3(Struct_1(false, vec2<bool>(false, true), 106522u, true), Struct_2(Struct_1(true, vec2<bool>(true, true), 4294967295u, true), vec3<u32>(0u, u_input.b, var_0.x), false, vec4<u32>(12127u, var_0.x, 0u, var_0.x)), var_0.xz).x, any(vec4<bool>(false, true, true, false))), 8618u, true), Struct_2(Struct_1(all(vec4<bool>(false, true, false, true)), select(vec2<bool>(true, true), func_3(Struct_1(false, vec2<bool>(false, true), 27098u, true), Struct_2(Struct_1(true, vec2<bool>(false, false), 8783u, false), var_0.xwz, false, vec4<u32>(35738u, 50521u, 4294967295u, var_0.x)), var_0.zz), vec2<bool>(false, true)), ~4294967295u, true), var_0.zyw, true, _wgslsmith_mult_vec4_u32(abs(~vec4<u32>(4294967295u, 13502u, var_0.x, 0u)), abs(~vec4<u32>(44488u, 50927u, 1u, 9839u)))));
    var var_3 = var_0.x;
    var_3 = reverseBits(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~u_input.a, max(u_input.b, 27235u)), vec2<u32>(1u, 16558u)), var_0.wx));
    return ~u_input.b;
}

fn func_1() -> Struct_1 {
    var var_0 = 60705u != u_input.b;
    let var_1 = vec3<bool>(true, any(!select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false)), true)), ~countOneBits(func_2()) != 11000u);
    let var_2 = true;
    var var_3 = var_2;
    var_0 = true || ((any(select(var_1.zy, var_1.yz, false)) | (~u_input.a > (u_input.a ^ 4294967295u))) || (any(func_3(Struct_1(false, vec2<bool>(true, var_2), u_input.b, false), Struct_2(Struct_1(false, vec2<bool>(var_2, var_2), 0u, var_2), vec3<u32>(13354u, u_input.a, 1u), var_1.x, vec4<u32>(4294967295u, u_input.b, 1u, u_input.b)), vec2<u32>(0u, 0u))) && !(false | var_1.x)));
    return Struct_1(var_1.x, vec2<bool>(true | select(true, true, true), true), 0u, (~_wgslsmith_sub_u32(59519u, 1u) << (u_input.a % 32u)) != ~0u);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    var var_0 = ~(~_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(75177i, 0i), -19137i, 1i), _wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(-5431i, -59473i, -27165i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -25853i, 1i), vec3<i32>(-44381i, -16766i, -2147483647i))), vec3<i32>(_wgslsmith_add_i32(9459i, 22064i), min(2147483647i, 2147483647i), _wgslsmith_mod_i32(-1i, -2147483647i))));
    let var_1 = vec3<i32>(-var_0.x >> (abs(arg_2.d.x) % 32u), _wgslsmith_sub_i32(-var_0.x, ~var_0.x ^ 0i), -max(var_0.x << (29361u % 32u), i32(-1i) * -18841i));
    let var_2 = _wgslsmith_mult_vec3_u32(arg_2.b, vec3<u32>(1u, _wgslsmith_sub_u32(abs(firstTrailingBit(u_input.b)), 11475u), abs(_wgslsmith_add_u32(~arg_1.c, ~1u))));
    var_0 = min(~vec3<i32>(-1i, ~(~33418i), i32(-1i) * -var_1.x), vec3<i32>(1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(-20363i, var_1.x, var_0.x, var_1.x) & -vec4<i32>(-58285i, -18940i, var_0.x, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, -69832i, var_1.x, 1i), vec4<i32>(var_1.x, var_1.x, var_1.x, 22209i)) >> ((vec4<u32>(1u, var_2.x, arg_2.a.c, 41506u) >> (vec4<u32>(0u, u_input.a, 18277u, 78939u) % vec4<u32>(32u))) % vec4<u32>(32u))), ~38894i));
    var_0 = vec3<i32>(_wgslsmith_mult_i32(~(~var_1.x), _wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0.x, 2147483647i, -31961i), 22007i)) & select(28075i, 355i, func_1().d), _wgslsmith_mult_i32(var_1.x, var_1.x), -2147483647i);
    return Struct_2(Struct_1(all(vec3<bool>(true, arg_1.d, all(vec3<bool>(false, true, false)))), vec2<bool>(!(!arg_0), false), _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_2.b.x, arg_2.b.x) & u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(84127u, arg_2.d.x, 15680u), vec3<u32>(var_2.x, 74408u, var_2.x))), true), var_2, !func_3(Struct_1(arg_1.d | arg_2.c, arg_1.b, 0u, -5094i <= var_0.x), arg_2, var_2.zx).x, _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, 14453u, var_2.x), vec4<u32>(arg_2.a.c, ~var_2.x, ~10925u, 32994u ^ var_2.x)) & _wgslsmith_add_vec4_u32(~select(arg_2.d, vec4<u32>(4294967295u, u_input.b, 21014u, 0u), vec4<bool>(false, true, arg_2.a.b.x, arg_0)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 0u), vec4<u32>(arg_2.a.c, u_input.a, var_2.x, 50556u))));
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = 1u;
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, ~(-(i32(-1i) * -2147483647i))), -(~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 35175i), vec2<i32>(40187i, -1i), vec2<i32>(46577i, 2147483647i)))));
    var_0 = _wgslsmith_clamp_u32(~func_2(), countOneBits(countOneBits(4294967295u)), ~abs(arg_0.x));
    var_1 = _wgslsmith_clamp_i32(2147483647i, min(_wgslsmith_mult_i32(-_wgslsmith_div_i32(34056i, -1i), func_4(arg_1.a, arg_1.a, arg_1)), 2147483647i), -_wgslsmith_clamp_i32(-2147483647i, -2930i, reverseBits(1i)));
    let var_2 = Struct_1(arg_1.a.a, func_5(!(any(arg_1.a.b) & true), arg_1.a, arg_1).a.b, ~arg_0.x, any(!arg_1.a.b));
    return select(!(!select(vec3<bool>(arg_1.c, arg_1.c, true), !vec3<bool>(arg_1.a.d, arg_1.c, var_2.b.x), false)), select(!(!(!vec3<bool>(var_2.b.x, arg_1.a.a, var_2.b.x))), vec3<bool>(true, any(func_1().b), u_input.b > firstTrailingBit(13288u)), !vec3<bool>(true, any(vec3<bool>(true, arg_1.a.b.x, var_2.a)), true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = !(!func_6(vec4<u32>(88817u, select(u_input.b, u_input.b, var_0), 0u, 14829u), func_5(true, func_1(), Struct_2(Struct_1(false, vec2<bool>(true, var_0), u_input.b, false), vec3<u32>(u_input.b, u_input.a, u_input.a), true, vec4<u32>(u_input.a, 4294967295u, 31945u, u_input.a)))));
    let var_2 = Struct_2(Struct_1(true, !(!(!vec2<bool>(var_0, false))), u_input.b, true), vec3<u32>(4294967295u, u_input.b, 4294967295u << ((1u << (u_input.a % 32u)) % 32u)), true | (all(vec3<bool>(true, true, false)) == true), firstLeadingBit(abs(vec4<u32>(61778u, u_input.b, u_input.b, 4294967295u))));
    let var_3 = Struct_2(Struct_1(true, vec2<bool>(var_0, true), 4294967295u, true), vec3<u32>(_wgslsmith_mod_u32(1u, _wgslsmith_div_u32(u_input.a, 0u) >> (var_2.a.c % 32u)), var_2.a.c, var_2.b.x), false, ~var_2.d);
    var_1 = func_6(var_2.d, Struct_2(var_2.a, vec3<u32>(u_input.b, var_3.a.c, var_2.a.c), true, ~(~(~var_2.d))));
    var_1 = vec3<bool>(all(select(func_6(vec4<u32>(var_2.b.x, 19365u, var_3.d.x, var_3.b.x), var_2), !vec3<bool>(var_1.x, var_3.a.d, var_1.x), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1209f, -623f))) * _wgslsmith_f_op_f32(ceil(-478f))) < -1000f, any(func_6(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(var_3.d, var_3.d), var_2.d >> (vec4<u32>(u_input.b, 1u, 5714u, 78868u) % vec4<u32>(32u))), var_3)));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-195f)) - _wgslsmith_f_op_f32(-543f - 707f)) - -609f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-2162f, 586f, var_2.a.d)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(210f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(543f - -1150f), _wgslsmith_f_op_f32(1306f * _wgslsmith_f_op_f32(f32(-1f) * -1455f)))))));
    var_1 = vec3<bool>(true, true, true != (true && !any(vec3<bool>(var_0, var_2.a.d, true))));
    var_1 = vec3<bool>(all(!(!vec4<bool>(false, false, var_2.a.a, false))) || true, func_6(_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_3.a.c, var_3.d.x, u_input.a, var_2.d.x) & var_3.d, reverseBits(var_2.d)), ~var_3.d), Struct_2(func_5(true, func_1(), var_2).a, abs(reverseBits(vec3<u32>(4294967295u, 42649u, u_input.b))), false, ~vec4<u32>(var_3.d.x, u_input.a, u_input.a, 1u))).x, all(vec3<bool>(var_3.a.d, !func_3(Struct_1(var_1.x, vec2<bool>(var_1.x, var_2.a.b.x), 4294967295u, var_2.c), Struct_2(var_2.a, var_3.d.zxw, true, vec4<u32>(var_3.b.x, var_3.a.c, var_2.b.x, var_3.b.x)), var_2.b.yx).x, any(!vec4<bool>(var_0, true, var_2.c, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(_wgslsmith_sub_i32(reverseBits(reverseBits(-1i)), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 37550i, -2147483647i, -46052i), vec4<i32>(21985i, 7322i, 1i, -1i)))), -24954i), 858f);
}

