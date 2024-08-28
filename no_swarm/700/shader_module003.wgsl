struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
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

var<private> global0: vec3<i32>;

var<private> global1: Struct_2;

var<private> global2: vec4<u32>;

var<private> global3: vec3<u32>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(select(global1.b.c.x, firstLeadingBit(i32(-1i) * -2147483647i), -40347i > global1.c.a.x) < -reverseBits(global1.c.c.x), vec2<f32>(-654f, -1476f));
    let var_1 = !((1u | select(2255u, 31441u, var_0.a)) > _wgslsmith_add_u32(~global3.x, 35540u));
    let var_2 = -abs(-(global1.c.a.x ^ _wgslsmith_dot_vec2_i32(global0.xy, vec2<i32>(global0.x, -1i))));
    global0 = vec3<i32>(-_wgslsmith_dot_vec3_i32(u_input.b.wyw, u_input.b.yxx), 2860i, firstTrailingBit(global1.c.c.x) >> (~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, u_input.d.x)), abs(vec2<u32>(global3.x, global1.a.x))) % 32u));
    var var_3 = var_0;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(var_3.b.x))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    var var_0 = true;
    let var_1 = Struct_3(all(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false))), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), any(select(vec2<bool>(true, false), vec2<bool>(true, true), false)))), vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.c.b.x), _wgslsmith_f_op_f32(-arg_0.b.x), false))));
    let var_2 = 2147483647i == -(~arg_1.c.x);
    global2 = select(~u_input.c, vec4<u32>(17653u, ~(global2.x << (u_input.a % 32u)) << (_wgslsmith_clamp_u32(~global1.e.x, ~28647u, ~global1.e.x) % 32u), global3.x, _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), global3.x)), vec4<bool>(var_1.a, !(!(6955u <= u_input.a)), !(!(var_2 | var_1.a)), any(select(select(vec3<bool>(false, false, var_2), vec3<bool>(true, var_2, true), false), vec3<bool>(false, false, var_1.a), var_1.a))));
    let var_3 = var_1;
    return Struct_2(~abs(vec3<u32>(global1.a.x, ~global2.x, 0u)), Struct_1(global1.b.c.zzx, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3243f), _wgslsmith_f_op_f32(f32(-1f) * -1090f), 1341f, _wgslsmith_f_op_f32(-var_3.b.x)), abs(arg_0.c)), arg_0, _wgslsmith_div_f32(-534f, _wgslsmith_f_op_f32(select(var_3.b.x, _wgslsmith_f_op_f32(-arg_1.b.x), any(vec3<bool>(var_2, var_3.a, var_3.a))))), select(~u_input.c.yyy, ~global1.e, !select(vec3<bool>(false, var_2, var_2), select(vec3<bool>(true, var_3.a, var_2), vec3<bool>(var_2, var_3.a, true), vec3<bool>(var_2, true, var_1.a)), !var_1.a)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: vec2<u32>) -> f32 {
    var var_0 = ~_wgslsmith_sub_i32(~(-2147483647i), arg_1.b.a.x | 19583i);
    global1 = Struct_2(vec3<u32>(~(~global2.x) >> (((global3.x << (1u % 32u)) >> (global2.x % 32u)) % 32u), arg_1.e.x, u_input.d.x), func_2(func_2(arg_1.c, Struct_1(vec3<i32>(arg_1.b.c.x, -1i, u_input.b.x), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-989f, 983f, 2625f, 332f))), global1.c.c)).b, Struct_1(vec3<i32>(global0.x, abs(-17697i), global1.c.c.x ^ 2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c.b)), global1.b.c)).c, func_2(arg_1.c, Struct_1(firstLeadingBit(firstTrailingBit(arg_1.b.a)), arg_0.b.b, func_2(func_2(Struct_1(vec3<i32>(15325i, arg_1.b.c.x, 48797i), global1.c.b, arg_0.c.c), Struct_1(vec3<i32>(u_input.b.x, u_input.b.x, -35962i), vec4<f32>(arg_0.d, 474f, arg_0.b.b.x, arg_1.d), vec4<i32>(global0.x, -1i, global0.x, u_input.b.x))).b, arg_1.b).c.c)).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(arg_1.b.b.x + 972f)))), reverseBits(~vec3<u32>(_wgslsmith_mult_u32(global3.x, 4294967295u), 0u, abs(global1.a.x))));
    var var_1 = vec3<bool>(!any(vec2<bool>(true, false)), true, _wgslsmith_clamp_i32(12340i, i32(-1i) * -12113i, arg_1.b.c.x) < 20840i);
    let var_2 = true;
    var_0 = arg_0.c.c.x;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1903f))))));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = arg_0.a;
    global1 = Struct_2(global1.e, func_2(arg_2, Struct_1(~_wgslsmith_mult_vec3_i32(global1.b.c.zwy, vec3<i32>(global1.c.a.x, u_input.b.x, u_input.b.x)), vec4<f32>(_wgslsmith_f_op_f32(arg_0.b.x - arg_2.b.x), arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x), arg_0.b.x), firstTrailingBit(vec4<i32>(1i, 0i, arg_2.a.x, -2902i)))).b, global1.c, arg_0.b.x, ~(_wgslsmith_mult_vec3_u32(~vec3<u32>(global1.a.x, global3.x, global3.x), vec3<u32>(global3.x, global1.e.x, 55650u)) << (~select(vec3<u32>(20245u, 24229u, 1u), global1.e, vec3<bool>(arg_3.x, true, var_0)) % vec3<u32>(32u))));
    global3 = vec3<u32>(_wgslsmith_mult_u32((_wgslsmith_sub_u32(arg_1.x, global3.x) ^ arg_1.x) >> (global2.x % 32u), 0u), 1u, 1u);
    global2 = ~(~(~_wgslsmith_div_vec4_u32(abs(vec4<u32>(arg_1.x, 2300u, 84925u, 4294967295u)), countOneBits(vec4<u32>(73903u, 4294967295u, u_input.a, 6825u)))));
    let var_1 = Struct_3(all(select(select(vec4<bool>(true, var_0, true, true), select(vec4<bool>(true, false, true, var_0), vec4<bool>(var_0, arg_3.x, var_0, false), vec4<bool>(false, arg_0.a, true, var_0)), arg_3.x), vec4<bool>(!arg_0.a, false, var_0, true), select(vec4<bool>(arg_3.x, arg_0.a, true, arg_0.a), select(vec4<bool>(false, var_0, arg_3.x, false), vec4<bool>(false, var_0, var_0, false), false), select(vec4<bool>(arg_3.x, false, false, true), vec4<bool>(arg_3.x, true, false, arg_0.a), vec4<bool>(arg_3.x, var_0, arg_0.a, arg_0.a))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.x))), _wgslsmith_f_op_f32(sign(-1428f))));
    return Struct_1(vec3<i32>(-8781i >> (global1.a.x % 32u), global0.x, u_input.b.x), vec4<f32>(global1.c.b.x, arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b.x * 508f) - var_1.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.d - 127f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(878f - arg_0.b.x) * func_2(Struct_1(vec3<i32>(arg_2.a.x, 2147483647i, -2147483647i), global1.b.b, vec4<i32>(-30870i, -48876i, 35796i, u_input.b.x)), Struct_1(vec3<i32>(arg_2.c.x, global0.x, 55772i), vec4<f32>(-1000f, -156f, global1.d, var_1.b.x), u_input.b)).d))), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(-global1.c.c, vec4<i32>(arg_2.a.x, 21734i, 14924i, 12661i)), u_input.b), u_input.b.x, 13635i, 2147483647i));
}

fn func_1(arg_0: u32) -> Struct_1 {
    return func_5(Struct_3(false, vec2<f32>(_wgslsmith_f_op_f32(global1.c.b.x - _wgslsmith_f_op_f32(-global1.c.b.x)), _wgslsmith_f_op_f32(func_4(func_2(global1.c, Struct_1(vec3<i32>(0i, global0.x, u_input.b.x), vec4<f32>(global1.d, global1.d, 1000f, global1.c.b.x), global1.c.c)), func_2(Struct_1(u_input.b.xyz, vec4<f32>(global1.c.b.x, 647f, 2474f, global1.d), vec4<i32>(-1i, 28408i, 6008i, global1.c.a.x)), global1.b), global1.e.x, vec2<u32>(0u, 20568u))))), u_input.c.www, Struct_1(_wgslsmith_sub_vec3_i32(-_wgslsmith_div_vec3_i32(u_input.b.xyz, vec3<i32>(-1i, u_input.b.x, global0.x)), vec3<i32>(22148i, ~global0.x, -23416i)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -509f), global1.d, _wgslsmith_f_op_f32(trunc(-1454f)), -1578f))), -global1.b.c), select(select(vec2<bool>(global1.a.x < 21288u, any(vec4<bool>(true, true, false, true))), vec2<bool>(true, false), true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, all(vec2<bool>(true, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), true)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1626f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.d))), global1.b.b.x);
    global1 = Struct_2(~(~(~(~vec3<u32>(0u, 20832u, 75106u)))), func_1(global1.a.x), Struct_1(vec3<i32>(-31393i, func_5(Struct_3(true, global1.b.b.yz), vec3<u32>(22338u, 0u, global3.x), global1.c, vec2<bool>(false, true)).a.x, u_input.b.x) << (u_input.c.xxw % vec3<u32>(32u)), func_5(Struct_3(true, _wgslsmith_f_op_vec2_f32(-global1.c.b.wx)), vec3<u32>(~global3.x, ~1u, _wgslsmith_dot_vec3_u32(u_input.c.zyy, vec3<u32>(4294967295u, global3.x, 41131u))), func_2(Struct_1(u_input.b.zyw, global1.c.b, global1.c.c), Struct_1(u_input.b.ywy, vec4<f32>(var_0.x, -108f, -197f, var_0.x), vec4<i32>(u_input.b.x, 30284i, 2041i, 2147483647i))).b, !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))).b, vec4<i32>(1i, u_input.b.x, -2147483647i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 55308i, u_input.b.x, -1i), vec4<i32>(-2147483647i, global0.x, 2147483647i, global1.c.c.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.b.x - -1447f)))), ~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(106011u, 27447u, 111577u), vec3<u32>(u_input.a, 26598u, global1.a.x), global1.e >> (global1.a % vec3<u32>(32u)))));
    let var_1 = true;
    let var_2 = ~vec4<u32>(~select(global2.x, 1u, any(vec2<bool>(false, var_1))), u_input.c.x, min(4294967295u, ~1u) ^ _wgslsmith_add_u32(~u_input.a, 0u | u_input.a), 38490u);
    var var_3 = ~vec4<i32>(~(1i << (u_input.c.x % 32u)), -67976i, _wgslsmith_mod_i32(global0.x, ~u_input.b.x ^ _wgslsmith_sub_i32(global0.x, global1.c.c.x)), global0.x << (global3.x % 32u));
    var var_4 = func_1(~(~106644u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + global1.b.b.x));
}

