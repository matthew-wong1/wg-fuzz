struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: Struct_2,
    d: vec4<f32>,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
    e: vec3<u32>,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<bool, 8> = array<bool, 8>(true, true, false, true, false, true, false, true);

var<private> global2: array<vec2<bool>, 12>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec3<f32>) -> vec4<u32> {
    let var_0 = firstTrailingBit(vec4<i32>(-(global0.x & _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, arg_0.x, -41790i, arg_0.x), vec4<i32>(u_input.a, -2147483647i, arg_1.d.x, arg_1.d.x))), ~(~0i), 12968i, 34823i));
    let var_1 = var_0.wwz;
    var var_2 = Struct_5(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.b, -243f, arg_1.b))))));
    global1 = array<bool, 8>();
    let var_3 = _wgslsmith_sub_vec3_i32(var_0.wxy, abs(var_1));
    return ~min(reverseBits(firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 24252u))), vec4<u32>(u_input.b.x, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(140151u, u_input.b.x, 0u), vec3<u32>(1u, 4294967295u, u_input.b.x)), ~4294967295u)) | ~vec4<u32>(~_wgslsmith_add_u32(u_input.b.x, 21194u), ~firstTrailingBit(1u), ~abs(4294967295u), ~(u_input.b.x & 1u));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_4 {
    var var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, ~55123u, 21740u, u_input.b.x ^ ~0u), _wgslsmith_clamp_vec4_u32(~(vec4<u32>(1u, u_input.b.x, 0u, 1u) & vec4<u32>(arg_0.a.x, 4294967295u, u_input.b.x, 1u)), vec4<u32>(u_input.b.x, 15787u, 4294967295u, u_input.b.x) ^ ~vec4<u32>(21283u, 4294967295u, arg_0.a.x, arg_0.a.x), ~(~vec4<u32>(6967u, 25570u, arg_0.a.x, 36784u))) ^ ~func_3(vec3<i32>(u_input.a, global0.x, arg_0.b.x) >> (u_input.b % vec3<u32>(32u)), Struct_2(false, 1000f, vec2<i32>(arg_0.b.x, global0.x), vec3<i32>(u_input.a, arg_0.b.x, -54751i)), vec3<f32>(-120f, -1047f, 577f)));
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(690f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -553f) + _wgslsmith_f_op_f32(min(1000f, -1326f)))))));
    var var_2 = Struct_2(false, _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(1392f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * 287f) - -408f))), select(~vec2<i32>(firstTrailingBit(arg_0.b.x), _wgslsmith_sub_i32(arg_0.b.x, arg_0.b.x)), global0.zz, false), ~abs(arg_0.b.yyy));
    global0 = arg_0.b;
    var var_3 = ~select(vec3<u32>(98808u, ~(~var_0.x), abs(4294967295u)), ((arg_0.a >> (vec3<u32>(var_0.x, var_0.x, u_input.b.x) % vec3<u32>(32u))) | arg_0.a) << (_wgslsmith_mult_vec3_u32(var_0.wyy, vec3<u32>(5882u, arg_0.a.x, 4294967295u)) % vec3<u32>(32u)), true);
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-639f))), _wgslsmith_f_op_f32(-var_2.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))), Struct_2(!global1[_wgslsmith_index_u32(u_input.b.x, 8u)], 1764f, ~var_2.c, ~_wgslsmith_mod_vec3_i32(-vec3<i32>(arg_0.b.x, -33984i, 9367i), global0.xwy | vec3<i32>(var_2.c.x, 0i, arg_0.b.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-364f, var_2.b, -1303f, var_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1467f, -1806f, var_1, var_1))), true && var_2.a)))), Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, arg_0.b.x), vec3<i32>(arg_0.b.x, global0.x, arg_0.b.x)) >= u_input.a, var_2.b, _wgslsmith_sub_vec2_i32(arg_0.b.xz, global0.wz), (_wgslsmith_mod_vec3_i32(global0.xww, vec3<i32>(-8231i, 873i, -22572i)) ^ var_2.d) | arg_0.b.xxx), ~reverseBits(firstTrailingBit(_wgslsmith_mod_vec3_u32(u_input.b, arg_0.a))));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4) -> bool {
    global2 = array<vec2<bool>, 12>();
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(arg_1.e, ~vec3<u32>(~arg_1.e.x, 0u, abs(4294967295u))), arg_1.e.x, countOneBits(arg_1.e.x));
    var var_1 = -1983f;
    var var_2 = _wgslsmith_sub_i32(-2147483647i, firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, 2147483647i), vec2<i32>(global0.x, u_input.a)), min(vec2<i32>(global0.x, global0.x), arg_1.d.c)) & u_input.a));
    var_2 = 1i;
    return true;
}

fn func_1(arg_0: bool) -> f32 {
    var var_0 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -113f) - _wgslsmith_f_op_f32(f32(-1f) * -2386f))), -140f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1407f))))), func_2(Struct_1(abs(vec3<u32>(28253u, 1u, u_input.b.x)), vec4<i32>(firstLeadingBit(u_input.a), -2147483647i, global0.x, global0.x), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 8u)] || true, true, true)), false));
    let var_1 = !global2[_wgslsmith_index_u32(47862u, 12u)];
    global2 = array<vec2<bool>, 12>();
    var var_2 = countOneBits(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.b.x, 6826u), vec4<u32>(2603u, 90748u, 0u, u_input.b.x)), 1u)) != 83565u;
    var var_3 = -max(abs(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -1i, global0.x, global0.x), vec4<i32>(-801i, global0.x, u_input.a, -25267i)), -vec4<i32>(u_input.a, u_input.a, -1201i, -1829i))), ~(-_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -1i, -2147483647i, u_input.a), vec4<i32>(18636i, u_input.a, global0.x, 9113i))));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(1260f, _wgslsmith_f_op_f32(871f * func_2(Struct_1(vec3<u32>(30789u, u_input.b.x, u_input.b.x), vec4<i32>(u_input.a, u_input.a, global0.x, global0.x), vec3<bool>(arg_0, true, false)), var_1.x || true).c.x)) - _wgslsmith_f_op_f32(-func_2(Struct_1(~vec3<u32>(u_input.b.x, 48713u, u_input.b.x), -vec4<i32>(-1i, -21159i, -13553i, global0.x), select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, true, global1[_wgslsmith_index_u32(33654u, 8u)]), global1[_wgslsmith_index_u32(u_input.b.x, 8u)])), arg_0 != !global1[_wgslsmith_index_u32(1u, 8u)]).b.b));
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_5) -> Struct_2 {
    global1 = array<bool, 8>();
    global2 = array<vec2<bool>, 12>();
    let var_0 = true;
    var var_1 = Struct_3(select(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], var_0), global2[_wgslsmith_index_u32(19073u, 12u)], !vec2<bool>(var_0, var_0)), vec2<bool>((arg_0.x ^ u_input.b.x) < ~u_input.b.x, select(true, !var_0, global0.x > 2147483647i)), global2[_wgslsmith_index_u32(~(~0u), 12u)]), Struct_2(global1[_wgslsmith_index_u32(max(0u, u_input.b.x) ^ countOneBits(_wgslsmith_dot_vec2_u32(arg_0, u_input.b.xy)), 8u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(-1069f * arg_1.a)) * arg_1.a), _wgslsmith_add_vec2_i32(~_wgslsmith_mult_vec2_i32(global0.zy, global0.xx), global0.wy), vec3<i32>(select(2147483647i, ~0i, var_0), select(-1i, u_input.a, true) & -u_input.a, select(~28970i, -21866i, true))), func_2(Struct_1(u_input.b, -_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 0i, -3155i, global0.x), vec4<i32>(0i, 2147483647i, 74796i, -1i)), !(!vec3<bool>(var_0, global1[_wgslsmith_index_u32(9848u, 8u)], false))), !all(vec3<bool>(var_0, global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(u_input.b.x, 8u)])) & (-12816i <= (global0.x ^ global0.x))).d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-331f * _wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * 2549f)), -542f, -240f)), u_input.b.x);
    var var_2 = var_1.c;
    return Struct_2(all(select(!(!vec3<bool>(false, var_2.a, var_0)), select(!vec3<bool>(false, true, var_2.a), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), true)), _wgslsmith_f_op_f32(317f - var_1.b.b), abs(firstTrailingBit(vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(-23736i, 2147483647i, var_1.c.c.x)))), _wgslsmith_sub_vec3_i32(var_1.b.d, vec3<i32>(~(-1i), ~(-57127i), 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 8>();
    var var_0 = func_5(~(u_input.b.yx >> (countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x))) % vec2<u32>(32u))), Struct_5(-679f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2292f, 245f))), _wgslsmith_f_op_f32(1589f + _wgslsmith_f_op_f32(func_1(true))), 1f)));
    var var_1 = Struct_3(vec2<bool>(!(func_2(Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 31571u), vec4<i32>(var_0.d.x, -46407i, var_0.d.x, -28786i), vec3<bool>(var_0.a, global1[_wgslsmith_index_u32(u_input.b.x, 8u)], global1[_wgslsmith_index_u32(u_input.b.x, 8u)])), var_0.a).c.x == var_0.b), any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], false, func_5(u_input.b.xx, Struct_5(var_0.b, vec3<f32>(var_0.b, 264f, -1041f))).a))), func_2(Struct_1(u_input.b, max(vec4<i32>(-8483i, 0i, 0i, 1i) & vec4<i32>(global0.x, 1i, u_input.a, global0.x), _wgslsmith_mod_vec4_i32(vec4<i32>(16011i, u_input.a, -2147483647i, 30688i), vec4<i32>(1i, u_input.a, global0.x, -1i))), vec3<bool>(var_0.a, true, var_0.a)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(var_0.c, vec2<i32>(-1i, var_0.c.x)), 1i) <= ~u_input.a).b, Struct_2(true && (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 0u), u_input.b) < 3494u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b, func_2(Struct_1(u_input.b, vec4<i32>(global0.x, 63585i, global0.x, var_0.c.x), vec3<bool>(false, false, false)), false).c.x)), var_0.d.xx, firstTrailingBit(firstLeadingBit(global0.zxz))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, -1635f, var_0.b)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(158f, 210f, var_0.b, var_0.b) * vec4<f32>(-2167f, var_0.b, var_0.b, 763f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1163f, var_0.b, var_0.b, var_0.b)))) - vec4<f32>(1521f, var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-715f)) + 1000f), var_0.b)), _wgslsmith_sub_u32(u_input.b.x, 36893u));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.x, vec4<u32>(1u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_1.e, 59482u, u_input.b.x, 0u), vec4<u32>(u_input.b.x, 701u, var_1.e, var_1.e), func_3(vec3<i32>(u_input.a, var_0.c.x, var_1.b.d.x), Struct_2(true, -876f, var_1.b.c, vec3<i32>(var_1.c.c.x, -1i, global0.x)), vec3<f32>(var_1.d.x, var_0.b, 341f))), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.e, 1u, u_input.b.x, u_input.b.x), countOneBits(vec4<u32>(20524u, 4257u, 45551u, var_1.e)), select(vec4<u32>(var_1.e, 60590u, 39611u, 27696u), vec4<u32>(var_1.e, 0u, 31086u, 2421u), vec4<bool>(false, var_0.a, var_0.a, var_0.a)))), 4294967295u & func_3(var_0.d, Struct_2(false, var_1.d.x, global0.yz, vec3<i32>(global0.x, var_1.c.d.x, 1823i)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.d.x, var_1.c.b, -2500f), var_1.d.zzz))).x, _wgslsmith_clamp_u32(1u, var_1.e, ~u_input.b.x)), select(-(-vec4<i32>(-1i, global0.x, -1i, u_input.a) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(21269u, 4294967295u, var_1.e, 4294967295u), vec4<u32>(var_1.e, 4294967295u, 0u, 4294967295u), vec4<u32>(u_input.b.x, 9603u, 92187u, 8898u)) % vec4<u32>(32u))), ~(~(-vec4<i32>(2147483647i, 2147483647i, 3034i, 1i))), select(select(select(vec4<bool>(var_1.a.x, global1[_wgslsmith_index_u32(81767u, 8u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 8u)], false, false, false), vec4<bool>(global1[_wgslsmith_index_u32(24796u, 8u)], var_1.b.a, true, var_1.a.x)), select(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 8u)], var_0.a, var_1.a.x), vec4<bool>(true, global1[_wgslsmith_index_u32(18728u, 8u)], global1[_wgslsmith_index_u32(0u, 8u)], true), vec4<bool>(var_1.a.x, true, var_1.c.a, var_0.a)), var_1.a.x | true), select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 8u)], true, var_1.a.x), vec4<bool>(true, var_0.a, global1[_wgslsmith_index_u32(79952u, 8u)], true), global1[_wgslsmith_index_u32(25447u, 8u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(u_input.b.x, 8u)], global1[_wgslsmith_index_u32(var_1.e, 8u)], global1[_wgslsmith_index_u32(1u, 8u)]), vec4<bool>(true, true, true, true)), vec4<bool>(var_0.a, true, var_0.a & false, false))), _wgslsmith_mod_u32(min(54040u, _wgslsmith_dot_vec2_u32(u_input.b.yy, vec2<u32>(4294967295u, 30063u))), u_input.b.x), vec2<f32>(_wgslsmith_f_op_f32(round(func_5(abs(vec2<u32>(var_1.e, u_input.b.x)), Struct_5(-111f, var_1.d.xyz)).b)), _wgslsmith_f_op_f32(-var_1.d.x)));
}

