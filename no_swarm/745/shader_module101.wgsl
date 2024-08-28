struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 18>;

var<private> global1: f32;

var<private> global2: array<Struct_2, 21>;

var<private> global3: array<vec3<f32>, 6>;

var<private> global4: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: bool, arg_3: bool) -> vec3<i32> {
    var var_0 = ~arg_0.a.d.zx;
    let var_1 = global2[_wgslsmith_index_u32(19601u, 21u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(418f, 392f))))), _wgslsmith_f_op_f32(floor(949f)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(4294967295u, 6u)])));
    let var_4 = _wgslsmith_div_vec3_i32(~var_1.a.d, reverseBits(min(arg_0.a.d ^ arg_0.a.d, vec3<i32>(-4927i, -20700i, -1i)))) ^ (vec3<i32>(_wgslsmith_div_i32(firstTrailingBit(var_0.x), 34242i), _wgslsmith_add_i32(u_input.c, var_1.a.d.x), var_1.a.d.x) & ~(vec3<i32>(-1i, 63384i, var_0.x) ^ ~vec3<i32>(-29467i, -59541i, var_0.x)));
    return vec3<i32>(countOneBits(i32(-1i) * -9384i), -max(select(_wgslsmith_mult_i32(-2147483647i, arg_0.a.d.x), -2147483647i, true), select(select(arg_0.a.e, arg_0.a.e, true), _wgslsmith_add_i32(u_input.c, var_4.x), true)), ~reverseBits(~1i));
}

fn func_2() -> i32 {
    var var_0 = Struct_2(Struct_1(32634u, !(!(!vec4<bool>(global4.x, global4.x, global4.x, global0[_wgslsmith_index_u32(u_input.a.x, 18u)]))), 55290u, vec3<i32>(_wgslsmith_dot_vec3_i32(max(vec3<i32>(2147483647i, 2147483647i, u_input.c), vec3<i32>(u_input.c, 10751i, -24476i)), -vec3<i32>(21240i, u_input.c, u_input.c)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(u_input.c, 8906i)), _wgslsmith_div_i32(86163i, ~(-37976i))), u_input.c), u_input.a.x);
    return func_1(Struct_2(Struct_1(u_input.a.x, var_0.a.b, ~u_input.b.x ^ _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), -vec3<i32>(var_0.a.e, 1i, 15041i), 36535i), ~(_wgslsmith_sub_u32(u_input.a.x, var_0.a.c) >> (reverseBits(52966u) % 32u))), ~u_input.a.x, global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1f)) - _wgslsmith_f_op_f32(ceil(-286f))) == -1000f).x;
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_2) -> i32 {
    var var_0 = arg_3.a.b.x;
    global1 = -183f;
    var var_1 = select(~select(reverseBits(vec4<i32>(1918i, u_input.c, -19347i, u_input.c)), -vec4<i32>(u_input.c, arg_3.a.d.x, arg_3.a.d.x, 1i), select(arg_3.a.b, vec4<bool>(global4.x, arg_3.a.b.x, global0[_wgslsmith_index_u32(arg_0, 18u)], global0[_wgslsmith_index_u32(1u, 18u)]), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(35997u, 18u)]))) | (_wgslsmith_div_vec4_i32(~vec4<i32>(-64646i, arg_3.a.e, arg_3.a.d.x, 1i), vec4<i32>(0i, arg_3.a.d.x, -8339i, 1i) >> (vec4<u32>(arg_0, u_input.a.x, 4294967295u, arg_3.a.a) % vec4<u32>(32u))) ^ vec4<i32>(-25813i, ~u_input.c, ~(-2147483647i), ~10134i)), ~vec4<i32>(arg_3.a.d.x & arg_3.a.d.x, 2147483647i, -67071i, 7355i) ^ _wgslsmith_div_vec4_i32(max(~vec4<i32>(u_input.c, u_input.c, -31102i, arg_3.a.d.x), _wgslsmith_add_vec4_i32(vec4<i32>(10158i, 1i, 1i, -8699i), vec4<i32>(0i, arg_3.a.e, arg_3.a.e, arg_3.a.d.x))), countOneBits(~vec4<i32>(u_input.c, u_input.c, u_input.c, arg_3.a.e))), false || all(arg_3.a.b));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(u_input.a.x, !vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], false && global0[_wgslsmith_index_u32(20029u, 18u)], global0[_wgslsmith_index_u32(countOneBits(u_input.a.x), 18u)], !global4.x), u_input.a.x, _wgslsmith_mod_vec3_i32(~reverseBits(vec3<i32>(u_input.c, 0i, u_input.c)), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, u_input.c, 1i), vec3<i32>(-2147483647i, u_input.c, u_input.c)), func_1(Struct_2(Struct_1(1u, vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.a.x, 18u)]), u_input.a.x, vec3<i32>(u_input.c, 2147483647i, 7110i), -1i), 4294967295u), u_input.b.x, global0[_wgslsmith_index_u32(1836u, 18u)], global4.x))), 1i), _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 12072u, u_input.b.x, 1u) >> (u_input.b % vec4<u32>(32u)), u_input.b << (vec4<u32>(1u, 25703u, u_input.b.x, 40194u) % vec4<u32>(32u)))), vec4<u32>(51741u, 1u ^ ~u_input.b.x, 16047u, u_input.b.x)));
    global2 = array<Struct_2, 21>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -379f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-527f)))))));
    let var_2 = !var_0.a.b.zz;
    let var_3 = vec3<i32>(func_2(), func_1(Struct_2(Struct_1(u_input.a.x & u_input.a.x, vec4<bool>(global4.x, true, global4.x, global0[_wgslsmith_index_u32(16259u, 18u)]), 46481u, ~var_0.a.d, func_3(u_input.a.x, -1235f, vec3<bool>(true, global4.x, global0[_wgslsmith_index_u32(0u, 18u)]), Struct_2(var_0.a, 53832u))), 60655u), ~(~4294967295u) & ~min(var_0.b, 19249u), var_2.x, !(var_2.x | false)).x, -u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-1i, -1i, -29198i), vec4<u32>(countOneBits(u_input.b.x), u_input.b.x, 0u, ~var_0.a.a), -_wgslsmith_sub_i32(func_1(global2[_wgslsmith_index_u32(637u, 21u)], _wgslsmith_div_u32(57752u, var_0.b), global0[_wgslsmith_index_u32(var_0.b, 18u)] && global0[_wgslsmith_index_u32(8299u, 18u)], !var_0.a.b.x).x, reverseBits(var_0.a.e)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3[_wgslsmith_index_u32(0u, 6u)]) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -1105f, -1973f))) + vec3<f32>(var_1, -758f, _wgslsmith_f_op_f32(-573f - 1482f))))));
}

