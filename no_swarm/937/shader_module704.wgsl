struct Struct_1 {
    a: bool,
    b: bool,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<f32>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 16>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: u32) -> Struct_5 {
    let var_0 = arg_1.x || all(vec4<bool>(arg_1.x, (arg_2.x != 243f) || true, !arg_1.x, all(!vec4<bool>(arg_1.x, arg_1.x, true, true))));
    let var_1 = arg_2.wy;
    var var_2 = 1i;
    global0 = array<vec4<i32>, 16>();
    global0 = array<vec4<i32>, 16>();
    return Struct_5(Struct_1(_wgslsmith_f_op_f32(var_1.x * 1000f) < _wgslsmith_f_op_f32(step(var_1.x, _wgslsmith_f_op_f32(-var_1.x))), !(!var_0), abs(-abs(vec4<i32>(arg_0.x, 0i, u_input.b.x, 1i))), arg_2), _wgslsmith_f_op_vec3_f32(arg_2.zxw - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, 236f))))), var_1.x, true);
}

fn func_3(arg_0: bool) -> vec4<f32> {
    let var_0 = firstTrailingBit(_wgslsmith_mult_u32(u_input.a, ~39191u));
    global0 = array<vec4<i32>, 16>();
    global0 = array<vec4<i32>, 16>();
    var var_1 = _wgslsmith_add_vec2_u32(~_wgslsmith_mod_vec2_u32(~(vec2<u32>(19248u, var_0) << (vec2<u32>(u_input.c, 0u) % vec2<u32>(32u))), vec2<u32>(abs(0u), 4294967295u)), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(29020u, 0u, 58837u), vec3<u32>(var_0, var_0, u_input.c), vec3<u32>(21679u, 12466u, var_0)), vec3<u32>(u_input.c << (u_input.a % 32u), ~3418u, _wgslsmith_sub_u32(29812u, u_input.c))), u_input.a));
    var var_2 = Struct_2(var_1.x | 4294967295u, func_2(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(-global0[_wgslsmith_index_u32(var_1.x, 16u)], select(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(0u, 16u)], vec4<bool>(arg_0, true, arg_0, arg_0))), _wgslsmith_mod_vec4_i32(countOneBits(global0[_wgslsmith_index_u32(var_0, 16u)]), vec4<i32>(u_input.b.x, u_input.b.x, -17116i, -2147483647i) >> (vec4<u32>(5776u, var_0, var_0, 0u) % vec4<u32>(32u)))), vec3<bool>(arg_0, any(select(vec2<bool>(false, true), vec2<bool>(arg_0, true), arg_0)), arg_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-225f, -147f, arg_0)), _wgslsmith_f_op_f32(-975f * 1820f), _wgslsmith_f_op_f32(select(920f, 1597f, false)), 612f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-650f, -157f, 671f, 794f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1280f, 239f, 846f, -1696f)))), _wgslsmith_div_u32(0u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(var_1.x, 116356u, 49871u), vec3<u32>(var_1.x, u_input.a, u_input.c), vec3<bool>(arg_0, true, true)), _wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, var_0, var_1.x), vec3<u32>(var_1.x, 35499u, var_1.x))))).a, vec3<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), firstLeadingBit(vec2<u32>(4294967295u, u_input.c)))), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, var_1.x, 886u)), firstLeadingBit(countOneBits(vec3<u32>(12080u, 29907u, u_input.c)))), ~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 0u), vec2<u32>(80859u, 22166u)))), u_input.b.zy >> (_wgslsmith_mult_vec2_u32(~(vec2<u32>(var_1.x, var_1.x) & vec2<u32>(var_0, 1u)), ~vec2<u32>(var_0, 84936u)) % vec2<u32>(32u)));
    return var_2.b.d;
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = func_2(_wgslsmith_div_vec4_i32(-(~vec4<i32>(-1i, u_input.b.x, 1i, 37566i)), abs(global0[_wgslsmith_index_u32(select(~u_input.a, arg_0, true), 16u)])), select(vec3<bool>(false, true, true), vec3<bool>(false, !select(true, true, true), all(vec2<bool>(false, false))), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 41426u), firstLeadingBit(vec2<u32>(arg_0, 12011u))) > (u_input.a | (51566u >> (u_input.c % 32u)))), vec4<f32>(-651f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -526f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-477f, 1005f))))), _wgslsmith_f_op_f32(abs(-1731f)), -135f), _wgslsmith_add_u32(~(~u_input.a), ~11297u));
    let var_1 = _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, arg_0 ^ 34688u), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_0), vec2<u32>(4294967295u, arg_0)) & vec2<u32>(arg_0, 99267u)), 7038u);
    let var_2 = Struct_4(Struct_1(var_0.d, true, ~firstTrailingBit(-global0[_wgslsmith_index_u32(1u, 16u)]), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(all(vec3<bool>(false, var_0.a.b, var_0.a.b)))), var_0.a.d)), true, Struct_1(var_0.a.c.x > _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_0.a.c.zz, vec2<i32>(14068i, var_0.a.c.x)), -2147483647i), any(!(!vec4<bool>(var_0.a.b, false, var_0.d, var_0.d))), -global0[_wgslsmith_index_u32(arg_0, 16u)], _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1083f + 905f), -543f, _wgslsmith_f_op_f32(min(var_0.b.x, 454f)), _wgslsmith_f_op_f32(var_0.b.x - 2640f)), var_0.a.d)), !(!vec3<bool>(var_0.d, true, !var_0.a.b)), Struct_2(arg_0, var_0.a, ~(~vec3<u32>(61863u, 4825u, 14383u)) ^ _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(u_input.c, var_1, arg_0)), vec3<u32>(4294967295u, 1u, arg_0), abs(vec3<u32>(u_input.c, 4294967295u, var_1))), vec2<i32>(-2147483647i, u_input.b.x)));
    global0 = array<vec4<i32>, 16>();
    global0 = array<vec4<i32>, 16>();
    return ~1u;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: u32, arg_3: Struct_4) -> StorageBuffer {
    let var_0 = Struct_4(Struct_1(any(!vec2<bool>(arg_3.e.b.b, arg_3.e.b.a)) || (_wgslsmith_f_op_f32(max(-1197f, 2147f)) < _wgslsmith_div_f32(arg_3.e.b.d.x, arg_3.a.d.x)), select(!arg_3.a.b, true, arg_3.e.b.a && arg_3.d.x), firstTrailingBit(arg_3.c.c), vec4<f32>(312f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.c.d.x, 1378f)), _wgslsmith_f_op_f32(-arg_3.e.b.d.x), arg_3.e.b.d.x)), true, Struct_1(any(!select(arg_3.d, arg_3.d, vec3<bool>(false, arg_3.e.b.b, false))), any(!arg_3.d), arg_3.a.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.c.d.x, arg_3.a.d.x, _wgslsmith_f_op_f32(777f + arg_3.e.b.d.x), arg_3.e.b.d.x))), vec3<bool>(arg_3.e.b.a, -5325i > _wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_3.a.c.x), ~vec2<i32>(-1i, -92719i)), any(arg_3.d)), arg_3.e);
    global0 = array<vec4<i32>, 16>();
    global0 = array<vec4<i32>, 16>();
    let var_1 = Struct_3(Struct_2(_wgslsmith_sub_u32(arg_3.e.c.x, firstTrailingBit(~arg_2)), arg_3.c, ~_wgslsmith_clamp_vec3_u32(arg_3.e.c, vec3<u32>(arg_1, 1u, 1281u), select(vec3<u32>(arg_0, 5727u, 2852u), arg_3.e.c, var_0.c.b)), vec2<i32>(-(arg_3.e.b.c.x & 0i), countOneBits(var_0.c.c.x))), func_2(global0[_wgslsmith_index_u32(firstTrailingBit(arg_0), 16u)] >> (~vec4<u32>(80247u, 0u, 4294967295u, var_0.e.c.x) % vec4<u32>(32u)), select(arg_3.d, vec3<bool>(false, var_0.c.b || true, !arg_3.a.b), vec3<bool>(select(true, false, false), all(vec4<bool>(var_0.b, false, var_0.a.a, arg_3.d.x)), var_0.b)), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.e.b.d.x + var_0.e.b.d.x), _wgslsmith_f_op_f32(exp2(var_0.c.d.x)))), arg_3.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_3.d.x)).x), var_0.e.b.d.x), firstTrailingBit(u_input.c)).b.x, !(!arg_3.d));
    var var_2 = func_2(arg_3.c.c, select(select(!(!var_0.d), vec3<bool>(true, arg_3.e.a <= 48496u, any(vec4<bool>(var_1.c.x, var_1.a.b.b, arg_3.d.x, false))), any(!var_1.c)), arg_3.d, false & any(vec3<bool>(var_1.a.b.b, var_0.e.b.a, var_1.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.d.x, var_1.a.b.d.x, _wgslsmith_div_f32(arg_3.a.d.x, _wgslsmith_f_op_f32(sign(-1105f))), -1185f)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.c.x, firstTrailingBit(countOneBits(7166u))), var_0.e.c.yz));
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.d.x, arg_3.e.b.d.x, var_0.c.d.x))) * arg_3.c.d.yxw), func_2(-var_1.a.b.c, !(!select(vec3<bool>(false, true, false), var_1.c, vec3<bool>(false, var_0.a.b, arg_3.a.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, -585f, -526f, 252f))) - _wgslsmith_f_op_vec4_f32(-var_0.c.d)), reverseBits(arg_2)).a.d.wwy, max(vec4<i32>(-2147483647i, -2147483647i, abs(_wgslsmith_sub_i32(u_input.b.x, -5710i)), min(1i, ~u_input.b.x)), countOneBits(reverseBits(vec4<i32>(58535i, var_0.c.c.x, u_input.b.x, 0i) & vec4<i32>(-2147483647i, 74803i, -1i, arg_3.c.c.x)))), -vec3<i32>(_wgslsmith_mod_i32(u_input.b.x, var_2.a.c.x), _wgslsmith_div_i32(~var_0.c.c.x, _wgslsmith_sub_i32(arg_3.a.c.x, u_input.b.x)), -arg_3.a.c.x), 951f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 16>();
    let var_0 = !vec2<bool>(true, any(vec3<bool>(true, any(vec4<bool>(false, false, false, false)), 1u == u_input.a)));
    let x = u_input.a;
    s_output = func_4(~select(min(func_1(u_input.a), u_input.c), ~_wgslsmith_add_u32(u_input.c, 1u), true), reverseBits(_wgslsmith_clamp_u32(abs(71950u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.c, 0u, 0u), vec4<u32>(u_input.c, u_input.a, u_input.c, 4294967295u), vec4<u32>(u_input.c, 0u, u_input.c, u_input.a)), vec4<u32>(u_input.a, u_input.c, u_input.a, u_input.c)), ~u_input.c)), max(u_input.a, u_input.a), Struct_4(func_2(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(global0[_wgslsmith_index_u32(u_input.c, 16u)], vec4<i32>(u_input.b.x, 58091i, u_input.b.x, u_input.b.x), vec4<i32>(1i, 1i, u_input.b.x, 2147483647i)), global0[_wgslsmith_index_u32(1u, 16u)], vec4<i32>(-6611i, 2147483647i, u_input.b.x, u_input.b.x) | global0[_wgslsmith_index_u32(1u, 16u)]), select(vec3<bool>(false, false, var_0.x), vec3<bool>(true, true, true), select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, false, var_0.x), var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1428f, -887f, -1410f, 833f)), u_input.a).a, false, Struct_1(true, var_0.x, _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i), max(global0[_wgslsmith_index_u32(1u, 16u)], vec4<i32>(0i, u_input.b.x, -5687i, u_input.b.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(33761i, u_input.b.x, 25434i, -1i), vec4<i32>(53526i, u_input.b.x, 0i, u_input.b.x))), _wgslsmith_div_vec4_f32(vec4<f32>(984f, -148f, -196f, -241f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-815f, 1216f, 1917f, 291f))))), vec3<bool>(var_0.x, var_0.x, var_0.x), Struct_2(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(25634u, u_input.a), vec2<u32>(u_input.a, 16081u)), ~vec2<u32>(30816u, 4294967295u)), func_2(vec4<i32>(20611i, u_input.b.x, 1i, 2147483647i), select(vec3<bool>(false, false, false), vec3<bool>(true, var_0.x, true), false), _wgslsmith_f_op_vec4_f32(vec4<f32>(-399f, 347f, 396f, -823f) + vec4<f32>(396f, 361f, -903f, -310f)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 444u, u_input.a), vec3<u32>(u_input.a, u_input.c, 1768u))).a, ~(~vec3<u32>(u_input.a, u_input.c, 24780u)), -u_input.b.yz | u_input.b.yx)));
}

