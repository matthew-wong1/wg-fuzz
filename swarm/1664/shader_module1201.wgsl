struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec4<u32>) -> f32 {
    var var_0 = ~0u;
    var_0 = ~0u;
    var var_1 = Struct_3(Struct_2(Struct_1(vec3<bool>(true, all(vec4<bool>(false, false, true, true)), true), vec2<bool>(false, true)), vec3<bool>(true, true, true), Struct_1(vec3<bool>(true, all(vec2<bool>(true, false)), false), vec2<bool>(true, true)), _wgslsmith_f_op_f32(f32(-1f) * -964f)), 100286u, Struct_1(select(vec3<bool>(true, all(vec3<bool>(true, false, true)), any(vec3<bool>(false, true, false))), vec3<bool>(true, true, true), true), vec2<bool>(true, true)), Struct_2(Struct_1(vec3<bool>(true, true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), false), false)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), Struct_1(vec3<bool>(any(vec4<bool>(false, true, false, false)), false, true), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true))), _wgslsmith_f_op_f32(trunc(-525f))), u_input.c);
    var var_2 = _wgslsmith_mult_i32(var_1.e, ~(-6747i));
    var_0 = _wgslsmith_div_u32(~52770u, firstTrailingBit(18965u));
    return var_1.a.d;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = Struct_2(arg_2, vec3<bool>(u_input.a > 14097u, !all(vec4<bool>(arg_1.a.x, false, arg_2.a.x, arg_2.a.x)), true), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.b.x, 4294967295u, vec4<u32>(1u, u_input.d.x, u_input.b.x, u_input.a) << (vec4<u32>(4294967295u, u_input.d.x, 1u, 0u) % vec4<u32>(32u)))) + arg_0.x)));
    var var_1 = 1i;
    var_1 = ~27642i;
    var_1 = ~(~15344i);
    var var_2 = max(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, 65525u, u_input.b.x, u_input.a), ~vec4<u32>(u_input.d.x, 29717u, 1u, 58947u)), 4294967295u, u_input.d.x, u_input.a), firstLeadingBit(vec4<u32>(u_input.a, ~4294967295u, ~u_input.a, u_input.a))), _wgslsmith_mod_vec4_u32(select(~vec4<u32>(0u, 0u, u_input.a, 1u) ^ abs(vec4<u32>(1u, u_input.a, u_input.b.x, u_input.d.x)), abs(reverseBits(vec4<u32>(u_input.d.x, u_input.a, 4294967295u, 99089u))), true), vec4<u32>(~firstLeadingBit(1u), firstTrailingBit(u_input.b.x), u_input.b.x, ~23025u >> (_wgslsmith_mod_u32(4739u, 1u) % 32u))));
    return Struct_3(Struct_2(Struct_1(arg_1.a, var_0.b.zy), var_0.a.a, arg_1, _wgslsmith_f_op_f32(arg_0.x * arg_3.x)), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(13384u, u_input.d.x, 1u, var_2.x), reverseBits(vec4<u32>(4294967295u, 3460u, u_input.b.x, u_input.b.x)))) | ~131980u, Struct_1(vec3<bool>(_wgslsmith_div_i32(-5141i, u_input.c) <= -29292i, _wgslsmith_f_op_f32(-arg_3.x) <= _wgslsmith_f_op_f32(exp2(arg_3.x)), any(vec2<bool>(true, false)) || !arg_1.b.x), vec2<bool>(all(vec3<bool>(false, true, true)), -522f >= _wgslsmith_f_op_f32(exp2(var_0.d)))), Struct_2(Struct_1(!vec3<bool>(true, false, arg_1.a.x), vec2<bool>(any(vec4<bool>(true, true, var_0.c.b.x, arg_2.a.x)), false)), !vec3<bool>(true, arg_1.b.x, true), Struct_1(!vec3<bool>(var_0.a.b.x, false, true), select(select(arg_2.a.xx, arg_2.b, arg_1.a.zy), var_0.a.a.xy, select(arg_2.a.x, arg_2.b.x, arg_1.b.x))), 1081f), 12914i);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_2.d, -152f, arg_0.d, arg_2.d))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, -532f, arg_2.d, -313f)))), arg_1, Struct_1(!select(select(vec3<bool>(true, false, false), arg_1.a, vec3<bool>(arg_0.b.x, false, arg_1.b.x)), select(arg_2.c.a, vec3<bool>(arg_2.b.x, arg_2.a.b.x, arg_3), arg_0.b.x), true | arg_2.b.x), arg_1.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.d, 588f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1715f, arg_2.d) * vec2<f32>(arg_2.d, 3564f)))))));
    let var_1 = _wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.b.x, 0u, var_0.b, var_0.b)) & vec4<u32>(u_input.d.x, _wgslsmith_sub_u32(~u_input.b.x, select(4294967295u, 17857u, arg_2.a.a.x)), countOneBits(13553u), _wgslsmith_mod_u32(~9424u, ~67806u)), ~abs(min(vec4<u32>(1u, u_input.a, 1u, u_input.d.x) >> (vec4<u32>(45881u, var_0.b, 24179u, u_input.a) % vec4<u32>(32u)), vec4<u32>(u_input.d.x, 1u, u_input.b.x, var_0.b) | vec4<u32>(u_input.a, 9218u, 0u, 9556u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-302f, arg_0.d))))), vec2<f32>(1f, 1f)));
    let var_3 = vec3<bool>(true, arg_1.a.x, arg_3);
    var var_4 = ~(~firstTrailingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, 29561i, -2147483647i), vec4<i32>(var_0.e, u_input.c, 20211i, -11516i)), u_input.c)));
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: vec2<f32>) -> Struct_3 {
    let var_0 = u_input.d.x;
    var var_1 = vec3<bool>(true, true || all(vec3<bool>(any(vec2<bool>(true, false)), true, true)), true | func_1(arg_0, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1159f, 324f, arg_3.x, -120f)), func_1(Struct_2(Struct_1(arg_0.a.a, arg_0.c.b), vec3<bool>(arg_0.c.b.x, false, arg_1), arg_0.a, arg_3.x), arg_0.a, Struct_2(Struct_1(arg_0.b, arg_0.a.b), vec3<bool>(arg_1, arg_0.c.b.x, false), Struct_1(arg_0.a.a, vec2<bool>(arg_0.a.b.x, arg_1)), 1315f), false), arg_0.a, arg_3).c, Struct_2(arg_0.c, arg_0.a.a, func_2(vec4<f32>(arg_3.x, arg_3.x, arg_0.d, arg_0.d), arg_0.a, Struct_1(vec3<bool>(true, true, arg_1), vec2<bool>(true, true)), vec2<f32>(arg_0.d, -1133f)).c, func_2(vec4<f32>(-724f, -710f, 1000f, arg_2), arg_0.c, arg_0.c, arg_3).d.d), true).b.x);
    var var_2 = arg_0.c;
    var var_3 = _wgslsmith_mult_i32(1i, ~(-13863i));
    let var_4 = arg_0;
    return Struct_3(var_4, 0u, arg_0.c, func_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-831f - 134f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.x, 1983f) * _wgslsmith_f_op_f32(-arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -715f), arg_3.x), func_2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(320f, arg_0.d, 1325f, arg_2), vec4<f32>(arg_2, -1076f, arg_3.x, arg_0.d), vec4<bool>(true, false, true, true))), vec4<f32>(arg_0.d, arg_0.d, arg_2, arg_2))), func_1(func_2(vec4<f32>(arg_0.d, arg_0.d, -1000f, arg_3.x), Struct_1(arg_0.c.a, vec2<bool>(var_1.x, var_4.c.b.x)), Struct_1(var_2.a, var_4.c.b), arg_3).d, Struct_1(var_2.a, vec2<bool>(var_4.c.a.x, arg_1)), var_4, all(vec2<bool>(true, true))), func_1(func_2(vec4<f32>(102f, 582f, arg_3.x, 187f), arg_0.a, arg_0.c, arg_3).d, arg_0.a, Struct_2(Struct_1(var_4.b, vec2<bool>(var_2.a.x, var_4.a.b.x)), var_2.a, arg_0.a, 1614f), !var_2.a.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-314f, 173f) + vec2<f32>(arg_2, -470f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.d, var_4.d) - vec2<f32>(316f, var_4.d))))).a.a, Struct_1(select(vec3<bool>(false, false, true), !var_4.a.a, select(var_2.a, vec3<bool>(true, arg_0.a.b.x, false), false)), !var_2.b), _wgslsmith_f_op_vec2_f32(step(arg_3, _wgslsmith_f_op_vec2_f32(-arg_3)))).d, -2147483647i >> (func_2(vec4<f32>(204f, _wgslsmith_f_op_f32(1000f - arg_3.x), 1000f, _wgslsmith_f_op_f32(arg_0.d + arg_2)), arg_0.a, var_4.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2, var_4.d) - arg_3))).b % 32u));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: Struct_3, arg_3: i32) -> f32 {
    let var_0 = arg_1.c;
    let var_1 = abs(vec3<i32>(arg_3, arg_2.e, arg_0.e));
    var var_2 = var_0.b.x;
    var var_3 = reverseBits(~vec2<u32>(968u, 1u));
    var_2 = !arg_1.a.b.x;
    return -571f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(func_4(Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, true)), vec3<bool>(true, true, false), func_1(Struct_2(Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, false)), vec3<bool>(false, false, true), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, false)), 1252f), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, false)), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, false)), vec3<bool>(false, false, true), Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, true)), 1563f), true), func_2(vec4<f32>(-783f, -1054f, 1105f, 233f), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, true)), vec2<f32>(523f, 1691f)).a.d), ~(-1i) <= reverseBits(u_input.c), -1260f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-490f, 1511f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -251f) - vec2<f32>(-353f, -1000f)))), func_4(Struct_2(func_4(Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, false)), vec3<bool>(true, false, false), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, false)), -1792f), true, -314f, vec2<f32>(202f, -541f)).d.c, vec3<bool>(true, true, true), Struct_1(vec3<bool>(true, true, false), vec2<bool>(true, true)), 818f), any(func_4(Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, false)), vec3<bool>(false, false, true), Struct_1(vec3<bool>(true, true, false), vec2<bool>(false, false)), -1877f), true, 1011f, vec2<f32>(-345f, -527f)).d.c.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-647f)), -1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1184f, -1286f) * vec2<f32>(193f, -521f))).d, Struct_3(Struct_2(func_4(Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, true)), vec3<bool>(false, false, false), Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, true)), 815f), true, -1484f, vec2<f32>(-585f, 679f)).d.c, vec3<bool>(true, true, true), func_2(vec4<f32>(454f, -670f, -566f, 1437f), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, true)), vec2<f32>(-483f, 280f)).d.a, _wgslsmith_f_op_f32(-1134f - -310f)), _wgslsmith_sub_u32(72031u, ~u_input.a), Struct_1(vec3<bool>(true, true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false)), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-308f, -412f, 1000f, 672f) + vec4<f32>(465f, 1223f, -1314f, 963f)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, false)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(500f, 339f), vec2<f32>(2023f, -1000f)))).a, ~_wgslsmith_mult_i32(u_input.c, u_input.c)), 7336i)) * 352f);
    let var_1 = vec3<u32>(~u_input.a, 1u, func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-2475f, 893f, -131f, var_0) * vec4<f32>(-450f, -386f, var_0, 874f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-854f, -638f, var_0, 1000f)))))), func_1(Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, true)), vec3<bool>(true, true, true), func_4(Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, false)), vec3<bool>(true, true, true), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, false)), var_0), false, 1000f, vec2<f32>(-965f, -1000f)).c, 1234f), func_2(vec4<f32>(-1000f, 1063f, -1569f, var_0), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, false)), func_2(vec4<f32>(-1258f, -187f, var_0, 364f), Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, false)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, false)), vec2<f32>(var_0, var_0)).d.a, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-538f, var_0), vec2<f32>(var_0, var_0)))).d.c, Struct_2(func_2(vec4<f32>(148f, var_0, -1664f, var_0), Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, false)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, false)), vec2<f32>(-571f, -325f)).d.a, vec3<bool>(true, true, true), func_4(Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, true)), vec3<bool>(true, false, true), Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, false)), -1000f), false, var_0, vec2<f32>(700f, var_0)).a.c, _wgslsmith_f_op_f32(trunc(2136f))), true), func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-640f, -2193f, var_0, 392f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1358f, var_0, 1000f))), func_1(func_4(Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<bool>(true, false)), vec3<bool>(false, false, false), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, true)), var_0), true, 1603f, vec2<f32>(var_0, -831f)).d, Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, false)), func_2(vec4<f32>(769f, var_0, 489f, 190f), Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, true)), Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, false)), vec2<f32>(var_0, var_0)).d, all(vec3<bool>(false, true, false))), Struct_1(func_4(Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, false)), vec3<bool>(true, true, false), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, false)), var_0), true, -916f, vec2<f32>(var_0, var_0)).c.a, vec2<bool>(true, true)), vec2<f32>(_wgslsmith_f_op_f32(var_0 - var_0), _wgslsmith_f_op_f32(select(var_0, -286f, false)))).d.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, -1936f) - vec2<f32>(var_0, -246f)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(799f, var_0))))) * vec2<f32>(_wgslsmith_f_op_f32(-var_0), var_0))).b);
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1071f, var_0, var_0, -797f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1680f, -1000f, -918f, -1303f)))))), Struct_1(!func_4(Struct_2(Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, false)), vec3<bool>(false, true, true), Struct_1(vec3<bool>(false, true, true), vec2<bool>(false, true)), var_0), any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-960f - 130f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1208f, var_0) + vec2<f32>(var_0, var_0))).c.a, vec2<bool>(any(vec4<bool>(true, true, false, true)), true)), func_4(func_4(func_4(Struct_2(Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, true)), vec3<bool>(false, false, true), Struct_1(vec3<bool>(true, true, true), vec2<bool>(false, true)), var_0), true, var_0, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(2026f, 858f), vec2<f32>(var_0, 261f)))).a, any(vec2<bool>(true, true)), var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 1122f) * vec2<f32>(var_0, var_0)))).a, true, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(var_1.x, 50012u, vec4<u32>(936u, 1u, var_1.x, 121654u)))), -1017f, func_4(Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<bool>(false, false)), vec3<bool>(false, true, true), Struct_1(vec3<bool>(false, false, true), vec2<bool>(true, false)), 119f), false, -839f, vec2<f32>(var_0, var_0)).a.c.a.x != true)), vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + var_0) * _wgslsmith_f_op_f32(var_0 * 2103f)))).a.c, vec2<f32>(-1783f, func_4(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, var_0)), Struct_1(vec3<bool>(false, true, true), vec2<bool>(true, true)), func_1(Struct_2(Struct_1(vec3<bool>(true, false, false), vec2<bool>(false, true)), vec3<bool>(true, false, true), Struct_1(vec3<bool>(false, false, false), vec2<bool>(true, true)), var_0), Struct_1(vec3<bool>(false, false, true), vec2<bool>(false, false)), Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, true)), vec3<bool>(true, false, false), Struct_1(vec3<bool>(true, false, false), vec2<bool>(true, false)), 1895f), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))).a, !(u_input.b.x < 127272u), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-105f, var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-129f, var_0) * vec2<f32>(-1206f, 163f)))).d.d));
    var var_3 = true;
    var_2 = func_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_0, -141f, 799f), vec4<f32>(var_2.d.d, var_2.a.d, -901f, var_0), select(vec4<bool>(var_2.a.b.x, var_2.a.c.a.x, true, true), vec4<bool>(var_2.d.a.a.x, var_2.a.c.b.x, var_2.c.a.x, var_2.c.a.x), var_2.c.a.x))) + vec4<f32>(_wgslsmith_f_op_f32(sign(405f)), _wgslsmith_f_op_f32(var_2.a.d * -2566f), 1771f, func_4(var_2.d, var_2.a.c.a.x, var_0, vec2<f32>(-1574f, 1591f)).d.d)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(927f, _wgslsmith_f_op_f32(f32(-1f) * -1534f), var_2.a.d, 1000f)))), func_1(Struct_2(func_4(func_4(var_2.d, true, 1191f, vec2<f32>(var_0, var_2.a.d)).a, true, _wgslsmith_div_f32(var_2.d.d, -257f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(758f, var_2.a.d))).d.c, vec3<bool>(true, true, true), func_1(func_4(var_2.d, var_2.d.b.x, var_0, vec2<f32>(932f, 1405f)).a, var_2.d.a, Struct_2(var_2.c, var_2.d.a.a, var_2.a.a, -1181f), true), var_2.d.d), var_2.d.a, var_2.d, true), var_2.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.d.d, 1640f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(665i, vec2<i32>(var_2.e, max(_wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.c, -43043i), ~(-16471i)), u_input.c)), _wgslsmith_f_op_f32(var_0 * 401f), _wgslsmith_mod_vec3_u32(vec3<u32>(9685u, ~(~u_input.d.x), ~reverseBits(var_2.b)), abs(vec3<u32>(var_2.b, var_1.x, 6509u) >> (u_input.b % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.d, var_2.d.d)))));
}

