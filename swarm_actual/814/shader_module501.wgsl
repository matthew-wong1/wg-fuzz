struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 7103u, 0u, 41774u);

var<private> global1: array<u32, 29>;

var<private> global2: u32 = 26160u;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -766f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(987f * -1000f), -938f, false)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 3695f))) - 231f))));
    let var_1 = (_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(u_input.c), ~u_input.b, ~0i, max(-8033i, -2147483647i)), abs(vec4<i32>(-9575i, u_input.b, 0i, -2147483647i))) & ~(-6911i)) ^ countOneBits(u_input.c);
    global1 = array<u32, 29>();
    global0 = max(vec4<u32>(select(~u_input.a, global1[_wgslsmith_index_u32(abs(28947u), 29u)] & u_input.a, !any(vec2<bool>(true, arg_1.x))), (71067u | u_input.a) ^ _wgslsmith_div_u32(global0.x, ~20763u), _wgslsmith_mult_u32(~_wgslsmith_div_u32(global0.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(63615u, 29u)], 29u)]), ~_wgslsmith_dot_vec4_u32(vec4<u32>(53322u, 51284u, 40397u, 0u), vec4<u32>(1u, 8444u, u_input.a, arg_0.a.x))), (global0.x & max(0u, 46753u)) | _wgslsmith_div_u32(45237u, global1[_wgslsmith_index_u32(u_input.a, 29u)] << (13241u % 32u))), select(select(~(vec4<u32>(u_input.a, 29123u, 1u, 44762u) & vec4<u32>(1u, global1[_wgslsmith_index_u32(12772u, 29u)], u_input.a, 1u)), ~vec4<u32>(57842u, global1[_wgslsmith_index_u32(arg_0.a.x, 29u)], global1[_wgslsmith_index_u32(76675u, 29u)], 1u) >> (~vec4<u32>(u_input.a, 52461u, 44514u, 0u) % vec4<u32>(32u)), all(vec3<bool>(arg_0.b, arg_0.b, arg_0.b))), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a, 85790u, 0u, global1[_wgslsmith_index_u32(4294967295u, 29u)]), _wgslsmith_div_vec4_u32(vec4<u32>(58582u, global1[_wgslsmith_index_u32(global0.x, 29u)], arg_0.a.x, 4294967295u), vec4<u32>(4294967295u, 10854u, 51754u, global1[_wgslsmith_index_u32(u_input.a, 29u)]))), vec4<u32>(~u_input.a, global0.x, ~global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1296u, 20617u, u_input.a), arg_0.a))), !any(vec3<bool>(arg_1.x, true, true))));
    global2 = _wgslsmith_dot_vec2_u32(firstTrailingBit(global0.xx), vec2<u32>(4294967295u, ~u_input.a));
    return !any(vec4<bool>(all(select(vec2<bool>(true, arg_0.b), arg_1, vec2<bool>(arg_0.b, arg_0.b))), true, select(0u == global1[_wgslsmith_index_u32(3298u, 29u)], true, select(true, arg_0.b, arg_1.x)), !(!arg_1.x)));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = global1[_wgslsmith_index_u32(~reverseBits(~(~_wgslsmith_div_u32(57543u, u_input.a))), 29u)];
    var var_1 = select(all(!vec2<bool>(all(vec2<bool>(false, true)), func_3(Struct_1(global0.wyy, true), vec2<bool>(true, false)))), true, true);
    let var_2 = _wgslsmith_add_u32(~37379u, 1001u);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0))))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_div_f32(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 960f)))));
    let var_4 = ~_wgslsmith_clamp_i32(~u_input.c, abs(u_input.c >> (~1u % 32u)), u_input.c);
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x))))), countOneBits(u_input.a) | 7129u);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_4 {
    var var_0 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1249f) + _wgslsmith_f_op_f32(598f + -1000f)), arg_1.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-312f, arg_1.a)))))))));
    let var_1 = (~firstTrailingBit(~vec3<i32>(-22247i, 2147483647i, arg_0.x)) & vec3<i32>(_wgslsmith_div_i32(u_input.b, _wgslsmith_mod_i32(arg_0.x, -63943i)), -22081i, _wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(u_input.b, 1i)))) ^ ~(~vec3<i32>(-2147483647i, max(u_input.c, arg_0.x), firstTrailingBit(-1i)));
    let var_2 = false;
    var var_3 = Struct_4(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-725f, arg_1.a) * _wgslsmith_f_op_f32(-arg_1.a)) - -1971f)), var_2 && var_2);
    let var_4 = vec4<bool>(true, false, any(!select(!vec2<bool>(true, var_2), vec2<bool>(var_3.c, true), !vec2<bool>(true, var_3.c))), !all(vec4<bool>(var_2, arg_2.a.x < 0u, false, var_2)));
    return Struct_4(arg_1, var_0.a, var_1.x >= _wgslsmith_add_i32(-u_input.b, ~13081i));
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = func_4(abs(vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, u_input.b), vec2<i32>(u_input.b, u_input.c))), func_2(-286f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.x, arg_0.x), arg_0)))), Struct_1(~vec3<u32>(min(global1[_wgslsmith_index_u32(global0.x, 29u)], 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, global1[_wgslsmith_index_u32(1u, 29u)], global1[_wgslsmith_index_u32(68090u, 29u)], 1u), vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.a)), ~4294967295u), !func_3(Struct_1(vec3<u32>(u_input.a, global0.x, global1[_wgslsmith_index_u32(global0.x, 29u)]), false), vec2<bool>(true, false))));
    return Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(340f)) * -109f), var_0.a.a)), var_0.a.b);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32, arg_3: Struct_4) -> vec3<u32> {
    global1 = array<u32, 29>();
    global0 = ~(~(select(vec4<u32>(global1[_wgslsmith_index_u32(27628u, 29u)], 4294967295u, 21519u, 0u), vec4<u32>(13536u, 1u, arg_2, 6554u) >> (vec4<u32>(105781u, arg_2, 4556u, u_input.a) % vec4<u32>(32u)), vec4<bool>(arg_3.c, arg_3.c, true, true)) >> (abs(vec4<u32>(arg_0.b, 24607u, 4294967295u, u_input.a)) % vec4<u32>(32u))));
    var var_0 = Struct_1(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, _wgslsmith_div_u32(4294967295u, arg_3.a.b), ~51808u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], u_input.a, arg_3.a.b), global0.xxx) << (abs(global0.yyy) % vec3<u32>(32u))), true);
    var var_1 = func_2(1013f, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(floor(-828f)), arg_3.b))));
    var var_2 = 14442u;
    return ~vec3<u32>(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(33335u, 4294967295u), vec2<u32>(0u, 4294967295u)), 4294967295u), ~func_2(-945f, vec2<f32>(var_1.a, -758f)).b << (~reverseBits(42905u) % 32u), ~(_wgslsmith_div_u32(var_0.a.x, arg_1.b.x) & ~45849u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec3_u32(func_5(func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-709f, -1092f)))), Struct_2(vec2<i32>(2147483647i, -u_input.c), min(global0.yy, vec2<u32>(global0.x, 3066u))), global1[_wgslsmith_index_u32(firstTrailingBit(~(4294967295u >> (global0.x % 32u))), 29u)], func_4(vec2<i32>(u_input.c, max(1i, u_input.b)), Struct_3(_wgslsmith_f_op_f32(min(881f, 1000f)), 4294967295u), Struct_1(global0.yyy, true))), max(~global0.zwx, _wgslsmith_mult_vec3_u32(global0.wxz, global0.xxy)) | ~select(global0.zyx, ~global0.yyw, select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false)));
    global2 = var_0.x;
    let var_1 = -(-(~firstTrailingBit(vec3<i32>(u_input.c, 20977i, -3337i))) << (vec3<u32>(abs(1u), ~(~4294967295u), ~global0.x) % vec3<u32>(32u)));
    var var_2 = max(u_input.b, -1i);
    var var_3 = all(!vec2<bool>(true, !all(vec3<bool>(true, false, true))));
    var var_4 = vec3<u32>(1u, 24702u, _wgslsmith_div_u32(global0.x, ~abs(global0.x)));
    var var_5 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-14483i, max(var_1.x, var_1.x), -var_1.x) << (var_4.x % 32u), 1i, abs(~abs(30953i)), ~(-3310i)), vec4<i32>((u_input.b ^ -18166i) & ~(~2147483647i), -5223i, max(var_1.x, _wgslsmith_mult_i32(var_1.x, u_input.c)) | (max(u_input.c, 9795i) | (var_1.x << (28247u % 32u))), var_1.x));
    var var_6 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -2367f))), _wgslsmith_f_op_f32(-func_4(var_1.yy, Struct_3(327f, var_4.x), Struct_1(vec3<u32>(1910u, global0.x, 34505u), false)).b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -547f) + _wgslsmith_f_op_f32(697f * 1625f)) + 1227f), -1805f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + 2244f));
    global2 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(~var_4.zy, ~vec2<u32>(4294967295u, 36654u)), ~1u, _wgslsmith_dot_vec2_u32(max(vec2<u32>(32734u, 4294967295u), var_4.yz), ~vec2<u32>(u_input.a, 1u))), vec3<u32>(~global1[_wgslsmith_index_u32(countOneBits(u_input.a), 29u)], 4294967295u, 0u)), _wgslsmith_add_u32(var_4.x, ~_wgslsmith_mult_u32(1u, 1u)), countOneBits(global1[_wgslsmith_index_u32(~(~4294967295u), 29u)]));
}

