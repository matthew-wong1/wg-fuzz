struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(-41477i, 24491i, 2147483647i, 0i), vec4<i32>(-20259i, i32(-2147483648), 2147483647i, 6924i), vec4<i32>(21976i, 1i, -1i, 1i), vec4<i32>(2147483647i, 2147483647i, -1i, 1i), vec4<i32>(23909i, 21573i, 1i, 1i), vec4<i32>(i32(-2147483648), 19530i, -24097i, 2147483647i), vec4<i32>(40509i, -15872i, -47176i, -1602i), vec4<i32>(-1i, i32(-2147483648), -103203i, -31023i), vec4<i32>(-26665i, 22262i, 2147483647i, -55739i), vec4<i32>(1572i, 4990i, 56547i, -1i), vec4<i32>(2147483647i, -33065i, 26187i, 0i), vec4<i32>(-974i, -1i, -17123i, 1i), vec4<i32>(i32(-2147483648), 0i, 11414i, 1i), vec4<i32>(2147483647i, 64970i, -13832i, 0i), vec4<i32>(1i, 16343i, 0i, 15717i), vec4<i32>(1i, i32(-2147483648), 1545i, 0i), vec4<i32>(2147483647i, -1i, -1i, 2147483647i), vec4<i32>(-20379i, 2147483647i, 0i, -1i), vec4<i32>(-1i, 0i, 0i, 53286i), vec4<i32>(2147483647i, 5425i, -5654i, 1i), vec4<i32>(8260i, -1i, -22811i, 31872i), vec4<i32>(-16786i, -1i, 37298i, 1i), vec4<i32>(2147483647i, 68889i, -76800i, -9596i), vec4<i32>(0i, 41323i, 0i, -19091i), vec4<i32>(-13698i, -34054i, 37552i, -17688i));

var<private> global1: array<Struct_3, 2> = array<Struct_3, 2>(Struct_3(vec2<i32>(-1i, 1i)), Struct_3(vec2<i32>(2147483647i, -204i)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>) -> u32 {
    let var_0 = select(select(select(vec3<bool>(true, true, false), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), any(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))), !any(vec2<bool>(false, true))), all(vec3<bool>(true, true, true))), vec3<bool>(true, (true && all(vec2<bool>(true, false))) && (all(vec4<bool>(true, true, false, true)) || true), all(vec3<bool>(true, true, true))), !select(all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true))), all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), false));
    var var_1 = _wgslsmith_dot_vec3_i32(abs(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-62840i, -45402i, 0i), -vec3<i32>(20575i, -1i, 19700i)), vec3<i32>(0i, 1i, ~0i), vec3<i32>(~(-21609i), firstTrailingBit(2147483647i), -2147483647i))), -(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(-12996i, -6151i, 17507i)), abs(vec3<i32>(5071i, -1i, -1i))) ^ (~vec3<i32>(0i, 3488i, -27633i) & firstTrailingBit(vec3<i32>(4358i, 0i, -4779i)))));
    global1 = array<Struct_3, 2>();
    global0 = array<vec4<i32>, 25>();
    let var_2 = Struct_4(u_input.d.yy);
    return var_2.a.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> bool {
    let var_0 = 1i;
    var var_1 = _wgslsmith_mod_vec2_u32(~u_input.d.yy, vec2<u32>(func_3(vec4<f32>(_wgslsmith_f_op_f32(floor(-1762f)), -1306f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec4<u32>(4294967295u, 4294967295u, _wgslsmith_div_u32(u_input.b, 95367u), 35408u)), ~abs(~u_input.a.x)));
    let var_2 = Struct_1(vec4<i32>(arg_0.b.b.x, -(arg_0.a.a.x >> (~var_1.x % 32u)), -7872i >> (u_input.b % 32u), _wgslsmith_div_i32(-var_0, 0i)), _wgslsmith_mod_vec2_i32(arg_0.c.b, -_wgslsmith_add_vec2_i32(arg_0.a.b ^ vec2<i32>(arg_0.b.a.x, arg_0.c.b.x), vec2<i32>(arg_0.c.b.x, -12400i))));
    global1 = array<Struct_3, 2>();
    var var_3 = Struct_4(_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(u_input.d.x, 6001u), _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(var_1.x, var_1.x, u_input.d.x))), ~vec2<u32>(1u, 42917u) ^ vec2<u32>(var_1.x, u_input.d.x)), ~u_input.a.xx));
    return !all(arg_1);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5) -> vec4<bool> {
    var var_0 = false;
    let var_1 = Struct_1(~(-_wgslsmith_mod_vec4_i32(min(global0[_wgslsmith_index_u32(52578u, 25u)], global0[_wgslsmith_index_u32(u_input.b, 25u)]), global0[_wgslsmith_index_u32(~1u, 25u)])), vec2<i32>(_wgslsmith_mod_i32(-2147483647i >> (_wgslsmith_clamp_u32(1u, 33527u, 2678u) % 32u), 0i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, 19152u, 9407u, 0u), vec4<u32>(0u, u_input.d.x, arg_0.a.x, 0u)) % 32u)), -720i));
    global1 = array<Struct_3, 2>();
    global0 = array<vec4<i32>, 25>();
    var_0 = all(vec3<bool>(arg_1.a || select(true, true, true), arg_1.b, arg_1.b));
    return vec4<bool>(false, !arg_1.a, true, false);
}

fn func_1() -> f32 {
    var var_0 = reverseBits(_wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(u_input.c, 25u)], _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, -2147483647i, reverseBits(0i)), global0[_wgslsmith_index_u32(~u_input.c, 25u)])));
    global0 = array<vec4<i32>, 25>();
    global1 = array<Struct_3, 2>();
    var var_1 = func_4(Struct_4(u_input.d.zz), Struct_5(true, !func_2(Struct_2(Struct_1(global0[_wgslsmith_index_u32(54684u, 25u)], var_0.zx), Struct_1(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.yx), Struct_1(vec4<i32>(var_0.x, 0i, var_0.x, var_0.x), vec2<i32>(var_0.x, 39598i))), vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(457f, _wgslsmith_f_op_f32(f32(-1f) * -1924f)) - vec2<f32>(_wgslsmith_f_op_f32(-245f + 157f), _wgslsmith_f_op_f32(ceil(-800f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1090f))), _wgslsmith_f_op_f32(1f + 808f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1529f, 1761f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1073f, -1036f), vec2<f32>(1391f, -108f)))))));
    return -2492f;
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: vec2<i32>) -> Struct_5 {
    let var_0 = Struct_5(arg_1, true);
    global1 = array<Struct_3, 2>();
    global0 = array<vec4<i32>, 25>();
    let var_1 = Struct_2(Struct_1(vec4<i32>(-arg_2.x, _wgslsmith_add_i32(6117i, arg_2.x), ~(~arg_2.x), ~12890i), arg_2), Struct_1(-firstTrailingBit(vec4<i32>(1i, arg_2.x, -1i, arg_2.x)), vec2<i32>(-9095i, arg_2.x)), Struct_1(vec4<i32>(arg_2.x, -28886i, ~(~2147483647i), -20457i), max(arg_2, arg_2)));
    let var_2 = _wgslsmith_mod_i32(~var_1.b.a.x, ~countOneBits(var_1.a.b.x) >> ((~u_input.c ^ ~1u) % 32u)) & min(min(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, 10662i), vec2<i32>(arg_2.x, var_1.a.b.x)), _wgslsmith_sub_i32(arg_2.x, arg_2.x)), 8602i), var_1.c.a.x);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(select(u_input.a.xy, abs(reverseBits(vec2<u32>(10527u, u_input.b))), all(vec2<bool>(true, false))) & _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c, u_input.d.x), ~vec2<u32>(1u, 0u) ^ u_input.a.zy));
    global1 = array<Struct_3, 2>();
    global1 = array<Struct_3, 2>();
    let var_1 = func_5(!((_wgslsmith_f_op_f32(f32(-1f) * -1402f) >= _wgslsmith_f_op_f32(func_1())) & true), any(select(vec4<bool>(true, all(vec4<bool>(false, false, false, false)), any(vec4<bool>(true, true, false, true)), func_4(Struct_4(var_0.a), Struct_5(true, true)).x), vec4<bool>(true, true, all(vec3<bool>(true, false, true)), all(vec3<bool>(true, false, true))), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), false))), firstLeadingBit(~vec2<i32>(~(-2147483647i), 2147483647i >> (u_input.c % 32u))));
    var var_2 = Struct_1(-global0[_wgslsmith_index_u32(countOneBits(abs(4294967295u << (u_input.b % 32u))), 25u)], ~vec2<i32>(-(~0i), firstTrailingBit(-50941i) | select(2147483647i, 47212i, var_1.b)));
    global0 = array<vec4<i32>, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-902f - _wgslsmith_div_f32(533f, 1319f))))));
}

