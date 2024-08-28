struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
    c: bool,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1563f, -1555f, 835f);

var<private> global1: array<vec4<bool>, 27>;

var<private> global2: Struct_1;

var<private> global3: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(3125u, 25314u, 0u, 14281u), vec4<u32>(0u, 4294967295u, 44429u, 1u), vec4<u32>(0u, 18789u, 9422u, 29515u), vec4<u32>(83719u, 14856u, 4294967295u, 0u), vec4<u32>(22586u, 96685u, 0u, 99101u), vec4<u32>(62277u, 6209u, 4161u, 8379u), vec4<u32>(13963u, 1u, 17728u, 9092u), vec4<u32>(4294967295u, 1u, 1u, 12847u), vec4<u32>(37703u, 58025u, 24574u, 5702u), vec4<u32>(47349u, 53074u, 68299u, 19567u), vec4<u32>(46174u, 1u, 1u, 12179u), vec4<u32>(5424u, 67730u, 0u, 1u), vec4<u32>(4294967295u, 4294967295u, 1u, 75598u), vec4<u32>(29514u, 18657u, 4294967295u, 0u));

var<private> global4: i32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_3) -> vec4<i32> {
    global0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.b.x + global2.a), global2.a, global2.b.x >= u_input.a.x)) * arg_2.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.a.x, global0.x)) + _wgslsmith_f_op_f32(global0.x + global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a))), _wgslsmith_f_op_f32(566f * -1850f))));
    global4 = arg_1.x;
    global1 = array<vec4<bool>, 27>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)));
    let var_1 = arg_2.d.zyz;
    return _wgslsmith_clamp_vec4_i32(arg_2.d, vec4<i32>(-1i) * -(~(arg_2.d | vec4<i32>(15033i, 2147483647i, arg_2.d.x, -49386i))), _wgslsmith_mult_vec4_i32(-vec4<i32>(_wgslsmith_add_i32(arg_2.d.x, -4235i), var_1.x, arg_2.d.x, ~var_1.x), _wgslsmith_add_vec4_i32(-reverseBits(vec4<i32>(var_1.x, 46840i, -23551i, -2147483647i)), arg_2.d)));
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(-global2.a)), func_3(~(~_wgslsmith_mod_u32(1u, 3083u)), -(~vec3<i32>(1i, 1i, 1i)), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, -212f, global0.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-972f, global0.x, 1739f, global2.a), vec4<f32>(global0.x, global2.a, global2.a, global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1328f, global0.x, global2.a, global2.a) * vec4<f32>(global2.a, 1000f, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-295f, global0.x, 1253f, 1461f))), ~(vec4<i32>(1i, 37996i, -1652i, -2147483647i) << (global3[_wgslsmith_index_u32(26848u, 14u)] % vec4<u32>(32u))))), all(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), true)), _wgslsmith_sub_vec4_u32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(2954u, abs(u_input.a.x)), 1u, abs(_wgslsmith_sub_u32(u_input.b, 0u))), 14u)], vec4<u32>(~_wgslsmith_clamp_u32(u_input.b, 27008u, u_input.b), max(global2.b.x | 46248u, ~u_input.a.x), _wgslsmith_mult_u32(59226u, 1u), _wgslsmith_div_u32(global2.b.x, firstLeadingBit(4294967295u)))), (u_input.a.x >> (1u % 32u)) ^ (global2.b.x << (global2.b.x % 32u)));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.a)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.a.a))))), var_0.a.a)));
    var_1 = Struct_2(global0.x);
    var var_2 = max(global2.b.x, firstTrailingBit(u_input.a.x)) != ~(~(~var_0.d.x) >> (~25353u % 32u));
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1065f - 290f) - _wgslsmith_f_op_f32(exp2(var_0.a.a))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-240f)), _wgslsmith_f_op_f32(exp2(var_0.a.a)))))), ~vec2<u32>(88652u | u_input.a.x, ~min(83136u, u_input.b)));
    return firstLeadingBit(vec4<i32>(-1i) * -(~var_0.b ^ vec4<i32>(var_0.b.x, var_0.b.x, var_0.b.x, -38719i)));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-_wgslsmith_clamp_vec4_i32(-vec4<i32>(-2147483647i, -11052i, -2147483647i, 1i), func_2(), vec4<i32>(-2147483647i, 2147483647i, -1i, -1i)), min(vec4<i32>(0i, -2147483647i, 1i, 1i) >> (global3[_wgslsmith_index_u32(firstLeadingBit(global2.b.x), 14u)] % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i))), countOneBits(vec4<i32>(1i, 1i, 1i, 1i)));
    global1 = array<vec4<bool>, 27>();
    let var_1 = u_input.b;
    var var_2 = Struct_1(global2.a, vec2<u32>(max(_wgslsmith_mod_u32(~u_input.b, global2.b.x), abs(_wgslsmith_add_u32(0u, 0u))), var_1));
    var var_3 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~global3[_wgslsmith_index_u32(~(~1u), 14u)], _wgslsmith_add_vec4_u32(global3[_wgslsmith_index_u32(global2.b.x, 14u)], firstLeadingBit(global3[_wgslsmith_index_u32(var_2.b.x, 14u)]))), var_2.b.x);
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1081f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global2.a - global0.x))), 352f), global0.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, var_2.a, 1000f, 1633f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-472f, var_2.a, global2.a, 702f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.a, -696f, 1882f, -1649f), vec4<f32>(-2322f, global0.x, global0.x, -390f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(672f, global2.a, global2.a, var_2.a)) * vec4<f32>(1066f, var_2.a, global2.a, 236f))))), select((vec4<i32>(var_0.x, -35827i, 0i, 2147483647i) << ((global3[_wgslsmith_index_u32(var_1, 14u)] >> (global3[_wgslsmith_index_u32(var_1, 14u)] % vec4<u32>(32u))) % vec4<u32>(32u))) << (global3[_wgslsmith_index_u32(abs(0u), 14u)] % vec4<u32>(32u)), vec4<i32>((-2147483647i ^ var_0.x) ^ var_0.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, var_0.x, 21485i), select(vec3<i32>(34160i, 1i, var_0.x), vec3<i32>(24594i, 10311i, 1i), vec3<bool>(true, true, true))), _wgslsmith_mod_i32(-2147483647i, 2147483647i), 1i), all(vec2<bool>(true, true))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: f32, arg_3: Struct_4) -> Struct_4 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_3.a.a, -3338f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(global2.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - 123f), -1000f)))));
    var var_1 = arg_1.c.zwz;
    let var_2 = arg_3;
    var var_3 = _wgslsmith_f_op_f32(abs(-1689f));
    global2 = Struct_1(2097f, vec2<u32>(_wgslsmith_div_u32(abs(~arg_3.e), var_2.e), _wgslsmith_mult_u32(1u, arg_3.d.x)));
    return Struct_4(var_2.a, vec4<i32>(arg_0.x, 47139i, arg_0.x, var_2.b.x), var_2.c, _wgslsmith_mult_vec4_u32(~vec4<u32>(abs(u_input.b), ~var_2.d.x, 0u, var_2.e), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 65967u << (u_input.a.x % 32u), _wgslsmith_sub_u32(arg_3.d.x, u_input.a.x), global2.b.x), ~_wgslsmith_add_vec4_u32(arg_3.d, var_2.d), ~global3[_wgslsmith_index_u32(20981u & var_2.d.x, 14u)])), 40174u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-global2.a));
    let var_1 = func_4(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(~select(vec3<i32>(-8196i, -2147483647i, 1i), vec3<i32>(18366i, -1954i, 0i), false), vec3<i32>(1i, _wgslsmith_div_i32(-20528i, 1i), -1i)), ~abs(vec3<i32>(1i, 1i, 1i))), func_1(), global0.x, Struct_4(var_0, countOneBits(~_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 5685i, -9645i, -6958i), vec4<i32>(-2147483647i, -42292i, -1i, 1i))), true, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.b.x, 0u, global2.b.x), max(u_input.a, u_input.a)), 14u)] >> (~(global3[_wgslsmith_index_u32(u_input.b, 14u)] | vec4<u32>(u_input.b, 0u, 1u, u_input.b)) % vec4<u32>(32u)), ~global2.b.x));
    let var_2 = 1i;
    global3 = array<vec4<u32>, 14>();
    let var_3 = vec2<bool>(var_1.c, any(select(!select(vec2<bool>(true, var_1.c), vec2<bool>(true, var_1.c), true), vec2<bool>(var_1.c, true || var_1.c), func_4(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2, var_1.b.x, var_1.b.x), vec3<i32>(var_2, var_2, var_1.b.x)), Struct_3(vec3<f32>(global0.x, 2206f, global0.x), vec4<f32>(global2.a, var_1.a.a, -559f, 1005f), vec4<f32>(1602f, global0.x, var_1.a.a, var_0.a), var_1.b), _wgslsmith_f_op_f32(round(var_0.a)), func_4(vec3<i32>(var_2, var_2, var_1.b.x), Struct_3(vec3<f32>(var_0.a, global0.x, global0.x), vec4<f32>(var_1.a.a, var_1.a.a, 579f, 1000f), vec4<f32>(var_1.a.a, -372f, global2.a, global0.x), var_1.b), var_1.a.a, Struct_4(var_1.a, vec4<i32>(var_2, 18037i, var_1.b.x, var_2), var_1.c, vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), 0u))).c)));
    var var_4 = !var_1.c;
    global2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a)))), firstTrailingBit(global2.b) & global2.b);
    let var_5 = vec2<f32>(494f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(952f - _wgslsmith_f_op_f32(-global0.x))) + _wgslsmith_div_f32(-343f, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(554f, global2.a), _wgslsmith_f_op_f32(sign(-1704f)), var_2 == 47988i)))));
    var var_6 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-global0.xy)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mult_u32(8819u, 13446u), var_1.d.x, u_input.b), _wgslsmith_f_op_f32(global2.a * var_6.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1319f, var_6.x))), var_2);
}

