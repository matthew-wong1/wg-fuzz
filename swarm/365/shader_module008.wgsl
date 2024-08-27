struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_3,
    c: Struct_4,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(max(-390f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(102f)), 110f, true))));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(0u, 54201u, 1u)), select(vec3<u32>(u_input.a, 33036u, 1u), vec3<u32>(u_input.a, 1u, u_input.a), vec3<bool>(false, true, true))) << (~(~vec3<u32>(u_input.a, u_input.a, u_input.a)) % vec3<u32>(32u)), vec3<u32>(~(~u_input.a), 1u, (u_input.a >> (11385u % 32u)) & u_input.a)), var_0, vec4<i32>(reverseBits(firstTrailingBit(_wgslsmith_mod_i32(u_input.b.x, -55597i))), _wgslsmith_div_i32(u_input.b.x, u_input.b.x), _wgslsmith_clamp_i32(u_input.b.x, u_input.b.x, _wgslsmith_mult_i32(-2990i, -23454i)) ^ u_input.b.x, min(firstTrailingBit(i32(-1i) * -1i), _wgslsmith_dot_vec3_i32(select(u_input.b, vec3<i32>(-1i, 0i, -2147483647i), true), _wgslsmith_mult_vec3_i32(u_input.b, u_input.b)))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.b, -1000f), vec2<f32>(2394f, 1343f))))))), min(vec3<i32>(-45623i, ~var_1.c.x, _wgslsmith_add_i32(-55066i, 0i)), -(u_input.b >> (vec3<u32>(var_1.a, u_input.a, 18571u) % vec3<u32>(32u)))) ^ ~var_1.c.zxy, Struct_1(abs(60652u), _wgslsmith_f_op_f32(-var_0), vec4<i32>(~abs(-28478i), ~(~0i), _wgslsmith_mult_i32(-var_1.c.x, -52286i), 0i)), Struct_1(30459u, var_0, var_1.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0, var_1.b, 2041f, 861f), vec4<f32>(-137f, 756f, 407f, 594f), vec4<bool>(true, true, true, false)))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(sign(var_0)), var_1.b, _wgslsmith_f_op_f32(select(var_0, var_0, false)), _wgslsmith_f_op_f32(sign(var_0)))))));
    var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(var_2.e.wz, var_2.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(819f, var_2.c.b) - var_2.a))) * vec2<f32>(var_1.b, _wgslsmith_f_op_f32(abs(2022f))))), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, _wgslsmith_add_i32(9962i, 63810i), -41131i), ~select(var_1.c.wyw, vec3<i32>(1i, var_2.c.c.x, u_input.b.x), vec3<bool>(false, false, true)))), Struct_1(35366u ^ (~16956u << (~var_1.a % 32u)), 426f, -_wgslsmith_mod_vec4_i32(vec4<i32>(1242i, var_2.c.c.x, var_2.b.x, var_2.c.c.x), var_1.c) >> ((_wgslsmith_div_vec4_u32(vec4<u32>(var_1.a, 4294967295u, 1u, var_2.d.a), vec4<u32>(var_1.a, 0u, 1u, 0u)) >> (vec4<u32>(u_input.a, 0u, 135539u, 16348u) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_1(~(~0u), var_0, select(vec4<i32>(var_2.d.c.x, -2147483647i, 2147483647i, 26848i) >> (abs(vec4<u32>(1u, var_2.d.a, 1u, var_1.a)) % vec4<u32>(32u)), vec4<i32>(var_2.c.c.x, _wgslsmith_add_i32(1424i, u_input.b.x), var_2.c.c.x, _wgslsmith_clamp_i32(var_1.c.x, u_input.b.x, var_2.b.x)), select(false, true, true))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.e) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(var_2.e, var_2.e))))))));
    var_2 = Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(454f)), 929f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0 * -201f)))), vec2<f32>(var_1.b, -2513f)), -var_2.b, Struct_1(12623u, 1136f, reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, var_1.c.x, var_2.b.x, -10645i), vec4<i32>(2147483647i, 11887i, u_input.b.x, 2147483647i)))), Struct_1(var_2.d.a << (var_1.a % 32u), 977f, vec4<i32>(abs(var_1.c.x), 2147483647i, _wgslsmith_dot_vec2_i32(var_2.b.zz, select(var_2.d.c.xx, var_1.c.xx, vec2<bool>(false, true))), -2147483647i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.e - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.b, var_1.b, var_1.b, var_0)))) - var_2.e));
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(39623u, 1u), vec2<u32>(u_input.a, var_2.c.a)), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_1.a, var_1.a), ~vec3<u32>(var_1.a, u_input.a, 43911u)), 75181u) << (~(abs(vec3<u32>(u_input.a, 1u, u_input.a)) & vec3<u32>(4294967295u, 1u, var_2.d.a)) % vec3<u32>(32u)), ~vec3<u32>(firstTrailingBit(~1u), var_1.a, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_1.a, 4203u), vec3<u32>(4294967295u, 7790u, 4294967295u)), ~vec3<u32>(0u, 25433u, 16605u))), vec3<u32>(u_input.a, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.c.a, var_2.c.a), vec2<u32>(0u, var_1.a))), var_2.c.a));
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(-1057f));
    var var_1 = func_3();
    var_1 = max(~_wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, u_input.a, u_input.a), reverseBits(vec3<u32>(u_input.a, var_1.x, var_1.x))), _wgslsmith_mult_vec3_u32(abs(max(vec3<u32>(u_input.a, 1u, 88716u), vec3<u32>(4294967295u, 111482u, 59597u))), (vec3<u32>(u_input.a, 29668u, u_input.a) | vec3<u32>(23450u, u_input.a, 0u)) & ~vec3<u32>(u_input.a, u_input.a, 4294967295u))) << (vec3<u32>(_wgslsmith_sub_u32(reverseBits(u_input.a), ~var_1.x & u_input.a), u_input.a, ~(~(~4294967295u))) % vec3<u32>(32u));
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + 542f) + var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0)))))), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 2147483647i, 0i), -u_input.b), vec3<i32>(48680i, -5999i, u_input.b.x)), -2147483647i, _wgslsmith_div_i32(~(8733i | u_input.b.x), u_input.b.x)), Struct_1(select(1u, _wgslsmith_div_u32(0u, firstTrailingBit(4294967295u)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))), -763f, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x << (38962u % 32u)) >> (~(vec4<u32>(1u, u_input.a, 17675u, u_input.a) & vec4<u32>(u_input.a, u_input.a, 1u, u_input.a)) % vec4<u32>(32u))), Struct_1(_wgslsmith_add_u32(12183u, u_input.a), var_0, vec4<i32>(u_input.b.x, 0i, 1i, max(i32(-1i) * -2147483647i, 18134i << (var_1.x % 32u)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, var_0) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1052f, -1000f, 209f, 207f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1183f, -456f, var_0, var_0))) * vec4<f32>(1400f, var_0, var_0, var_0))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2319f, var_0, var_0, 1281f)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0, var_0, var_0, var_0)))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(223f, 1068f, var_0, -810f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-433f, var_0, 115f, var_0)))))));
    let var_3 = abs(u_input.a);
    return var_3;
}

fn func_1(arg_0: bool) -> vec3<i32> {
    let var_0 = vec3<f32>(398f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-644f - _wgslsmith_f_op_f32(f32(-1f) * -405f)))));
    let var_1 = -35446i;
    let var_2 = min(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a & u_input.a, _wgslsmith_sub_u32(u_input.a, u_input.a), 10708u), vec3<u32>(83675u, 0u, ~1u)), vec3<u32>(_wgslsmith_mod_u32(u_input.a ^ 73451u, 1u), u_input.a, ~func_2())), _wgslsmith_add_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 0u, 0u), vec3<u32>(u_input.a, 52670u, 4294967295u)), 35092u, u_input.a & 61446u), _wgslsmith_add_vec3_u32((vec3<u32>(u_input.a, u_input.a, u_input.a) << (vec3<u32>(50754u, u_input.a, 1u) % vec3<u32>(32u))) >> (~vec3<u32>(u_input.a, 0u, u_input.a) % vec3<u32>(32u)), ~select(vec3<u32>(1u, 1u, u_input.a), vec3<u32>(u_input.a, 18148u, u_input.a), vec3<bool>(true, arg_0, true)))));
    let var_3 = ~(~0u);
    let var_4 = countOneBits(vec4<i32>(1i, (i32(-1i) * -17995i) << (firstLeadingBit(~32997u) % 32u), 37280i, 6326i));
    return u_input.b << (vec3<u32>(_wgslsmith_sub_u32(var_3, _wgslsmith_sub_u32(var_2.x, var_2.x) << (firstLeadingBit(0u) % 32u)), min(_wgslsmith_mult_u32(max(u_input.a, var_3), 14785u), _wgslsmith_sub_u32(func_2(), _wgslsmith_div_u32(var_2.x, u_input.a))), _wgslsmith_clamp_u32(20873u, _wgslsmith_mult_u32(var_3, 59277u), func_3().x)) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec2<f32>(1459f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-444f + 1084f) - _wgslsmith_f_op_f32(-1096f + 1000f)))), _wgslsmith_add_vec3_i32(vec3<i32>(~0i, u_input.b.x, ~u_input.b.x), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, u_input.b.x, -1i)), vec3<i32>(u_input.b.x, 1i, 2147483647i)), ~vec3<i32>(u_input.b.x, -1i, -1i), _wgslsmith_mult_vec3_i32(-u_input.b, func_1(true)))), Struct_1(firstLeadingBit(~u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-551f, _wgslsmith_div_f32(-1463f, -1338f)))), ~(-vec4<i32>(u_input.b.x, 1i, u_input.b.x, u_input.b.x))), Struct_1(min(max(u_input.a << (u_input.a % 32u), 4294967295u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 477u, u_input.a), vec3<u32>(u_input.a, 1109u, 1u)), 26888u)), _wgslsmith_f_op_f32(-229f + _wgslsmith_f_op_f32(f32(-1f) * -318f)), _wgslsmith_mult_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, -2147483647i, 0i, 1i), vec4<i32>(1i, -12388i, u_input.b.x, u_input.b.x))), vec4<i32>(u_input.b.x, func_1(false).x, ~u_input.b.x, func_1(false).x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-654f, 794f, 645f, 397f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1161f, 1347f, 936f, -1689f))))));
    var var_1 = _wgslsmith_f_op_f32(step(var_0.e.x, -1934f));
    var var_2 = var_0;
    let var_3 = Struct_5(var_2.e.xzy, Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(step(var_2.e.zw, _wgslsmith_f_op_vec2_f32(-var_0.e.xy))), var_0.d.c.wzx, var_0.c, Struct_1(~32445u, _wgslsmith_f_op_f32(-var_2.d.b), vec4<i32>(var_0.d.c.x, var_2.c.c.x, -2147483647i, u_input.b.x)), vec4<f32>(_wgslsmith_f_op_f32(select(-1247f, var_2.d.b, true)), _wgslsmith_f_op_f32(max(-1534f, var_0.c.b)), _wgslsmith_f_op_f32(f32(-1f) * -997f), var_0.a.x)), firstTrailingBit(~_wgslsmith_add_u32(var_0.d.a, 27630u)), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e.x, var_0.d.b)), var_2.d.c.wxz, Struct_1(var_0.c.a, 1f, vec4<i32>(-67434i, var_0.c.c.x, var_0.c.c.x, var_0.d.c.x)), Struct_1(41993u, _wgslsmith_f_op_f32(var_0.e.x * var_0.a.x), -vec4<i32>(u_input.b.x, u_input.b.x, var_2.d.c.x, var_0.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-245f, 1511f, var_0.a.x, 659f))))), vec2<bool>(true, ~var_2.d.a > ~0u), select(vec4<bool>(true, all(vec4<bool>(true, true, false, true)), true, all(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true), !(2147483647i == var_2.b.x))), Struct_4(var_2.c, ~(-(~11914i)), _wgslsmith_f_op_f32(ceil(-1012f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c.b, -188f)) + var_0.a.x)))));
    var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c.a.b, var_2.c.b)), -vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(-2147483647i, u_input.b.x), u_input.b.x), -var_3.c.b, var_3.c.a.c.x), Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 40136u, var_0.c.a) >> (select(vec3<u32>(4294967295u, var_2.c.a, 4294967295u), vec3<u32>(u_input.a, u_input.a, 0u), var_3.b.e.x) % vec3<u32>(32u)), vec3<u32>(~51848u, ~1u, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1306f - _wgslsmith_f_op_f32(-var_2.c.b))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b.x, var_0.c.c.x, var_2.b.x, 26980i), ~var_0.c.c, ~vec4<i32>(u_input.b.x, 33691i, var_0.d.c.x, var_0.b.x)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0.d.a, 4079u, u_input.a), vec4<u32>(4294967295u, u_input.a, var_3.c.a.a, u_input.a)) % vec4<u32>(32u))), Struct_1(var_2.c.a, -299f, countOneBits(var_0.d.c)), vec4<f32>(var_0.d.b, _wgslsmith_f_op_f32(sign(var_2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -180f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(507f, -107f)) - _wgslsmith_f_op_f32(-var_0.c.b))))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-661f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.c.c * _wgslsmith_f_op_f32(155f + var_2.a.x)), var_3.a.x)), _wgslsmith_f_op_f32(-var_2.e.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.b)), -2005f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-147f, var_0.c.b)) * var_2.c.b) * _wgslsmith_f_op_f32(f32(-1f) * -461f)), -572f, var_2.c.b), -1000f, firstTrailingBit(2147483647i) ^ _wgslsmith_clamp_i32(var_2.c.c.x, firstLeadingBit(firstLeadingBit(var_3.b.a.c.c.x)), max(-2147483647i, var_2.d.c.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_4)), 0u);
}

