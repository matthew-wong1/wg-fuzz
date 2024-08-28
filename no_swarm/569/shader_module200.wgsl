struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-2805i, -4536i, 1i, -12636i);

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global2: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true));

var<private> global3: vec2<u32> = vec2<u32>(1u, 34552u);

var<private> global4: vec3<f32>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2) -> f32 {
    global1 = vec4<bool>(arg_0.a.c.x, global1.x, global1.x, true);
    global3 = _wgslsmith_clamp_vec2_u32(arg_0.b.b, ~firstLeadingBit(select(~vec2<u32>(0u, 4294967295u), arg_0.a.d.xw << (arg_0.a.e % vec2<u32>(32u)), 55894u == arg_0.a.e.x)), vec2<u32>(_wgslsmith_div_u32(abs(~4294967295u), _wgslsmith_dot_vec2_u32(arg_0.a.b & vec2<u32>(1u, arg_0.b.b.x), arg_0.b.e)), countOneBits(1u)));
    global1 = !global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0.b.d.zyx, ~arg_0.b.d.wwz), 25u)];
    let var_0 = !all(!select(vec2<bool>(true, true), arg_0.b.c, arg_0.b.c)) & true;
    let var_1 = 1u;
    return global4.x;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: f32) -> vec2<u32> {
    let var_0 = Struct_1(firstLeadingBit(select(u_input.d, u_input.d, global0.x > (global0.x ^ -1i))), ~vec2<u32>(abs(~arg_1), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 4824u, 14658u, 63378u), vec4<u32>(arg_1, arg_1, 47665u, arg_1))), !vec2<bool>(!(arg_2 <= arg_2), any(!vec3<bool>(arg_0, arg_0, true))), vec4<u32>(~(~(~global3.x)), _wgslsmith_add_u32(global3.x, 10121u), arg_1, abs(arg_1)), vec2<u32>(~arg_1, 3631u));
    var var_1 = var_0.c;
    let var_2 = Struct_2(var_0, Struct_1(u_input.d, var_0.b, select(select(!vec2<bool>(global1.x, global1.x), !var_0.c, select(global1.xx, var_0.c, vec2<bool>(var_0.c.x, true))), !(!vec2<bool>(arg_0, var_1.x)), global1.wz), (~var_0.d | vec4<u32>(arg_1, var_0.e.x, 6907u, var_0.e.x)) << (~vec4<u32>(33939u, 1639u, global3.x, var_0.e.x) % vec4<u32>(32u)), vec2<u32>(arg_1, 21708u)), vec3<i32>(var_0.a.x, 22286i, ~2147483647i));
    var_1 = !(!vec2<bool>(!global1.x != !global1.x, var_0.c.x));
    return var_0.e;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = Struct_1(u_input.d, ~func_4(!all(global2[_wgslsmith_index_u32(4294967295u, 25u)]), 0u, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x + global4.x) * _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<i32>(u_input.a.x, 22222i, -18936i, 1i), vec2<u32>(global3.x, 0u), vec2<bool>(false, arg_0.x), vec4<u32>(4294967295u, 22586u, 81036u, global3.x), vec2<u32>(25673u, 1u)), Struct_1(u_input.d, vec2<u32>(26425u, 4294967295u), vec2<bool>(true, false), vec4<u32>(global3.x, 1u, global3.x, 1u), vec2<u32>(0u, 2210u)), u_input.a))))), !select(global1.wy, select(vec2<bool>(true, arg_0.x), select(vec2<bool>(global1.x, true), vec2<bool>(true, global1.x), arg_0.x), vec2<bool>(true, arg_0.x)), 29717u >= (1u >> (global3.x % 32u))), ~vec4<u32>(~_wgslsmith_add_u32(6385u, 1u), (global3.x | global3.x) ^ _wgslsmith_dot_vec2_u32(vec2<u32>(global3.x, 4294967295u), vec2<u32>(4294967295u, 51402u)), firstTrailingBit(global3.x), ~_wgslsmith_clamp_u32(global3.x, 4294967295u, 726u)), func_4((~global0.x << (global3.x % 32u)) < -23847i, 0u, global4.x, _wgslsmith_f_op_f32(-global4.x)));
    global4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, 1147f, -1000f) + vec3<f32>(1912f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - _wgslsmith_f_op_f32(-global4.x)), _wgslsmith_f_op_f32(global4.x + -1084f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, 1000f, -438f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.x, global4.x, global4.x) - vec3<f32>(global4.x, -1000f, global4.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1943f, -219f, -417f) * vec3<f32>(752f, 436f, -532f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(917f, global4.x, -1769f), vec3<f32>(global4.x, -281f, 589f))))));
    global0 = firstTrailingBit(-abs(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.a.x, 1i, arg_1, u_input.c), vec4<i32>(u_input.c, -2147483647i, -10079i, u_input.c) >> (vec4<u32>(var_0.b.x, var_0.e.x, global3.x, var_0.b.x) % vec4<u32>(32u)))));
    let var_1 = !vec3<bool>(false, false, true == (true != all(vec2<bool>(true, arg_0.x))));
    let var_2 = vec3<i32>(-2147483647i, _wgslsmith_add_i32(abs(arg_1), 12846i), 10854i);
    return Struct_1(vec4<i32>(max(_wgslsmith_div_i32(var_0.a.x, -4362i) | firstLeadingBit(arg_1), _wgslsmith_sub_i32(1i, -84017i)), 1i, _wgslsmith_div_i32((var_0.a.x ^ global0.x) & -84084i, 1i), max(u_input.a.x, 17899i)), func_4(!global1.x, var_0.b.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.x))))), -361f), select(select(!vec2<bool>(var_1.x, arg_0.x), arg_0.zz, var_0.c), select(global1.ww, arg_0.zz, any(select(global2[_wgslsmith_index_u32(global3.x, 25u)], global2[_wgslsmith_index_u32(1u, 25u)], vec4<bool>(global1.x, var_1.x, global1.x, false)))), global1.yz), vec4<u32>(global3.x, 1u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(var_0.d.yzy | var_0.d.zxx, ~var_0.d.wwz), 4294967295u), 4294967295u << (0u % 32u)), ~vec2<u32>(var_0.d.x, 4294967295u & (var_0.d.x ^ global3.x)));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x * 362f) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -210f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0, -218f)) - _wgslsmith_f_op_f32(-arg_0))))));
}

fn func_1() -> i32 {
    var var_0 = u_input.b >> (~vec2<u32>(global3.x, 4294967295u) % vec2<u32>(32u));
    global4 = vec3<f32>(_wgslsmith_f_op_f32(func_5(global4.x, func_2(vec3<bool>(true, false && global1.x, global1.x), _wgslsmith_sub_i32(global0.x, _wgslsmith_mult_i32(2147483647i, var_0.x))))), 1140f, _wgslsmith_f_op_f32(max(1f, 367f)));
    var_0 = vec2<i32>(i32(-1i) * -69436i, i32(-1i) * -37851i);
    global4 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -104f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x - 445f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(471f * global4.x))), _wgslsmith_f_op_f32(-2055f - global4.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-711f, -823f, global4.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(1843f, -299f, -815f) * vec3<f32>(global4.x, -868f, 1346f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1361f, 897f, global4.x))), global1.x)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global4.x, 1344f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1046f, -1000f, 138f))), vec3<f32>(719f, _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(u_input.d, vec2<u32>(9900u, 24346u), vec2<bool>(true, true), vec4<u32>(1u, 4294967295u, 27561u, global3.x), vec2<u32>(4294967295u, global3.x)), Struct_1(u_input.d, vec2<u32>(27605u, global3.x), global1.zx, vec4<u32>(global3.x, global3.x, global3.x, global3.x), vec2<u32>(50968u, global3.x)), vec3<i32>(var_0.x, var_0.x, -2147483647i)))), _wgslsmith_f_op_f32(select(global4.x, 186f, global1.x))))), !(select(true, true, false) && true)));
    var var_1 = select(vec3<bool>(true, !all(global1.zwz), global1.x), !select(global1.wzx, global1.zzy, global1.x), global1.x);
    return reverseBits(~(global0.x ^ ~(~0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(vec4<i32>(0i, _wgslsmith_div_i32(56577i, u_input.a.x) ^ 65401i, _wgslsmith_div_i32(~(~35190i), ~func_1()), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.d, reverseBits(u_input.d)), firstLeadingBit(select(u_input.d, u_input.d, vec4<bool>(true, global1.x, global1.x, global1.x))))));
    let var_1 = global1.x;
    let var_2 = vec3<bool>(true, !(_wgslsmith_div_u32(global3.x, 6631u) == global3.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-820f + 668f), global4.x, !(!global1.x))) < -1882f);
    var var_3 = func_2(!(!global1.yyy), var_0.x);
    let var_4 = Struct_1(vec4<i32>(global0.x, ~(var_3.a.x >> (reverseBits(1u) % 32u)), _wgslsmith_sub_i32(-1i >> (global3.x % 32u), var_0.x), func_2(var_2, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(var_3.a.zxx, vec3<i32>(var_0.x, var_3.a.x, var_0.x)), global0.zyy)).a.x), vec2<u32>(_wgslsmith_mod_u32(var_3.d.x, _wgslsmith_div_u32(~global3.x, 46413u)), 83771u), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(546f - global4.x) - _wgslsmith_f_op_f32(ceil(-1029f))) != -1225f, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global3.x, global3.x, global3.x), var_3.d.www), ~var_3.d.zyz) != 4294967295u), ~var_3.d, reverseBits(vec2<u32>(_wgslsmith_mult_u32(global3.x >> (4294967295u % 32u), ~4664u), abs(_wgslsmith_div_u32(global3.x, global3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(-20019i | _wgslsmith_dot_vec2_i32(vec2<i32>(17061i, -23840i), var_0.wz)), _wgslsmith_mod_i32(-54621i | var_0.x, func_2(select(var_2, var_2, false), 1i).a.x), 1i, var_0.x), select(_wgslsmith_add_vec2_i32(func_2(select(vec3<bool>(global1.x, var_4.c.x, true), global1.yzy, global1.wyx), -21782i).a.xz, global0.xy ^ var_4.a.wx), -vec2<i32>(_wgslsmith_dot_vec4_i32(var_0, vec4<i32>(0i, u_input.c, 1i, 22155i)), var_0.x), true), ~min(var_4.a.x, 0i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global4.x)), -2493f, _wgslsmith_f_op_f32(1249f + global4.x), _wgslsmith_f_op_f32(821f * global4.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 755f, global4.x, -198f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1125f, -1074f, -798f, 1213f)))));
}

