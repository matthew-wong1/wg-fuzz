struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec4<i32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, vec3<bool>(true, false, false), vec4<i32>(18434i, 3199i, -2762i, -4913i), 1u);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    let var_0 = max(vec4<u32>(1u, 4294967295u << ((~0u >> (min(1u, global0.d) % 32u)) % 32u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(global0.d, ~4294967295u, 1u), 0u), ~abs(reverseBits(6187u))), ~abs(~vec4<u32>(87262u, global0.d, global0.d, 4294967295u)));
    let var_1 = -(-vec3<i32>(u_input.a, -16114i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.a, u_input.a), global0.c.zyx)) >> (var_0.wzz % vec3<u32>(32u)));
    global0 = Struct_1(u_input.a, select(global0.b, select(global0.b, vec3<bool>(global0.b.x, false, all(global0.b.zy)), true), vec3<bool>(global0.b.x, global0.b.x, global0.b.x)), select((vec4<i32>(2162i, global0.c.x, global0.c.x, arg_0.x) >> (reverseBits(vec4<u32>(global0.d, 101472u, global0.d, global0.d)) % vec4<u32>(32u))) >> (~(~var_0) % vec4<u32>(32u)), vec4<i32>(var_1.x & arg_0.x, 39716i, -1i, ~(2147483647i << (global0.d % 32u))), true), ~_wgslsmith_div_u32(firstTrailingBit(global0.d), _wgslsmith_clamp_u32(abs(global0.d), firstTrailingBit(4294967295u), ~4294967295u)));
    var var_2 = Struct_1(var_1.x | u_input.a, global0.b, select(vec4<i32>(~(-1i), abs(global0.a), 0i, arg_0.x), global0.c, true), var_0.x >> (1u % 32u));
    global0 = Struct_1(abs(-var_1.x >> (_wgslsmith_dot_vec2_u32(~var_0.xx, ~vec2<u32>(0u, var_0.x)) % 32u)), !vec3<bool>((1u == var_0.x) && any(vec4<bool>(true, false, false, var_2.b.x)), var_2.b.x, global0.b.x | true), -global0.c, var_0.x >> (61081u % 32u));
    return ~_wgslsmith_clamp_i32(var_2.c.x, -_wgslsmith_dot_vec4_i32(global0.c, _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -43441i, -2147483647i, -29394i), var_2.c)), abs(firstLeadingBit(min(0i, 2147483647i))));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: bool) -> bool {
    var var_0 = Struct_1(1i, select(global0.b, select(!global0.b, select(global0.b, global0.b, arg_2), true), !global0.b), vec4<i32>(1038i, firstTrailingBit(-41871i), 0i, _wgslsmith_mult_i32(-2147483647i, -global0.c.x)), ~(6359u | global0.d));
    var_0 = Struct_1(u_input.a, !vec3<bool>(var_0.b.x & (arg_0 == true), all(select(vec2<bool>(arg_2, global0.b.x), var_0.b.yy, arg_1)), any(vec3<bool>(arg_0, var_0.b.x, false))), ~(~var_0.c), var_0.d);
    var_0 = Struct_1(-1i, var_0.b, max(global0.c, -(~select(vec4<i32>(0i, 2147483647i, 19153i, 0i), vec4<i32>(global0.a, u_input.a, u_input.a, global0.a), true))), max(global0.d << (var_0.d % 32u), 1u));
    let var_1 = Struct_1(func_3(global0.c.zz >> (abs(firstLeadingBit(vec2<u32>(38452u, 1u))) % vec2<u32>(32u))), global0.b, -var_0.c, abs(~abs(max(1u, 0u))));
    var_0 = Struct_1(-var_1.a, select(vec3<bool>(true, false, ~42998u <= _wgslsmith_dot_vec2_u32(vec2<u32>(global0.d, var_1.d), vec2<u32>(global0.d, var_1.d))), vec3<bool>(!global0.b.x & !global0.b.x, false, false || !var_1.b.x), any(!(!vec4<bool>(false, var_1.b.x, false, false)))), var_0.c, _wgslsmith_mod_u32(var_0.d & (_wgslsmith_div_u32(11743u, 36360u) ^ (var_1.d >> (var_1.d % 32u))), 0u));
    return var_0.b.x;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-706f, -251f, 2180f, 1987f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-136f, -1000f, 1000f, 658f))))));
    return vec3<u32>(global0.d, arg_1.d, 74021u);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(~((vec3<u32>(33154u, global0.d, 0u) >> (vec3<u32>(global0.d, 26081u, global0.d) % vec3<u32>(32u))) << (~vec3<u32>(global0.d, 8498u, 73890u) % vec3<u32>(32u))), countOneBits(vec3<u32>(1u, ~13685u, global0.d << (12140u % 32u)))), func_4(vec2<bool>(true, true), Struct_1(-u_input.a >> (_wgslsmith_dot_vec4_u32(vec4<u32>(global0.d, global0.d, 1u, global0.d), vec4<u32>(global0.d, 66546u, global0.d, global0.d)) % 32u), vec3<bool>(func_2(global0.b.x, vec2<bool>(global0.b.x, false), true), false, true), global0.c << (vec4<u32>(3533u, 2959u, 1u, 0u) % vec4<u32>(32u)), _wgslsmith_clamp_u32(115055u << (global0.d % 32u), 58285u, 40774u)), func_3(abs(vec2<i32>(-31783i, 638i) << (vec2<u32>(21411u, global0.d) % vec2<u32>(32u))))));
    var var_1 = 0u;
    let var_2 = _wgslsmith_dot_vec2_u32(~var_0.yz, vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(var_0.x, 58615u), global0.d) >> (abs(global0.d) % 32u), var_0.x));
    let var_3 = Struct_1(global0.a, select(vec3<bool>(any(vec4<bool>(true, true, false, global0.b.x)), true, 0i < (u_input.a & -12440i)), vec3<bool>(all(vec2<bool>(global0.b.x, global0.b.x)), false, any(select(global0.b, global0.b, global0.b))), global0.b.x), global0.c, ~var_0.x);
    var var_4 = var_0;
    return var_3;
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = true;
    var var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(global0.c.yxw, _wgslsmith_div_vec3_i32(vec3<i32>(-46798i, 5448i, _wgslsmith_add_i32(2147483647i, arg_1.x)), _wgslsmith_clamp_vec3_i32(max(global0.c.www, vec3<i32>(9463i, 2147483647i, u_input.a)), global0.c.ywx, arg_2.c.xwz << (vec3<u32>(19023u, global0.d, arg_2.d) % vec3<u32>(32u))))), arg_2.a);
    global0 = arg_0;
    global0 = func_1();
    var_1 = ~(-arg_1);
    return func_1();
}

fn func_6(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = func_5(func_5(Struct_1(global0.a, vec3<bool>(true, arg_1.x <= -440f, arg_3.b.x), vec4<i32>(u_input.a, -arg_0.x, 3580i, arg_3.a), _wgslsmith_sub_u32(arg_2.d, _wgslsmith_mod_u32(0u, 113542u))), ~vec2<i32>(countOneBits(-9381i), -2147483647i), arg_2), -vec2<i32>(_wgslsmith_div_i32(arg_0.x << (arg_2.d % 32u), _wgslsmith_sub_i32(2147483647i, 2268i)), _wgslsmith_mod_i32(abs(57132i), _wgslsmith_mult_i32(2147483647i, 1i))), arg_3);
    global0 = func_1();
    var var_0 = arg_3;
    let var_1 = abs(vec4<u32>(0u, var_0.d, _wgslsmith_mult_u32(arg_3.d, 0u), ~max(36598u, 119777u)));
    let var_2 = ~var_1.yy >> (var_1.ww % vec2<u32>(32u));
    return func_5(arg_2, vec2<i32>(arg_0.x, ~0i), Struct_1(i32(-1i) * -(~(-2147483647i)), vec3<bool>(false, true, all(vec4<bool>(arg_2.b.x, arg_3.b.x, false, global0.b.x))), vec4<i32>(arg_3.c.x, select(arg_3.c.x & arg_3.c.x, arg_0.x, false), global0.c.x, 2147483647i), 25224u));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec2<i32> {
    global0 = func_5(arg_1, vec2<i32>(-16140i, -30559i), func_5(arg_0, -vec2<i32>(39560i, 0i), func_5(func_6(arg_0.c.wz ^ arg_0.c.xy, vec4<f32>(-833f, -144f, -1000f, -603f), Struct_1(2147483647i, vec3<bool>(true, arg_0.b.x, false), arg_0.c, global0.d), Struct_1(2147483647i, global0.b, vec4<i32>(arg_0.a, 14389i, 22072i, arg_0.a), arg_2)), arg_1.c.xw, func_1())));
    global0 = arg_1;
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1498f, 1859f, 106f, -350f), vec4<f32>(-1485f, -2289f, -645f, -643f))) * _wgslsmith_div_vec4_f32(vec4<f32>(772f, 286f, -1000f, 1000f), vec4<f32>(-693f, -566f, -2651f, -1515f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1000f, -1000f, 986f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(966f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(609f, 510f)) + _wgslsmith_f_op_f32(min(-775f, 933f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-352f - -526f))), _wgslsmith_f_op_f32(round(1000f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(586f, 138f, -1635f, 942f) * vec4<f32>(-1773f, -904f, 1787f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(199f, -349f, 270f, 200f))))));
    return arg_0.c.ww;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(global0.c.yw, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(729f, 301f, -483f, -1260f), _wgslsmith_f_op_vec4_f32(vec4<f32>(297f, 437f, 431f, -978f) + vec4<f32>(-493f, 1000f, -271f, 234f)))), func_5(Struct_1(_wgslsmith_div_i32(92127i, -12899i), global0.b, vec4<i32>(-73555i, 1i, u_input.a, u_input.a), _wgslsmith_mod_u32(40915u, global0.d)), select(vec2<i32>(u_input.a, global0.a), vec2<i32>(global0.c.x, u_input.a), global0.b.yx) ^ global0.c.zw, func_1()), Struct_1(u_input.a, vec3<bool>(global0.b.x, true, true), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(global0.c, vec4<i32>(19552i, global0.a, u_input.a, -155i)), global0.c ^ vec4<i32>(u_input.a, 55841i, 41936i, global0.c.x)), ~global0.d)), func_5(func_1(), vec2<i32>(min(_wgslsmith_dot_vec2_i32(global0.c.yw, vec2<i32>(global0.c.x, -25199i)), _wgslsmith_sub_i32(u_input.a, u_input.a)), _wgslsmith_sub_i32(global0.a, u_input.a)), func_6(max(vec2<i32>(global0.a, -27021i), -global0.c.wy), vec4<f32>(_wgslsmith_f_op_f32(868f * 418f), _wgslsmith_f_op_f32(-465f * -295f), _wgslsmith_f_op_f32(-202f * 895f), _wgslsmith_f_op_f32(step(233f, 1865f))), Struct_1(global0.c.x, select(global0.b, vec3<bool>(false, global0.b.x, global0.b.x), global0.b), _wgslsmith_div_vec4_i32(global0.c, global0.c), 4294967295u), Struct_1(max(global0.c.x, 0i), !global0.b, func_6(global0.c.ww, vec4<f32>(-831f, 434f, -816f, -1000f), Struct_1(u_input.a, vec3<bool>(global0.b.x, global0.b.x, false), vec4<i32>(-3075i, global0.c.x, 2147483647i, -41952i), global0.d), Struct_1(-2147483647i, global0.b, global0.c, 0u)).c, _wgslsmith_add_u32(global0.d, 1u)))), max(1u, ~firstLeadingBit(func_4(vec2<bool>(false, global0.b.x), Struct_1(global0.c.x, vec3<bool>(true, global0.b.x, global0.b.x), vec4<i32>(global0.c.x, -10257i, u_input.a, u_input.a), 52918u), 0i).x)));
    let var_1 = -vec3<i32>(u_input.a, global0.c.x, ~var_0.x);
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(570f - -874f) + -1754f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1218f * -370f) * _wgslsmith_f_op_f32(select(-212f, 164f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(379f, -653f, global0.b.x))))) + _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(128f)), -115f)))), -384f);
    global0 = func_5(Struct_1(-(~_wgslsmith_mult_i32(1i, 1i)), vec3<bool>(select(false, false, true), func_5(Struct_1(var_1.x, vec3<bool>(true, false, false), vec4<i32>(-4112i, -11745i, -22499i, 33347i), global0.d), select(vec2<i32>(var_1.x, var_1.x), vec2<i32>(global0.a, u_input.a), vec2<bool>(global0.b.x, false)), Struct_1(-1i, vec3<bool>(global0.b.x, false, global0.b.x), vec4<i32>(global0.a, global0.c.x, 36125i, -1i), global0.d)).b.x, !(var_1.x != -1432i)), global0.c, ~(~global0.d)), func_5(Struct_1(-max(var_0.x, var_1.x), select(vec3<bool>(false, true, false), !vec3<bool>(false, false, global0.b.x), !global0.b), -reverseBits(global0.c), global0.d), -(var_0 ^ _wgslsmith_add_vec2_i32(var_0, var_0)), func_6(func_5(func_1(), select(global0.c.yz, global0.c.xy, global0.b.x), func_5(Struct_1(var_1.x, vec3<bool>(true, true, false), global0.c, global0.d), vec2<i32>(18560i, var_0.x), Struct_1(-19565i, global0.b, vec4<i32>(17525i, u_input.a, var_0.x, 0i), global0.d))).c.zy, _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(316f, -2300f, -1307f, var_2.x), vec4<f32>(-149f, -1000f, -503f, var_2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(204f, var_2.x, var_2.x, var_2.x))), Struct_1(57086i, !vec3<bool>(global0.b.x, false, false), global0.c << (vec4<u32>(37894u, 24044u, 19071u, global0.d) % vec4<u32>(32u)), global0.d), func_5(func_6(vec2<i32>(2147483647i, global0.c.x), vec4<f32>(467f, var_2.x, var_2.x, -934f), Struct_1(2147483647i, vec3<bool>(true, true, global0.b.x), vec4<i32>(-1i, -1i, var_0.x, var_1.x), global0.d), Struct_1(-34568i, global0.b, vec4<i32>(var_0.x, 2147483647i, var_1.x, 56898i), global0.d)), var_1.zx, func_1()))).c.xw, func_5(func_6(~vec2<i32>(-1i, -11485i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.x, 213f, var_2.x, 829f))) * vec4<f32>(871f, var_2.x, var_2.x, 526f)), Struct_1(0i, !global0.b, vec4<i32>(-30464i, 4688i, var_0.x, var_1.x) | global0.c, _wgslsmith_mod_u32(1u, 1u)), func_1()), var_1.xz, func_1()));
    let var_3 = func_6(-vec2<i32>(-2147483647i, 14272i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 463f, var_2.x, var_2.x) + vec4<f32>(var_2.x, -1000f, var_2.x, 1502f)))), vec4<f32>(-713f, _wgslsmith_f_op_f32(min(var_2.x, var_2.x)), -946f, var_2.x)))), func_5(func_1(), max(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, global0.c.x), global0.c.wy), var_0), func_1()), func_1());
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstLeadingBit(abs(~vec4<u32>(global0.d, 46785u, 4294967295u, global0.d)))), _wgslsmith_div_vec3_u32(vec3<u32>(func_6(var_3.c.xz, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-918f, var_2.x, var_2.x, 409f), vec4<f32>(var_2.x, var_2.x, 391f, var_2.x), global0.b.x)), var_3, func_6(var_3.c.xy, vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x), Struct_1(-45556i, global0.b, vec4<i32>(-38239i, 1i, global0.a, -42329i), global0.d), var_3)).d, 4294967295u, ~firstLeadingBit(35063u)), countOneBits(~min(vec3<u32>(global0.d, 28509u, global0.d), vec3<u32>(1u, 5856u, 2286u)))), countOneBits(func_6(var_0, vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), -1884f, _wgslsmith_f_op_f32(sign(-364f)), _wgslsmith_f_op_f32(min(-1104f, 608f))), func_6(var_1.zy, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))), Struct_1(global0.a, var_3.b, var_3.c, var_3.d), var_3), func_1()).a));
}

