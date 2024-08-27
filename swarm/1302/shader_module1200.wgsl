struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: i32,
    b: bool,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec2<i32>) -> vec4<f32> {
    let var_0 = Struct_1(vec4<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -703f), _wgslsmith_f_op_f32(select(-638f, 386f, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-109f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(316f - 1771f)))), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1209f, -1252f)))))), select(vec4<bool>((global0[_wgslsmith_index_u32(arg_1, 7u)] & arg_0) >= ~arg_1, true, true, true), !vec4<bool>(all(vec4<bool>(false, false, true, false)), false, true, true), !((25659u != global0[_wgslsmith_index_u32(arg_1, 7u)]) & false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, -156f, 417f, -1135f))))), ~firstTrailingBit(vec3<u32>(50899u, 4294967295u, arg_0)) << (_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(arg_1, 13558u, u_input.c)) << (~vec3<u32>(0u, u_input.b, global0[_wgslsmith_index_u32(arg_1, 7u)]) % vec3<u32>(32u)), vec3<u32>(~global0[_wgslsmith_index_u32(53265u, 7u)], abs(u_input.c), ~8072u)) % vec3<u32>(32u)));
    var var_1 = Struct_1(vec4<f32>(1400f, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * -771f))), vec4<bool>(all(select(!var_0.b.xz, var_0.b.wy, vec2<bool>(true, true))), var_0.b.x, true, -_wgslsmith_dot_vec2_i32(u_input.a.xy, arg_2) >= firstTrailingBit(~(-2147483647i))), var_0.c, vec3<u32>(~(~arg_1), _wgslsmith_dot_vec2_u32(var_0.d.xy, reverseBits(countOneBits(var_0.d.zx))), _wgslsmith_sub_u32(~4294967295u, 4294967295u | u_input.c) | _wgslsmith_dot_vec3_u32(var_0.d, ~vec3<u32>(arg_0, u_input.c, arg_0))));
    var var_2 = Struct_3(abs(~arg_2.x), var_0.b.x, _wgslsmith_mod_i32(abs(-5135i), 1i) < _wgslsmith_mod_i32(reverseBits(u_input.a.x), (1i << (arg_0 % 32u)) << (20575u % 32u)), var_0);
    var_1 = var_0;
    let var_3 = firstTrailingBit(_wgslsmith_add_vec4_u32(~vec4<u32>(var_2.d.d.x, arg_0, var_2.d.d.x, var_1.d.x), vec4<u32>(45751u, ~arg_1, countOneBits(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.x, 70266u), var_0.d.xy))) >> (firstTrailingBit(reverseBits(countOneBits(vec4<u32>(u_input.c, global0[_wgslsmith_index_u32(var_1.d.x, 7u)], 4294967295u, arg_1)))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(143f, -1183f, 586f, 360f)))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.c), vec4<f32>(-479f, 1852f, _wgslsmith_f_op_f32(614f * var_2.d.c.x), _wgslsmith_f_op_f32(exp2(var_1.c.x))), !var_1.b.x))))));
}

fn func_2(arg_0: vec2<i32>) -> vec4<i32> {
    let var_0 = -firstLeadingBit(0i);
    let var_1 = 124f;
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(u_input.b, _wgslsmith_clamp_u32(26844u, global0[_wgslsmith_index_u32(u_input.c, 7u)], 0u), u_input.a.xz))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1 + 596f), var_1, _wgslsmith_div_f32(-341f, var_1), var_1)), ~abs(vec3<u32>(0u, global0[_wgslsmith_index_u32(1u, 7u)], 7686u) >> (vec3<u32>(global0[_wgslsmith_index_u32(29872u, 7u)], 39804u, u_input.c) % vec3<u32>(32u)))), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-728f, var_1, 1586f, var_1), vec4<f32>(-477f, var_1, -2356f, -185f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -147f, -958f, 600f)), true))), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(592f, -577f, 593f, var_1)))))), firstTrailingBit(reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 7u)], 7u)], global0[_wgslsmith_index_u32(26177u, 7u)], global0[_wgslsmith_index_u32(u_input.c, 7u)]), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(74706u, 7u)], 7u)], 7u)]))))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-745f, 466f, 223f, var_1)), vec4<f32>(-1097f, _wgslsmith_f_op_f32(min(var_1, var_1)), _wgslsmith_f_op_f32(min(192f, var_1)), _wgslsmith_f_op_f32(trunc(-277f)))), !vec4<bool>(all(vec2<bool>(false, true)), select(false, true, false), true, false), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1, _wgslsmith_f_op_f32(var_1 - -460f), _wgslsmith_f_op_f32(abs(1254f)), _wgslsmith_f_op_f32(trunc(var_1))))), vec3<u32>(7752u, _wgslsmith_div_u32(max(global0[_wgslsmith_index_u32(u_input.c, 7u)], global0[_wgslsmith_index_u32(0u, 7u)]), ~u_input.c), 1u)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1, -1000f, var_1)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1209f, var_1)), vec3<f32>(1562f, -2318f, -455f)))))));
    return vec4<i32>(-(arg_0.x ^ reverseBits(_wgslsmith_sub_i32(arg_0.x, u_input.a.x))), u_input.a.x, arg_0.x, reverseBits(var_0 & arg_0.x));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<u32>) -> vec4<f32> {
    var var_0 = ~arg_1.zz;
    let var_1 = firstTrailingBit(vec2<u32>(17576u, select(arg_1.x, 26368u, true)) ^ arg_1.zx) ^ ~abs(vec2<u32>(0u, global0[_wgslsmith_index_u32(~u_input.b, 7u)]));
    var var_2 = vec2<u32>(~countOneBits((var_0.x << (arg_1.x % 32u)) & _wgslsmith_div_u32(94366u, 60195u)), _wgslsmith_dot_vec4_u32(~abs(~vec4<u32>(1u, arg_1.x, 0u, var_1.x)), reverseBits(reverseBits(reverseBits(vec4<u32>(4294967295u, var_1.x, var_1.x, var_1.x))))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1723f, -521f) + _wgslsmith_f_op_f32(f32(-1f) * -1407f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-667f)), _wgslsmith_f_op_vec4_f32(func_3(30120u, global0[_wgslsmith_index_u32(42699u, 7u)], u_input.a.zy)).x))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1583f))));
    var var_4 = Struct_2(Struct_1(vec4<f32>(-656f, 1127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2799f))), 2331f), vec4<bool>(true, all(vec2<bool>(true, true)) == true, false, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-775f, -1789f, -388f, 255f)))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1093f, -877f, -320f, 690f))))), arg_1), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(358f, -1000f, 1000f, -1405f)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 262f, -302f, 847f)), _wgslsmith_div_vec4_f32(vec4<f32>(516f, 1880f, 1000f, 162f), vec4<f32>(682f, 991f, -384f, -1555f))))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false)), vec4<bool>(any(vec4<bool>(false, false, false, true)), true, var_0.x > var_2.x, select(false, true, false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1000f, 1285f, -947f, -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1000f, 1027f, 2133f) - vec4<f32>(-884f, 1585f, 279f, -1000f)))), vec4<f32>(1f, 1f, 1f, 1f)), ~vec3<u32>(22739u, _wgslsmith_div_u32(var_2.x, global0[_wgslsmith_index_u32(1u, 7u)]), arg_1.x)), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(global0[_wgslsmith_index_u32(1u, 7u)], firstLeadingBit(~57802u), -select(vec2<i32>(2147483647i, arg_0.x), u_input.a.zz, vec2<bool>(false, false)))), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1389f, -2222f, 1093f) + vec4<f32>(-3400f, 1029f, 823f, 877f)))))), _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(29254u, var_0.x, 6093u), vec3<u32>(4294967295u, var_2.x, 38586u)) << (arg_1 % vec3<u32>(32u)), vec3<u32>(80437u, 1u, 35402u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -1000f, -1065f)))) + _wgslsmith_div_vec3_f32(vec3<f32>(-1786f, 1686f, -376f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-369f, -691f, -855f) - vec3<f32>(1080f, -1420f, 1072f))))));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_4.a.c.x)), _wgslsmith_div_f32(1131f, var_4.c.a.x), true)))), var_4.d.x, _wgslsmith_f_op_f32(-484f - 394f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(345f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1057f) * -1152f)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    global0 = array<u32, 7>();
    var var_0 = Struct_2(arg_0, Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-753f, arg_0.c.x) * _wgslsmith_f_op_f32(179f + arg_0.c.x)), -504f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(0u, arg_0.d.x, 51884u))).x)), select(!select(arg_0.b, arg_0.b, true), vec4<bool>(arg_0.b.x, true, all(vec2<bool>(arg_0.b.x, arg_0.b.x)), all(vec3<bool>(arg_0.b.x, true, true))), !all(arg_0.b.xzw)), _wgslsmith_f_op_vec4_f32(arg_0.c + vec4<f32>(_wgslsmith_f_op_f32(-546f - -2738f), _wgslsmith_f_op_f32(arg_1.x - arg_0.a.x), _wgslsmith_f_op_f32(abs(arg_0.c.x)), _wgslsmith_f_op_f32(-arg_1.x))), ~arg_0.d), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.c) * arg_0.c), select(vec4<bool>(true, all(vec4<bool>(false, arg_0.b.x, true, arg_0.b.x)), arg_0.b.x, -55037i < u_input.a.x), vec4<bool>(all(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.b.x, true)), true, true, true), any(!arg_0.b.ww)), arg_0.c, reverseBits(select(arg_0.d, ~arg_0.d, arg_0.b.wxy))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.a.yxw, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, arg_1.x) - vec3<f32>(arg_0.a.x, 105f, -814f)))))));
    var var_1 = select(arg_0.b, vec4<bool>(all(select(!var_0.a.b.zy, vec2<bool>(arg_0.b.x, var_0.c.b.x), true)), var_0.c.b.x, arg_0.b.x, 4294967295u != _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.b, u_input.b, 15947u, var_0.b.d.x), vec4<u32>(44909u, 0u, 4294967295u, var_0.b.d.x), vec4<bool>(var_0.b.b.x, false, var_0.c.b.x, arg_0.b.x)), select(vec4<u32>(4294967295u, var_0.c.d.x, 4294967295u, 4294967295u), vec4<u32>(arg_0.d.x, arg_0.d.x, global0[_wgslsmith_index_u32(var_0.a.d.x, 7u)], 55934u), false))), !arg_0.b);
    let var_2 = vec2<i32>(u_input.a.x, _wgslsmith_sub_i32(~select(9106i, -1i, false), u_input.a.x << (30981u % 32u))) & u_input.a.yz;
    var_1 = select(select(!(!arg_0.b), select(!vec4<bool>(var_1.x, var_1.x, arg_0.b.x, true), !select(vec4<bool>(var_0.b.b.x, true, false, false), var_0.b.b, vec4<bool>(var_1.x, var_1.x, false, var_0.a.b.x)), select(vec4<bool>(true, true, true, var_0.b.b.x), var_0.b.b, true)), !select(var_0.b.d.x < 0u, var_0.c.b.x, !arg_0.b.x)), vec4<bool>(arg_0.b.x, all(select(!vec3<bool>(false, false, var_0.a.b.x), arg_0.b.zwz, vec3<bool>(true, var_1.x, true))), !all(vec2<bool>(var_0.b.b.x, false)), true), select(!arg_0.b, select(select(!vec4<bool>(true, var_0.a.b.x, false, false), select(vec4<bool>(var_1.x, arg_0.b.x, arg_0.b.x, arg_0.b.x), vec4<bool>(arg_0.b.x, false, true, true), false), select(vec4<bool>(false, true, var_0.c.b.x, var_0.a.b.x), vec4<bool>(false, var_0.a.b.x, var_0.a.b.x, true), var_1.x)), !select(vec4<bool>(arg_0.b.x, false, true, arg_0.b.x), var_0.b.b, arg_0.b.x), all(!arg_0.b)), ~(~u_input.b) >= abs(var_0.a.d.x)));
    return var_0.a;
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(882f, 1409f, -1514f, 1569f)))), vec4<bool>(true, true, any(vec3<bool>(true, true, true)), true), vec4<f32>(116f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-801f)) * _wgslsmith_f_op_f32(2460f - 1000f)))), -547f, -777f), ~firstLeadingBit(~(~vec3<u32>(3643u, global0[_wgslsmith_index_u32(18717u, 7u)], u_input.b))));
    let var_1 = vec2<bool>(true, var_0.b.x);
    var var_2 = _wgslsmith_sub_u32(~0u, var_0.d.x) >= 47608u;
    var_0 = func_5(Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2198f, -353f, var_0.c.x, var_0.a.x))))), var_0.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_2(u_input.a.zz), vec3<u32>(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18903u, 7u)], 7u)], u_input.b))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0.c), _wgslsmith_f_op_vec4_f32(select(var_0.a, var_0.c, var_0.b.x)), var_0.b.x | false))), ~var_0.d), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), var_0.b.x)), _wgslsmith_f_op_f32(var_0.a.x * 459f), var_0.a.x))));
    var_2 = max(_wgslsmith_div_i32(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x)) | u_input.a.x, ~u_input.a.x) > 28869i;
    return Struct_3(2147483647i, !((_wgslsmith_f_op_vec4_f32(func_3(1u, 70289u, u_input.a.xy)).x < _wgslsmith_f_op_f32(var_0.c.x * 554f)) == all(func_5(Struct_1(vec4<f32>(1123f, var_0.c.x, -1000f, -343f), var_0.b, vec4<f32>(var_0.c.x, var_0.c.x, -536f, var_0.c.x), var_0.d), var_0.a.wxw).b)), true, Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 606f, var_0.c.x, var_0.a.x))))), var_0.b, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-227f, _wgslsmith_div_f32(var_0.a.x, var_0.a.x), _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_div_f32(-851f, 965f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, 2559f, var_0.a.x, 1134f) * vec4<f32>(-867f, var_0.c.x, var_0.c.x, var_0.c.x))))), vec3<u32>(~u_input.c, var_0.d.x, u_input.b)));
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = arg_1.d.a.x;
    global0 = array<u32, 7>();
    let var_1 = u_input.a.yx;
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    return Struct_2(func_1().d, Struct_1(arg_1.d.a, select(func_1().d.b, !func_5(arg_1.d, arg_1.d.a.xxz).b, arg_1.c), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.d.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -609f), -1912f, arg_1.d.a.x))), vec3<u32>(~(~4294967295u), global0[_wgslsmith_index_u32(u_input.c, 7u)], ~4294967295u)), func_1().d, arg_0);
}

fn func_7(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> vec2<bool> {
    var var_0 = func_6(vec3<f32>(868f, _wgslsmith_f_op_f32(-arg_1.d.x), arg_2.d.x), func_1());
    var var_1 = true;
    var_0 = arg_2;
    global0 = array<u32, 7>();
    var var_2 = vec3<u32>(~arg_1.a.d.x, arg_0 >> (_wgslsmith_dot_vec3_u32(vec3<u32>(26870u, ~arg_2.b.d.x, global0[_wgslsmith_index_u32(~arg_2.c.d.x, 7u)]), vec3<u32>(arg_0, 27840u, select(arg_0, 3865u, false))) % 32u), _wgslsmith_dot_vec2_u32(arg_1.a.d.zy, vec2<u32>(select(var_0.a.d.x, global0[_wgslsmith_index_u32(arg_0, 7u)], false), _wgslsmith_mult_u32(countOneBits(arg_0), 60702u))));
    return arg_2.b.b.xy;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec2<bool>(true, true), func_7(u_input.b, func_6(vec3<f32>(-701f, 1198f, -1035f), func_1()), func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-284f, -1400f, -1252f)), Struct_3(0i, false, true, Struct_1(vec4<f32>(-246f, 589f, 413f, -1073f), vec4<bool>(true, false, true, true), vec4<f32>(-1763f, -1800f, 1091f, 297f), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(24107u, 7u)], 0u))))), vec2<bool>(true, !all(vec2<bool>(true, false)))), func_7((~global0[_wgslsmith_index_u32(1u, 7u)] >> ((4294967295u | u_input.c) % 32u)) & _wgslsmith_sub_u32(4294967295u, u_input.c), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(772f, -266f, 796f, -1432f) * vec4<f32>(-890f, 1045f, -1000f, -1000f)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-725f, 297f, -415f, -210f)), ~vec3<u32>(13404u, 1u, 22845u)), Struct_1(func_6(vec3<f32>(1560f, -2312f, 819f), Struct_3(u_input.a.x, true, false, Struct_1(vec4<f32>(-511f, 251f, 235f, -593f), vec4<bool>(false, false, false, true), vec4<f32>(469f, -1680f, 2049f, -697f), vec3<u32>(48537u, u_input.c, 4294967295u)))).c.c, vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(vec4<f32>(648f, -312f, -1157f, -1360f) * vec4<f32>(1573f, -834f, -1000f, 254f)), vec3<u32>(39205u, 48087u, global0[_wgslsmith_index_u32(9881u, 7u)])), func_6(_wgslsmith_f_op_vec3_f32(vec3<f32>(1852f, -1595f, -1000f) + vec3<f32>(-897f, 283f, 630f)), func_1()).b, func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1163f, 603f, 564f)), func_1()).a.a.wyx), Struct_2(Struct_1(vec4<f32>(1099f, 454f, 1064f, -1000f), vec4<bool>(true, true, false, true), vec4<f32>(351f, -226f, -133f, 2136f), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 0u, global0[_wgslsmith_index_u32(1u, 7u)]), vec3<u32>(global0[_wgslsmith_index_u32(38642u, 7u)], u_input.c, 1u))), Struct_1(func_1().d.a, func_6(vec3<f32>(1000f, -772f, -1500f), Struct_3(u_input.a.x, false, false, Struct_1(vec4<f32>(-840f, 1637f, 1156f, -2158f), vec4<bool>(true, false, true, true), vec4<f32>(-1893f, -1381f, -1345f, 1000f), vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 7u)], 19256u, 89022u)))).b.b, func_6(vec3<f32>(-309f, 182f, -1269f), Struct_3(2147483647i, false, false, Struct_1(vec4<f32>(-1013f, 1480f, 744f, 1786f), vec4<bool>(false, false, true, true), vec4<f32>(353f, 224f, -1000f, 447f), vec3<u32>(69317u, 4294967295u, 4294967295u)))).b.c, select(vec3<u32>(3367u, 1u, 4294967295u), vec3<u32>(15789u, 1059u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27237u, 7u)], 7u)]), vec3<bool>(true, true, true))), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 209f, -390f, 506f), vec4<f32>(817f, 1116f, 416f, 236f)), vec4<bool>(true, true, true, true), vec4<f32>(1323f, 456f, -862f, -529f), ~vec3<u32>(u_input.b, u_input.b, u_input.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -383f, -1625f))))), any(vec4<bool>(!(u_input.a.x >= u_input.a.x), true, 0u >= _wgslsmith_div_u32(0u, u_input.c), true)));
    let var_1 = vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(min(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.b, 7u)], global0[_wgslsmith_index_u32(u_input.b, 7u)], u_input.c), vec4<u32>(2593u, 12364u, 41369u, 10281u)), vec4<u32>(63828u, u_input.b, u_input.c, 51573u))), abs(vec4<u32>(0u, global0[_wgslsmith_index_u32(118872u, 7u)], 1u, 51506u)) & vec4<u32>(u_input.c >> (u_input.c % 32u), ~11331u, u_input.c, firstLeadingBit(4294967295u))), 7u)], 1u, 44547u, 44764u);
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let var_2 = ~((~(vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 7u)], 7u)], 7u)], 51371u, u_input.c) & var_1) >> (vec4<u32>(1772u, func_5(Struct_1(vec4<f32>(2296f, 1190f, 247f, 336f), vec4<bool>(var_0.x, var_0.x, false, false), vec4<f32>(-663f, 414f, -749f, 656f), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 7u)], 0u, 21675u)), vec3<f32>(804f, 1917f, 760f)).d.x, _wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(54671u, 7u)]), var_1.x) % vec4<u32>(32u))) << ((~vec4<u32>(u_input.b, 0u, global0[_wgslsmith_index_u32(var_1.x, 7u)], u_input.b) >> (~var_1 % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_3 = Struct_2(func_6(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1070f, 485f, -321f) - vec3<f32>(2078f, -1000f, -910f)))), _wgslsmith_f_op_vec3_f32(func_1().d.a.xxw + vec3<f32>(-1000f, -556f, -2041f)))), Struct_3(-1i, true, u_input.a.x > ~u_input.a.x, func_1().d)).c, func_6(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(func_6(vec3<f32>(387f, -1684f, -2155f), Struct_3(1i, true, false, Struct_1(vec4<f32>(-512f, 532f, 1189f, -769f), vec4<bool>(false, var_0.x, var_0.x, true), vec4<f32>(-2380f, -596f, 2256f, 262f), vec3<u32>(979u, var_2.x, var_2.x)))).a.a.yyy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1065f, 1640f, 328f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1631f, 887f, 674f), _wgslsmith_div_vec3_f32(vec3<f32>(-499f, -257f, 1370f), vec3<f32>(-2361f, 2176f, 642f)), vec3<bool>(true, var_0.x, true))))), func_1()).c, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1900f, -624f, -883f, 578f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2243f, -1717f, 233f, 912f)))), vec4<bool>(true, var_0.x | var_0.x, true, all(vec2<bool>(true, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1269f, -443f), -851f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-874f - -698f)) - vec4<f32>(137f, 1739f, -767f, 2127f)), var_2.wyx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(606f))), _wgslsmith_f_op_vec4_f32(func_3(~global0[_wgslsmith_index_u32(0u, 7u)], var_2.x | 46585u, reverseBits(u_input.a.xy))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-186f * 275f)))));
    var var_4 = -296f;
    let var_5 = Struct_3(_wgslsmith_div_i32(_wgslsmith_add_i32(reverseBits(u_input.a.x), firstLeadingBit(32846i)), u_input.a.x) >> (var_3.c.d.x % 32u), false, _wgslsmith_mod_i32(min(-u_input.a.x, u_input.a.x), abs(41411i)) == 28403i, var_3.a);
    let var_6 = var_3.c.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.d.x);
}

