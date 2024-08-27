struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec4<u32>(4294967295u, 41754u, 48371u, 4294967295u), false, vec4<u32>(45962u, 19333u, 1851u, 1u)), Struct_1(vec4<u32>(4294967295u, 45044u, 4294967295u, 4294967295u), true, vec4<u32>(1u, 1u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(19472u, 49912u, 4294967295u, 4294967295u), false, vec4<u32>(7104u, 37984u, 0u, 1u)), Struct_1(vec4<u32>(4294967295u, 1u, 0u, 1u), true, vec4<u32>(35590u, 0u, 4294967295u, 1u)), Struct_1(vec4<u32>(4294967295u, 38083u, 0u, 25886u), false, vec4<u32>(0u, 1u, 4294967295u, 1u)), Struct_1(vec4<u32>(13090u, 0u, 94004u, 72369u), true, vec4<u32>(603u, 91793u, 9608u, 32240u)), Struct_1(vec4<u32>(0u, 96938u, 58967u, 0u), false, vec4<u32>(18479u, 1u, 35705u, 1u)), Struct_1(vec4<u32>(83365u, 4294967295u, 1u, 0u), true, vec4<u32>(12282u, 1u, 1u, 1u)), Struct_1(vec4<u32>(88557u, 4294967295u, 4294967295u, 1u), false, vec4<u32>(1u, 1u, 9292u, 45543u)), Struct_1(vec4<u32>(2494u, 21476u, 1u, 0u), true, vec4<u32>(75193u, 1u, 0u, 70639u)), Struct_1(vec4<u32>(4294967295u, 9207u, 0u, 44213u), true, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 11096u)), Struct_1(vec4<u32>(1u, 66428u, 1u, 4294967295u), true, vec4<u32>(1u, 28683u, 1u, 38364u)), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 30039u), true, vec4<u32>(48449u, 80701u, 1u, 90669u)), Struct_1(vec4<u32>(41921u, 0u, 1u, 120408u), false, vec4<u32>(75313u, 4281u, 4294967295u, 20782u)), Struct_1(vec4<u32>(20943u, 4294967295u, 69591u, 34695u), false, vec4<u32>(1u, 48499u, 111964u, 32963u)), Struct_1(vec4<u32>(4294967295u, 0u, 4294967295u, 19691u), true, vec4<u32>(4294967295u, 0u, 1u, 46094u)), Struct_1(vec4<u32>(4294967295u, 17755u, 4294967295u, 38494u), false, vec4<u32>(15961u, 44900u, 1u, 22829u)), Struct_1(vec4<u32>(35557u, 15611u, 0u, 2070u), false, vec4<u32>(4294967295u, 18195u, 5778u, 5559u)), Struct_1(vec4<u32>(59062u, 16500u, 1u, 51734u), true, vec4<u32>(7781u, 4294967295u, 77301u, 14325u)), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 71898u), false, vec4<u32>(34567u, 73974u, 27672u, 4294967295u)), Struct_1(vec4<u32>(102283u, 1u, 4294967295u, 33807u), false, vec4<u32>(1u, 1u, 1u, 1u)), Struct_1(vec4<u32>(19867u, 0u, 22696u, 4294967295u), false, vec4<u32>(62138u, 20764u, 2639u, 14466u)), Struct_1(vec4<u32>(29111u, 49095u, 1u, 17977u), true, vec4<u32>(3011u, 20947u, 1u, 1645u)), Struct_1(vec4<u32>(1u, 60675u, 48856u, 1u), false, vec4<u32>(4294967295u, 5802u, 52691u, 4294967295u)));

var<private> global1: array<bool, 3>;

var<private> global2: Struct_1;

var<private> global3: vec3<i32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = 2147483647i;
    global0 = array<Struct_1, 24>();
    var var_1 = select(~_wgslsmith_dot_vec2_u32(vec2<u32>(~37935u, ~4294967295u), vec2<u32>(~1u, global2.a.x)), _wgslsmith_div_u32(0u, global2.a.x), all(vec4<bool>(!global2.b, global1[_wgslsmith_index_u32(~global2.a.x, 3u)], all(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], arg_0, global2.b, false)), true)) && any(vec2<bool>(true, global1[_wgslsmith_index_u32(22218u, 3u)])));
    global3 = min(vec3<i32>(abs(-2147483647i), 2147483647i, var_0), select(~(-vec3<i32>(-1i, global3.x, global3.x)), -(vec3<i32>(var_0, -42730i, var_0) & vec3<i32>(global3.x, var_0, -24114i)), global2.b) >> (~vec3<u32>(674u, ~0u, global2.c.x) % vec3<u32>(32u)));
    var var_2 = ~((firstLeadingBit(~global2.c.x) ^ _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a), vec2<u32>(u_input.a.x, 73908u) | global2.a.yz)) | 4294967295u);
    return 41445u;
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(arg_0.x & u_input.a.x, 24u)];
    let var_1 = false;
    var var_2 = Struct_1(var_0.a, ~_wgslsmith_clamp_u32(65475u, global2.a.x, reverseBits(var_0.c.x)) < _wgslsmith_div_u32(arg_0.x, ~func_3(false)), firstTrailingBit(vec4<u32>(countOneBits(_wgslsmith_div_u32(u_input.a.x, var_0.a.x)), ~u_input.a.x, ~(~var_0.c.x), 4294967295u)));
    return global0[_wgslsmith_index_u32(0u, 24u)];
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: bool) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(~(~(~arg_1.c.x)), 24u)];
    var var_1 = false;
    var var_2 = func_2(reverseBits(~vec4<u32>(global2.c.x, 0u, 0u, var_0.c.x)) & global2.c);
    let var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1221f, 1590f), vec2<f32>(-137f, 187f), arg_1.b)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1877f, 1257f), vec2<f32>(-1800f, 843f), true))))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(334f, -732f) - vec2<f32>(-170f, 2946f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-569f, -1104f) + vec2<f32>(-123f, -1013f)))))));
    var var_4 = !select(!vec4<bool>(true, global1[_wgslsmith_index_u32(~u_input.a.x, 3u)], arg_1.b, all(vec2<bool>(arg_1.b, false))), !vec4<bool>(false, false, global3.x == arg_0.x, var_2.b != false), select(select(!vec4<bool>(true, true, var_0.b, true), vec4<bool>(false, var_0.b, arg_2, false), select(vec4<bool>(global2.b, true, true, true), vec4<bool>(false, arg_2, true, true), vec4<bool>(arg_2, true, global1[_wgslsmith_index_u32(4956u, 3u)], var_0.b))), !vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 3u)], global2.b, var_2.b), arg_2 | !arg_1.b));
    return -(~min(global3.x, _wgslsmith_add_i32(global3.x, -2147483647i) << (1u % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(abs(0i), 2147483647i, -(~(global3.x & func_1(vec3<i32>(-41190i, -2147483647i, global3.x), global0[_wgslsmith_index_u32(global2.c.x, 24u)], global1[_wgslsmith_index_u32(u_input.a.x, 3u)]))));
    let var_1 = global2.a.xzx;
    let var_2 = func_2(global2.a);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(select(637f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-772f))) + 1787f), !(firstTrailingBit(9029u) == var_2.c.x))), -1671f, -1105f);
    let var_4 = _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(0i, var_0.x), 0i, -42369i) ^ min(vec3<i32>(global3.x, var_0.x, 2147483647i), vec3<i32>(global3.x, 0i, -1i)), -_wgslsmith_sub_vec3_i32(vec3<i32>(42264i, 0i, -17712i), ~vec3<i32>(global3.x, global3.x, 33718i))), ~max(-(~vec3<i32>(-1i, global3.x, global3.x)), min(select(vec3<i32>(var_0.x, 22643i, var_0.x), vec3<i32>(-18855i, -6663i, global3.x), false), vec3<i32>(1i, global3.x, global3.x))));
    var_0 = vec3<i32>(global3.x, _wgslsmith_add_i32(var_4.x, ~var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-8590i), -2147483647i, -30273i, select(-2147483647i, global3.x, true)), (_wgslsmith_mult_vec4_i32(vec4<i32>(55966i, 2147483647i, global3.x, -22381i), vec4<i32>(var_0.x, 21853i, 14578i, var_4.x)) & -vec4<i32>(-1i, global3.x, -30949i, var_4.x)) & (~vec4<i32>(2147483647i, global3.x, 1i, var_0.x) & firstLeadingBit(vec4<i32>(0i, var_4.x, -2147483647i, -27635i)))));
    var var_5 = global0[_wgslsmith_index_u32((_wgslsmith_dot_vec4_u32(max(global2.c, vec4<u32>(13368u, u_input.a.x, 20523u, 15514u)) >> (_wgslsmith_sub_vec4_u32(var_2.a, vec4<u32>(var_2.a.x, 0u, 4294967295u, 0u)) % vec4<u32>(32u)), reverseBits(~global2.c)) << (1u % 32u)) << (5149u % 32u), 24u)];
    let var_6 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_5.c.wzy, countOneBits(~vec3<u32>(abs(u_input.a.x), 13891u, var_5.c.x))), 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(20532i, _wgslsmith_f_op_f32(ceil(1788f)), abs(~1u));
}

