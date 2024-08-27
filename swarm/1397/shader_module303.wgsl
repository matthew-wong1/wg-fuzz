struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: f32) -> bool {
    var var_0 = Struct_1(select(vec2<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(true, true), false), vec2<bool>(true, false)), all(vec2<bool>(false, true))), vec2<bool>(false, select(true, any(vec3<bool>(true, false, true)), false))), max(1u, ~60193u), firstTrailingBit(u_input.a), u_input.a.x, select(vec3<bool>(true, true, all(vec2<bool>(true, true))), vec3<bool>(!all(vec2<bool>(false, true)), false, false), all(vec4<bool>(true, true, true, true))));
    let var_1 = !(all(!vec3<bool>(true, true, var_0.e.x)) & all(!vec3<bool>(var_0.a.x, var_0.e.x, false)));
    var var_2 = select(4294967295u, abs(u_input.a.x), var_1) ^ u_input.a.x;
    var var_3 = vec4<i32>(11357i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -1i >> (1u % 32u), abs(1i), 1i), select(abs(vec4<i32>(-2147483647i, 2147483647i, 10216i, -2147483647i)), vec4<i32>(-2147483647i, -11558i, -32526i, 2147483647i), any(var_0.a))), ~_wgslsmith_div_i32(abs(-31349i), select(-2147483647i, 4951i, false)), abs(_wgslsmith_mult_i32(i32(-1i) * -1i, -7680i))), -3254i, ~_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_add_i32(0i, -441i), ~0i), 24811i));
    let var_4 = Struct_1(select(var_0.a, var_0.e.xz, select(vec2<bool>(true, !var_1), select(!vec2<bool>(var_1, var_1), select(vec2<bool>(false, true), var_0.e.xz, vec2<bool>(var_1, var_1)), !var_0.a), select(var_0.e.xz, !var_0.a, true))), firstTrailingBit(var_0.d), u_input.a, ~u_input.a.x, select(!var_0.e, vec3<bool>(var_1, true, var_0.a.x), var_1));
    return false;
}

fn func_2() -> vec2<i32> {
    var var_0 = min(~u_input.a.yz, u_input.a.xy);
    var_0 = ~_wgslsmith_sub_vec2_u32(u_input.a.yy, ~(~(~u_input.a.xy)));
    global0 = var_0.x;
    let var_1 = vec3<u32>(u_input.a.x, _wgslsmith_clamp_u32(79971u, u_input.a.x, u_input.a.x), 48015u);
    let var_2 = !func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(712f, 239f)) + -991f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(120f, 407f)))));
    return select(select(-reverseBits(vec2<i32>(1i, 1i)), abs(-vec2<i32>(-34257i, -21007i) << ((vec2<u32>(1u, var_0.x) << (var_1.zz % vec2<u32>(32u))) % vec2<u32>(32u))), !select(vec2<bool>(true, false), vec2<bool>(true, true), func_3(-1810f, 640f))), max(-select(-vec2<i32>(-1i, -14827i), ~vec2<i32>(-37154i, 1i), select(vec2<bool>(true, false), vec2<bool>(var_2, var_2), true)), -_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(39645i, 2147483647i), vec2<i32>(-15721i, -11738i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 16386i), vec2<i32>(1i, 0i), vec2<i32>(-60614i, 1i)))), true);
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-45599i, 63438i), vec2<i32>(0i << (abs(u_input.a.x) % 32u), 1i), ~(~vec2<i32>(1i, 1i))), _wgslsmith_div_vec2_i32(select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 56701i, 0i, -34458i), vec4<i32>(-1i, -86231i, 1i, 41703i)), _wgslsmith_add_i32(7629i, 6543i)), vec2<i32>(1i, 1i), select(vec2<bool>(true, true), vec2<bool>(false, true), true)), abs(-vec2<i32>(-5392i, -31333i)) ^ func_2()));
    global0 = firstTrailingBit(max(0u, u_input.a.x));
    let var_1 = Struct_1(vec2<bool>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-35684i, 29098i, var_0.x), vec3<i32>(-1i, -1i, -2147483647i)) < -2147483647i, true), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 0u, 107544u, ~0u) >> (~firstLeadingBit(vec4<u32>(4401u, u_input.a.x, u_input.a.x, 8852u)) % vec4<u32>(32u)), vec4<u32>(u_input.a.x & u_input.a.x, firstTrailingBit(u_input.a.x), u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) & vec4<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(86061u, u_input.a.x), u_input.a.x, 0u)), vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x), vec3<u32>(u_input.a.x, 8295u, 23102u)), ~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x)), countOneBits(4294967295u), 0u), ~u_input.a.x, select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), !select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), true)), select(vec3<bool>(true, true, true), vec3<bool>(func_3(-2039f, -203f), true, true), vec3<bool>(true, true, true)), true));
    var_0 = vec2<i32>(max(func_2().x, select(_wgslsmith_dot_vec3_i32(~vec3<i32>(28190i, var_0.x, var_0.x), vec3<i32>(var_0.x, 13772i, var_0.x) << (vec3<u32>(u_input.a.x, 19007u, u_input.a.x) % vec3<u32>(32u))), 0i, any(!vec3<bool>(var_1.e.x, var_1.a.x, false)))), ~_wgslsmith_mod_i32(-var_0.x, select(var_0.x, -37505i, var_1.a.x) ^ _wgslsmith_sub_i32(var_0.x, var_0.x)));
    let var_2 = Struct_1(select(!var_1.a, !(!select(var_1.a, vec2<bool>(var_1.e.x, var_1.e.x), false)), !(var_0.x <= _wgslsmith_mult_i32(0i, var_0.x))), u_input.a.x, countOneBits(abs(var_1.c)), 4294967295u, select(!(!(!var_1.e)), vec3<bool>(select(all(vec4<bool>(var_1.a.x, true, var_1.e.x, var_1.e.x)), true, false), var_1.e.x, !all(vec2<bool>(false, var_1.e.x))), vec3<bool>(true, !any(var_1.e), any(select(vec2<bool>(false, var_1.e.x), vec2<bool>(var_1.e.x, var_1.a.x), var_1.a.x)))));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> bool {
    var var_0 = false;
    var var_1 = _wgslsmith_add_vec3_u32(firstLeadingBit(countOneBits(vec3<u32>(34706u, u_input.a.x, u_input.a.x))), arg_0.c);
    let var_2 = vec2<i32>(_wgslsmith_div_i32(arg_1.x ^ min(arg_1.x, i32(-1i) * -1i), 1434i), -_wgslsmith_mult_i32(~abs(arg_1.x), -1i));
    global0 = ~(~(_wgslsmith_clamp_u32(26316u, 15517u, ~88543u) >> (var_1.x % 32u)));
    let var_3 = abs(_wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 0u, 62876u, arg_0.b), vec4<u32>(4294967295u, arg_0.d, arg_0.b, arg_0.c.x))), vec4<u32>(_wgslsmith_clamp_u32(u_input.a.x, 10619u, 4294967295u), _wgslsmith_add_u32(arg_0.b, 44095u), select(u_input.a.x, var_1.x, arg_0.a.x), var_1.x) & (vec4<u32>(15420u, u_input.a.x, 4294967295u, var_1.x) << (~vec4<u32>(4294967295u, u_input.a.x, 4294967295u, arg_0.c.x) % vec4<u32>(32u)))));
    return true;
}

fn func_5(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    global0 = 12772u << (u_input.a.x % 32u);
    var var_0 = abs(_wgslsmith_sub_u32(arg_3.c.x, 4294967295u));
    var_0 = ~_wgslsmith_mult_u32(33854u, u_input.a.x);
    var var_1 = ~(-1i);
    let var_2 = Struct_1(vec2<bool>(false, true), ~(~(~_wgslsmith_mod_u32(0u, 1u))), reverseBits(abs(_wgslsmith_mult_vec3_u32(~u_input.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, arg_3.d), arg_3.c, vec3<u32>(u_input.a.x, u_input.a.x, 0u))))), min(_wgslsmith_dot_vec2_u32(~u_input.a.zx ^ (arg_3.c.xz | u_input.a.yy), vec2<u32>(abs(arg_3.c.x), abs(0u))), u_input.a.x), !select(!vec3<bool>(true, arg_3.a.x, false), vec3<bool>(func_3(-1000f, arg_1.x), arg_2.x, false), select(vec3<bool>(arg_3.a.x, false, false), arg_2, !arg_2)));
    return var_2;
}

fn func_6(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1) -> vec4<bool> {
    global0 = 27148u;
    global0 = _wgslsmith_clamp_u32(~28197u, arg_2.d, ~arg_1.d);
    var var_0 = -_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(30728i, 23885i, 1i, -2147483647i)), -select(vec4<i32>(0i, -2147483647i, 1i, 30499i), vec4<i32>(-382i, 2147483647i, -1i, -1i), true)) << (4294967295u % 32u);
    let var_1 = reverseBits(vec4<i32>(19077i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, firstTrailingBit(-12666i), select(0i, 1i, false)), ~(~vec4<i32>(-18759i, 2147483647i, 52465i, -2262i))), 0i, -_wgslsmith_clamp_i32(38610i << (u_input.a.x % 32u), select(-1352i, -2147483647i, false), abs(-2147483647i))));
    return !select(!vec4<bool>(func_3(171f, -221f), 4294967295u <= arg_1.b, !arg_1.a.x, var_1.x > 2147483647i), select(!vec4<bool>(false, arg_1.e.x, arg_1.a.x, arg_2.e.x), !select(vec4<bool>(false, arg_1.a.x, true, false), vec4<bool>(true, false, arg_2.e.x, false), true), !(!vec4<bool>(true, arg_2.a.x, arg_2.a.x, true))), select(!select(vec4<bool>(false, false, arg_1.a.x, arg_2.a.x), vec4<bool>(arg_1.a.x, arg_1.a.x, arg_2.a.x, true), true), select(select(vec4<bool>(arg_2.e.x, false, false, arg_1.e.x), vec4<bool>(arg_2.e.x, true, arg_2.a.x, arg_2.e.x), vec4<bool>(true, false, arg_1.e.x, arg_2.e.x)), !vec4<bool>(arg_1.a.x, false, arg_2.e.x, arg_1.a.x), arg_2.e.x), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -660f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1218f) + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-853f - -534f) - 257f)), func_5(func_4(func_1(), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1187f, 106f))))), func_1().e, Struct_1(vec2<bool>(true, true), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(96962u, 14937u)), _wgslsmith_clamp_vec2_u32(u_input.a.zz, u_input.a.yx, u_input.a.zz)), vec3<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(67932u, u_input.a.x, 32138u, u_input.a.x), vec4<u32>(0u, 1u, u_input.a.x, u_input.a.x)), 18756u), _wgslsmith_dot_vec3_u32(vec3<u32>(24551u, u_input.a.x, 81903u), firstTrailingBit(vec3<u32>(u_input.a.x, 14434u, 1u))), func_1().e)), Struct_1(func_1().a, _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 27692u, 1u), vec4<u32>(u_input.a.x, 14079u, 34321u, 1u)), _wgslsmith_sub_u32(~u_input.a.x, _wgslsmith_mult_u32(37651u, 30148u))), u_input.a, max(max(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), max(24996u, 29813u)), ~19294u), !vec3<bool>(true, true, func_5(true, vec2<f32>(236f, -493f), vec3<bool>(true, false, true), Struct_1(vec2<bool>(false, true), 66809u, vec3<u32>(u_input.a.x, 0u, u_input.a.x), 76705u, vec3<bool>(true, true, false))).e.x)));
    global0 = 0u;
    var var_1 = -_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(0i, -4404i), vec2<i32>(18165i, 1i)), vec2<i32>(1i, 1i)), firstTrailingBit(1i), 1i), abs(vec3<i32>(i32(-1i) * -2147483647i, -27748i, _wgslsmith_mult_i32(1i, 31188i))));
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -700f, 585f, -625f), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1674f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 2042f)), -2181f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(518f + 537f), _wgslsmith_f_op_f32(min(-1371f, -486f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-699f, _wgslsmith_div_f32(970f, -1410f), _wgslsmith_f_op_f32(floor(-405f)), _wgslsmith_f_op_f32(925f - -392f)) * vec4<f32>(_wgslsmith_f_op_f32(-845f - -605f), _wgslsmith_f_op_f32(f32(-1f) * -1367f), _wgslsmith_f_op_f32(floor(747f)), _wgslsmith_f_op_f32(f32(-1f) * -179f)))));
    let var_3 = abs(~u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-148f + var_2.x), var_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_2.x))))))));
}

