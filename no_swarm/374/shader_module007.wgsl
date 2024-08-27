struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10>;

var<private> global1: array<Struct_4, 9>;

var<private> global2: i32;

var<private> global3: bool = false;

var<private> global4: Struct_4;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(abs(arg_0.d.a.xww));
}

fn func_2() -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_3(Struct_1(vec4<u32>(u_input.e, u_input.b, u_input.b, u_input.b)), u_input.e, -2740f, Struct_2(vec4<f32>(594f, -330f, -407f, 922f), 1686f))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1859f, 1000f, -137f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-380f, 1099f, 1030f)))) - vec3<f32>(_wgslsmith_div_f32(281f, 453f), _wgslsmith_f_op_f32(f32(-1f) * -212f), -1356f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(251f, -857f), -697f, _wgslsmith_f_op_f32(sign(-1225f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1591f, -529f, 490f)))), any(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, false, false), true)))));
    global0 = array<Struct_4, 10>();
    let var_1 = 750f;
    let var_2 = global1[_wgslsmith_index_u32(3871u, 9u)];
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -606f) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 253f)), _wgslsmith_f_op_f32(f32(-1f) * -1209f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(682f - _wgslsmith_f_op_f32(-var_0.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 288f) + var_1), _wgslsmith_f_op_f32(-var_0.x));
    return vec4<bool>(all(vec2<bool>(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-var_0.x) > var_0.x)), true, all(select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true))), vec3<bool>(all(vec2<bool>(true, true)), true, true), any(select(vec2<bool>(false, true), vec2<bool>(true, false), false)))), !(1u < abs(var_2.a)) & !((24636u | u_input.b) < firstLeadingBit(u_input.b)));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = u_input.c ^ vec3<i32>(arg_0, _wgslsmith_add_i32(u_input.d, ~max(-1i, arg_0)), ~u_input.a.x);
    let var_1 = select(vec3<bool>(true, arg_0 >= 2147483647i, !any(func_2())), func_2().wxw, global4.a <= global4.a);
    let var_2 = Struct_3(Struct_1(_wgslsmith_div_vec4_u32(select(~vec4<u32>(u_input.b, 51499u, global4.a, 30587u), ~vec4<u32>(11962u, global4.a, 23579u, u_input.e), select(var_1.x, var_1.x, var_1.x)), ~vec4<u32>(1u, global4.a, u_input.e, 36718u) | vec4<u32>(u_input.b, u_input.e, u_input.e, u_input.e))), (0u >> (global4.a % 32u)) >> ((61236u << (u_input.b % 32u)) % 32u), 1f, Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-389f, 304f, -975f, -147f) - vec4<f32>(149f, -126f, -551f, 1858f)), vec4<f32>(204f, -1703f, 602f, 521f))), 503f));
    global4 = global0[_wgslsmith_index_u32(~4294967295u, 10u)];
    let var_3 = firstLeadingBit(_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(u_input.a.x, var_0.x, 13943i, -1i)), (vec4<i32>(43376i, arg_0, 1237i, u_input.d) << (_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.b, 15232u, 150847u, 4294967295u), vec4<u32>(1u, 0u, 24182u, 1u)) % vec4<u32>(32u))) & ~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, -1i, -4340i, arg_0), vec4<i32>(arg_0, -1i, arg_0, arg_0)), vec4<i32>(i32(-1i) * -1i, i32(-1i) * -2147483647i, var_0.x, ~_wgslsmith_clamp_i32(2147483647i, arg_0, u_input.a.x))));
    return 19717i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 10>();
    global3 = true;
    let var_0 = vec3<i32>(func_1(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.d), vec4<i32>(u_input.a.x, u_input.a.x, -1i, u_input.c.x))) << ((0u >> (_wgslsmith_sub_u32(u_input.e, 0u) % 32u)) % 32u), ~(-(~u_input.c.x)), (u_input.d >> (24072u % 32u)) ^ -_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(u_input.d, -2147483647i, u_input.a.x))) >> ((_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(0u, u_input.e, global4.a)), vec3<u32>(33069u, 1u, global4.a) << (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.e, 27232u, 24223u), vec3<u32>(u_input.b, global4.a, 43960u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.e, 4294967295u, 23029u), vec3<u32>(global4.a, u_input.b, 62558u))) << (firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, 0u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    global3 = true;
    var var_1 = !all(func_2().zz);
    var var_2 = Struct_4(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(abs(u_input.e), 0u, select(_wgslsmith_mult_u32(global4.a, global4.a), 19583u & global4.a, true)), u_input.b));
    var var_3 = vec2<bool>(all(!vec4<bool>(true, all(vec3<bool>(false, true, false)), true, any(vec2<bool>(true, false)))), max(-2147483647i, var_0.x) <= firstTrailingBit(_wgslsmith_sub_i32(0i, i32(-1i) * -8725i)));
    var_3 = select(func_2().xy, func_2().yy, !(!select(vec2<bool>(false, var_3.x), !vec2<bool>(false, var_3.x), any(vec4<bool>(var_3.x, false, var_3.x, var_3.x)))));
    var var_4 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(-abs(var_0.x));
}

