struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: u32,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1714f, -147f, -408f, -596f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<i32>) -> f32 {
    let var_0 = !(!vec2<bool>(!(arg_0.x > u_input.d), true));
    let var_1 = Struct_2(Struct_1(select(select(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), false), vec3<bool>(true, var_0.x, var_0.x), select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x), false)), vec3<bool>(true, true, true), true), min(_wgslsmith_mult_vec4_u32(vec4<u32>(23687u, 4294967295u, 37099u, 45664u), vec4<u32>(u_input.d, 39009u, 32517u, arg_0.x) >> (vec4<u32>(6974u, u_input.a, arg_0.x, arg_0.x) % vec4<u32>(32u))), min(vec4<u32>(15888u, 17151u, 56466u, arg_0.x), vec4<u32>(608u, u_input.a, 12630u, 4294967295u))), arg_0.x, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -747f, global0.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global0.wzy)))))), Struct_1(select(!vec3<bool>(false, var_0.x, false), select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, true, false)), select(all(vec3<bool>(var_0.x, var_0.x, var_0.x)), true, var_0.x & false)), ~((vec4<u32>(0u, arg_0.x, arg_0.x, 4294967295u) ^ vec4<u32>(46019u, 31272u, u_input.d, arg_0.x)) >> (select(vec4<u32>(4294967295u, arg_0.x, 4294967295u, 0u), vec4<u32>(4294967295u, 1u, 28230u, arg_0.x), vec4<bool>(var_0.x, true, true, false)) % vec4<u32>(32u))), abs(_wgslsmith_sub_u32(4294967295u, u_input.d)) ^ 1u, global0.zyx), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -685f, -845f, global0.x))))), vec4<f32>(global0.x, _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(sign(global0.x)))), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(f32(-1f) * -1102f)), global0.x)), Struct_1(select(vec3<bool>(all(vec3<bool>(true, false, var_0.x)), true, global0.x < global0.x), vec3<bool>(var_0.x, true, var_0.x), true), _wgslsmith_add_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.d, arg_0.x, u_input.a, arg_0.x)), countOneBits(vec4<u32>(arg_0.x, 10086u, 1u, 38730u)) >> (firstTrailingBit(vec4<u32>(1u, arg_0.x, arg_0.x, arg_0.x)) % vec4<u32>(32u))), firstTrailingBit(1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(global0.zyx))))), Struct_1(select(vec3<bool>(select(false, false, var_0.x), var_0.x, true), !(!vec3<bool>(var_0.x, var_0.x, var_0.x)), all(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x), false))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, arg_0.x, arg_0.x, arg_0.x), vec4<u32>(23203u, u_input.d, 19511u, 13036u), vec4<u32>(1u, arg_0.x, 20907u, arg_0.x)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.x, 1u, 2125u, arg_0.x), vec4<u32>(0u, arg_0.x, 10915u, 36402u))), vec4<u32>(~4294967295u, ~24633u, ~u_input.e, arg_0.x)), 16137u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(global0.zyx + vec3<f32>(-577f, global0.x, -1056f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -206f, -1846f) * global0.yxw))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-304f, -1341f, 955f), vec3<f32>(global0.x, 730f, 452f))), vec3<f32>(global0.x, global0.x, global0.x)))));
    var var_2 = Struct_1(var_1.d.a, var_1.b.b, ~(~arg_0.x), global0.zzw);
    let var_3 = vec3<bool>(select(select(var_1.a.a.x, var_0.x, any(var_0)) || !(571f >= global0.x), (-arg_1.x ^ min(0i, arg_1.x)) <= ~arg_1.x, false), abs(~53017u ^ arg_0.x) < var_2.c, all(!var_1.b.a));
    return global0.x;
}

fn func_2(arg_0: Struct_5) -> f32 {
    let var_0 = arg_0.d;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -428f, var_0.d.x, 127f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1509f, 2309f, arg_0.c, global0.x), vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1794f, -251f, -1149f, var_0.d.x) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.c, -533f, global0.x, -133f))))))));
    global0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(var_0.b.yy, arg_0.a)), _wgslsmith_f_op_f32(step(-1401f, arg_0.c)), false)) - -1434f), var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1371f - _wgslsmith_f_op_f32(exp2(var_0.d.x)))), -944f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.d.d.x, arg_0.d.d.x, _wgslsmith_f_op_f32(arg_0.d.d.x * global0.x), _wgslsmith_f_op_f32(-365f - var_1.x))))), var_0.a.x));
    let var_2 = Struct_5(~arg_0.a, ~arg_0.b, -751f, Struct_1(vec3<bool>(true, any(select(arg_0.d.a.yz, vec2<bool>(var_0.a.x, false), false)), any(select(vec4<bool>(var_0.a.x, arg_0.d.a.x, arg_0.d.a.x, false), vec4<bool>(true, true, var_0.a.x, true), false))), select(_wgslsmith_mod_vec4_u32(var_0.b, ~arg_0.d.b), ~select(vec4<u32>(arg_0.d.b.x, 0u, arg_0.d.c, 21355u), vec4<u32>(26747u, arg_0.d.c, arg_0.d.c, u_input.a), arg_0.d.a.x), select(vec4<bool>(false, arg_0.d.a.x, true, true), select(vec4<bool>(arg_0.d.a.x, true, arg_0.d.a.x, false), vec4<bool>(var_0.a.x, true, var_0.a.x, false), true), !vec4<bool>(true, arg_0.d.a.x, true, false))), 112283u, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(arg_0.d.d)), global0.xxw)), arg_0.d.d))));
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(368f, var_1.x, 1000f, -1778f)), vec4<f32>(arg_0.c, -578f, arg_0.d.d.x, arg_0.c))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.d.d.x, arg_0.d.d.x, -1679f, global0.x)))))));
    return var_2.c;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: i32, arg_3: vec2<i32>) -> vec3<bool> {
    var var_0 = abs(vec3<i32>(_wgslsmith_sub_i32(-arg_3.x, arg_2 << (47556u % 32u)), ~reverseBits(arg_3.x), _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, u_input.c), arg_3.x)) & ~vec3<i32>(arg_2, ~arg_3.x, arg_2 ^ arg_2));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, _wgslsmith_f_op_f32(min(arg_1.a.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(Struct_5(vec3<i32>(-1i, u_input.b, 1i), vec2<i32>(0i, 1i), -1000f, arg_1.e))), _wgslsmith_f_op_f32(f32(-1f) * -204f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0)))), _wgslsmith_f_op_f32(func_3(arg_1.d.b.zx, ~_wgslsmith_add_vec3_i32(vec3<i32>(-7068i, -1i, var_0.x), vec3<i32>(arg_2, 2147483647i, arg_2))))) * vec4<f32>(-1508f, arg_1.e.d.x, _wgslsmith_f_op_f32(arg_1.c.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(379f - arg_1.b.d.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(step(arg_1.c.x, 691f))), arg_0)));
    let var_1 = true;
    let var_2 = Struct_2(Struct_1(select(select(arg_1.b.a, vec3<bool>(var_1, var_1, arg_1.b.a.x), true), arg_1.d.a, var_1), _wgslsmith_mod_vec4_u32(select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.e, arg_1.b.b.x, arg_1.a.b.x, arg_1.e.c), arg_1.d.b), arg_1.a.b, var_1), arg_1.a.b | abs(arg_1.b.b)), 0u, arg_1.b.d), Struct_1(arg_1.a.a, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1981u, 81283u, u_input.a), vec3<u32>(u_input.d, 1u, 3371u)), _wgslsmith_mod_u32(~58536u, u_input.d), (arg_1.a.b.x >> (4776u % 32u)) & ~32079u, u_input.a), arg_1.b.b.x, arg_1.a.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.c.x, global0.x)), -1385f, _wgslsmith_f_op_f32(-arg_1.a.d.x), -1233f))), arg_1.d, arg_1.d);
    var var_3 = arg_1;
    return select(vec3<bool>(all(var_2.a.a.yz), !all(vec2<bool>(true, arg_1.b.a.x)), var_2.a.a.x), vec3<bool>(true, !(!var_1), -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.x, 7777i), var_0.xy) < abs(_wgslsmith_dot_vec2_i32(arg_3, arg_3))), !var_2.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(ceil(global0.x)))), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(global0.x - -1464f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(floor(1238f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x)), -152f)));
    let var_0 = Struct_1(!select(!func_1(1844f, Struct_2(Struct_1(vec3<bool>(true, true, true), vec4<u32>(16099u, u_input.d, 38253u, u_input.d), 27061u, global0.yyz), Struct_1(vec3<bool>(false, false, false), vec4<u32>(1u, 0u, u_input.d, u_input.e), u_input.d, vec3<f32>(global0.x, global0.x, -166f)), vec4<f32>(480f, -453f, -754f, global0.x), Struct_1(vec3<bool>(false, false, false), vec4<u32>(u_input.d, u_input.a, 1u, u_input.d), 0u, vec3<f32>(global0.x, 1000f, global0.x)), Struct_1(vec3<bool>(true, false, true), vec4<u32>(30408u, u_input.d, u_input.d, u_input.a), 92439u, vec3<f32>(global0.x, 1054f, 1163f))), -10919i, vec2<i32>(u_input.c, 44764i)), func_1(_wgslsmith_f_op_f32(-global0.x), Struct_2(Struct_1(vec3<bool>(false, false, true), vec4<u32>(0u, 0u, u_input.d, 8502u), 75872u, global0.xwy), Struct_1(vec3<bool>(false, false, false), vec4<u32>(69113u, u_input.a, u_input.a, 0u), u_input.e, vec3<f32>(global0.x, global0.x, -977f)), vec4<f32>(global0.x, global0.x, global0.x, global0.x), Struct_1(vec3<bool>(true, false, false), vec4<u32>(51480u, u_input.a, 1u, 8153u), 4322u, global0.yzx), Struct_1(vec3<bool>(true, false, false), vec4<u32>(u_input.a, 3446u, u_input.e, u_input.d), 4294967295u, global0.zxx)), u_input.c, vec2<i32>(21673i, u_input.c)), vec3<bool>(any(vec2<bool>(true, true)), false, true)), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(19985u, 31929u, u_input.a, 12419u), ~vec4<u32>(u_input.e, 37288u, 15139u, 20314u))) & ~(~vec4<u32>(u_input.a, u_input.a, 0u, u_input.e)), u_input.d, vec3<f32>(_wgslsmith_f_op_f32(floor(-489f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -1129f))), _wgslsmith_f_op_f32(686f * _wgslsmith_f_op_f32(floor(-110f)))));
    var var_1 = 4294967295u;
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.d.x)));
    global0 = vec4<f32>(475f, 316f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-198f)) - var_0.d.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_0.d.x)))));
    let var_3 = false;
    var var_4 = _wgslsmith_div_vec4_u32(var_0.b, ~reverseBits(vec4<u32>(4294967295u, 1u, u_input.a, var_0.c) ^ var_0.b)) << (_wgslsmith_mod_vec4_u32(var_0.b, countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.x, 0u, 85148u, 23165u), vec4<u32>(14582u, u_input.a, 0u, u_input.d))) << (firstLeadingBit(var_0.b) % vec4<u32>(32u))) % vec4<u32>(32u));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(201f, -651f, var_2, -1406f) + vec4<f32>(-847f, global0.x, 857f, -614f)) + _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, var_2, var_0.d.x, -1000f), vec4<f32>(var_2, global0.x, -673f, var_0.d.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1933f, 229f, 276f, -1000f), vec4<f32>(-428f, -408f, var_2, global0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -714f, var_2, 905f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2, _wgslsmith_f_op_f32(1430f - global0.x), -638f, -559f)), true)));
    var var_5 = Struct_2(var_0, var_0, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, -676f, var_0.d.x, var_0.d.x) * vec4<f32>(1207f, -634f, global0.x, 2004f)), vec4<f32>(-1000f, var_2, 1352f, var_2), select(vec4<bool>(true, var_3, var_0.a.x, var_0.a.x), !vec4<bool>(true, var_0.a.x, var_0.a.x, false), vec4<bool>(false, var_3, var_3, false)))))), var_0, Struct_1(var_0.a, var_0.b | vec4<u32>(0u, _wgslsmith_mod_u32(1u, 4294967295u), ~var_4.x, 1u), _wgslsmith_mod_u32(62419u, ~var_0.b.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-154f, 2022f, 1457f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, firstTrailingBit(~3737i), firstTrailingBit(vec3<i32>(firstLeadingBit(-2147483647i), -_wgslsmith_div_i32(2147483647i, u_input.c), firstTrailingBit(_wgslsmith_clamp_i32(-28448i, u_input.b, 55871i)))), i32(-1i) * -1i, u_input.c);
}

