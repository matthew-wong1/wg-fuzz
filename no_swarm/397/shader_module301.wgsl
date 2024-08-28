struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: f32,
    d: bool,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: bool = false;

var<private> global2: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(vec4<u32>(19004u, 0u, 0u, 75858u), 5347u, 8291i), Struct_3(vec4<u32>(72664u, 0u, 4294967295u, 5154u), 72345u, 43418i), Struct_3(vec4<u32>(0u, 28731u, 5300u, 0u), 0u, -1i), Struct_3(vec4<u32>(17285u, 61323u, 4294967295u, 0u), 19956u, 34306i), Struct_3(vec4<u32>(55785u, 0u, 1u, 1u), 0u, 2147483647i));

var<private> global3: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(26840u, 4294967295u, 18470u), vec3<u32>(10657u, 98383u, 1u), vec3<u32>(0u, 28100u, 6960u), vec3<u32>(42472u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(0u, 12607u, 21701u), vec3<u32>(70045u, 88021u, 26060u), vec3<u32>(0u, 17772u, 1u), vec3<u32>(0u, 1u, 45516u), vec3<u32>(133649u, 19821u, 4294967295u), vec3<u32>(377u, 106461u, 20668u), vec3<u32>(0u, 55194u, 4294967295u), vec3<u32>(4294967295u, 0u, 22256u), vec3<u32>(18265u, 1u, 1u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_3 {
    return global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a, ~(0u & u_input.b)), ~abs(vec2<u32>(63239u, 69504u))), 5u)];
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = !(any(!(!vec4<bool>(false, arg_1.a.b.x, arg_1.a.b.x, false))) == !arg_1.a.b.x);
    let var_1 = vec3<bool>(arg_1.a.b.x, arg_1.a.a.x > arg_0.x, !arg_1.a.b.x);
    var var_2 = func_2();
    var_0 = arg_1.a.b.x;
    global2 = array<Struct_3, 5>();
    return _wgslsmith_mult_vec2_u32(vec2<u32>(37652u, ~139u ^ ~var_2.b) << (vec2<u32>(abs(~arg_1.a.c.x), _wgslsmith_add_u32(4294967295u, ~var_2.b)) % vec2<u32>(32u)), ~(~(vec2<u32>(arg_1.a.a.x, arg_1.a.c.x) ^ vec2<u32>(3871u, 25185u)) | var_2.a.zy));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_5, arg_2: Struct_1, arg_3: f32) -> vec4<i32> {
    let var_0 = Struct_1(vec3<u32>(reverseBits(min(_wgslsmith_div_u32(1u, arg_2.a.x), arg_2.c.x)), select(firstTrailingBit(~u_input.b), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.b, 65432u, 8423u), vec4<u32>(arg_2.c.x, 18145u, arg_2.a.x, 34320u) & vec4<u32>(4294967295u, 0u, 48403u, arg_2.c.x)), any(vec2<bool>(false, arg_2.b.x))), 1u), vec2<bool>((arg_0.x || !arg_0.x) && false, !(u_input.b > arg_2.c.x) & any(vec3<bool>(true, true, false))), arg_2.c);
    var var_1 = Struct_2(Struct_1(vec3<u32>(10121u, arg_1.e.a.c.x, 4294967295u), !vec2<bool>(any(vec4<bool>(var_0.b.x, true, var_0.b.x, arg_2.b.x)), all(arg_0)), select(~var_0.c, ~var_0.c, all(!arg_0.yyw))));
    let var_2 = Struct_4(func_2(), max(select(vec4<i32>(global0.x, ~global0.x, _wgslsmith_mod_i32(-37954i, global0.x), global0.x), _wgslsmith_mult_vec4_i32(-vec4<i32>(27869i, arg_1.b, -8317i, -1i), vec4<i32>(global0.x, -20422i, -20963i, global0.x) | vec4<i32>(arg_1.b, 2147483647i, arg_1.b, arg_1.b)), !(!arg_0)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_1.b, 18845i, global0.x, -45797i), vec4<i32>(-11130i, ~global0.x, func_2().c, -19710i), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.b, -29027i, arg_1.b, global0.x), ~vec4<i32>(44783i, 0i, arg_1.b, global0.x)))));
    let var_3 = Struct_5(Struct_2(var_1.a), -5845i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c) * 1000f), all(vec2<bool>(all(vec4<bool>(true, false, var_1.a.b.x, arg_0.x)), var_1.a.b.x)), arg_1.a);
    let var_4 = _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(5342i, -var_2.a.c)), vec2<i32>(max(_wgslsmith_div_i32(-16592i, _wgslsmith_dot_vec4_i32(var_2.b, vec4<i32>(global0.x, -15943i, -1i, 62558i))), var_3.b >> (_wgslsmith_mod_u32(0u, arg_1.e.a.a.x) % 32u)), 295i));
    return vec4<i32>(2147483647i, arg_1.b, 53041i, ~firstLeadingBit(var_3.b)) << (~_wgslsmith_mult_vec4_u32(var_2.a.a, var_2.a.a) % vec4<u32>(32u));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4, arg_3: Struct_4) -> Struct_1 {
    var var_0 = vec4<u32>(select(func_1(~(~vec3<u32>(13809u, 0u, 4294967295u)), Struct_2(Struct_1(vec3<u32>(arg_1.c.x, arg_0, arg_1.c.x), arg_1.b, vec3<u32>(arg_2.a.a.x, 64896u, arg_0)))).x, ~abs(arg_3.a.b) | _wgslsmith_clamp_u32(90355u, ~arg_0, abs(u_input.b)), any(vec4<bool>(true, !arg_1.b.x, any(arg_1.b), all(vec3<bool>(true, arg_1.b.x, false))))), arg_2.a.a.x, ~(~(~func_1(arg_3.a.a.zzy, Struct_2(arg_1)).x)), _wgslsmith_dot_vec2_u32(vec2<u32>(6180u, ~1u) << (max(arg_2.a.a.yw << (arg_1.c.xy % vec2<u32>(32u)), ~arg_3.a.a.xy) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(arg_1.c.yz, abs(vec2<u32>(1814u, 1u)))));
    global0 = ~arg_3.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(683f, 181f, 527f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, 589f, -477f) - vec3<f32>(-167f, -1964f, 1079f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-601f, -1000f, 454f) - vec3<f32>(-1000f, -1364f, 1507f)), false)))));
    global0 = arg_2.b;
    return Struct_1(_wgslsmith_mult_vec3_u32(~select(_wgslsmith_div_vec3_u32(vec3<u32>(24138u, u_input.b, 419u), arg_2.a.a.yyx), vec3<u32>(4294967295u, 4294967295u, arg_3.a.a.x), any(vec4<bool>(false, arg_1.b.x, arg_1.b.x, false))), ~vec3<u32>(4294967295u, 31802u, abs(arg_2.a.a.x))), vec2<bool>(arg_1.b.x, arg_1.b.x), ~var_0.xxw);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), reverseBits(countOneBits(vec2<u32>(u_input.b, u_input.a)))), _wgslsmith_mult_vec2_u32(~func_1(vec3<u32>(u_input.b, 24394u, 0u), Struct_2(Struct_1(global3[_wgslsmith_index_u32(u_input.a, 14u)], vec2<bool>(false, true), global3[_wgslsmith_index_u32(36159u, 14u)]))), ~vec2<u32>(45296u, 1u) >> (max(vec2<u32>(26598u, u_input.b), vec2<u32>(u_input.b, 34497u)) % vec2<u32>(32u)))), Struct_1(~(~global3[_wgslsmith_index_u32(u_input.b, 14u)]) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(28075u, 1u, 4294967295u), vec3<u32>(1u, u_input.a, 19233u)), _wgslsmith_mult_vec3_u32(global3[_wgslsmith_index_u32(u_input.a, 14u)], global3[_wgslsmith_index_u32(u_input.b, 14u)])) % vec3<u32>(32u)), select(!select(vec2<bool>(false, false), vec2<bool>(true, false), true), !select(vec2<bool>(true, true), vec2<bool>(false, false), false), !all(vec2<bool>(false, false))), _wgslsmith_sub_vec3_u32(~vec3<u32>(0u, u_input.b, u_input.b) & countOneBits(vec3<u32>(46508u, 45221u, 3605u)), ~(global3[_wgslsmith_index_u32(u_input.b, 14u)] ^ vec3<u32>(u_input.a, 58573u, u_input.a)))), Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_2().a.xx, vec2<u32>(_wgslsmith_mult_u32(u_input.a, u_input.b), _wgslsmith_mod_u32(u_input.a, u_input.b))), 5u)], ~_wgslsmith_div_vec4_i32(func_3(vec4<bool>(true, false, false, false), Struct_5(Struct_2(Struct_1(vec3<u32>(u_input.a, 4294967295u, 1u), vec2<bool>(true, true), vec3<u32>(48477u, u_input.a, 73982u))), 2147483647i, -941f, true, Struct_2(Struct_1(global3[_wgslsmith_index_u32(1u, 14u)], vec2<bool>(false, false), global3[_wgslsmith_index_u32(u_input.a, 14u)]))), Struct_1(vec3<u32>(77493u, 6649u, 45787u), vec2<bool>(false, false), global3[_wgslsmith_index_u32(u_input.a, 14u)]), 508f), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, global0.x, global0.x, -18526i), vec4<i32>(0i, global0.x, global0.x, global0.x)))), Struct_4(func_2(), (func_3(vec4<bool>(true, false, true, true), Struct_5(Struct_2(Struct_1(global3[_wgslsmith_index_u32(u_input.a, 14u)], vec2<bool>(false, true), vec3<u32>(1u, u_input.a, u_input.b))), global0.x, 852f, false, Struct_2(Struct_1(vec3<u32>(1u, u_input.b, 1u), vec2<bool>(true, false), global3[_wgslsmith_index_u32(u_input.b, 14u)]))), Struct_1(global3[_wgslsmith_index_u32(u_input.a, 14u)], vec2<bool>(false, false), global3[_wgslsmith_index_u32(u_input.a, 14u)]), -1073f) | vec4<i32>(2147483647i, global0.x, global0.x, global0.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.a, u_input.a, 31308u), vec4<u32>(u_input.b, u_input.a, 37330u, u_input.a)) % vec4<u32>(32u))));
    let var_1 = Struct_4(Struct_3(vec4<u32>(firstTrailingBit(abs(u_input.a)), _wgslsmith_clamp_u32(1u, 1u, var_0.a.x), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, var_0.a.x), _wgslsmith_mult_u32(4294967295u, u_input.a)), _wgslsmith_dot_vec2_u32(firstLeadingBit(var_0.a.zx), abs(var_0.a.xz))), u_input.a, ~firstTrailingBit(global0.x)), -min(vec4<i32>(firstLeadingBit(global0.x), ~global0.x, global0.x, global0.x), vec4<i32>(-global0.x, max(-7488i, global0.x), global0.x, abs(global0.x))));
    var var_2 = global2[_wgslsmith_index_u32(var_1.a.b, 5u)];
    var var_3 = var_1;
    global1 = true;
    global0 = reverseBits(select(var_1.b, var_3.b, !any(select(vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x), vec4<bool>(true, false, var_0.b.x, var_0.b.x), var_0.b.x))));
    var_3 = Struct_4(global2[_wgslsmith_index_u32(~var_1.a.b, 5u)], _wgslsmith_add_vec4_i32(-abs(var_3.b), -var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~5853u, _wgslsmith_clamp_u32(1u, ~var_2.a.x, func_4(var_2.a.x, Struct_1(vec3<u32>(2250u, var_2.a.x, 1u), var_0.b, global3[_wgslsmith_index_u32(var_3.a.b, 14u)]), Struct_4(var_1.a, var_3.b), var_1).a.x) & 57457u), ~vec3<i32>(_wgslsmith_dot_vec4_i32(abs(var_1.b), vec4<i32>(1i, 25217i, 0i, 1i) >> (vec4<u32>(var_2.b, 54597u, var_0.c.x, 1u) % vec4<u32>(32u))), i32(-1i) * -63188i, -7490i | var_2.c), 1166f);
}

