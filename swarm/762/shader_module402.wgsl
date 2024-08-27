struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: vec2<u32>) -> f32 {
    let var_0 = Struct_1(arg_0.yx, all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true)), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), true))), ~arg_2.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yx) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(arg_0.yx, vec2<f32>(-633f, arg_0.x), vec2<bool>(true, true)))))));
    var var_1 = -(vec2<i32>(1i, countOneBits(-1422i | arg_1.x)) | ~min(u_input.a.zz, vec2<i32>(-13056i, u_input.a.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.zz, arg_0.zy) * _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.d.x, arg_0.x)))), var_0.a)), !all(vec2<bool>(all(vec3<bool>(var_0.b, var_0.b, true)), true)), select(1u, 0u, var_0.b && ((17950u >= var_0.c) & true)), _wgslsmith_f_op_vec2_f32(-arg_0.zx));
    let var_3 = firstTrailingBit(_wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(23270i, u_input.a.x), vec2<i32>(arg_1.x, -59636i)), select(~vec2<i32>(var_1.x, arg_1.x), arg_1.yx, true)), vec2<i32>(arg_1.x, -34884i)));
    var var_4 = var_2.c;
    return _wgslsmith_f_op_f32(round(-1347f));
}

fn func_2() -> Struct_1 {
    let var_0 = ~vec2<u32>(_wgslsmith_div_u32(0u, abs(firstLeadingBit(14976u))), _wgslsmith_sub_u32(select(1u, 1u, true) >> (1u % 32u), 1u));
    var var_1 = 2147483647i;
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-942f, 267f), 422f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(489f, -1160f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-811f, -331f))), vec2<f32>(-462f, 1223f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-947f, -895f, false)) - _wgslsmith_f_op_f32(f32(-1f) * -1630f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2510f))) <= _wgslsmith_f_op_f32(ceil(-813f)), ~var_0.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-914f, _wgslsmith_f_op_f32(func_3(vec3<f32>(-125f, -1451f, 570f), ~u_input.a, var_0 << (vec2<u32>(1u, 29185u) % vec2<u32>(32u)))))));
    var var_3 = _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, 1i), vec3<i32>(_wgslsmith_div_i32(countOneBits(countOneBits(u_input.a.x)), 1i), 0i, countOneBits(-9847i)));
    let var_4 = vec4<u32>(0u, select(4982u, ~_wgslsmith_div_u32(firstTrailingBit(2535u), var_2.c), all(select(select(vec4<bool>(var_2.b, var_2.b, false, var_2.b), vec4<bool>(false, true, var_2.b, var_2.b), false), select(vec4<bool>(true, var_2.b, true, var_2.b), vec4<bool>(var_2.b, true, false, true), vec4<bool>(var_2.b, false, var_2.b, false)), vec4<bool>(var_2.b, var_2.b, var_2.b, var_2.b)))), _wgslsmith_div_u32(0u, _wgslsmith_div_u32(_wgslsmith_mod_u32(0u, var_2.c), var_2.c) & 4294967295u), _wgslsmith_div_u32(firstTrailingBit(~var_2.c) ^ var_2.c, var_2.c));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.a.x, var_2.d.x), var_2.d), _wgslsmith_f_op_vec2_f32(-var_2.d))))), true, _wgslsmith_mult_u32(~60247u, max(firstTrailingBit(max(1u, 21280u)), ~_wgslsmith_add_u32(19098u, 13993u))), var_2.a);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec2<bool>) -> Struct_1 {
    let var_0 = select(-(u_input.a << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.c, 22874u, 28351u), vec3<u32>(59095u, 0u, arg_1.c), vec3<u32>(arg_2, arg_1.c, arg_2)) % vec3<u32>(32u))), vec3<i32>(-1i) * -u_input.a, select(vec3<bool>(true, true, false), select(select(vec3<bool>(false, false, arg_3.x), vec3<bool>(arg_0, false, false), select(vec3<bool>(arg_1.b, true, arg_3.x), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), select(vec3<bool>(true, true, true), vec3<bool>(arg_3.x, arg_0, arg_0), vec3<bool>(true, false, false)), !arg_3.x), select(!vec3<bool>(false, arg_3.x, false), select(select(vec3<bool>(arg_1.b, true, true), vec3<bool>(false, arg_0, arg_0), true), !vec3<bool>(true, arg_0, arg_3.x), select(vec3<bool>(false, true, arg_3.x), vec3<bool>(arg_1.b, arg_3.x, arg_0), arg_3.x)), (arg_0 && false) || true)));
    let var_1 = vec3<u32>(firstTrailingBit(~(arg_2 & 4294967295u)), min(arg_2, arg_1.c | (16856u >> (~arg_2 % 32u))), arg_1.c);
    var var_2 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.c, 4294967295u, arg_2, arg_2), vec4<u32>(4294967295u, arg_1.c, var_1.x, arg_1.c) ^ vec4<u32>(43667u, arg_1.c, 4294967295u, 0u)) & ~firstTrailingBit(vec4<u32>(arg_2, 40869u, arg_2, 28393u)), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), var_1.zy), ~62525u, 21749u), arg_1.c, arg_2, abs(max(4294967295u, 19728u))), countOneBits(~vec4<u32>(arg_1.c, arg_1.c, 9716u, arg_2))) >> ((_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(arg_2, arg_1.c, 14335u, var_1.x)), ~(~vec4<u32>(arg_2, 4294967295u, 35817u, arg_2))) << (vec4<u32>(1u << (var_1.x % 32u), ~firstTrailingBit(arg_2), 11216u << (var_1.x % 32u), var_1.x) % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_3 = var_1;
    var var_4 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1194f, arg_1.d.x, _wgslsmith_f_op_f32(-arg_1.a.x))) - vec3<f32>(_wgslsmith_f_op_f32(-636f - _wgslsmith_f_op_f32(arg_1.d.x * arg_1.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1685f)), _wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x))), _wgslsmith_f_op_f32(sign(1680f))))));
    return arg_1;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: u32, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = func_4(all(vec4<bool>(any(vec2<bool>(false, false)) == (arg_3.x >= arg_3.x), true, any(vec4<bool>(true, true, true, true)), true)), func_2(), 97319u, !select(vec2<bool>(true, true), vec2<bool>(true, true), true | all(vec4<bool>(false, false, false, true))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 615f, arg_3.x, arg_3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-408f, -1000f, -403f, arg_3.x) + vec4<f32>(arg_3.x, var_0.d.x, arg_3.x, var_0.d.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.x, arg_3.x, -1351f, var_0.d.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, var_0.d.x, 842f, -451f))))));
    let var_2 = var_0;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_3.x)), _wgslsmith_f_op_f32(trunc(arg_3.x)), _wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(f32(-1f) * -478f)) * vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(abs(var_0.d.x)), _wgslsmith_f_op_f32(step(123f, var_0.d.x)), -1000f)) * vec4<f32>(_wgslsmith_f_op_f32(min(187f, var_0.d.x)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - -119f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.d.x, -490f)) * var_0.d.x))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-869f - 1000f)))), 1000f, var_1.x, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_1.xyy - arg_3), _wgslsmith_f_op_vec3_f32(-arg_3))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.wyy, arg_3))), ~u_input.a, _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(55439u, 27404u), abs(vec2<u32>(arg_2, arg_1))), firstTrailingBit(vec2<u32>(4294967295u, 54418u)), vec2<u32>(~var_2.c, var_2.c << (41337u % 32u))))));
    return Struct_2(func_2(), Struct_1(arg_3.yz, !var_2.b, _wgslsmith_dot_vec3_u32(min(abs(vec3<u32>(var_0.c, 0u, 31445u)), abs(vec3<u32>(1u, arg_1, var_0.c))), ~select(vec3<u32>(4294967295u, var_0.c, var_2.c), vec3<u32>(var_2.c, arg_2, 0u), var_2.b)), vec2<f32>(func_2().d.x, arg_3.x)), func_4(var_0.b, func_2(), var_2.c, !select(vec2<bool>(false, true), select(vec2<bool>(true, var_2.b), vec2<bool>(var_2.b, false), vec2<bool>(true, var_0.b)), false)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_2.a.x, 441f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-531f, var_2.a.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_3.x * -905f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-271f + -481f)), 746f));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<f32>) -> Struct_2 {
    return Struct_2(arg_0.c, Struct_1(_wgslsmith_div_vec2_f32(func_1(u_input.a.xz, ~4294967295u, 57871u & arg_0.b.c, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(381f, arg_2.x, arg_2.x)))).b.d, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_0.c.a - arg_2), _wgslsmith_f_op_vec2_f32(arg_0.b.a - arg_2)))), arg_0.a.b, arg_0.a.c, vec2<f32>(_wgslsmith_f_op_f32(arg_0.d.x * arg_0.b.d.x), arg_0.a.d.x)), Struct_1(arg_2, false, ~arg_0.b.c, vec2<f32>(arg_2.x, _wgslsmith_f_op_f32(-388f * _wgslsmith_f_op_f32(arg_0.d.x - arg_0.b.d.x)))), arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(~(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, u_input.a.x)), 0u, ~_wgslsmith_clamp_u32(27920u, ~1u, 16709u), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1103f)), 835f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-329f + 2777f), -1555f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -775f)))), vec3<i32>(u_input.a.x, u_input.a.x, -15775i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(518f, -1499f), vec2<f32>(603f, 310f)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(959f + 501f)), _wgslsmith_f_op_f32(floor(-1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(-vec4<i32>(-1i >> (var_0.a.c % 32u), u_input.a.x ^ u_input.a.x, ~(-55711i), 1i)), _wgslsmith_f_op_f32(round(var_0.d.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-305f - _wgslsmith_f_op_f32(var_0.c.a.x - var_0.d.x))), -1301f), abs(~u_input.a), abs(~select(~1337i, u_input.a.x, !var_0.a.b)));
}

