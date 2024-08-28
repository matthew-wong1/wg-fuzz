struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(26854i, -17800i, 2147483647i);

var<private> global1: array<bool, 9>;

var<private> global2: vec3<u32> = vec3<u32>(32704u, 76267u, 4294967295u);

var<private> global3: array<vec4<u32>, 24>;

var<private> global4: i32 = i32(-2147483648);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec4<i32> {
    let var_0 = Struct_4(_wgslsmith_dot_vec4_u32(reverseBits(select(global3[_wgslsmith_index_u32(global2.x << (global2.x % 32u), 24u)], global3[_wgslsmith_index_u32(max(0u, 93108u), 24u)], false)), ~(~(vec4<u32>(global2.x, 1u, global2.x, u_input.c) & vec4<u32>(u_input.a, global2.x, u_input.a, global2.x)))), vec4<i32>(10856i, _wgslsmith_sub_i32(1i, u_input.b & arg_0), -2147483647i, ~(-global0.x)) >> (_wgslsmith_mult_vec4_u32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(max(41956u, 1u), 1u), 24u)], ~(~vec4<u32>(1u, 4294967295u, global2.x, global2.x))) % vec4<u32>(32u)));
    let var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(13037u, 0u, var_0.a, global2.x), select(global3[_wgslsmith_index_u32(1u, 24u)], vec4<u32>(u_input.a, global2.x, 43880u, var_0.a), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 9u)], global1[_wgslsmith_index_u32(var_0.a, 9u)], true))) >> (6483u % 32u), (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 43787u, u_input.c), vec3<u32>(25142u, 35873u, u_input.c)) >> (0u % 32u)) ^ _wgslsmith_add_u32(1u, _wgslsmith_mult_u32(49128u, 57732u)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.c, var_0.a, var_0.a), vec4<u32>(global2.x, 3222u, 14338u, var_0.a)), ~reverseBits(vec4<u32>(u_input.c, 33124u, u_input.c, global2.x)))) ^ vec3<u32>(abs(_wgslsmith_add_u32(1u, var_0.a)), ~max(24233u, var_0.a) << (_wgslsmith_sub_u32(global2.x, firstLeadingBit(4294967295u)) % 32u), 5829u);
    var var_2 = Struct_2(Struct_1(vec2<bool>(true, false), 14047i), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(var_0.b.x, -4943i, 2147483647i, u_input.b)), _wgslsmith_sub_vec4_i32(vec4<i32>(global0.x, 0i, -33869i, u_input.b), var_0.b)), select(var_0.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, var_0.b.x, arg_0, -34681i), var_0.b, var_0.b), true)), abs(~vec4<i32>(global0.x, u_input.b, u_input.b, -5940i))));
    global3 = array<vec4<u32>, 24>();
    var var_3 = select(select(select(vec3<bool>(true, var_2.a.a.x, all(vec3<bool>(var_2.a.a.x, global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(0u, 9u)]))), vec3<bool>(all(vec2<bool>(true, true)), true, global1[_wgslsmith_index_u32(~global2.x, 9u)]), vec3<bool>(all(vec3<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a, 9u)])), any(vec2<bool>(true, false)), global1[_wgslsmith_index_u32(26254u, 9u)])), vec3<bool>(var_2.a.a.x, u_input.a > 7722u, all(var_2.a.a)), vec3<bool>(global1[_wgslsmith_index_u32(35344u, 9u)], false, any(vec3<bool>(false, global1[_wgslsmith_index_u32(var_1.x, 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)])) != true)), !vec3<bool>(true, true, !(!global1[_wgslsmith_index_u32(7232u, 9u)])), vec3<bool>(true, all(!vec3<bool>(var_2.a.a.x, var_2.a.a.x, false)), var_2.a.a.x));
    return var_0.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_1) -> vec2<i32> {
    global4 = -2147483647i;
    global2 = vec3<u32>(~4294967295u, 1u, max(~_wgslsmith_dot_vec2_u32(vec2<u32>(42308u, 1u), _wgslsmith_div_vec2_u32(vec2<u32>(101455u, global2.x), global2.zy)), _wgslsmith_sub_u32(~max(1u, 21450u), abs(global2.x) << (_wgslsmith_add_u32(3180u, u_input.c) % 32u))));
    global0 = ~vec3<i32>(-1i, firstTrailingBit(arg_2.b), _wgslsmith_clamp_i32(global0.x, global0.x, -2147483647i));
    let var_0 = vec4<f32>(1272f, 1000f, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1249f + -1116f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1127f) + _wgslsmith_div_f32(994f, -1841f)))));
    global1 = array<bool, 9>();
    return -global0.xx;
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(vec2<bool>(true, false), _wgslsmith_div_i32(global0.x, 1i)), abs(~(-(vec4<i32>(2147483647i, -1i, -24216i, 24399i) & vec4<i32>(global0.x, 0i, u_input.b, u_input.b)))));
    var var_1 = _wgslsmith_clamp_vec2_i32(-global0.yy, ~(-_wgslsmith_mult_vec2_i32(vec2<i32>(1455i, global0.x), var_0.b.xx)) | global0.xz, func_4(Struct_2(var_0.a, func_3(-2147483647i)), select(vec3<bool>(var_0.a.a.x, true, global1[_wgslsmith_index_u32(global2.x >> (9579u % 32u), 9u)]), vec3<bool>(true, true, true), select(var_0.a.a.x, var_0.a.a.x, false) == (u_input.b < 44995i)), Struct_1(select(select(vec2<bool>(true, false), var_0.a.a, vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 9u)])), var_0.a.a, var_0.a.a.x & false), -2147483647i)));
    var var_2 = var_0.a;
    global3 = array<vec4<u32>, 24>();
    var var_3 = var_0.a;
    return _wgslsmith_clamp_vec3_u32(firstTrailingBit(~(~vec3<u32>(4294967295u, 4294967295u, u_input.a))), abs(min(vec3<u32>(0u, u_input.a, 4294967295u), vec3<u32>(70670u, u_input.c, global2.x))) & ~(~vec3<u32>(1u, global2.x, 26432u)), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(89509u, u_input.a), ~u_input.c), 8481u, global2.x)) | vec3<u32>(39901u, global2.x, _wgslsmith_sub_u32(max(abs(0u), ~4294967295u), global2.x));
}

fn func_1() -> vec2<f32> {
    global2 = countOneBits(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(min(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, 83212u), vec3<u32>(4294967295u, 14488u, u_input.c)), vec3<u32>(52580u, global2.x, global2.x) | vec3<u32>(global2.x, global2.x, global2.x)), _wgslsmith_add_vec3_u32(~vec3<u32>(global2.x, 0u, 0u), func_2())), vec3<u32>(abs(u_input.a), 1u, 4294967295u) ^ max(abs(vec3<u32>(u_input.c, 1u, 9196u)), vec3<u32>(75297u, 0u, global2.x))));
    global3 = array<vec4<u32>, 24>();
    let var_0 = global0.x;
    var var_1 = true;
    global2 = vec3<u32>(43293u, _wgslsmith_dot_vec3_u32((countOneBits(vec3<u32>(u_input.a, global2.x, global2.x)) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, global2.x), vec3<u32>(4294967295u, global2.x, u_input.a)) % vec3<u32>(32u))) ^ ~(vec3<u32>(global2.x, global2.x, global2.x) << (vec3<u32>(global2.x, u_input.c, u_input.a) % vec3<u32>(32u))), ~(~vec3<u32>(u_input.a, 38291u, u_input.c)) & (_wgslsmith_div_vec3_u32(vec3<u32>(4683u, u_input.c, u_input.a), vec3<u32>(u_input.a, 1u, global2.x)) ^ countOneBits(vec3<u32>(11096u, 69490u, u_input.c)))), ~(~1u));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(338f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1472f, -170f, global1[_wgslsmith_index_u32(u_input.c, 9u)]))))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2507f, -1146f)))), vec2<bool>(_wgslsmith_mult_u32(u_input.c, u_input.a) != 4294967295u, false))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, -1740f) * vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-599f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-489f)), _wgslsmith_f_op_f32(f32(-1f) * -1963f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = -24605i;
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1()))));
    let var_1 = Struct_2(Struct_1(!vec2<bool>(all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 9u)], global1[_wgslsmith_index_u32(global2.x, 9u)])), global1[_wgslsmith_index_u32(select(4294967295u, u_input.c, true), 9u)]), func_3(-31846i).x), select(~vec4<i32>(1i, u_input.b, 11749i, 1505i), select(vec4<i32>(global0.x, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(global2.x, u_input.a, u_input.a, global2.x) % vec4<u32>(32u)), vec4<i32>(u_input.b, global0.x, -21293i, -2147483647i) >> (global3[_wgslsmith_index_u32(4294967295u, 24u)] % vec4<u32>(32u)), global1[_wgslsmith_index_u32(global2.x, 9u)] && global1[_wgslsmith_index_u32(0u, 9u)]), select(!vec4<bool>(global1[_wgslsmith_index_u32(15305u, 9u)], false, global1[_wgslsmith_index_u32(u_input.c, 9u)], global1[_wgslsmith_index_u32(70860u, 9u)]), vec4<bool>(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(u_input.a, 9u)], false, global1[_wgslsmith_index_u32(0u, 9u)]), true)) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.x, global0.x, u_input.b), vec3<i32>(1i, 949i, -2147483647i)), vec3<i32>(global0.x, u_input.b, u_input.b)), 1i, -2147483647i, global0.x ^ countOneBits(global0.x)));
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(step(627f, var_0.x));
    var var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1346f, var_3, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) * _wgslsmith_f_op_f32(-var_0.x))))));
    let var_5 = 4294967295u;
    let var_6 = Struct_1(var_2.a.a, countOneBits(1139i));
    let var_7 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-557f, 1136f, var_3), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 817f, var_3))), vec3<f32>(-347f, _wgslsmith_f_op_f32(ceil(-245f)), _wgslsmith_f_op_vec2_f32(func_1()).x))));
}

