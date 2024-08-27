struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = vec3<bool>(global0.x == ~_wgslsmith_div_i32(~arg_1.b.a, 19696i), false, 1u == _wgslsmith_clamp_u32(countOneBits(countOneBits(arg_0.x)), _wgslsmith_div_u32(arg_0.x, _wgslsmith_dot_vec4_u32(arg_0, arg_0)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.wz, arg_0.yz), max(arg_0.wy, vec2<u32>(60469u, 23750u)))));
    var var_1 = arg_1.b;
    var_1 = Struct_1(_wgslsmith_div_i32(u_input.a, firstLeadingBit(1i)));
    var_1 = Struct_1(u_input.a);
    var var_2 = ~vec2<i32>(_wgslsmith_mod_i32(u_input.a >> (0u % 32u), -3817i) & 31572i, global0.x);
    return firstTrailingBit(vec4<i32>(u_input.a, var_2.x, 1i, firstTrailingBit(global0.x)));
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = -1i;
    let var_1 = global0.yz;
    global0 = _wgslsmith_sub_vec4_i32(-(~(~min(vec4<i32>(u_input.a, var_1.x, 19189i, -24234i), vec4<i32>(global0.x, u_input.a, -52310i, 27150i)))), vec4<i32>(global0.x | _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_1.x, 0i, global0.x, 1033i)), func_3(vec4<u32>(66886u, 1u, 43527u, 25u), Struct_2(262f, Struct_1(-1i), -2082f))), ~(~(-48507i) & min(var_1.x, var_1.x)), _wgslsmith_div_i32(~1i, ~(-2147483647i) << (~4294967295u % 32u)), _wgslsmith_clamp_i32(global0.x, 0i, _wgslsmith_sub_i32(1i, -21238i))));
    var var_2 = ~(~vec4<u32>(1u, 1u, 1u, 1u));
    var var_3 = !arg_0;
    return i32(-1i) * -31257i;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>) -> i32 {
    global0 = vec4<i32>(49962i, _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(global0.zx | global0.wx, vec2<i32>(arg_0.b.a, u_input.a)), 28520i), -2147483647i, u_input.a);
    global0 = vec4<i32>(abs(_wgslsmith_add_i32(func_2(-1i < global0.x), u_input.a)), u_input.a, u_input.a, arg_1.a);
    global0 = countOneBits(countOneBits(-_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, u_input.a, -2147483647i, 2147483647i), vec4<i32>(global0.x, u_input.a, 22677i, -7955i)), ~vec4<i32>(-2147483647i, 0i, -1i, 37604i))));
    global0 = abs(_wgslsmith_clamp_vec4_i32(-reverseBits(vec4<i32>(arg_0.b.a, -23287i, global0.x, -1i) >> (vec4<u32>(4294967295u, 1u, 15697u, 27673u) % vec4<u32>(32u))), vec4<i32>(reverseBits(func_2(arg_2.x)), -2147483647i, -1i, u_input.a), vec4<i32>(arg_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, u_input.a, u_input.a, arg_0.b.a), ~vec4<i32>(arg_0.b.a, arg_0.b.a, u_input.a, arg_0.b.a)), -5807i, -(~0i))));
    global0 = -vec4<i32>(select(func_2(!arg_2.x), max(-u_input.a, arg_0.b.a | arg_0.b.a), arg_2.x != true), ~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-7916i, 2147483647i, 0i, u_input.a), vec4<i32>(0i, global0.x, arg_1.a, 0i)), -vec4<i32>(-2147483647i, -30346i, arg_1.a, arg_0.b.a)), _wgslsmith_mult_i32(1100i ^ ~arg_0.b.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(31420i, u_input.a, u_input.a, arg_1.a), vec4<i32>(53753i, arg_1.a, 2147483647i, global0.x)), 1i)), ~arg_0.b.a);
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(min(-(vec4<i32>(-1i) * -vec4<i32>(u_input.a, -42792i, -2147483647i, u_input.a)), vec4<i32>(-func_1(Struct_2(850f, Struct_1(u_input.a), 1271f), Struct_1(u_input.a), vec2<bool>(true, true)), global0.x, global0.x, _wgslsmith_dot_vec3_i32(~global0.xyw, global0.yyy))), ~vec4<i32>(global0.x, u_input.a, -(-48311i ^ global0.x), -6916i));
    global0 = select(~(select(reverseBits(vec4<i32>(u_input.a, global0.x, global0.x, 11843i)), ~vec4<i32>(global0.x, global0.x, u_input.a, 2147483647i), vec4<bool>(true, false, false, true)) & vec4<i32>(-1i, 37399i, 19109i, -1i)), -vec4<i32>(_wgslsmith_add_i32(global0.x, 1736i) ^ _wgslsmith_mult_i32(u_input.a, -22907i), -1i, u_input.a << (~145913u % 32u), -16763i), !all(vec4<bool>(true, any(vec2<bool>(true, true)), select(false, false, false), false)));
    global0 = _wgslsmith_add_vec4_i32(func_3(_wgslsmith_div_vec4_u32(~vec4<u32>(0u, 1u, 4294967295u, 0u), max(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(57717u, 0u, 2940u, 4294967295u))), Struct_2(-884f, Struct_1(i32(-1i) * -4219i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1406f, -1369f, true)) * _wgslsmith_f_op_f32(1000f - -1113f)))), select(min(~(-vec4<i32>(2135i, -1i, u_input.a, global0.x)), select(vec4<i32>(72910i, u_input.a, 0i, -1i), -vec4<i32>(27669i, 14175i, global0.x, 3282i), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)))), vec4<i32>(_wgslsmith_mod_i32(i32(-1i) * -45613i, 2543i), 1i, 0i, 10181i), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), 21418i >= u_input.a), all(vec2<bool>(true, true)))));
    global0 = select(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(global0.zz, global0.zw << (vec2<u32>(47894u, 1710u) % vec2<u32>(32u))), global0.x), i32(-1i) * -2147483647i, ~(-2147483647i), _wgslsmith_div_i32(301i, global0.x)), ~select(reverseBits(vec4<i32>(global0.x, u_input.a, 1i, -2147483647i)), vec4<i32>(-41330i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global0.x, -2147483647i, 1i), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)), ~u_input.a, u_input.a), !any(vec2<bool>(true, true))), vec4<bool>(!select(true, all(vec2<bool>(false, true)), true), max(42361u, abs(4294967295u)) > min(63496u, _wgslsmith_dot_vec4_u32(vec4<u32>(22216u, 1u, 4294967295u, 10933u), vec4<u32>(0u, 0u, 0u, 1u))), false, !all(vec3<bool>(false, false, true))));
    global0 = vec4<i32>(57052i, ~35147i, ~_wgslsmith_clamp_i32(-2147483647i, 2147483647i, -u_input.a) & u_input.a, -17432i);
    global0 = _wgslsmith_clamp_vec4_i32(abs(_wgslsmith_add_vec4_i32(abs(vec4<i32>(1i, 0i, 10782i, u_input.a)) >> (~vec4<u32>(8559u, 0u, 1u, 4323u) % vec4<u32>(32u)), vec4<i32>(global0.x ^ -13552i, ~u_input.a, ~u_input.a, -18938i))), ~firstTrailingBit(~vec4<i32>(global0.x, -2147483647i, -16047i, u_input.a)), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.a, u_input.a, global0.x, -12407i), -vec4<i32>(global0.x, u_input.a, u_input.a, 11608i)) & _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, global0.x, 66017i, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, global0.x, u_input.a, global0.x), vec4<i32>(0i, u_input.a, u_input.a, 1i))), func_3(vec4<u32>(1u, 1u, 1u, 1u), Struct_2(-1849f, Struct_1(2147483647i), _wgslsmith_f_op_f32(select(992f, 1394f, false))))));
    let var_0 = true;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec2<i32>(-_wgslsmith_div_i32(1i, u_input.a), -u_input.a)));
}

