struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: vec2<u32>,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec2<f32>, 4>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec4<i32> {
    var var_0 = any(vec4<bool>(!all(vec3<bool>(true, true, true)), true, false, !all(vec4<bool>(true, true, true, true))));
    let var_1 = 19117u;
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -133f)));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2510f, 1780f) + _wgslsmith_f_op_f32(1027f - 1307f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(412f - -134f), _wgslsmith_f_op_f32(f32(-1f) * -400f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1006f, -640f)), 1f)))));
    let var_3 = ~(-(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 60641i, u_input.a), vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-10263i, 0i, u_input.a)), -vec3<i32>(0i, u_input.a, 2147483647i), vec3<i32>(12424i, u_input.a, u_input.a)) >> ((countOneBits(vec3<u32>(55015u, var_1, 11821u)) << (vec3<u32>(var_1, var_1, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u))));
    return vec4<i32>(-firstTrailingBit(0i), ~(~_wgslsmith_mod_i32(1i, select(-2147483647i, -2147483647i, true))), ~firstLeadingBit(-var_3.x), 0i);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_3) -> u32 {
    var var_0 = Struct_3(_wgslsmith_dot_vec3_i32(arg_2.e, -(~select(vec3<i32>(u_input.a, 30907i, -70846i), vec3<i32>(2147483647i, u_input.a, 32300i), vec3<bool>(arg_1.c, true, true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.d.d, _wgslsmith_f_op_f32(exp2(arg_2.d.b.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.d.c.x, 1171f) - global1[_wgslsmith_index_u32(0u, 4u)]))), _wgslsmith_mult_vec2_u32(arg_2.c, vec2<u32>(~(arg_1.b.a.a & 4294967295u), ~(~u_input.b.x))), arg_1.b.a, arg_0.wyz);
    return _wgslsmith_mult_u32(~_wgslsmith_div_u32(4294967295u << (~u_input.b.x % 32u), u_input.b.x), arg_1.b.a.a);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global1 = array<vec2<f32>, 4>();
    let var_0 = true;
    var var_1 = Struct_1(firstTrailingBit(func_4(func_3(), Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.c.x, -1852f, 1003f)), Struct_2(arg_0.a, vec2<u32>(73154u, arg_0.a.a)), true), Struct_3(firstTrailingBit(u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(499f, 308f)), ~arg_0.b, Struct_1(u_input.b.x, arg_0.a.b, vec3<f32>(arg_0.a.c.x, arg_0.a.d, arg_0.a.c.x), arg_0.a.d, vec2<f32>(arg_0.a.e.x, arg_0.a.b.x)), vec3<i32>(0i, 75610i, u_input.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-211f, arg_0.a.e.x), vec2<f32>(-2140f, 1959f), vec2<bool>(true, var_0)))))) + arg_0.a.b), arg_0.a.c, _wgslsmith_f_op_f32(-arg_0.a.e.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.b.x, 1699f) + vec2<f32>(arg_0.a.d, arg_0.a.b.x)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.a.b.x, arg_0.a.d)))))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.b.x, 203f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(arg_0.a.b + global1[_wgslsmith_index_u32(1u, 4u)]), global1[_wgslsmith_index_u32(1u, 4u)], all(vec2<bool>(false, false)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(var_1.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_1.c, vec3<f32>(var_1.b.x, -1000f, 1812f)) + vec3<f32>(1000f, var_1.b.x, var_1.e.x)) + vec3<f32>(_wgslsmith_f_op_f32(823f + 1384f), 808f, _wgslsmith_f_op_f32(ceil(808f)))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.b.x), -196f, 546f, -2197f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-564f, arg_0.a.d, 2325f, -313f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, var_2.x, var_1.c.x, arg_0.a.b.x))))));
    return arg_0.a;
}

fn func_5(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.a.e.x, -925f, -1626f, 373f))), vec4<f32>(-665f, 1052f, 1060f, -279f), false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.b.x, 2044f, arg_0.a.b.x, arg_0.a.c.x) * vec4<f32>(2085f, arg_0.a.c.x, 1000f, arg_0.a.c.x)))), vec4<f32>(-263f, _wgslsmith_div_f32(-134f, 112f), _wgslsmith_f_op_f32(-arg_0.a.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-526f, arg_0.a.d)))))));
    let var_1 = select(!(!vec2<bool>(true, any(vec4<bool>(false, false, true, false)))), vec2<bool>(true, all(vec2<bool>(true, true)) & true), vec2<bool>(all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true))));
    let var_2 = vec3<bool>(any(!select(select(vec4<bool>(true, var_1.x, true, true), vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(true, var_1.x, var_1.x, false)), vec4<bool>(var_1.x, var_1.x, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, var_1.x, true), var_1.x))), any(select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), all(vec3<bool>(false, var_1.x, false)))) & !(u_input.a == u_input.a), true);
    global0 = -392f;
    global0 = arg_0.a.e.x;
    return vec3<bool>(var_2.x, true, 58922u != reverseBits(arg_0.a.a));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = ~(reverseBits(min(arg_0.x, ~arg_0.x)) ^ reverseBits(u_input.b.x));
    let var_1 = vec2<u32>(~u_input.b.x, u_input.b.x << (abs(9921u) % 32u));
    let var_2 = Struct_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1164f, -585f)) + _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-817f, -391f)) + _wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1325f + 457f), -904f))), -1524f), Struct_2(Struct_1(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.b.x, 11801u), var_1.x), vec2<f32>(-2742f, _wgslsmith_div_f32(-1721f, -2078f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-253f, -875f, 132f) * vec3<f32>(1000f, -572f, -919f))), -367f, vec2<f32>(_wgslsmith_f_op_f32(153f * 359f), _wgslsmith_div_f32(875f, 385f))), u_input.b), any(func_5(Struct_2(func_2(Struct_2(Struct_1(arg_0.x, vec2<f32>(-396f, -827f), vec3<f32>(1474f, -778f, 164f), 162f, vec2<f32>(-1366f, 1637f)), vec2<u32>(u_input.b.x, 1u))), max(var_1, vec2<u32>(1u, u_input.b.x))))));
    let var_3 = var_2;
    var var_4 = 18056i;
    return Struct_1(~5990u, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(342f, var_2.b.a.c.x)), 471f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(598f, 888f) + var_3.a.yz))))), var_2.b.a.c, var_3.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-734f, -841f) + var_3.a.yx) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -438f), var_2.b.a.c.x), vec2<f32>(1598f, _wgslsmith_f_op_f32(var_3.b.a.b.x * var_2.b.a.d)))));
}

fn func_6(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_3(-u_input.a, _wgslsmith_div_vec2_f32(arg_0.c.xy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(arg_0.b))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(arg_0.e + arg_0.c.xx))))), ~min(_wgslsmith_sub_vec2_u32(u_input.b, u_input.b), ~u_input.b) ^ vec2<u32>(select(55948u, u_input.b.x, true) ^ func_1(vec2<u32>(arg_0.a, arg_0.a), vec2<i32>(5865i, u_input.a)).a, u_input.b.x), arg_0, vec3<i32>(reverseBits(_wgslsmith_mult_i32(min(-32776i, u_input.a), -2147483647i)), firstTrailingBit(_wgslsmith_add_i32(~14898i, max(u_input.a, u_input.a))), countOneBits(0i)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x - arg_0.d) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.b.x)))));
    let var_2 = var_0;
    global1 = array<vec2<f32>, 4>();
    global1 = array<vec2<f32>, 4>();
    return var_0.c.x;
}

fn func_7(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<u32>) -> u32 {
    global0 = _wgslsmith_f_op_f32(func_2(Struct_2(func_2(Struct_2(Struct_1(arg_2.x, vec2<f32>(1000f, -396f), vec3<f32>(-1158f, -257f, 389f), -636f, global1[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec2<u32>(29224u, u_input.b.x))), u_input.b)).d + 1092f);
    global1 = array<vec2<f32>, 4>();
    var var_0 = arg_2;
    let var_1 = select(-_wgslsmith_add_vec4_i32(firstLeadingBit(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), vec4<i32>(_wgslsmith_mod_i32(u_input.a, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-3248i, 18513i), vec2<i32>(u_input.a, 2147483647i)), func_3().x, -11827i)), abs(-min(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 7567i, u_input.a, 49401i), vec4<i32>(u_input.a, 51565i, 2147483647i, 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(-43682i, 1i, u_input.a, 2945i), vec4<i32>(2797i, u_input.a, u_input.a, 23839i)))), select(select(vec4<bool>(all(arg_1.zy), true, true, false), select(!vec4<bool>(arg_1.x, false, true, false), vec4<bool>(true, true, true, arg_1.x), select(vec4<bool>(true, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x), false)), false), vec4<bool>(true, arg_1.x, arg_1.x, true), !arg_1.x));
    var var_2 = vec2<bool>(true, true);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 4>();
    var var_0 = Struct_1(func_7(countOneBits(func_6(func_1(u_input.b, vec2<i32>(-69938i, u_input.a)))), vec3<bool>(!any(vec3<bool>(true, false, false)), true, false), max(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 31361u, 3378u, 37787u), vec4<u32>(4803u, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<u32>(1u, u_input.b.x, 1u, 43541u)) >> (vec4<u32>(~97733u, 29752u, ~u_input.b.x, ~6127u) % vec4<u32>(32u))), global1[_wgslsmith_index_u32(u_input.b.x, 4u)], _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1204f, 814f, 1531f), vec3<f32>(497f, -463f, -794f))), vec3<f32>(612f, -568f, 1383f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 1109f, -1050f) * vec3<f32>(1853f, -1000f, 368f)), vec3<f32>(-1337f, 1027f, 1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-299f, -385f, -162f))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-202f, 296f, 589f) * vec3<f32>(785f, 163f, -1303f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-582f, 132f, 573f), vec3<f32>(-481f, 634f, 558f))))))), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1648f - 2048f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(496f)), _wgslsmith_f_op_f32(floor(1092f))), _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(abs(111485u), 4u)] * _wgslsmith_f_op_vec2_f32(-vec2<f32>(136f, -312f))), any(vec4<bool>(true, false, true, true)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(u_input.b.x, 4u)] + global1[_wgslsmith_index_u32(25839u, 4u)])), func_2(Struct_2(Struct_1(59754u, global1[_wgslsmith_index_u32(u_input.b.x, 4u)], vec3<f32>(703f, -1000f, -245f), 632f, vec2<f32>(-372f, 1401f)), u_input.b)).e, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))))));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-func_2(Struct_2(Struct_1(var_0.a, vec2<f32>(var_0.e.x, var_0.b.x), var_0.c, var_0.e.x, var_0.c.yy), u_input.b)).d)))), var_0.c.x);
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(var_0.c)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-var_0.c), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.e.x, 1156f, 1059f))), true)), vec3<bool>(true, all(vec3<bool>(true, true, true)), false)))), Struct_2(Struct_1(10823u, var_0.c.zy, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-209f, var_0.d, -416f) + var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(global1[_wgslsmith_index_u32(var_0.a, 4u)], vec2<f32>(var_0.b.x, var_0.e.x)), vec2<f32>(472f, var_0.e.x))), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, ~1u), select(u_input.b, u_input.b, true))), !((var_0.a < u_input.b.x) && true));
    let x = u_input.a;
    s_output = StorageBuffer(~select(max(countOneBits(vec4<u32>(41908u, var_0.a, u_input.b.x, 27344u)), ~vec4<u32>(0u, 1u, 4294967295u, 61271u)), firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(5395u, var_0.a, u_input.b.x, 1u), vec4<u32>(2107u, var_0.a, var_1.b.b.x, u_input.b.x))), ~var_1.b.b.x < ~u_input.b.x), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-432f, func_2(Struct_2(Struct_1(1u, var_1.b.a.e, vec3<f32>(-115f, var_1.a.x, -967f), var_0.e.x, vec2<f32>(var_1.a.x, -1191f)), u_input.b)).b.x), -1000f)), 815f, var_0.d, func_2(Struct_2(Struct_1(var_0.a, vec2<f32>(-419f, 636f), var_1.a, -736f, global1[_wgslsmith_index_u32(var_1.b.b.x, 4u)]), u_input.b)).c.x), ~(~func_4(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -15155i, 73221i), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)), Struct_4(vec3<f32>(var_1.b.a.c.x, -2984f, var_1.b.a.b.x), var_1.b, var_1.c), Struct_3(u_input.a, global1[_wgslsmith_index_u32(u_input.b.x, 4u)], u_input.b, var_1.b.a, vec3<i32>(0i, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(f32(-1f) * -146f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -580f)) * 668f));
}

