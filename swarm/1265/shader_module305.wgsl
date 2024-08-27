struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
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

var<private> global0: array<vec2<i32>, 7> = array<vec2<i32>, 7>(vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(47607i, -51050i), vec2<i32>(-1i, 60263i), vec2<i32>(i32(-2147483648), -47912i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -37496i));

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, 0i, -1i);

var<private> global2: array<u32, 28>;

var<private> global3: array<i32, 25> = array<i32, 25>(-1i, 3405i, i32(-2147483648), -28899i, -42559i, 0i, -4360i, 22511i, -8876i, -26254i, 15859i, 2147483647i, -55421i, -1i, -682i, 25535i, 40293i, 1i, -3312i, 15190i, -44426i, -70980i, 0i, 4508i, 2147483647i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    global3 = array<i32, 25>();
    let var_0 = ~_wgslsmith_clamp_u32((_wgslsmith_dot_vec4_u32(vec4<u32>(15577u, global2[_wgslsmith_index_u32(0u, 28u)], global2[_wgslsmith_index_u32(u_input.b, 28u)], 4732u), vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 28u)], 28u)], 32893u, 6045u)) ^ 109488u) & u_input.b, ~8853u, global2[_wgslsmith_index_u32(u_input.e.x, 28u)]);
    global2 = array<u32, 28>();
    global1 = firstTrailingBit(vec3<i32>(1i, global3[_wgslsmith_index_u32(u_input.b, 25u)], u_input.d.x)) ^ vec3<i32>((1i | _wgslsmith_div_i32(u_input.a, 2147483647i)) >> (_wgslsmith_add_u32(77416u, var_0) % 32u), firstLeadingBit(~global1.x), 0i);
    var var_1 = !(true || !all(vec3<bool>(true, true, true)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1662f + _wgslsmith_f_op_f32(f32(-1f) * -1526f)), _wgslsmith_f_op_f32(-1112f - _wgslsmith_div_f32(-766f, -202f))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -136f) + _wgslsmith_f_op_f32(f32(-1f) * -946f))));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32, arg_3: vec3<u32>) -> f32 {
    var var_0 = Struct_3(firstTrailingBit(~select(vec4<i32>(-2147483647i, 1576i, -2147483647i, global1.x), u_input.c, !vec4<bool>(true, arg_0.x, arg_0.x, true))), -478i, _wgslsmith_sub_i32(firstLeadingBit(firstLeadingBit(1i)), firstLeadingBit(-58754i)));
    let var_1 = u_input.a >= global1.x;
    let var_2 = _wgslsmith_f_op_f32(func_3());
    global3 = array<i32, 25>();
    global0 = array<vec2<i32>, 7>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -755f) + var_2);
}

fn func_1(arg_0: Struct_3) -> vec2<u32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(vec2<bool>(true, false), Struct_1(vec2<u32>(u_input.e.x, 37637u), false, u_input.b), 206f, vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 28u)], 64290u, 6814u))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3()))), 2244f))));
    var var_1 = 5117u;
    let var_2 = vec4<bool>(true, true, true, true);
    let var_3 = vec3<i32>(14490i, _wgslsmith_clamp_i32(abs(-global3[_wgslsmith_index_u32(~7555u, 25u)]), _wgslsmith_add_i32(u_input.d.x, abs(1i)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(vec2<u32>(global2[_wgslsmith_index_u32(u_input.e.x, 28u)], u_input.b) & u_input.e, abs(vec2<u32>(0u, 4294967295u)), all(vec2<bool>(var_2.x, true))), (u_input.e | vec2<u32>(1u, u_input.b)) >> (select(vec2<u32>(global2[_wgslsmith_index_u32(u_input.b, 28u)], 0u), u_input.e, var_2.zx) % vec2<u32>(32u))), 25u)]), u_input.d.x);
    var var_4 = Struct_1(~(~(~(~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(61593u, 28u)], 28u)], 28u)], 1u)))), all(vec2<bool>(true, false)), ~0u);
    return vec2<u32>(reverseBits(~(~0u)) & ~var_4.c, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(6804u, 7425u, var_4.a.x) >> (vec3<u32>(var_4.c, var_4.c, global2[_wgslsmith_index_u32(u_input.e.x, 28u)]) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_4.a.x, 1u, u_input.e.x), vec3<u32>(12961u, 4294967295u, 61687u))), ~(~global2[_wgslsmith_index_u32(91522u, 28u)]), var_4.c), _wgslsmith_div_vec3_u32(~vec3<u32>(22338u, 66583u, 18827u) | select(vec3<u32>(0u, var_4.a.x, u_input.e.x), vec3<u32>(4294967295u, 56408u, var_4.c), false), vec3<u32>(4294967295u, _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(39654u, 28u)], 13773u), _wgslsmith_sub_u32(36824u, 643u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 25>();
    global0 = array<vec2<i32>, 7>();
    global3 = array<i32, 25>();
    let var_0 = 1000f;
    var var_1 = ~u_input.c;
    let var_2 = func_1(Struct_3(select(select(vec4<i32>(global3[_wgslsmith_index_u32(53978u, 25u)], 2147483647i, -2147483647i, global3[_wgslsmith_index_u32(u_input.e.x, 25u)]) >> (vec4<u32>(global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(u_input.b, 28u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6866u, 28u)], 28u)], u_input.b) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(28548i, 57365i, -2147483647i, global3[_wgslsmith_index_u32(u_input.e.x, 25u)]), vec4<i32>(global1.x, -54653i, 1i, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 28u)], 25u)])), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true))), firstTrailingBit(firstLeadingBit(vec4<i32>(11486i, -48990i, u_input.a, u_input.d.x))), false), 1249i, ~(firstLeadingBit(-1i) & reverseBits(var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_div_u32(~(~u_input.e.x), u_input.b), select(_wgslsmith_sub_u32(1u, abs(global2[_wgslsmith_index_u32(u_input.b, 28u)])), global2[_wgslsmith_index_u32(firstTrailingBit(global2[_wgslsmith_index_u32(6022u, 28u)] >> (global2[_wgslsmith_index_u32(77528u, 28u)] % 32u)), 28u)], all(select(vec2<bool>(true, true), vec2<bool>(true, true), true)))));
}

