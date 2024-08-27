struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: bool = true;

var<private> global2: u32 = 1u;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> vec3<bool> {
    global1 = (!any(vec3<bool>(true, true, true)) | !all(vec2<bool>(true, false))) || false;
    global1 = false;
    var var_0 = Struct_3(global0[_wgslsmith_index_u32(u_input.c.x, 24u)]);
    let var_1 = Struct_3(Struct_2(vec3<bool>(true, -1000f >= _wgslsmith_f_op_f32(abs(arg_0)), true | any(vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, false))), var_0.a.b));
    var var_2 = var_1;
    return vec3<bool>(true, any(!vec2<bool>(var_1.a.a.x & var_2.a.a.x, true)), var_1.a.b.e < abs(_wgslsmith_add_u32(_wgslsmith_div_u32(var_1.a.b.e, 15276u), abs(2099u))));
}

fn func_2() -> f32 {
    global2 = 4294967295u;
    let var_0 = Struct_2(!select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(false, true, true), func_3(481f)), vec3<bool>(true, true, true), ~u_input.e.x < ~u_input.b), Struct_1(~61559i, vec2<i32>(abs(-u_input.a), ~(~u_input.a)), u_input.a, _wgslsmith_f_op_f32(trunc(1f)), 1u));
    let var_1 = Struct_1(~u_input.a, vec2<i32>(u_input.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.b.c, u_input.a, u_input.a, var_0.b.c), -vec4<i32>(-2147483647i, 1i, 5006i, -2147483647i) | vec4<i32>(-5493i, u_input.a, 37110i, u_input.a))), _wgslsmith_dot_vec4_i32(firstLeadingBit(min(vec4<i32>(var_0.b.a, -5233i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, var_0.b.b.x, -15965i))), select(vec4<i32>(2448i, -17923i, -6572i, var_0.b.b.x), -vec4<i32>(u_input.a, 9976i, u_input.a, 2147483647i), vec4<bool>(var_0.a.x, false, false, true))) & var_0.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(514f))), ~_wgslsmith_clamp_u32(1u, var_0.b.e, ~var_0.b.e));
    global0 = array<Struct_2, 24>();
    var var_2 = Struct_3(var_0);
    return _wgslsmith_f_op_f32(floor(1944f));
}

fn func_1() -> vec4<i32> {
    var var_0 = Struct_1(i32(-1i) * -15320i, -_wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.a, -33148i)), select(~vec2<i32>(u_input.a, -2147483647i), vec2<i32>(1i, 1i), true)), u_input.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1252f), _wgslsmith_f_op_f32(func_2()))), _wgslsmith_add_u32(u_input.b, _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, 0u)))));
    var var_1 = Struct_3(Struct_2(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), Struct_1(_wgslsmith_div_i32(var_0.a, firstLeadingBit(2147483647i)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, var_0.a), ~var_0.b), -2147483647i, _wgslsmith_f_op_f32(f32(-1f) * -1073f), u_input.c.x)));
    let var_2 = vec2<f32>(-781f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b.d)), var_1.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.d - var_1.a.b.d), _wgslsmith_f_op_f32(round(-476f)))))));
    let var_3 = var_1.a;
    var_0 = var_3.b;
    return vec4<i32>(max(~max(-63314i ^ var_0.c, 7041i ^ var_0.b.x), -abs(abs(var_0.a))), 42651i, ~_wgslsmith_div_i32(u_input.a, var_3.b.c), ~(-var_0.b.x));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool) -> i32 {
    global1 = arg_1;
    let var_0 = vec3<bool>(all(!(!vec4<bool>(true, arg_1, arg_1, arg_1))), arg_1, !(firstLeadingBit(firstLeadingBit(1u)) <= ~max(u_input.d.x, 4294967295u)));
    let var_1 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, abs(-1i)), arg_0.x), arg_0.zyw), abs(vec2<i32>(u_input.a, ~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, 1i), arg_0.wz))), u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(174f + 822f)), ~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.e.x, 1u, 23326u, u_input.d.x)), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, 40086u, 82567u, u_input.d.x)), vec4<u32>(u_input.d.x, u_input.c.x, u_input.e.x, 1u))));
    var var_2 = global0[_wgslsmith_index_u32(35267u, 24u)];
    let var_3 = Struct_1(arg_0.x >> ((_wgslsmith_sub_u32(8168u, 4294967295u ^ u_input.c.x) << (~var_2.b.e % 32u)) % 32u), ~_wgslsmith_mult_vec2_i32(select(var_2.b.b, var_2.b.b, !var_0.x), _wgslsmith_sub_vec2_i32(var_1.b, arg_0.xz) << (~vec2<u32>(9869u, var_1.e) % vec2<u32>(32u))), 0i, _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_dot_vec3_u32(reverseBits(select(reverseBits(u_input.c.wxy), vec3<u32>(1u, 27649u, 15770u), all(var_0))), ~(~abs(vec3<u32>(u_input.c.x, 40766u, 1u)))));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(19698i, ~u_input.a, -3619i, func_4(func_1(), u_input.a < u_input.a)) | (vec4<i32>(2147483647i, u_input.a & -10363i, _wgslsmith_mod_i32(u_input.a, u_input.a), u_input.a) ^ -(~vec4<i32>(u_input.a, -20490i, u_input.a, 3226i))), vec4<i32>(4590i, 1i, _wgslsmith_sub_i32(~select(u_input.a, 1i, true), _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, -2147483647i, u_input.a)), vec3<i32>(2147483647i, u_input.a, u_input.a))), -2147483647i));
    let var_2 = Struct_3(Struct_2(!vec3<bool>(true, 47681u == var_0, var_0 < 32437u), Struct_1(reverseBits(-u_input.a), vec2<i32>(27018i, var_1.x), var_1.x, 1f, abs(_wgslsmith_add_u32(0u, var_0)))));
    var var_3 = var_2.a.b;
    let var_4 = var_3.b.x > _wgslsmith_mult_i32(var_3.b.x, ~min(2147483647i, _wgslsmith_mod_i32(515i, 2147483647i)));
    let var_5 = -1i;
    var var_6 = var_3.e;
    var var_7 = !(!any(var_2.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_sub_u32(var_2.a.b.e, 39429u) << (var_3.e % 32u), select(4294967295u, var_0, var_2.a.a.x), 50189u, countOneBits(24282u)), var_0, var_1);
}

