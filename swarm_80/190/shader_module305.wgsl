struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 5>;

var<private> global1: array<bool, 14> = array<bool, 14>(true, true, true, true, false, true, false, true, true, true, true, true, false, false);

var<private> global2: vec2<u32>;

var<private> global3: array<vec4<bool>, 22>;

var<private> global4: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>) -> vec3<bool> {
    let var_0 = Struct_3(any(!select(vec2<bool>(global1[_wgslsmith_index_u32(global2.x, 14u)], true), vec2<bool>(global4.x, global1[_wgslsmith_index_u32(4294967295u, 14u)]), global4.zz)) && true);
    var var_1 = global3[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(77560u, 9396u), global2.x, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(global2.x, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(global2.x, global2.x), vec2<u32>(25170u, global2.x)))) ^ global2.x), 22u)];
    var var_2 = Struct_1(vec4<i32>(-1i) * -firstLeadingBit(reverseBits(vec4<i32>(-1i, 29885i, arg_0.x, arg_0.x))), abs(global0[_wgslsmith_index_u32(~1u, 5u)]), arg_0.yy >> (abs(countOneBits(~vec2<u32>(1u, 87126u))) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_mult_u32(~(~abs(select(4294967295u, 1u, false))), max(firstTrailingBit(var_2.b.x), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(var_2.b.ww, vec2<u32>(0u, 4294967295u)), _wgslsmith_add_vec2_u32(var_2.b.xx, var_2.b.zw), var_2.b.ww), ~min(vec2<u32>(var_2.b.x, 80665u), var_2.b.yw))));
    var var_4 = Struct_2(Struct_1(vec4<i32>(1i, _wgslsmith_mod_i32(var_2.c.x, _wgslsmith_clamp_i32(var_2.c.x, arg_0.x, arg_0.x)), -(~u_input.a), 52911i), global0[_wgslsmith_index_u32(var_2.b.x, 5u)], _wgslsmith_sub_vec2_i32(~abs(vec2<i32>(-2147483647i, 22852i)), firstTrailingBit(-vec2<i32>(1i, arg_0.x)))), ~u_input.a, 506f);
    return var_1.zzy;
}

fn func_4(arg_0: Struct_5) -> vec2<f32> {
    var var_0 = ~(i32(-1i) * -u_input.a);
    let var_1 = Struct_3(all(global3[_wgslsmith_index_u32(1u, 22u)]));
    let var_2 = -_wgslsmith_mult_i32(-2147483647i, _wgslsmith_mod_i32(arg_0.a.x, firstTrailingBit(-25617i)));
    var var_3 = Struct_1(max(vec4<i32>(37628i << (~global2.x % 32u), 1i, -arg_0.a.x, arg_0.a.x & -var_2), -arg_0.a), vec4<u32>(1u, 4294967295u ^ ~global2.x, global2.x, abs(select(1u, 32453u, arg_0.b.x)) & ~reverseBits(120183u)), arg_0.a.zy);
    let var_4 = global1[_wgslsmith_index_u32(51249u, 14u)] || all(vec2<bool>(_wgslsmith_mod_i32(var_3.a.x, var_2) >= -u_input.a, true));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-512f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-914f, arg_0.c))), vec2<f32>(arg_0.d.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2522f * arg_0.d.c)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0.d.c, -1197f)))) - vec2<f32>(_wgslsmith_f_op_f32(abs(2489f)), _wgslsmith_f_op_f32(select(arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -251f), global1[_wgslsmith_index_u32(arg_0.d.a.b.x, 14u)] || true)))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: bool) -> vec2<u32> {
    let var_0 = global1[_wgslsmith_index_u32(arg_2.c.b.x, 14u)] || !all(!vec4<bool>(arg_1.x, arg_2.a.x, false, global4.x));
    let var_1 = _wgslsmith_f_op_f32(-1322f + _wgslsmith_f_op_f32(-1f));
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_4(Struct_5(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 2147483647i, arg_0.x, 0i), vec4<i32>(u_input.a, 2147483647i, arg_2.b, 19667i) << (arg_2.c.b % vec4<u32>(32u)), arg_0), func_3(vec3<i32>(-30122i, 35921i, 0i), _wgslsmith_div_vec3_f32(vec3<f32>(-438f, 271f, 2342f), vec3<f32>(1929f, 802f, var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1918f))), Struct_2(arg_2.c, -58614i, _wgslsmith_f_op_f32(ceil(var_1)))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-1274f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_1))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_1), 1231f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-674f, var_1))), vec2<bool>(false, 44237i <= arg_0.x))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + var_2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(step(-1362f, var_1))) - _wgslsmith_f_op_f32(ceil(var_2.x)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1055f, -196f), var_2)))));
    global3 = array<vec4<bool>, 22>();
    return ~arg_2.c.b.xx;
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: u32) -> vec3<i32> {
    global3 = array<vec4<bool>, 22>();
    return -_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -2147483647i, ~5036i), -vec3<i32>(-28570i, u_input.a, u_input.a) | vec3<i32>(u_input.a, u_input.a, u_input.a)), -(vec3<i32>(-8978i, u_input.a, u_input.a) & select(vec3<i32>(1i, -1i, -1i), vec3<i32>(u_input.a, -15003i, 2147483647i), global4.xxy)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(_wgslsmith_sub_u32(~8038u, _wgslsmith_dot_vec2_u32(func_2(vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i), global4.zw, Struct_4(vec3<bool>(global1[_wgslsmith_index_u32(global2.x, 14u)], global4.x, true), 0i, Struct_1(vec4<i32>(60580i, u_input.a, -30427i, u_input.a), global0[_wgslsmith_index_u32(global2.x, 5u)], vec2<i32>(u_input.a, u_input.a)), u_input.a), global1[_wgslsmith_index_u32(global2.x, 14u)]), select(vec2<u32>(0u, 41419u), vec2<u32>(1u, global2.x), global4.x))), 36664u, global2.x) & _wgslsmith_add_vec3_i32(select(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 1i, 1i), vec3<i32>(u_input.a, 21771i, u_input.a)) & _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, u_input.a, 1i), vec3<i32>(u_input.a, -1i, u_input.a), vec3<i32>(5486i, u_input.a, -18286i)), ~vec3<i32>(-26014i, 1i, -1i), vec3<bool>(any(global3[_wgslsmith_index_u32(global2.x, 22u)]), true, true)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.a, 30217i, u_input.a) ^ vec3<i32>(u_input.a, 2147483647i, u_input.a)), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -60115i, 28295i), vec3<i32>(618i, u_input.a, u_input.a))));
    global4 = vec4<bool>(true, global4.x, any(vec3<bool>(any(vec3<bool>(false, false, false)) || true, true, global4.x & any(global4.ww))), all(vec4<bool>(any(vec3<bool>(true, true, false)), global4.x, true, global1[_wgslsmith_index_u32(global2.x, 14u)])));
    let var_1 = select(_wgslsmith_mult_vec4_i32(abs(-countOneBits(vec4<i32>(u_input.a, var_0.x, -2147483647i, var_0.x))), ~(-vec4<i32>(44542i, 8679i, u_input.a, u_input.a) & vec4<i32>(u_input.a, u_input.a, u_input.a, var_0.x))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_add_i32(59272i >> (global2.x % 32u), _wgslsmith_sub_i32(var_0.x, -9942i)), var_0.x, i32(-1i) * -1i, 0i >> (~global2.x % 32u)), -_wgslsmith_mod_vec4_i32(min(vec4<i32>(2147483647i, u_input.a, 106853i, -44682i), vec4<i32>(u_input.a, u_input.a, -60390i, u_input.a)), ~vec4<i32>(1i, u_input.a, 2147483647i, -56565i)), max(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, -23116i), var_0), 1i, u_input.a, 40411i), ~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -13069i, 74092i, var_0.x), vec4<i32>(var_0.x, var_0.x, u_input.a, -68141i)))), true);
    global4 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2.x, ~(~(1u ^ ~global2.x))), 22u)];
    let var_2 = Struct_1(~(-select(reverseBits(vec4<i32>(-3937i, var_1.x, 2444i, var_0.x)), var_1, true)), ~global0[_wgslsmith_index_u32(global2.x, 5u)], ((~var_1.wy | ~var_1.zx) << (~vec2<u32>(global2.x, 1u) % vec2<u32>(32u))) >> ((~vec2<u32>(global2.x, 38428u) << (((vec2<u32>(0u, global2.x) >> (vec2<u32>(global2.x, 2345u) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_u32(vec2<u32>(global2.x, global2.x), vec2<u32>(global2.x, 1u))) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return var_2;
}

fn func_6(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(vec4<i32>(-27557i, -arg_0.c.x >> (~arg_0.b.x % 32u), select(_wgslsmith_mod_i32(-2147483647i, -1i), arg_0.c.x, arg_1), 5971i), max(select(_wgslsmith_mult_vec4_u32(arg_0.b, arg_0.b), ~arg_0.b, !arg_1), vec4<u32>(min(0u, 4294967295u), 4294967295u, ~global2.x, _wgslsmith_mod_u32(11500u, global2.x))), vec2<i32>(-8615i, _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, u_input.a, u_input.a), arg_0.a.xyw))), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let var_1 = Struct_4(vec3<bool>(true, var_0.b != ((-2147483647i | arg_0.c.x) | ~u_input.a), any(global4.zw)), u_input.a, func_1(), 0i);
    let var_2 = Struct_2(func_1(), _wgslsmith_dot_vec4_i32(~vec4<i32>(-var_0.b, ~(-9594i), -var_0.b, arg_0.c.x ^ var_1.c.a.x), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.a.x, u_input.a), vec2<i32>(var_1.c.c.x, arg_0.c.x)), countOneBits(arg_0.c)), 1i, var_1.d, 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(var_0.c - var_0.c))))));
    var var_3 = arg_0.b.xx;
    global3 = array<vec4<bool>, 22>();
    return Struct_1(select(select(firstTrailingBit(vec4<i32>(var_0.b, u_input.a, 0i, var_0.a.a.x)), select(var_1.c.a, vec4<i32>(-24672i, 23121i, var_1.c.c.x, -1i), global3[_wgslsmith_index_u32(4294967295u, 22u)]), !var_1.a.x) | vec4<i32>(_wgslsmith_div_i32(0i, arg_0.a.x), 0i, _wgslsmith_add_i32(var_1.d, -44890i), -var_1.b), arg_0.a, all(!vec3<bool>(true, var_1.a.x, arg_1))), countOneBits(arg_0.b), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, -2147483647i), var_2.a.c, arg_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(-112f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(756f, -339f, global1[_wgslsmith_index_u32(1u, 14u)])), _wgslsmith_f_op_f32(abs(1785f))))) - -146f)));
    let var_1 = Struct_2(func_6(func_1(), false), u_input.a, 232f);
    global2 = _wgslsmith_sub_vec2_u32(var_1.a.b.yy, ~_wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(global2.x, 10394u) ^ var_1.a.b.zx, abs(vec2<u32>(global2.x, 11511u))), var_1.a.b.yz));
    let var_2 = Struct_3(global1[_wgslsmith_index_u32(global2.x, 14u)]);
    let var_3 = 30673u;
    let var_4 = ~var_1.a.b.zw;
    var var_5 = Struct_5(var_1.a.a, global4.yyw, _wgslsmith_f_op_f32(select(-1000f, -794f, global1[_wgslsmith_index_u32(var_3, 14u)])), Struct_2(var_1.a, func_5(countOneBits(global2.x), var_4.x & firstTrailingBit(var_4.x), abs(_wgslsmith_sub_u32(4294967295u, var_3))).x, -596f));
    var var_6 = ~max(var_3, countOneBits(4294967295u)) <= 4294967295u;
    var var_7 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.c * -152f)) * -847f)), 367f);
    let x = u_input.a;
    s_output = StorageBuffer(~(~33594u));
}

