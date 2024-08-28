struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<u32>(65498u, 13684u, 0u, 0u)), Struct_1(vec4<u32>(16673u, 4294967295u, 14486u, 168791u)), Struct_1(vec4<u32>(47499u, 0u, 4294967295u, 16387u)), Struct_1(vec4<u32>(35876u, 77596u, 0u, 11900u)), Struct_1(vec4<u32>(61576u, 66821u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(0u, 1u, 37030u, 0u)), Struct_1(vec4<u32>(4294967295u, 63050u, 0u, 4294967295u)), Struct_1(vec4<u32>(66458u, 51415u, 29832u, 10040u)), Struct_1(vec4<u32>(31970u, 36912u, 4294967295u, 0u)));

var<private> global1: array<Struct_1, 12>;

var<private> global2: array<Struct_1, 10>;

var<private> global3: vec4<i32>;

var<private> global4: Struct_1 = Struct_1(vec4<u32>(1u, 26129u, 9997u, 1u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    var var_0 = min(vec3<i32>(~u_input.c.x, ~_wgslsmith_div_i32(_wgslsmith_sub_i32(global3.x, global3.x), _wgslsmith_sub_i32(1i, u_input.e.x)), u_input.e.x), vec3<i32>(1i, 24927i, -2147483647i) ^ global3.yzy);
    var var_1 = ~abs(global4.a);
    global3 = -vec4<i32>(_wgslsmith_div_i32(u_input.c.x, 0i), firstTrailingBit(var_0.x), _wgslsmith_mult_i32(var_0.x, 1i), -2147483647i);
    let var_2 = global1[_wgslsmith_index_u32(global4.a.x & 39253u, 12u)];
    global1 = array<Struct_1, 12>();
    return _wgslsmith_add_vec3_i32((u_input.e >> (vec3<u32>(~0u, var_1.x >> (u_input.a % 32u), _wgslsmith_add_u32(global4.a.x, 48628u)) % vec3<u32>(32u))) << (~(~(global4.a.wzz ^ var_2.a.yxx)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(~vec3<i32>(var_0.x >> (1u % 32u), _wgslsmith_add_i32(u_input.c.x, u_input.e.x), firstLeadingBit(-2147483647i)), vec3<i32>(countOneBits(u_input.b), u_input.b, (u_input.b | 0i) & -u_input.e.x)));
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<u32>, arg_3: f32) -> vec3<bool> {
    var var_0 = 4294967295u;
    var_0 = _wgslsmith_div_u32(~(~min(arg_2.x, 0u)), ~global4.a.x);
    var var_1 = global2[_wgslsmith_index_u32(arg_2.x, 10u)];
    global3 = ~_wgslsmith_mult_vec4_i32(select(u_input.c, ~abs(u_input.c), vec4<bool>(true, true, true, true)), vec4<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-1i, global3.x, u_input.c.x)), func_3()), u_input.b, _wgslsmith_mult_i32(u_input.c.x & -2631i, firstLeadingBit(-1i)), -7346i));
    var var_2 = global0[_wgslsmith_index_u32(1890u, 9u)];
    return !(!select(vec3<bool>(select(true, false, false), true, true), vec3<bool>(true, arg_2.x == 4294967295u, true), false));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> f32 {
    let var_0 = u_input.b;
    var var_1 = global0[_wgslsmith_index_u32(u_input.a, 9u)];
    var var_2 = vec3<bool>(!(!arg_0.x), !any(!select(vec4<bool>(false, true, arg_0.x, false), vec4<bool>(arg_0.x, false, true, true), true)), arg_0.x);
    var var_3 = Struct_1(countOneBits(arg_1.a));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-189f, -1111f))) + vec2<f32>(142f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(867f)))))));
    return 1070f;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    global1 = array<Struct_1, 12>();
    var var_0 = _wgslsmith_f_op_f32(func_4(!func_2(_wgslsmith_f_op_f32(-684f + _wgslsmith_div_f32(396f, 1350f)), vec2<u32>(global4.a.x >> (4424u % 32u), 8121u), arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(334f)) - _wgslsmith_f_op_f32(253f - -548f))), Struct_1(_wgslsmith_add_vec4_u32(vec4<u32>(42728u, arg_1.a.x, arg_0.x, 11486u) >> (countOneBits(global4.a) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(arg_0, _wgslsmith_sub_vec4_u32(arg_1.a, vec4<u32>(arg_0.x, 4294967295u, 402u, 19475u))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-261f - -1246f), _wgslsmith_f_op_f32(abs(-273f))), ~(53116i & (firstTrailingBit(-2147483647i) << (_wgslsmith_dot_vec4_u32(global4.a, vec4<u32>(global4.a.x, 34893u, 6324u, 37642u)) % 32u)))));
    global1 = array<Struct_1, 12>();
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 1u), 10u)];
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-193f + -738f)))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-551f)), -1059f)));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (_wgslsmith_clamp_u32(~_wgslsmith_add_u32(63111u, 1u), firstLeadingBit(global4.a.x), global4.a.x) > ~u_input.a) != true;
    global1 = array<Struct_1, 12>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -467f);
    global4 = global2[_wgslsmith_index_u32(~min(84632u, ~u_input.a), 10u)];
    var var_2 = vec3<i32>(-(func_1(vec4<u32>(0u, global4.a.x, global4.a.x, 41434u), Struct_1(vec4<u32>(u_input.d.x, u_input.d.x, 45870u, 5698u))) << (25195u % 32u)), -2147483647i ^ (-1i << (abs(_wgslsmith_div_u32(global4.a.x, global4.a.x)) % 32u)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(u_input.c, u_input.c), 1i >> (0u % 32u)), global3.x), -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~global4.a.x), u_input.d, -firstTrailingBit(var_2.x), abs(global4.a.zw), u_input.b);
}

