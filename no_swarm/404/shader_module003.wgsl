struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
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

var<private> global0: u32 = 1u;

var<private> global1: Struct_1;

var<private> global2: array<i32, 19>;

var<private> global3: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(-62142i, i32(-2147483648)), vec2<i32>(i32(-2147483648), 30995i), vec2<i32>(-23148i, 2147483647i), vec2<i32>(-5413i, 6137i), vec2<i32>(45463i, -2137i), vec2<i32>(53721i, 16656i), vec2<i32>(1i, 11470i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(8690i, 1i), vec2<i32>(1271i, 2147483647i), vec2<i32>(44311i, 0i), vec2<i32>(-1i, 2147483647i));

var<private> global4: Struct_1 = Struct_1(vec3<i32>(1i, 3307i, 4685i), vec3<f32>(1108f, -1470f, -856f), vec3<f32>(176f, 1533f, 431f), vec2<f32>(1000f, 188f), 1603f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> vec3<f32> {
    global0 = 242u >> (~(_wgslsmith_add_u32(min(18184u, 32211u), max(1u, 1u)) << (~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 55476u), vec3<u32>(40763u, 0u, 16077u)) % 32u)) % 32u);
    var var_0 = vec4<i32>(-1i, -12439i, max(-global2[_wgslsmith_index_u32(0u, 19u)], _wgslsmith_div_i32(_wgslsmith_clamp_i32(-2147483647i, global1.a.x, 0i), 1i)) ^ _wgslsmith_clamp_i32(-(global2[_wgslsmith_index_u32(1u, 19u)] ^ global4.a.x), global4.a.x, _wgslsmith_dot_vec3_i32(~vec3<i32>(10306i, global2[_wgslsmith_index_u32(0u, 19u)], 0i), vec3<i32>(1i, 0i, global2[_wgslsmith_index_u32(28884u, 19u)]))), -firstTrailingBit(_wgslsmith_mult_i32(firstLeadingBit(global2[_wgslsmith_index_u32(1u, 19u)]), ~21671i)));
    let var_1 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~48698u, 1u, 1u), abs(abs(vec3<u32>(33995u, 4294967295u, 1267u)))), 1u) ^ countOneBits(0u);
    let var_2 = var_0.xw;
    global4 = Struct_1(-(~((vec3<i32>(u_input.a.x, 2147483647i, 6145i) ^ var_0.wyw) ^ firstLeadingBit(vec3<i32>(u_input.a.x, 2147483647i, -26588i)))), global1.c, _wgslsmith_div_vec3_f32(global1.b, vec3<f32>(_wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(floor(-2654f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-836f - 506f))), global4.b.x)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.d.x, global1.e)) - global1.d))), _wgslsmith_f_op_f32(-global4.e));
    return vec3<f32>(-1160f, global1.e, -658f);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_1) -> vec2<f32> {
    global4 = Struct_1(min(min(vec3<i32>(-2147483647i, -12255i, 52339i) << (min(vec3<u32>(arg_0, arg_0, 0u), vec3<u32>(arg_0, arg_0, arg_0)) % vec3<u32>(32u)), global4.a), arg_3.a), _wgslsmith_f_op_vec3_f32(func_3(arg_2.x)), vec3<f32>(-390f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c.x * global1.c.x) + arg_1.b.x), arg_1.b.x), _wgslsmith_f_op_f32(global4.b.x + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global1.d.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.x, 181f)) - vec2<f32>(arg_3.e, global1.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.e) + 164f)) - global1.c.x));
    let var_0 = arg_3;
    var var_1 = !(!select(vec2<bool>(true, !arg_2.x), select(vec2<bool>(arg_2.x, arg_2.x), select(arg_2.zy, vec2<bool>(true, arg_2.x), arg_2.yy), arg_2.x), !arg_2.x));
    var var_2 = arg_3;
    global2 = array<i32, 19>();
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.d, vec2<f32>(_wgslsmith_f_op_f32(arg_1.e - -1207f), 249f), arg_2.xz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.d.x, arg_1.b.x) - vec2<f32>(-124f, 1457f))) + vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(var_1.x)).x, var_2.d.x))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global4.b.zx, _wgslsmith_f_op_vec2_f32(-var_0.b.xz), arg_2.x)) * _wgslsmith_f_op_vec2_f32(arg_1.d + _wgslsmith_f_op_vec2_f32(arg_1.c.yy - vec2<f32>(global1.d.x, var_2.b.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(var_2.e)), 143f) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, -2156f), _wgslsmith_f_op_vec2_f32(-global1.b.yz), arg_2.zz))), vec2<bool>(arg_0 > 4294967295u, true))), arg_2.xx));
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    var var_0 = ~4294967295u;
    let var_1 = vec2<bool>(true, ~105373u <= ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(5714u, 1u), arg_1)));
    var var_2 = 5301i;
    global0 = 0u ^ (0u >> ((~(~arg_1.x) ^ ~(~arg_1.x)) % 32u));
    let var_3 = Struct_1(vec3<i32>(18934i, -abs(min(u_input.a.x, 2147483647i)), (_wgslsmith_div_i32(global2[_wgslsmith_index_u32(1160u, 19u)], global4.a.x) ^ ~arg_2.a.x) ^ 2147483647i), global4.b, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c) - vec3<f32>(1000f, arg_0, arg_0)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.c))))), global1.b.zz, _wgslsmith_f_op_f32(round(-539f)));
    return var_3;
}

fn func_1(arg_0: u32) -> u32 {
    var var_0 = arg_0 >> (~(~16890u) % 32u);
    var var_1 = Struct_1(global1.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.c) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global4.e, -1000f, -891f), global1.b) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1812f, -533f, -400f) - global4.b))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(abs(-128f)), _wgslsmith_f_op_f32(f32(-1f) * -916f), global4.c.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -894f), _wgslsmith_f_op_f32(-global4.c.x), _wgslsmith_f_op_f32(round(-170f)))))), global4.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-817f, _wgslsmith_div_f32(-1223f, _wgslsmith_f_op_f32(-1153f * global1.e))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global4.b.zx)), _wgslsmith_f_op_vec2_f32(select(global1.b.zx, vec2<f32>(-351f, 2229f), vec2<bool>(false, false))))))), global1.b.x);
    let var_2 = func_4(var_1.d.x, vec2<u32>(arg_0 ^ _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 1u, arg_0, 0u), vec4<u32>(arg_0, arg_0, 4503u, arg_0)), vec4<u32>(22465u, 4294967295u, arg_0, 59702u)), arg_0), Struct_1(~(-_wgslsmith_sub_vec3_i32(global1.a, var_1.a)), vec3<f32>(_wgslsmith_f_op_f32(-global4.d.x), var_1.e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global4.e))))), vec3<f32>(_wgslsmith_f_op_f32(var_1.e + var_1.e), _wgslsmith_f_op_f32(min(global4.e, _wgslsmith_f_op_f32(ceil(global4.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.d.x, global4.e) * -245f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(57737u, Struct_1(global4.a, global4.b, var_1.b, vec2<f32>(1695f, var_1.d.x), 1000f), vec3<bool>(true, false, true), Struct_1(u_input.b.yxy, vec3<f32>(global1.d.x, 621f, global4.d.x), global4.b, vec2<f32>(1058f, global4.e), var_1.c.x))) + _wgslsmith_f_op_vec2_f32(-global1.c.zy)) + _wgslsmith_f_op_vec2_f32(select(var_1.b.xx, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1543f, global4.d.x) * vec2<f32>(154f, var_1.e)), vec2<bool>(false, true)))), -355f), _wgslsmith_f_op_f32(var_1.c.x * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.d.x) - _wgslsmith_f_op_f32(-global4.b.x)), -119f, all(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, -422f, -281f)), global1.b), var_2.c))) + vec3<f32>(_wgslsmith_f_op_f32(-533f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_1.e, -2347f)), _wgslsmith_f_op_f32(-1389f - var_1.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.b.x)))));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-311f * global4.c.x))), 960f, -202f))) * vec3<f32>(var_3.x, var_3.x, var_3.x));
    return _wgslsmith_mult_u32(59952u, firstTrailingBit(4294967295u) << (_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, 31097u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 1u), vec2<u32>(arg_0, 0u))), 6004u) % 32u));
}

fn func_5(arg_0: u32, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = func_4(_wgslsmith_div_f32(arg_3.e, _wgslsmith_div_f32(1562f, _wgslsmith_f_op_vec2_f32(func_2(1u, Struct_1(arg_3.a, arg_3.c, global1.c, vec2<f32>(-1195f, global1.e), global4.b.x), arg_1.xzw, Struct_1(arg_3.a, vec3<f32>(global4.c.x, global1.d.x, global1.e), global1.c, arg_3.b.zx, 836f))).x)), ~(~(~_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(arg_0, arg_0)))), func_4(-183f, ~(countOneBits(vec2<u32>(arg_0, 1u)) ^ ~vec2<u32>(0u, arg_0)), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(6681i, global4.a.x, global2[_wgslsmith_index_u32(arg_0, 19u)]), u_input.b.zyw), vec3<f32>(global4.b.x, -1220f, global4.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global4.d.x, arg_3.e))), global4.b.zz, global1.b.x), _wgslsmith_f_op_f32(abs(global1.c.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -858f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(400f + -436f))), global4.e));
    let var_1 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(-54745i, 0i), global1.a.x), u_input.a.x), _wgslsmith_sub_i32(reverseBits(_wgslsmith_add_i32(31047i, global1.a.x)), _wgslsmith_dot_vec3_i32(u_input.b.zzz, vec3<i32>(-11108i, global4.a.x, global1.a.x))), ~global2[_wgslsmith_index_u32(1u, 19u)]), arg_3.b, arg_3.c, _wgslsmith_f_op_vec2_f32(func_2(~arg_0, func_4(-1416f, firstLeadingBit(~vec2<u32>(0u, 4294967295u)), arg_3, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.c.x)), _wgslsmith_f_op_f32(var_0.c.x - global1.e))), select(!(!vec3<bool>(true, false, arg_1.x)), arg_1.wwz, !vec3<bool>(true, arg_1.x, true)), Struct_1(-_wgslsmith_div_vec3_i32(vec3<i32>(arg_3.a.x, global4.a.x, u_input.b.x), vec3<i32>(global4.a.x, global1.a.x, 6170i)), arg_3.c, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(arg_3.b + vec3<f32>(446f, 618f, 1362f)))), vec2<f32>(_wgslsmith_f_op_f32(-global1.e), _wgslsmith_f_op_f32(select(507f, global4.b.x, arg_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(true)).x)))), arg_3.d.x);
    let var_2 = _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b.x, _wgslsmith_mod_i32(reverseBits(u_input.b.x), firstTrailingBit(arg_3.a.x)), -2147483647i, _wgslsmith_mod_i32(i32(-1i) * -10583i, i32(-1i) * -19326i)), u_input.b);
    var_0 = var_1;
    var var_3 = 909f;
    return _wgslsmith_f_op_f32(step(global4.d.x, global4.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_5(func_1(firstTrailingBit(1u)), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true)), any(vec2<bool>(true, true)), func_4(995f, vec2<u32>(1u, 1u), func_4(-1000f, vec2<u32>(0u, 2656u), Struct_1(vec3<i32>(global1.a.x, -50955i, 17803i), vec3<f32>(global1.b.x, global4.c.x, global1.d.x), vec3<f32>(global4.c.x, global1.d.x, -112f), vec2<f32>(1280f, 170f), 1738f), 425f), _wgslsmith_f_op_f32(max(-347f, global1.e))))), -312f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.b.x, global4.c.x))), _wgslsmith_div_f32(1545f, _wgslsmith_f_op_f32(global4.c.x - global1.d.x)), any(vec2<bool>(false, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-125f))));
}

