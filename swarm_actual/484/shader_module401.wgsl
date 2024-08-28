struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    let var_0 = countOneBits((_wgslsmith_div_u32(u_input.d.x, 17533u) & ~30762u) << (15528u % 32u)) >= ~(~46509u);
    var var_1 = arg_1.a.x;
    var_1 = ~u_input.b;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(316f, _wgslsmith_f_op_f32(f32(-1f) * -350f))) - -1000f), 741f);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1226f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-358f * var_2) + 648f)));
    return firstTrailingBit(_wgslsmith_div_u32(~((u_input.b | 68533u) & ~arg_1.a.x), arg_1.a.x >> (0u % 32u)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: u32, arg_3: u32) -> vec4<u32> {
    var var_0 = max(~_wgslsmith_div_vec2_u32(~(~u_input.d.xx), arg_1.a.yy), vec2<u32>(arg_2, arg_1.a.x));
    let var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -746f))) + arg_0.x);
    var_0 = reverseBits(abs(arg_1.a.xz));
    var var_3 = arg_1;
    return select(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(1486u, 0u << (0u % 32u)), arg_1.a.x), 0u, firstTrailingBit(~66971u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, arg_2), ~0u, u_input.b), ~_wgslsmith_mult_u32(0u, u_input.d.x))), vec4<u32>(4294967295u, ~4294967295u | _wgslsmith_dot_vec4_u32(~arg_1.a, reverseBits(vec4<u32>(arg_3, 4294967295u, u_input.b, 1u))), 0u, ~33072u), select(!var_3.b, vec4<bool>(var_2 >= _wgslsmith_f_op_f32(f32(-1f) * -346f), any(arg_1.b) == var_3.b.x, all(vec4<bool>(true, true, true, var_3.b.x)), any(select(var_3.b.wy, var_3.b.xw, true))), false));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(655f, 1551f, false))), 548f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2318f + 1214f), 835f), _wgslsmith_f_op_f32(select(-985f, _wgslsmith_f_op_f32(select(-1868f, 217f, arg_0.b.x)), arg_0.b.x || arg_0.b.x))), Struct_1(vec4<u32>(max(u_input.d.x, arg_0.a.x), ~27216u, min(u_input.b, 1u), 49981u), select(arg_0.b, arg_0.b, vec4<bool>(true, arg_0.b.x, true, arg_0.b.x)), _wgslsmith_mod_vec2_i32(vec2<i32>(-7694i, 26612i), vec2<i32>(-66582i, u_input.a.x)), -(arg_0.c.x << (70342u % 32u))), _wgslsmith_mod_u32(firstTrailingBit(abs(arg_0.a.x)), arg_0.a.x), max(func_3(arg_0, Struct_1(vec4<u32>(42668u, u_input.b, 76306u, 0u), vec4<bool>(arg_0.b.x, true, arg_0.b.x, true), vec2<i32>(-53835i, 68802i), 1i), Struct_1(vec4<u32>(372u, u_input.d.x, u_input.b, arg_0.a.x), arg_0.b, vec2<i32>(u_input.c.x, 11554i), arg_0.c.x)), 4294967295u)), !(!(!arg_0.b)), vec2<i32>(_wgslsmith_clamp_i32(-1i, u_input.c.x, 35360i << (u_input.b % 32u)), ~(~3670i)) | arg_0.c, -(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_0.c, vec2<i32>(3774i, arg_0.c.x)), arg_0.c.x) ^ firstTrailingBit(~arg_0.c.x)));
    let var_1 = Struct_2(!vec2<bool>(arg_0.b.x, select(!var_0.b.x, any(vec3<bool>(var_0.b.x, var_0.b.x, true)), var_0.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(~u_input.a.x, _wgslsmith_add_i32(var_0.d >> (1u % 32u), -2147483647i), select(0i, ~arg_0.d, true)), vec3<i32>(~firstLeadingBit(6374i), firstLeadingBit(~2147483647i), arg_0.d)), Struct_1(~vec4<u32>(arg_0.a.x, func_3(Struct_1(var_0.a, var_0.b, u_input.c, -2147483647i), var_0, arg_0), ~arg_0.a.x, 63522u), arg_0.b, firstLeadingBit(arg_0.c) & _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(arg_0.d, arg_0.d)), -vec2<i32>(-1i, var_0.c.x)), _wgslsmith_add_i32(-var_0.d, max(~var_0.d, -arg_0.d))));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(-899f, -157f, -506f, -527f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(380f, -531f, -690f, 454f)))))))));
    var var_3 = vec2<bool>(true, all(!arg_0.b.wyy));
    let var_4 = 61329u;
    return Struct_1(var_0.a, vec4<bool>((var_3.x && var_3.x) || (!var_1.a.x & all(var_0.b.zy)), true, var_3.x == all(select(vec4<bool>(true, false, arg_0.b.x, arg_0.b.x), var_0.b, true)), var_3.x), min(arg_0.c, firstTrailingBit(_wgslsmith_mult_vec2_i32(arg_0.c >> (var_0.a.ww % vec2<u32>(32u)), vec2<i32>(arg_0.c.x, 22134i)))), _wgslsmith_add_i32(~(-25212i), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-50519i, -3227i, u_input.c.x, 0i), ~vec4<i32>(u_input.a.x, arg_0.c.x, var_1.b, 2147483647i)))));
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_0.x;
    var var_1 = arg_2.b;
    var_1 = !func_2(arg_2).b;
    let var_2 = Struct_2(select(arg_2.b.xw, vec2<bool>(arg_1.c.b.x, any(vec4<bool>(true, arg_2.b.x, arg_1.c.b.x, true))), !select(func_2(arg_2).b.xy, !arg_2.b.yy, vec2<bool>(arg_2.b.x, true))), ~2147483647i, Struct_1(countOneBits(vec4<u32>(30599u, 42621u, arg_2.a.x, 0u)) ^ ~(~vec4<u32>(4294967295u, arg_1.c.a.x, arg_1.c.a.x, u_input.d.x)), !vec4<bool>(arg_0.x <= 2147483647i, !var_1.x, arg_2.b.x, false), arg_1.c.c, arg_2.c.x & arg_1.b));
    var_1 = select(var_2.c.b, arg_2.b, !(!(!func_2(var_2.c).b)));
    return Struct_1(arg_1.c.a, arg_2.b, -(~vec2<i32>(-20506i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.d, 1i, arg_1.b, 2147483647i), arg_0))), arg_0.x);
}

fn func_6(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = vec4<u32>(func_2(func_2(Struct_1(arg_1.a, !vec4<bool>(true, arg_2, arg_2, false), vec2<i32>(u_input.a.x, 28830i), firstLeadingBit(-19683i)))).a.x, 1u, arg_0.x, 0u);
    var var_1 = arg_1.b;
    var var_2 = select(vec2<u32>(arg_0.x, ~firstLeadingBit(arg_0.x)), vec2<u32>(countOneBits(~arg_0.x & 1u), 64835u), vec2<bool>(all(select(var_1.yy, arg_1.b.xw, true)), all(vec4<bool>(any(arg_1.b.xxx), true, arg_2 && false, true))));
    var var_3 = Struct_2(!arg_1.b.zx, _wgslsmith_div_i32((func_2(arg_1).c.x << (0u % 32u)) << (firstLeadingBit(select(arg_0.x, 23417u, arg_2)) % 32u), ~(~countOneBits(u_input.c.x))), Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(arg_0, ~arg_1.a), vec4<u32>(arg_0.x, ~arg_1.a.x, u_input.d.x, min(1u, 0u))), func_2(Struct_1(~vec4<u32>(26729u, 0u, 98267u, 1u), !arg_1.b, ~vec2<i32>(arg_1.d, -5766i), _wgslsmith_div_i32(arg_1.c.x, 4279i))).b, vec2<i32>(_wgslsmith_sub_i32(u_input.c.x, u_input.a.x | 11911i), u_input.c.x << (~0u % 32u)), u_input.a.x));
    let var_4 = Struct_2(func_5(-vec4<i32>(_wgslsmith_sub_i32(var_3.c.d, var_3.c.c.x), -1i, ~u_input.c.x, u_input.c.x), Struct_2(arg_1.b.xx, arg_1.d, func_2(Struct_1(var_3.c.a, arg_1.b, u_input.c, var_3.b))), var_3.c).b.ww, -2147483647i & (firstLeadingBit(1i) | countOneBits(firstTrailingBit(0i))), Struct_1(vec4<u32>(~abs(1u), 1u, arg_0.x, 47669u), func_2(func_5(-vec4<i32>(var_3.c.d, -24996i, -2147483647i, 0i), Struct_2(vec2<bool>(arg_2, false), arg_1.d, arg_1), var_3.c)).b, vec2<i32>(1i, u_input.c.x), 1i));
    return func_5(select(-vec4<i32>(var_4.c.c.x, arg_1.c.x, -53001i, u_input.c.x), firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-47226i, -23536i, u_input.c.x, 1i), vec4<i32>(-23422i, 1i, arg_1.d, arg_1.d)) >> (vec4<u32>(36451u, arg_1.a.x, var_3.c.a.x, var_3.c.a.x) % vec4<u32>(32u))), select(var_4.a.x, all(select(vec4<bool>(arg_2, var_3.c.b.x, var_4.c.b.x, var_1.x), arg_1.b, arg_1.b)), (false || var_3.c.b.x) & false)), Struct_2(vec2<bool>(true, true), ~var_4.b, func_5(vec4<i32>(u_input.c.x, u_input.a.x, 2147483647i, 1i) ^ vec4<i32>(var_3.c.c.x, u_input.a.x, 8501i, 10998i), Struct_2(vec2<bool>(arg_1.b.x, false), -2147483647i, func_2(Struct_1(arg_0, vec4<bool>(false, arg_2, var_3.c.b.x, var_1.x), vec2<i32>(u_input.a.x, var_4.b), -2147483647i))), var_3.c)), func_2(Struct_1(abs(vec4<u32>(arg_1.a.x, 33845u, 334u, 1u)), select(arg_1.b, !var_4.c.b, false), countOneBits(u_input.c), -54343i)));
}

fn func_1(arg_0: u32) -> u32 {
    let var_0 = func_6(~vec4<u32>(_wgslsmith_add_u32(max(u_input.b, u_input.d.x), 1u), ~u_input.b, u_input.d.x, ~52428u), func_5(-_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(39490i, u_input.c.x, -2147483647i, 30246i), vec4<i32>(43782i, 25486i, 2147483647i, u_input.c.x), vec4<i32>(0i, u_input.a.x, -1i, -2147483647i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, u_input.a.x, 21535i, u_input.a.x), vec4<i32>(u_input.c.x, 15664i, -9506i, -55477i)), select(vec4<i32>(u_input.a.x, u_input.a.x, 1i, -2147483647i), vec4<i32>(u_input.c.x, -33880i, u_input.c.x, u_input.a.x), vec4<bool>(true, true, true, false))), Struct_2(vec2<bool>(true, false), ~(-30553i) | _wgslsmith_mod_i32(20959i, u_input.a.x), func_2(Struct_1(vec4<u32>(u_input.d.x, u_input.b, u_input.d.x, 34537u), vec4<bool>(false, false, true, false), vec2<i32>(-1i, 2147483647i), u_input.c.x))), func_2(func_2(Struct_1(vec4<u32>(u_input.b, 0u, u_input.b, u_input.b), vec4<bool>(true, false, false, false), vec2<i32>(u_input.c.x, u_input.a.x), 0i)))), !(!func_2(Struct_1(vec4<u32>(50716u, 0u, arg_0, u_input.b), vec4<bool>(true, false, false, true), u_input.c, -8062i)).b.x));
    let var_1 = _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, _wgslsmith_mod_u32(firstTrailingBit(4294967295u), ~var_0.a.x), ~(~114924u)), ~firstTrailingBit(func_6(vec4<u32>(4294967295u, u_input.d.x, arg_0, 17141u), Struct_1(vec4<u32>(82667u, arg_0, u_input.b, 4294967295u), var_0.b, var_0.c, var_0.c.x), var_0.b.x).a.zzx), vec3<u32>(89233u, _wgslsmith_mod_u32(4294967295u, var_0.a.x), (arg_0 | 36402u) | 4294967295u)) | var_0.a.zwx;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1016f * _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var_2 = 2365f;
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1335f), _wgslsmith_f_op_f32(step(-643f, 354f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-328f + -1000f) * _wgslsmith_f_op_f32(max(805f, 143f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -927f), _wgslsmith_f_op_f32(566f - -2373f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1311f))));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(u_input.b, ~func_1(u_input.b)), 0u), u_input.d.x & ~1u);
    var var_1 = _wgslsmith_div_i32(~func_5(~(-vec4<i32>(-52261i, u_input.a.x, u_input.a.x, u_input.a.x)), Struct_2(vec2<bool>(true, true), u_input.c.x << (u_input.b % 32u), func_6(vec4<u32>(60042u, u_input.b, u_input.d.x, 16847u), Struct_1(vec4<u32>(115551u, 1u, 56447u, u_input.d.x), vec4<bool>(false, false, false, false), u_input.c, 0i), true)), Struct_1(vec4<u32>(0u, var_0.x, var_0.x, 1u), vec4<bool>(true, true, false, true), u_input.a.yy & vec2<i32>(-23652i, u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.a.x), vec2<i32>(25934i, u_input.a.x)))).d, _wgslsmith_div_i32(u_input.a.x, -1i));
    var_1 = 43133i;
    let var_2 = min(u_input.b, countOneBits(~93084u));
    var_1 = -(u_input.c.x ^ -func_2(Struct_1(vec4<u32>(u_input.d.x, 0u, 1u, var_2), vec4<bool>(false, false, false, true), vec2<i32>(-1i, -1036i), u_input.a.x)).c.x);
    var var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(func_2(Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2, 44505u, 1u, 25833u), vec4<u32>(var_2, u_input.b, var_0.x, 4294967295u)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), false), abs(u_input.c), ~47437i)).d, -(~func_5(vec4<i32>(u_input.a.x, u_input.c.x, 2147483647i, 0i), Struct_2(vec2<bool>(true, true), u_input.c.x, Struct_1(vec4<u32>(u_input.d.x, u_input.b, 17476u, u_input.b), vec4<bool>(true, false, false, true), vec2<i32>(-2147483647i, u_input.a.x), -1i)), Struct_1(vec4<u32>(70233u, 4294967295u, u_input.b, 72054u), vec4<bool>(true, false, false, false), vec2<i32>(0i, -2147483647i), u_input.c.x)).d), -u_input.c.x ^ _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), -u_input.a.xx)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.yy, _wgslsmith_add_vec4_u32(func_2(Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, u_input.d.x, u_input.b, var_2), vec4<u32>(1u, 30519u, var_2, u_input.d.x)), vec4<bool>(true, true, true, true), max(var_3.zx, vec2<i32>(var_3.x, u_input.c.x)), _wgslsmith_add_i32(var_3.x, var_3.x))).a, vec4<u32>(3097u, 44189u, u_input.d.x, var_0.x)));
}

