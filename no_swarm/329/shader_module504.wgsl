struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    let var_0 = vec2<bool>(arg_2.a, arg_2.a);
    var var_1 = vec2<i32>(arg_1.x, arg_1.x);
    var var_2 = _wgslsmith_div_i32(-abs(~u_input.d), 17583i) < -arg_1.x;
    let var_3 = arg_1.xzy;
    let var_4 = Struct_2(4294967295u, arg_2, arg_2);
    return var_4;
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = vec2<bool>(true, arg_3.b.a);
    var var_1 = func_2(vec4<u32>(select(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.c, u_input.a.x, u_input.b, u_input.b), select(vec4<u32>(1u, 4294967295u, u_input.c, 9509u), vec4<u32>(u_input.c, 4294967295u, 77184u, 1u), vec4<bool>(false, false, var_0.x, false))), 4294967295u, arg_3.b.a), 0u, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(112417u, 0u), u_input.a)), 0u), -max(_wgslsmith_sub_vec4_i32(vec4<i32>(507i, u_input.d, -29470i, u_input.d), vec4<i32>(arg_1, arg_1, -46670i, arg_1)) | _wgslsmith_mult_vec4_i32(vec4<i32>(1i, arg_1, 0i, -1i), vec4<i32>(arg_1, arg_1, arg_1, -21704i)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(67595i, u_input.d, -12585i, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, arg_1, 40707i, 1i), vec4<i32>(arg_1, arg_1, -1i, arg_1)), ~vec4<i32>(arg_1, arg_1, -1i, u_input.d))), arg_3.b, -61434i).b;
    var_1 = func_2(firstLeadingBit(abs(_wgslsmith_sub_vec4_u32(abs(vec4<u32>(u_input.b, 65306u, 24973u, 70501u)), vec4<u32>(u_input.c, arg_3.a, 49942u, 0u)))), _wgslsmith_mod_vec4_i32(vec4<i32>(-u_input.d, arg_1, 2147483647i, arg_1), -vec4<i32>(-2147483647i, _wgslsmith_add_i32(arg_1, arg_1), arg_1 ^ u_input.d, select(u_input.d, 1i, true))), func_2(~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_3.a, u_input.b, arg_3.a), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 4294967295u, arg_3.a, arg_3.a), vec4<u32>(0u, arg_3.a, u_input.b, arg_3.a))), vec4<i32>(u_input.d, 52169i, -(~(-1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(18932i, -2147483647i, 2147483647i), vec3<i32>(1i, -2060i, arg_1)) >> (19068u % 32u)), Struct_1(u_input.a.x <= u_input.c, _wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1048f))), u_input.d).c, firstTrailingBit(-1i) & -24281i).c;
    var_0 = select(!select(!select(vec2<bool>(false, true), vec2<bool>(var_1.a, false), var_1.a), vec2<bool>(arg_3.b.a, !var_1.a), vec2<bool>(select(true, var_0.x, false), select(true, arg_3.b.a, var_1.a))), select(!vec2<bool>(true, !arg_3.b.a), !vec2<bool>(true, var_0.x), true), 3845i >= ~(~u_input.d));
    let var_2 = min(arg_1, arg_1);
    return vec4<bool>(true, !(!(!func_2(vec4<u32>(4294967295u, 1u, arg_3.a, arg_3.a), vec4<i32>(-2147483647i, 23921i, var_2, 42610i), Struct_1(arg_3.b.a, -258f, arg_3.b.b), 32203i).c.a)), (_wgslsmith_div_f32(_wgslsmith_f_op_f32(-125f + arg_0.x), _wgslsmith_div_f32(-1000f, 1086f)) == _wgslsmith_f_op_f32(min(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -154f)))) || var_0.x, func_2(firstLeadingBit(vec4<u32>(~15260u, firstLeadingBit(81453u), 1u, ~1u)), vec4<i32>(~(~2147483647i), _wgslsmith_sub_i32(u_input.d, u_input.d) ^ _wgslsmith_clamp_i32(var_2, 16393i, 6781i), _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.d, arg_1), -vec2<i32>(-1i, 2001i)), _wgslsmith_add_i32(0i, -1i)), Struct_1((true != arg_3.b.a) != true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(969f - 1266f), _wgslsmith_f_op_f32(f32(-1f) * -1074f)), _wgslsmith_f_op_f32(-arg_3.b.b)), -32502i).c.a);
}

fn func_1(arg_0: i32, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.b)))));
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1293f + 1021f), -1175f), arg_1.x) + arg_1.xz);
    let var_3 = select(func_3(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(arg_2.c, var_1.b, false)), _wgslsmith_f_op_f32(exp2(arg_1.x)))), 694f), u_input.d, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.b, -1229f))), _wgslsmith_f_op_vec2_f32(max(arg_1.xx, arg_1.yx)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1057f, arg_2.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(842f, arg_1.x))), vec2<bool>(var_1.a | false, true))), func_2(vec4<u32>(u_input.c, _wgslsmith_div_u32(0u, u_input.b), u_input.a.x, ~70939u), ~(-vec4<i32>(0i, u_input.d, 17250i, arg_0)), arg_2, 9624i)), select(select(select(vec4<bool>(var_1.a, true, arg_2.a, arg_2.a), select(vec4<bool>(arg_2.a, var_1.a, arg_2.a, arg_2.a), vec4<bool>(true, var_1.a, var_1.a, arg_2.a), false), !vec4<bool>(false, true, true, arg_2.a)), select(vec4<bool>(true, true, false, false), vec4<bool>(arg_2.a, var_1.a, var_1.a, arg_2.a), var_1.a), func_3(vec2<f32>(var_2.x, 292f), max(2147483647i, 27678i), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1476f, -672f), vec2<f32>(-978f, arg_2.c))), Struct_2(0u, arg_2, Struct_1(true, arg_1.x, -669f)))), select(!(!vec4<bool>(true, arg_2.a, arg_2.a, true)), !select(vec4<bool>(false, false, true, true), vec4<bool>(arg_2.a, var_1.a, true, false), true), var_1.a != var_1.a), false), func_3(_wgslsmith_f_op_vec2_f32(-arg_1.yx), -25989i, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-570f * 1060f), 668f)), 1929f), func_2(vec4<u32>(1u, _wgslsmith_sub_u32(u_input.c, u_input.c), 1u, 0u), firstLeadingBit(vec4<i32>(arg_0, u_input.d, 21301i, arg_0)), Struct_1(var_1.a | arg_2.a, 172f, var_1.c), _wgslsmith_dot_vec3_i32(-vec3<i32>(50311i, -2147483647i, u_input.d), ~vec3<i32>(0i, 0i, u_input.d)))));
    let var_4 = func_2(~(~min(min(vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, u_input.b), vec4<u32>(u_input.a.x, 28965u, 45146u, 346u)), ~vec4<u32>(u_input.a.x, 1u, 7698u, u_input.c))), _wgslsmith_mod_vec4_i32(-min(~vec4<i32>(u_input.d, 2147483647i, u_input.d, u_input.d), countOneBits(vec4<i32>(107831i, -2147483647i, 2147483647i, u_input.d))), countOneBits((vec4<i32>(u_input.d, arg_0, 1i, u_input.d) ^ vec4<i32>(u_input.d, arg_0, u_input.d, u_input.d)) | _wgslsmith_mod_vec4_i32(vec4<i32>(-17936i, -3023i, -2147483647i, 2147483647i), vec4<i32>(u_input.d, arg_0, -1i, arg_0)))), func_2(vec4<u32>(~33998u, 8969u, u_input.b, u_input.c), _wgslsmith_mod_vec4_i32(vec4<i32>(~arg_0, u_input.d, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 59723i, arg_0), vec3<i32>(1i, u_input.d, 2147483647i)), arg_0), _wgslsmith_add_vec4_i32(~vec4<i32>(2407i, -1i, -30753i, u_input.d), ~vec4<i32>(23445i, u_input.d, u_input.d, u_input.d))), func_2(~(~vec4<u32>(u_input.b, 1116u, u_input.a.x, u_input.a.x)), -(vec4<i32>(u_input.d, 84038i, -2147483647i, arg_0) >> (vec4<u32>(u_input.b, u_input.a.x, u_input.a.x, 55682u) % vec4<u32>(32u))), arg_2, arg_0).c, ~_wgslsmith_sub_i32(arg_0, u_input.d)).c, 21655i);
    return !all(vec2<bool>(!arg_2.a, 99270u > u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b;
    let var_1 = Struct_2(24226u, Struct_1(func_1(11816i, vec3<f32>(_wgslsmith_f_op_f32(352f - 889f), _wgslsmith_f_op_f32(-863f + 683f), _wgslsmith_f_op_f32(step(-1316f, 643f))), Struct_1(true, _wgslsmith_f_op_f32(1388f - -312f), _wgslsmith_f_op_f32(f32(-1f) * -348f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1182f - _wgslsmith_f_op_f32(-486f - -1050f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(265f * 1013f))))), func_2(~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(22687u, u_input.c, var_0), vec3<u32>(u_input.b, 77127u, var_0)), ~1u, ~1u, max(83676u, u_input.b)), firstTrailingBit(firstLeadingBit(countOneBits(vec4<i32>(-25233i, 19388i, u_input.d, u_input.d)))), Struct_1(false, _wgslsmith_f_op_f32(exp2(1f)), -1807f), _wgslsmith_sub_i32(1i, u_input.d) >> (1u % 32u)).b);
    var var_2 = 17710u;
    var_2 = u_input.a.x;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.c.c)) + _wgslsmith_f_op_f32(var_1.c.c - -573f)) + _wgslsmith_f_op_f32(-var_1.b.b)), -223f)) + var_1.c.c);
    var var_4 = select(!(!vec4<bool>(var_1.b.a, var_1.b.a, func_3(vec2<f32>(var_1.b.b, 140f), u_input.d, vec2<f32>(297f, 1531f), Struct_2(6022u, var_1.c, var_1.b)).x, true)), vec4<bool>(true, any(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.b, var_1.b.b) - vec2<f32>(var_1.b.b, var_1.c.c)), 0i & u_input.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(993f, var_1.c.c)), Struct_2(var_1.a, Struct_1(true, var_1.c.c, var_1.b.c), var_1.c)).zz), select(true, var_1.c.a, var_1.b.a) & var_1.c.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.c + 1032f) - _wgslsmith_div_f32(2812f, var_1.b.b)) == _wgslsmith_f_op_f32(var_1.c.c + -935f)), vec4<bool>(var_1.c.a, func_2(vec4<u32>(var_1.a, var_1.a, u_input.c, u_input.a.x), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d) ^ vec4<i32>(u_input.d, u_input.d, 2147483647i, u_input.d), func_2(vec4<u32>(0u, var_1.a, 1u, 1u), vec4<i32>(u_input.d, u_input.d, 1i, -35013i), var_1.b, u_input.d).b, _wgslsmith_clamp_i32(2147483647i, u_input.d, 2147483647i)).c.a & func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -228f)), -u_input.d, vec2<f32>(var_1.b.c, var_1.c.b), func_2(vec4<u32>(var_0, var_1.a, var_1.a, 1u), vec4<i32>(u_input.d, u_input.d, 1i, -4976i), var_1.c, u_input.d)).x, true, false));
    var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(875f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -464f))))));
    let var_5 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(30645u, 0u), u_input.a), firstLeadingBit(vec2<u32>(26165u, var_1.a))), _wgslsmith_add_vec2_u32(~vec2<u32>(var_1.a, u_input.a.x), ~u_input.a)), ~(~(~firstTrailingBit(u_input.b))));
}

