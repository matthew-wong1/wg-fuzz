struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec4<i32>(0i, -33067i, -33943i, 40111i), vec2<bool>(false, true), 1u), Struct_1(vec4<i32>(-86053i, -63251i, 0i, 0i), vec2<bool>(false, true), 1u), Struct_1(vec4<i32>(0i, 60518i, 19837i, 21923i), vec2<bool>(true, false), 74439u), Struct_1(vec4<i32>(-1i, 49400i, 2147483647i, i32(-2147483648)), vec2<bool>(false, true), 16652u), Struct_1(vec4<i32>(-26950i, -26024i, 1i, 1i), vec2<bool>(false, true), 1961u), Struct_1(vec4<i32>(15076i, 0i, -1i, -28701i), vec2<bool>(true, false), 73019u), Struct_1(vec4<i32>(i32(-2147483648), 0i, 41578i, 2147483647i), vec2<bool>(true, false), 0u), Struct_1(vec4<i32>(21805i, 0i, 0i, 38580i), vec2<bool>(false, true), 116979u), Struct_1(vec4<i32>(0i, 47440i, 2147483647i, i32(-2147483648)), vec2<bool>(false, false), 1u), Struct_1(vec4<i32>(-1i, 0i, -52616i, -1i), vec2<bool>(true, true), 50463u), Struct_1(vec4<i32>(1i, 39448i, -5160i, 58394i), vec2<bool>(false, true), 4294967295u), Struct_1(vec4<i32>(-11120i, -8196i, 71272i, -8985i), vec2<bool>(true, true), 21327u), Struct_1(vec4<i32>(-1i, -1i, 1459i, 51480i), vec2<bool>(true, true), 4294967295u), Struct_1(vec4<i32>(i32(-2147483648), -33494i, -7820i, 37414i), vec2<bool>(true, true), 48641u), Struct_1(vec4<i32>(5554i, 1i, 0i, 0i), vec2<bool>(false, true), 0u), Struct_1(vec4<i32>(12232i, i32(-2147483648), 21733i, -1i), vec2<bool>(true, false), 0u), Struct_1(vec4<i32>(-31000i, 17298i, -18930i, -1i), vec2<bool>(true, true), 6076u), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -30925i, -35463i), vec2<bool>(false, true), 28672u), Struct_1(vec4<i32>(36966i, i32(-2147483648), 0i, -1i), vec2<bool>(true, true), 0u), Struct_1(vec4<i32>(36249i, 32640i, 2147483647i, -63187i), vec2<bool>(false, true), 46521u));

var<private> global1: array<vec2<f32>, 13>;

var<private> global2: vec4<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<i32> {
    let var_0 = Struct_1(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.c >> (23284u % 32u), -1i), u_input.c, min(0i, u_input.c) ^ -u_input.c), u_input.c, _wgslsmith_clamp_i32(-_wgslsmith_mult_i32(u_input.c, -1i), max(_wgslsmith_div_i32(u_input.c, u_input.c), 2147483647i), -27651i), ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 1i), vec4<i32>(u_input.c, 29649i, u_input.c, u_input.c)))), !vec2<bool>(!any(vec4<bool>(false, true, true, false)), any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true))), 142260u);
    global0 = array<Struct_1, 20>();
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(i32(-1i) * -var_0.a.x, -(~3289i), _wgslsmith_sub_i32(~16576i, reverseBits(var_0.a.x)), abs(~u_input.c)), ~_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(var_0.a.x, u_input.c, 0i, -1i)), select(var_0.a, var_0.a, false)), vec4<i32>((i32(-1i) * -33180i) & u_input.c, 1i, -(~17441i), var_0.a.x)), vec2<bool>((u_input.c & _wgslsmith_div_i32(6997i, u_input.c)) == -2147483647i, any(!var_0.b) | all(vec3<bool>(false, false, var_0.b.x))), 42340u);
    global1 = array<vec2<f32>, 13>();
    let var_2 = -(vec4<i32>(18259i, 30811i, -(~var_0.a.x), 2147483647i) & ~vec4<i32>(var_0.a.x ^ var_1.a.x, abs(var_0.a.x), 1i, abs(var_0.a.x)));
    return vec2<i32>(16072i, var_0.a.x);
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<i32>(firstTrailingBit(-_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1381i, u_input.c, 0i), vec3<i32>(18912i, u_input.c, 45323i)), vec3<i32>(u_input.c, u_input.c, -12861i))), _wgslsmith_dot_vec2_i32(func_3(), -min(vec2<i32>(24208i, u_input.c), vec2<i32>(7377i, -2147483647i))));
    var var_1 = u_input.d.x <= _wgslsmith_dot_vec2_u32(reverseBits(u_input.d), ~vec2<u32>(~4294967295u, 4294967295u));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 387f, global2.x, -235f)))), vec4<f32>(_wgslsmith_f_op_f32(min(global2.x, 157f)), global2.x, _wgslsmith_f_op_f32(global2.x + 364f), _wgslsmith_f_op_f32(abs(-1000f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(227f, global2.x, global2.x, 315f)), vec4<f32>(global2.x, 577f, global2.x, global2.x), 90714u < u_input.d.x)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-845f, global2.x, global2.x, -490f)) + vec4<f32>(global2.x, -1491f, -1434f, global2.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-2478f - global2.x), _wgslsmith_f_op_f32(-global2.x), 1814f, -932f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(990f, 603f, 666f, 274f))))))));
    var var_2 = global0[_wgslsmith_index_u32(select(~(~abs(~u_input.d.x)), firstLeadingBit(u_input.d.x), !select((u_input.d.x << (u_input.a % 32u)) > ~4294967295u, true, false)), 20u)];
    var_2 = Struct_1(var_2.a, !var_2.b, 0u);
    return global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~1u, 1u) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(1u | u_input.b, var_2.c >> (u_input.b % 32u)), firstLeadingBit(vec2<u32>(59830u, u_input.d.x)) ^ (u_input.d ^ u_input.d)) % 32u), 20u)];
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    var var_0 = func_2();
    global2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-910f, 1330f)) - _wgslsmith_f_op_f32(max(global2.x, -1548f))), 1335f), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-1000f * 487f))))));
    let var_1 = ~vec3<i32>(~u_input.c, -abs(arg_0.x), ~(-37540i)) >> (abs(vec3<u32>(0u, u_input.a, reverseBits(var_0.c))) % vec3<u32>(32u));
    var var_2 = ~(~countOneBits(vec4<u32>(55434u, ~0u, reverseBits(29971u), func_2().c)));
    var var_3 = Struct_1(~vec4<i32>(1i, ~_wgslsmith_clamp_i32(-1i, var_1.x, 90661i), (i32(-1i) * -1i) ^ (var_1.x ^ 11280i), -20297i), func_2().b, ~_wgslsmith_mod_u32(41841u, 1u));
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(1u, 13u)];
    let var_1 = global0[_wgslsmith_index_u32(func_1(_wgslsmith_mod_vec4_i32(~(-vec4<i32>(0i, 2147483647i, u_input.c, 2147483647i)), vec4<i32>(u_input.c, -u_input.c, -(u_input.c & u_input.c), u_input.c))), 20u)];
    var var_2 = global0[_wgslsmith_index_u32(~22924u, 20u)];
    global1 = array<vec2<f32>, 13>();
    var var_3 = var_2.a;
    let var_4 = global0[_wgslsmith_index_u32(35297u, 20u)];
    var_2 = Struct_1(select(var_4.a, min(vec4<i32>(var_2.a.x, 1i, -1i, u_input.c), ~vec4<i32>(-33652i, u_input.c, 2147483647i, -2027i)) >> ((_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, var_2.c, 21595u, 51955u), vec4<u32>(u_input.a, 26551u, 42650u, var_4.c)) | _wgslsmith_mult_vec4_u32(vec4<u32>(var_4.c, var_1.c, 1u, 1u), vec4<u32>(var_1.c, u_input.d.x, var_2.c, u_input.a))) % vec4<u32>(32u)), select(!(!vec4<bool>(false, var_2.b.x, true, false)), vec4<bool>(any(vec2<bool>(var_1.b.x, var_1.b.x)), !var_2.b.x, var_1.b.x, false), true)), select(func_2().b, vec2<bool>(!(!var_2.b.x), !var_1.b.x), all(!select(vec4<bool>(var_2.b.x, var_1.b.x, var_2.b.x, var_4.b.x), vec4<bool>(false, var_2.b.x, false, false), vec4<bool>(var_1.b.x, false, false, var_1.b.x)))), 1u);
    let var_5 = func_2();
    let var_6 = var_5.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.x)))), -399f), ~(vec3<u32>(59208u, 31966u, 10179u) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(54684u, 73357u, 38876u), vec3<u32>(var_2.c, var_4.c, u_input.a), vec3<u32>(1u, var_2.c, var_4.c)) % vec3<u32>(32u))) & ~min(abs(vec3<u32>(1u, var_5.c, var_4.c)), abs(vec3<u32>(var_5.c, u_input.a, var_4.c))));
}

