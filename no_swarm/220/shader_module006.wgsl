struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-580f, 356f);

var<private> global1: array<i32, 12> = array<i32, 12>(32867i, -1i, 1i, 9502i, 1i, -10218i, 23i, -19890i, 0i, -29738i, 1i, 1i);

var<private> global2: array<Struct_2, 27>;

var<private> global3: array<vec2<f32>, 11>;

var<private> global4: vec2<u32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    let var_0 = Struct_2(u_input.a.x, Struct_1(~abs(~u_input.b), global1[_wgslsmith_index_u32(0u, 12u)], abs(select(vec3<i32>(-1i, 1i, u_input.b), vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], global1[_wgslsmith_index_u32(global4.x, 12u)], global1[_wgslsmith_index_u32(41678u, 12u)]), false)) | vec3<i32>(min(-42717i, 3877i), countOneBits(1582i), firstLeadingBit(u_input.b))), Struct_1(global1[_wgslsmith_index_u32(4294967295u, 12u)], 38046i, _wgslsmith_add_vec3_i32(-(vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], 0i, 20260i) >> (u_input.a.xyw % vec3<u32>(32u))), ~countOneBits(vec3<i32>(-1i, -1i, u_input.b)))), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, u_input.b, global1[_wgslsmith_index_u32(5030u, 12u)]), _wgslsmith_div_vec3_i32(vec3<i32>(1i, global1[_wgslsmith_index_u32(global4.x, 12u)], u_input.b), vec3<i32>(u_input.b, u_input.b, global1[_wgslsmith_index_u32(global4.x, 12u)]))) | min(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 0u), 12u)], u_input.b), 0i, -_wgslsmith_mult_vec3_i32(abs(vec3<i32>(-7562i, u_input.b, 39667i)), max(vec3<i32>(2147483647i, u_input.b, 39088i), vec3<i32>(u_input.b, u_input.b, -24875i)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x));
    var var_2 = u_input.a.x;
    var var_3 = global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(0u, ~var_0.a), 27u)];
    let var_4 = var_3.c;
    return global4.x;
}

fn func_2() -> u32 {
    let var_0 = Struct_2(4294967295u, Struct_1(~abs(reverseBits(u_input.b)), -4929i, vec3<i32>(u_input.b, firstLeadingBit(~u_input.b), global1[_wgslsmith_index_u32(global4.x, 12u)])), Struct_1(_wgslsmith_mult_i32(-_wgslsmith_mod_i32(-1i, global1[_wgslsmith_index_u32(22274u, 12u)]), global1[_wgslsmith_index_u32(~u_input.a.x, 12u)]), -6548i, vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, u_input.a.x), 4294967295u, func_3()), 12u)], _wgslsmith_dot_vec3_i32(max(vec3<i32>(global1[_wgslsmith_index_u32(0u, 12u)], -3612i, global1[_wgslsmith_index_u32(global4.x, 12u)]), vec3<i32>(-6880i, -1i, 0i)), firstLeadingBit(vec3<i32>(88138i, -46349i, u_input.b))), -(-19905i & u_input.b))), Struct_1(i32(-1i) * -1i, 42932i, vec3<i32>(-global1[_wgslsmith_index_u32(u_input.a.x | 1u, 12u)], i32(-1i) * -u_input.b, _wgslsmith_add_i32(~(-43400i), u_input.b))));
    let var_1 = var_0.b;
    var var_2 = var_0.b;
    let var_3 = vec3<u32>(5729u, ~(_wgslsmith_mult_u32(global4.x << (5431u % 32u), 0u) >> (67301u % 32u)), ~_wgslsmith_mod_u32(reverseBits(select(0u, var_0.a, true)), ~(15938u & var_0.a)));
    global1 = array<i32, 12>();
    return u_input.a.x;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec2<f32>) -> vec4<u32> {
    var var_0 = arg_2;
    let var_1 = func_2();
    let var_2 = Struct_2(_wgslsmith_dot_vec3_u32(min(abs(~u_input.a.ywy), vec3<u32>(16282u << (0u % 32u), 19522u, ~u_input.a.x)), ~u_input.a.zwy), arg_0.d, arg_0.b, Struct_1(2147483647i, -u_input.b, min(min(countOneBits(vec3<i32>(arg_1.a, -2147483647i, global1[_wgslsmith_index_u32(global4.x, 12u)])), ~arg_1.c), ~firstLeadingBit(vec3<i32>(arg_0.c.b, 40801i, 3964i)))));
    var var_3 = u_input.a;
    global0 = vec2<f32>(-193f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_3.x * 894f), -949f, true)));
    return _wgslsmith_add_vec4_u32(~u_input.a, ~(vec4<u32>(u_input.a.x & 25134u, arg_0.a, 3628u, var_1 >> (global4.x % 32u)) & u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(global4.x, 12u)], _wgslsmith_mod_i32(max(~1i, -firstTrailingBit(-8397i)), _wgslsmith_mod_i32(-44309i, -5880i)), vec3<i32>(-1i) * -vec3<i32>(~41424i, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(10142u, global4.x), 12u)], ~11253i));
    let var_1 = Struct_1(_wgslsmith_add_i32(-30252i, -1i), _wgslsmith_dot_vec4_i32(~vec4<i32>(firstLeadingBit(35258i), ~var_0.c.x, _wgslsmith_div_i32(-32123i, u_input.b), var_0.a), vec4<i32>(_wgslsmith_clamp_i32(u_input.b, _wgslsmith_add_i32(-2147483647i, global1[_wgslsmith_index_u32(global4.x, 12u)]), 0i), reverseBits(-1i), -(~0i), global1[_wgslsmith_index_u32(57353u, 12u)])), var_0.c);
    let var_2 = ~global4.x;
    global4 = u_input.a.wy;
    var var_3 = Struct_2(abs(49209u), var_1, var_1, var_1);
    var var_4 = vec2<i32>(-1i, var_0.a);
    var var_5 = select(_wgslsmith_div_vec4_u32(firstLeadingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(3938u, 45523u, 34164u, var_2), func_1(Struct_2(var_2, var_3.d, var_1, var_1), var_3.b, vec4<bool>(false, false, true, false), global3[_wgslsmith_index_u32(64701u, 11u)]))), vec4<u32>(~abs(4372u), min(var_3.a, var_2), 0u, 24319u)), ~((_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 39491u, u_input.a.x, var_2), u_input.a) | u_input.a) >> (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2, u_input.a.x, 0u), vec4<u32>(35014u, 30500u, 26254u, global4.x)), global4.x, 0u, var_3.a) % vec4<u32>(32u))), vec4<bool>(true, select(any(vec2<bool>(true, true)) && true, false, false), true, -33358i >= _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b, var_0.b), 1i)));
    var var_6 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, min(~_wgslsmith_div_u32(4294967295u, u_input.a.x), ~var_5.x)), 4987u);
    let var_7 = var_0.c.xx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global3[_wgslsmith_index_u32(1u, 11u)], vec2<f32>(global0.x, global0.x), vec2<bool>(false, true))) + _wgslsmith_f_op_vec2_f32(trunc(global3[_wgslsmith_index_u32(var_5.x, 11u)]))), vec2<f32>(_wgslsmith_f_op_f32(trunc(global0.x)), global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-324f, global0.x, global0.x), vec3<f32>(-1000f, -429f, -160f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, -417f) * vec3<f32>(170f, global0.x, global0.x))))), var_5.zxy, _wgslsmith_f_op_vec2_f32(sign(global3[_wgslsmith_index_u32(var_5.x, 11u)])));
}

