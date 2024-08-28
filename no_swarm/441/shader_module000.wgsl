struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global0: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec4<u32>(0u, 6844u, 1u, 0u)), Struct_1(vec4<u32>(4294967295u, 41038u, 72604u, 0u)), Struct_1(vec4<u32>(0u, 1u, 1u, 0u)), Struct_1(vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(26526u, 29517u, 44911u, 0u)), Struct_1(vec4<u32>(10727u, 0u, 1u, 4294967295u)), Struct_1(vec4<u32>(72611u, 15995u, 1u, 0u)), Struct_1(vec4<u32>(50507u, 1u, 9135u, 4294967295u)), Struct_1(vec4<u32>(6356u, 18683u, 0u, 19594u)), Struct_1(vec4<u32>(1u, 84725u, 1u, 12752u)), Struct_1(vec4<u32>(9047u, 15421u, 0u, 0u)), Struct_1(vec4<u32>(43150u, 28871u, 1u, 35116u)), Struct_1(vec4<u32>(12161u, 80705u, 1u, 0u)), Struct_1(vec4<u32>(12752u, 78301u, 37018u, 33974u)), Struct_1(vec4<u32>(0u, 4294967295u, 57526u, 30057u)), Struct_1(vec4<u32>(34366u, 16228u, 4294967295u, 1u)), Struct_1(vec4<u32>(8388u, 63407u, 142903u, 4294967295u)), Struct_1(vec4<u32>(52091u, 1u, 4294967295u, 8790u)), Struct_1(vec4<u32>(19855u, 4294967295u, 0u, 32779u)), Struct_1(vec4<u32>(119128u, 0u, 4294967295u, 0u)), Struct_1(vec4<u32>(59168u, 32874u, 44567u, 0u)), Struct_1(vec4<u32>(0u, 4294967295u, 25792u, 63535u)), Struct_1(vec4<u32>(42083u, 62591u, 8030u, 17259u)), Struct_1(vec4<u32>(28802u, 25469u, 50951u, 1u)), Struct_1(vec4<u32>(10171u, 22142u, 4294967295u, 1u)), Struct_1(vec4<u32>(133940u, 1341u, 162u, 9368u)));

var<private> global1: u32 = 72750u;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<u32>(4294967295u, 59336u, 4294967295u, 51544u)), Struct_1(vec4<u32>(1075u, 52400u, 35102u, 28000u)), Struct_1(vec4<u32>(0u, 1144u, 50959u, 1u)), Struct_1(vec4<u32>(13073u, 7302u, 0u, 1u)), Struct_1(vec4<u32>(30674u, 0u, 4294967295u, 4294967295u)), Struct_1(vec4<u32>(20803u, 0u, 43000u, 68214u)), Struct_1(vec4<u32>(1u, 46280u, 0u, 1u)), Struct_1(vec4<u32>(1u, 46410u, 58774u, 0u)), Struct_1(vec4<u32>(34153u, 525u, 65009u, 31911u)), Struct_1(vec4<u32>(28215u, 0u, 25665u, 14235u)), Struct_1(vec4<u32>(0u, 49940u, 4294967295u, 0u)), Struct_1(vec4<u32>(1u, 56382u, 1u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 1u, 34762u, 11008u)), Struct_1(vec4<u32>(49097u, 4294967295u, 87048u, 51319u)), Struct_1(vec4<u32>(28066u, 1u, 1u, 153032u)), Struct_1(vec4<u32>(0u, 1u, 41368u, 1u)), Struct_1(vec4<u32>(58043u, 4294967295u, 34757u, 0u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 52336u, 62661u)), Struct_1(vec4<u32>(4294967295u, 1u, 11964u, 19551u)), Struct_1(vec4<u32>(4443u, 4294967295u, 1u, 4294967295u)), Struct_1(vec4<u32>(53948u, 1u, 82888u, 5867u)), Struct_1(vec4<u32>(60474u, 0u, 8622u, 4294967295u)), Struct_1(vec4<u32>(1u, 4420u, 44403u, 66064u)), Struct_1(vec4<u32>(1u, 1u, 23243u, 21836u)), Struct_1(vec4<u32>(0u, 4294967295u, 39470u, 0u)), Struct_1(vec4<u32>(39389u, 32859u, 3613u, 27455u)), Struct_1(vec4<u32>(12017u, 1u, 1u, 54043u)), Struct_1(vec4<u32>(4294967295u, 13593u, 1u, 41795u)), Struct_1(vec4<u32>(21050u, 6427u, 4294967295u, 1u)), Struct_1(vec4<u32>(0u, 51905u, 17165u, 4294967295u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<i32>, arg_2: Struct_1) -> bool {
    global1 = ~(arg_2.a.x >> (4294967295u % 32u));
    global1 = _wgslsmith_add_u32(~arg_2.a.x, ~(~countOneBits(10834u))) ^ 45488u;
    global2 = array<Struct_1, 30>();
    global1 = arg_2.a.x;
    global2 = array<Struct_1, 30>();
    return arg_0.x;
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = _wgslsmith_add_vec2_i32(~_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a, u_input.a), min(vec2<i32>(18764i, -2147483647i), vec2<i32>(-2147483647i, 0i))), _wgslsmith_div_vec2_i32(min(vec2<i32>(u_input.b, -15079i), vec2<i32>(u_input.b, u_input.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(62280i, 0i)))), vec2<i32>(u_input.a, ~(-9921i)));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -506f), 432f, -160f, 1075f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(499f, -1281f, 397f, 882f))))));
    var var_2 = 0u;
    var var_3 = var_1.yz;
    let var_4 = _wgslsmith_clamp_u32(~countOneBits(~_wgslsmith_sub_u32(4294967295u, 0u)), firstTrailingBit(1u), _wgslsmith_clamp_u32(1u, _wgslsmith_mult_u32(~_wgslsmith_add_u32(1u, 0u), abs(1u)), _wgslsmith_clamp_u32(89923u, 60215u, ~(~49813u))));
    return 0u;
}

fn func_2() -> vec2<f32> {
    global0 = array<Struct_1, 26>();
    let var_0 = global2[_wgslsmith_index_u32(0u, 30u)];
    var var_1 = 4294967295u & var_0.a.x;
    let var_2 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(~44771u, ~var_0.a.x), func_3(false), ~_wgslsmith_mod_u32(4294967295u, 24216u), ~1u) | vec4<u32>(min(1u << (var_0.a.x % 32u), 72882u), var_0.a.x & var_0.a.x, ~reverseBits(44509u), _wgslsmith_mult_u32(var_0.a.x, 1u) ^ var_0.a.x));
    var_1 = ~var_0.a.x;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(sign(-427f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-118f - -2419f))), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(max(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4960u, 28469u, 2843u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(90931u, 81621u, 1u)), select(vec3<u32>(0u, 42807u, 23750u), vec3<u32>(55693u, 1u, 29928u), func_1(vec4<bool>(true, true, true, true), vec3<i32>(u_input.a, -19542i, u_input.a), Struct_1(vec4<u32>(76523u, 60660u, 0u, 43879u))))), vec3<u32>(1u, 1u, 1u));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()));
    let var_2 = vec4<bool>(var_0.x > ~(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 49275u, var_0.x), vec3<u32>(10465u, 4294967295u, var_0.x)) >> (abs(44607u) % 32u)), true, false, !(var_0.x > 0u));
    global1 = var_0.x;
    var_0 = vec3<u32>(~_wgslsmith_dot_vec2_u32(~(~vec2<u32>(var_0.x, 1u)), ~(~var_0.xx)), _wgslsmith_div_u32(1u, 17309u), var_0.x);
    var_1 = vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1577f)));
    let var_3 = ~vec2<i32>(u_input.b, u_input.b);
    let var_4 = select(countOneBits(vec2<i32>(-44455i, firstTrailingBit(-var_3.x))), ~var_3, var_2.zw);
    let var_5 = ~(~max(~(~vec4<u32>(var_0.x, 1u, 4294967295u, 4294967295u)), ~(vec4<u32>(4294967295u, var_0.x, 4294967295u, 0u) | vec4<u32>(0u, var_0.x, 43468u, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec2_f32(func_2()).x, -825f, false)));
}

