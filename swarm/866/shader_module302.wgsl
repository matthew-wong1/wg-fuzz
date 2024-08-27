struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: Struct_2,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<u32>, 19>;

var<private> global2: vec3<i32>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: u32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-182f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-557f)))))));
    var var_1 = Struct_3(Struct_1(true, global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec4_u32(vec4<u32>(2271u, u_input.e, 5534u, 2600u), vec4<u32>(arg_1, arg_1, 1u, arg_1)), 1016u & arg_1, arg_0.x) | arg_1, 19u)]), Struct_2(abs(~(~4294967295u)), reverseBits(1u), vec3<i32>(-33414i, u_input.d, ~_wgslsmith_sub_i32(1i, global2.x)), Struct_1(false, _wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, 61578u), ~u_input.b.xw))), abs(~arg_1), Struct_2(_wgslsmith_mult_u32(u_input.a, 6751u), 4294967295u, -_wgslsmith_clamp_vec3_i32(-vec3<i32>(global2.x, global2.x, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(global2.x, -63605i, u_input.d), vec3<i32>(global2.x, -1i, -27227i)), -vec3<i32>(u_input.d, global2.x, 0i)), Struct_1(any(arg_0.yz), ~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 65832u), vec2<u32>(1u, u_input.e)))), ~(select(u_input.b ^ u_input.b, vec4<u32>(1u, 61815u, 4220u, arg_1), arg_0.x) << (u_input.b % vec4<u32>(32u))));
    global1 = array<vec2<u32>, 19>();
    global2 = vec3<i32>(u_input.d, min(499i, global2.x), _wgslsmith_dot_vec3_i32(abs(-(~vec3<i32>(global2.x, var_1.d.c.x, u_input.d))), ~(vec3<i32>(global2.x, u_input.d, u_input.d) << (u_input.b.zxw % vec3<u32>(32u))) | var_1.d.c));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(545f)), 277f, -732f, _wgslsmith_f_op_f32(-364f + 583f))) * vec4<f32>(1f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(250f))), _wgslsmith_f_op_f32(round(-1000f)))));
    return _wgslsmith_f_op_vec2_f32(var_2.zw + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-558f)), _wgslsmith_f_op_f32(214f - var_2.x))), _wgslsmith_f_op_f32(-var_2.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2.x, var_2.x), var_2.xy)) - vec2<f32>(-1000f, 1357f)) + vec2<f32>(var_2.x, var_2.x)))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> i32 {
    let var_0 = u_input.b.xzy;
    let var_1 = countOneBits(~(vec4<i32>(-1i) * -vec4<i32>(9800i, global2.x, global2.x, u_input.d)));
    var var_2 = Struct_1(!(!arg_0.a), arg_0.b);
    global2 = -(vec3<i32>(select(var_1.x & -1i, ~(-37873i), false), 28693i & _wgslsmith_sub_i32(global2.x, var_1.x), var_1.x) & (-vec3<i32>(var_1.x, -2147483647i, 0i) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(21272i, 0i, u_input.d), vec3<i32>(-33762i, u_input.d, -1i) >> (vec3<u32>(u_input.e, u_input.b.x, arg_0.b.x) % vec3<u32>(32u)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, !(!var_2.a) && true), 0u));
    return -(~(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(21273i, -1i, 28871i, 974i), var_1), firstTrailingBit(-1i)) << (~1u % 32u)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    var var_0 = arg_0.x;
    global2 = max(_wgslsmith_mod_vec3_i32(vec3<i32>(0i << (1u % 32u), global2.x, arg_0.x), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(43774i, -46325i, -34596i), vec3<i32>(u_input.d, 0i, -2147483647i)), min(vec3<i32>(1i, global2.x, -51255i), vec3<i32>(36040i, arg_0.x, u_input.d)))), vec3<i32>(_wgslsmith_add_i32(-2147483647i, countOneBits(arg_0.x)), countOneBits(global2.x << (u_input.a % 32u)), 1i)) | -firstLeadingBit(vec3<i32>(~u_input.d, 32553i, func_2(Struct_1(true, u_input.b.xx), -1325f)));
    global1 = array<vec2<u32>, 19>();
    var_0 = abs(-42961i);
    var var_1 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(~u_input.d, ~(-25740i), ~global2.x), ~(vec3<i32>(0i, u_input.d, 2147483647i) << (vec3<u32>(u_input.b.x, u_input.c.x, u_input.c.x) % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, u_input.d & reverseBits(global2.x), 2147483647i), _wgslsmith_div_vec3_i32(vec3<i32>(-1i ^ arg_0.x, -10469i, _wgslsmith_sub_i32(2147483647i, 1i)), _wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.d, -43135i, global2.x), vec3<i32>(55163i, global2.x, -2147483647i))), -(~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 0i, u_input.d), vec3<i32>(2147483647i, 64133i, 24833i)))));
    return Struct_3(Struct_1(true, ~firstLeadingBit(global1[_wgslsmith_index_u32(0u, 19u)] | u_input.c)), Struct_2(~u_input.e, countOneBits(abs(_wgslsmith_clamp_u32(0u, u_input.b.x, 0u))), select(vec3<i32>(40908i, global2.x, arg_0.x), abs(vec3<i32>(2147483647i, -1078i, arg_0.x)), true) << (vec3<u32>(~u_input.a, abs(53140u), u_input.c.x) % vec3<u32>(32u)), Struct_1(any(vec4<bool>(false, true, false, false)) & false, vec2<u32>(u_input.a, 0u) | ~global1[_wgslsmith_index_u32(0u, 19u)])), abs(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(4294967295u | u_input.b.x, ~49002u, u_input.c.x, ~53754u))), Struct_2(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), ~(vec3<i32>(arg_0.x, -7027i, global2.x) | vec3<i32>(1i, 2147483647i, -46613i)) & vec3<i32>(_wgslsmith_mult_i32(global2.x, -16682i), u_input.d, arg_0.x), Struct_1(!(arg_0.x >= u_input.d), select(vec2<u32>(u_input.b.x, u_input.e), max(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)]), vec2<bool>(true, true)))), vec4<u32>(abs(27655u), ~4294967295u, u_input.a, _wgslsmith_add_u32(min(7543u, _wgslsmith_add_u32(1u, u_input.a)), u_input.b.x)));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>) -> Struct_3 {
    global0 = reverseBits(~((_wgslsmith_clamp_u32(arg_0.e.x, 0u, 1u) >> (4294967295u % 32u)) << (u_input.c.x % 32u)));
    global2 = ~_wgslsmith_mult_vec3_i32(arg_0.b.c | firstTrailingBit(_wgslsmith_add_vec3_i32(arg_0.b.c, vec3<i32>(u_input.d, u_input.d, global2.x))), arg_0.b.c);
    global0 = min(1u, _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_0.e.x, _wgslsmith_mult_u32(arg_0.c, 93661u)) << (30817u % 32u), countOneBits(u_input.c.x)));
    global1 = array<vec2<u32>, 19>();
    let var_0 = (abs(vec4<i32>(global2.x, 2147483647i, arg_0.d.c.x, arg_0.b.c.x) | ~vec4<i32>(1i, 0i, arg_0.b.c.x, 16710i)) | select(-select(vec4<i32>(u_input.d, -1i, arg_0.b.c.x, u_input.d), vec4<i32>(1i, 1i, u_input.d, 2904i), true), ~_wgslsmith_div_vec4_i32(vec4<i32>(arg_0.d.c.x, -12774i, 0i, 13971i), vec4<i32>(-15700i, u_input.d, 1i, -11082i)), arg_0.b.d.a)) >> (~vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(61385u, 23717u), u_input.e), u_input.e, firstTrailingBit(1u & u_input.a), ~1u) % vec4<u32>(32u));
    return Struct_3(Struct_1(func_1(global2.zy).d.d.a, vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), global1[_wgslsmith_index_u32(0u, 19u)]), arg_0.a.b.x << (~20783u % 32u))), Struct_2(~abs(4294967295u), u_input.c.x, vec3<i32>(arg_0.d.c.x, min(~84295i, _wgslsmith_mult_i32(0i, -2147483647i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(15448i, 0i, global2.x, 2147483647i), vec4<i32>(var_0.x, u_input.d, -4639i, var_0.x))), Struct_1(arg_0.a.a == any(vec4<bool>(true, arg_0.b.d.a, arg_0.b.d.a, false)), ~select(vec2<u32>(u_input.e, 4294967295u), vec2<u32>(41552u, u_input.e), true))), ~u_input.c.x << (firstTrailingBit(~select(29506u, 0u, arg_0.d.d.a)) % 32u), func_1(_wgslsmith_mod_vec2_i32(~firstLeadingBit(vec2<i32>(-2147483647i, arg_0.b.c.x)), vec2<i32>(~(-54938i), min(var_0.x, 15082i)))).d, ~(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.b.b, 1u, arg_0.b.a, 1u), u_input.b, arg_0.e) | vec4<u32>(36445u, 12108u, 1u, ~14315u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = firstLeadingBit(_wgslsmith_mod_vec3_i32(select(vec3<i32>(19973i, 2147483647i, 8142i), vec3<i32>(u_input.d, -2147483647i, global2.x), vec3<bool>(false, true, true)), -vec3<i32>(u_input.d, u_input.d, -1i) & ~vec3<i32>(-2147483647i, u_input.d, 2147483647i))) & vec3<i32>(u_input.d, _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(8757i, global2.x)), -(~vec2<i32>(-2147483647i, u_input.d))), global2.x);
    global1 = array<vec2<u32>, 19>();
    var var_0 = Struct_2(~u_input.c.x, u_input.c.x, _wgslsmith_add_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(~vec3<i32>(8544i, 0i, u_input.d), -vec3<i32>(1i, -2147483647i, -1i))), vec3<i32>(-13578i, countOneBits(u_input.d << (0u % 32u)), -21676i | select(2147483647i, u_input.d, true))), Struct_1(any(vec3<bool>(true, all(vec3<bool>(true, true, false)), true)), select(u_input.b.zx, global1[_wgslsmith_index_u32(u_input.a, 19u)], vec2<bool>(true, true))));
    let var_1 = ~_wgslsmith_mod_u32(firstTrailingBit(u_input.b.x) | 7838u, ~27927u & (60258u ^ u_input.e));
    var var_2 = -reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-50364i, -1i, u_input.d, global2.x), _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.c.x, u_input.d, 24171i, global2.x) & vec4<i32>(1i, u_input.d, 0i, 782i), reverseBits(vec4<i32>(-20362i, 0i, 0i, u_input.d)))));
    var_0 = Struct_2(~(0u & _wgslsmith_mult_u32(var_0.b, u_input.b.x)), u_input.e, var_0.c, var_0.d);
    var_0 = Struct_2(u_input.c.x, 1u, var_0.c, var_0.d);
    var var_3 = ~1u & _wgslsmith_mult_u32(select(_wgslsmith_add_u32(_wgslsmith_add_u32(var_0.d.b.x, 44702u), 0u & var_0.b), select(max(u_input.b.x, u_input.a), _wgslsmith_add_u32(0u, var_1), !var_0.d.a), false), 4294967295u);
    var var_4 = func_4(func_1(vec2<i32>(~1i, _wgslsmith_mult_i32(21846i, var_0.c.x << (u_input.e % 32u)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-729f, -260f, -1157f) + vec3<f32>(1819f, 378f, 194f)) + vec3<f32>(-991f, 1273f, -1108f))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mod_vec3_u32(vec3<u32>(~var_0.b, countOneBits(var_4.b.a), abs(var_0.d.b.x)), var_4.e.xwz), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(var_4.e.zxw >> (u_input.b.yxx % vec3<u32>(32u)), u_input.b.zwy), ~_wgslsmith_add_vec3_u32(vec3<u32>(var_1, 115408u, 1u), u_input.b.ywz))), 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1658f - -1000f) - _wgslsmith_f_op_f32(-679f + 304f)))));
}

