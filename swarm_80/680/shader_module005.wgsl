struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_5 {
    a: u32,
    b: vec4<u32>,
    c: vec4<f32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, false);

var<private> global1: array<bool, 24> = array<bool, 24>(true, true, false, true, false, true, false, true, true, false, true, true, true, false, true, false, false, true, false, false, false, false, false, true);

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_2(arg_0: vec4<i32>) -> i32 {
    return i32(-1i) * -54988i;
}

fn func_3() -> vec3<u32> {
    var var_0 = reverseBits(i32(-1i) * -9380i);
    let var_1 = 35745i;
    var_0 = u_input.d;
    var var_2 = Struct_5(~u_input.b, vec4<u32>(36977u, ~4294967295u, u_input.a.x, u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1048f, 1584f, -584f, 261f))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-962f, -1890f, 104f, -2313f) - vec4<f32>(1000f, -2038f, -101f, -835f)))))), Struct_1(all(vec3<bool>(!global0.x, global0.x, all(vec3<bool>(true, global0.x, global1[_wgslsmith_index_u32(21309u, 24u)]))))), u_input.b);
    let var_3 = true;
    return var_2.b.wzz;
}

fn func_1() -> u32 {
    let var_0 = -512f;
    global1 = array<bool, 24>();
    let var_1 = -1119f;
    var var_2 = false;
    var var_3 = Struct_4(vec4<i32>(u_input.d, func_2(abs(-vec4<i32>(-49650i, -19777i, u_input.d, u_input.d))), ~1i, u_input.d), 2147483647i);
    return _wgslsmith_dot_vec3_u32(vec3<u32>(min(u_input.b, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.b))), _wgslsmith_dot_vec3_u32((vec3<u32>(u_input.c.x, 27059u, 4294967295u) << (vec3<u32>(0u, 48376u, 4294967295u) % vec3<u32>(32u))) << (~vec3<u32>(u_input.a.x, u_input.a.x, u_input.b) % vec3<u32>(32u)), reverseBits(vec3<u32>(u_input.a.x, 1u, u_input.b))), max(_wgslsmith_clamp_u32(0u, 4294967295u, min(0u, u_input.a.x)), _wgslsmith_mult_u32(u_input.b, abs(1u)))), func_3());
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: vec4<u32>) -> vec4<f32> {
    var var_0 = Struct_4(_wgslsmith_sub_vec4_i32(firstTrailingBit(~vec4<i32>(arg_2.x, -2147483647i, 0i, arg_0)), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0, u_input.d, arg_2.x, 7256i) ^ vec4<i32>(-35257i, arg_0, arg_0, arg_2.x), -vec4<i32>(arg_0, 32981i, u_input.d, arg_2.x))) >> (arg_3 % vec4<u32>(32u)), 1i);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1491f, -1000f), 1217f)));
    var var_2 = Struct_5(_wgslsmith_sub_u32(u_input.b, 4294967295u), ~arg_3, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1599f, var_1.x, 1453f, var_1.x))))))), Struct_1(global0.x), abs(func_3().x));
    global1 = array<bool, 24>();
    var var_3 = select(!vec3<bool>(true, select(true, true, false), global1[_wgslsmith_index_u32(arg_1.x | 1u, 24u)] | select(true, true, global1[_wgslsmith_index_u32(21793u, 24u)])), select(vec3<bool>(all(!vec4<bool>(global0.x, true, global1[_wgslsmith_index_u32(arg_3.x, 24u)], false)), true, select(true, true, false)), select(select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 24u)], false, var_2.d.a), vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 24u)], true, false), select(vec3<bool>(true, false, var_2.d.a), vec3<bool>(var_2.d.a, true, false), vec3<bool>(var_2.d.a, false, false))), select(select(vec3<bool>(true, var_2.d.a, global0.x), vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 24u)], true), vec3<bool>(true, false, false)), select(vec3<bool>(global1[_wgslsmith_index_u32(arg_1.x, 24u)], false, global1[_wgslsmith_index_u32(1u, 24u)]), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 24u)], true, global1[_wgslsmith_index_u32(arg_1.x, 24u)]), global0.x), select(vec3<bool>(false, global1[_wgslsmith_index_u32(var_2.b.x, 24u)], global0.x), vec3<bool>(global1[_wgslsmith_index_u32(57697u, 24u)], false, false), false)), vec3<bool>(any(vec3<bool>(global0.x, true, false)), true, select(global1[_wgslsmith_index_u32(arg_3.x, 24u)], true, true))), select(select(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 24u)], global1[_wgslsmith_index_u32(53538u, 24u)]), !vec3<bool>(false, var_2.d.a, global0.x), true), !(!vec3<bool>(var_2.d.a, global0.x, true)), select(!vec3<bool>(var_2.d.a, var_2.d.a, true), select(vec3<bool>(true, global0.x, global1[_wgslsmith_index_u32(var_2.a, 24u)]), vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(1u, 24u)]), true))), !vec3<bool>(global1[_wgslsmith_index_u32(arg_3.x, 24u)], false, global1[_wgslsmith_index_u32(~u_input.a.x, 24u)]));
    return vec4<f32>(1f, var_2.c.x, var_2.c.x, _wgslsmith_f_op_f32(var_2.c.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -356f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_2.c.x)), 1107f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~77973u);
    let var_1 = _wgslsmith_f_op_vec4_f32(func_4(-42948i, ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, func_1()), vec2<u32>(~u_input.b, u_input.a.x)), _wgslsmith_add_vec2_i32(~(-_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -20120i), vec2<i32>(u_input.d, 0i))), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, _wgslsmith_sub_i32(u_input.d, u_input.d)), vec2<i32>(u_input.d, -19446i))), countOneBits(min(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, 1u, u_input.c.x, 0u), countOneBits(vec4<u32>(u_input.c.x, 0u, u_input.b, u_input.a.x))), ~(~vec4<u32>(u_input.b, u_input.a.x, u_input.b, u_input.c.x))))));
    var var_2 = Struct_3(_wgslsmith_sub_i32(_wgslsmith_add_i32(~_wgslsmith_mod_i32(-1i, u_input.d), _wgslsmith_dot_vec2_i32(-vec2<i32>(28701i, u_input.d), abs(vec2<i32>(18960i, 2147483647i)))), u_input.d), Struct_2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_1.yy * vec2<f32>(621f, 856f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.zy * var_1.zx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1440f, -1695f)), global1[_wgslsmith_index_u32(u_input.a.x, 24u)] | global1[_wgslsmith_index_u32(u_input.c.x, 24u)])))), any(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(1u, 24u)], global0.x, global0.x))), Struct_1(_wgslsmith_f_op_f32(-var_1.x) > _wgslsmith_f_op_f32(679f - -2383f)), Struct_1(select(4294967295u, 4294967295u, false) < (u_input.b | u_input.a.x)), max(~(~1u), _wgslsmith_dot_vec2_u32(func_3().yz, vec2<u32>(u_input.b, u_input.b)))));
    var var_3 = vec3<f32>(405f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-485f)), var_1.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-490f, _wgslsmith_f_op_f32(select(280f, 2502f, true)))))), var_1.x);
    let var_4 = Struct_4(~(vec4<i32>(firstLeadingBit(u_input.d), ~0i, min(var_2.a, 1509i), _wgslsmith_mod_i32(var_2.a, -19802i)) >> (~(~vec4<u32>(3195u, 0u, 1u, 4294967295u)) % vec4<u32>(32u))), u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~func_2(var_4.a) ^ -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -2147483647i, 7946i), vec3<i32>(var_2.a, var_4.b, 2147483647i)), u_input.d, max(u_input.d, ~u_input.d)));
}

