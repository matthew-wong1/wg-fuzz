struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: bool,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(22094u, 73879u, 1u), vec3<u32>(0u, 0u, 0u), vec3<u32>(25992u, 69704u, 4294967295u), vec3<u32>(1u, 59998u, 0u), vec3<u32>(1u, 4107u, 17147u), vec3<u32>(24344u, 4294967295u, 1u), vec3<u32>(370u, 26535u, 50110u), vec3<u32>(95709u, 1u, 1u), vec3<u32>(100319u, 41724u, 58383u), vec3<u32>(0u, 41304u, 12435u), vec3<u32>(0u, 107603u, 2048u), vec3<u32>(1u, 1u, 25513u), vec3<u32>(67145u, 37002u, 25145u), vec3<u32>(27449u, 11179u, 4294967295u), vec3<u32>(4294967295u, 26676u, 1u), vec3<u32>(40172u, 39332u, 1u), vec3<u32>(1u, 32635u, 23151u), vec3<u32>(126716u, 34105u, 1u), vec3<u32>(0u, 1u, 1u), vec3<u32>(8056u, 4294967295u, 0u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(0u, 37864u, 19369u), vec3<u32>(0u, 7839u, 24294u), vec3<u32>(1u, 51523u, 0u));

var<private> global1: array<Struct_1, 3>;

var<private> global2: array<vec2<u32>, 12>;

var<private> global3: vec4<bool>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    global0 = array<vec3<u32>, 24>();
    global2 = array<vec2<u32>, 12>();
    var var_0 = arg_0;
    var var_1 = select(vec3<i32>(~(-arg_0.e.x), (u_input.e ^ arg_0.e.x) & min(_wgslsmith_clamp_i32(9177i, arg_0.e.x, u_input.e), i32(-1i) * -35684i), arg_0.e.x), vec3<i32>(firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_div_i32(0i, var_0.e.x), _wgslsmith_dot_vec3_i32(vec3<i32>(59256i, -15901i, arg_0.e.x), vec3<i32>(0i, -25690i, u_input.e)))), var_0.e.x, _wgslsmith_div_i32(arg_0.e.x, 0i)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-149f * _wgslsmith_f_op_f32(-arg_0.a)))) != _wgslsmith_f_op_f32(-arg_1.x));
    var_1 = countOneBits(~_wgslsmith_mod_vec3_i32(vec3<i32>(-39976i, -34270i, 23026i), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.e.x, arg_0.e.x, -2147483647i) >> (vec3<u32>(u_input.b, 4294967295u, 31257u) % vec3<u32>(32u)), ~vec3<i32>(32100i, u_input.a.x, 10986i))));
    return 458f;
}

fn func_2() -> Struct_1 {
    var var_0 = -515f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1186f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(620f, vec2<bool>(global3.x, true), true, vec4<bool>(false, true, true, global3.x), vec2<i32>(-35325i, u_input.a.x)), _wgslsmith_div_vec3_f32(vec3<f32>(625f, -911f, 348f), vec3<f32>(-455f, -204f, 1000f)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + 1343f), 1693f, u_input.b <= 4294967295u)))));
    global0 = array<vec3<u32>, 24>();
    let var_1 = true;
    let var_2 = min(firstLeadingBit(select(vec4<u32>(~4294967295u, u_input.c, 1u, 16060u << (u_input.d % 32u)), vec4<u32>(u_input.c, _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(u_input.c, 24u)], vec3<u32>(55603u, 42838u, 79296u)), u_input.b, u_input.b ^ 40130u), select(global3.x, false, true))), max(_wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.b, u_input.d, firstLeadingBit(1u), _wgslsmith_sub_u32(4294967295u, 0u)), _wgslsmith_add_vec4_u32(select(vec4<u32>(45910u, u_input.d, 28938u, u_input.b), vec4<u32>(u_input.b, 90513u, 4294967295u, u_input.d), vec4<bool>(true, var_1, var_1, var_1)), _wgslsmith_mult_vec4_u32(vec4<u32>(107712u, 97137u, u_input.b, u_input.c), vec4<u32>(u_input.b, u_input.b, 0u, 1u)))), firstTrailingBit(~vec4<u32>(4294967295u, 1u, 5916u, u_input.c)) << (select(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.d, 4294967295u), vec4<u32>(u_input.d, 1u, u_input.c, u_input.d), vec4<u32>(1u, u_input.c, 1u, u_input.d)), vec4<u32>(91759u, u_input.b, 1u, u_input.d), false) % vec4<u32>(32u))));
    return global1[_wgslsmith_index_u32(~countOneBits(~(~_wgslsmith_clamp_u32(4294967295u, var_2.x, u_input.c))), 3u)];
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = vec3<bool>(any(global3.xw), !arg_3.d.x, u_input.d != (_wgslsmith_add_u32(~4294967295u, abs(0u)) >> (1u % 32u)));
    var var_1 = _wgslsmith_f_op_f32(round(arg_2.a));
    var_1 = _wgslsmith_f_op_f32(-arg_0.a);
    var var_2 = arg_3;
    var var_3 = !((min(-var_2.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), arg_2.e)) >> (_wgslsmith_mod_u32(~91233u, _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(22147u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)])) % 32u)) >= -arg_3.e.x);
    return func_2();
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = countOneBits(vec3<u32>(u_input.d, _wgslsmith_mod_u32(u_input.d, u_input.b), firstLeadingBit(60529u)));
    global3 = !(!arg_1.d);
    let var_1 = ~1u;
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.a, arg_1.a)) * -751f)) == _wgslsmith_f_op_f32(arg_1.a * -1000f), all(vec2<bool>(any(arg_2.d.zxy), true)), !arg_2.d.x);
    var var_3 = select(reverseBits(~4294967295u), firstTrailingBit(~_wgslsmith_div_u32(0u, 11022u) ^ ~u_input.d), !global3.x);
    return func_4(func_2(), !var_2.x, func_2(), func_2());
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a.x, u_input.a.x, u_input.e), ~vec3<i32>(-47234i, u_input.a.x, 55288i), ~vec3<i32>(u_input.e, u_input.a.x, arg_1.e.x)), -vec3<i32>(0i, 1i, u_input.a.x)), vec3<i32>(reverseBits(u_input.e) << (countOneBits(u_input.d) % 32u), firstTrailingBit(~(-2147483647i)), u_input.e)), ~(abs(max(vec3<i32>(-49861i, -61408i, -12688i), vec3<i32>(0i, arg_1.e.x, u_input.e))) & firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.e.x, 1i, u_input.a.x), vec3<i32>(arg_1.e.x, u_input.e, 27182i), vec3<i32>(-2147483647i, u_input.a.x, -2147483647i)))));
    global1 = array<Struct_1, 3>();
    var var_1 = ~(~arg_1.e.x >> (_wgslsmith_div_u32(arg_0 | (u_input.b ^ arg_0), max(17660u, _wgslsmith_dot_vec2_u32(vec2<u32>(67300u, u_input.d), vec2<u32>(u_input.b, arg_0)))) % 32u));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(~33649u, max(0u >> (u_input.c % 32u), arg_0)), 3u)], _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1308f, arg_1.a, arg_1.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(695f, -1794f, arg_1.a)) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.a, -542f, arg_1.a), vec3<f32>(-371f, arg_1.a, -1436f))))))), !(!global3.zy), u_input.a.x == (-select(u_input.e, 1i, arg_1.d.x) << (~75684u % 32u)), arg_1.d, ~_wgslsmith_sub_vec2_i32(-(~arg_1.e), vec2<i32>(u_input.a.x, -1i)));
    var var_3 = _wgslsmith_clamp_i32(arg_1.e.x, _wgslsmith_clamp_i32(~(min(u_input.e, -2147483647i) << (~u_input.c % 32u)), -3841i, ~select(~(-47835i), ~arg_1.e.x, var_2.c)), _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(i32(-1i) * -25282i, func_4(arg_1, false, Struct_1(-728f, vec2<bool>(true, true), false, vec4<bool>(false, false, arg_1.c, var_2.b.x), vec2<i32>(arg_1.e.x, 1i)), arg_1).e.x), -u_input.e), firstLeadingBit(-2147483647i)));
    return global1[_wgslsmith_index_u32(1u, 3u)];
}

fn func_6(arg_0: Struct_1) -> u32 {
    global2 = array<vec2<u32>, 12>();
    var var_0 = func_2();
    var var_1 = global1[_wgslsmith_index_u32(~4294967295u, 3u)];
    var var_2 = arg_0;
    global0 = array<vec3<u32>, 24>();
    return _wgslsmith_clamp_u32(u_input.d << (~(~(~u_input.c)) % 32u), 55745u, u_input.c);
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_4(func_4(Struct_1(arg_0.a, vec2<bool>(true, all(arg_0.d)), false, !arg_0.d, func_1(abs(vec2<i32>(-12393i, 41296i)), arg_0, global1[_wgslsmith_index_u32(u_input.c ^ u_input.b, 3u)], firstTrailingBit(vec4<u32>(u_input.d, u_input.c, u_input.d, 0u))).e), u_input.c == u_input.b, Struct_1(_wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(max(arg_0.a, 644f))), !(!arg_0.d.zx), true, func_4(Struct_1(-165f, arg_0.d.xw, false, arg_0.d, vec2<i32>(-40277i, 9860i)), arg_0.b.x, Struct_1(arg_0.a, global3.yw, true, vec4<bool>(global3.x, arg_0.c, true, global3.x), u_input.a), Struct_1(arg_0.a, vec2<bool>(false, arg_0.b.x), true, vec4<bool>(true, true, false, global3.x), vec2<i32>(0i, arg_0.e.x))).d, ~u_input.a), Struct_1(-396f, global3.zz, all(global3.yx), vec4<bool>(false, 58373i <= arg_0.e.x, global3.x, false), u_input.a)), !(false || global3.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.a, _wgslsmith_f_op_f32(arg_0.a - 2248f))) - func_2().a), arg_0.d.yw, !all(arg_0.d.xw), arg_0.d, select(~vec2<i32>(-1i, -26300i), max(u_input.a, ~vec2<i32>(u_input.a.x, 1i)), global3.yx)), func_2());
    var var_1 = global1[_wgslsmith_index_u32(85646u, 3u)];
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-func_2().a), var_0.d.zx, any(vec2<bool>(var_0.b.x, select(var_1.d.x, func_4(global1[_wgslsmith_index_u32(4294967295u, 3u)], var_0.d.x, Struct_1(1467f, var_1.d.xx, arg_0.b.x, vec4<bool>(global3.x, var_0.d.x, true, var_0.c), var_0.e), global1[_wgslsmith_index_u32(u_input.d, 3u)]).b.x, global3.x))), !func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(18u, u_input.c, u_input.d, 4294967295u) >> (vec4<u32>(u_input.c, u_input.b, 64097u, u_input.b) % vec4<u32>(32u)), ~vec4<u32>(1u, 0u, 34037u, 1u)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -578f), vec2<bool>(true, var_1.b.x), !arg_0.b.x, func_5(59232u, global1[_wgslsmith_index_u32(4294967295u, 3u)]).d, countOneBits(u_input.a))).d, vec2<i32>(firstTrailingBit(arg_0.e.x >> (u_input.b % 32u)), ~func_2().e.x));
    var_2 = global1[_wgslsmith_index_u32(1u, 3u)];
    global1 = array<Struct_1, 3>();
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), func_4(Struct_1(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(1176f - var_0.a)), func_5(1u, func_4(Struct_1(arg_0.a, arg_0.b, var_2.d.x, vec4<bool>(true, true, arg_0.c, arg_0.d.x), u_input.a), false, Struct_1(1208f, vec2<bool>(global3.x, false), var_0.c, vec4<bool>(var_1.d.x, var_2.d.x, true, false), vec2<i32>(var_1.e.x, -1i)), Struct_1(2200f, vec2<bool>(true, global3.x), false, var_1.d, vec2<i32>(var_2.e.x, -35071i)))).d.ww, !var_0.c, func_2().d, _wgslsmith_mult_vec2_i32(vec2<i32>(23230i, -2147483647i) ^ var_0.e, -vec2<i32>(var_1.e.x, -9705i))), false, func_1(reverseBits(vec2<i32>(-2147483647i, var_1.e.x)) << (global2[_wgslsmith_index_u32(~u_input.d, 12u)] % vec2<u32>(32u)), func_2(), global1[_wgslsmith_index_u32(u_input.b, 3u)], select(vec4<u32>(27801u, u_input.c, u_input.b, u_input.d), ~vec4<u32>(u_input.c, u_input.b, 24574u, u_input.d), var_0.b.x)), Struct_1(func_5(u_input.d >> (u_input.b % 32u), func_5(1u, arg_0)).a, !(!var_2.b), false | !global3.x, !vec4<bool>(var_0.c, true, var_0.c, false), _wgslsmith_clamp_vec2_i32(var_2.e ^ vec2<i32>(14827i, 28191i), vec2<i32>(1i, var_2.e.x) ^ vec2<i32>(var_0.e.x, var_2.e.x), vec2<i32>(arg_0.e.x, 43080i) ^ vec2<i32>(1i, 59443i)))).d.yy, true, var_1.d, _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32((vec2<i32>(var_0.e.x, var_1.e.x) << (vec2<u32>(u_input.c, 1u) % vec2<u32>(32u))) & var_0.e, var_2.e), abs(func_4(func_5(40983u, Struct_1(-776f, vec2<bool>(var_1.b.x, false), var_1.c, var_0.d, vec2<i32>(u_input.e, var_1.e.x))), all(vec4<bool>(true, false, true, true)), Struct_1(-362f, vec2<bool>(var_1.d.x, arg_0.c), var_1.c, vec4<bool>(true, true, arg_0.c, true), vec2<i32>(4195i, 2147483647i)), func_4(Struct_1(1000f, vec2<bool>(arg_0.d.x, true), true, var_0.d, var_0.e), true, arg_0, Struct_1(-1413f, var_2.b, var_1.c, var_1.d, arg_0.e))).e)));
}

fn func_8(arg_0: Struct_1, arg_1: u32) -> i32 {
    let var_0 = func_4(func_2(), arg_0.e.x < firstTrailingBit(-30739i), Struct_1(func_7(global1[_wgslsmith_index_u32(arg_1 ^ (arg_1 >> (arg_1 % 32u)), 3u)]).a, func_5(0u | _wgslsmith_sub_u32(1u, u_input.d), Struct_1(_wgslsmith_f_op_f32(arg_0.a - 668f), select(vec2<bool>(global3.x, arg_0.d.x), arg_0.b, global3.wx), false, !vec4<bool>(arg_0.c, arg_0.b.x, global3.x, global3.x), func_1(vec2<i32>(0i, -14583i), Struct_1(-135f, vec2<bool>(true, true), true, arg_0.d, vec2<i32>(2147483647i, arg_0.e.x)), global1[_wgslsmith_index_u32(arg_1, 3u)], vec4<u32>(arg_1, 37803u, arg_1, 7491u)).e)).d.xw, func_7(Struct_1(974f, arg_0.b, func_1(vec2<i32>(-24732i, arg_0.e.x), arg_0, global1[_wgslsmith_index_u32(arg_1, 3u)], vec4<u32>(19028u, 46679u, arg_1, arg_1)).b.x, !arg_0.d, func_2().e)).b.x, !select(!arg_0.d, !arg_0.d, global3.x && false), arg_0.e), arg_0);
    let var_1 = firstTrailingBit(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.e, var_0.e.x, 1i), vec3<i32>(-2147483647i, -47653i, 2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.e.x, 25535i, -10345i) << (global0[_wgslsmith_index_u32(u_input.b, 24u)] % vec3<u32>(32u)), abs(vec3<i32>(var_0.e.x, 98944i, 36331i)))), firstTrailingBit(-vec3<i32>(21366i, 47265i, u_input.e)), vec3<i32>(-1i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a.x, 28484i), -u_input.a.x), arg_0.e.x)));
    var var_2 = vec2<u32>(abs(64113u), max(_wgslsmith_add_u32(~(~1u), u_input.d), 5449u));
    let var_3 = arg_0;
    global3 = !(!(!arg_0.d));
    return -(_wgslsmith_div_i32(-22497i, reverseBits(var_3.e.x)) | -var_3.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_8(func_7(global1[_wgslsmith_index_u32(func_6(func_5(u_input.d, func_1(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(1228u, 3u)], vec4<u32>(84315u, u_input.d, u_input.b, u_input.c)))), 3u)]), min(u_input.c, ~(u_input.d >> (~u_input.b % 32u))));
    let var_1 = !(!vec4<bool>(false, global3.x, global3.x, any(vec4<bool>(false, true, true, true))));
    let var_2 = Struct_1(func_5(~1u, global1[_wgslsmith_index_u32(u_input.d, 3u)]).a, !var_1.wy, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(u_input.c, 3u)], vec3<f32>(408f, 239f, 941f))), _wgslsmith_f_op_f32(floor(-917f))))) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(165f + 1070f) - -780f), -835f)), !var_1, _wgslsmith_mod_vec2_i32(-(u_input.a << (vec2<u32>(u_input.b, 40186u) % vec2<u32>(32u))), -(vec2<i32>(u_input.a.x, 2147483647i) & u_input.a)) >> (vec2<u32>(1u, _wgslsmith_sub_u32(17859u, u_input.d | 4294967295u)) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, var_2.a, var_2.a, 931f) + vec4<f32>(-102f, var_2.a, 1122f, -517f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_2.a, 224f, var_2.a, 767f)))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(369f, var_2.a, 1566f, -1324f) - vec4<f32>(-767f, 269f, 2064f, -809f)), vec4<f32>(var_2.a, var_2.a, -591f, var_2.a)))))));
    let var_4 = global1[_wgslsmith_index_u32(45207u | u_input.b, 3u)];
    global0 = array<vec3<u32>, 24>();
    let var_5 = ~(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_4.e.x, -3471i, u_input.a.x, 14557i) << (vec4<u32>(u_input.c, 103099u, u_input.c, 48103u) % vec4<u32>(32u)), ~vec4<i32>(var_4.e.x, -9508i, 2147483647i, 44163i)), -vec4<i32>(var_2.e.x, var_4.e.x, 17816i, -1i), ~(vec4<i32>(var_2.e.x, 1i, var_4.e.x, var_2.e.x) >> (vec4<u32>(u_input.c, 32213u, 3742u, u_input.c) % vec4<u32>(32u)))) << ((~vec4<u32>(u_input.d, u_input.c, 21555u, u_input.c) << (reverseBits(vec4<u32>(u_input.c, 0u, 4294967295u, u_input.c) >> (vec4<u32>(736u, u_input.b, 4294967295u, u_input.d) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_6 = Struct_1(func_5(~u_input.d & ~_wgslsmith_mod_u32(u_input.d, 17717u), var_2).a, vec2<bool>(false, !(!(!var_4.c))), !var_1.x, vec4<bool>(func_5(1u, Struct_1(_wgslsmith_div_f32(-1678f, 1282f), vec2<bool>(var_4.d.x, var_1.x), global3.x, var_1, var_4.e)).d.x, select(58253u, min(4294967295u, 4294967295u), true) == 40925u, !(!(u_input.b > u_input.c)), all(var_4.d.wzz)), vec2<i32>(-var_5.x, var_5.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.e.x);
}

