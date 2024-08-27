struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9> = array<u32, 9>(57724u, 17128u, 0u, 7230u, 1u, 21999u, 217u, 0u, 39515u);

var<private> global1: Struct_3;

var<private> global2: array<f32, 22>;

var<private> global3: Struct_1;

var<private> global4: Struct_3;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> vec2<i32> {
    global1 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 22u)] + -713f)), _wgslsmith_f_op_f32(floor(-255f)))));
    let var_0 = global3.c;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1226f)) - _wgslsmith_f_op_f32(-global4.a.x)), _wgslsmith_f_op_f32(round(1060f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-119f * 1600f)) + _wgslsmith_f_op_f32(round(-182f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1092f, _wgslsmith_f_op_f32(f32(-1f) * -682f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -464f))), !all(global3.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-2234f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(-917f * -1618f))));
    let var_2 = select(min(_wgslsmith_mod_vec4_i32(select(-vec4<i32>(global3.c, global3.c, 0i, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, global3.c, global3.c), vec4<i32>(-41498i, 2147483647i, global3.c, 2147483647i)), !global3.a.x), vec4<i32>(global3.c, global3.c, global3.c, 4029i) | vec4<i32>(global3.c, -6153i, -12369i, -23526i)), countOneBits(vec4<i32>(_wgslsmith_div_i32(global3.c, global3.c), min(2147483647i, 25086i), -10927i, global3.c))), vec4<i32>(global3.c, 2147483647i, global3.c, -26184i), true);
    var var_3 = Struct_4(-_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(-28845i, 2147483647i, 70227i, -1i)), vec4<i32>(~(-2147483647i), abs(1i), _wgslsmith_add_i32(var_2.x, var_2.x), firstTrailingBit(global3.c)), var_2));
    return ~firstTrailingBit(var_2.yw);
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = abs(45654i);
    let var_1 = Struct_4(vec4<i32>(global3.c, firstTrailingBit(39842i), _wgslsmith_add_i32(min(global3.c, 1i), global3.c), global3.c));
    var var_2 = 43761i;
    var var_3 = global3.c & select(-75680i, reverseBits(global3.c), 772f > _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, global2[_wgslsmith_index_u32(1u, 22u)]))));
    var_3 = _wgslsmith_mult_i32(18858i | _wgslsmith_dot_vec2_i32(~countOneBits(var_1.a.ww), func_3()), -var_1.a.x);
    return 1i;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_3) -> vec4<i32> {
    let var_0 = countOneBits(13243i);
    global0 = array<u32, 9>();
    var var_1 = func_2(arg_1.a.x);
    global4 = arg_2;
    var var_2 = !(select(true | select(true, arg_1.a.x, global3.a.x), !(0u != global0[_wgslsmith_index_u32(4294967295u, 9u)]), any(global3.a.ww)) || all(vec3<bool>(all(vec2<bool>(true, global3.a.x)), global3.a.x, arg_1.a.x)));
    return abs(select(abs(vec4<i32>(arg_1.c << (arg_0.x % 32u), var_0 | -18180i, global3.c, firstLeadingBit(2741i))), _wgslsmith_mod_vec4_i32(vec4<i32>(global3.c, arg_1.c, var_0, 16633i), vec4<i32>(3531i, var_0, arg_1.c, global3.c)) << (_wgslsmith_mod_vec4_u32(arg_0, ~arg_0) % vec4<u32>(32u)), arg_1.a));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_4) -> Struct_2 {
    let var_0 = Struct_4(reverseBits(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mod_i32(arg_1.c, global3.c), ~(-50061i)), -2147483647i, _wgslsmith_mod_i32(16995i, arg_1.c), select(min(-2147483647i, 39309i), -49800i << (u_input.a.x % 32u), all(vec4<bool>(false, arg_1.a.x, true, true))))));
    var var_1 = arg_2;
    let var_2 = select(global0[_wgslsmith_index_u32((_wgslsmith_div_u32(u_input.a.x, countOneBits(4294967295u)) ^ _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(u_input.a.x, 9u)] << (37272u % 32u), u_input.a.x)) | u_input.a.x, 9u)], ~(~u_input.b.x), false);
    global0 = array<u32, 9>();
    let var_3 = Struct_4(vec4<i32>(_wgslsmith_sub_i32(func_3().x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(var_1.a.xyw, vec3<i32>(arg_1.c, -2147483647i, var_1.a.x), vec3<i32>(-26338i, 2147483647i, -12594i)), -var_0.a.yzz)), 24516i, 44571i, func_2(!global3.a.x)));
    return Struct_2(Struct_1(vec4<bool>(true, true, true, true), -1000f, 0i), !vec2<bool>(arg_1.a.x, all(global3.a)), Struct_1(select(arg_1.a, vec4<bool>(false, global3.a.x, all(vec2<bool>(false, arg_0.x)), arg_0.x || false), global3.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(21810u, 22u)] * 1000f) + arg_1.b)), countOneBits(-2147483647i)));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2) -> i32 {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(96034u, 22u)])) * _wgslsmith_div_f32(495f, -1000f)), arg_1.c.b, !all(global3.a)))), 2018f, -1636f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 22u)] - -706f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1010f - global3.b) - global1.a.x))));
    var var_1 = vec3<i32>(firstLeadingBit(max(func_3().x, _wgslsmith_mod_i32(2147483647i, arg_0.x))), ((firstTrailingBit(1i) ^ -1i) >> (_wgslsmith_dot_vec2_u32(u_input.a.zx | vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)], 20827u), u_input.b.xy) % 32u)) ^ ~(~func_4(vec4<bool>(arg_1.c.a.x, arg_1.b.x, global3.a.x, true), arg_1.a, Struct_4(vec4<i32>(global3.c, 1i, arg_0.x, 8658i))).c.c), 1i);
    let var_2 = ~(~vec4<u32>(~473u, 18255u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 42164u, 41330u, 0u), vec4<u32>(18240u, u_input.b.x, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], u_input.a.x) & vec4<u32>(49618u, 5802u, global0[_wgslsmith_index_u32(74594u, 9u)], u_input.b.x)), u_input.a.x));
    global1 = Struct_3(_wgslsmith_f_op_vec2_f32(-var_0.ww));
    global2 = array<f32, 22>();
    return arg_1.c.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_mod_vec2_i32(vec2<i32>(countOneBits(global3.c), 15912i), _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_div_i32(global3.c, global3.c), global3.c), _wgslsmith_mult_vec2_i32(-vec2<i32>(-25629i, global3.c), vec2<i32>(global3.c, global3.c)))), func_4(!vec4<bool>(true, !global3.a.x, global3.a.x, global3.a.x), Struct_1(vec4<bool>(true, global3.a.x, true, !global3.a.x), -110f, -2147483647i), Struct_4(func_1(vec4<u32>(48017u, global0[_wgslsmith_index_u32(1u, 9u)], u_input.b.x, u_input.a.x), Struct_1(global3.a, global1.a.x, global3.c), Struct_3(vec2<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 22u)], 112f))) | min(vec4<i32>(global3.c, -45036i, -1i, global3.c), vec4<i32>(global3.c, global3.c, global3.c, 2147483647i)))));
    var_0 = -2147483647i;
    global4 = Struct_3(_wgslsmith_f_op_vec2_f32(round(global1.a)));
    var var_1 = global1.a.x;
    var_1 = _wgslsmith_f_op_f32(381f * _wgslsmith_div_f32(1000f, 1076f));
    let var_2 = func_4(select(vec4<bool>(select(true, true, false), any(select(vec2<bool>(false, global3.a.x), global3.a.xy, false)), global3.a.x, !any(global3.a.xxy)), global3.a, !select(global3.a, vec4<bool>(global3.a.x, false, false, true), !global3.a)), Struct_1(vec4<bool>(false, all(!vec3<bool>(true, global3.a.x, global3.a.x)), true, global3.a.x), _wgslsmith_f_op_f32(1194f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a.x)))), -40021i), Struct_4(abs(vec4<i32>(2147483647i, -global3.c, global3.c, ~global3.c)))).c;
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(global4.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.a * global1.a)), true)))));
    var var_4 = _wgslsmith_f_op_f32(step(-741f, _wgslsmith_f_op_f32(trunc(var_3.a.x))));
    global2 = array<f32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(0u | global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(94318u, 9u)], 10074u, global0[_wgslsmith_index_u32(445u, 9u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)]), vec4<u32>(98631u, 42934u, 4294967295u, u_input.a.x), vec4<u32>(49483u, 7219u, global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(14565u, 9u)])), vec4<u32>(u_input.b.x, countOneBits(u_input.a.x), 1u, abs(u_input.b.x))), 9u)], 0u, vec2<u32>(_wgslsmith_mod_u32(u_input.b.x, ~global0[_wgslsmith_index_u32(19247u, 9u)] ^ ~u_input.b.x), 0u), _wgslsmith_add_vec4_u32(firstLeadingBit(reverseBits(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], 46811u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 9u)], 9u)]))), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b.x ^ 0u, 9u)], global0[_wgslsmith_index_u32(~min(0u, 49333u), 9u)], ~u_input.a.x, _wgslsmith_mod_u32(u_input.b.x, 4294967295u))));
}

