struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec4<bool>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: u32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec4<bool>(true, false, true, true), Struct_1(4294967295u, vec2<f32>(1205f, -268f), vec4<i32>(i32(-2147483648), -67375i, -7797i, 17923i), 1u)));

var<private> global1: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(-944f, -2732f, -861f, -1112f), vec4<f32>(1348f, 531f, -712f, -589f), vec4<f32>(-453f, -1000f, -105f, 434f), vec4<f32>(-1363f, -244f, 1262f, -1199f), vec4<f32>(1194f, -103f, -1388f, 3487f));

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec2<f32>) -> vec4<f32> {
    global1 = array<vec4<f32>, 5>();
    global0 = Struct_3(global0.a);
    let var_0 = select(global0.a.b.c, vec4<i32>(-21724i, global0.a.b.c.x, u_input.d, _wgslsmith_mult_i32(~(~32148i), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-1i, 1i, global0.a.b.c.x), ~global0.a.b.c.x, max(2147483647i, 2147483647i)))), global0.a.a.x);
    let var_1 = ~select(vec3<i32>(abs(0i) | global0.a.b.c.x, var_0.x & (u_input.d << (global0.a.b.a % 32u)), _wgslsmith_clamp_i32(_wgslsmith_add_i32(6955i, 0i), ~2147483647i, global0.a.b.c.x)), -(vec3<i32>(var_0.x, global0.a.b.c.x, 1i) ^ ~global0.a.b.c.wyy), !select(!global0.a.a.zyy, select(vec3<bool>(true, global0.a.a.x, global0.a.a.x), global0.a.a.xyy, vec3<bool>(global0.a.a.x, false, false)), all(global0.a.a.yx)));
    let var_2 = Struct_4(true, Struct_3(Struct_2(global0.a.a, Struct_1(45072u ^ global0.a.b.a, _wgslsmith_div_vec2_f32(global0.a.b.b, vec2<f32>(-2019f, -675f)), select(vec4<i32>(18671i, u_input.d, global0.a.b.c.x, var_0.x), vec4<i32>(27546i, var_0.x, u_input.d, -2147483647i), false), u_input.c.x))), select(select(vec4<bool>(global0.a.a.x, global0.a.a.x, any(vec3<bool>(global0.a.a.x, false, false)), false), select(global0.a.a, global0.a.a, false), vec4<bool>(true, all(vec3<bool>(global0.a.a.x, global0.a.a.x, false)), all(vec2<bool>(global0.a.a.x, false)), true)), !vec4<bool>(false, select(false, global0.a.a.x, true), global0.a.a.x, all(vec4<bool>(global0.a.a.x, global0.a.a.x, global0.a.a.x, false))), global0.a.a), ~vec2<i32>(~max(41707i, 0i), u_input.d), Struct_1(~global0.a.b.a, vec2<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(global0.a.b.b.x * -1433f)), global0.a.b.c, _wgslsmith_sub_u32(17150u >> (_wgslsmith_div_u32(u_input.a, global0.a.b.d) % 32u), abs(firstLeadingBit(u_input.c.x)))));
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1)), -416f)), 206f, _wgslsmith_f_op_f32(round(var_2.e.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-654f, -1102f)) - arg_2.x)));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<f32>) -> f32 {
    var var_0 = arg_1;
    var var_1 = Struct_5(Struct_2(global0.a.a, global0.a.b), arg_0.x, global0.a.b.c.x << (abs(27573u) % 32u));
    var_0 = var_1.a.b.d;
    var_0 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(func_3(var_1.a.b.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-698f * 571f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -448f))), vec2<f32>(-1255f, -1824f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(1000f, var_2.x)))))), -2244f)));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_3 {
    var var_0 = Struct_2(select(vec4<bool>(true, true, true, arg_1.a >= 0u), vec4<bool>(2273i != global0.a.b.c.x, global0.a.a.x, any(!global0.a.a), _wgslsmith_f_op_f32(-global0.a.b.b.x) <= _wgslsmith_f_op_f32(sign(-422f))), any(vec3<bool>(false, true, global0.a.a.x)) & global0.a.a.x), global0.a.b);
    var_0 = Struct_2(global0.a.a, Struct_1(min(~var_0.b.a >> (1u % 32u), u_input.b.x), vec2<f32>(var_0.b.b.x, _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-arg_1.b.x))), max(~var_0.b.c, vec4<i32>(~var_0.b.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.c.x, var_0.b.c.x, global0.a.b.c.x, -15604i), vec4<i32>(arg_1.c.x, 1i, var_0.b.c.x, var_0.b.c.x)), min(0i, arg_1.c.x), firstTrailingBit(1i))), 68950u ^ global0.a.b.a));
    var_0 = Struct_2(select(var_0.a, select(!vec4<bool>(var_0.a.x, global0.a.a.x, global0.a.a.x, global0.a.a.x), vec4<bool>(true, true, select(var_0.a.x, true, var_0.a.x), true), all(var_0.a)), all(select(var_0.a.xy, select(global0.a.a.yy, vec2<bool>(true, true), global0.a.a.yx), var_0.a.zx))), arg_1);
    global0 = Struct_3(Struct_2(var_0.a, global0.a.b));
    var_0 = global0.a;
    return Struct_3(global0.a);
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: i32) -> Struct_2 {
    let var_0 = global0.a;
    global0 = func_4(reverseBits(~33652u), Struct_1(~(~min(29163u, 1u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-297f + 1295f), _wgslsmith_f_op_f32(trunc(1310f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 1669f))), _wgslsmith_mod_vec4_i32(~var_0.b.c, _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a.b.c.x, var_0.b.c.x, var_0.b.c.x, arg_2), vec4<i32>(-1i, 1i, 1i, 18035i), var_0.b.c), global0.a.b.c)), ~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(58032u, u_input.a, var_0.b.a), vec3<u32>(u_input.c.x, 2624u, var_0.b.a)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -635f) + -1783f), -790f, 533f) * vec3<f32>(_wgslsmith_f_op_f32(func_2(vec3<u32>(0u, 1u, var_0.b.d), ~1u, _wgslsmith_f_op_vec2_f32(-var_0.b.b))), _wgslsmith_f_op_f32(-arg_0.x), 1891f)));
    global1 = array<vec4<f32>, 5>();
    let var_1 = Struct_1(~var_0.b.d, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(arg_0.yz, vec2<f32>(_wgslsmith_f_op_f32(round(708f)), _wgslsmith_f_op_f32(602f - 213f)))))), _wgslsmith_add_vec4_i32(select(-vec4<i32>(var_0.b.c.x, var_0.b.c.x, global0.a.b.c.x, u_input.d), vec4<i32>(-39439i, global0.a.b.c.x, firstLeadingBit(2147483647i), abs(40241i)), true), _wgslsmith_div_vec4_i32(vec4<i32>(54267i, arg_2, ~arg_2, arg_2), vec4<i32>(2147483647i, -u_input.d, var_0.b.c.x, 1i))), 4294967295u);
    global1 = array<vec4<f32>, 5>();
    return func_4(~global0.a.b.d, func_4(~(~global0.a.b.a), Struct_1(~12774u, _wgslsmith_f_op_vec2_f32(global0.a.b.b - _wgslsmith_f_op_vec2_f32(var_1.b * vec2<f32>(-2048f, var_0.b.b.x))), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.c.x, -1i, u_input.d, 33047i), global0.a.b.c), var_1.c), countOneBits(min(31058u, global0.a.b.d))), _wgslsmith_f_op_vec3_f32(arg_0 * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b.x, 1018f, var_1.b.x)))))).a.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0, vec3<f32>(545f, var_1.b.x, global0.a.b.b.x), var_0.a.xzz)) - vec3<f32>(-237f, var_1.b.x, var_0.b.b.x)) * _wgslsmith_f_op_vec3_f32(sign(arg_0))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(arg_0, arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b.x, var_1.b.x, arg_0.x) - arg_0)))))).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 5>();
    let var_0 = 46679u;
    var var_1 = func_1(vec3<f32>(global0.a.b.b.x, 134f, global0.a.b.b.x), _wgslsmith_f_op_f32(1854f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1317f, global0.a.b.b.x)))), u_input.d);
    var var_2 = Struct_5(func_4(_wgslsmith_add_u32(~var_1.b.a, func_1(vec3<f32>(global0.a.b.b.x, 637f, 1826f), var_1.b.b.x, 3925i).b.a << (_wgslsmith_mult_u32(41846u, 30943u) % 32u)), func_4(var_0, func_4(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.d, var_1.b.d, var_0), vec3<u32>(var_0, 9452u, 0u)), func_1(vec3<f32>(global0.a.b.b.x, var_1.b.b.x, global0.a.b.b.x), var_1.b.b.x, u_input.d).b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1340f, var_1.b.b.x, 191f))).a.b, vec3<f32>(_wgslsmith_f_op_f32(func_2(vec3<u32>(var_1.b.d, 73135u, var_1.b.a), 0u, global0.a.b.b)), _wgslsmith_f_op_f32(-var_1.b.b.x), _wgslsmith_f_op_f32(-global0.a.b.b.x))).a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1959f, -471f, var_1.b.b.x) * vec3<f32>(var_1.b.b.x, 583f, 908f)))))).a, abs(global0.a.b.d), func_4(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, 23977u), ~global0.a.b.a), Struct_1(0u, vec2<f32>(global0.a.b.b.x, global0.a.b.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(2563i, -3724i, global0.a.b.c.x, var_1.b.c.x), global0.a.b.c), 2960u ^ u_input.c.x), vec3<f32>(-1958f, 2208f, global0.a.b.b.x)).a.b.c.x ^ 2147483647i);
    var var_3 = Struct_5(func_4(13077u, global0.a.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2(vec3<u32>(4294967295u, 4294967295u, 43972u), 4294967295u, vec2<f32>(global0.a.b.b.x, var_1.b.b.x))), var_1.b.b.x, -970f))).a, 60686u, ~_wgslsmith_div_i32(u_input.d, ~abs(-2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(global1[_wgslsmith_index_u32(79542u, 5u)])), global1[_wgslsmith_index_u32(8552u, 5u)])))))), ~vec2<i32>(abs(1i), ~var_1.b.c.x), _wgslsmith_add_u32(var_3.b, _wgslsmith_dot_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(6630u, var_1.b.a, global0.a.b.d), vec3<u32>(var_1.b.d, 4772u, var_2.b))), vec3<u32>(38991u, 4294967295u, reverseBits(var_2.b)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -226f), _wgslsmith_f_op_f32(-var_2.a.b.b.x))), vec3<u32>(_wgslsmith_sub_u32(~(~u_input.a), 75337u), 0u, _wgslsmith_mult_u32(var_0, ~firstLeadingBit(35075u))));
}

