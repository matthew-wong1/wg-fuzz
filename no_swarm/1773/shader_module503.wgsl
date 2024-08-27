struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<bool>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec4<u32>(41586u, 3467u, 7445u, 4294967295u), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, -1i, -47601i), -1i, -1i, vec2<bool>(true, true), vec2<bool>(true, false)), Struct_1(vec4<i32>(60817i, -41310i, 2147483647i, 0i), -11241i, 0i, vec2<bool>(true, true), vec2<bool>(true, true)), vec3<f32>(797f, 1900f, 433f), Struct_1(vec4<i32>(914i, i32(-2147483648), -50451i, 0i), 1i, 2147483647i, vec2<bool>(true, false), vec2<bool>(false, true))));

var<private> global1: array<vec4<i32>, 12>;

var<private> global2: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(2833f, -811f), vec2<f32>(255f, 1075f), vec2<f32>(-474f, -107f), vec2<f32>(-488f, -1438f), vec2<f32>(3019f, -407f), vec2<f32>(-1995f, 375f), vec2<f32>(-1259f, -690f), vec2<f32>(-507f, 549f), vec2<f32>(-1038f, -530f), vec2<f32>(1543f, 502f), vec2<f32>(-543f, 1000f), vec2<f32>(-406f, 1058f), vec2<f32>(-1996f, -1246f), vec2<f32>(548f, -1000f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: f32, arg_3: bool) -> vec2<f32> {
    global1 = array<vec4<i32>, 12>();
    var var_0 = vec3<i32>(~((firstTrailingBit(-57438i) ^ firstLeadingBit(-10755i)) >> (u_input.a % 32u)), _wgslsmith_dot_vec3_i32(global0.a.c.a.xww & global0.a.c.a.yyz, vec3<i32>(global0.a.b.c & 1821i, 2147483647i, global0.a.c.a.x >> (u_input.a % 32u))) >> (max(global0.a.a.x, _wgslsmith_dot_vec2_u32(global0.a.a.zx, global0.a.a.wx)) % 32u), ~(-11122i) << (select(u_input.a, u_input.a, global0.a.c.d.x) % 32u));
    var var_1 = Struct_4(~firstTrailingBit(vec2<u32>(u_input.a, 66103u)));
    var var_2 = firstLeadingBit(-global0.a.c.c);
    var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -select(-vec3<i32>(global0.a.e.b, -2147483647i, 1i), vec3<i32>(23023i, 45272i, 47831i), select(vec3<bool>(false, arg_3, global0.a.e.d.x), vec3<bool>(false, true, true), global0.a.c.e.x)), vec3<i32>(_wgslsmith_add_i32(i32(-1i) * -14122i, var_0.x), _wgslsmith_dot_vec4_i32(global0.a.c.a, vec4<i32>(2147483647i, 1i, var_0.x, -18217i)), (1i ^ var_0.x) & global0.a.b.c) >> (~firstTrailingBit(vec3<u32>(31043u, global0.a.a.x, 1u)) % vec3<u32>(32u)));
    return _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1), 1000f, true)))), -456f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-990f, -382f) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.x, global0.a.d.x))))), _wgslsmith_f_op_vec2_f32(round(global2[_wgslsmith_index_u32(firstTrailingBit(~global0.a.a.x), 14u)]))), global0.a.b.d.x));
}

fn func_2() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(485f, global0.a.d.x, global0.a.d.x, global0.a.d.x)), global0.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.d.x)), (global0.a.c.a.x | global0.a.b.b) >= -global0.a.b.a.x)) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(u_input.a, 14u)], global2[_wgslsmith_index_u32(1u, 14u)]) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(879f, -1381f), vec2<f32>(global0.a.d.x, 420f))))))));
    var_0 = global2[_wgslsmith_index_u32(global0.a.a.x, 14u)];
    var var_1 = _wgslsmith_div_vec2_u32(~_wgslsmith_add_vec2_u32(min(abs(global0.a.a.zz), global0.a.a.wx), global0.a.a.xz), vec2<u32>(_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, 1u)), ~global0.a.a.yw), _wgslsmith_add_u32(~countOneBits(global0.a.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0.a.a.x), select(global0.a.a.zz, vec2<u32>(29403u, global0.a.a.x), vec2<bool>(false, true))))));
    let var_2 = true;
    let var_3 = vec3<i32>(-1i, _wgslsmith_mult_i32(global0.a.b.a.x, _wgslsmith_add_i32(-(~(-25806i)), global0.a.b.a.x | global0.a.b.c)), ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i, abs(global0.a.c.a.x), -2147483647i), global0.a.c.b));
    return global0.a.a.ww;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<f32>, arg_2: i32) -> Struct_5 {
    let var_0 = Struct_3(Struct_2(vec4<u32>(~(u_input.a & 61329u), ~(~arg_0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(40743u, 1u)), ~(~1u)), global0.a.c, global0.a.b, _wgslsmith_f_op_vec3_f32(global0.a.d * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.a.d))), Struct_1(global0.a.e.a, -3422i, _wgslsmith_div_i32(global0.a.e.a.x, arg_2) | 12986i, global0.a.c.e, select(!global0.a.b.e, vec2<bool>(false, global0.a.b.e.x), select(global0.a.e.d, vec2<bool>(global0.a.e.e.x, global0.a.b.e.x), global0.a.e.d)))));
    var var_1 = 1u;
    global0 = var_0;
    global2 = array<vec2<f32>, 14>();
    var var_2 = select(_wgslsmith_dot_vec2_i32(global0.a.e.a.zx, vec2<i32>(global0.a.b.a.x, ~global0.a.e.b)), _wgslsmith_sub_i32(~firstTrailingBit(-2147483647i), 2147483647i), true) & 2147483647i;
    return Struct_5(Struct_4(global0.a.a.yw), 81630u, min(min(max(vec3<u32>(var_0.a.a.x, var_0.a.a.x, 4294967295u) & var_0.a.a.xwz, countOneBits(vec3<u32>(arg_0.x, var_0.a.a.x, 23249u))), var_0.a.a.wxw), ~_wgslsmith_sub_vec3_u32(vec3<u32>(global0.a.a.x, arg_0.x, 4294967295u), select(vec3<u32>(arg_0.x, var_0.a.a.x, arg_0.x), vec3<u32>(15811u, 29184u, 1u), true))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global0.a.d);
    let var_1 = _wgslsmith_f_op_vec3_f32(-global0.a.d);
    var var_2 = func_4(max(~_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(0u, 34579u)), global0.a.a.yw), ~func_2()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.d.x, var_1.x, -1026f, global0.a.d.x)))))), _wgslsmith_mod_i32(global0.a.e.c, ~(-global0.a.b.c)));
    let var_3 = any(!(!select(select(vec4<bool>(global0.a.c.e.x, global0.a.b.d.x, global0.a.c.d.x, false), vec4<bool>(true, global0.a.b.e.x, global0.a.e.e.x, false), vec4<bool>(global0.a.e.d.x, true, true, global0.a.b.e.x)), vec4<bool>(global0.a.c.e.x, true, true, global0.a.c.e.x), !vec4<bool>(global0.a.e.d.x, true, global0.a.c.d.x, false))));
    let var_4 = Struct_3(Struct_2(global0.a.a, Struct_1(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 10443u, 122891u) & global0.a.a.zwx), 12u)], ~(i32(-1i) * -2147483647i), 26522i, select(select(global0.a.c.e, vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, var_3), any(vec2<bool>(false, var_3))), !(!global0.a.c.d)), global0.a.b, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * 717f))), var_1.x, 1469f), global0.a.b));
    return global0.a.a.x;
}

fn func_5(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<bool>, arg_3: u32) -> Struct_5 {
    global1 = array<vec4<i32>, 12>();
    let var_0 = Struct_3(global0.a);
    let var_1 = Struct_1(vec4<i32>(min(1i, -31488i), -1i, 2147483647i >> (arg_3 % 32u), 0i), -(~global0.a.b.a.x), min(0i, -(~arg_0.x)), select(!(!select(global0.a.e.e, arg_2, global0.a.b.d)), !select(vec2<bool>(true, arg_2.x), vec2<bool>(global0.a.e.e.x, global0.a.c.e.x), var_0.a.a.x == var_0.a.a.x), !vec2<bool>(global0.a.b.d.x | arg_2.x, any(vec4<bool>(arg_2.x, true, var_0.a.e.d.x, var_0.a.e.e.x)))), !(!vec2<bool>(arg_2.x, select(arg_2.x, var_0.a.c.e.x, true))));
    let var_2 = vec3<bool>(true, true, true);
    var var_3 = func_4(vec2<u32>(~_wgslsmith_mod_u32(u_input.a, _wgslsmith_div_u32(u_input.a, 0u)), ~u_input.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(global0.a.d.x, _wgslsmith_f_op_f32(var_0.a.d.x - -684f))), global0.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(342f - 823f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.a.d.x))))), -46712i).a;
    return Struct_5(func_4(vec2<u32>(~(~arg_3), ~_wgslsmith_div_u32(global0.a.a.x, arg_1)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d.x, -2560f, 439f, -695f) + vec4<f32>(var_0.a.d.x, var_0.a.d.x, global0.a.d.x, global0.a.d.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d.x, var_0.a.d.x, 1388f, global0.a.d.x) + vec4<f32>(-900f, var_0.a.d.x, 1216f, 907f)))), var_0.a.c.a.x).a, ~0u, abs(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_div_u32(var_0.a.a.x, var_0.a.a.x), 1u, global0.a.a.x), global0.a.a.xww)));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_5, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-global0.a.d.x);
    var var_1 = vec2<u32>(u_input.a | global0.a.a.x, 33385u);
    global1 = array<vec4<i32>, 12>();
    global0 = Struct_3(Struct_2(global0.a.a, arg_0, Struct_1(~abs(vec4<i32>(arg_2.x, 35192i, arg_0.a.x, 0i)), -14777i, ~11227i, global0.a.e.d, select(vec2<bool>(false, false), global0.a.c.d, arg_0.d.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.d.x, -993f, global0.a.d.x)) * _wgslsmith_f_op_vec3_f32(-global0.a.d)))), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.c, -1i, global0.a.e.b, global0.a.e.b), vec4<i32>(-1i, arg_0.c, global0.a.b.b, 2147483647i)) | arg_0.a, arg_2.x << (~var_1.x % 32u), min(-global0.a.e.c, 2147483647i), global0.a.e.e, select(vec2<bool>(global0.a.b.d.x, arg_0.d.x), global0.a.c.e, arg_0.e))));
    var_1 = ~arg_1.a.a;
    return Struct_3(Struct_2(_wgslsmith_mod_vec4_u32(firstTrailingBit(firstLeadingBit(global0.a.a)), ~global0.a.a), Struct_1(_wgslsmith_add_vec4_i32(global0.a.e.a, -arg_0.a), arg_2.x, min(arg_2.x, 1i), select(vec2<bool>(arg_0.d.x, true), select(vec2<bool>(true, true), global0.a.e.e, vec2<bool>(false, arg_0.d.x)), !arg_0.d), arg_0.e), Struct_1(abs(-vec4<i32>(-30248i, -21890i, 0i, 2147483647i)), -(~global0.a.c.b), -1i, arg_0.d, select(!global0.a.b.e, arg_0.e, select(vec2<bool>(arg_0.d.x, true), arg_0.d, global0.a.c.d))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.a.d, global0.a.d, vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.a.d.x, global0.a.d.x, 776f), global0.a.d))), all(vec2<bool>(arg_0.d.x, arg_0.e.x)) & !global0.a.e.e.x)), Struct_1(_wgslsmith_add_vec4_i32(arg_0.a, arg_0.a) | firstLeadingBit(vec4<i32>(global0.a.c.b, 0i, -19262i, 2703i)), select(global0.a.b.a.x, arg_0.a.x, arg_0.d.x), -36443i, global0.a.c.d, arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(global0.a.c.b, -2147483647i, global0.a.b.a.x, 31713i), select(global1[_wgslsmith_index_u32(110694u, 12u)], vec4<i32>(global0.a.c.b, global0.a.c.b, -2147483647i, -2147483647i) ^ global1[_wgslsmith_index_u32(34904u, 12u)], global0.a.e.e.x)), 23953i, ~global0.a.e.c, vec2<bool>(u_input.a == 0u, false), !vec2<bool>(true, global0.a.e.e.x)), func_5(vec2<i32>(_wgslsmith_div_i32(1i, -4109i), 28332i) ^ vec2<i32>(12402i, ~global0.a.b.c), func_1(), vec2<bool>(true, true), 38982u), vec2<i32>(~(~global0.a.b.a.x), 39697i) | vec2<i32>(firstLeadingBit(1668i), i32(-1i) * -2147483647i));
    let var_0 = ~(~u_input.a);
    var var_1 = select(vec4<bool>(global0.a.b.e.x, false == global0.a.b.e.x, ~(~global0.a.b.a.x) <= -global0.a.c.a.x, all(vec3<bool>(global0.a.b.e.x, global0.a.d.x == global0.a.d.x, any(vec4<bool>(false, false, global0.a.c.e.x, global0.a.e.e.x))))), vec4<bool>(global0.a.c.d.x, select(any(global0.a.b.e), any(vec3<bool>(global0.a.c.e.x, global0.a.e.e.x, false)), !(global0.a.c.e.x | true)), true, any(vec3<bool>(!global0.a.b.e.x, global0.a.b.e.x, global0.a.e.d.x))), all(vec4<bool>(true, !all(vec4<bool>(false, global0.a.b.e.x, true, false)), select(true, false, select(true, false, global0.a.e.d.x)), global0.a.e.d.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global0.a.d.zz * vec2<f32>(-2066f, -297f)), vec2<f32>(-671f, global0.a.d.x), any(global0.a.e.d))))));
    var var_3 = select(vec4<bool>(all(vec3<bool>(any(var_1.zyy), any(vec4<bool>(var_1.x, var_1.x, var_1.x, true)), var_1.x)), !(!global0.a.e.e.x), !any(select(vec2<bool>(global0.a.b.e.x, false), vec2<bool>(true, false), false)), !(!any(vec4<bool>(global0.a.e.d.x, false, false, true)))), vec4<bool>(global0.a.e.b < _wgslsmith_mult_i32(reverseBits(global0.a.b.a.x), 1i), false, all(var_1.zwx), global0.a.c.c == ~(1i >> (u_input.a % 32u))), vec4<bool>(4294967295u >= (firstLeadingBit(global0.a.a.x) & u_input.a), !(_wgslsmith_f_op_f32(step(208f, var_2.x)) == _wgslsmith_f_op_f32(global0.a.d.x * global0.a.d.x)), all(vec2<bool>(any(var_1.zy), true)), any(!select(vec3<bool>(true, false, var_1.x), var_1.yyy, vec3<bool>(true, true, global0.a.c.d.x)))));
    var var_4 = !func_6(Struct_1((vec4<i32>(global0.a.c.a.x, -31591i, global0.a.b.c, 24291i) << (vec4<u32>(1u, 19041u, 28846u, var_0) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(global0.a.c.a.x, 2147483647i, -16732i, -1i), vec4<i32>(-143i, global0.a.e.c, -104i, -1i)), -1i, 0i, !var_3.zy, vec2<bool>(true, !var_1.x)), func_5(global0.a.b.a.xz, countOneBits(global0.a.a.x & 4294967295u), global0.a.b.d, u_input.a), ~_wgslsmith_add_vec2_i32(global0.a.e.a.ww, vec2<i32>(global0.a.c.b, global0.a.c.c))).a.b.e;
    var_3 = vec4<bool>(var_3.x, var_1.x, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_i32(global0.a.b.a.x, global0.a.b.a.x)), vec3<i32>(2147483647i, countOneBits(global0.a.e.a.x << (59673u % 32u)), global0.a.e.c), global0.a.a.x, -794f);
}

