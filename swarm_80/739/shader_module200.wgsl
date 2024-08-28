struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec4<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<Struct_1, 28>;

var<private> global2: Struct_4 = Struct_4(vec2<i32>(i32(-2147483648), 37323i), vec2<u32>(58210u, 1u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32, arg_2: bool) -> vec2<i32> {
    global0 = abs(u_input.b.x & _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.b.x, 1i) >> (abs(u_input.c) % 32u), arg_1, ~u_input.b.x));
    var var_0 = Struct_1(!(!(!(!vec2<bool>(true, arg_2)))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(825f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -143f)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1000f * arg_0.x)))), arg_0.x));
    global0 = -arg_1;
    var var_1 = !select(vec3<bool>(arg_2, _wgslsmith_dot_vec3_u32(vec3<u32>(65395u, 83048u, global2.b.x), vec3<u32>(u_input.c, global2.b.x, 0u)) <= 4294967295u, any(vec2<bool>(true, false))), vec3<bool>(var_0.a.x, var_0.a.x, !(arg_0.x == -497f)), !select(!vec3<bool>(var_0.a.x, true, arg_2), select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, true, false), var_0.a.x), select(vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, false, var_0.a.x), vec3<bool>(true, var_0.a.x, true))));
    var_1 = vec3<bool>(!select(any(vec4<bool>(true, true, true, arg_2)), var_0.a.x, select(var_1.x, arg_2, arg_2)) & (true & var_0.a.x), var_0.a.x, true);
    return -(abs(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_1, 0i), global2.a) >> (~global2.b % vec2<u32>(32u))) << (countOneBits(_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, global2.b.x), vec2<u32>(35233u, 5999u)), reverseBits(vec2<u32>(global2.b.x, u_input.c)))) % vec2<u32>(32u)));
}

fn func_2() -> Struct_1 {
    global0 = firstTrailingBit(-_wgslsmith_sub_i32(u_input.b.x, -1i));
    let var_0 = -_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(func_3(vec3<f32>(1393f, 606f, -2046f), u_input.b.x, true), -vec2<i32>(global2.a.x, 21153i), vec2<i32>(1i, 1i)), vec2<i32>(-2147483647i, global2.a.x) << ((global2.b & vec2<u32>(4294967295u, 21185u)) % vec2<u32>(32u))), u_input.b.zx);
    global0 = 12294i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1106f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-2448f)))))));
    return Struct_1(select(vec2<bool>(any(vec3<bool>(true, true, true)), false), select(vec2<bool>(false, true), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), false), vec2<bool>(true, true)), select(vec2<bool>(true, any(vec4<bool>(true, true, true, false))), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2273f, var_1, -642f)))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_4) -> vec4<i32> {
    var var_0 = false;
    var var_1 = 22203u;
    let var_2 = Struct_3(vec2<f32>(-3275f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b.x) - _wgslsmith_f_op_f32(abs(arg_0.b.x)))), func_2(), arg_0, _wgslsmith_f_op_f32(-1236f * _wgslsmith_f_op_f32(arg_0.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1258f)) + 966f))), ~firstTrailingBit(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, 43947i, global2.a.x, -2147483647i), vec4<i32>(arg_3.a.x, 0i, -11237i, global2.a.x), vec4<i32>(0i, u_input.b.x, 89914i, -51461i)))));
    let var_3 = Struct_3(var_2.b.b.yz, arg_0, func_2(), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(var_2.b.b.x)))), -(_wgslsmith_clamp_vec4_i32(select(vec4<i32>(u_input.b.x, u_input.b.x, global2.a.x, -15676i), vec4<i32>(arg_3.a.x, var_2.e.x, u_input.b.x, var_2.e.x), vec4<bool>(var_2.b.a.x, true, false, true)), -var_2.e, var_2.e) << (_wgslsmith_mod_vec4_u32(firstTrailingBit(vec4<u32>(21765u, arg_3.b.x, u_input.a, global2.b.x)), vec4<u32>(30347u, 41166u, 0u, global2.b.x) | vec4<u32>(0u, global2.b.x, global2.b.x, u_input.c)) % vec4<u32>(32u))));
    let var_4 = func_2().b.x;
    return ~reverseBits(var_2.e);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec4<i32>, arg_3: vec4<bool>) -> Struct_4 {
    var var_0 = Struct_2(Struct_1(arg_3.zz, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1419f, 921f, -1246f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(641f)), -349f, _wgslsmith_f_op_f32(f32(-1f) * -374f)), select(vec3<bool>(false, true, false), select(vec3<bool>(true, arg_3.x, true), arg_3.yzz, arg_3.x), true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-580f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1096f - -1086f)))), Struct_1(!arg_3.yy, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(489f, 1887f, 811f))))))));
    global0 = u_input.b.x;
    let var_1 = -150f > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-func_2().b.x), -1267f, any(vec2<bool>(func_2().a.x, any(arg_3.zww)))));
    var var_2 = Struct_2(var_0.c, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a.b.yz - _wgslsmith_f_op_vec2_f32(ceil(var_0.b)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x), 642f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(118f, var_0.a.b.x)) - vec2<f32>(var_0.c.b.x, 274f))))), func_2());
    let var_3 = vec4<i32>(_wgslsmith_mod_i32(max(_wgslsmith_dot_vec4_i32(~arg_2, _wgslsmith_add_vec4_i32(vec4<i32>(-1529i, u_input.b.x, u_input.b.x, 23960i), vec4<i32>(global2.a.x, 1i, arg_0, arg_2.x))), u_input.b.x), ~arg_0), reverseBits(_wgslsmith_dot_vec4_i32(arg_2, arg_2 << (vec4<u32>(19480u, global2.b.x, 4294967295u, u_input.a) % vec4<u32>(32u)))), u_input.b.x, -1i);
    return Struct_4(var_3.yz, ~global2.b << (vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 30750u), vec2<u32>(0u, global2.b.x)), _wgslsmith_mult_vec2_u32(global2.b, global2.b)), _wgslsmith_div_u32(u_input.a, ~global2.b.x)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1473f - -1308f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-284f)) * -1330f)) - 111f));
    var var_1 = func_4(6877i ^ u_input.b.x, true, _wgslsmith_mod_vec4_i32(vec4<i32>(global2.a.x, -(~global2.a.x), -20283i ^ global2.a.x, reverseBits(1i)), -_wgslsmith_clamp_vec4_i32(func_1(global1[_wgslsmith_index_u32(global2.b.x, 28u)], vec4<bool>(false, false, false, true), true, Struct_4(global2.a, global2.b)), vec4<i32>(8415i, global2.a.x, u_input.b.x, 1i), -vec4<i32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x))), vec4<bool>(any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true))), ~abs(31170u) > abs(~u_input.a), false, !any(vec3<bool>(true, true, true))));
    global2 = func_4(-(~max(~12858i, ~30447i)), true, ~(~(-(vec4<i32>(-1i, u_input.b.x, u_input.b.x, u_input.b.x) & vec4<i32>(u_input.b.x, 1i, -28019i, 1i)))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, !(u_input.c != 4294967295u), false, false), true));
    let var_2 = 1136f;
    var var_3 = Struct_2(func_2(), _wgslsmith_div_vec2_f32(vec2<f32>(330f, _wgslsmith_f_op_f32(select(284f, _wgslsmith_f_op_f32(ceil(var_2)), true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, -190f))), vec2<f32>(-153f, -1254f))), vec2<f32>(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(step(var_0, var_0))))), Struct_1(vec2<bool>(true, any(vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1997f), var_2, _wgslsmith_f_op_f32(ceil(var_2))))));
    var var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-144f, -1224f))))), func_2(), func_2(), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-695f + var_0) + 859f)), -1530f, !all(select(vec2<bool>(var_3.a.a.x, false), vec2<bool>(var_3.a.a.x, var_3.a.a.x), vec2<bool>(var_3.c.a.x, var_3.c.a.x))))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, i32(-1i) * -67035i, u_input.b.x, i32(-1i) * -1i), -_wgslsmith_sub_vec4_i32(vec4<i32>(global2.a.x, -2595i, -4746i, 2147483647i), vec4<i32>(2147483647i, global2.a.x, 0i, 17844i))) | _wgslsmith_div_vec4_i32(vec4<i32>(var_1.a.x, 0i, _wgslsmith_mod_i32(global2.a.x, -13862i), u_input.b.x ^ 2147483647i), _wgslsmith_mult_vec4_i32(~vec4<i32>(-2147483647i, 15098i, -707i, 38627i), _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -12779i, global2.a.x, 14994i), vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x)))));
    let var_5 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-761f, var_4.a.x))) + vec2<f32>(var_2, -1489f)))), func_2(), var_4.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0))), min(var_4.e, _wgslsmith_sub_vec4_i32(~(~var_4.e), -_wgslsmith_div_vec4_i32(var_4.e, vec4<i32>(-1i, -45724i, var_1.a.x, var_4.e.x)))));
    var var_6 = func_2();
    var var_7 = false;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(var_4.c, !vec4<bool>(true, false, true, var_4.b.a.x), select(!var_5.c.a.x, var_5.c.a.x, any(vec3<bool>(true, false, var_6.a.x)) | var_4.b.a.x), Struct_4(~vec2<i32>(global2.a.x, var_5.e.x), global2.b)).xw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - _wgslsmith_f_op_f32(556f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(213f, 102f, var_4.c.a.x))))), reverseBits(abs(vec3<u32>(var_1.b.x, 25784u, u_input.a) ^ vec3<u32>(var_1.b.x, 1u, var_1.b.x))) >> (~reverseBits(vec3<u32>(var_1.b.x, var_1.b.x, global2.b.x)) % vec3<u32>(32u)), select(~vec4<u32>(var_1.b.x, u_input.c, select(1u, 23188u, var_3.a.a.x), global2.b.x), vec4<u32>(~global2.b.x, global2.b.x, abs(global2.b.x), 1u) << (~vec4<u32>(1u, 4294967295u, var_1.b.x, 1u) % vec4<u32>(32u)), select(select(vec4<bool>(true, var_3.a.a.x, false, var_6.a.x), vec4<bool>(var_3.a.a.x, true, false, var_3.c.a.x), false), select(select(vec4<bool>(false, var_3.a.a.x, false, true), vec4<bool>(var_6.a.x, var_6.a.x, var_3.c.a.x, true), true), !vec4<bool>(var_5.c.a.x, false, false, var_6.a.x), vec4<bool>(false, true, var_4.b.a.x, var_5.b.a.x)), !all(vec4<bool>(var_6.a.x, true, true, true)))), vec4<f32>(551f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -241f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2, var_6.b.x, var_5.b.a.x)) * var_6.b.x) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_3.a.b.x, -153f)), -1194f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.d + -719f) - _wgslsmith_f_op_f32(599f + -113f))))));
}

