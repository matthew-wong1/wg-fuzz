struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(33532i, 51993i, 60293i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec2<bool>) -> vec3<f32> {
    global0 = select(arg_2, _wgslsmith_mult_vec3_i32(vec3<i32>(firstTrailingBit(arg_2.x), _wgslsmith_mod_i32(-arg_1.b, _wgslsmith_mod_i32(-9794i, global0.x)), _wgslsmith_dot_vec3_i32(arg_2, arg_2 << (vec3<u32>(arg_1.e, arg_0.x, 4294967295u) % vec3<u32>(32u)))), vec3<i32>(firstLeadingBit(arg_1.d.x), -arg_1.d.x, -arg_2.x) | arg_2), vec3<bool>(select(!all(arg_3), all(vec4<bool>(false, true, arg_3.x, true)), !arg_3.x), !(!any(vec4<bool>(true, false, true, false))), ~43103u <= ~arg_1.c.x));
    global0 = arg_1.d & arg_1.d;
    let var_0 = !any(select(!vec4<bool>(arg_1.a, false, true, arg_1.a), select(!vec4<bool>(arg_3.x, arg_3.x, false, arg_3.x), select(vec4<bool>(arg_1.a, true, arg_3.x, arg_3.x), vec4<bool>(false, false, true, false), arg_3.x), vec4<bool>(false, false, true, true)), !(!vec4<bool>(arg_3.x, arg_1.a, false, arg_3.x))));
    let var_1 = abs(-(vec2<i32>(-1i) * -countOneBits(global0.yz)));
    var var_2 = select(!vec2<bool>(true, var_0), select(select(!select(vec2<bool>(true, arg_3.x), arg_3, arg_3.x), arg_3, true), vec2<bool>(all(!vec3<bool>(arg_1.a, true, arg_3.x)), (4294967295u >> (arg_1.c.x % 32u)) < firstLeadingBit(116486u)), select(arg_3, arg_3, false)), select(select(vec2<bool>(true, false), select(!arg_3, select(arg_3, arg_3, arg_1.a), select(vec2<bool>(false, arg_3.x), vec2<bool>(arg_1.a, arg_3.x), arg_3)), select(select(arg_3, vec2<bool>(arg_1.a, false), arg_3), vec2<bool>(true, true), !arg_1.a)), vec2<bool>(arg_3.x, false), arg_3.x));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(847f, 821f, -1143f) * vec3<f32>(2390f, -2357f, -2042f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-2117f, 191f, 895f) - vec3<f32>(295f, 908f, 284f)))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: vec4<i32>) -> vec3<u32> {
    let var_0 = Struct_1(arg_2.zxw, max(select(firstLeadingBit(vec4<i32>(global0.x, -2147483647i, arg_2.x, arg_2.x) >> (vec4<u32>(u_input.a, 29700u, 48478u, u_input.a) % vec4<u32>(32u))), arg_0, 13277i > -arg_0.x), arg_2));
    var var_1 = Struct_2(false, ~min(firstLeadingBit(_wgslsmith_mod_i32(21332i, 31915i)), arg_0.x ^ global0.x), max(~vec3<u32>(~u_input.b, _wgslsmith_mod_u32(30972u, u_input.b), ~1u), vec3<u32>(57112u, ~_wgslsmith_mod_u32(u_input.a, u_input.a), _wgslsmith_mult_u32(~u_input.b, min(u_input.b, u_input.b)))), reverseBits(arg_0.xxx), 25603u ^ _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 38971u, u_input.b, 847u), abs(vec4<u32>(u_input.a, u_input.b, 17607u, u_input.b))), _wgslsmith_mult_u32(u_input.a, ~7753u), abs(u_input.b)));
    var var_2 = vec2<u32>(u_input.b | 0u, 0u);
    var_1 = Struct_2(!(!var_1.a), firstLeadingBit(16128i >> (select(max(u_input.b, var_1.e), reverseBits(6159u), !var_1.a) % 32u)), var_1.c | (~(~var_1.c) << (var_1.c % vec3<u32>(32u))), firstLeadingBit(var_1.d), u_input.b);
    let var_3 = Struct_2(~(~u_input.b) < u_input.b, 2147483647i, firstLeadingBit(~(~var_1.c)), arg_2.yyz, _wgslsmith_sub_u32(4294967295u, ~firstLeadingBit(1u)));
    return abs(var_1.c);
}

fn func_2(arg_0: vec2<f32>, arg_1: bool) -> Struct_1 {
    var var_0 = reverseBits(-(vec3<i32>(reverseBits(global0.x), abs(0i), abs(5928i)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.a, 43172u) & vec3<u32>(4294967295u, u_input.b, 4294967295u), vec3<u32>(43164u, 3468u, u_input.b)) % vec3<u32>(32u))));
    var var_1 = var_0.x;
    let var_2 = var_0.zz;
    let var_3 = ~func_4(-vec4<i32>(global0.x, 5633i, 0i, var_0.x >> (4294967295u % 32u)), _wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(1u, 37768u, 8856u, u_input.a) ^ _wgslsmith_div_vec4_u32(vec4<u32>(1u, 12809u, u_input.b, u_input.b), vec4<u32>(u_input.b, 4294967295u, u_input.a, 1u)), Struct_2(arg_1, 19305i, ~vec3<u32>(101922u, u_input.a, 4294967295u), -vec3<i32>(var_0.x, -1i, var_0.x), u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, var_0.x, 6564i), vec3<i32>(var_0.x, var_2.x, var_2.x)) << (abs(vec3<u32>(0u, 4294967295u, u_input.a)) % vec3<u32>(32u)), !select(vec2<bool>(arg_1, false), vec2<bool>(true, false), vec2<bool>(arg_1, true)))), select(vec4<i32>(-8748i, _wgslsmith_add_i32(-31526i, -10746i), global0.x, 33528i >> (u_input.a % 32u)), ~(vec4<i32>(5580i, var_2.x, var_2.x, 48659i) >> (vec4<u32>(u_input.a, u_input.a, 4294967295u, 17226u) % vec4<u32>(32u))), select(vec4<bool>(false, arg_1, arg_1, false), !vec4<bool>(false, arg_1, false, arg_1), true)));
    var var_4 = _wgslsmith_mult_vec2_u32(var_3.xx, max(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(var_3.zx, vec2<u32>(13800u, 16554u)), var_3.zx & vec2<u32>(var_3.x, 1u)), vec2<u32>(var_3.x, var_3.x) & vec2<u32>(29961u, var_3.x))) & _wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(var_3.zz, firstLeadingBit(var_3.yy), select(var_3.xx, var_3.yx, vec2<bool>(arg_1, arg_1))) ^ vec2<u32>(1u, 1u), var_3.xy);
    return Struct_1(~vec3<i32>(var_0.x, _wgslsmith_add_i32(-1i, 2147483647i), -var_0.x), ~countOneBits(-vec4<i32>(-29782i, -2147483647i, global0.x, 11793i)) | vec4<i32>(var_2.x, _wgslsmith_mod_i32(var_0.x, ~2147483647i), abs(var_0.x), var_2.x << (36446u % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_2) -> f32 {
    global0 = ~reverseBits(vec3<i32>(arg_3.b, arg_3.d.x | -7653i, 26740i << (u_input.b % 32u)));
    global0 = vec3<i32>(arg_1.d.x, -22215i, (_wgslsmith_sub_i32(_wgslsmith_mod_i32(-848i, arg_0.a.x), ~arg_3.d.x) >> (u_input.b % 32u)) & abs(0i));
    let var_0 = (vec4<u32>(29541u, u_input.b, arg_1.c.x, _wgslsmith_dot_vec2_u32(arg_3.c.xy, max(vec2<u32>(u_input.a, arg_2.x), arg_3.c.zx))) << (arg_2 % vec4<u32>(32u))) & abs(_wgslsmith_mult_vec4_u32(vec4<u32>(select(arg_3.e, u_input.b, true), arg_3.e, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.x, arg_3.c.x), arg_1.c.zz), ~4294967295u), (arg_2 | vec4<u32>(0u, arg_2.x, 100430u, 1u)) & arg_2));
    let var_1 = all(!select(vec4<bool>(arg_3.a, false, true, !arg_3.a), vec4<bool>(true, arg_3.a, false, arg_1.a), true && arg_3.a));
    var var_2 = ~abs(-1i);
    return _wgslsmith_f_op_f32(-696f + 324f);
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = all(vec2<bool>(true, arg_0.a)) & select(true, (u_input.a <= max(u_input.b, u_input.b)) || true, !arg_0.a);
    let var_1 = u_input.b;
    var var_2 = -990f;
    var var_3 = reverseBits(~reverseBits(vec2<u32>(_wgslsmith_clamp_u32(1u, u_input.a, 4294967295u), 21385u)));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(578f, 925f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-462f, 988f) + vec2<f32>(-1357f, -511f))), var_0), arg_0, max(~vec4<u32>(u_input.a, arg_0.e, 39191u, arg_0.e) >> (vec4<u32>(u_input.a, arg_0.e, u_input.a, var_1) % vec4<u32>(32u)), vec4<u32>(abs(64189u), ~arg_0.e, ~var_3.x, _wgslsmith_dot_vec3_u32(arg_0.c, arg_0.c))), Struct_2(false, global0.x, arg_0.c, arg_0.d, var_1))));
    return Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(~countOneBits(arg_0.b), 52538i, -2147483647i), select(vec3<i32>(global0.x, 1861i, -arg_0.d.x), -(arg_0.d >> (vec3<u32>(arg_0.c.x, 17540u, var_3.x) % vec3<u32>(32u))), var_0)), max(~select(~vec4<i32>(2147483647i, global0.x, -31786i, -2147483647i), abs(vec4<i32>(1i, global0.x, 1i, arg_0.d.x)), arg_0.a), _wgslsmith_sub_vec4_i32(~(-vec4<i32>(-2147483647i, global0.x, global0.x, -1i)), ~(-vec4<i32>(-30495i, 32003i, arg_0.b, arg_0.b)))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    global0 = vec3<i32>(arg_2.b.x, func_1(arg_0).b.x, -_wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, arg_0.b, global0.x), vec3<i32>(arg_1.b, -2147483647i, -23008i), arg_1.a), ~(~vec3<i32>(2147483647i, arg_2.b.x, -1i))));
    global0 = arg_1.d;
    global0 = arg_1.d | ~(vec3<i32>(i32(-1i) * -2147483647i, -2147483647i, arg_2.b.x) | -(~vec3<i32>(arg_0.d.x, arg_0.b, arg_2.a.x)));
    let var_0 = _wgslsmith_clamp_vec3_i32(vec3<i32>(~(~(-13930i) | arg_1.d.x), _wgslsmith_div_i32(-1i | (arg_2.b.x >> (arg_1.e % 32u)), -_wgslsmith_mod_i32(1i, arg_0.b)), ~countOneBits(1i)), arg_2.a, firstLeadingBit(vec3<i32>(~arg_1.b, firstTrailingBit(1i), _wgslsmith_add_i32(arg_1.d.x, arg_0.d.x))));
    var var_1 = ~arg_0.c.x;
    return -214f;
}

fn func_7(arg_0: u32, arg_1: vec3<f32>) -> Struct_2 {
    let var_0 = min(vec3<u32>(u_input.a, 1u & min(u_input.a, 59869u), arg_0 & 0u), ~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 199u, 0u), vec3<u32>(22229u, arg_0, u_input.b)), ~arg_0, u_input.a) << (_wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, 0u, 59101u), vec3<u32>(1u, 1u, arg_0), vec3<u32>(25823u, 4294967295u, 4294967295u))), firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, 1375u, 21832u), vec3<u32>(arg_0, 4294967295u, 0u)))) % vec3<u32>(32u)));
    global0 = ~vec3<i32>(abs(18840i), -27204i, global0.x);
    let var_1 = -9180i;
    let var_2 = _wgslsmith_f_op_vec3_f32(func_3(abs(reverseBits(~(vec4<u32>(5292u, 1u, arg_0, var_0.x) & vec4<u32>(44420u, u_input.a, 63167u, var_0.x)))), Struct_2(any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), vec3<bool>(false, true, true))), _wgslsmith_mod_i32(-min(var_1, -2147483647i), -1i >> (arg_0 % 32u)), _wgslsmith_mult_vec3_u32(var_0, ~(~var_0)), -firstLeadingBit(-vec3<i32>(214i, -2147483647i, global0.x)), 0u), vec3<i32>(-_wgslsmith_sub_i32(_wgslsmith_div_i32(var_1, global0.x), ~var_1), -global0.x, 2147483647i), select(vec2<bool>(!all(vec2<bool>(true, true)), true), vec2<bool>(true, true), false))).x;
    var var_3 = 4294967295u > _wgslsmith_sub_u32(30344u, ~(~reverseBits(arg_0)));
    return Struct_2(true, -26340i, vec3<u32>(~_wgslsmith_add_u32(~4294967295u, ~19245u), u_input.b, ~firstLeadingBit(~13696u)), reverseBits(_wgslsmith_sub_vec3_i32(~vec3<i32>(global0.x, 0i, -7524i) | firstTrailingBit(vec3<i32>(-2147483647i, -3187i, global0.x)), vec3<i32>(-15116i, max(-35761i, -2147483647i), global0.x))), min(_wgslsmith_mod_u32(0u, arg_0), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~var_0.x, ~0u, firstTrailingBit(18546u)), vec4<u32>(~74956u, arg_0, 33771u >> (1u % 32u), ~0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<i32>(0i, global0.x, max(1i, 3641i));
    let var_0 = -1i;
    var var_1 = func_7(0u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_6(Struct_2(false, -17204i, vec3<u32>(u_input.b, 15706u, u_input.a), vec3<i32>(-49510i, -2147483647i, global0.x), u_input.b), Struct_2(false, global0.x, vec3<u32>(14989u, 55570u, 9866u), vec3<i32>(global0.x, var_0, var_0), u_input.b), func_1(Struct_2(false, -12016i, vec3<u32>(u_input.a, 0u, u_input.a), vec3<i32>(global0.x, var_0, global0.x), 679u)))), -730f, 1f)));
    let var_2 = Struct_2(!var_1.a, 0i, ~vec3<u32>(88771u, _wgslsmith_add_u32(~u_input.a, 31154u), u_input.a), var_1.d | var_1.d, 4294967295u);
    var_1 = Struct_2(true, var_0, ~var_1.c, reverseBits(var_2.d), func_7(reverseBits(var_1.c.x), _wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(0u >> (0u % 32u), 4294967295u, var_1.e, ~1u), func_7(var_2.e, _wgslsmith_div_vec3_f32(vec3<f32>(1766f, 1000f, -193f), vec3<f32>(538f, -826f, -1188f))), -max(var_2.d, var_2.d), !select(vec2<bool>(var_2.a, false), vec2<bool>(var_1.a, false), vec2<bool>(var_1.a, var_1.a))))).c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1045f, -302f, 1023f, -1000f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-611f, 153f, 457f, 1505f)))));
}

