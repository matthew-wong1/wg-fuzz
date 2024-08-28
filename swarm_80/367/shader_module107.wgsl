struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec4<f32>, 16> = array<vec4<f32>, 16>(vec4<f32>(-831f, 803f, -102f, 570f), vec4<f32>(436f, 634f, 1248f, 2141f), vec4<f32>(1000f, 1000f, -1805f, 260f), vec4<f32>(2042f, -1571f, 469f, -388f), vec4<f32>(-1000f, 367f, -724f, -1324f), vec4<f32>(1000f, -116f, 2129f, 757f), vec4<f32>(1790f, 1367f, -694f, 1246f), vec4<f32>(-101f, -1231f, -487f, 1000f), vec4<f32>(607f, -686f, -1000f, 420f), vec4<f32>(-504f, -1151f, -1217f, 306f), vec4<f32>(1155f, -1723f, -672f, 682f), vec4<f32>(412f, -159f, 726f, 1498f), vec4<f32>(1377f, -2136f, -451f, 1431f), vec4<f32>(-354f, -1915f, -333f, 809f), vec4<f32>(-617f, 469f, 520f, -1000f), vec4<f32>(1062f, 449f, -1000f, 1061f));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> bool {
    let var_0 = _wgslsmith_div_vec4_i32(~(-max(vec4<i32>(-1i, global0.x, 1i, u_input.a), vec4<i32>(u_input.a, arg_0, arg_0, arg_0))), vec4<i32>(global0.x, 1i >> (u_input.b.x % 32u), arg_0, 1i) & max(vec4<i32>(u_input.a, global0.x, arg_0, global0.x), vec4<i32>(arg_0, global0.x, u_input.a, global0.x))) | vec4<i32>(-58294i, max(global0.x, u_input.a), u_input.a, firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -1i, 17528i), vec3<i32>(arg_0, 38944i, 0i)), _wgslsmith_div_i32(arg_0, arg_0))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-671f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1102f - 1137f) - _wgslsmith_f_op_f32(690f - -1000f))) - _wgslsmith_f_op_f32(485f * 346f)));
    var_1 = _wgslsmith_div_f32(-504f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-999f))));
    var var_2 = 14104i;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1104f);
    return any(vec4<bool>(true, true && (1u <= arg_1.x), false, true));
}

fn func_2() -> Struct_4 {
    let var_0 = 0u;
    var var_1 = Struct_5(firstTrailingBit(global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-915f * _wgslsmith_f_op_f32(min(-2096f, -2475f))), _wgslsmith_f_op_f32(sign(-399f)), -1598f)), Struct_1(all(vec4<bool>(true, true, true, true))), Struct_1(true), u_input.b.x);
    global0 = vec3<i32>(countOneBits(u_input.a), global0.x, firstLeadingBit(reverseBits(global0.x)));
    var var_2 = -1416f <= var_1.b.x;
    var var_3 = global0.x;
    return Struct_4(Struct_3(all(select(vec3<bool>(var_1.d.a, var_1.d.a, var_1.c.a), select(vec3<bool>(true, false, false), vec3<bool>(var_1.c.a, true, true), true), vec3<bool>(var_1.c.a, var_1.c.a, var_1.d.a))), Struct_2(var_0, var_1.e, Struct_1(!var_1.d.a), min(firstTrailingBit(var_1.a), 1i ^ var_1.a), Struct_1(true)), Struct_2(58690u, select(~0u, var_1.e, true), Struct_1(func_3(global0.x, vec3<u32>(1u, 86490u, 15040u))), _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_1.a, 2147483647i), 0i), var_1.c), _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(var_0, var_0, 22281u) & u_input.b), u_input.b)), 1u, Struct_2(_wgslsmith_dot_vec2_u32(select(u_input.b.xy, u_input.b.xx, vec2<bool>(true, var_1.c.a)), max(vec2<u32>(var_0, var_1.e), u_input.b.yx)) << (60929u % 32u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(u_input.b, _wgslsmith_sub_vec3_u32(u_input.b, u_input.b)), ~(117688u << (u_input.b.x % 32u)), ~var_1.e), Struct_1(!var_1.c.a), var_1.a, var_1.c), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.x + var_1.b.x), _wgslsmith_f_op_f32(max(var_1.b.x, 444f))), _wgslsmith_f_op_f32(abs(-181f))))));
}

fn func_1() -> bool {
    var var_0 = func_2();
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.d.x)));
    let var_2 = 17791i;
    var var_3 = _wgslsmith_f_op_f32(-var_1);
    var var_4 = func_2().c.e;
    return _wgslsmith_f_op_f32(1218f - -1053f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))) * -182f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (true && func_1()) || false;
    var var_1 = firstTrailingBit(abs(~_wgslsmith_clamp_vec4_i32(vec4<i32>(-32717i, global0.x, global0.x, global0.x), vec4<i32>(11533i, u_input.a, u_input.a, 30008i), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, -26782i, u_input.a, -1i), vec4<i32>(0i, global0.x, global0.x, 1i)))));
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(global0.x, -3782i), -1i, 0i), var_1.zww), var_1.xwy);
    var_1 = -(~(-countOneBits(abs(vec4<i32>(var_1.x, -1i, var_1.x, var_2)))));
    let var_3 = Struct_3(true && (select(true, true, all(vec4<bool>(false, true, true, false))) != func_2().a.a), func_2().a.b, func_2().a.b, ~u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(u_input.b.x, 16u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1510f, -1431f, 1840f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -815f, 332f)))))));
}

