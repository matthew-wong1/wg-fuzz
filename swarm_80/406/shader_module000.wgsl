struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<i32, 22> = array<i32, 22>(-27432i, 943i, 27488i, i32(-2147483648), 41782i, 2147483647i, -1i, 2147483647i, -6835i, 0i, 4368i, 0i, 9805i, 7747i, -1i, -5971i, -24424i, 0i, -12540i, i32(-2147483648), 15367i, 2760i);

var<private> global2: f32 = 1000f;

var<private> global3: array<Struct_1, 19>;

var<private> global4: array<f32, 23> = array<f32, 23>(133f, 754f, -2137f, 618f, -1280f, 2415f, 547f, 471f, -277f, -823f, -409f, 150f, 1729f, 931f, 461f, -791f, -221f, 716f, -1193f, 1000f, 181f, 302f, -943f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec2<bool>) -> vec2<u32> {
    let var_0 = reverseBits(-5944i);
    var var_1 = arg_2.b.a;
    let var_2 = ~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 4294967295u, 63918u), vec3<u32>(1u, 1u, 1u)) ^ 1u, 1u), 22u)];
    global0 = true;
    global1 = array<i32, 22>();
    return vec2<u32>(~_wgslsmith_add_u32(_wgslsmith_add_u32(~109581u, ~4294967295u), ~reverseBits(4294967295u)), firstTrailingBit(abs(~_wgslsmith_mult_u32(16749u, 0u))));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_sub_vec2_u32(~func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(33143u, 23u)], -890f, 215f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(1u, 23u)], 642f, global4[_wgslsmith_index_u32(4294967295u, 23u)], 395f)), Struct_2(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(47497u, 23u)]), global3[_wgslsmith_index_u32(~4294967295u, 19u)], select(vec4<i32>(2147483647i, -1i, global1[_wgslsmith_index_u32(57677u, 22u)], 48456i), vec4<i32>(global1[_wgslsmith_index_u32(51961u, 22u)], global1[_wgslsmith_index_u32(42763u, 22u)], 2147483647i, global1[_wgslsmith_index_u32(4294967295u, 22u)]), vec4<bool>(false, true, false, true)), all(vec2<bool>(true, false))), vec2<bool>(true, true)), vec2<u32>(1u, 1u));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(var_0.x, 23u)] * -420f), Struct_1(_wgslsmith_mod_i32(u_input.b, -(global1[_wgslsmith_index_u32(4294967295u, 22u)] & 1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1416f, -296f, 713f) * vec3<f32>(1000f, 1214f, 1612f)), vec3<f32>(1000f, -907f, global4[_wgslsmith_index_u32(var_0.x, 23u)]), true)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4[_wgslsmith_index_u32(var_0.x, 23u)], global4[_wgslsmith_index_u32(var_0.x, 23u)], 464f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(var_0.x, 23u)], -1032f, global4[_wgslsmith_index_u32(1u, 23u)]) + vec3<f32>(global4[_wgslsmith_index_u32(var_0.x, 23u)], -606f, -755f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(1u >> (var_0.x % 32u), 23u)])), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(22741u, 23u)], -1449f, global4[_wgslsmith_index_u32(var_0.x, 23u)], 667f)) * _wgslsmith_div_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(4294967295u, 23u)], global4[_wgslsmith_index_u32(var_0.x, 23u)], global4[_wgslsmith_index_u32(var_0.x, 23u)], global4[_wgslsmith_index_u32(var_0.x, 23u)]), vec4<f32>(global4[_wgslsmith_index_u32(1u, 23u)], -1023f, 1000f, global4[_wgslsmith_index_u32(4294967295u, 23u)]))))), ~max(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_0.x, 22u)], 0i, global1[_wgslsmith_index_u32(44344u, 22u)], global1[_wgslsmith_index_u32(var_0.x, 22u)]), vec4<i32>(31042i, global1[_wgslsmith_index_u32(var_0.x, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(var_0.x, 22u)]))), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(120358u, 22u)], global1[_wgslsmith_index_u32(var_0.x, 22u)], u_input.b, 0i), vec4<i32>(-2147483647i, u_input.a, global1[_wgslsmith_index_u32(1u, 22u)], global1[_wgslsmith_index_u32(var_0.x, 22u)])), vec4<i32>(69150i, global1[_wgslsmith_index_u32(var_0.x, 22u)], -1232i, u_input.b) >> (vec4<u32>(var_0.x, var_0.x, 47623u, 59584u) % vec4<u32>(32u)))), any(vec2<bool>(true | all(vec2<bool>(false, true)), all(vec3<bool>(true, true, true)))));
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(max((var_0.x ^ firstLeadingBit(1u)) << (~(~4294967295u) % 32u), countOneBits(var_0.x)), _wgslsmith_dot_vec4_u32(~(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.x, 6694u, var_0.x, 59278u), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x))), max(vec4<u32>(_wgslsmith_div_u32(var_0.x, 27953u), ~106u, 1u, ~var_0.x), max(min(vec4<u32>(22952u, 27804u, 10747u, 7582u), vec4<u32>(55072u, 0u, 6877u, var_0.x)), abs(vec4<u32>(1u, var_0.x, 1u, 0u)))))), 23u)];
    var var_3 = var_1.b;
    var var_4 = ~vec3<i32>(_wgslsmith_sub_i32(var_1.b.a, -var_3.a), 4405i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(var_0.x, 22u)], var_3.a, u_input.a), vec4<i32>(global1[_wgslsmith_index_u32(var_0.x, 22u)], -1i, var_1.c.x, u_input.b)), ~vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 22u)], global1[_wgslsmith_index_u32(var_0.x, 22u)], var_3.a, 18827i))) ^ -(~_wgslsmith_mod_vec3_i32(var_1.c.zzx, ~vec3<i32>(1i, 1i, var_1.b.a)));
    return -(abs(_wgslsmith_mod_i32(-1i, var_3.a) | var_3.a) | min(reverseBits(_wgslsmith_div_i32(-1i, -2147483647i)), -select(-2147483647i, 4838i, false)));
}

fn func_1() -> Struct_3 {
    let var_0 = func_2();
    var var_1 = all(select(select(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, false, true)), false)), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true))));
    var var_2 = true;
    let var_3 = -(~(vec2<i32>(global1[_wgslsmith_index_u32(~4294967295u, 22u)], 1i) >> (~max(vec2<u32>(10085u, 91240u), vec2<u32>(1u, 1u)) % vec2<u32>(32u))));
    var_1 = false;
    return Struct_3(-423f, Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -237f) * global4[_wgslsmith_index_u32(abs(44893u), 23u)]), -1079f)), Struct_1(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(0u, 22u)], 23040i, 1i), vec3<i32>(0i, var_0, -32705i)), -var_3.x), vec3<f32>(global4[_wgslsmith_index_u32(4294967295u, 23u)], _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4294967295u, 23u)] * -898f), -886f), _wgslsmith_f_op_f32(-406f - _wgslsmith_f_op_f32(sign(1422f))), any(vec3<bool>(true, false, true)), vec4<f32>(global4[_wgslsmith_index_u32(~4294967295u, 23u)], global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 0u, 0u), 23u)], _wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(12260u, 23u)], global4[_wgslsmith_index_u32(0u, 23u)])), _wgslsmith_f_op_f32(min(1211f, global4[_wgslsmith_index_u32(0u, 23u)])))), min(vec4<i32>(abs(0i), abs(-35046i), global1[_wgslsmith_index_u32(33399u, 22u)] | -1i, min(u_input.a, 1i)), _wgslsmith_div_vec4_i32(abs(vec4<i32>(u_input.b, global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(1u, 22u)], -2147483647i)), ~vec4<i32>(-54737i, var_3.x, 20093i, global1[_wgslsmith_index_u32(88130u, 22u)]))), all(vec2<bool>(true, true))), ~_wgslsmith_mod_vec4_i32(vec4<i32>(i32(-1i) * -1i, ~u_input.b, u_input.b << (4294967295u % 32u), -global1[_wgslsmith_index_u32(3531u, 22u)]), ~vec4<i32>(0i, var_3.x, -2147483647i, var_3.x) >> (select(vec4<u32>(31097u, 4294967295u, 13164u, 42806u), vec4<u32>(4294967295u, 1u, 13984u, 37595u), vec4<bool>(true, false, false, true)) % vec4<u32>(32u))), vec3<bool>(false, any(vec3<bool>(true, true, true)), global4[_wgslsmith_index_u32(1u, 23u)] == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-2119f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    global3 = array<Struct_1, 19>();
    let var_1 = func_1();
    var var_2 = ~(~(~select(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(0u, 4294967295u, 0u), var_1.d.x) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(9092u, 18923u, 0u), vec3<u32>(1u, 24267u, 10421u), vec3<u32>(43277u, 4294967295u, 78643u)) % vec3<u32>(32u))));
    let var_3 = any(!vec4<bool>(func_1().b.b.d, !all(vec4<bool>(true, true, var_1.d.x, true)), var_1.b.d, !var_1.d.x & (var_1.b.b.d | var_1.d.x)));
    var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_2.x, 0u, 0u, var_2.x)), vec4<u32>(var_2.x, 12835u, var_2.x, 0u) >> (vec4<u32>(18020u, var_2.x, 4294967295u, var_2.x) % vec4<u32>(32u))), var_2.x), vec3<u32>(20389u, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(var_2.x, 1u, var_2.x, 4294967295u)) >> (vec4<u32>(var_2.x, 1u, 1u, 4294967295u) % vec4<u32>(32u)), select(vec4<u32>(19491u, 1u, 0u, 4294967295u) ^ vec4<u32>(53582u, 28492u, 48817u, var_2.x), firstLeadingBit(vec4<u32>(0u, 60732u, 4294967295u, var_2.x)), !var_3)), ~37885u));
    global1 = array<i32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(countOneBits(1i)) & global1[_wgslsmith_index_u32(func_3(var_1.b.b.e.xzw, vec4<f32>(global4[_wgslsmith_index_u32(firstTrailingBit(var_2.x), 23u)], var_1.a, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(11250u, 23u)]), _wgslsmith_f_op_f32(var_1.b.a * var_1.a)), var_1.b, select(!vec2<bool>(var_1.b.b.d, var_3), select(vec2<bool>(var_3, false), var_1.d.zz, true), select(var_1.d.xz, var_1.d.zx, true))).x, 22u)], abs(vec3<u32>(var_2.x >> (1u % 32u), 19604u, ~(~var_2.x))), ~(~(~_wgslsmith_add_u32(95114u, 1604u))), var_1.b.b.e.wyy);
}

