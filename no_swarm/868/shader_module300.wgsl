struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: bool,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: bool) -> vec4<u32> {
    var var_0 = ~1u;
    var_0 = 4294967295u;
    let var_1 = abs(vec4<u32>(1u, 1u, 1u, 1u));
    var var_2 = Struct_2(Struct_1(arg_0, true, max(var_1.xw, _wgslsmith_div_vec2_u32(vec2<u32>(113709u, var_1.x), vec2<u32>(38464u, 4294967295u))), -vec4<i32>(u_input.a, u_input.a, 23144i, 0i) ^ vec4<i32>(max(u_input.a, u_input.a), -1i, 23279i, _wgslsmith_div_i32(u_input.a, 37392i)), -_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 37345i, 0i), vec3<i32>(2147483647i, u_input.a, u_input.a)) ^ (abs(vec3<i32>(1i, 27311i, 2147483647i)) >> (~vec3<u32>(72131u, 1u, var_1.x) % vec3<u32>(32u)))), Struct_1(!arg_0, false, _wgslsmith_sub_vec2_u32(firstLeadingBit(~vec2<u32>(12094u, 0u)), ~max(var_1.xw, vec2<u32>(var_1.x, 4294967295u))), _wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, u_input.a, 0i, u_input.a), ~_wgslsmith_add_vec4_i32(vec4<i32>(8023i, -1135i, -1i, u_input.a), vec4<i32>(u_input.a, -85198i, u_input.a, -7036i))), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a, u_input.a, -1i), reverseBits(vec3<i32>(u_input.a, u_input.a, 2147483647i)) ^ ~vec3<i32>(u_input.a, u_input.a, u_input.a))), vec4<bool>(false, !(!arg_0) && !all(vec4<bool>(arg_0, true, true, arg_0)), all(select(!vec3<bool>(arg_0, false, arg_0), !vec3<bool>(false, arg_0, arg_0), !vec3<bool>(arg_0, false, true))), false), all(!select(vec4<bool>(arg_0, true, arg_0, arg_0), !vec4<bool>(arg_0, true, arg_0, arg_0), select(vec4<bool>(false, true, arg_0, true), vec4<bool>(arg_0, true, arg_0, arg_0), true))), var_1.xwz);
    var_2 = Struct_2(var_2.b, var_2.a, var_2.c, any(select(var_2.c.zw, select(vec2<bool>(true, true), !var_2.c.wy, vec2<bool>(arg_0, arg_0)), arg_0)), vec3<u32>(1u, var_2.b.c.x, 1u));
    return ~var_1;
}

fn func_2(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = ~arg_1.c.x >= ~(~(max(58765u, arg_1.c.x) | 39349u));
    var var_1 = select(func_3(true), (~(~vec4<u32>(arg_1.c.x, arg_1.c.x, 0u, 53189u)) << (vec4<u32>(1u, ~28004u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, 34126u), vec4<u32>(arg_1.c.x, 1u, arg_1.c.x, arg_1.c.x)), 43246u & arg_1.c.x) % vec4<u32>(32u))) >> (~(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.c.x, arg_1.c.x, 43463u, arg_1.c.x), vec4<u32>(arg_1.c.x, 0u, arg_1.c.x, arg_1.c.x))) % vec4<u32>(32u)), arg_1.b);
    var_1 = select(~firstTrailingBit(select(vec4<u32>(0u, 4294967295u, 78636u, 8341u), vec4<u32>(arg_1.c.x, 0u, var_1.x, 4294967295u), vec4<bool>(var_0, true, true, arg_1.a))), _wgslsmith_add_vec4_u32(~vec4<u32>(var_1.x, var_1.x, 1u, 39638u) | _wgslsmith_div_vec4_u32(vec4<u32>(50145u, arg_1.c.x, var_1.x, 0u), vec4<u32>(19463u, arg_1.c.x, 61052u, 1u)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.c.x, arg_1.c.x, var_1.x, 26540u), vec4<u32>(104423u, 133643u, arg_1.c.x, 73242u))), true) >> (_wgslsmith_div_vec4_u32(~(~vec4<u32>(arg_1.c.x, arg_1.c.x, arg_1.c.x, var_1.x)) << (((vec4<u32>(4294967295u, var_1.x, var_1.x, 64042u) << (vec4<u32>(arg_1.c.x, 4294967295u, var_1.x, 18280u) % vec4<u32>(32u))) & (vec4<u32>(arg_1.c.x, var_1.x, arg_1.c.x, var_1.x) & vec4<u32>(arg_1.c.x, 11095u, 807u, var_1.x))) % vec4<u32>(32u)), ~(~vec4<u32>(var_1.x, var_1.x, 39832u, arg_1.c.x))) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(-1020f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0, 922f))) - -1058f))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1104f, -214f, arg_0)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1767f, arg_0, arg_0), vec3<f32>(407f, 1000f, arg_0))))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1265f, -199f, -840f), vec3<f32>(arg_0, -1845f, 577f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2125f, arg_0, -157f))))));
    return arg_1;
}

fn func_4(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = vec2<bool>(!arg_0.a.b, !(!select(arg_0.b.b || true, arg_0.a.c.x == arg_0.b.c.x, arg_0.c.x)));
    var var_1 = func_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1229f * -1145f)), -1167f, (_wgslsmith_f_op_f32(583f + -2269f) < _wgslsmith_f_op_f32(floor(-563f))) & true)), arg_0.b).d.x;
    let var_2 = any(vec2<bool>(arg_0.d, max(arg_0.e.x, ~21304u) > firstLeadingBit(countOneBits(1u))));
    var var_3 = arg_0.b.d.wy;
    var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, arg_0.b.e.x, u_input.a), arg_0.b.e, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(arg_0.b.d.x, 2147483647i), countOneBits(arg_0.a.e.x), var_3.x), arg_0.b.e)), -vec3<i32>(var_3.x, _wgslsmith_mult_i32(abs(var_3.x), ~(-1i)), _wgslsmith_div_i32(max(2147483647i, -1i), arg_0.b.e.x)));
    return vec2<bool>(any(vec4<bool>(true, arg_0.c.x, select(func_2(-1360f, arg_0.b).a, all(arg_0.c.wxz), arg_0.d), true)), arg_0.c.x | (1i <= _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(0i, -1587i, 38308i)), reverseBits(arg_0.b.d.zxx))));
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: u32) -> vec2<bool> {
    let var_0 = select(!vec2<bool>(select(any(vec4<bool>(true, false, true, arg_0)), true, true), !arg_0), select(func_4(Struct_2(func_2(arg_2, Struct_1(false, false, vec2<u32>(4294967295u, 0u), vec4<i32>(u_input.a, -2147483647i, u_input.a, 0i), vec3<i32>(u_input.a, 2147483647i, u_input.a))), Struct_1(arg_0, arg_0, vec2<u32>(4294967295u, 0u), vec4<i32>(u_input.a, -3301i, u_input.a, 29925i), vec3<i32>(u_input.a, u_input.a, 1i)), vec4<bool>(true, arg_0, arg_0, true), true, vec3<u32>(1u, 221u, 4294967295u))), func_4(Struct_2(Struct_1(arg_0, true, vec2<u32>(33355u, 66073u), vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec3<i32>(24004i, u_input.a, 0i)), func_2(arg_2, Struct_1(true, arg_0, vec2<u32>(19546u, 0u), vec4<i32>(2147483647i, 9495i, 27583i, u_input.a), vec3<i32>(u_input.a, 1i, -2147483647i))), select(vec4<bool>(true, false, arg_0, true), vec4<bool>(arg_0, true, arg_0, arg_0), arg_0), true, countOneBits(vec3<u32>(arg_3, arg_1, arg_1)))), all(select(vec3<bool>(true, true, false), !vec3<bool>(false, arg_0, false), !arg_0))), !select(!(!vec2<bool>(arg_0, true)), vec2<bool>(true, true), vec2<bool>(true, true)));
    var var_1 = Struct_2(Struct_1(true, var_0.x, vec2<u32>(~(~arg_3), 1u), ~(~vec4<i32>(0i, 16202i, -1i, -1i)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(-14380i, u_input.a, -2147483647i), vec3<i32>(2147483647i, u_input.a, u_input.a)), vec3<i32>(1i, u_input.a, 6317i))), Struct_1(!arg_0, false || !arg_0, (~vec2<u32>(1u, 6603u) << (select(vec2<u32>(0u, arg_3), vec2<u32>(arg_1, arg_1), arg_0) % vec2<u32>(32u))) << (min(vec2<u32>(arg_3, arg_3), ~vec2<u32>(61038u, 36936u)) % vec2<u32>(32u)), _wgslsmith_clamp_vec4_i32(~max(vec4<i32>(u_input.a, u_input.a, 2147483647i, -2147483647i), vec4<i32>(-38302i, u_input.a, 1i, u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a, -15082i, 2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<i32>(-48883i, u_input.a, func_2(-752f, Struct_1(arg_0, false, vec2<u32>(arg_1, 72549u), vec4<i32>(u_input.a, 1i, u_input.a, u_input.a), vec3<i32>(17321i, u_input.a, 0i))).d.x, i32(-1i) * -6871i)), -vec3<i32>(_wgslsmith_add_i32(-53817i, u_input.a), ~(-30285i), ~11907i)), vec4<bool>(false, true, max(~u_input.a, -13495i) <= -2147483647i, !all(select(vec3<bool>(false, false, arg_0), vec3<bool>(true, false, arg_0), var_0.x))), true, vec3<u32>(_wgslsmith_clamp_u32(97829u, max(firstTrailingBit(8183u), 0u), arg_3), 1u, 4294967295u));
    var_1 = Struct_2(var_1.a, func_2(arg_2, func_2(838f, var_1.b)), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !(!var_0.x)), false, _wgslsmith_mod_vec3_u32(select(firstLeadingBit(var_1.e), ~vec3<u32>(arg_1, 1u, 4294967295u), select(vec3<bool>(true, var_1.c.x, true), vec3<bool>(false, false, true), vec3<bool>(var_0.x, var_0.x, var_1.a.b))), select(select(vec3<u32>(var_1.b.c.x, 52842u, arg_1), var_1.e, false), var_1.e, vec3<bool>(false, var_0.x, arg_0))) | vec3<u32>(34483u, abs(min(var_1.a.c.x, arg_3)), var_1.a.c.x));
    var_1 = Struct_2(var_1.b, Struct_1(all(select(select(var_0, vec2<bool>(true, true), true), !var_1.c.yx, var_1.c.wz)), var_0.x, var_1.e.zy, _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, var_1.a.e.x, 2147483647i, u_input.a) >> (vec4<u32>(1u, arg_3, 13135u, arg_3) % vec4<u32>(32u)), var_1.a.d), _wgslsmith_div_vec4_i32(abs(var_1.b.d), select(var_1.a.d, vec4<i32>(var_1.a.e.x, 0i, -1i, var_1.a.d.x), true))), ~var_1.b.d.www), var_1.c, true, abs(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 71993u, 0u) << (vec3<u32>(1u, arg_1, 66931u) % vec3<u32>(32u)), abs(vec3<u32>(65878u, 38630u, arg_3))) >> (countOneBits(reverseBits(vec3<u32>(46520u, arg_1, 3469u))) % vec3<u32>(32u))));
    var_1 = Struct_2(Struct_1(!arg_0, true, ~(vec2<u32>(29952u, 0u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3, arg_3), var_1.a.c, vec2<u32>(var_1.b.c.x, arg_3)) % vec2<u32>(32u))), vec4<i32>(1i, _wgslsmith_mult_i32(var_1.a.e.x & u_input.a, u_input.a), -_wgslsmith_add_i32(-14237i, var_1.b.d.x), -_wgslsmith_sub_i32(-20656i, 0i)), var_1.a.d.xyw), Struct_1(_wgslsmith_dot_vec2_u32(var_1.e.yz, _wgslsmith_sub_vec2_u32(var_1.a.c, vec2<u32>(4294967295u, 53252u))) == ~4294967295u, var_1.b.c.x == (1u << (0u % 32u)), max((var_1.b.c << (var_1.b.c % vec2<u32>(32u))) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_1, 1u), var_1.a.c, var_1.a.c) % vec2<u32>(32u)), var_1.a.c), -vec4<i32>(var_1.a.e.x ^ -20027i, u_input.a | 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.e.x, 2147483647i, 1i), var_1.a.e), 0i), vec3<i32>(max(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_1.a.e.x, var_1.a.e.x, -1i), vec4<i32>(u_input.a, -2147483647i, 0i, u_input.a)), _wgslsmith_mod_i32(var_1.a.e.x, -2147483647i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, -47419i, var_1.a.e.x, var_1.a.d.x), func_2(-392f, Struct_1(true, arg_0, var_1.a.c, var_1.a.d, var_1.b.e)).d), 1i)), var_1.c, var_1.c.x, ~var_1.e);
    return select(select(!select(vec2<bool>(false, var_1.b.a), vec2<bool>(true, var_1.c.x), select(var_1.c.zz, vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, var_0.x))), !var_0, all(vec4<bool>(var_0.x, !var_1.c.x, true, var_1.b.b))), var_0, func_2(840f, var_1.b).a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(!vec2<bool>(true, all(vec2<bool>(true, false))), vec2<bool>(true, true), !(!all(vec3<bool>(false, false, true)))), !vec2<bool>(true, select(any(vec4<bool>(true, true, false, false)), false, all(vec3<bool>(false, true, true)))), vec2<bool>(true, any(!func_1(false, 4294967295u, 625f, 4294967295u))));
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-43622i, ~(~(-u_input.a)), ~(-2147483647i)), vec3<i32>(u_input.a ^ u_input.a, u_input.a, -select(_wgslsmith_mult_i32(u_input.a, u_input.a), -4016i, func_1(false, 1u, -524f, 31607u).x)));
    var var_2 = abs(firstTrailingBit(1u) | 1u);
    var_1 = -u_input.a;
    var_2 = ~41834u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-471f, 991f), min(~(~(~10186u)), ~firstTrailingBit(~1u)), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)), ~min(vec4<u32>(19215u, 0u, 0u, 21226u), vec4<u32>(4294967295u, 35315u, 1u, 22202u))), ~vec4<i32>(~u_input.a, firstTrailingBit(min(-47443i, 15448i)), ~u_input.a | -u_input.a, u_input.a | _wgslsmith_mod_i32(-62251i, 12495i)), vec2<u32>(40896u, 0u));
}

