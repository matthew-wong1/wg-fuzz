struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(41425u, i32(-2147483648), 51621u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_1 {
    let var_0 = 28695u;
    return Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(abs(15331u), ~0u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(55539u, u_input.b.x), var_0, ~u_input.b.x), _wgslsmith_add_u32(0u, global0.a) ^ 1u), _wgslsmith_sub_vec4_u32(min(reverseBits(vec4<u32>(4294967295u, u_input.b.x, 0u, 2986u)), vec4<u32>(79245u, 4294967295u, 21339u, 81099u)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b.x, 0u, 85582u) & vec4<u32>(global0.c, global0.a, 0u, 1u), countOneBits(vec4<u32>(global0.a, var_0, 50016u, 4294967295u))))), global0.b, _wgslsmith_sub_u32(~0u, var_0));
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~(~(~11579u)), arg_0.b, u_input.b.x);
    var var_1 = max(u_input.b, ~select(_wgslsmith_mod_vec3_u32(~u_input.b, u_input.b), u_input.b, vec3<bool>(true, true, true)));
    global0 = Struct_1(u_input.b.x, -firstLeadingBit(u_input.a), min(var_0.c, abs(abs(var_1.x))));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global0 = Struct_1(func_3(Struct_1(_wgslsmith_sub_u32(arg_0.c ^ 17099u, ~arg_0.a), arg_0.b, arg_1.c ^ ~15812u)).c, -25957i, arg_0.a);
    global0 = Struct_1(~(arg_1.c & _wgslsmith_mult_u32(abs(4294967295u), arg_1.a)), global0.b, ~1u);
    let var_0 = arg_1;
    global0 = Struct_1(min(firstLeadingBit(~23851u), _wgslsmith_mult_u32(arg_1.c << (select(u_input.b.x, 1u, false) % 32u), 86109u)), _wgslsmith_div_i32(1i, abs(var_0.b)), ~var_0.c);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-134f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1288f, 114f, false)))), _wgslsmith_f_op_f32(trunc(1f)))));
    return Struct_1(_wgslsmith_dot_vec3_u32(~u_input.b, abs(u_input.b)) >> (_wgslsmith_mod_u32(arg_1.c, 1u) % 32u), _wgslsmith_dot_vec3_i32(firstTrailingBit(~vec3<i32>(arg_2, 0i, var_0.b) | vec3<i32>(-37735i, var_0.b, -2333i)), -(abs(vec3<i32>(arg_1.b, 0i, var_0.b)) & firstTrailingBit(vec3<i32>(global0.b, u_input.a, arg_1.b)))), var_0.a);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_4(Struct_1(firstTrailingBit(~arg_2.c) >> (~_wgslsmith_mult_u32(1u, arg_2.c) % 32u), -2147483647i, ~_wgslsmith_mod_u32(1u, 25368u | global0.c)), func_3(func_2()), ~2147483647i << (~_wgslsmith_mod_u32(arg_2.a, u_input.b.x) % 32u));
    let var_1 = !(-func_3(arg_2).b < func_3(var_0).b);
    let var_2 = arg_2;
    var var_3 = arg_2.a << (_wgslsmith_mod_u32(_wgslsmith_add_u32(30903u, 1u), ~var_2.c) % 32u);
    let var_4 = select(select(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(var_0.b, -1i, -34229i)), vec3<i32>(-1i) * -vec3<i32>(2147483647i, var_0.b, var_0.b), select(vec3<i32>(-2147483647i, -5594i, u_input.a), abs(vec3<i32>(-26203i, 2147483647i, -47017i)), any(vec4<bool>(false, true, false, var_1)))), -vec3<i32>(0i, 35539i, -1i) & -(vec3<i32>(arg_1, 13345i, u_input.a) | vec3<i32>(arg_1, 2147483647i, arg_1)), var_1), firstLeadingBit(select(-vec3<i32>(arg_1, -1i, arg_1) | vec3<i32>(arg_2.b, 48213i, var_2.b), vec3<i32>(-var_0.b, i32(-1i) * -10012i, arg_2.b), any(select(vec2<bool>(true, true), vec2<bool>(var_1, var_1), vec2<bool>(false, true))))), all(!vec3<bool>(var_1 != true, true, arg_0 != arg_0)));
    return Struct_1(abs(_wgslsmith_div_u32(var_0.a, countOneBits(4294967295u))), (var_2.b << (u_input.b.x % 32u)) & ~(firstTrailingBit(arg_2.b) & _wgslsmith_mod_i32(18072i, arg_1)), 75969u);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = arg_2;
    var var_1 = min(vec4<u32>(~abs(~arg_0), arg_1.c & _wgslsmith_mod_u32(u_input.b.x | 4294967295u, 1u), ~global0.a, func_3(Struct_1(global0.c, 1i, arg_2.a ^ arg_1.c)).a), firstTrailingBit(vec4<u32>(5820u, func_2().c, 1u, firstTrailingBit(1u))) & (_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(u_input.b.x, arg_0, arg_2.a, 56995u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, arg_1.a, 66569u), vec4<u32>(global0.c, 0u, 0u, 46338u))) >> (~vec4<u32>(1u, var_0.a, 74113u, u_input.b.x) % vec4<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1039f + _wgslsmith_f_op_f32(select(-1269f, 1585f, true)))), _wgslsmith_f_op_f32(f32(-1f) * -444f)));
    var_1 = countOneBits(_wgslsmith_mult_vec4_u32(max(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.x, 13155u, 20653u, arg_2.c), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.a, 1u, 1u, var_1.x), vec4<u32>(var_1.x, arg_1.a, arg_1.c, 22045u)), countOneBits(vec4<u32>(1u, arg_1.c, 28312u, 1807u))), _wgslsmith_sub_vec4_u32(select(vec4<u32>(var_1.x, 11156u, var_1.x, 39059u), vec4<u32>(var_0.c, 4294967295u, global0.a, 97530u), vec4<bool>(true, true, true, true)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, global0.a, var_0.a), vec4<u32>(arg_2.c, u_input.b.x, 7477u, 0u)))), ~vec4<u32>(42397u, 4294967295u, u_input.b.x, 4294967295u) << (min(~vec4<u32>(arg_0, 4294967295u, var_0.c, arg_1.c), firstTrailingBit(vec4<u32>(arg_1.c, arg_0, 1u, arg_0))) % vec4<u32>(32u))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1059f), 731f)), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1198f * 1875f)))), 457f));
    return ~(~(func_4(arg_2, Struct_1(arg_1.a, var_0.b, var_0.a), ~(-1i)).a << (u_input.b.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(select(21350u, _wgslsmith_div_u32(~(~global0.a), func_5(reverseBits(global0.a), func_1(191f, -2147483647i, Struct_1(10046u, global0.b, global0.c)), func_4(Struct_1(global0.c, global0.b, u_input.b.x), Struct_1(u_input.b.x, u_input.a, 169u), -56204i))), true), 1u);
    let var_1 = ~abs(abs(max(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 0u, 15980u, global0.c), vec4<u32>(global0.a, 78863u, u_input.b.x, global0.a)), firstLeadingBit(vec4<u32>(global0.a, 38059u, 0u, global0.c)))));
    global0 = func_4(Struct_1(global0.c, 1i, u_input.b.x), Struct_1(var_1.x, -_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(-9624i, -2147483647i)), min(vec2<i32>(global0.b, global0.b), vec2<i32>(-2147483647i, -1i))), u_input.b.x), _wgslsmith_sub_i32(u_input.a, -2147483647i));
    let var_2 = _wgslsmith_dot_vec2_u32(abs(_wgslsmith_add_vec2_u32(~var_1.xy, vec2<u32>(_wgslsmith_add_u32(u_input.b.x, 12895u), 20329u >> (var_1.x % 32u)))), vec2<u32>(~_wgslsmith_mod_u32(var_1.x, u_input.b.x), _wgslsmith_add_u32(_wgslsmith_div_u32(1u, u_input.b.x), ~u_input.b.x)) >> (vec2<u32>(_wgslsmith_mod_u32(57578u, func_2().a), ~func_4(Struct_1(global0.a, global0.b, global0.c), Struct_1(0u, global0.b, global0.a), -14425i).a) % vec2<u32>(32u)));
    let var_3 = -16979i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_1.x >> ((u_input.b.x | 1u) % 32u), var_1.x, global0.c, ~(~u_input.b.x)), select(vec4<i32>(firstLeadingBit(global0.b), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b, var_3, -16431i), vec3<i32>(1i, 0i, 31209i)), _wgslsmith_sub_i32(0i, 2147483647i), u_input.a) | vec4<i32>(func_4(Struct_1(var_2, global0.b, u_input.b.x), Struct_1(0u, var_3, 22036u), global0.b).b, -2147483647i, -68897i, 2147483647i), abs(~(vec4<i32>(u_input.a, global0.b, -43945i, -14796i) | vec4<i32>(-8852i, global0.b, global0.b, -16090i))), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), any(vec2<bool>(true, false)))), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-5389i, 1i), vec2<i32>(-1i, global0.b)), -vec2<i32>(u_input.a, global0.b)), abs(vec2<i32>(var_3, -1i) | vec2<i32>(0i, 76243i))), vec2<i32>(global0.b, ~u_input.a)));
}

