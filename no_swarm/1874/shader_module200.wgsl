struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1000f, -646f);

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(vec4<f32>(301f, 1000f, -1000f, -1333f)), Struct_2(vec4<f32>(341f, -340f, 1940f, 1963f)), Struct_2(vec4<f32>(618f, 885f, -2696f, 1191f)), Struct_2(vec4<f32>(-695f, -374f, -1207f, 949f)), Struct_2(vec4<f32>(-1000f, -1081f, -1000f, 885f)), Struct_2(vec4<f32>(-649f, -153f, -829f, 1394f)), Struct_2(vec4<f32>(-689f, 310f, -1529f, 1409f)), Struct_2(vec4<f32>(-156f, 2054f, -202f, 510f)), Struct_2(vec4<f32>(-317f, 1053f, -1416f, 153f)), Struct_2(vec4<f32>(931f, -688f, -1028f, -332f)), Struct_2(vec4<f32>(1000f, 1059f, -899f, 523f)), Struct_2(vec4<f32>(1141f, 1000f, -1000f, -1250f)), Struct_2(vec4<f32>(2502f, -1000f, -580f, -280f)), Struct_2(vec4<f32>(-304f, -2549f, -613f, -303f)), Struct_2(vec4<f32>(-524f, -1196f, -1607f, -1180f)), Struct_2(vec4<f32>(-1016f, -771f, 409f, 1000f)), Struct_2(vec4<f32>(-249f, 1000f, 1121f, 944f)), Struct_2(vec4<f32>(1000f, 886f, 283f, -1449f)), Struct_2(vec4<f32>(523f, -789f, -1600f, 1241f)), Struct_2(vec4<f32>(-1105f, 1000f, 1139f, -1000f)), Struct_2(vec4<f32>(-1273f, -728f, -1000f, 327f)), Struct_2(vec4<f32>(1091f, -2217f, -335f, 254f)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> vec4<f32> {
    let var_0 = vec4<i32>(reverseBits(u_input.a.x), u_input.d.x, 2147483647i, u_input.d.x);
    global2 = array<Struct_2, 22>();
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(44844u, countOneBits(_wgslsmith_div_u32(~_wgslsmith_add_u32(78287u, 1u), _wgslsmith_div_u32(4294967295u, ~20934u))), arg_0.a.x), 22u)];
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(849f, -1000f, -1000f, 252f)))))));
    let var_1 = !(!select(select(select(vec3<bool>(false, arg_0.d, arg_1.d), vec3<bool>(arg_0.d, arg_0.d, false), vec3<bool>(true, true, true)), vec3<bool>(arg_1.d, false, arg_1.d), vec3<bool>(arg_0.d, arg_0.d, arg_0.d)), !select(vec3<bool>(false, true, arg_0.d), vec3<bool>(arg_0.d, arg_0.d, arg_1.d), true), false));
    return global1.a;
}

fn func_2(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.a * vec4<f32>(_wgslsmith_f_op_f32(sign(arg_0.a.x)), -744f, -499f, -309f)), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(select(vec2<u32>(5812u, 17884u), vec2<u32>(u_input.b, u_input.b), true), u_input.d.x, ~53015u, false), Struct_1(vec2<u32>(u_input.b, u_input.b), 17090i, countOneBits(u_input.b), true), arg_0.a.x))));
    global2 = array<Struct_2, 22>();
    let var_1 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.b, select(~u_input.b, u_input.b, !all(vec3<bool>(true, false, false)))), 22u)];
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-871f, -1673f, _wgslsmith_div_f32(2127f, -262f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.a.x + -1000f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, var_1.a.x, global0.x, global1.a.x), vec4<f32>(var_0.a.x, 1000f, -1927f, global1.a.x))), !vec4<bool>(any(vec2<bool>(false, false)), true, any(vec2<bool>(false, false)), false))));
    global2 = array<Struct_2, 22>();
    return countOneBits(~(-u_input.d.x));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> u32 {
    let var_0 = Struct_1(select(vec2<u32>(~6782u, select(~u_input.b, u_input.b << (12304u % 32u), true)), vec2<u32>(min(~0u, reverseBits(u_input.b)), firstTrailingBit(~44804u)), -u_input.c != firstLeadingBit(countOneBits(18479i))), -2147483647i, 1u, true);
    global2 = array<Struct_2, 22>();
    let var_1 = vec3<i32>(var_0.b, firstLeadingBit(1i), -_wgslsmith_sub_i32(var_0.b, ~u_input.d.x)) << ((~(~(~vec3<u32>(u_input.b, var_0.a.x, 34346u))) ^ ~countOneBits(vec3<u32>(0u, 0u, var_0.a.x))) % vec3<u32>(32u));
    var var_2 = Struct_1(_wgslsmith_div_vec2_u32(var_0.a, var_0.a) ^ vec2<u32>(73696u, _wgslsmith_mult_u32(35788u, _wgslsmith_mult_u32(4294967295u, u_input.b))), _wgslsmith_clamp_i32(var_1.x, 19566i, _wgslsmith_div_i32(~31113i, func_2(global2[_wgslsmith_index_u32(~20610u, 22u)]))), max(var_0.a.x, 1u), arg_0.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1277f, arg_1), _wgslsmith_f_op_f32(global1.a.x - arg_1))))));
    return var_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<u32>(func_1(vec3<bool>(false, true, true), 1628f) & (41793u | func_1(vec3<bool>(false, true, true), global1.a.x)), _wgslsmith_add_u32(~u_input.b, u_input.b >> (4294967295u % 32u)) & u_input.b), -1i, u_input.b, true);
    var var_1 = (vec4<u32>(35270u, u_input.b, 4294967295u, abs(abs(u_input.b))) << ((vec4<u32>(max(var_0.a.x, 2818u), var_0.a.x, _wgslsmith_mult_u32(u_input.b, u_input.b), u_input.b) | ~(~vec4<u32>(u_input.b, 4294967295u, var_0.a.x, var_0.a.x))) % vec4<u32>(32u))) << (max(_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), abs(vec4<u32>(var_0.c, u_input.b, 4606u, 4294967295u)), vec4<bool>(false, var_0.d, true, var_0.d)), vec4<u32>(_wgslsmith_mult_u32(28741u, var_0.a.x), ~61567u, 33111u >> (u_input.b % 32u), _wgslsmith_mult_u32(4294967295u, var_0.c))), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, 72632u, 0u, var_0.a.x), (vec4<u32>(7202u, var_0.a.x, u_input.b, 1u) ^ vec4<u32>(var_0.a.x, 0u, u_input.b, 4294967295u)) | _wgslsmith_div_vec4_u32(vec4<u32>(var_0.c, 1u, u_input.b, 35453u), vec4<u32>(14011u, 0u, 4294967295u, 4294967295u)))) % vec4<u32>(32u));
    var var_2 = Struct_1(reverseBits(~var_0.a), ~(-2147483647i), _wgslsmith_dot_vec4_u32(reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.a.x, var_0.a.x, var_0.a.x, 4294967295u), ~vec4<u32>(21193u, 1u, 47644u, var_0.a.x))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(8901u, u_input.b), 1u), 0u, ~(~u_input.b), var_0.a.x)), var_0.d);
    let var_3 = vec3<i32>(-(~1i), -(~(-var_0.b)), _wgslsmith_add_i32(reverseBits(u_input.a.x), ~_wgslsmith_mod_i32(var_2.b, 2147483647i))) | _wgslsmith_sub_vec3_i32(~u_input.d, vec3<i32>(-1i >> (1u % 32u), ~1i, i32(-1i) * -46480i));
    let var_4 = -u_input.c;
    var_2 = Struct_1(min(var_0.a << (vec2<u32>(0u, 35112u) % vec2<u32>(32u)), var_0.a) ^ var_0.a, 516i, ~_wgslsmith_dot_vec2_u32((vec2<u32>(37984u, var_1.x) << (vec2<u32>(u_input.b, 26420u) % vec2<u32>(32u))) | _wgslsmith_clamp_vec2_u32(var_0.a, vec2<u32>(var_2.c, var_1.x), vec2<u32>(var_1.x, var_2.a.x)), var_0.a), -1305f <= _wgslsmith_div_f32(global0.x, -443f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.a.x, var_2.c, var_1.x, var_2.a.x) >> (vec4<u32>(4294967295u, 47212u, var_0.c, 31680u) % vec4<u32>(32u)), abs(vec4<u32>(75824u, var_2.c, 46070u, u_input.b))), ~(vec4<u32>(677u, 4294967295u, var_1.x, 0u) ^ vec4<u32>(74351u, 1u, 1u, var_2.a.x)), var_0.d), ~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(35135u, 31928u, var_1.x, var_1.x), vec4<u32>(var_0.c, 1u, var_0.c, var_2.a.x)), _wgslsmith_mod_u32(var_1.x, 50864u), var_0.a.x, var_2.c)));
}

