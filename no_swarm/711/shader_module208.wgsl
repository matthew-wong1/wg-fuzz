struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: Struct_2,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 2>;

var<private> global1: Struct_3 = Struct_3(vec3<i32>(i32(-2147483648), 1i, 66176i), -978f, Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<i32>(-1i, 11169i, -1886i, -57481i)), vec2<i32>(-1i, 0i), vec3<f32>(-212f, 609f, 1000f), Struct_1(vec3<bool>(true, true, true), vec4<i32>(2147483647i, i32(-2147483648), 1i, 0i))), vec3<f32>(-1000f, -308f, 1594f), Struct_2(Struct_1(vec3<bool>(false, true, false), vec4<i32>(-34822i, i32(-2147483648), 0i, 2147483647i)), vec2<i32>(-9006i, 23246i), vec3<f32>(991f, 1704f, -379f), Struct_1(vec3<bool>(true, false, true), vec4<i32>(-11566i, 2147483647i, -1i, -19496i))));

var<private> global2: array<u32, 25> = array<u32, 25>(1u, 1u, 0u, 20085u, 0u, 4294967295u, 96131u, 4294967295u, 17220u, 1u, 1u, 17585u, 63890u, 1u, 0u, 6633u, 1u, 1u, 1u, 6995u, 1u, 20821u, 13773u, 91910u, 36408u);

var<private> global3: array<f32, 25> = array<f32, 25>(2005f, -1374f, 1026f, 246f, 1000f, 1000f, -1662f, 709f, -1053f, 865f, -979f, -181f, 2498f, -759f, -127f, 862f, 499f, 1104f, -134f, -900f, 282f, 340f, 265f, 1449f, -784f);

var<private> global4: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> f32 {
    return -1663f;
}

fn func_3(arg_0: i32) -> vec4<u32> {
    var var_0 = -504f;
    var var_1 = _wgslsmith_mult_u32(4294967295u, u_input.d);
    global4 = u_input.d;
    let var_2 = ~67724u;
    var var_3 = _wgslsmith_div_vec3_i32(select(max(vec3<i32>(global1.e.d.b.x, u_input.c, 1i) << (abs(vec3<u32>(0u, 67279u, 60911u)) % vec3<u32>(32u)), firstTrailingBit(_wgslsmith_sub_vec3_i32(global1.a, vec3<i32>(-27181i, u_input.b.x, global1.a.x)))), u_input.b, global1.c.a.a), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, abs(-1i), arg_0), vec3<i32>(reverseBits(firstLeadingBit(14479i)), u_input.c | reverseBits(arg_0), abs(~u_input.c))));
    return ~(firstTrailingBit(vec4<u32>(10349u, 40330u, 1u, var_2) >> (vec4<u32>(var_2, u_input.a.x, 4294967295u, 4257u) % vec4<u32>(32u))) | vec4<u32>(1968u, 120284u, 1u, _wgslsmith_sub_u32(var_2 << (global2[_wgslsmith_index_u32(0u, 25u)] % 32u), 64224u)));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32, arg_3: Struct_3) -> vec4<f32> {
    var var_0 = -579f;
    let var_1 = global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(~(~vec4<u32>(22229u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(92834u, 25u)], 25u)], 25u)], 25u)], 25u)], global2[_wgslsmith_index_u32(19143u, 25u)], u_input.a.x)), ~func_3(-2147483647i), true), vec4<u32>(~4294967295u, _wgslsmith_add_u32(~1u, global2[_wgslsmith_index_u32(98014u, 25u)]), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(53230u, 25u)], 4294967295u), u_input.d), 25u)], u_input.a.x)), 25u)] ^ _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), global2[_wgslsmith_index_u32(61647u, 25u)]), _wgslsmith_clamp_u32(_wgslsmith_add_u32(~u_input.a.x, global2[_wgslsmith_index_u32(~u_input.d, 25u)]), u_input.a.x >> (reverseBits(u_input.a.x) % 32u), ~u_input.d)), 2u)];
    global4 = ~func_3(arg_1.a.b.x).x;
    let var_2 = !select(select(!vec4<bool>(var_1.a.a.x, false, true, var_1.a.a.x), vec4<bool>(true, global1.c.a.a.x, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 25u)], 25u)], 25u)] == 192f, any(arg_1.a.a)), var_1.a.a.x), vec4<bool>(arg_3.c.a.a.x, all(select(vec3<bool>(true, false, arg_3.c.a.a.x), vec3<bool>(arg_0.c.d.a.x, global1.e.a.a.x, arg_1.a.a.x), arg_1.d.a.x)), var_1.a.a.x, true), select(true & select(true, false, true), var_1.a.a.x, arg_0.c.d.a.x));
    let var_3 = Struct_4(arg_3.e.d, vec4<i32>(~max(-var_1.b.x, var_1.b.x | -19169i), 3747i, _wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b.x, arg_1.b.x), max(-2147483647i, -1i)) | ((arg_3.c.d.b.x & -57351i) ^ abs(arg_3.c.d.b.x)), -26703i));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(abs(arg_0.d.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1577f), _wgslsmith_f_op_f32(-501f + arg_3.b))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(591f * global1.c.c.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -105f), 1146f, u_input.a.x >= 0u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!(!global1.c.a.a.x)));
    var var_1 = ~firstLeadingBit(-vec2<i32>(~u_input.b.x, _wgslsmith_clamp_i32(-2147483647i, u_input.c, u_input.c)));
    global0 = array<Struct_4, 2>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.c.c.x, _wgslsmith_div_f32(-248f, -786f), _wgslsmith_f_op_f32(func_1()), -122f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_2(Struct_3(u_input.b, 797f, global1.c, global1.c.c, Struct_2(global1.e.a, vec2<i32>(var_1.x, global1.c.b.x), global1.d, Struct_1(vec3<bool>(var_0, true, global1.e.a.a.x), global1.e.a.b))), global1.c, 6576i, Struct_3(u_input.b, global1.d.x, Struct_2(Struct_1(vec3<bool>(true, var_0, false), vec4<i32>(4825i, u_input.c, 3385i, 2147483647i)), global1.c.b, vec3<f32>(global1.e.c.x, global3[_wgslsmith_index_u32(4294967295u, 25u)], global3[_wgslsmith_index_u32(18415u, 25u)]), Struct_1(global1.c.a.a, global1.c.d.b)), vec3<f32>(global3[_wgslsmith_index_u32(u_input.d, 25u)], global3[_wgslsmith_index_u32(87989u, 25u)], 931f), global1.e)))))))));
    global1 = Struct_3(~(~_wgslsmith_add_vec3_i32(global1.c.a.b.zyy, vec3<i32>(0i, var_1.x, 10113i)) ^ global1.e.a.b.yyz), _wgslsmith_f_op_f32(-global1.d.x), Struct_2(global1.e.d, vec2<i32>(reverseBits(var_1.x), -1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global1.c.c, vec3<f32>(-822f, global3[_wgslsmith_index_u32(u_input.a.x, 25u)], -127f), false))), global1.c.d), var_2.xwy, global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(64607u, ~(~firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(80167u, 25u)], 25u)]))));
}

