struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_4,
    c: vec3<f32>,
    d: vec4<f32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
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

var<private> global0: array<f32, 10>;

var<private> global1: array<f32, 15>;

var<private> global2: array<vec3<bool>, 19>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<i32>) -> vec2<u32> {
    global2 = array<vec3<bool>, 19>();
    global2 = array<vec3<bool>, 19>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 49507u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u)), 15u)] + _wgslsmith_f_op_f32(ceil(-1000f))) + _wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(4294967295u, 15u)], _wgslsmith_f_op_f32(-1518f * _wgslsmith_f_op_f32(trunc(344f)))))));
    global2 = array<vec3<bool>, 19>();
    global1 = array<f32, 15>();
    return ~_wgslsmith_mult_vec2_u32(reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(1u, u_input.b))) << (~(~vec2<u32>(u_input.b, 0u)) % vec2<u32>(32u)), firstTrailingBit(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(17832u, 0u), vec2<u32>(u_input.b, 70732u)))));
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> bool {
    var var_0 = arg_0;
    var var_1 = arg_0;
    var var_2 = Struct_4(Struct_3(Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, arg_0), vec3<u32>(0u, 30503u, 4883u)), 10u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.b), 10u)]), vec2<i32>(-1i) * -u_input.a.xy, false), Struct_1(_wgslsmith_f_op_vec2_f32(step(arg_1.xz, _wgslsmith_f_op_vec2_f32(vec2<f32>(1213f, global1[_wgslsmith_index_u32(u_input.b, 15u)]) - vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 15u)], global1[_wgslsmith_index_u32(u_input.b, 15u)])))), u_input.a.xz, all(!global2[_wgslsmith_index_u32(u_input.b, 19u)]))));
    global2 = array<vec3<bool>, 19>();
    let var_3 = Struct_4(var_2.a);
    return true;
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    let var_0 = Struct_5(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(u_input.b, 15u)])))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.x, arg_0.x)))), _wgslsmith_sub_vec2_i32(~u_input.a.yx | min(u_input.a.xy, vec2<i32>(-22380i, u_input.a.x)), ~(~vec2<i32>(u_input.c, u_input.c))), true), Struct_4(Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.yz), abs(u_input.a.yy), true), Struct_1(vec2<f32>(1031f, global0[_wgslsmith_index_u32(4294967295u, 10u)]), _wgslsmith_mult_vec2_i32(u_input.a.yy, vec2<i32>(-1i, -1i)), any(vec4<bool>(true, true, true, true))))), arg_0, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1624f, -1294f, 722f, -1615f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-381f, 311f, 457f, 345f) + vec4<f32>(global1[_wgslsmith_index_u32(35103u, 15u)], global0[_wgslsmith_index_u32(u_input.b, 10u)], global1[_wgslsmith_index_u32(23801u, 15u)], 627f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) * vec4<f32>(arg_0.x, -473f, -736f, 641f)))))), Struct_4(Struct_3(Struct_1(arg_0.yz, u_input.a.zy ^ vec2<i32>(u_input.c, -2147483647i), all(vec3<bool>(true, true, false))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(393f, global1[_wgslsmith_index_u32(u_input.b, 15u)])), -u_input.a.xy, true))));
    var var_1 = var_0;
    var var_2 = Struct_2(false, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(74671u, 15u)], -622f)) + vec2<f32>(-526f, arg_0.x)), vec2<i32>(var_1.b.a.a.b.x, -6061i), !(!func_3(u_input.b, vec3<f32>(var_0.e.a.a.a.x, -1026f, global1[_wgslsmith_index_u32(25385u, 15u)])))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 204f) * var_1.c.yz))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.a.b.a))), firstTrailingBit(vec2<i32>(var_0.e.a.b.b.x, firstLeadingBit(19540i))), var_0.b.a.a.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1217f), arg_0.x))) + var_0.a.a.x), global1[_wgslsmith_index_u32(~(~u_input.b), 15u)]);
    let var_3 = var_1.e.a.a.c;
    var_1 = Struct_5(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1186f * var_0.c.x)), _wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 15u)]))), var_1.e.a.b.b, true), var_0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.b << (4294967295u % 32u), 15u)], -360f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))), var_0.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.d)), _wgslsmith_f_op_vec4_f32(select(var_1.d, vec4<f32>(var_0.e.a.b.a.x, 664f, var_2.c.a.x, -1048f), var_2.c.c))))), var_0.e);
    return global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(120089u, ~max(~22091u, u_input.b)), 10u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.a.x, -2147483647i, u_input.a.x), ~(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, 22768i, u_input.a.x, u_input.a.x), -vec4<i32>(u_input.a.x, u_input.a.x, 0i, u_input.a.x)) & -(vec4<i32>(-2147483647i, 0i, u_input.c, u_input.a.x) ^ vec4<i32>(1i, -61959i, u_input.a.x, u_input.a.x))));
    global0 = array<f32, 10>();
    let var_1 = Struct_2(all(global2[_wgslsmith_index_u32(4294967295u, 19u)]), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(32970u, 15u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 15u)] - global0[_wgslsmith_index_u32(u_input.b, 10u)]))), ~u_input.a.xz, abs(u_input.b) == 18673u), Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1231f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 10u)])), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-288f, global0[_wgslsmith_index_u32(u_input.b, 10u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(434f, 1000f) + vec2<f32>(global1[_wgslsmith_index_u32(23908u, 15u)], global0[_wgslsmith_index_u32(44846u, 10u)]))))), u_input.a.yy, false), -1699f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b, u_input.b), 10u)])), 516f)));
    var var_2 = var_1.b.c;
    let var_3 = 1u;
    var var_4 = _wgslsmith_dot_vec2_u32(vec2<u32>(~var_3, ~(~13324u) >> (u_input.b % 32u)), min(_wgslsmith_mult_vec2_u32(min(firstTrailingBit(vec2<u32>(37876u, u_input.b)), min(vec2<u32>(27522u, 37508u), vec2<u32>(var_3, 4294967295u))), func_1(select(vec2<bool>(var_1.c.c, false), vec2<bool>(var_1.c.c, var_1.c.c), var_1.a), select(vec4<i32>(12801i, u_input.a.x, var_1.c.b.x, -2147483647i), vec4<i32>(-1i, u_input.c, u_input.a.x, -1i), var_1.c.c))), vec2<u32>(_wgslsmith_add_u32(~4294967295u, countOneBits(u_input.b)), ~_wgslsmith_clamp_u32(var_3, u_input.b, 1u))));
    let var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.c.a.x)) + global0[_wgslsmith_index_u32(var_3, 10u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<f32>(global1[_wgslsmith_index_u32(0u, 15u)], var_1.b.a.x, -984f))))))), _wgslsmith_sub_vec2_i32(~(-firstTrailingBit(vec2<i32>(u_input.a.x, 20126i))), vec2<i32>(-u_input.c | var_1.b.b.x, 39603i)), var_1.b.c);
    let var_6 = Struct_4(Struct_3(var_1.c, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b.a)), ~firstTrailingBit(vec2<i32>(-22886i, var_1.c.b.x)), true | var_5.c)));
    var var_7 = _wgslsmith_div_vec4_u32(~(vec4<u32>(max(1u, 0u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 59855u), vec2<u32>(u_input.b, 36840u)), _wgslsmith_div_u32(4294967295u, 16881u)) & ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_3, 22716u, u_input.b, var_3), vec4<u32>(var_3, u_input.b, 4294967295u, 22752u), vec4<u32>(u_input.b, 1u, u_input.b, 18465u))), firstLeadingBit(reverseBits(~vec4<u32>(var_3, 18386u, u_input.b, u_input.b))) << (min(select(~vec4<u32>(1u, 0u, 13924u, u_input.b), _wgslsmith_sub_vec4_u32(vec4<u32>(29607u, u_input.b, var_3, u_input.b), vec4<u32>(u_input.b, 45215u, var_3, var_3)), true), min(vec4<u32>(var_3, 4294967295u, 1u, var_3), vec4<u32>(u_input.b, u_input.b, var_3, u_input.b))) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(var_7.x, 15u)], var_5.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2392f))), var_6.a.a.a.x, var_6.a.a.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_6.a.a.a.x, var_5.a.x, 1000f, 192f), vec4<f32>(778f, var_5.a.x, 470f, global1[_wgslsmith_index_u32(u_input.b, 15u)])), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(u_input.b, 10u)], var_6.a.a.a.x, var_6.a.a.a.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(var_3, 15u)], 1832f, 1000f, 591f)) + vec4<f32>(var_5.a.x, 143f, var_1.d, global0[_wgslsmith_index_u32(1u, 10u)]))))));
}

