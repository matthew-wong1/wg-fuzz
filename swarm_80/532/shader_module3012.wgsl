struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-arg_1.c);
    let var_1 = _wgslsmith_sub_vec3_i32(abs(vec3<i32>((arg_1.b ^ 36144i) >> (u_input.a.x % 32u), _wgslsmith_mod_i32(firstTrailingBit(arg_1.b), select(arg_1.b, arg_1.b, false)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.b, 27077i), vec2<i32>(-2147483647i, -9112i)))), abs(vec3<i32>(reverseBits(u_input.b), 1i, 43048i)));
    var var_2 = true;
    var_0 = -1571f;
    var_0 = _wgslsmith_f_op_f32(abs(arg_1.c));
    return vec3<bool>(arg_0, arg_0, arg_0);
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_2 {
    var var_0 = !select(!vec4<bool>(true, true, true, any(vec4<bool>(false, false, false, false))), vec4<bool>(_wgslsmith_f_op_f32(step(-1007f, -428f)) > -1000f, true, true, true), true);
    var var_1 = u_input.b;
    let var_2 = select(!vec3<bool>(var_0.x, !(!var_0.x), var_0.x), !func_3(var_0.x, Struct_2(Struct_1(vec4<f32>(1000f, 131f, 1481f, -1605f), 0u), 38621i, _wgslsmith_f_op_f32(f32(-1f) * -329f))), any(vec4<bool>(var_0.x, any(vec3<bool>(var_0.x, false, true)), func_3(true, Struct_2(Struct_1(vec4<f32>(781f, -360f, -821f, 1707f), 46391u), -2147483647i, 1121f)).x, ~arg_1 != select(-62195i, -2147483647i, var_0.x))));
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-162f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-213f, -404f)) + _wgslsmith_f_op_f32(step(-496f, -737f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-707f - _wgslsmith_f_op_f32(trunc(-536f))) - _wgslsmith_f_op_f32(1f - 405f))));
    var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-(~min(vec3<i32>(arg_1, -27289i, 0i), vec3<i32>(1i, -2147483647i, 1i))), vec3<i32>(i32(-1i) * -1i, i32(-1i) * -2147483647i, -25120i)), ~(-(~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, arg_1, arg_1), vec3<i32>(-17089i, -15435i, u_input.b)))));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, -611f, var_3, -1026f) * vec4<f32>(var_3, 486f, var_3, var_3))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(167f, -617f, var_3, 166f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3, -1000f, var_3, -1502f)))), 3347u), -(-1i >> (firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(85646u, 15739u, 1u, 1u))) % 32u)), _wgslsmith_f_op_f32(floor(var_3)));
}

fn func_4(arg_0: Struct_2) -> i32 {
    var var_0 = func_2(1u, arg_0.b);
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1333f, arg_0.a.a.x)), -368f)), var_0.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2(88499u, var_0.b).c))), var_0.a.a);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-597f)), var_0.a.a.x, _wgslsmith_f_op_f32(sign(var_1.x)), _wgslsmith_f_op_f32(trunc(-223f))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-108f, -1622f, var_1.x, var_0.c)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_0.a.a.x, arg_0.c, arg_0.a.a.x) - vec4<f32>(arg_0.a.a.x, -257f, var_0.a.a.x, 635f)) * var_0.a.a))))));
    let var_2 = firstLeadingBit(33638u);
    var var_3 = Struct_1(var_0.a.a, u_input.a.x);
    return reverseBits(_wgslsmith_mult_i32(-2147483647i | var_0.b, arg_0.b));
}

fn func_1() -> Struct_1 {
    var var_0 = 1i;
    var var_1 = ~abs(~_wgslsmith_dot_vec2_u32(u_input.a.zx, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a.yz)));
    var var_2 = _wgslsmith_f_op_f32(-1f);
    let var_3 = vec4<i32>(~func_4(func_2(countOneBits(1u), max(-22864i, -2147483647i))), 0i, _wgslsmith_mult_i32(-u_input.b, -countOneBits(_wgslsmith_sub_i32(2147483647i, u_input.b))), u_input.b);
    var var_4 = u_input.a.x;
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-376f, -383f, 1374f, -1106f), vec4<f32>(555f, -633f, 1816f, -171f))))))), u_input.a.x | ~21007u);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = 105763u;
    var_0 = _wgslsmith_div_u32(arg_1.b, 1u);
    var_0 = countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(select(1u, 1u, true), max(_wgslsmith_mult_u32(0u, 0u), ~4294967295u)), select(u_input.a.xz, firstTrailingBit(~u_input.a.yy), vec2<bool>(all(vec4<bool>(false, false, true, false)), true))));
    let var_1 = 13253i;
    var_0 = ~_wgslsmith_add_u32(arg_2.b, _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, u_input.a.x), 53461u | ~arg_2.b));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(func_2(4294967295u, ~abs(u_input.b)).a.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-150f, arg_3)) * 1558f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1831f, _wgslsmith_div_f32(-1000f, 872f), _wgslsmith_div_f32(-800f, 1828f), -2177f) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-121f, 1596f, -210f, 537f) - vec4<f32>(1000f, 693f, 1004f, 400f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-510f, -643f, -649f, 940f)), vec4<bool>(true, true, true, true)))), u_input.a.x), ~1i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1274f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(vec4<f32>(1239f, -1280f, -457f, 1000f), 0u), u_input.b, -1932f), func_1(), Struct_1(vec4<f32>(-691f, -509f, 910f, -1038f), 70257u), _wgslsmith_div_f32(-1000f, -1225f))) + func_1().a.x))));
    let var_2 = vec3<u32>(func_2(func_2(60710u, func_2(abs(4294967295u), 1i).b).a.b, abs(0i)).a.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 93158u, 69669u), _wgslsmith_sub_vec3_u32(u_input.a.xzx << (vec3<u32>(u_input.a.x, 1u, 1u) % vec3<u32>(32u)), ~vec3<u32>(22105u, 0u, u_input.a.x)) >> (vec3<u32>(8620u, ~var_1.a.b, 1u) % vec3<u32>(32u))), _wgslsmith_mod_u32(u_input.a.x, 42489u));
    var_0 = true;
    let var_3 = vec3<bool>(any(select(vec4<bool>(u_input.b < -2147483647i, true, true, true), vec4<bool>(true, false, true, all(vec3<bool>(true, false, false))), all(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false))))), false, false);
    var_0 = (firstLeadingBit(min(~1u, 4294967295u)) == (~func_2(4294967295u, 2700i).a.b & _wgslsmith_mult_u32(0u, func_2(0u, 0i).a.b))) & any(!select(!vec4<bool>(var_3.x, false, false, var_3.x), select(vec4<bool>(var_3.x, true, var_3.x, true), vec4<bool>(true, false, var_3.x, true), vec4<bool>(true, var_3.x, var_3.x, var_3.x)), !vec4<bool>(var_3.x, var_3.x, false, false)));
    var var_4 = var_1.a;
    var var_5 = ~(-39479i);
    let var_6 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_4.a.x, 1665f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a.a.x)) - _wgslsmith_f_op_f32(var_1.c + var_1.a.a.x))), var_4.a.x, _wgslsmith_f_op_f32(var_1.c - _wgslsmith_f_op_f32(max(var_4.a.x, _wgslsmith_f_op_f32(-var_1.a.a.x))))), 4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_4.b, 4294967295u), -min(vec2<i32>(_wgslsmith_mult_i32(-50150i, 0i), _wgslsmith_sub_i32(var_1.b, 0i)), abs(~vec2<i32>(-16144i, 1i))), select(u_input.a, ~vec4<u32>(var_6.b, var_1.a.b, 0u, 0u) >> (_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, vec4<u32>(1u, 7632u, var_4.b, 3953u)), ~u_input.a) % vec4<u32>(32u)), var_3.x & !(!var_3.x)), var_2, 51694u);
}

