struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>) -> vec4<f32> {
    var var_0 = Struct_4(vec4<bool>(true, all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)))), false, any(vec2<bool>(true, true))), Struct_3(firstLeadingBit(~_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, 4294967295u, 46124u))), true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1923f - arg_0.x), arg_0.x))), Struct_1(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.yzy - vec3<f32>(780f, 2053f, -1210f))) - _wgslsmith_f_op_vec3_f32(-arg_0.wyw))));
    var var_1 = firstLeadingBit(-_wgslsmith_mod_i32(abs(u_input.b), _wgslsmith_mult_i32(-11209i, 1i)));
    global0 = _wgslsmith_mult_u32(abs(31741u), 18672u);
    global0 = 35963u;
    var var_2 = Struct_2(Struct_1(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.b.x, var_0.b.c, var_0.c.b.x)))));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-166f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(520f * 2685f))))), 499f, 310f);
}

fn func_2() -> vec4<f32> {
    global0 = 4294967295u;
    var var_0 = 1f;
    var var_1 = Struct_4(!vec4<bool>(select(false, false, false) | true, true, true, 224f < _wgslsmith_f_op_f32(step(246f, -501f))), Struct_3(firstTrailingBit(vec3<u32>(~64576u, max(u_input.a.x, 1u), _wgslsmith_clamp_u32(48487u, 82775u, 4294967295u))), 1u <= u_input.a.x, -272f), Struct_1(all(vec2<bool>(false, true)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(978f, 778f, 1195f)))))));
    let var_2 = vec4<u32>(~19560u, 1u, u_input.a.x, var_1.b.a.x);
    global0 = 1u;
    return _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-420f, var_1.c.b.x, 305f, -912f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-261f, 1290f, -1466f, var_1.b.c) + vec4<f32>(var_1.c.b.x, 492f, 591f, -2153f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.c, -691f, var_1.c.b.x, -609f) - vec4<f32>(var_1.c.b.x, var_1.b.c, -282f, var_1.b.c)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-885f, var_1.b.c, -632f, 563f) - vec4<f32>(var_1.b.c, 208f, -635f, var_1.c.b.x)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-458f, 421f, 118f, var_1.c.b.x), vec4<f32>(var_1.b.c, var_1.b.c, var_1.b.c, var_1.c.b.x))))))));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_3(vec3<u32>(u_input.a.x, ~abs(34954u), ~u_input.a.x), true, arg_2.x);
    let var_1 = all(vec4<bool>(!(!arg_1), select(true, !(var_0.b && arg_1), false), false, true));
    var var_2 = vec4<u32>(~(~_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(var_0.a.x, var_0.a.x))) & 36909u, ~20126u, ~select(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.x, u_input.a.x, u_input.a.x, var_0.a.x), select(vec4<u32>(39187u, u_input.a.x, 43250u, 10210u), vec4<u32>(48111u, 36901u, 1u, 1u), false)), ~u_input.a.x, all(select(vec4<bool>(var_1, var_0.b, true, arg_1), vec4<bool>(var_0.b, true, var_1, arg_1), vec4<bool>(arg_1, true, true, false)))), u_input.a.x);
    var var_3 = select(!vec4<bool>(true, _wgslsmith_f_op_f32(trunc(arg_0)) < -305f, arg_1 || !var_0.b, true), vec4<bool>(all(select(select(vec3<bool>(var_1, false, true), vec3<bool>(var_0.b, true, true), vec3<bool>(true, true, arg_1)), select(vec3<bool>(var_1, var_0.b, true), vec3<bool>(arg_1, true, arg_1), vec3<bool>(var_1, false, var_1)), var_2.x == var_0.a.x)), select(!(!arg_1), false, true), var_1, (_wgslsmith_clamp_i32(-54318i, u_input.b, u_input.b) >= -12558i) & true), any(!(!vec4<bool>(var_1, var_1, arg_1, var_0.b))) | var_1);
    var_2 = firstLeadingBit(max(vec4<u32>(countOneBits(~0u), _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(var_2.x, var_2.x, var_2.x)), ~_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), ~(~26332u)), ~(~vec4<u32>(1u, var_0.a.x, 1u, 1u) | _wgslsmith_sub_vec4_u32(vec4<u32>(14321u, 27580u, var_0.a.x, 1u), vec4<u32>(11892u, var_2.x, var_0.a.x, 0u)))));
    return Struct_1(!(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -681f), _wgslsmith_f_op_f32(-var_0.c)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-693f + 159f) + -1031f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 717f))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2) -> bool {
    let var_0 = Struct_2(func_4(_wgslsmith_f_op_f32(max(arg_1.a.b.x, _wgslsmith_f_op_f32(step(-1100f, _wgslsmith_f_op_f32(-arg_1.a.b.x))))), !arg_1.a.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.b.x, 1613f, arg_1.a.b.x, arg_1.a.b.x)) - vec4<f32>(-420f, -624f, 1496f, 442f)) * _wgslsmith_f_op_vec4_f32(func_2()))));
    let var_1 = 1i & ~_wgslsmith_dot_vec3_i32(vec3<i32>(select(arg_0.x, 0i, var_0.a.a), -1i, ~(-1i)), vec3<i32>(_wgslsmith_mod_i32(arg_0.x, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, 1i, arg_0.x, 62979i), vec4<i32>(u_input.b, arg_0.x, arg_0.x, arg_0.x)), 1i));
    var var_2 = ~select(_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 58234u, u_input.a.x), vec4<u32>(24900u, u_input.a.x, u_input.a.x, 2709u))), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u) % vec4<u32>(32u)), vec4<u32>(4294967295u, 16362u, u_input.a.x, 65384u)), vec4<bool>(var_0.a.a, true, !var_0.a.a, true)) << (~(~(~vec4<u32>(448u, u_input.a.x, u_input.a.x, 1u))) % vec4<u32>(32u));
    var_2 = _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(~u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a.zx, ~vec2<u32>(u_input.a.x, u_input.a.x)), var_2.x, ~1u)), ~(abs(select(vec4<u32>(var_2.x, 4294967295u, var_2.x, u_input.a.x), vec4<u32>(var_2.x, 27473u, var_2.x, u_input.a.x), false)) & (select(vec4<u32>(72269u, var_2.x, 4294967295u, var_2.x), vec4<u32>(0u, 31292u, var_2.x, var_2.x), arg_1.a.a) | vec4<u32>(1u, 5915u, 1149u, 0u))));
    global0 = u_input.a.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = countOneBits(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a, countOneBits(u_input.a)), ~vec3<u32>(1u, u_input.a.x, 39232u) ^ abs(u_input.a)));
    let var_0 = Struct_3(select(_wgslsmith_add_vec3_u32(vec3<u32>(~71546u, 1u, u_input.a.x), ~u_input.a), _wgslsmith_mod_vec3_u32(select(u_input.a, select(u_input.a, vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<bool>(false, true, false)), any(vec2<bool>(false, false))), vec3<u32>(~u_input.a.x, u_input.a.x, ~u_input.a.x)), select(vec3<bool>(true, func_1(vec3<i32>(u_input.b, u_input.b, u_input.b), Struct_2(Struct_1(true, vec3<f32>(1004f, 699f, -303f)))), true), vec3<bool>(false, true, true), _wgslsmith_f_op_f32(step(-1490f, -395f)) > 1653f)), 21605u < u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -377f, 1064f, -3002f)))).x) * _wgslsmith_f_op_f32(-1f)));
    global0 = 4294967295u;
    var var_1 = Struct_4(vec4<bool>(all(!select(vec4<bool>(false, var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, var_0.b, var_0.b, false), vec4<bool>(var_0.b, var_0.b, false, var_0.b))), var_0.b, ~(~29444u) > u_input.a.x, (var_0.a.x | ~0u) != var_0.a.x), var_0, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) * _wgslsmith_f_op_f32(select(107f, -1000f, func_1(vec3<i32>(u_input.b, 13527i, 0i), Struct_2(Struct_1(var_0.b, vec3<f32>(var_0.c, var_0.c, var_0.c))))))), true, vec4<f32>(_wgslsmith_f_op_f32(step(1717f, -1654f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) + var_0.c), _wgslsmith_div_f32(540f, -1310f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c + 1481f)))));
    var var_2 = -vec2<i32>(_wgslsmith_add_i32(~u_input.b, abs(u_input.b)), _wgslsmith_mod_i32(u_input.b ^ u_input.b, u_input.b)) & (reverseBits(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, u_input.b) << (u_input.a.yy % vec2<u32>(32u)), vec2<i32>(u_input.b, 1i))) & _wgslsmith_add_vec2_i32(vec2<i32>(reverseBits(-20547i), u_input.b), vec2<i32>(u_input.b, 21380i)));
    var_1 = Struct_4(select(var_1.a, var_1.a, !var_1.a), var_0, func_4(-111f, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_1.b.a.x), u_input.a.yy << (vec2<u32>(var_0.a.x, var_1.b.a.x) % vec2<u32>(32u))) < 7691u, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(901f, var_1.c.b.x, 842f, -1572f), vec4<f32>(402f, 1108f, var_0.c, var_0.c))) + _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_0.c, 826f, var_1.c.b.x, -741f))))))));
    var var_3 = Struct_2(var_1.c);
    var var_4 = vec4<bool>(all(vec4<bool>(var_0.b, !var_1.c.a, var_3.a.a, false)), any(var_1.a.xw), true, var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a.x >> (u_input.a.x % 32u), -(vec4<i32>(var_2.x | u_input.b, -u_input.b, -var_2.x, firstLeadingBit(2257i)) & max(select(vec4<i32>(u_input.b, var_2.x, var_2.x, var_2.x), vec4<i32>(var_2.x, var_2.x, 45385i, -1i), false), vec4<i32>(-2147483647i, -41757i, u_input.b, 0i) & vec4<i32>(-5195i, var_2.x, var_2.x, var_2.x))), 7889u);
}

