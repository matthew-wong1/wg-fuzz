struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_2,
    d: Struct_2,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 21905u, 9532u, 4294967295u);

var<private> global1: vec2<f32> = vec2<f32>(-254f, -1892f);

var<private> global2: array<vec3<f32>, 9> = array<vec3<f32>, 9>(vec3<f32>(-195f, 1256f, -1005f), vec3<f32>(614f, -148f, -1000f), vec3<f32>(1112f, -693f, 378f), vec3<f32>(518f, 482f, -883f), vec3<f32>(-557f, 181f, 851f), vec3<f32>(1000f, 538f, -1291f), vec3<f32>(-296f, 1018f, -596f), vec3<f32>(-1824f, 109f, 1634f), vec3<f32>(1003f, 1779f, 750f));

var<private> global3: i32 = 16189i;

var<private> global4: array<vec2<i32>, 8>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3) -> bool {
    global0 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(min(vec4<u32>(79710u, reverseBits(0u), u_input.a.x, global0.x), _wgslsmith_sub_vec4_u32(vec4<u32>(32716u, u_input.a.x, global0.x, 38325u) | vec4<u32>(10430u, global0.x, u_input.a.x, global0.x), _wgslsmith_div_vec4_u32(vec4<u32>(121006u, u_input.a.x, u_input.a.x, 55766u), vec4<u32>(1u, 4294967295u, global0.x, 10376u)))), _wgslsmith_sub_vec4_u32(select(vec4<u32>(0u, global0.x, u_input.a.x, u_input.a.x) & vec4<u32>(4294967295u, global0.x, u_input.a.x, 1u), vec4<u32>(1u, global0.x, global0.x, global0.x) ^ vec4<u32>(11618u, global0.x, 0u, 0u), !arg_0.e), max(min(vec4<u32>(13255u, u_input.a.x, 11638u, 68024u), vec4<u32>(u_input.a.x, global0.x, global0.x, u_input.a.x)), vec4<u32>(global0.x, u_input.a.x, 20453u, 25904u) ^ vec4<u32>(38678u, 1u, 45434u, global0.x)))), abs(~vec4<u32>(global0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 4363u, 4294967295u), vec4<u32>(u_input.a.x, 6036u, 43737u, global0.x)), 22047u & u_input.a.x, 33365u)));
    global4 = array<vec2<i32>, 8>();
    var var_0 = arg_0;
    var var_1 = vec2<i32>(u_input.b, -3540i);
    let var_2 = Struct_4(Struct_1(!arg_0.e.x, vec2<f32>(-1080f, _wgslsmith_f_op_f32(f32(-1f) * -1295f)), 1512u, any(select(!vec3<bool>(arg_0.b, false, arg_0.e.x), !vec3<bool>(true, false, var_0.e.x), var_0.e.yyz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_0.d.a.x)))))), _wgslsmith_mult_vec3_u32(firstTrailingBit(_wgslsmith_mult_vec3_u32(select(global0.yzw, global0.zzx, false), global0.xwx)), global0.yyz), ~(~(~21455u)) << (~(~global0.x) % 32u), Struct_1(true, vec2<f32>(-270f, arg_0.a.a.x), min(_wgslsmith_div_u32(global0.x, 0u & u_input.a.x), ~35180u), !(!(!var_0.b)), 2127f), -2147483647i);
    return !(!any(var_0.e)) & true;
}

fn func_2(arg_0: Struct_1) -> u32 {
    global1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(arg_0.b, _wgslsmith_f_op_vec2_f32(-arg_0.b))))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, arg_0.b.x)), select(vec2<bool>(arg_0.a, any(vec3<bool>(arg_0.a, arg_0.a, false))), vec2<bool>(true, true), func_3(Struct_3(Struct_2(vec4<f32>(global1.x, global1.x, 364f, global1.x)), arg_0.d, Struct_2(vec4<f32>(arg_0.e, global1.x, arg_0.e, global1.x)), Struct_2(vec4<f32>(-1000f, arg_0.b.x, 814f, arg_0.e)), vec4<bool>(arg_0.d, arg_0.a, arg_0.d, false))) & (global1.x < _wgslsmith_f_op_f32(abs(-972f))))));
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(0u, ~(~arg_0.c)), ~_wgslsmith_dot_vec2_u32(u_input.a.zy, ~global0.xz), u_input.a.x << (u_input.a.x % 32u)), _wgslsmith_div_u32(~35149u, _wgslsmith_add_u32(u_input.a.x, arg_0.c)));
    let var_1 = vec4<f32>(1242f, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1750f + arg_0.b.x)))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-676f - _wgslsmith_f_op_f32(step(arg_0.e, 1211f))), _wgslsmith_f_op_f32(-arg_0.e)))), _wgslsmith_f_op_f32(-1735f - -1000f));
    var var_2 = arg_0;
    var var_3 = min(_wgslsmith_sub_i32(u_input.b, u_input.b), u_input.b);
    return _wgslsmith_dot_vec2_u32(u_input.a.xz, _wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, global0.x) | global0.xy, max(vec2<u32>(var_0, ~arg_0.c), (vec2<u32>(1u, 0u) & u_input.a.xy) << (u_input.a.yx % vec2<u32>(32u)))));
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = ~(~_wgslsmith_sub_u32(firstLeadingBit(func_2(arg_0)), u_input.a.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x * arg_0.e), _wgslsmith_f_op_f32(round(-1383f)), _wgslsmith_f_op_f32(ceil(1622f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2[_wgslsmith_index_u32(0u, 9u)], global2[_wgslsmith_index_u32(u_input.a.x, 9u)]) + _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(0u, 9u)])))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-262f, global1.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(global2[_wgslsmith_index_u32(arg_0.c, 9u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global2[_wgslsmith_index_u32(1u, 9u)])) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.e, arg_0.b.x, global1.x)))))), vec3<bool>(false, all(vec4<bool>(true, true, any(vec2<bool>(true, true)), u_input.c.x <= 0i)), !(arg_0.d & !arg_0.d))));
    let var_2 = select(0u < (~_wgslsmith_clamp_u32(arg_0.c, 9374u, 4294967295u) & var_0), func_3(Struct_3(Struct_2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-992f, 1364f, -2355f, global1.x)))), arg_0.d, Struct_2(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(287f, var_1.x, 1423f, 120f)))), Struct_2(vec4<f32>(-788f, arg_0.b.x, arg_0.b.x, arg_0.b.x)), select(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.d), select(vec4<bool>(true, arg_0.a, false, true), vec4<bool>(arg_0.d, arg_0.a, arg_0.d, true), arg_0.a), !vec4<bool>(false, false, arg_0.d, arg_0.d)))), !(!((arg_0.e > 1458f) == arg_0.d)));
    global4 = array<vec2<i32>, 8>();
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1164f, arg_0.b.x, 494f, -386f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(297f, var_1.x, 154f, -2101f)))) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, var_1.x, global1.x, global1.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e, 321f, arg_0.b.x, 100f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(307f, -1056f, global1.x, global1.x), vec4<f32>(-1000f, -575f, global1.x, 169f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1149f, -691f, arg_0.b.x, -719f), vec4<f32>(-992f, 753f, arg_0.b.x, var_1.x))))))));
    return firstLeadingBit(_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.d.x, reverseBits(u_input.c.x)), vec2<i32>(~u_input.d.x, firstTrailingBit(u_input.c.x ^ 47350i)), global4[_wgslsmith_index_u32(firstLeadingBit(6964u), 8u)]));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_3) -> Struct_2 {
    global0 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(min(u_input.a.x, 1u), min(0u, 4294967295u), ~_wgslsmith_mult_u32(global0.x, 0u), _wgslsmith_dot_vec3_u32(global0.zxz, ~vec3<u32>(u_input.a.x, u_input.a.x, 1u))), vec4<u32>(~u_input.a.x, ~4294967295u, ~(47492u & global0.x), countOneBits(~u_input.a.x))), ~(~(~(vec4<u32>(0u, 17579u, 6521u, 1u) | vec4<u32>(u_input.a.x, u_input.a.x, 1u, 107823u)))));
    global0 = ~firstLeadingBit(~(~(vec4<u32>(global0.x, global0.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.a.x, 0u, 1626u, 0u) % vec4<u32>(32u)))));
    global1 = vec2<f32>(308f, 334f);
    var var_0 = _wgslsmith_clamp_i32(-1i, min(~firstTrailingBit(37046i), 51473i >> (abs(u_input.a.x) % 32u)), -10425i);
    let var_1 = arg_3.c;
    return Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.d.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~countOneBits(min(vec3<u32>(u_input.a.x, global0.x, u_input.a.x), ~global0.xzy)));
    var var_1 = Struct_3(func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.x, global1.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, 1563f) + vec2<f32>(global1.x, global1.x)))), true, ~(func_1(Struct_1(false, vec2<f32>(global1.x, -1985f), 30727u, false, 1020f)) >> (_wgslsmith_mod_vec2_u32(var_0.yx, vec2<u32>(4294967295u, global0.x)) % vec2<u32>(32u))), Struct_3(Struct_2(vec4<f32>(-396f, global1.x, 1159f, -211f)), true, Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -896f, global1.x, 1165f) - vec4<f32>(-1690f, global1.x, 218f, -568f))), Struct_2(vec4<f32>(global1.x, -548f, global1.x, -844f)), vec4<bool>(true, any(vec2<bool>(false, true)), true, 944f != global1.x))), !(true || all(vec3<bool>(true, true, true))), Struct_2(vec4<f32>(global1.x, _wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global1.x) + 618f), _wgslsmith_f_op_f32(f32(-1f) * -761f))), func_4(vec2<f32>(-995f, _wgslsmith_f_op_f32(-global1.x)), !all(vec3<bool>(true, true, true)), u_input.d.zz, Struct_3(func_4(vec2<f32>(1000f, -247f), true, global4[_wgslsmith_index_u32(1u, 8u)], Struct_3(Struct_2(vec4<f32>(global1.x, global1.x, global1.x, global1.x)), true, Struct_2(vec4<f32>(863f, global1.x, 199f, -487f)), Struct_2(vec4<f32>(1178f, -102f, -379f, global1.x)), vec4<bool>(true, true, false, true))), false, func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 862f)), all(vec2<bool>(false, true)), vec2<i32>(u_input.d.x, u_input.b), Struct_3(Struct_2(vec4<f32>(global1.x, global1.x, global1.x, -1000f)), true, Struct_2(vec4<f32>(global1.x, global1.x, 299f, -1205f)), Struct_2(vec4<f32>(-827f, global1.x, 224f, global1.x)), vec4<bool>(false, true, true, false))), Struct_2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1971f, 1061f, 1449f, global1.x)))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true))), select(vec4<bool>(true, all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false))), !any(vec2<bool>(false, false)), true), vec4<bool>(any(vec4<bool>(true, true, true, true)), !(global0.x >= 60666u), !any(vec3<bool>(true, false, false)), false), false));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1049f, var_1.a.a.x, var_1.a.a.x) + vec3<f32>(1000f, 1627f, var_1.c.a.x)))))), _wgslsmith_f_op_vec3_f32(max(var_1.c.a.zyy, vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1339f)) + _wgslsmith_f_op_f32(global1.x - 172f)))))));
    let var_3 = select(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(-2147483647i, u_input.c.x, u_input.c.x, u_input.c.x) >> (vec4<u32>(4294967295u, var_0.x, 1u, 0u) % vec4<u32>(32u))), vec4<i32>(51078i, u_input.c.x, u_input.d.x, -36924i) ^ max(vec4<i32>(10298i, u_input.c.x, u_input.d.x, u_input.c.x), u_input.c)), -u_input.c), -u_input.c, vec4<bool>(false, false, any(vec2<bool>(all(var_1.e.yx), true)), true));
    let var_4 = any(select(var_1.e.wz, vec2<bool>(any(vec4<bool>(var_1.e.x, true, var_1.e.x, var_1.e.x)) & true, false), vec2<bool>(!var_1.b, true)));
    var var_5 = Struct_1(_wgslsmith_f_op_f32(min(global1.x, func_4(_wgslsmith_div_vec2_f32(var_1.a.a.zy, var_2.yx), var_4, _wgslsmith_mod_vec2_i32(vec2<i32>(-6816i, var_3.x), vec2<i32>(var_3.x, u_input.b)), Struct_3(Struct_2(var_1.c.a), var_4, Struct_2(var_1.a.a), Struct_2(vec4<f32>(global1.x, global1.x, -1000f, 705f)), vec4<bool>(true, false, false, var_1.e.x))).a.x)) >= _wgslsmith_f_op_f32(global1.x + 1354f), vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.a.x), global1.x), u_input.a.x | global0.x, all(!select(select(vec2<bool>(true, var_4), var_1.e.xx, var_4), var_1.e.zx, func_3(Struct_3(var_1.a, var_4, Struct_2(var_1.c.a), var_1.a, vec4<bool>(var_1.e.x, var_4, var_1.e.x, false))))), 113f);
    var var_6 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_1.c.a, vec4<f32>(196f, -563f, var_1.a.a.x, 419f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.a.x - 567f) * global1.x), _wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(abs(-586f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(var_1.a.a)))) - _wgslsmith_f_op_vec4_f32(exp2(var_1.d.a))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-858f, -394f, -1024f, -991f), _wgslsmith_f_op_vec4_f32(select(var_1.d.a, var_1.a.a, var_1.e.x))), var_1.d.a))));
    var_6 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-2932f, -1178f, func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1828f, -1433f)))), true, reverseBits(~vec2<i32>(u_input.c.x, 2147483647i)), Struct_3(Struct_2(vec4<f32>(-382f, var_1.d.a.x, global1.x, 632f)), any(var_1.e.yx), func_4(var_2.xy, true, var_3.xx, Struct_3(var_1.d, true, Struct_2(vec4<f32>(var_1.d.a.x, -282f, var_6.x, -627f)), Struct_2(var_1.c.a), vec4<bool>(true, false, var_5.d, var_1.b))), Struct_2(vec4<f32>(global1.x, global1.x, 994f, var_1.a.a.x)), select(var_1.e, var_1.e, var_1.e))).a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_6.x - var_1.d.a.x)) + _wgslsmith_f_op_f32(-var_5.e))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_4(var_5.b, true, u_input.c.wx, Struct_3(var_1.c, var_4, Struct_2(vec4<f32>(238f, var_1.d.a.x, 1932f, var_1.d.a.x)), Struct_2(vec4<f32>(422f, global1.x, -292f, var_2.x)), vec4<bool>(true, true, true, true))).a + vec4<f32>(212f, 1235f, var_6.x, global1.x)), _wgslsmith_f_op_vec4_f32(-var_1.a.a), var_1.e))));
    var var_7 = abs(max(~select(_wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, 44786u, u_input.a.x), vec4<u32>(global0.x, var_5.c, 4294967295u, 58018u)), ~vec4<u32>(global0.x, u_input.a.x, 26679u, var_5.c), var_1.e), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 0u, 1u, u_input.a.x), ~vec4<u32>(10939u, 5143u, var_5.c, 0u)), _wgslsmith_add_vec4_u32(~vec4<u32>(89369u, var_5.c, 4294967295u, 1u), countOneBits(vec4<u32>(1u, global0.x, var_0.x, global0.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-742f, 103f, 626f, var_6.x)), _wgslsmith_f_op_vec4_f32(-var_1.a.a)))), firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(2147483647i), 1i, -3835i), -(vec3<i32>(-1i, -48308i, -1162i) >> (var_7.zzw % vec3<u32>(32u))))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * -358f), func_4(vec2<f32>(1039f, var_5.e), true, global4[_wgslsmith_index_u32(~global0.x, 8u)], Struct_3(Struct_2(var_1.d.a), true, var_1.c, var_1.d, var_1.e)).a.x), 751f, func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) + _wgslsmith_f_op_vec2_f32(min(var_6.yw, var_1.c.a.wy))), u_input.b <= (u_input.b >> (var_7.x % 32u)), ~firstTrailingBit(vec2<i32>(25448i, -47318i)), Struct_3(func_4(vec2<f32>(var_5.b.x, 356f), false, vec2<i32>(u_input.b, var_3.x), Struct_3(Struct_2(vec4<f32>(673f, global1.x, -909f, 555f)), var_1.e.x, Struct_2(vec4<f32>(1942f, var_2.x, 322f, global1.x)), var_1.d, var_1.e)), select(false, var_5.d, true), var_1.d, var_1.a, var_1.e)).a.x));
}

