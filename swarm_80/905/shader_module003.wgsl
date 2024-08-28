struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(true, true, false, false, false, false, true, true, true, false, true, true, false, true, true, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec3<u32>) -> bool {
    let var_0 = Struct_1(!global0[_wgslsmith_index_u32(arg_2.x, 16u)], ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_2.x, _wgslsmith_mult_u32(0u, 34711u), ~arg_1.c), firstLeadingBit(arg_2)));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -482f))), -1287f, -239f, 182f);
    let var_2 = var_1.x;
    let var_3 = select(vec2<u32>(arg_1.c & _wgslsmith_mult_u32(~0u, ~var_0.b.x), var_0.b.x | (firstTrailingBit(arg_2.x) << ((arg_1.c ^ arg_1.c) % 32u))), ~var_0.b.zy, true);
    let var_4 = Struct_5(vec4<u32>(98782u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_0.b.yy, var_0.b.zy), vec2<u32>(var_3.x, arg_2.x)), 0u), 0u, 0u), ~select(1i ^ reverseBits(u_input.a), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 2147483647i, 52382i, -10119i), vec4<i32>(arg_0, -7164i, -19859i, -20278i))), var_0.a));
    return global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_2.x, 1u, _wgslsmith_add_u32(1u, 0u), ~22169u), vec4<u32>(77013u, arg_1.c, 72892u, 4294967295u) & ~vec4<u32>(37649u, 81926u, 25817u, arg_1.c))), 16u)];
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<bool>) -> vec4<i32> {
    let var_0 = -1870f;
    let var_1 = Struct_5(vec4<u32>(~arg_0.x, arg_0.x, 1u, _wgslsmith_div_u32(_wgslsmith_mult_u32(60414u, abs(23606u)), 0u >> (~arg_0.x % 32u))), 0i);
    let var_2 = select(vec4<bool>(arg_1.x, false, global0[_wgslsmith_index_u32(~(~arg_0.x), 16u)], arg_1.x), arg_1, !arg_1);
    let var_3 = Struct_1(!func_3(-1i, Struct_3(arg_1.x & arg_1.x, all(var_2.xxy), _wgslsmith_div_u32(1u, 17450u)), arg_0.wxy), ~abs(abs(countOneBits(vec3<u32>(7618u, 4294967295u, 15191u)))));
    let var_4 = ~(~(48844u ^ _wgslsmith_sub_u32(~arg_0.x, 1u)));
    return vec4<i32>(1i, 1i, firstTrailingBit(~(u_input.a << (firstTrailingBit(54123u) % 32u))), u_input.a);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: vec2<bool>, arg_3: vec4<bool>) -> Struct_3 {
    return Struct_3(any(vec3<bool>(true, true, true)), all(vec2<bool>(arg_2.x || true, arg_3.x)), abs(arg_1.c.c >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 73872u, arg_1.c.c), vec3<u32>(4294967295u, arg_1.c.c, 0u)) % 32u)));
}

fn func_1() -> Struct_1 {
    var var_0 = ~abs(~(vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(u_input.a, 1i)));
    var_0 = _wgslsmith_sub_vec2_i32(-(~_wgslsmith_clamp_vec2_i32(select(vec2<i32>(var_0.x, u_input.a), vec2<i32>(u_input.a, var_0.x), global0[_wgslsmith_index_u32(87704u, 16u)]), ~vec2<i32>(var_0.x, 2147483647i), -vec2<i32>(var_0.x, 5376i))), -(~(-vec2<i32>(1i, 1i))));
    let var_1 = func_4(_wgslsmith_mod_vec4_i32(~func_2(_wgslsmith_add_vec4_u32(vec4<u32>(60507u, 24131u, 0u, 0u), vec4<u32>(51731u, 32458u, 0u, 4294967295u)), !vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 16u)], false, true)), ~vec4<i32>(u_input.a >> (26285u % 32u), var_0.x ^ -5993i, u_input.a, 0i)), Struct_4(1000f, Struct_1(any(select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 16u)], true, global0[_wgslsmith_index_u32(23055u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(56655u, 16u)], false, global0[_wgslsmith_index_u32(1u, 16u)]), true)), ~vec3<u32>(1u, 1u, 1u)), Struct_3(global0[_wgslsmith_index_u32(~(~4294967295u), 16u)], true, 1u)), vec2<bool>(true, false || all(vec2<bool>(true, true))), vec4<bool>(any(select(vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(0u, 16u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(26046u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], true), false)), all(select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 16u)]), vec2<bool>(global0[_wgslsmith_index_u32(9138u, 16u)], false), true), select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(1u, 16u)], false), true), select(vec2<bool>(global0[_wgslsmith_index_u32(78937u, 16u)], false), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(72098u, 16u)]), vec2<bool>(global0[_wgslsmith_index_u32(35647u, 16u)], true)))), func_3(0i, Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 15757u), 16u)], false, _wgslsmith_mult_u32(1u, 4294967295u)), vec3<u32>(~69162u, ~1u, _wgslsmith_div_u32(0u, 20565u))), global0[_wgslsmith_index_u32(min(countOneBits(57136u), ~4294967295u), 16u)] && true));
    var var_2 = Struct_2(415f, Struct_1(false, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(2686u, 43796u, var_1.c), vec3<u32>(var_1.c, 51004u, 1u)) ^ 88801u, 33521u, _wgslsmith_mult_u32(21285u, 1u))));
    let var_3 = _wgslsmith_clamp_vec3_i32(~_wgslsmith_sub_vec3_i32(reverseBits(vec3<i32>(u_input.a, u_input.a, var_0.x)) << (~vec3<u32>(0u, 2112u, 9817u) % vec3<u32>(32u)), abs(vec3<i32>(-21204i, -2147483647i, u_input.a))), min(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(2147483647i, u_input.a, -14394i)), firstLeadingBit(abs(vec3<i32>(var_0.x, -1i, u_input.a)))), abs(reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(-383i, 20783i, var_0.x), vec3<i32>(-16951i, u_input.a, 9602i))))), select(abs(firstLeadingBit(vec3<i32>(u_input.a, -14350i, u_input.a)) ^ ~vec3<i32>(u_input.a, 0i, u_input.a)), func_2(~vec4<u32>(0u, var_2.b.b.x, var_2.b.b.x, 75706u), vec4<bool>(false, !var_1.a, all(vec2<bool>(true, false)), var_1.b)).yyy, false));
    return var_2.b;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4) -> vec3<bool> {
    global0 = array<bool, 16>();
    var var_0 = vec4<i32>(u_input.a, _wgslsmith_dot_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(5714i, 2147483647i), vec2<i32>(u_input.a, 1i)) << (_wgslsmith_sub_vec2_u32(abs(arg_0.b.b.xz), abs(arg_1.b.b.xy)) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, -1i), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(0i, 23495i))), abs(~vec2<i32>(-2147483647i, -2147483647i)))), u_input.a, abs(-abs(-2147483647i)));
    var var_1 = -((var_0.x >> (4294967295u % 32u)) | ~_wgslsmith_dot_vec3_i32(~vec3<i32>(-6388i, 0i, u_input.a), vec3<i32>(54682i, var_0.x, u_input.a)));
    var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(reverseBits(~u_input.a), (29076i >> (arg_1.b.b.x % 32u)) | func_2(vec4<u32>(11078u, 1920u, 0u, arg_1.b.b.x), vec4<bool>(false, arg_1.c.a, arg_0.b.a, false)).x, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(var_0.yx, vec2<i32>(-1i, u_input.a)), vec2<i32>(-2147483647i, u_input.a)), ~_wgslsmith_add_i32(-2147483647i, u_input.a)), vec4<i32>(var_0.x, var_0.x, _wgslsmith_clamp_i32(var_0.x, u_input.a, u_input.a), var_0.x & -u_input.a), vec4<i32>(countOneBits(var_0.x), -u_input.a << (_wgslsmith_clamp_u32(81777u, 37245u, arg_1.c.c) % 32u), 5643i, ~min(var_0.x, -19611i))), _wgslsmith_mult_vec4_i32(-vec4<i32>(_wgslsmith_div_i32(var_0.x, var_0.x), u_input.a, ~5202i, ~0i), vec4<i32>(~(-2147483647i), func_2(vec4<u32>(0u, arg_0.b.b.x, 0u, 37408u), !vec4<bool>(arg_1.b.a, arg_0.b.a, global0[_wgslsmith_index_u32(11802u, 16u)], false)).x, _wgslsmith_mod_i32(0i, -26066i), 1i)), vec4<i32>(~_wgslsmith_dot_vec3_i32(func_2(vec4<u32>(arg_1.c.c, 21084u, arg_1.b.b.x, arg_0.b.b.x), vec4<bool>(global0[_wgslsmith_index_u32(44779u, 16u)], true, global0[_wgslsmith_index_u32(arg_0.b.b.x, 16u)], arg_1.b.a)).wwy, ~vec3<i32>(u_input.a, 0i, var_0.x)), ~(~(-2147483647i)), u_input.a << (_wgslsmith_sub_u32(~0u, min(arg_0.b.b.x, arg_1.c.c)) % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a, -30516i, 25733i), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, 16640i, -38906i), vec3<i32>(36208i, 34481i, var_0.x))), var_0.wwx)));
    let var_2 = arg_0.b.a;
    return !(!select(select(select(vec3<bool>(arg_1.b.a, var_2, true), vec3<bool>(false, global0[_wgslsmith_index_u32(66126u, 16u)], true), vec3<bool>(var_2, arg_0.b.a, true)), vec3<bool>(var_2, false, arg_1.c.b), vec3<bool>(true, true, arg_0.b.a)), vec3<bool>(true || arg_1.c.a, true, arg_0.b.a), !vec3<bool>(false, true, arg_0.b.a)));
}

fn func_6(arg_0: bool, arg_1: Struct_5, arg_2: f32, arg_3: u32) -> Struct_4 {
    var var_0 = Struct_3(select(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.a.x, arg_3, arg_1.a.x), ~arg_1.a.yxz), 16u)] | arg_0, (firstTrailingBit(70496i) & arg_1.b) <= -24618i, !any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 16u)], arg_0, arg_0)) || ((false && arg_0) && any(vec4<bool>(false, arg_0, true, true)))), !(!(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b, arg_1.b, 24429i), vec3<i32>(arg_1.b, arg_1.b, 2147483647i)) > _wgslsmith_dot_vec3_i32(vec3<i32>(-4016i, u_input.a, 0i), vec3<i32>(arg_1.b, u_input.a, u_input.a)))), max(~firstLeadingBit(70660u), arg_3 << (arg_3 % 32u)));
    let var_1 = Struct_5(arg_1.a, abs(-(~max(arg_1.b, u_input.a))));
    var var_2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1094f, arg_2)), Struct_1(!arg_0 & var_0.b, vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(var_1.a.wz, vec2<u32>(arg_3, 45740u)), vec2<u32>(4294967295u, 0u) & vec2<u32>(arg_1.a.x, 4294967295u)), var_0.c, _wgslsmith_div_u32(var_0.c, 0u) | (arg_1.a.x ^ 51073u))), Struct_3(arg_0, !global0[_wgslsmith_index_u32(arg_1.a.x, 16u)], ~arg_1.a.x));
    let var_3 = arg_1;
    global0 = array<bool, 16>();
    return Struct_4(_wgslsmith_f_op_f32(-var_2.a), func_1(), var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(any(func_5(Struct_2(_wgslsmith_div_f32(-765f, -341f), Struct_1(global0[_wgslsmith_index_u32(0u, 16u)], vec3<u32>(0u, 4794u, 1u))), Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -1409f), func_1(), func_4(vec4<i32>(29025i, -1i, -2147483647i, -2147483647i), Struct_4(-1259f, Struct_1(true, vec3<u32>(0u, 0u, 113482u)), Struct_3(true, false, 7028u)), vec2<bool>(true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(34147u, 16u)]))))), Struct_5(vec4<u32>(1u, 1u, 1u, 1u), 0i >> (func_1().b.x % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2350f), _wgslsmith_f_op_f32(329f + 548f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-810f, -491f) + _wgslsmith_f_op_f32(-124f - 1000f)) + -1540f)), 1u);
    var var_1 = vec2<u32>(~var_0.b.b.x, ~func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.a, 28508i, u_input.a), vec4<i32>(-2147483647i, -1i, 19473i, 2147483647i)), Struct_4(541f, var_0.b, Struct_3(global0[_wgslsmith_index_u32(var_0.c.c, 16u)], true, var_0.b.b.x)), select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.b.b.x, 16u)], global0[_wgslsmith_index_u32(36138u, 16u)]), vec2<bool>(global0[_wgslsmith_index_u32(33543u, 16u)], false), vec2<bool>(true, false)), !vec4<bool>(global0[_wgslsmith_index_u32(var_0.c.c, 16u)], true, false, false)).c ^ var_0.c.c);
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~abs(var_0.b.b), ~(~var_0.b.b)), 16u)];
    var var_3 = var_0.b;
    let var_4 = Struct_2(1024f, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x, _wgslsmith_f_op_f32(trunc(844f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, var_0.a), vec2<f32>(var_4.a, var_0.a)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, -982f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.a, var_0.a)))))));
}

