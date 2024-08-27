struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
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

var<private> global0: i32;

var<private> global1: array<bool, 30>;

var<private> global2: array<f32, 7>;

var<private> global3: array<Struct_1, 3>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1289f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 7u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-335f, global2[_wgslsmith_index_u32(19205u, 7u)])))))));
    var var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~1u, 1u), ~max(vec2<u32>(61794u, 79081u), vec2<u32>(4294967295u, 4294967295u))), firstTrailingBit(~reverseBits(1u))), 3u)];
    var var_2 = ~12749u;
    var var_3 = Struct_1(min(-(var_1.a | _wgslsmith_sub_vec3_i32(var_1.a, u_input.b)), vec3<i32>(arg_0, -arg_1.x, -max(arg_1.x, arg_0))), var_1.b, select(select(_wgslsmith_div_vec4_u32(var_1.c, var_1.c), var_1.c, !(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 30u)], true, true, global1[_wgslsmith_index_u32(var_1.d, 30u)]))), firstTrailingBit(~vec4<u32>(8478u, var_1.c.x, 3163u, var_1.d)), select(vec4<bool>(true, global1[_wgslsmith_index_u32(~69224u, 30u)], global1[_wgslsmith_index_u32(~var_1.c.x, 30u)], true), !select(vec4<bool>(global1[_wgslsmith_index_u32(21540u, 30u)], global1[_wgslsmith_index_u32(61729u, 30u)], global1[_wgslsmith_index_u32(var_1.d, 30u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(var_1.c.x, 30u)], false, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], true, global1[_wgslsmith_index_u32(26933u, 30u)], global1[_wgslsmith_index_u32(1u, 30u)])), vec4<bool>(all(vec3<bool>(true, false, global1[_wgslsmith_index_u32(21364u, 30u)])), false, false, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_1.d, 1u), 30u)]))), abs(var_1.d));
    var var_4 = Struct_1(abs(vec3<i32>(arg_0, 1i, _wgslsmith_add_i32(arg_0, _wgslsmith_mult_i32(var_3.a.x, var_1.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -836f), ~_wgslsmith_sub_vec4_u32(vec4<u32>(~var_3.d, 22811u, _wgslsmith_dot_vec3_u32(var_1.c.yyy, vec3<u32>(var_1.c.x, var_3.c.x, 1u)), 14033u), firstTrailingBit(~vec4<u32>(4130u, 14779u, var_1.c.x, 0u))), var_3.d);
    return ~reverseBits(var_1.c.wz);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(min(_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(24421u, 0u), vec2<u32>(0u, 7436u)), vec2<u32>(8906u, 75577u)), min(vec2<u32>(29717u, 38225u), func_3(-14298i, vec2<i32>(-14615i, u_input.a)))), ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(76952u, 4294967295u), vec2<u32>(13231u, 0u)))), vec2<u32>(_wgslsmith_add_u32(1u, ~_wgslsmith_clamp_u32(39496u, 9883u, 84988u)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(49460u, 0u), vec2<u32>(1u, 1u)), ~firstTrailingBit(vec2<u32>(27683u, 31200u))))), 3u)];
    var var_1 = vec4<i32>(-1i) * -vec4<i32>(-1i, _wgslsmith_mod_i32(var_0.a.x, 106754i), var_0.a.x, _wgslsmith_mult_i32(4451i, -u_input.b.x));
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.c.x, var_0.d), 3u)];
    var_0 = Struct_1(_wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(_wgslsmith_dot_vec3_i32(var_1.yxy, vec3<i32>(var_2.a.x, var_1.x, var_1.x)), var_0.a.x & -23900i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(var_1.x, u_input.a))) & -(~vec3<i32>(var_1.x, -1i, var_1.x))), 2657f, firstLeadingBit(reverseBits(~_wgslsmith_add_vec4_u32(var_2.c, vec4<u32>(var_0.d, var_0.d, 69175u, 0u)))), 0u);
    global3 = array<Struct_1, 3>();
    return global3[_wgslsmith_index_u32(var_2.c.x, 3u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = vec4<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_0.a.x, arg_0.a.x, 0i, 14962i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 1i, arg_0.a.x, 10551i), vec4<i32>(0i, 30341i, 98020i, -21111i), vec4<i32>(49427i, u_input.a, 42633i, arg_1.a.x))), abs(max(2147483647i, arg_0.a.x))), -select(arg_0.a.x << (arg_0.c.x % 32u), arg_0.a.x ^ 25854i, true)), -6298i, (5473i >> (arg_0.c.x % 32u)) & -33941i, u_input.a);
    let var_1 = select(!vec4<bool>(global1[_wgslsmith_index_u32(4757u, 30u)], !(true == global1[_wgslsmith_index_u32(arg_1.d, 30u)]), false, -u_input.a >= (arg_0.a.x >> (arg_1.d % 32u))), vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.c.x, ~arg_1.c.x | ~arg_1.c.x), 30u)], false, true || (_wgslsmith_div_f32(arg_1.b, 1204f) == arg_1.b), true), !(!vec4<bool>(any(vec2<bool>(true, false)), true, false, arg_1.b <= global2[_wgslsmith_index_u32(arg_1.d, 7u)])));
    global2 = array<f32, 7>();
    let var_2 = Struct_1(abs(vec3<i32>(~arg_0.a.x, var_0.x, -arg_0.a.x)) & abs(vec3<i32>(_wgslsmith_sub_i32(arg_1.a.x, var_0.x), -u_input.b.x, -arg_0.a.x)), arg_0.b, arg_1.c, arg_0.c.x);
    let var_3 = countOneBits(1i);
    return any(vec3<bool>(select(all(var_1.zy), true, !global1[_wgslsmith_index_u32(var_2.c.x, 30u)]), global1[_wgslsmith_index_u32(47991u & (var_2.c.x & arg_0.d), 30u)], var_1.x)) | select(all(var_1), global1[_wgslsmith_index_u32(~(~func_3(var_2.a.x, var_2.a.xx).x), 30u)], false);
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec4<f32>) -> Struct_1 {
    global1 = array<bool, 30>();
    global1 = array<bool, 30>();
    var var_0 = func_2(select(select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)], true), vec4<bool>(true, arg_0.x, false, global1[_wgslsmith_index_u32(0u, 30u)]), vec4<bool>(false, true, true, true)), !vec4<bool>(true, true, false, arg_0.x), _wgslsmith_clamp_u32(15963u, 0u, 1u) < _wgslsmith_add_u32(1u, 76545u)), !select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 30u)], arg_0.x, global1[_wgslsmith_index_u32(4294967295u, 30u)], false), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], true, global1[_wgslsmith_index_u32(0u, 30u)], false), !vec4<bool>(true, arg_0.x, false, arg_0.x)), !select(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 30u)], arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, true, arg_0.x), select(vec4<bool>(arg_0.x, false, false, global1[_wgslsmith_index_u32(0u, 30u)]), vec4<bool>(global1[_wgslsmith_index_u32(64555u, 30u)], false, arg_0.x, arg_0.x), global1[_wgslsmith_index_u32(56380u, 30u)]))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_2.yx, arg_2.wx))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, 854f))))))));
    let var_1 = global3[_wgslsmith_index_u32(var_0.c.x, 3u)];
    global3 = array<Struct_1, 3>();
    return Struct_1(vec3<i32>(820i, _wgslsmith_mod_i32(var_1.a.x, -u_input.b.x), max(~(~var_1.a.x), u_input.b.x)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(29013u, 7u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b))) + arg_1.x)), (func_2(select(vec4<bool>(false, arg_0.x, global1[_wgslsmith_index_u32(var_0.d, 30u)], arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, global1[_wgslsmith_index_u32(78423u, 30u)]), true), arg_1.yz).c >> (_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(54274u, var_1.d, var_1.c.x, 1u), var_1.c), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.d, var_0.d, 38831u, 111345u), var_1.c)) % vec4<u32>(32u))) | ~vec4<u32>(firstLeadingBit(var_0.c.x), 0u, _wgslsmith_add_u32(4294967295u, var_1.c.x), var_0.c.x | 17648u), var_1.d);
}

fn func_1() -> vec2<bool> {
    global0 = 55828i;
    global2 = array<f32, 7>();
    global3 = array<Struct_1, 3>();
    var var_0 = func_5(select(select(select(vec3<bool>(true, true, true), !vec3<bool>(global1[_wgslsmith_index_u32(43655u, 30u)], global1[_wgslsmith_index_u32(15508u, 30u)], false), !global1[_wgslsmith_index_u32(0u, 30u)]), select(select(vec3<bool>(true, false, global1[_wgslsmith_index_u32(1u, 30u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)]), vec3<bool>(true, false, true)), !vec3<bool>(global1[_wgslsmith_index_u32(9585u, 30u)], true, global1[_wgslsmith_index_u32(4294967295u, 30u)]), !vec3<bool>(true, true, global1[_wgslsmith_index_u32(26867u, 30u)])), true), vec3<bool>(func_4(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(31211u, 105868u), 3u)], func_2(vec4<bool>(false, false, false, false), vec2<f32>(global2[_wgslsmith_index_u32(13156u, 7u)], global2[_wgslsmith_index_u32(37329u, 7u)]))), false, all(select(vec4<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 30u)], true, global1[_wgslsmith_index_u32(1u, 30u)]), vec4<bool>(true, true, global1[_wgslsmith_index_u32(5222u, 30u)], global1[_wgslsmith_index_u32(18855u, 30u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(4697u, 30u)], global1[_wgslsmith_index_u32(10782u, 30u)], false)))), !vec3<bool>(global1[_wgslsmith_index_u32(54064u, 30u)], true, all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 30u)], false)))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(784f + global2[_wgslsmith_index_u32(4294967295u, 7u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(917f - _wgslsmith_div_f32(global2[_wgslsmith_index_u32(102059u, 7u)], global2[_wgslsmith_index_u32(0u, 7u)])) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(84277u, 7u)])) * _wgslsmith_f_op_f32(max(541f, 252f)))), -345f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 7u)]) - global2[_wgslsmith_index_u32(1u, 7u)]), _wgslsmith_f_op_f32(floor(-1000f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(35452u, 7u)], 770f, 1488f, global2[_wgslsmith_index_u32(10896u, 7u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1201f, -892f, global2[_wgslsmith_index_u32(72859u, 7u)], 238f))))));
    var var_1 = vec4<i32>(-74923i, -u_input.b.x, var_0.a.x, _wgslsmith_div_i32(~_wgslsmith_mult_i32(-1802i, var_0.a.x) << (1u % 32u), 44541i));
    return vec2<bool>(true, true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 3>();
    let var_0 = all(!func_1());
    global1 = array<bool, 30>();
    let var_1 = global3[_wgslsmith_index_u32(104524u, 3u)];
    global0 = ~(firstTrailingBit(var_1.a.x) ^ abs(1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(abs(~func_5(vec3<bool>(false, true, true), vec4<f32>(var_1.b, global2[_wgslsmith_index_u32(0u, 7u)], -636f, var_1.b), vec4<f32>(global2[_wgslsmith_index_u32(var_1.d, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)], 1166f, -736f)).c), vec4<u32>(~1u, ~87367u, 1u, var_1.c.x)));
}

