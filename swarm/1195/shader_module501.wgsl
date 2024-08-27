struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: f32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(-1640f, 210f), vec2<f32>(122f, 894f), vec2<f32>(2144f, -1033f), vec2<f32>(-442f, -155f));

var<private> global1: array<f32, 13>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    var var_0 = true;
    var var_1 = Struct_3(vec2<i32>(1i, 1i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(1u, 13u)], 742f) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-332f, global1[_wgslsmith_index_u32(u_input.a, 13u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(4294967295u, 1u, u_input.a)), 4u)]))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.b, 4u)])))), ~min(u_input.a, abs(~21448u)), -vec2<i32>(~0i, 0i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(25365u, 4u)])));
    var_0 = arg_0.x;
    var var_2 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.c, var_1.c, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 44409u), ~vec2<u32>(u_input.a, 4294967295u))), ~(~vec3<u32>(4294967295u, 8971u, _wgslsmith_sub_u32(var_1.c, u_input.b))), ~_wgslsmith_mod_vec3_u32(~(vec3<u32>(u_input.a, u_input.a, 0u) ^ vec3<u32>(var_1.c, 2192u, u_input.b)), ~(vec3<u32>(4294967295u, 1u, u_input.b) & vec3<u32>(var_1.c, 0u, 4294967295u))));
    global0 = array<vec2<f32>, 4>();
    return var_1.b.x;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_mult_vec2_i32(countOneBits(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_1.b, arg_1.c, 0i), vec4<i32>(51854i, 1i, arg_1.b, arg_1.c)), 30865i << (u_input.b % 32u))), max(~(vec2<i32>(arg_1.c, 0i) >> (arg_0 % vec2<u32>(32u))), select(_wgslsmith_div_vec2_i32(vec2<i32>(22803i, arg_1.b), vec2<i32>(arg_1.c, -40909i)), min(vec2<i32>(arg_1.c, -1i), vec2<i32>(45843i, arg_1.b)), false))), vec2<f32>(-406f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 26206u), 13u)])) - global1[_wgslsmith_index_u32(~arg_1.d.x, 13u)])), 22862u, _wgslsmith_mult_vec2_i32(select(vec2<i32>(arg_1.c, arg_1.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1.b, arg_1.c), vec2<i32>(0i, 27190i), vec2<i32>(arg_1.c, arg_1.c)), arg_1.a.x) << (~arg_1.d.xz % vec2<u32>(32u)), ~(~_wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.c, 13980i), vec2<i32>(arg_1.b, arg_1.c)))), vec2<f32>(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(firstLeadingBit(~arg_0.x), 13u)])), _wgslsmith_f_op_f32(func_3(vec2<bool>(false, arg_1.a.x)))));
    global1 = array<f32, 13>();
    var var_1 = _wgslsmith_f_op_f32(-var_0.b.x);
    let var_2 = var_0.b;
    let var_3 = Struct_1(arg_1.a, select(~(-1i) | arg_1.b, 2147483647i, !arg_1.a.x), min(arg_1.c, i32(-1i) * -1i), abs(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.x, arg_1.d.x, u_input.a), vec3<u32>(1u, 4294967295u, 4221u), arg_1.d) ^ min(arg_1.d, arg_1.d), ~abs(arg_1.d))));
    return Struct_2(select(select(!vec2<bool>(false, arg_1.a.x), arg_1.a.xz, select(var_3.b < 23652i, true, var_3.a.x)), !(!(!vec2<bool>(arg_1.a.x, arg_1.a.x))), true), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) - _wgslsmith_f_op_f32(abs(var_0.b.x))), -343f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(473f, var_0.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.b.x, -891f, -559f, _wgslsmith_f_op_f32(f32(-1f) * -855f)))), var_3.a.x)), _wgslsmith_f_op_f32(floor(-1140f)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_3 {
    global1 = array<f32, 13>();
    var var_0 = Struct_1(vec4<bool>(any(arg_1), true, !arg_2.a.x, true || !(389f != arg_2.b.x)), _wgslsmith_clamp_i32(arg_3.x, abs(arg_3.x >> (u_input.a % 32u)), ~firstTrailingBit(arg_3.x)), -50667i, abs(_wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 33646u, 45621u), vec3<u32>(0u, 15249u, u_input.b), vec3<u32>(u_input.a, u_input.a, u_input.b))) << (~reverseBits(vec3<u32>(0u, u_input.b, 338u)) % vec3<u32>(32u))));
    var var_1 = Struct_1(var_0.a, var_0.b, min(-arg_3.x, -_wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_3.x, var_0.c, -1i), -34114i)), select(vec3<u32>(~(~4294967295u), var_0.d.x, var_0.d.x), var_0.d, true));
    global1 = array<f32, 13>();
    var var_2 = countOneBits(~_wgslsmith_mod_vec3_i32(-vec3<i32>(var_1.c, -1i, 32775i) & vec3<i32>(-1i, arg_3.x, -1i), _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(arg_3.x, var_1.b, -11824i)), ~vec3<i32>(var_0.c, 1i, -1i))));
    return Struct_3(~(-(~vec2<i32>(-93936i, var_0.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 13u)], arg_2.b.x), vec2<f32>(1000f, -1378f))))), reverseBits(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b, firstTrailingBit(u_input.b)), select(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.d.x, 11082u), var_0.d.xz), all(vec2<bool>(false, arg_1.x))))), ~_wgslsmith_clamp_vec2_i32(-reverseBits(var_2.zx), var_2.xx, firstTrailingBit(vec2<i32>(var_0.b, var_0.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(29751u, 4u)]), _wgslsmith_f_op_vec2_f32(max(arg_2.b.zw, arg_2.b.zw))), _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(1u, 4u)] + vec2<f32>(global1[_wgslsmith_index_u32(0u, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)])))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec2<bool>, arg_3: vec4<bool>) -> vec2<f32> {
    global1 = array<f32, 13>();
    let var_0 = Struct_2(vec2<bool>(!func_2(arg_0.zx, Struct_1(arg_3, 1i, -34443i, arg_0)).a.x, _wgslsmith_div_i32(0i ^ arg_1.d.x, i32(-1i) * -2147483647i) == arg_1.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1000f, arg_1.b.x, global1[_wgslsmith_index_u32(arg_0.x, 13u)], -1000f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1081f, global1[_wgslsmith_index_u32(arg_0.x, 13u)], -2300f, arg_1.e.x)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(740f, 486f, arg_1.b.x, -1304f) * vec4<f32>(arg_1.b.x, global1[_wgslsmith_index_u32(50972u, 13u)], arg_1.e.x, 578f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.e.x, 1761f, -104f, arg_1.b.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1028f, 603f, global1[_wgslsmith_index_u32(arg_1.c, 13u)], global1[_wgslsmith_index_u32(u_input.a, 13u)])) * _wgslsmith_f_op_vec4_f32(vec4<f32>(663f, arg_1.b.x, -186f, arg_1.b.x) + vec4<f32>(arg_1.b.x, global1[_wgslsmith_index_u32(u_input.a, 13u)], global1[_wgslsmith_index_u32(arg_0.x, 13u)], 159f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1149f, -217f, true)) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a, 13u)], arg_1.b.x)))))));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1741f, var_0.c))));
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-760f, -362f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_5(~vec3<u32>(1u, 4294967295u, u_input.b), func_4(Struct_2(vec2<bool>(true, true), vec4<f32>(-2002f, 1664f, global1[_wgslsmith_index_u32(5000u, 13u)], global1[_wgslsmith_index_u32(u_input.b, 13u)]), -276f), vec3<bool>(true, true, true), func_2(vec2<u32>(4294967295u, u_input.a), Struct_1(vec4<bool>(true, true, false, false), 11009i, 5679i, vec3<u32>(u_input.a, u_input.a, 65317u))), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, -22391i), vec2<i32>(1i, -1i))), vec2<bool>(true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false)))), vec2<f32>(383f, 1766f)));
    global1 = array<f32, 13>();
    var var_1 = func_4(Struct_2(vec2<bool>(all(vec2<bool>(true, true)), !any(vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-891f, 1f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 13u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(16277u, 13u)]))), var_0.x), !select(vec3<bool>(true, true, false), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), true), func_2(vec2<u32>(~4294967295u, u_input.a) & ~vec2<u32>(u_input.a, 62225u), Struct_1(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, false))), -14853i, 19329i, _wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.a, u_input.b, 0u), vec3<u32>(u_input.b, u_input.b, 28753u), vec3<bool>(true, false, true)), vec3<u32>(13590u, 4294967295u, u_input.b)))), ~func_4(func_2(~vec2<u32>(u_input.b, 34499u), Struct_1(vec4<bool>(true, false, false, true), 8959i, -59752i, vec3<u32>(0u, u_input.a, u_input.b))), vec3<bool>(all(vec3<bool>(true, true, false)), true, any(vec3<bool>(false, true, true))), Struct_2(vec2<bool>(true, true), _wgslsmith_div_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(u_input.a, 13u)], -172f, var_0.x, -357f), vec4<f32>(var_0.x, var_0.x, var_0.x, 444f)), _wgslsmith_f_op_f32(-var_0.x)), abs(max(vec2<i32>(0i, 1i), vec2<i32>(2147483647i, 21900i)))).a);
    global0 = array<vec2<f32>, 4>();
    let var_2 = Struct_2(vec2<bool>(false, u_input.b < 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(737f, var_0.x, 232f, var_0.x))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(1223f, var_1.b.x, -1620f, 258f) * vec4<f32>(-114f, var_1.e.x, var_1.e.x, 364f))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, global1[_wgslsmith_index_u32(37752u, 13u)], var_0.x, 120f)) * _wgslsmith_div_vec4_f32(vec4<f32>(955f, 473f, global1[_wgslsmith_index_u32(u_input.b, 13u)], var_1.b.x), vec4<f32>(-627f, var_1.b.x, global1[_wgslsmith_index_u32(26887u, 13u)], var_0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<bool>(true, false))), 632f)))));
    return var_2.a;
}

fn func_6(arg_0: Struct_2) -> StorageBuffer {
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(arg_0.b - _wgslsmith_f_op_vec4_f32(select(arg_0.b, _wgslsmith_f_op_vec4_f32(abs(arg_0.b)), true))))), arg_0.b.yyy);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 13>();
    global0 = array<vec2<f32>, 4>();
    var var_0 = vec3<bool>(true, true, false);
    let var_1 = vec2<bool>(var_0.x, true);
    var var_2 = _wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(14042u, 4u)]);
    var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, ~u_input.a, firstLeadingBit(1u), _wgslsmith_div_u32(4294967295u, 31825u)), abs(_wgslsmith_mod_vec4_u32(vec4<u32>(30668u, u_input.a, u_input.a, u_input.a), vec4<u32>(0u, u_input.b, u_input.b, 0u)))), 13u)], var_2.x));
    global1 = array<f32, 13>();
    let x = u_input.a;
    s_output = func_6(Struct_2(!select(func_1(), !vec2<bool>(var_1.x, true), var_0.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_2.x, 1223f, 575f, 249f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.x, 1192f, var_2.x, global1[_wgslsmith_index_u32(0u, 13u)])))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-958f)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 13u)])))));
}

