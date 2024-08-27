struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(-1024f, vec4<bool>(false, true, false, true), i32(-2147483648), Struct_2(vec4<i32>(0i, -12371i, 8496i, 765i), 185f, 1106f, vec2<i32>(-81552i, 17206i), vec4<f32>(966f, -760f, 1795f, -587f)), vec2<f32>(181f, 1222f)));

var<private> global2: vec4<f32>;

var<private> global3: array<Struct_1, 11>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> i32 {
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(339f * _wgslsmith_f_op_f32(-2063f * arg_0.e.x))), 607f, -745f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + arg_0.e.x)))))));
    let var_0 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-866f + _wgslsmith_f_op_f32(max(-1573f, 1935f))), arg_0.b))), !vec4<bool>(select(!arg_1, true, true), !arg_1, (u_input.b ^ 11858u) > (u_input.c.x << (15423u % 32u)), !arg_1 != select(false, arg_2.a.x, true)), -_wgslsmith_add_i32(arg_0.a.x, 0i), Struct_2(vec4<i32>(arg_0.d.x, firstTrailingBit(-arg_0.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(arg_0.a, vec4<i32>(-58964i, arg_0.a.x, 0i, arg_0.a.x)), vec4<i32>(52440i, -2147483647i, -7113i, -2147483647i)), ~(~arg_0.d.x)), global2.x, global2.x, vec2<i32>(firstTrailingBit(arg_0.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 67815i, arg_0.a.x, arg_0.a.x), vec4<i32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, arg_0.a.x))) | vec2<i32>(_wgslsmith_clamp_i32(2147483647i, -51689i, -2147483647i), 5248i), _wgslsmith_f_op_vec4_f32(floor(arg_0.e))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_0.e.xz * vec2<f32>(-1000f, arg_0.e.x)))))))));
    var var_1 = u_input.a;
    global1 = array<Struct_3, 1>();
    return _wgslsmith_div_i32(arg_0.d.x, 1i) | arg_0.a.x;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_3) -> u32 {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(432f, _wgslsmith_div_f32(global2.x, arg_2.e.x), -764f, _wgslsmith_f_op_f32(-global2.x))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.d.b, -546f, global2.x, -415f))) + vec4<f32>(-553f, arg_0.c, -1504f, 360f))))));
    var var_0 = arg_0.e;
    var var_1 = Struct_4(_wgslsmith_sub_vec3_u32(vec3<u32>(~_wgslsmith_mult_u32(1u, 2306u), u_input.a.x, ~firstLeadingBit(u_input.a.x)), u_input.a));
    return _wgslsmith_dot_vec3_u32(max(~(~var_1.a | ~vec3<u32>(u_input.b, 0u, var_1.a.x)), ~vec3<u32>(var_1.a.x, 1u, 1u) | ~firstLeadingBit(vec3<u32>(4294967295u, 4294967295u, u_input.d.x))), ~var_1.a);
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = u_input.a.x;
    var var_1 = Struct_5(func_4(Struct_2(reverseBits(vec4<i32>(-147i, 2147483647i, 2147483647i, -563i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(850f)))), arg_0, _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, -54205i), vec2<i32>(-40976i, 2147483647i)), -vec2<i32>(-1i, 929i), -vec2<i32>(28425i, 0i)), vec4<f32>(1205f, global2.x, -1011f, _wgslsmith_f_op_f32(-global2.x))), vec3<i32>(max(_wgslsmith_mult_i32(17298i, 0i), ~(-1i)), func_3(Struct_2(vec4<i32>(-2147483647i, 0i, -52117i, -1i), global2.x, -1000f, vec2<i32>(-79578i, -19605i), vec4<f32>(1000f, global2.x, arg_0, -373f)), false, Struct_1(vec3<bool>(false, false, true))), -1i), Struct_3(-1828f, vec4<bool>(true, true, true, true), 40819i, Struct_2(min(vec4<i32>(-48102i, -21105i, 6582i, 24827i), vec4<i32>(-14890i, -2147483647i, -1i, 30041i)), _wgslsmith_f_op_f32(exp2(arg_0)), arg_0, select(vec2<i32>(-616i, 2147483647i), vec2<i32>(14758i, -25246i), vec2<bool>(false, false)), _wgslsmith_div_vec4_f32(vec4<f32>(206f, global2.x, 658f, arg_0), vec4<f32>(arg_0, global2.x, arg_0, -195f))), global2.xx)));
    let var_2 = 72010u;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-415f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1310f) - _wgslsmith_f_op_f32(select(-729f, _wgslsmith_f_op_f32(global2.x + -795f), true)))), !select(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false), vec4<bool>(any(vec3<bool>(false, true, true)), true, false, any(vec4<bool>(true, false, false, true))), false), 0i, Struct_2(vec4<i32>(_wgslsmith_div_i32(1i, _wgslsmith_add_i32(-1i, 1599i)), ~1i, abs(i32(-1i) * -44620i), 1i), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(997f * arg_0)), -473f, _wgslsmith_div_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(-7633i, -2147483647i), ~abs(vec2<i32>(1i, -47554i))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-547f, arg_0, arg_0, arg_0))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.xz) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(630f, -369f), global2.xz, true)))));
    var var_4 = var_3.b.x;
    return 4294967295u;
}

fn func_1() -> vec4<u32> {
    global0 = !any(vec4<bool>(select(any(vec4<bool>(true, false, false, true)), true, select(true, false, true)), true, true, true));
    global1 = array<Struct_3, 1>();
    var var_0 = -1332f;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.wxz) - _wgslsmith_f_op_vec3_f32(global2.yxx + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global2.ywy, global2.xyx)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-219f, -185f, 515f)))))));
    return select(_wgslsmith_add_vec4_u32(vec4<u32>(firstTrailingBit(u_input.c.x), ~4294967295u, func_2(global2.x), u_input.c.x), vec4<u32>(firstLeadingBit(1u), 28620u, _wgslsmith_mult_u32(u_input.b, 13426u), ~u_input.a.x)) ^ ~(~vec4<u32>(u_input.c.x, u_input.b, 19880u, u_input.d.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(abs(1u), 4294967295u, _wgslsmith_add_u32(36932u, 34971u), u_input.a.x), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 31191u, 25503u, 1u), reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 0u, 1u)))), !(21230u > _wgslsmith_mod_u32(~103116u, u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(0u, 11u)];
    global3 = array<Struct_1, 11>();
    var var_1 = func_1();
    var var_2 = !(!vec4<bool>(any(select(vec4<bool>(var_0.a.x, true, var_0.a.x, true), vec4<bool>(true, false, false, var_0.a.x), false)), all(!vec2<bool>(var_0.a.x, var_0.a.x)), false, true));
    let x = u_input.a;
    s_output = StorageBuffer((vec4<i32>(-1i, 1i, _wgslsmith_div_i32(-2147483647i, -30184i), _wgslsmith_div_i32(1i, -24577i)) << (abs(countOneBits(vec4<u32>(4294967295u, 13807u, var_1.x, u_input.b))) % vec4<u32>(32u))) >> (firstTrailingBit(func_1()) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-1865f - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1058f + global2.x), 1399f), _wgslsmith_f_op_f32(-117f * global2.x))));
}

