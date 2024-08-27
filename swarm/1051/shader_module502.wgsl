struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec2<bool>, 11>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> bool {
    global0 = _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x >> (~1u % 32u), -abs(_wgslsmith_sub_i32(u_input.a.x, 2147483647i)), ~_wgslsmith_clamp_i32(global0.x << (u_input.b.x % 32u), 1071i, -global0.x), 1i), _wgslsmith_div_vec4_i32(-(~abs(vec4<i32>(global0.x, 13024i, 1i, 1i))), vec4<i32>(u_input.a.x, 0i, 79817i, -max(arg_1.c.a, 0i))));
    global0 = ~(~vec4<i32>(select(1i, _wgslsmith_sub_i32(2147483647i, u_input.a.x), any(arg_1.a.yy)), ~_wgslsmith_dot_vec3_i32(u_input.a, global0.yzw), -(1i >> (arg_1.c.c % 32u)), global0.x));
    let var_0 = Struct_3(Struct_2(vec3<bool>(select(all(vec2<bool>(arg_1.a.x, true)), arg_1.b.x == 603f, select(arg_1.a.x, arg_1.a.x, true)), !any(vec4<bool>(false, true, false, arg_1.a.x)), arg_1.c.c != ~0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.x, arg_1.b.x, -3131f))))), Struct_1(~25216i, _wgslsmith_f_op_f32(round(-1000f)), u_input.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -849f) - -700f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_1.b.x)), _wgslsmith_f_op_f32(trunc(arg_0.x))))) * 788f));
    global0 = vec4<i32>(-1i, global0.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(~(~3947i), -14087i), 1i), u_input.a.x);
    var var_1 = arg_1.c;
    return var_0.a.a.x;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1) -> vec4<i32> {
    global0 = -select(_wgslsmith_div_vec4_i32(-vec4<i32>(0i, 14953i, arg_1.c.a, -3298i), vec4<i32>(-5091i, -53797i, _wgslsmith_sub_i32(global0.x, arg_2.a), ~28315i)), -vec4<i32>(2147483647i, global0.x, 1113i, 5098i) ^ (_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 2147483647i, 6945i, 1i), vec4<i32>(-1i, arg_1.c.a, -1i, -5590i)) ^ ~vec4<i32>(global0.x, -19049i, global0.x, -31472i)), 453f <= _wgslsmith_f_op_f32(abs(arg_1.c.b)));
    var var_0 = -(~arg_1.c.a);
    var var_1 = Struct_3(arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), 1822f));
    var var_2 = true;
    let var_3 = var_1.a;
    return vec4<i32>(12586i, _wgslsmith_dot_vec2_i32(u_input.a.zy, -vec2<i32>(reverseBits(-2147483647i), -1i)), arg_2.a, _wgslsmith_add_i32(-38737i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-6619i, -1i, var_1.a.c.a, arg_2.a), -vec4<i32>(arg_2.a, 2147483647i, arg_1.c.a, var_3.c.a)), -20662i)));
}

fn func_2() -> f32 {
    global0 = -func_4(~select(vec3<u32>(1726u, 98195u, 17903u), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<bool>(true, true, true)), Struct_2(vec3<bool>(func_3(vec4<f32>(728f, -548f, -598f, 1017f), Struct_2(vec3<bool>(true, true, true), vec3<f32>(-867f, 429f, 1276f), Struct_1(global0.x, 413f, 1u))), any(global1[_wgslsmith_index_u32(4294967295u, 11u)]), false), vec3<f32>(-654f, _wgslsmith_f_op_f32(f32(-1f) * -250f), 1f), Struct_1(-14684i, _wgslsmith_f_op_f32(ceil(169f)), 7046u)), Struct_1(-(global0.x & 7720i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1225f)), ~(~u_input.b.x)));
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(768f * _wgslsmith_f_op_f32(trunc(445f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(882f - 729f)))))));
    var var_1 = Struct_3(Struct_2(vec3<bool>(true, u_input.b.x >= ~20798u, true), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -268f)) + vec3<f32>(var_0.x, 753f, -1220f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(387f, 539f, var_0.x) * vec3<f32>(965f, var_0.x, var_0.x)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1233f, var_0.x, var_0.x))))), Struct_1(global0.x, _wgslsmith_f_op_f32(-var_0.x), ~u_input.b.x << ((u_input.b.x & 0u) % 32u))), var_0.x);
    let var_2 = ~(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(u_input.b.x, 0u), u_input.b.x) | max(min(~var_1.a.c.c, 28669u), var_1.a.c.c));
    var_1 = Struct_3(var_1.a, _wgslsmith_div_f32(294f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(-417f, var_0.x, var_1.a.a.x)), 1000f))))));
    return -1146f;
}

fn func_5(arg_0: vec4<f32>) -> Struct_1 {
    global0 = vec4<i32>(~(-2147483647i), -u_input.a.x, (countOneBits(countOneBits(-2147483647i)) >> (~countOneBits(u_input.b.x) % 32u)) | global0.x, global0.x);
    var var_0 = arg_0.wz;
    let var_1 = u_input.b.x;
    var var_2 = Struct_2(vec3<bool>(!((u_input.a.x > -14515i) && true), !((5144i == global0.x) || true), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -412f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x + arg_0.x), var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(var_0.x - var_0.x))))), Struct_1(~global0.x ^ global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(var_0.x + 563f)) + arg_0.x), ~u_input.b.x));
    var_2 = Struct_2(vec3<bool>(!var_2.a.x, firstTrailingBit(firstTrailingBit(-16385i)) <= _wgslsmith_sub_i32(21714i & global0.x, -u_input.a.x), all(!(!var_2.a))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(arg_0.x, var_2.b.x), _wgslsmith_div_f32(_wgslsmith_div_f32(-764f, 672f), var_2.c.b), 467f))), var_2.c);
    return Struct_1(~(-41161i), _wgslsmith_f_op_f32(trunc(arg_0.x)), 0u);
}

fn func_6(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_3 {
    let var_0 = u_input.b.x;
    global0 = ~_wgslsmith_sub_vec4_i32(~(vec4<i32>(arg_3.a, arg_1.a, u_input.a.x, -35674i) & vec4<i32>(-7149i, 16523i, arg_3.a, arg_3.a)), reverseBits(firstLeadingBit(vec4<i32>(-22512i, 1i, 0i, 0i))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1655f, arg_3.b, arg_3.b, arg_3.b), vec4<f32>(arg_3.b, -2728f, arg_1.b, arg_3.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1048f, -230f, -513f, arg_1.b) * vec4<f32>(-2178f, -1247f, arg_3.b, -578f)))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(-254f, _wgslsmith_f_op_f32(select(-155f, 581f, true)), _wgslsmith_f_op_f32(abs(-1131f)), _wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, arg_1.b, -205f, -239f) + vec4<f32>(arg_3.b, 396f, arg_3.b, -1304f))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-arg_1.b)), -472f)), -1360f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), arg_1.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(step(var_1.x, -951f)))), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.b)) + _wgslsmith_div_f32(2373f, 112f)) + 1209f)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, arg_1.b, -561f, -1154f) - vec4<f32>(arg_3.b, var_1.x, arg_1.b, var_1.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1046f, 855f, -1121f, -2091f) * vec4<f32>(317f, -1318f, -1057f, -521f))))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.b), 965f, func_5(vec4<f32>(var_1.x, 1316f, 1281f, 515f)).b, arg_1.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -272f, var_1.x, var_1.x))), arg_0.x))));
    var_1 = vec4<f32>(var_1.x, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(717f, var_1.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(floor(1000f)))));
    return Struct_3(Struct_2(vec3<bool>(false, arg_0.x & false, false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.xww))), func_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-790f, arg_3.b, arg_1.b, arg_1.b)))), _wgslsmith_f_op_f32(arg_1.b - 1481f));
}

fn func_1() -> Struct_3 {
    let var_0 = firstLeadingBit(u_input.b.x | countOneBits(~33596u));
    return func_6(vec2<bool>(true, true), func_5(vec4<f32>(-1378f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1754f)) - -1082f), -138f)), ~_wgslsmith_div_i32(23294i, global0.x), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-634f, -598f, -280f, -1000f) + vec4<f32>(-359f, 1159f, 1000f, -655f))))));
}

fn func_7(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: Struct_2) -> u32 {
    var var_0 = arg_1.xzw;
    var var_1 = select(select(select(vec4<bool>(func_6(global1[_wgslsmith_index_u32(0u, 11u)], Struct_1(global0.x, arg_0.a.c.b, u_input.b.x), 22537i, arg_0.a.c).a.a.x, select(false, true, true), true, true), vec4<bool>(any(vec4<bool>(true, arg_0.a.a.x, arg_2.a.x, false)), any(arg_0.a.a), any(arg_0.a.a.zx), false), vec4<bool>(true, true && arg_2.a.x, true, any(vec4<bool>(false, arg_0.a.a.x, arg_2.a.x, arg_0.a.a.x)))), select(vec4<bool>(arg_0.a.a.x, func_3(arg_1, arg_2), any(vec2<bool>(true, false)), func_1().a.a.x), select(select(vec4<bool>(false, false, true, true), vec4<bool>(arg_2.a.x, true, arg_2.a.x, false), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, false, false)), vec4<bool>(arg_2.a.x, true, true, true), any(vec4<bool>(true, arg_2.a.x, false, arg_0.a.a.x))), vec4<bool>(arg_2.a.x, arg_0.a.a.x, any(vec4<bool>(arg_0.a.a.x, arg_2.a.x, true, arg_2.a.x)), arg_0.a.a.x)), true), !select(vec4<bool>(true, arg_2.a.x, false, true), select(select(vec4<bool>(true, arg_2.a.x, true, false), vec4<bool>(arg_2.a.x, arg_0.a.a.x, false, true), false), select(vec4<bool>(false, arg_0.a.a.x, arg_2.a.x, arg_2.a.x), vec4<bool>(arg_0.a.a.x, false, arg_0.a.a.x, arg_2.a.x), false), select(vec4<bool>(arg_2.a.x, true, arg_0.a.a.x, false), vec4<bool>(false, arg_0.a.a.x, arg_2.a.x, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, arg_2.a.x, arg_2.a.x, false))), !select(vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, true), vec4<bool>(arg_0.a.a.x, arg_2.a.x, arg_2.a.x, false), vec4<bool>(arg_0.a.a.x, true, arg_2.a.x, false))), arg_2.a.x);
    global1 = array<vec2<bool>, 11>();
    let var_2 = vec4<u32>(~arg_0.a.c.c, _wgslsmith_mult_u32(arg_2.c.c, 1u), u_input.b.x, 1u);
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.b.x)), 528f, 140f));
    return 88058u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_1(), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 2116f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(625f))))), 165f), func_6(!func_1().a.a.zx, Struct_1(_wgslsmith_sub_i32(~global0.x, -2147483647i), 538f, 7251u), firstTrailingBit(1i), func_5(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-437f, 204f, -1563f, 1391f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-590f, 122f, -170f, 1000f) - vec4<f32>(-1000f, 152f, -823f, -224f))))).a);
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-337f, _wgslsmith_f_op_f32(-459f - 1088f), _wgslsmith_f_op_f32(448f + -127f), _wgslsmith_f_op_f32(f32(-1f) * -1212f)) - vec4<f32>(_wgslsmith_f_op_f32(select(-2088f, -1085f, false)), -1000f, -233f, _wgslsmith_f_op_f32(-592f * -1154f))))));
    let var_2 = var_1.x;
    var_0 = 15006u >> ((u_input.b.x | u_input.b.x) % 32u);
    var var_3 = _wgslsmith_dot_vec4_i32(func_4(abs((vec3<u32>(99526u, u_input.b.x, u_input.b.x) & vec3<u32>(2321u, u_input.b.x, 0u)) ^ _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 0u))), func_6(global1[_wgslsmith_index_u32(1u, 11u)], Struct_1(-2147483647i, var_1.x, 55848u), _wgslsmith_mod_i32(max(-10047i, u_input.a.x), reverseBits(-30233i)), Struct_1(2147483647i >> (u_input.b.x % 32u), var_1.x, u_input.b.x)).a, Struct_1(max(_wgslsmith_mult_i32(30464i, global0.x), -2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.x)) - _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(4294967295u, u_input.b.x)))), select(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(global0.x, global0.x, 0i, 0i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, -1i, -2147483647i), vec4<i32>(-2147483647i, -1i, global0.x, global0.x))) & vec4<i32>(-1i, _wgslsmith_sub_i32(global0.x, global0.x), 16704i, _wgslsmith_mult_i32(u_input.a.x, 1i)), -vec4<i32>(1i, global0.x | u_input.a.x, u_input.a.x, -u_input.a.x), vec4<bool>(true, true, true, true)));
    let var_4 = -56221i;
    var var_5 = Struct_2(select(vec3<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)), true, !any(vec4<bool>(true, true, true, false))), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, false, true))), vec3<bool>(true, true, true), func_6(global1[_wgslsmith_index_u32(~4294967295u, 11u)], func_1().a.c, select(var_4, global0.x, true), Struct_1(-1i, 355f, 4294967295u)).a.a), !select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_1.wxx, vec3<f32>(911f, var_2, -690f), vec3<bool>(true, true, true))))))), Struct_1(func_4(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, u_input.b.x, 1u), ~vec3<u32>(25628u, u_input.b.x, 27858u)), func_6(!global1[_wgslsmith_index_u32(u_input.b.x, 11u)], Struct_1(global0.x, -255f, u_input.b.x), 3461i, func_6(global1[_wgslsmith_index_u32(28611u, 11u)], Struct_1(u_input.a.x, var_1.x, u_input.b.x), -7254i, Struct_1(1i, var_2, u_input.b.x)).a.c).a, Struct_1(_wgslsmith_mult_i32(75107i, 1i), 1133f, ~113598u)).x, -1000f, u_input.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(func_6(!select(!vec2<bool>(false, var_5.a.x), !var_5.a.yz, var_5.a.zy), var_5.c, -1i, func_5(var_1)).a.b.yy, var_1);
}

