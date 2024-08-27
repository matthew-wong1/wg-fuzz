struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(1u, 6457u, 64461u), vec3<u32>(4294967295u, 609u, 4294967295u), vec3<u32>(53663u, 0u, 0u));

var<private> global1: array<f32, 1> = array<f32, 1>(793f);

var<private> global2: array<Struct_1, 15>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = ~arg_0.c;
    global2 = array<Struct_1, 15>();
    let var_1 = 1u;
    var var_2 = vec3<bool>(all(vec3<bool>(false, (true & arg_0.d) && (1000f != global1[_wgslsmith_index_u32(5555u, 1u)]), all(vec2<bool>(true, true)))), all(!vec3<bool>(true, all(vec4<bool>(false, true, arg_0.d, true)), true)), !(u_input.d.x < _wgslsmith_add_i32(firstTrailingBit(arg_0.b.x), 0i)));
    var var_3 = arg_0;
    return var_3.c < 4294967295u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    global2 = array<Struct_1, 15>();
    global0 = array<vec3<u32>, 3>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.a, -1363f))) + _wgslsmith_f_op_f32(-arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-386f, _wgslsmith_f_op_f32(abs(-979f)))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -619f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.a, arg_2.a)) - _wgslsmith_f_op_f32(select(-225f, _wgslsmith_f_op_f32(613f - global1[_wgslsmith_index_u32(arg_2.c.c, 1u)]), arg_0.d)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-116f, _wgslsmith_f_op_f32(f32(-1f) * -534f)) - vec2<f32>(_wgslsmith_f_op_f32(-163f + -701f), 1000f)))));
    var var_2 = _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(min(~1u, _wgslsmith_sub_u32(1u, arg_1.c)), 1u)] * 809f));
    return arg_2.b.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(arg_0.c, 1u)], ~vec4<i32>(min(1i, _wgslsmith_mod_i32(-2147483647i, -25362i)), ~(~44416i), u_input.b, 2147483647i), arg_0);
    let var_1 = func_4(arg_3, Struct_1(select(_wgslsmith_mod_vec2_i32(vec2<i32>(-9101i, -23100i), vec2<i32>(var_0.b.x, u_input.b)), -arg_3.b.xw, select(false, false, arg_1.d)) ^ -vec2<i32>(arg_0.b.x, -23491i), _wgslsmith_div_vec4_i32(arg_0.b, min(firstLeadingBit(arg_3.b), var_0.c.b)), ~arg_1.c, (!var_0.c.d == func_3(var_0.c)) && !any(arg_2.yz)), var_0);
    global2 = array<Struct_1, 15>();
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(min(~_wgslsmith_clamp_u32(arg_3.c, arg_3.c, 0u), 4294967295u), ~(_wgslsmith_sub_u32(u_input.a, 5874u) << (_wgslsmith_mod_u32(4294967295u, 42584u) % 32u))), vec2<u32>(34926u, arg_1.c));
    let var_3 = global2[_wgslsmith_index_u32(var_0.c.c, 15u)];
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 1067u), 1u)];
    let var_1 = Struct_2(_wgslsmith_f_op_f32(-252f * arg_1), max(arg_0.b, ~(vec4<i32>(-2147483647i, -11438i, arg_0.b.x, 44585i) << (vec4<u32>(u_input.a, 1u, u_input.a, 1u) % vec4<u32>(32u)))) & vec4<i32>(-arg_0.b.x << (~u_input.a % 32u), _wgslsmith_dot_vec3_i32(u_input.d, firstLeadingBit(vec3<i32>(-1i, u_input.d.x, u_input.b))), ~(-18191i), _wgslsmith_add_i32(-u_input.b, max(-61265i, 0i))), Struct_1(vec2<i32>(_wgslsmith_div_i32(-u_input.d.x, 12561i), -(~(-25114i))), ~(~arg_0.b), arg_0.c, arg_0.d));
    let var_2 = global0[_wgslsmith_index_u32(1u, 3u)];
    let var_3 = false;
    global1 = array<f32, 1>();
    return -683f;
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.a, 1u)])) + arg_1.a), _wgslsmith_f_op_f32(func_5(func_2(global2[_wgslsmith_index_u32(3459u, 15u)], Struct_1(vec2<i32>(u_input.d.x, -1i), arg_1.b, arg_1.c.c, true), vec4<bool>(arg_0, arg_0, arg_1.c.d, true), arg_1.c), _wgslsmith_f_op_f32(arg_1.a + -436f)))))), arg_1.c.b, arg_1.c);
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 1>();
    var var_0 = -_wgslsmith_div_i32(~((u_input.b ^ -24213i) ^ -u_input.b), ~(~(-1i)));
    var var_1 = u_input.b;
    var var_2 = Struct_1(min(_wgslsmith_add_vec2_i32(countOneBits(u_input.d.zx & vec2<i32>(2147483647i, -2147483647i)), u_input.d.yy), select(_wgslsmith_mod_vec2_i32(vec2<i32>(-81177i, -2147483647i), u_input.d.yx), select(vec2<i32>(u_input.d.x, u_input.b), u_input.d.xx, vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false))) ^ countOneBits(u_input.d.xz)), countOneBits(vec4<i32>(0i, _wgslsmith_mod_i32(-30358i, u_input.b), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, -2147483647i, -2147483647i), vec4<i32>(u_input.d.x, 23276i, 25887i, 16990i)), ~(-1i))) | reverseBits(_wgslsmith_mod_vec4_i32(~vec4<i32>(-2147483647i, -29809i, -7367i, u_input.b), vec4<i32>(-11930i, -2147483647i, 1i, 1i))), ~abs(u_input.a), all(vec3<bool>(true, true, true)));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-593f))), ~var_2.b, global2[_wgslsmith_index_u32(u_input.a, 15u)]);
    global2 = array<Struct_1, 15>();
    let var_4 = var_3.c;
    var var_5 = func_1(var_4.d, Struct_2(-1000f, select(vec4<i32>(var_4.a.x, 23974i, 0i, 27615i), _wgslsmith_mult_vec4_i32(var_4.b, vec4<i32>(var_3.c.a.x, u_input.d.x, -2147483647i, var_2.a.x)), var_2.d) ^ _wgslsmith_sub_vec4_i32(max(var_3.c.b, vec4<i32>(10511i, -2147483647i, u_input.b, 0i)), select(vec4<i32>(u_input.d.x, 1i, -1i, 71015i), vec4<i32>(var_4.a.x, -48515i, -1i, var_2.b.x), vec4<bool>(var_4.d, false, var_4.d, true))), global2[_wgslsmith_index_u32(58305u, 15u)]));
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.c, var_4.c, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-651f, -574f, 1000f, -427f))))))), var_5.c, var_3.b.x, 2656f);
}

