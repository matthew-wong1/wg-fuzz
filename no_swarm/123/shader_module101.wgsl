struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: vec2<f32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<i32> = vec4<i32>(36708i, -1i, 0i, -24134i);

var<private> global2: array<vec4<i32>, 23>;

var<private> global3: array<vec4<bool>, 3>;

var<private> global4: vec2<f32> = vec2<f32>(702f, 1003f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = !vec4<bool>(true, any(vec2<bool>(global0.c.b, true)), false, select(all(vec2<bool>(arg_0.c.a, false)) && (global0.b.e || arg_0.b.a), false, global0.b.b));
    global1 = vec4<i32>(_wgslsmith_dot_vec3_i32(~u_input.a & max(u_input.a, u_input.a & global1.yzy), arg_0.a << (vec3<u32>(~4294967295u, 0u, _wgslsmith_add_u32(u_input.b.x, 4294967295u)) % vec3<u32>(32u))), 0i, ~_wgslsmith_mult_i32(-u_input.a.x, global1.x), 0i);
    let var_1 = global0.a.zy;
    global4 = global0.c.d;
    global0 = arg_0;
    return 0u;
}

fn func_2(arg_0: Struct_2) -> u32 {
    global3 = array<vec4<bool>, 3>();
    global2 = array<vec4<i32>, 23>();
    global1 = _wgslsmith_div_vec4_i32(vec4<i32>(~(-(~(-24284i))), 2147483647i, abs(u_input.a.x), global1.x << (func_3(Struct_2(vec3<i32>(35953i, u_input.a.x, global1.x), Struct_1(true, false, global0.c.b, vec2<f32>(1000f, 1362f), true), Struct_1(global0.c.a, true, false, global0.b.d, false))) % 32u)), vec4<i32>(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(0i, 0i)), ~(~vec2<i32>(arg_0.a.x, -22310i))), -14919i, 35853i, global1.x));
    global0 = Struct_2(u_input.a, Struct_1(select(any(vec3<bool>(global0.c.b, false, false)), true, global0.b.b), select(!arg_0.b.c, all(select(vec3<bool>(true, false, arg_0.b.b), vec3<bool>(true, arg_0.c.a, global0.b.e), true)), !all(vec2<bool>(global0.c.c, false))), global0.c.e, arg_0.b.d, all(select(vec3<bool>(true, global0.c.e, true), vec3<bool>(false, global0.b.e, true), vec3<bool>(true, false, true))) & ((0u << (u_input.c.x % 32u)) != 0u)), arg_0.c);
    var var_0 = Struct_1(true, global0.b.e, true, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.d.x), global4.x) + _wgslsmith_f_op_f32(383f * 949f)), 764f), true);
    return ~u_input.c.x;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_mult_i32(reverseBits(_wgslsmith_add_i32(1i, _wgslsmith_sub_i32(1i, 39205i) ^ global0.a.x)), -39016i);
    let var_1 = global0.c;
    global2 = array<vec4<i32>, 23>();
    global1 = vec4<i32>(-_wgslsmith_mult_i32(max(var_0, global1.x), firstLeadingBit(global0.a.x)), 0i, max(select(0i, -7599i, var_1.b), max(0i, global1.x)) << (u_input.b.x % 32u), u_input.a.x) << ((~reverseBits(vec4<u32>(0u, 56960u, u_input.c.x, 0u)) & ((vec4<u32>(0u, 1u, u_input.c.x, 56013u) & abs(vec4<u32>(6608u, u_input.b.x, arg_0.x, u_input.c.x))) << (vec4<u32>(~u_input.c.x, ~arg_0.x, 34410u, u_input.b.x) % vec4<u32>(32u)))) % vec4<u32>(32u));
    let var_2 = arg_1;
    return global0.b;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<bool>) -> u32 {
    let var_0 = vec2<i32>(-69427i, ~(-32363i));
    var var_1 = !(!vec3<bool>(all(!arg_2.ywy), true, false));
    let var_2 = u_input.c.x;
    let var_3 = func_4(vec2<u32>(1u ^ func_2(arg_1), ~(var_2 & ~4294967295u)), global3[_wgslsmith_index_u32(15576u, 3u)]);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.d.x, _wgslsmith_div_f32(global0.b.d.x, 2057f), _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(749f - -1000f)) + vec4<f32>(714f, _wgslsmith_f_op_f32(-global4.x), global4.x, _wgslsmith_f_op_f32(-600f + 1046f))) + vec4<f32>(236f, 315f, global0.b.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(select(-893f, global4.x, true))))));
    var var_1 = -696f;
    var var_2 = _wgslsmith_clamp_vec2_u32(u_input.c, ~(~vec2<u32>(u_input.c.x, u_input.c.x) << (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 59893u) << (vec2<u32>(u_input.b.x, u_input.c.x) % vec2<u32>(32u)), firstTrailingBit(u_input.b)) % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c.x, func_1(vec4<u32>(10043u, u_input.b.x, 25585u, 1u) >> (vec4<u32>(u_input.c.x, 1u, 0u, u_input.b.x) % vec4<u32>(32u)), Struct_2(u_input.a, Struct_1(true, false, false, global0.b.d, global0.b.a), Struct_1(global0.c.b, false, global0.b.b, vec2<f32>(global0.c.d.x, var_0.x), false)), vec4<bool>(false, global0.b.e, true, global0.c.a))), u_input.b));
    global0 = Struct_2(vec3<i32>(global1.x << (~firstTrailingBit(var_2.x) % 32u), global1.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.x, u_input.a.x, u_input.a.x), vec3<i32>(global0.a.x, -26230i, u_input.a.x)) | min(_wgslsmith_mod_i32(global0.a.x, global1.x), i32(-1i) * -19187i)), Struct_1(global0.a.x != global0.a.x, all(vec3<bool>(true, true, true)), !func_4(vec2<u32>(118697u, 0u) ^ u_input.b, vec4<bool>(global0.b.c, global0.b.e, global0.c.c, true)).c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x)) - _wgslsmith_f_op_vec2_f32(min(var_0.wx, global0.b.d))), select(all(select(vec3<bool>(false, global0.b.a, true), vec3<bool>(false, global0.b.c, false), global0.c.b)), false, true)), global0.c);
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.c.d.x - _wgslsmith_f_op_f32(trunc(-153f)))));
    var var_4 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-378i, global0.a.x, -53502i, u_input.a.x) >> (vec4<u32>(var_2.x, 0u, var_2.x, 4294967295u) % vec4<u32>(32u)), global2[_wgslsmith_index_u32(72894u, 23u)]) ^ vec4<i32>(_wgslsmith_clamp_i32(global1.x, min(3206i, global0.a.x), -u_input.a.x), 58467i, global1.x, ~(u_input.a.x << (var_2.x % 32u))), global2[_wgslsmith_index_u32(4294967295u & ~func_3(Struct_2(global0.a, Struct_1(global0.b.e, global0.b.c, true, var_0.wx, true), Struct_1(true, true, global0.b.e, vec2<f32>(global0.c.d.x, 1011f), global0.b.c))), 23u)]);
    var var_5 = func_4(u_input.b, global3[_wgslsmith_index_u32(u_input.b.x, 3u)]);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(-1i) * -vec3<i32>(u_input.a.x, global1.x, 2147483647i)), _wgslsmith_add_i32(0i, u_input.a.x & abs(28334i)) | -_wgslsmith_mult_i32(global1.x, u_input.a.x), _wgslsmith_div_i32(44945i, countOneBits(global1.x)), select(~(~vec3<u32>(var_2.x, u_input.c.x, var_2.x)), ~(~(vec3<u32>(1u, var_2.x, u_input.b.x) << (vec3<u32>(36730u, u_input.b.x, var_2.x) % vec3<u32>(32u)))), func_4((u_input.b & u_input.c) >> (min(vec2<u32>(40771u, 4294967295u), u_input.b) % vec2<u32>(32u)), select(select(vec4<bool>(global0.b.b, var_5.e, global0.c.c, global0.b.a), global3[_wgslsmith_index_u32(1u, 3u)], global0.b.e), vec4<bool>(global0.c.c, var_5.a, var_5.b, global0.c.b), vec4<bool>(false, false, var_5.c, false))).e));
}

