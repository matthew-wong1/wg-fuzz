struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 14>;

var<private> global1: vec2<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: Struct_5, arg_3: Struct_3) -> vec2<bool> {
    let var_0 = 867f;
    var var_1 = true || !(!any(arg_3.d.yyw) || ((51024u == global1.x) && any(vec4<bool>(arg_3.d.x, arg_3.d.x, false, false))));
    global0 = array<vec4<i32>, 14>();
    let var_2 = _wgslsmith_add_vec4_u32(~max(vec4<u32>(~38451u, ~4294967295u, global1.x >> (u_input.a.x % 32u), ~arg_2.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, arg_3.b.b.x), countOneBits(vec4<u32>(0u, u_input.a.x, u_input.a.x, 35260u)))), reverseBits(_wgslsmith_add_vec4_u32(~(~vec4<u32>(arg_2.b.x, 25013u, arg_2.a.e.b.x, 0u)), _wgslsmith_add_vec4_u32(~vec4<u32>(0u, global1.x, global1.x, 1838u), _wgslsmith_add_vec4_u32(vec4<u32>(31460u, global1.x, 70519u, 5812u), vec4<u32>(25310u, arg_3.b.b.x, 1u, arg_3.b.b.x))))));
    var var_3 = -arg_0.x;
    return !(!(!arg_3.a));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>) -> Struct_5 {
    let var_0 = !select(select(vec2<bool>(true, false), !select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false)), any(vec3<bool>(true, true, true))), select(select(func_3(vec2<i32>(0i, arg_0.x), vec2<bool>(false, false), Struct_5(Struct_2(-51371i, arg_1, Struct_1(vec3<f32>(330f, -320f, -1344f), vec3<u32>(global1.x, global1.x, arg_1.x)), vec3<i32>(0i, arg_0.x, 1i), Struct_1(vec3<f32>(-641f, 892f, -193f), vec3<u32>(arg_1.x, u_input.a.x, 4294967295u))), vec2<u32>(arg_1.x, u_input.a.x)), Struct_3(vec2<bool>(true, false), Struct_1(vec3<f32>(590f, 918f, 110f), vec3<u32>(arg_1.x, 1u, 0u)), 35674i, vec4<bool>(false, false, false, true))), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), vec2<bool>(true, true), any(vec3<bool>(true, true, false))), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false))));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(884f, 1172f)))));
    var var_2 = Struct_2(min(i32(-1i) * -1i, arg_0.x) << (max(0u, 30229u << (~global1.x % 32u)) % 32u), ~(max(u_input.a.xx | u_input.a.yy, ~vec2<u32>(62584u, 20992u)) | reverseBits(vec2<u32>(1u, u_input.a.x))), Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1000f - -134f), _wgslsmith_f_op_f32(var_1.x - var_1.x), -723f) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-544f, 1095f, -1076f), vec3<f32>(1692f, var_1.x, -1528f), false)), vec3<f32>(var_1.x, 1230f, 1000f)))), vec3<u32>(_wgslsmith_mod_u32(7416u, 15674u), arg_1.x, _wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), arg_1)))), vec3<i32>(1i, -_wgslsmith_mult_i32(~(-2147483647i), 0i), ~arg_0.x), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-1000f + -214f)), -715f, 592f), u_input.a));
    var var_3 = Struct_2(_wgslsmith_clamp_i32(abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_2.a, 1i, 0i), vec4<i32>(-5176i, 13181i, arg_0.x, 24078i)), var_2.a & var_2.a)), abs(arg_0.x), ~(var_2.d.x >> (0u % 32u))), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.a.zx, min(vec2<u32>(72935u, var_2.c.b.x), vec2<u32>(arg_1.x, var_2.e.b.x))) & ~(u_input.a.yy & (vec2<u32>(1u, arg_1.x) >> (arg_1 % vec2<u32>(32u)))), Struct_1(var_2.c.a, min(vec3<u32>(u_input.a.x, 1u, 0u), _wgslsmith_add_vec3_u32(var_2.e.b, vec3<u32>(40331u, arg_1.x, 1u))) << (~min(vec3<u32>(var_2.b.x, global1.x, 4294967295u), u_input.a) % vec3<u32>(32u))), var_2.d, Struct_1(vec3<f32>(1467f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.e.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.a.x) * _wgslsmith_f_op_f32(ceil(var_2.c.a.x)))), vec3<u32>(23009u, firstTrailingBit(_wgslsmith_mod_u32(1u, 49827u)), 1u)));
    var var_4 = Struct_3(vec2<bool>((-1i < var_2.a) || (true || (false | var_0.x)), all(!vec4<bool>(var_0.x, false, var_0.x, var_0.x))), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.e.a.x, var_1.x, 501f))), abs(var_2.c.b) >> (_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 47171u, u_input.a.x), u_input.a), ~var_2.e.b) % vec3<u32>(32u))), 35287i, !select(!(!vec4<bool>(false, false, var_0.x, var_0.x)), !select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(false, true, var_0.x, var_0.x)), vec4<bool>(var_0.x, !var_0.x, false, true)));
    return Struct_5(Struct_2(-_wgslsmith_sub_i32(var_3.a, var_2.a) >> (min(_wgslsmith_sub_u32(4294967295u, var_2.b.x), ~0u) % 32u), _wgslsmith_add_vec2_u32(~(arg_1 >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))), abs(_wgslsmith_clamp_vec2_u32(arg_1, u_input.a.xx, vec2<u32>(1u, arg_1.x)))), var_3.e, ~(vec3<i32>(arg_0.x, arg_0.x, -1i) << (vec3<u32>(var_2.b.x, u_input.a.x, var_3.c.b.x) % vec3<u32>(32u))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.c.a.x, var_3.e.a.x, -597f)), vec3<u32>(u_input.a.x, ~0u, _wgslsmith_mod_u32(u_input.a.x, var_3.b.x)))), ~(~(_wgslsmith_add_vec2_u32(var_4.b.b.yz, var_2.c.b.zy) << (vec2<u32>(var_3.c.b.x, var_3.c.b.x) % vec2<u32>(32u)))));
}

fn func_4(arg_0: Struct_5) -> Struct_3 {
    let var_0 = vec2<u32>(_wgslsmith_sub_u32(~global1.x, max(1u, 117048u)), _wgslsmith_div_u32(_wgslsmith_mod_u32(global1.x, arg_0.a.c.b.x), ~_wgslsmith_div_u32(global1.x, 84440u)));
    global0 = array<vec4<i32>, 14>();
    let var_1 = _wgslsmith_add_vec3_i32(arg_0.a.d, vec3<i32>(~_wgslsmith_dot_vec4_i32(select(global0[_wgslsmith_index_u32(arg_0.b.x, 14u)], global0[_wgslsmith_index_u32(var_0.x, 14u)], vec4<bool>(false, false, false, false)), global0[_wgslsmith_index_u32(u_input.a.x, 14u)] << (vec4<u32>(45898u, var_0.x, 1u, 26287u) % vec4<u32>(32u))), 1i, 1i & (-arg_0.a.a ^ arg_0.a.d.x)));
    var var_2 = vec2<bool>(!any(vec3<bool>(true, true, true)), any(func_3(_wgslsmith_mult_vec2_i32(var_1.zy, arg_0.a.d.xx | vec2<i32>(var_1.x, 62663i)), func_3(var_1.xz, select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), func_2(vec4<i32>(arg_0.a.d.x, var_1.x, -9334i, -2147483647i), arg_0.b), Struct_3(vec2<bool>(false, true), arg_0.a.c, var_1.x, vec4<bool>(false, false, true, false))), arg_0, Struct_3(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), arg_0.a.e, 2147483647i, vec4<bool>(true, true, true, true)))));
    global1 = vec2<u32>(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 56356u, 52237u, var_0.x), vec4<u32>(arg_0.a.c.b.x, arg_0.b.x, u_input.a.x, arg_0.b.x))), select(_wgslsmith_add_u32(~arg_0.a.c.b.x, 46018u), ~_wgslsmith_add_u32(u_input.a.x, global1.x), false)) ^ ~abs(var_0);
    return Struct_3(vec2<bool>(true, true), func_2(-(global0[_wgslsmith_index_u32(arg_0.b.x, 14u)] ^ global0[_wgslsmith_index_u32(var_0.x, 14u)]) << (vec4<u32>(var_0.x ^ 15425u, global1.x, 18496u, ~global1.x) % vec4<u32>(32u)), select(~u_input.a.zx, var_0, !select(vec2<bool>(var_2.x, false), vec2<bool>(var_2.x, var_2.x), vec2<bool>(true, var_2.x)))).a.e, max(reverseBits(var_1.x), max(-_wgslsmith_mod_i32(-56365i, -1i), ~(~0i))), select(select(select(vec4<bool>(var_2.x, true, false, var_2.x), !vec4<bool>(var_2.x, var_2.x, var_2.x, true), select(vec4<bool>(false, var_2.x, true, var_2.x), vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x), var_2.x)), vec4<bool>(true, true, func_3(vec2<i32>(var_1.x, -24037i), vec2<bool>(false, true), arg_0, Struct_3(vec2<bool>(true, true), Struct_1(vec3<f32>(-1270f, arg_0.a.c.a.x, arg_0.a.c.a.x), u_input.a), -2147483647i, vec4<bool>(false, var_2.x, true, var_2.x))).x, false && var_2.x), all(vec3<bool>(var_2.x, var_2.x, var_2.x))), vec4<bool>(true, false && all(vec2<bool>(true, var_2.x)), var_2.x, false), !var_2.x));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5, arg_2: f32, arg_3: Struct_2) -> u32 {
    global1 = countOneBits(vec2<u32>(arg_1.b.x ^ _wgslsmith_mult_u32(54028u, _wgslsmith_add_u32(1u, arg_3.e.b.x)), max(_wgslsmith_sub_u32(~arg_3.c.b.x, ~4294967295u), global1.x)));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(530f, arg_2, arg_1.a.e.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(arg_3.c.a)))) * vec3<f32>(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-arg_1.a.c.a.x), arg_0.a.x)), arg_3.e.a.x, _wgslsmith_f_op_f32(-451f - _wgslsmith_f_op_f32(f32(-1f) * -491f)))));
    let var_1 = arg_0.b.b.x;
    global0 = array<vec4<i32>, 14>();
    global1 = vec2<u32>(_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(28093u, 14160u, arg_0.b.b.x, 0u)), ~vec4<u32>(reverseBits(4294967295u), arg_3.e.b.x >> (1529u % 32u), u_input.a.x, ~arg_3.e.b.x)), 12982u);
    return ~(~_wgslsmith_sub_u32(_wgslsmith_div_u32(u_input.a.x | 119802u, 31544u), min(21297u, arg_0.b.b.x)));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>) -> bool {
    global0 = array<vec4<i32>, 14>();
    global1 = vec2<u32>(func_5(func_4(func_2(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.x, 60272u), 14u)], vec2<u32>(u_input.a.x, 4294967295u))), func_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(global1.x, 57333u, 1u), ~u_input.a.x, 1u), 14u)], _wgslsmith_mod_vec2_u32(vec2<u32>(50999u, 50260u), u_input.a.xz)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), func_2(firstLeadingBit(~global0[_wgslsmith_index_u32(1u, 14u)]), ~vec2<u32>(u_input.a.x, global1.x)).a), ~select(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global1.x, global1.x, global1.x, 14587u)), ~vec4<u32>(36515u, u_input.a.x, u_input.a.x, 17503u)), reverseBits(56682u), true));
    let var_0 = false || (false && arg_1.x);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1389f);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-687f - -1141f) - _wgslsmith_f_op_f32(step(1479f, 904f))), _wgslsmith_f_op_f32(abs(-715f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -432f)))), _wgslsmith_sub_vec3_u32(u_input.a, ~countOneBits(abs(u_input.a))));
    return var_0;
}

fn func_6(arg_0: vec4<i32>, arg_1: bool) -> Struct_5 {
    global1 = _wgslsmith_add_vec2_u32(~reverseBits(~u_input.a.yz >> (_wgslsmith_mod_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, 34423u)) % vec2<u32>(32u))), vec2<u32>(~(~(~global1.x)), abs(~global1.x)));
    global0 = array<vec4<i32>, 14>();
    global0 = array<vec4<i32>, 14>();
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-713f, -545f, 667f, -1665f) * vec4<f32>(-1012f, -137f, -499f, 138f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-722f - 193f)), _wgslsmith_f_op_f32(-364f * _wgslsmith_div_f32(-1000f, -326f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-921f, 1996f))), func_4(func_2(vec4<i32>(-1i, 31661i, 0i, -2147483647i), vec2<u32>(global1.x, u_input.a.x))).b.a.x)));
    var var_1 = 10935u;
    return Struct_5(Struct_2(2147483647i, u_input.a.xz, Struct_1(var_0.yzy, ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, global1.x, 4294967295u), vec3<u32>(u_input.a.x, 4294967295u, 38418u))), -vec3<i32>(arg_0.x, arg_0.x, -arg_0.x), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, 816f), var_0.zyw, vec3<bool>(arg_1, arg_1, arg_1))))), ~u_input.a)), vec2<u32>(abs(u_input.a.x ^ u_input.a.x), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 54066u), u_input.a.yx) ^ global1.x));
}

fn func_7(arg_0: Struct_4, arg_1: Struct_5, arg_2: Struct_5) -> i32 {
    var var_0 = arg_2;
    global1 = func_6(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(arg_1.a.a, 0i, -arg_2.a.a, _wgslsmith_clamp_i32(40097i, 1i, -11988i))), global0[_wgslsmith_index_u32(var_0.a.e.b.x << (~global1.x % 32u), 14u)]), all(vec4<bool>(_wgslsmith_div_f32(arg_2.a.e.a.x, -201f) != _wgslsmith_f_op_f32(-2738f + -485f), arg_1.a.c.a.x < _wgslsmith_f_op_f32(floor(536f)), (0u & u_input.a.x) >= _wgslsmith_add_u32(arg_0.a.b.x, arg_1.a.e.b.x), _wgslsmith_f_op_f32(min(901f, var_0.a.e.a.x)) >= -816f))).b;
    var var_1 = 125639u;
    var_1 = ~(~_wgslsmith_sub_u32(global1.x, _wgslsmith_add_u32(4294967295u, arg_1.b.x) & firstTrailingBit(arg_2.a.e.b.x)));
    global1 = vec2<u32>(~(~func_5(Struct_3(vec2<bool>(false, true), Struct_1(vec3<f32>(arg_2.a.e.a.x, -1000f, 836f), arg_0.a.b), 41307i, vec4<bool>(true, false, false, true)), Struct_5(var_0.a, vec2<u32>(var_0.b.x, arg_0.a.b.x)), -748f, var_0.a)), _wgslsmith_sub_u32(arg_2.b.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.b.x, 12052u), arg_0.a.b.zy) & vec2<u32>(4294967295u, arg_1.a.c.b.x), arg_1.a.b)));
    return func_4(Struct_5(func_6(vec4<i32>(18795i, ~arg_1.a.a, arg_1.a.d.x, ~(-2147483647i)), true).a, abs(arg_1.a.c.b.xx))).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(1i, ~1i);
    var_0 = -countOneBits(func_7(Struct_4(Struct_1(vec3<f32>(405f, 1000f, -1927f), u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(545f, 1098f))), func_6(vec4<i32>(-56222i, 1i, -31948i, 9073i), func_1(33373i, vec4<bool>(false, true, true, true))), Struct_5(Struct_2(-2147483647i, u_input.a.yz, Struct_1(vec3<f32>(-1644f, -395f, 2059f), u_input.a), vec3<i32>(-1i, -1i, 2147483647i), Struct_1(vec3<f32>(-1259f, 1584f, 589f), vec3<u32>(global1.x, 4294967295u, global1.x))), select(vec2<u32>(0u, 4294967295u), u_input.a.xz, vec2<bool>(true, false)))));
    var var_1 = func_6(-vec4<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-64432i, -1i, -1563i), vec3<i32>(1653i, -14945i, 21929i)), ~(-46426i), -71622i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-21203i, -38287i), _wgslsmith_mod_i32(51233i, -38426i))), false);
    let x = u_input.a;
    s_output = StorageBuffer(-1050f, ~_wgslsmith_mult_i32(var_1.a.d.x, -(-1i ^ var_1.a.d.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.e.a.x), -679f, -1495f) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.e.a.x, 779f, -773f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(1718f, 265f, 1294f) + vec3<f32>(var_1.a.c.a.x, var_1.a.c.a.x, var_1.a.c.a.x)), var_1.a.e.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(504f))))))));
}

