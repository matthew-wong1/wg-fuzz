struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: vec3<i32>,
    d: vec3<f32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-433f, -1553f), 39267u, vec3<bool>(false, false, true), -1000f);

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    let var_0 = ~_wgslsmith_mod_u32(~(~36407u) >> (_wgslsmith_mod_u32(~u_input.b.x, ~1u) % 32u), max(~global0.b, global0.b) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, global0.b, global0.b, global0.b), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 75078u, 0u, global0.b), vec4<u32>(32563u, 42965u, u_input.b.x, global0.b))) % 32u));
    var var_1 = Struct_4(u_input.a, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-2085f))))), global0.b), select(-abs(vec3<i32>(6320i, u_input.a, -44212i)), select(reverseBits(vec3<i32>(u_input.a, 3092i, 2147483647i) << (u_input.b % vec3<u32>(32u))), countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(43889i, 2147483647i, u_input.a), vec3<i32>(3096i, 25281i, u_input.a))), any(global0.c.zy)), vec3<bool>(any(select(global0.c.xx, vec2<bool>(global1.x, true), vec2<bool>(false, global0.c.x))), !(!global0.c.x), _wgslsmith_clamp_u32(var_0, global0.b, 71955u) > ~74916u)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, global0.a.x, 790f), vec3<f32>(global0.a.x, 444f, global0.a.x), global1.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.a.x, -415f, -776f), vec3<f32>(1581f, global0.d, global0.d))), all(vec4<bool>(global0.c.x, global0.c.x, global1.x, global1.x)))))))), Struct_3(_wgslsmith_f_op_f32(sign(-1000f)), global0.b));
    let var_2 = var_1.e.a;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x + var_1.d.x)));
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(global0.d, -172f))), global0.d)), -1003f, var_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1411f)) * vec4<f32>(937f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.e.a), _wgslsmith_f_op_f32(sign(272f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.e.a - -831f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)))));
    return global0.d;
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    global0 = Struct_1(vec2<f32>(367f, _wgslsmith_f_op_f32(func_3())), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(arg_1, arg_1) ^ u_input.b.yz), arg_0.yx, max(~u_input.b.zx, ~vec2<u32>(global0.b, 4294967295u))), select(~u_input.b.yx, ~(~arg_0.zz), all(global0.c))), !select(!global0.c, select(global0.c, vec3<bool>(true, false, arg_2.x), true | arg_2.x), all(vec3<bool>(arg_2.x, false, global0.c.x))), 494f);
    var var_0 = Struct_4(select(countOneBits(min(u_input.a, 0i)), _wgslsmith_mod_i32(-10436i, -u_input.a), false) >> (firstTrailingBit(countOneBits(4294967295u) << (abs(arg_1) % 32u)) % 32u), Struct_3(-956f, _wgslsmith_add_u32(~arg_1, ~arg_1) | ~_wgslsmith_clamp_u32(global0.b, 0u, u_input.b.x)), select(reverseBits(firstLeadingBit(~vec3<i32>(0i, u_input.a, 17619i))), firstLeadingBit(vec3<i32>(firstTrailingBit(u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)), -1i)), -(~u_input.a) <= abs(u_input.a)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(max(-842f, global0.d)))))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x + 1000f), _wgslsmith_f_op_f32(global0.a.x + -367f))), u_input.b.x));
    var var_1 = var_0.b;
    var var_2 = -252f;
    var var_3 = !select(!select(vec4<bool>(arg_2.x, false, true, true), !vec4<bool>(global0.c.x, true, true, global1.x), true), select(select(vec4<bool>(false, true, global1.x, global1.x), vec4<bool>(false, arg_2.x, true, true), all(vec4<bool>(true, global0.c.x, true, true))), select(vec4<bool>(false, global0.c.x, false, global1.x), !vec4<bool>(true, true, global0.c.x, global1.x), !global1.x), select(select(vec4<bool>(false, false, global1.x, false), vec4<bool>(global0.c.x, true, global0.c.x, global1.x), vec4<bool>(false, true, false, global1.x)), select(vec4<bool>(global1.x, false, global0.c.x, true), vec4<bool>(arg_2.x, false, true, global1.x), vec4<bool>(true, arg_2.x, true, arg_2.x)), vec4<bool>(global1.x, global1.x, true, true))), vec4<bool>(!global1.x, global0.c.x, false, min(60960u, 126944u) != ~arg_0.x));
    return Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.e.a)))), 1566f) * global0.a), ~_wgslsmith_sub_u32(~(var_1.b | u_input.b.x), 0u), select(var_3.www, select(select(vec3<bool>(global1.x, global1.x, false), global0.c, global0.c), !global0.c, u_input.a != -44196i), select(vec3<bool>(all(vec4<bool>(false, global0.c.x, false, arg_2.x)), true, !var_3.x), select(vec3<bool>(true, false, true), var_3.xyz, all(vec2<bool>(true, true))), global1.x && (var_0.d.x <= -2216f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1696f)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = Struct_2(!select(vec2<bool>(arg_1.c.x, !arg_0.c.x), global0.c.zz, select(vec2<bool>(true, arg_0.c.x), select(arg_1.c.xx, vec2<bool>(false, false), global1.xx), !vec2<bool>(false, arg_1.c.x))), vec4<f32>(_wgslsmith_f_op_f32(-1117f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) + _wgslsmith_f_op_f32(global0.d - 121f))), _wgslsmith_f_op_f32(-func_2(u_input.b, 7325u, select(vec2<bool>(arg_0.c.x, false), vec2<bool>(true, false), arg_1.c.yx)).d), _wgslsmith_f_op_f32(1119f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.x * -2282f), 458f))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - func_2(~countOneBits(vec3<u32>(arg_0.b, 31661u, 40422u)), ~0u, !arg_1.c.yy).a.x) - 607f);
    return func_2(_wgslsmith_add_vec3_u32(~u_input.b, _wgslsmith_mod_vec3_u32(abs(u_input.b), _wgslsmith_clamp_vec3_u32(vec3<u32>(46668u, 0u, 65139u), u_input.b, u_input.b) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.b, global0.b, u_input.b.x), vec3<u32>(4294967295u, 0u, u_input.b.x)))), min(max(reverseBits(countOneBits(4294967295u)), 1u), max(0u, ~reverseBits(u_input.b.x))), !arg_0.c.yz);
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> vec2<f32> {
    let var_0 = global0.b;
    let var_1 = func_4(func_2(u_input.b, u_input.b.x, select(arg_0.a, select(!global0.c.zx, global0.c.zz, select(global0.c.zx, vec2<bool>(global0.c.x, global1.x), arg_0.a.x)), (global0.b < u_input.b.x) && true)), Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2117f, -1000f) + arg_0.b.yz) - global0.a))), firstLeadingBit(0u & global0.b), select(!vec3<bool>(global0.c.x, true, arg_0.a.x), !(!vec3<bool>(global1.x, true, false)), !vec3<bool>(global1.x, arg_0.a.x, global0.c.x)), arg_1), _wgslsmith_f_op_f32(f32(-1f) * -166f));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(var_1.a.x - arg_1)) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(arg_0.b.yz, arg_0.b.zy), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, -1468f))))))) + func_2(vec3<u32>(0u, 0u, 602u), 53859u, select(!(!var_1.c.xz), !func_2(u_input.b, u_input.b.x, global1.zx).c.yy, vec2<bool>(true, true))).a);
    var var_3 = 49838u;
    let var_4 = Struct_4(-u_input.a, Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(461f - 1465f) + _wgslsmith_f_op_f32(func_3())), _wgslsmith_mod_u32(global0.b, ~4294967295u) >> (_wgslsmith_sub_u32(0u | u_input.b.x, countOneBits(u_input.b.x)) % 32u)), -(~(-vec3<i32>(-2147483647i, 23459i, 0i)) ^ firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -2147483647i, u_input.a), vec3<i32>(u_input.a, u_input.a, -23122i)))), _wgslsmith_f_op_vec3_f32(exp2(arg_0.b.xxy)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1, -297f)))), var_1.b));
    return var_4.d.zy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(countOneBits(~33427u) & _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(21635u, 41997u, 50408u), abs(25991u)), vec2<u32>(4294967295u, reverseBits(global0.b))), 4294967295u);
    global0 = Struct_1(global0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_add_u32(~var_0, var_0)), u_input.b.zz), select(global0.c, global0.c, true), 600f);
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(418f, -1079f), _wgslsmith_f_op_vec2_f32(-global0.a), vec2<bool>(true, true))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(Struct_2(vec2<bool>(false, global1.x), vec4<f32>(-2140f, global0.d, -1153f, global0.a.x)), _wgslsmith_f_op_f32(global0.d + -1450f))))), 52913u, vec3<bool>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(998f * global0.d)) != _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-657f, 636f)), ~1u != min(u_input.b.x, _wgslsmith_clamp_u32(38522u, 4294967295u, u_input.b.x))), _wgslsmith_f_op_f32(f32(-1f) * -911f));
    var var_1 = Struct_1(global0.a, _wgslsmith_dot_vec4_u32(countOneBits((vec4<u32>(u_input.b.x, 1u, var_0, 90820u) | vec4<u32>(var_0, 20014u, var_0, u_input.b.x)) | ~vec4<u32>(1u, var_0, var_0, u_input.b.x)), abs(abs(vec4<u32>(global0.b, 25397u, global0.b, global0.b)))), func_2(max(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(514u, var_0, 26681u)), u_input.b), reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 4294967295u), vec2<u32>(var_0, 66174u)) ^ _wgslsmith_add_u32(var_0, 0u)), global1.xx).c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1142f, global0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(867f, -1545f)))) + global0.a.x));
    var var_2 = 1u;
    let var_3 = true;
    var_2 = ~(~27443u);
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(30588u, _wgslsmith_clamp_vec4_u32(vec4<u32>(abs(_wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(0u, var_0))), 3525u, ~select(global0.b, 0u, false), abs(var_0)), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0, 0u, var_0, u_input.b.x), vec4<u32>(15371u, 16484u, 1u, 4144u)), ~vec4<u32>(_wgslsmith_clamp_u32(0u, u_input.b.x, global0.b), countOneBits(69236u), _wgslsmith_div_u32(1u, global0.b), func_4(Struct_1(var_1.a, 40490u, global0.c, -453f), Struct_1(vec2<f32>(-500f, 661f), var_0, vec3<bool>(var_1.c.x, true, var_3), -871f), -315f).b)));
}

