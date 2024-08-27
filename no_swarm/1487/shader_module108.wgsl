struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: i32,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<vec3<bool>, 6>;

var<private> global2: Struct_3 = Struct_3(vec4<i32>(i32(-2147483648), 57945i, -1i, -26840i), Struct_2(-36501i), -1i, Struct_2(-5737i), vec3<bool>(true, true, true));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: u32) -> i32 {
    return u_input.c.x;
}

fn func_2(arg_0: bool, arg_1: vec2<i32>, arg_2: bool, arg_3: vec4<bool>) -> vec3<u32> {
    var var_0 = global2.b;
    global2 = Struct_3(vec4<i32>(func_3(Struct_4(132f, Struct_1(vec2<f32>(-1109f, -227f)), u_input.c), ~126257u, 65828u) >> (_wgslsmith_clamp_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1176u, 33377u, 23614u), vec3<u32>(25121u, 1u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 1229u), vec3<u32>(4294967295u, 4294967295u, 37630u))) % 32u), reverseBits(-6142i), ~_wgslsmith_mult_i32(25656i, -1i) & u_input.c.x, _wgslsmith_dot_vec3_i32(~(~u_input.c.xyx), _wgslsmith_mod_vec3_i32(firstLeadingBit(u_input.c.zwx), global2.a.wxz))), global2.b, ~global2.b.a, global2.b, vec3<bool>(true, true, true));
    var_0 = Struct_2(_wgslsmith_clamp_i32(var_0.a, ~1i, i32(-1i) * -1i));
    let var_1 = ~_wgslsmith_mod_i32(~_wgslsmith_sub_i32(7290i, -617i) | -global0.x, 2147483647i);
    global0 = _wgslsmith_clamp_vec3_i32(-(~firstTrailingBit(-global2.a.zyz)), -vec3<i32>(max(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, 22025i, var_0.a, 71257i), vec4<i32>(arg_1.x, global2.d.a, 2464i, 11734i))), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -21685i, global0.x, 2321i), u_input.c) ^ u_input.b.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(var_1, 2147483647i), ~global2.d.a)), min(firstTrailingBit(~u_input.c.yxw), global2.a.xzz));
    return ~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(13127u, 1u, _wgslsmith_sub_u32(29820u, _wgslsmith_dot_vec3_u32(vec3<u32>(12523u, 35880u, 0u), vec3<u32>(73647u, 21420u, 1u)))));
}

fn func_1() -> Struct_2 {
    global0 = _wgslsmith_clamp_vec3_i32(countOneBits(global2.a.wzx), abs(vec3<i32>(abs(0i), firstTrailingBit(46059i), -u_input.b.x)) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 72503u), min(vec3<u32>(20570u, 3989u, 4294967295u), vec3<u32>(4294967295u, 40442u, 77242u)), abs(vec3<u32>(0u, 4232u, 30941u))) % vec3<u32>(32u)), vec3<i32>(~31837i, ~u_input.a, abs(-2147483647i)) >> (_wgslsmith_div_vec3_u32(func_2(global2.e.x & global2.e.x, max(vec2<i32>(-26293i, -11699i), global0.zz), true, vec4<bool>(true, true, true, true)), ~select(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(41734u, 57338u, 1268u), global2.e)) % vec3<u32>(32u)));
    var var_0 = vec3<u32>(1u, 1u, 1u);
    var var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(min(select(global2.a.wz, reverseBits(u_input.b.xy), !global2.e.x), -vec2<i32>(global2.c, 1i) ^ global0.xz), _wgslsmith_div_vec2_i32(-_wgslsmith_clamp_vec2_i32(u_input.b.yx, global0.xz, vec2<i32>(global0.x, global0.x)), vec2<i32>(u_input.c.x, _wgslsmith_mult_i32(global0.x, global0.x)))), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(22462i, -global2.b.a), ~select(vec2<i32>(global2.c, u_input.b.x), vec2<i32>(12414i, global0.x), vec2<bool>(true, global2.e.x)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-104f, 164f)), _wgslsmith_f_op_f32(select(-934f, 401f, true)))), _wgslsmith_div_f32(-117f, _wgslsmith_f_op_f32(f32(-1f) * -742f)), -164f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(sign(-143f)), _wgslsmith_f_op_f32(-406f - 986f), 1000f))))));
    global0 = _wgslsmith_add_vec3_i32(~(~vec3<i32>(max(global0.x, 20628i), _wgslsmith_mult_i32(u_input.b.x, -2147483647i), _wgslsmith_mod_i32(-2147483647i, 2147483647i))), u_input.c.xyz);
    return Struct_2(~(-37290i) >> (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2.a.wxx;
    var var_0 = Struct_2(global0.x);
    let var_1 = 1839f;
    let var_2 = func_1();
    var var_3 = global2.e.x;
    var_3 = true;
    let var_4 = u_input.c.wxw;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(global2.b.a, _wgslsmith_div_i32(0i ^ -var_0.a, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-27076i, global0.x, 0i, var_2.a)), u_input.c))), _wgslsmith_add_u32(~4294967295u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(60198u, 4294967295u, 4294967295u, 8880u)), max(select(vec4<u32>(4294967295u, 0u, 1u, 9796u), vec4<u32>(0u, 9173u, 14807u, 54697u), vec4<bool>(true, true, global2.e.x, true)), ~vec4<u32>(64871u, 18731u, 4294967295u, 6647u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-383f, var_1, 1987f, 644f) * vec4<f32>(var_1, -393f, var_1, 455f)))) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1, var_1, var_1, var_1))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, 131f, 260f, var_1))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1222f, 2643f, -110f, -528f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(793f, -484f, var_1, -767f), vec4<f32>(-402f, var_1, var_1, 446f), true)))))));
}

