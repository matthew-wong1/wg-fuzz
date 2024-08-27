struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec4<u32> {
    var var_0 = ((u_input.c.x >= (1i ^ u_input.c.x)) & true) & (!(_wgslsmith_dot_vec3_i32(u_input.c.wyw, vec3<i32>(u_input.c.x, -24080i, u_input.c.x)) > ~u_input.b) | all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), vec2<bool>(true, true), false)));
    var_0 = !(true && any(vec4<bool>(true, true, true, true)));
    let var_1 = select(vec3<bool>(true, !(_wgslsmith_dot_vec3_i32(u_input.c.xxw, u_input.c.xwz) >= u_input.b), true), !select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), all(vec3<bool>(true, true, true))), vec3<bool>(u_input.b <= -15919i, !all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), false));
    let var_2 = -1i;
    var_0 = !(!var_1.x);
    return ~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_div_u32(~0u, u_input.a << (1u % 32u)), _wgslsmith_mult_u32(_wgslsmith_sub_u32(75977u, 1u), u_input.a), ~_wgslsmith_dot_vec2_u32(vec2<u32>(11912u, 29755u), u_input.e.zx), 1u), ~(~vec4<u32>(u_input.a, 4294967295u, 103879u, 33619u)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>, arg_3: vec4<u32>) -> f32 {
    var var_0 = arg_0.a.x ^ func_3().x;
    var var_1 = _wgslsmith_dot_vec3_i32(u_input.c.yxx, _wgslsmith_clamp_vec3_i32(u_input.c.yzw, u_input.c.xxw, vec3<i32>(-7588i, ~u_input.c.x, u_input.c.x)));
    var var_2 = Struct_1(~((~vec3<u32>(32134u, arg_3.x, 4813u) >> (vec3<u32>(16800u, 1u, u_input.e.x) % vec3<u32>(32u))) & abs(vec3<u32>(25310u, arg_0.a.x, arg_3.x))), ~(u_input.b | (u_input.c.x ^ -39215i)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, -718f)), vec2<f32>(2748f, 379f), true)) - vec2<f32>(-620f, _wgslsmith_f_op_f32(f32(-1f) * -184f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_0.c - arg_0.c), _wgslsmith_div_vec2_f32(vec2<f32>(-242f, 364f), arg_0.c))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, arg_0.c.x)))), arg_2.zx)));
    var var_3 = select(vec4<bool>(arg_1, any(!(!arg_2.yy)), false, arg_1), arg_2, select(!select(select(vec4<bool>(true, true, false, arg_1), arg_2, false), arg_2, true), arg_2, arg_2));
    return -397f;
}

fn func_2(arg_0: i32, arg_1: u32) -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(1462f)), _wgslsmith_f_op_f32(f32(-1f) * -1198f), 1085f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(u_input.e.wxy >> (u_input.e.xww % vec3<u32>(32u)), -u_input.c.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1031f, 885f))), true, vec4<bool>(true, true, true, true), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, u_input.d, arg_1), func_3()))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-922f)), _wgslsmith_f_op_f32(max(1388f, 531f)))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(463f, 626f, true)))))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_0.yw))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_0.zw))) + vec2<f32>(-1746f, var_0.x))));
    let var_2 = vec4<bool>(true, true, true, true);
    let var_3 = u_input.d;
    let var_4 = Struct_1(vec3<u32>(u_input.e.x, 1u, var_3) << (vec3<u32>(_wgslsmith_dot_vec3_u32(abs(u_input.e.xxw), ~vec3<u32>(95859u, 43571u, 1u)), ~_wgslsmith_mod_u32(33804u, 1u), ~(arg_1 >> (1u % 32u))) % vec3<u32>(32u)), 100024i ^ (-u_input.b | ~_wgslsmith_mod_i32(u_input.b, 2147483647i)), var_1);
    return !(!any(var_2));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1710f, arg_0.x));
    var var_1 = true;
    var_1 = (~28906u < u_input.e.x) | arg_1.x;
    var_1 = true;
    var var_2 = Struct_1(_wgslsmith_clamp_vec3_u32(u_input.e.wzy, ~u_input.e.wxw, u_input.e.wxz), (i32(-1i) * -u_input.c.x) >> (_wgslsmith_mult_u32(4294967295u, ~_wgslsmith_mod_u32(84914u, u_input.d)) % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))), -402f)));
    return Struct_1(~_wgslsmith_mod_vec3_u32(~firstTrailingBit(vec3<u32>(u_input.e.x, 14368u, 0u)), ~vec3<u32>(4294967295u, var_2.a.x, u_input.d) << (vec3<u32>(1u, var_2.a.x, u_input.a) % vec3<u32>(32u))), reverseBits(1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(var_2.c)) + _wgslsmith_f_op_vec2_f32(-arg_0.zz)))));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.c.x, arg_2.c.x, arg_1.c.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(356f, 1387f, arg_2.c.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(720f, 894f, arg_2.c.x) * vec3<f32>(arg_1.c.x, 2412f, arg_1.c.x))), vec3<f32>(arg_2.c.x, arg_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1175f, arg_2.c.x, false)))), !select(!vec3<bool>(arg_0.x, false, true), !vec3<bool>(arg_0.x, arg_0.x, true), !vec3<bool>(false, arg_0.x, arg_0.x)))), select(vec4<bool>(!func_2(17840i, 1u), false, true && arg_0.x, true), select(!(!vec4<bool>(true, arg_0.x, true, false)), !(!vec4<bool>(arg_0.x, arg_0.x, true, false)), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, true, false, true), all(vec2<bool>(arg_0.x, arg_0.x)))), select(vec4<bool>(true, arg_0.x, true, any(vec3<bool>(arg_0.x, true, arg_0.x))), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), reverseBits(u_input.a) == ~0u)));
    var var_1 = min(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_2.a.x, var_0.a.x), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), var_0.a.xx), 29887u & var_0.a.x) | (var_0.a.xy >> (~var_0.a.yx % vec2<u32>(32u)))), vec2<u32>(arg_1.a.x, ~0u));
    return _wgslsmith_div_i32(var_0.b, -2147483647i);
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = all(!(!vec4<bool>(false, any(vec3<bool>(false, true, true)), false, false)));
    let var_1 = select(_wgslsmith_div_vec2_i32(vec2<i32>(arg_3, u_input.c.x) << (vec2<u32>(arg_0, arg_1.a.x) % vec2<u32>(32u)), vec2<i32>(~2147483647i, select(-1i, 9921i, var_0))), firstTrailingBit(u_input.c.zx) | ~(-u_input.c.wy), var_0) << (vec2<u32>(_wgslsmith_mod_u32(~0u, arg_1.a.x), _wgslsmith_clamp_u32(u_input.a, ~arg_0, func_3().x) << (arg_2 % 32u)) % vec2<u32>(32u));
    var var_2 = -1302f;
    var var_3 = i32(-1i) * -1i;
    var_3 = (var_1.x >> (~(_wgslsmith_add_u32(arg_2, u_input.d) ^ (arg_0 | 28346u)) % 32u)) << (0u % 32u);
    return Struct_1(~(~(~u_input.e.zzy) >> (u_input.e.wxx % vec3<u32>(32u))), reverseBits(arg_3), arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -289f;
    let var_1 = func_6(max(~4294967295u, 4294967295u), Struct_1(u_input.e.xzz, func_1(vec2<bool>(false, any(vec2<bool>(false, false))), Struct_1(firstLeadingBit(vec3<u32>(50611u, u_input.e.x, 4294967295u)), -2147483647i, vec2<f32>(-920f, -988f)), Struct_1(~vec3<u32>(130618u, 4294967295u, 0u), u_input.c.x, vec2<f32>(1000f, -1218f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2056f, 848f))), vec2<f32>(1512f, 274f)))))), ~(u_input.a | _wgslsmith_add_u32(~1u, select(20987u, u_input.e.x, true))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-u_input.c.x, u_input.c.x, reverseBits(u_input.c.x)), -(u_input.c.wxz | u_input.c.xyx)), u_input.b));
    var_0 = _wgslsmith_f_op_f32(step(var_1.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -579f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_1.c.x)))))));
    let var_2 = vec4<i32>(firstLeadingBit(2147483647i), firstTrailingBit(~(-5454i)), u_input.b ^ max(var_1.b, min(-var_1.b, var_1.b)), u_input.c.x);
    let var_3 = var_1;
    var_0 = _wgslsmith_f_op_f32(-171f + -1993f);
    let var_4 = func_6(18392u, Struct_1(vec3<u32>(36516u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, var_3.a.x, var_3.a.x, 1u), _wgslsmith_mod_vec4_u32(u_input.e, u_input.e)), 1u), ~(~min(2147483647i, var_1.b)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)))), 1u, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -950f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.c.x * -1505f))), var_1.c.x)), 1i, _wgslsmith_dot_vec4_u32(func_3(), u_input.e));
}

