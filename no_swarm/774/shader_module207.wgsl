struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: bool, arg_2: f32) -> f32 {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, _wgslsmith_mod_i32(1i, -1i) & _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, 26325i), vec3<i32>(-2621i, 2147483647i, -18125i))), -79911i), countOneBits(-1i));
    let var_1 = min(_wgslsmith_sub_vec4_u32(vec4<u32>(~firstLeadingBit(u_input.a), u_input.a, 69243u, firstTrailingBit(4294967295u)), ~(~(vec4<u32>(7966u, u_input.a, 1u, 0u) | vec4<u32>(4582u, u_input.a, u_input.a, 68360u)))), ~(~max(vec4<u32>(0u, 21586u, 111518u, 12665u), vec4<u32>(34289u, 4294967295u, u_input.a, 43229u))) & vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(16469u, 21661u, u_input.a, u_input.a)), u_input.a, u_input.a, 0u));
    let var_2 = Struct_2(select(firstLeadingBit(~(~var_1)), vec4<u32>(_wgslsmith_dot_vec3_u32(firstLeadingBit(var_1.wzy), select(vec3<u32>(u_input.a, 18479u, 53367u), vec3<u32>(45603u, var_1.x, 47601u), true)), var_1.x & countOneBits(102533u), 0u, 46516u), true));
    var var_3 = vec4<i32>(-9658i, _wgslsmith_dot_vec3_i32(vec3<i32>(max(min(1i, 2147483647i), min(-2147483647i, var_0.x)), ~abs(var_0.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, 1i, var_0.x), vec3<i32>(1i, -51489i, 1926i))), abs(-_wgslsmith_div_vec3_i32(vec3<i32>(var_0.x, 44877i, var_0.x), vec3<i32>(0i, 1325i, var_0.x)))), countOneBits(-(~firstLeadingBit(-68133i))), ~47140i);
    var_0 = var_3.yw;
    return _wgslsmith_f_op_f32(f32(-1f) * -144f);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<i32>) -> i32 {
    let var_0 = ~(~(~arg_1.c.x));
    var var_1 = arg_1;
    let var_2 = 0u;
    var_1 = Struct_1(firstLeadingBit(min(_wgslsmith_clamp_vec3_u32(var_1.a, vec3<u32>(u_input.a, var_1.a.x, arg_1.c.x), var_1.a), _wgslsmith_add_vec3_u32(vec3<u32>(var_2, 0u, var_2), arg_0.c.a))) >> (~_wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(4294967295u, 1u, var_2)), ~var_1.a, abs(vec3<u32>(0u, var_1.a.x, 1u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(abs(-302f)), ~_wgslsmith_clamp_vec2_u32(~(~var_1.a.yy), ~(var_1.a.zz >> (vec2<u32>(var_2, arg_0.c.a.x) % vec2<u32>(32u))), vec2<u32>(arg_1.a.x >> (49985u % 32u), ~1u)), false || !arg_1.d, true);
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.b, -357f, -1248f, 1049f)), vec4<f32>(var_1.b, _wgslsmith_f_op_f32(906f + -1009f), _wgslsmith_f_op_f32(round(316f)), 619f)))))));
    return _wgslsmith_dot_vec2_i32(min(vec2<i32>(~0i, min(-39686i, 0i)), vec2<i32>(_wgslsmith_div_i32(0i, 36639i), ~(-1i))) | vec2<i32>(16570i, arg_3.x), select(select(vec2<i32>(-1i, -22388i) ^ arg_0.b.yy, max(arg_3, vec2<i32>(-52296i, 27335i)), select(vec2<bool>(var_1.e, true), vec2<bool>(false, arg_1.d), arg_1.e)) ^ arg_0.b.yz, vec2<i32>(-arg_3.x, 2147483647i), true));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_3 {
    let var_0 = ~vec3<u32>(firstTrailingBit(0u), 1u, ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 1u, 0u), vec3<u32>(9057u, arg_1, 44742u), vec3<u32>(arg_1, u_input.a, u_input.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, arg_1, 4294967295u), vec3<u32>(u_input.a, 1u, arg_1))));
    let var_1 = func_4(Struct_3(_wgslsmith_f_op_f32(func_3(vec4<bool>(true, true, true, true), all(vec3<bool>(true, false, true)), arg_0)), ~(-vec3<i32>(2147483647i, -1i, -2147483647i)), Struct_1(~vec3<u32>(arg_1, 4294967295u, u_input.a), _wgslsmith_f_op_f32(trunc(1000f)), var_0.zy, false, true)), Struct_1(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(-arg_0)), vec2<u32>(_wgslsmith_clamp_u32(4659u, 0u, 4294967295u), ~var_0.x), any(vec2<bool>(true, true)), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, arg_0)))))), ~firstLeadingBit(vec2<i32>(0i, -33612i))) <= _wgslsmith_div_i32(-51340i, 1i);
    let var_2 = abs(~(~var_0.x) >> (0u % 32u));
    var var_3 = max(vec4<u32>(78411u, _wgslsmith_mult_u32(11838u, var_0.x >> (countOneBits(97563u) % 32u)), 1u, abs(_wgslsmith_add_u32(var_2 & arg_1, 1u))), ~(~(~(vec4<u32>(17073u, arg_1, u_input.a, 0u) | vec4<u32>(var_0.x, arg_1, 25865u, 4294967295u)))));
    var_3 = ~_wgslsmith_sub_vec4_u32(~vec4<u32>(2046u, 4294967295u, 43464u, var_3.x), ~(vec4<u32>(var_0.x, 4294967295u, var_3.x, 1u) | vec4<u32>(var_3.x, 0u, u_input.a, 4294967295u))) | vec4<u32>(var_2, countOneBits(~(~124063u)), 22100u, 0u);
    return Struct_3(147f, vec3<i32>(func_4(Struct_3(-1000f, max(vec3<i32>(-9299i, 27465i, -1i), vec3<i32>(0i, -54311i, 2147483647i)), Struct_1(var_3.ywz, arg_0, vec2<u32>(arg_1, var_3.x), var_1, var_1)), Struct_1(vec3<u32>(4294967295u, var_0.x, 47678u), _wgslsmith_f_op_f32(trunc(-1000f)), var_3.zy, true, !var_1), vec2<f32>(294f, -1623f), vec2<i32>(1i, 1i)), max(-5842i, -8354i), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i)))), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(var_3.x, 4294967295u, 1u), 21944u & u_input.a, _wgslsmith_dot_vec2_u32(var_3.xw, vec2<u32>(var_2, 790u))), select(var_0, ~var_3.wxw, true)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1062f)), -1134f), -1000f)), vec2<u32>(~max(var_3.x, u_input.a), _wgslsmith_add_u32(var_3.x, 4294967295u)), all(!select(vec4<bool>(var_1, true, var_1, var_1), vec4<bool>(true, var_1, var_1, true), vec4<bool>(var_1, var_1, true, var_1))), var_1 && false));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: bool) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-169f, _wgslsmith_f_op_f32(-arg_2.c.b), _wgslsmith_f_op_f32(sign(-393f))))) * vec3<f32>(-405f, _wgslsmith_f_op_f32(floor(-874f)), arg_2.a));
    var var_1 = arg_2.c.a;
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x + 505f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), arg_2.a));
    var var_2 = arg_2.c.b;
    let var_3 = func_2(1000f, select(abs(_wgslsmith_clamp_u32(arg_2.c.a.x, _wgslsmith_mult_u32(40403u, 0u), 7591u)), reverseBits(1u), true));
    return func_2(var_3.c.b, var_3.c.c.x);
}

fn func_6(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = Struct_1(vec3<u32>(arg_2.c.a.x, arg_0.c.x, arg_0.a.x), arg_0.b, vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(arg_0.a, vec3<u32>(~21935u, arg_2.c.a.x, ~arg_2.c.c.x))), arg_0.d, false);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(floor(var_0.b)), _wgslsmith_f_op_f32(982f * _wgslsmith_f_op_f32(arg_2.c.b - arg_0.b))))));
    let var_2 = Struct_2(_wgslsmith_mod_vec4_u32(max(vec4<u32>(_wgslsmith_sub_u32(u_input.a, arg_0.c.x), 1u, arg_0.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(10692u, arg_2.c.c.x, 4294967295u, 0u), vec4<u32>(20997u, 0u, 1u, 41726u))), firstLeadingBit(vec4<u32>(35577u, 0u, 101964u, u_input.a))), min(~vec4<u32>(52777u, arg_0.c.x, var_0.a.x, arg_0.a.x), select(vec4<u32>(10415u, u_input.a, arg_0.c.x, u_input.a), vec4<u32>(0u, arg_0.a.x, 0u, arg_2.c.c.x), vec4<bool>(arg_2.c.e, var_0.d, true, true))) & _wgslsmith_mult_vec4_u32(abs(vec4<u32>(4294967295u, arg_2.c.a.x, 1u, arg_2.c.a.x)), firstTrailingBit(vec4<u32>(arg_2.c.c.x, 75522u, var_0.c.x, 1u)))));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-1248f * _wgslsmith_f_op_f32(-1054f + arg_0.b)), select(~(-vec3<i32>(-1494i, arg_2.b.x, -1i)), vec3<i32>(reverseBits(firstTrailingBit(5253i)), 1i, ~arg_2.b.x >> (~0u % 32u)), any(vec2<bool>(true, !arg_0.e))), arg_2.c);
    let var_4 = Struct_3(_wgslsmith_f_op_f32(1000f - func_5(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(15181i, 2147483647i, -706i), vec3<i32>(-2147483647i, arg_2.b.x, 31595i), vec3<i32>(arg_2.b.x, arg_2.b.x, 9654i)), arg_2.b, vec3<i32>(var_3.b.x, 1i, 33502i)), ~arg_2.b.xx << (~vec2<u32>(u_input.a, arg_0.c.x) % vec2<u32>(32u)), func_5(vec3<i32>(32708i, var_3.b.x, 2147483647i), var_3.b.xz << (var_3.c.a.zx % vec2<u32>(32u)), Struct_3(-556f, vec3<i32>(-2147483647i, var_3.b.x, arg_2.b.x), Struct_1(arg_0.a, arg_1.x, var_3.c.c, var_3.c.d, true)), u_input.a > 23232u), !(4294967295u > arg_0.a.x)).c.b), countOneBits(abs(firstTrailingBit(var_3.b))), func_2(_wgslsmith_f_op_f32(-arg_1.x), 1u).c);
    return Struct_3(_wgslsmith_f_op_f32(abs(arg_0.b)), _wgslsmith_mod_vec3_i32(var_3.b, select(firstLeadingBit(max(vec3<i32>(var_3.b.x, var_4.b.x, -2147483647i), vec3<i32>(var_3.b.x, 35397i, var_4.b.x))), vec3<i32>(firstTrailingBit(-2909i), ~43012i, ~(-1i)), !select(vec3<bool>(false, true, true), vec3<bool>(false, arg_2.c.e, true), arg_2.c.e))), func_5(var_3.b, func_5(arg_2.b, var_4.b.xy, Struct_3(_wgslsmith_f_op_f32(sign(1190f)), vec3<i32>(var_3.b.x, -17691i, 39204i), var_3.c), false).b.xx, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.b, 1000f))), _wgslsmith_clamp_vec3_i32(arg_2.b, min(vec3<i32>(var_3.b.x, 1i, -8821i), arg_2.b), _wgslsmith_sub_vec3_i32(arg_2.b, var_3.b)), Struct_1(reverseBits(vec3<u32>(var_4.c.a.x, 1u, 72932u)), _wgslsmith_f_op_f32(abs(var_4.c.b)), var_4.c.c, all(vec2<bool>(arg_0.d, false)), !arg_2.c.e)), arg_2.c.e).c);
}

fn func_1(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = 5740i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u & (21973u << (arg_0.a.x % 32u))), max(vec2<u32>(arg_0.c.x, ~arg_0.a.x), arg_0.a.xy)) % 32u);
    var_0 = 1i;
    let var_1 = func_6(arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(arg_0.b, -1398f, arg_0.e)), -886f, arg_0.b))), func_5(vec3<i32>(~(i32(-1i) * -7263i), 1i, -1i), _wgslsmith_add_vec2_i32(min(-vec2<i32>(-1014i, -2147483647i), select(vec2<i32>(-2147483647i, -1i), vec2<i32>(0i, 4907i), vec2<bool>(true, arg_0.e))), vec2<i32>(1i, ~6611i)), func_2(186f, 0u), !arg_0.e & all(vec2<bool>(false, false))));
    let var_2 = Struct_3(var_1.c.b, _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(var_1.b, ~(var_1.b | var_1.b)), -var_1.b), arg_0);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.c.b, 663f, arg_0.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b, 258f, -1353f), vec3<f32>(-1125f, -1244f, -1304f), false)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.a, -1171f, var_2.a), vec3<f32>(var_2.c.b, -1437f, var_2.c.b), false)) - vec3<f32>(143f, 1363f, arg_0.b))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(659f, arg_0.b, -319f))))));
    return vec3<f32>(1919f, var_3.x, -613f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec3<u32>(u_input.a, 4294967295u, 0u), -241f, vec2<u32>(7354u, 14374u), false, true)))))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(190f, -336f)))), _wgslsmith_f_op_f32(254f + _wgslsmith_f_op_f32(f32(-1f) * -1156f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -178f))))));
    var var_1 = !(!(func_5(vec3<i32>(1i, 1i, 1i), ~vec2<i32>(-1i, -2147483647i), Struct_3(1531f, vec3<i32>(-33503i, -26804i, -36957i), Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u), -1382f, vec2<u32>(u_input.a, 0u), true, true)), func_2(var_0.x, u_input.a).c.e).c.d == false));
    var_1 = true;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(1586f - 1061f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1902f))))));
    var var_3 = func_2(507f, u_input.a);
    let var_4 = vec3<i32>(40401i, var_3.b.x, _wgslsmith_mod_i32(~max(~var_3.b.x, -3252i), func_6(var_3.c, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(428f, var_2.x, var_3.c.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(364f, var_3.a, -602f) * vec3<f32>(var_0.x, var_0.x, var_3.c.b))), Struct_3(_wgslsmith_f_op_f32(sign(var_0.x)), vec3<i32>(-2020i, var_3.b.x, -2147483647i), var_3.c)).b.x));
    var var_5 = Struct_2(reverseBits(~select(vec4<u32>(1u, 11826u, u_input.a, u_input.a), vec4<u32>(u_input.a, 15400u, var_3.c.a.x, 18378u), var_3.c.e)) << (abs(~firstLeadingBit(vec4<u32>(0u, u_input.a, 54865u, 0u))) % vec4<u32>(32u)));
    let var_6 = max(-vec4<i32>(_wgslsmith_sub_i32(~var_3.b.x, -11415i), -1i, -var_4.x, -countOneBits(1i)), ~(-vec4<i32>(~1333i, 4661i, -23885i, firstLeadingBit(-41693i))));
    let x = u_input.a;
    s_output = StorageBuffer(67296u, reverseBits(0u) & (1u >> ((~80039u | var_3.c.c.x) % 32u)), var_6);
}

