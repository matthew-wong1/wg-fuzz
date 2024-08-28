struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: vec2<i32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_1(-248f, vec4<u32>(1u, 7530u, 38674u, 82624u))), Struct_3(Struct_1(591f, vec4<u32>(136590u, 84280u, 0u, 12675u))), Struct_3(Struct_1(524f, vec4<u32>(4294967295u, 14083u, 0u, 0u))), Struct_3(Struct_1(803f, vec4<u32>(31485u, 65608u, 0u, 1u))), Struct_3(Struct_1(408f, vec4<u32>(4294967295u, 1u, 12647u, 1u))), Struct_3(Struct_1(-1392f, vec4<u32>(991u, 1u, 21026u, 1u))), Struct_3(Struct_1(-839f, vec4<u32>(0u, 0u, 104192u, 41714u))), Struct_3(Struct_1(1464f, vec4<u32>(1u, 38024u, 34126u, 1u))));

var<private> global1: vec3<u32> = vec3<u32>(1u, 0u, 0u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: f32, arg_3: u32) -> u32 {
    global0 = array<Struct_3, 8>();
    var var_0 = Struct_1(arg_2, vec4<u32>(~arg_1.a.x, min(arg_3, 0u | arg_1.a.x), 69116u, 71966u));
    let var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a)), vec2<f32>(_wgslsmith_f_op_f32(arg_2 + arg_2), _wgslsmith_div_f32(var_0.a, var_0.a)), false))))));
    var var_2 = select(vec3<bool>(true, any(vec3<bool>(any(vec4<bool>(false, false, true, false)), all(vec3<bool>(true, true, false)), true)), select(true, true, true) != all(vec2<bool>(true, false))), !vec3<bool>(true, ~arg_1.a.x == _wgslsmith_div_u32(1u, 4294967295u), all(vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true)), true));
    global1 = arg_1.a;
    return 1u;
}

fn func_4(arg_0: i32, arg_1: u32) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(global1.x | ~1u, 8u)];
    let var_1 = !vec3<bool>(false, true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true)))));
    return _wgslsmith_mod_u32(_wgslsmith_sub_u32(0u, _wgslsmith_clamp_u32(~_wgslsmith_div_u32(arg_1, arg_1), arg_1, ~global1.x | ~40394u)), ~global1.x);
}

fn func_2() -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(49077u, select(global1.x | 0u, abs(u_input.a), true), global1.x), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 30548u, 29940u, u_input.a), vec4<u32>(1u, global1.x, global1.x, 20772u)) ^ 1u, 4205u, u_input.a)), ~(~(~(vec3<u32>(19647u, 58752u, 0u) | vec3<u32>(57550u, global1.x, 72807u))))), 8u)];
    let var_1 = global0[_wgslsmith_index_u32(func_4(~(-(0i | u_input.c) << (~(global1.x >> (91262u % 32u)) % 32u)), global1.x ^ func_3(vec3<i32>(-1646i, -u_input.b, -1i), Struct_2(vec3<u32>(41604u, 1u, u_input.a)), var_0.a.a, ~var_0.a.b.x << (18865u % 32u))), 8u)];
    global0 = array<Struct_3, 8>();
    let var_2 = var_0.a.b;
    let var_3 = Struct_4(Struct_3(Struct_1(var_0.a.a, ~(~vec4<u32>(var_2.x, global1.x, 34167u, var_0.a.b.x)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2053f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1910f))))), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, u_input.c, u_input.c, 2147483647i)), vec4<i32>(-18178i, u_input.d.x, u_input.b, u_input.c) >> (vec4<u32>(9937u, 1u, 0u, var_0.a.b.x) % vec4<u32>(32u))), 0i), _wgslsmith_sub_i32(abs(-u_input.b), -(u_input.b << (1u % 32u)))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1f, var_1.a.a, _wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_f32(-var_0.a.a))))));
    return _wgslsmith_f_op_f32(f32(-1f) * -577f);
}

fn func_5(arg_0: vec4<f32>) -> Struct_4 {
    global1 = ~_wgslsmith_sub_vec3_u32(select(firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(29304u, 85168u, 80166u), vec3<u32>(42216u, global1.x, 21695u))), ~abs(vec3<u32>(global1.x, global1.x, global1.x)), false), vec3<u32>(74378u, global1.x, 6912u));
    var var_0 = reverseBits((-u_input.b << (~_wgslsmith_add_u32(32699u, global1.x) % 32u)) | _wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, u_input.b) & 81096i, min(-2147483647i << (global1.x % 32u), 40475i >> (0u % 32u))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(-419f - _wgslsmith_f_op_f32(416f - arg_0.x)))));
    var var_2 = global1.x;
    let var_3 = arg_0.x;
    return Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, 4294967295u, global1.x, u_input.a) << (vec4<u32>(global1.x, 0u, global1.x, 25429u) % vec4<u32>(32u))), ~vec4<u32>(u_input.a, 4294967295u, global1.x, 0u) & _wgslsmith_add_vec4_u32(vec4<u32>(1u, 35843u, u_input.a, u_input.a), vec4<u32>(global1.x, global1.x, 23686u, 1u))), _wgslsmith_mult_vec4_u32(~vec4<u32>(global1.x, 1291u, global1.x, 92582u), select(vec4<u32>(u_input.a, 47851u, 1u, u_input.a), vec4<u32>(u_input.a, 28270u, 0u, u_input.a), true) << (~vec4<u32>(60891u, global1.x, global1.x, global1.x) % vec4<u32>(32u)))), 8u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.zx + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -1436f))) * arg_0.wx)), select(max(u_input.d.xx, -u_input.d.yy), firstTrailingBit(_wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(u_input.d.x, -1i)), reverseBits(vec2<i32>(-6330i, -16985i)))), true), !any(select(vec4<bool>(false, false, true, false), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false)), false)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - var_3) * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(round(var_3)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x * var_3), _wgslsmith_f_op_f32(-arg_0.x))))));
}

fn func_6(arg_0: Struct_4, arg_1: f32, arg_2: u32) -> Struct_4 {
    global0 = array<Struct_3, 8>();
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(arg_0.a.a.a)), arg_1, arg_0.d)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.e.x))))), arg_0.a.a.b));
    let var_1 = arg_0.e.zyy;
    var var_2 = any(!vec4<bool>(arg_0.d, func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -919f, 1443f, arg_1) + vec4<f32>(arg_1, arg_1, 488f, -1000f))).d, false, true));
    var var_3 = vec4<i32>(u_input.c, 0i, u_input.b, 25524i);
    return arg_0;
}

fn func_7(arg_0: Struct_4) -> Struct_5 {
    global0 = array<Struct_3, 8>();
    var var_0 = Struct_5(func_6(arg_0, _wgslsmith_f_op_f32(func_2()), global1.x).a, vec4<i32>((-1i >> (global1.x % 32u)) >> (4294967295u % 32u), abs(-1i), u_input.b, _wgslsmith_mult_i32(arg_0.c.x, firstLeadingBit(_wgslsmith_clamp_i32(47073i, 0i, 0i)))), ~max(firstLeadingBit(~arg_0.a.a.b.x), _wgslsmith_add_u32(global1.x, ~arg_0.a.a.b.x)));
    var var_1 = select(_wgslsmith_sub_vec2_i32(-vec2<i32>(_wgslsmith_sub_i32(var_0.b.x, arg_0.c.x), firstLeadingBit(u_input.c)), -func_5(_wgslsmith_f_op_vec4_f32(-arg_0.e)).c), func_5(arg_0.e).c, vec2<bool>(!all(!vec2<bool>(false, arg_0.d)), true));
    return Struct_5(Struct_3(func_6(Struct_4(Struct_3(Struct_1(var_0.a.a.a, vec4<u32>(global1.x, 57522u, u_input.a, 1u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1413f)), arg_0.c, true, vec4<f32>(var_0.a.a.a, arg_0.a.a.a, arg_0.e.x, -1000f)), _wgslsmith_f_op_f32(-var_0.a.a.a), select(func_3(vec3<i32>(var_1.x, 20590i, 23151i), Struct_2(arg_0.a.a.b.zwy), -352f, var_0.a.a.b.x), 0u, all(vec4<bool>(false, arg_0.d, arg_0.d, false)))).a.a), vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, ~var_0.b.x | max(u_input.d.x, arg_0.c.x), -firstLeadingBit(-2147483647i)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(var_1.x, 2147483647i, arg_0.c.x, -50577i)), _wgslsmith_add_vec4_i32(var_0.b, var_0.b)), var_0.b), ~var_1.x | var_1.x, _wgslsmith_add_i32(~(-arg_0.c.x), arg_0.c.x)), ~(~52815u));
}

fn func_1() -> vec4<f32> {
    var var_0 = func_7(func_6(func_5(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(ceil(-230f)), _wgslsmith_f_op_f32(max(-492f, 1531f)), _wgslsmith_f_op_f32(-597f + -2235f))), -118f, ~82978u));
    let var_1 = vec2<f32>(var_0.a.a.a, 2243f);
    global1 = ~func_7(Struct_4(func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(252f, var_1.x, var_1.x, var_1.x))).a, vec2<f32>(_wgslsmith_f_op_f32(min(378f, -706f)), _wgslsmith_f_op_f32(-var_0.a.a.a)), max(min(vec2<i32>(u_input.d.x, var_0.b.x), vec2<i32>(11428i, -2147483647i)), vec2<i32>(u_input.b, u_input.d.x)), true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(592f, var_1.x, -1319f, var_0.a.a.a)) + _wgslsmith_div_vec4_f32(vec4<f32>(277f, -266f, var_1.x, 1000f), vec4<f32>(var_0.a.a.a, var_0.a.a.a, var_1.x, -580f))))).a.a.b.ywy;
    let var_2 = 140f;
    let var_3 = Struct_5(var_0.a, vec4<i32>(u_input.b, 19825i, _wgslsmith_mod_i32(func_7(Struct_4(global0[_wgslsmith_index_u32(12091u, 8u)], var_1, vec2<i32>(-2347i, var_0.b.x), true, vec4<f32>(-3217f, -938f, var_1.x, 515f))).b.x | -var_0.b.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 72698i, 0i), firstLeadingBit(vec3<i32>(15071i, 25899i, -1i)))), 0i), ~(~var_0.a.a.b.x));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1877f), 1434f, -1366f, _wgslsmith_div_f32(-1534f, 1124f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(116f * 220f), -1000f, _wgslsmith_f_op_f32(-507f * -910f), _wgslsmith_f_op_f32(func_2()))))));
    let var_1 = vec4<u32>(_wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(global1.zz, vec2<u32>(3262u, 55071u)), u_input.a), _wgslsmith_add_u32(~(func_4(44256i, global1.x) << (abs(0u) % 32u)), u_input.a), ~max(30713u, _wgslsmith_add_u32(10528u, u_input.a)) ^ reverseBits(~_wgslsmith_div_u32(1u, 46477u)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-515f - var_0.x)) * func_7(Struct_4(Struct_3(Struct_1(var_0.x, var_1)), vec2<f32>(var_0.x, 174f), u_input.d.yy, false, vec4<f32>(var_0.x, var_0.x, -136f, var_0.x))).a.a.a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) * _wgslsmith_f_op_f32(var_0.x * 293f)))));
}

