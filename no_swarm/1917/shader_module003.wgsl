struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23>;

var<private> global1: array<vec2<f32>, 15> = array<vec2<f32>, 15>(vec2<f32>(-200f, 461f), vec2<f32>(-669f, -253f), vec2<f32>(-184f, -464f), vec2<f32>(1337f, -933f), vec2<f32>(276f, -760f), vec2<f32>(-1114f, 411f), vec2<f32>(-1398f, 141f), vec2<f32>(658f, 355f), vec2<f32>(1000f, 1187f), vec2<f32>(-208f, 609f), vec2<f32>(-266f, -404f), vec2<f32>(-1400f, -785f), vec2<f32>(-1284f, -1832f), vec2<f32>(711f, 1000f), vec2<f32>(470f, 987f));

var<private> global2: vec2<bool>;

var<private> global3: array<Struct_2, 8>;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec3<i32> {
    let var_0 = vec2<u32>(u_input.c, reverseBits(firstLeadingBit(~abs(22323u))));
    let var_1 = Struct_3(true, global4.a.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.b.x, global4.a.b.x)), _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(var_0.x, 15u)]), global2.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.a.b.x, 626f) * global1[_wgslsmith_index_u32(var_0.x, 15u)]))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.a.b.ww)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global4.a.b.yz))), global1[_wgslsmith_index_u32(~firstTrailingBit(27293u), 15u)]), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(abs(var_0.x), 15u)])))), Struct_1(global4.a.a ^ vec4<i32>(1i, global4.b.x, _wgslsmith_clamp_i32(-1i, u_input.b, u_input.b), ~u_input.b), _wgslsmith_f_op_vec4_f32(-global4.a.b), vec2<i32>(~u_input.b, ~22217i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4.a.b.x))) > _wgslsmith_f_op_f32(round(114f))));
    global2 = vec2<bool>(any(vec4<bool>(true, global4.a.d, global4.a.d, true)) & true, select(true, global2.x, false));
    global4 = global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32((29923u & (u_input.c & 17315u)) & ~u_input.c, u_input.a), 8u)];
    global3 = array<Struct_2, 8>();
    return -((firstLeadingBit(vec3<i32>(global4.b.x, global4.a.a.x, 0i)) | global4.a.a.wzy) << (~vec3<u32>(_wgslsmith_mult_u32(0u, u_input.c), ~var_0.x, u_input.a) % vec3<u32>(32u)));
}

fn func_2() -> Struct_1 {
    var var_0 = ~u_input.c;
    global1 = array<vec2<f32>, 15>();
    let var_1 = 62938i;
    global3 = array<Struct_2, 8>();
    let var_2 = _wgslsmith_sub_vec3_i32(~func_3(), ~(~vec3<i32>(-34733i, global4.a.c.x, global4.b.x)) >> (firstLeadingBit(~max(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.c, u_input.c))) % vec3<u32>(32u)));
    return Struct_1(max(vec4<i32>(~abs(88481i), _wgslsmith_dot_vec3_i32(-var_2, var_2), func_3().x, abs(u_input.b)), -(vec4<i32>(u_input.b, u_input.b, -1i, -2147483647i) >> (reverseBits(vec4<u32>(u_input.c, 8685u, 21519u, u_input.a)) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global4.a.b.x)))), global4.a.b.x, 219f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4.a.b.x))))), firstTrailingBit(~(-var_2.xx)), global2.x);
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: Struct_2) -> i32 {
    var var_0 = func_2();
    var var_1 = vec4<f32>(global4.a.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.b.x, -370f)))))), -1274f, 1085f);
    var var_2 = firstLeadingBit(_wgslsmith_mult_vec2_i32(var_0.c, _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_3.b.x, global4.b.x), arg_3.a.a.xz) >> ((arg_0.ww >> (vec2<u32>(57026u, arg_0.x) % vec2<u32>(32u))) % vec2<u32>(32u)), arg_3.b)));
    var var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(11599i, firstTrailingBit(1i), 2147483647i), max(var_0.a.zxz | firstTrailingBit(min(vec3<i32>(-2147483647i, 35152i, var_2.x), var_0.a.zwz)), vec3<i32>(17118i, firstLeadingBit(~(-2147483647i)), global4.b.x)));
    global3 = array<Struct_2, 8>();
    return _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>((i32(-1i) * -15032i) >> (_wgslsmith_dot_vec2_u32(arg_0.xw, arg_0.zx) % 32u), -1i, _wgslsmith_div_i32(firstTrailingBit(arg_3.b.x), -4402i), _wgslsmith_mod_i32(i32(-1i) * -54868i, ~(-2147483647i))), vec4<i32>(-(i32(-1i) * -1i), var_2.x, 29964i, var_2.x)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i ^ _wgslsmith_sub_i32(arg_3.b.x, var_2.x), reverseBits(-1i)), var_2.x ^ ~6838i, var_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<i32>(~u_input.b, ~u_input.b, 0i, func_1(vec4<u32>(u_input.c, u_input.a, 4294967295u, u_input.c), global4.a.b, global4.a.b.zw, Struct_2(Struct_1(vec4<i32>(2147483647i, -2086i, 0i, 36749i), global4.a.b, global4.a.a.xx, false), global4.b)))) << ((reverseBits(reverseBits(vec4<u32>(u_input.a, u_input.c, u_input.a, 0u))) ^ ~abs(~vec4<u32>(u_input.a, 11028u, u_input.a, 72251u))) % vec4<u32>(32u));
    let var_1 = select(select(vec2<bool>(!global4.a.d, _wgslsmith_f_op_f32(1156f - global4.a.b.x) > -105f), !vec2<bool>(func_2().d, true), false), !select(vec2<bool>(any(vec2<bool>(false, false)), select(global4.a.d, false, global2.x)), select(vec2<bool>(global4.a.d, global4.a.d), select(vec2<bool>(global2.x, global4.a.d), vec2<bool>(false, true), global2.x), global2.x), select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, false), false)), select(vec2<bool>(!any(vec3<bool>(global4.a.d, global2.x, true)), global2.x), vec2<bool>(global2.x, !(global4.a.b.x < 262f)), true));
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(u_input.c, 0u, u_input.c)), ~u_input.c, ~countOneBits(62324u), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, 90142u), vec4<u32>(u_input.a, u_input.a, u_input.c, 4294967295u)))) << (_wgslsmith_sub_vec4_u32((vec4<u32>(13604u, u_input.a, u_input.a, 31640u) >> (vec4<u32>(u_input.a, u_input.c, 14948u, u_input.a) % vec4<u32>(32u))) ^ max(vec4<u32>(21613u, 9986u, 0u, u_input.a), vec4<u32>(1u, 12151u, 17281u, 0u)), min(vec4<u32>(15721u, 0u, 1u, u_input.c), vec4<u32>(u_input.c, u_input.a, u_input.c, u_input.a)) >> (firstLeadingBit(vec4<u32>(0u, 4294967295u, 67789u, u_input.a)) % vec4<u32>(32u))) % vec4<u32>(32u)), abs(_wgslsmith_sub_vec4_u32(~vec4<u32>(19728u, 0u, u_input.a, 14976u), ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.c, 1u), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.c))))), 8u)];
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(382f, global4.a.b.x, 2217f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(531f - _wgslsmith_f_op_f32(select(global4.a.b.x, global4.a.b.x, true)))), 1000f, _wgslsmith_f_op_f32(max(728f, _wgslsmith_f_op_f32(min(2608f, _wgslsmith_f_op_f32(-global4.a.b.x)))))));
    var var_4 = abs(~var_0.x);
    let var_5 = global4.a.d;
    let var_6 = global3[_wgslsmith_index_u32(abs(24468u), 8u)];
    let var_7 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_i32(vec2<i32>(~var_0.x, i32(-1i) * -1i) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 38340u), vec2<u32>(u_input.a, 78476u), vec2<u32>(42512u, 38875u)) % vec2<u32>(32u)), countOneBits(vec2<i32>(global4.a.a.x, func_3().x))), i32(-1i) * -1i, 197f, _wgslsmith_clamp_vec4_u32(vec4<u32>(30994u, _wgslsmith_clamp_u32(~u_input.a, 75949u >> (u_input.c % 32u), 15546u), u_input.a, ~firstTrailingBit(90344u)), vec4<u32>(1u, u_input.a, u_input.c, _wgslsmith_clamp_u32(~8508u, ~51161u, countOneBits(u_input.a))), _wgslsmith_clamp_vec4_u32(vec4<u32>(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.a), vec3<u32>(1u, 3337u, 4294967295u)), 1u, ~78411u), ~max(vec4<u32>(u_input.a, 4294967295u, u_input.c, u_input.a), vec4<u32>(54810u, 0u, u_input.a, u_input.c)), vec4<u32>(35542u, abs(4294967295u), ~26197u, 1u))));
}

