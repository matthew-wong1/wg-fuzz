struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1 = Struct_1(vec4<f32>(483f, 163f, 1034f, -367f), vec4<u32>(0u, 0u, 8339u, 111928u), vec2<i32>(i32(-2147483648), -1i), true, vec3<f32>(1001f, -1770f, 2591f));

var<private> global2: f32 = -608f;

var<private> global3: array<i32, 29>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_3) -> i32 {
    let var_0 = ~_wgslsmith_add_vec3_u32(global1.b.yxx, max(~global1.b.xyy >> (~global1.b.zyw % vec3<u32>(32u)), ~_wgslsmith_mod_vec3_u32(global1.b.xwx, arg_1.yzz)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(467f, 1308f, global1.a.x, global1.a.x) - vec4<f32>(global1.e.x, global1.e.x, global1.e.x, -1000f)), _wgslsmith_f_op_vec4_f32(floor(global1.a))))))), arg_1, vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.c.x, -7701i), reverseBits(vec2<i32>(-2147483647i, 1i))), ~30672i << (0u % 32u)), ~2147483647i), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(trunc(628f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1668f, global1.a.x)))) - _wgslsmith_f_op_vec3_f32(global1.e + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.a.x, 599f, -1011f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.e.x, global1.e.x, -2943f)))))));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(round(global1.e.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e.x) * _wgslsmith_f_op_f32(-global1.e.x))), global1.a.x));
    var var_3 = Struct_1(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-443f - var_1.e.x) - _wgslsmith_f_op_f32(abs(global1.e.x))), var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -792f)), var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_1.e.x)), var_1.e.x))), vec4<u32>(0u, arg_1.x, ~(~16655u) & ~arg_1.x, 4294967295u), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_add_i32(countOneBits(3866i), -9380i), ~var_1.c.x | global1.c.x), -vec2<i32>(-arg_2.c.x, global3[_wgslsmith_index_u32(select(u_input.b, arg_1.x, var_1.d), 29u)]), _wgslsmith_mult_vec2_i32(reverseBits(abs(arg_0.a.b)), min(vec2<i32>(global3[_wgslsmith_index_u32(1311u, 29u)], -1i), arg_0.a.b) & var_1.c)), true, _wgslsmith_f_op_vec3_f32(-global1.a.zxy));
    global2 = _wgslsmith_f_op_f32(var_3.a.x - var_2.x);
    return firstTrailingBit(38439i);
}

fn func_2(arg_0: vec2<u32>, arg_1: f32) -> Struct_3 {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -993f), global1.e.x))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-248f - -1058f))) + _wgslsmith_f_op_f32(-arg_1)) >= arg_1;
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(-arg_1))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(global1.a.x * arg_1)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1))))));
    var var_0 = vec2<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a.x, global1.a.x))) <= arg_1), global1.a.x >= 983f);
    var var_1 = ~global3[_wgslsmith_index_u32(1u, 29u)];
    return Struct_3(Struct_2(min(global3[_wgslsmith_index_u32(31113u >> (_wgslsmith_dot_vec4_u32(global1.b, global1.b) % 32u), 29u)], _wgslsmith_clamp_i32(-34763i, -1913i, u_input.c.x)), vec2<i32>(firstLeadingBit(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(74128u, 29u)], global1.c.x)), ~min(global3[_wgslsmith_index_u32(arg_0.x, 29u)], global3[_wgslsmith_index_u32(6163u, 29u)]))), global1.c ^ global1.c, vec4<i32>(select(-1i, countOneBits(-1i) | func_3(Struct_3(Struct_2(global3[_wgslsmith_index_u32(44294u, 29u)], u_input.c.yx), global1.c, vec4<i32>(global1.c.x, -34831i, global1.c.x, 29938i)), global1.b, Struct_3(Struct_2(-1i, global1.c), vec2<i32>(-27069i, global3[_wgslsmith_index_u32(29904u, 29u)]), vec4<i32>(-38396i, -2147483647i, 2147483647i, -1i))), ~37439u > arg_0.x), ~u_input.c.x, _wgslsmith_div_i32(24755i ^ u_input.a, -1i >> (0u % 32u)) ^ (_wgslsmith_mod_i32(u_input.a, -20731i) >> (min(73445u, global1.b.x) % 32u)), u_input.c.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> u32 {
    return _wgslsmith_clamp_u32(41693u, firstTrailingBit(reverseBits(u_input.b)), countOneBits(0u | (4294967295u >> (_wgslsmith_sub_u32(0u, global1.b.x) % 32u))));
}

fn func_1() -> Struct_1 {
    var var_0 = -44047i;
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(global1.b.x, _wgslsmith_add_u32(~global1.b.x, 1u)), func_4(Struct_2(~u_input.c.x, min(vec2<i32>(u_input.c.x, -15832i), u_input.c.zx)), func_2(~global1.b.xw, _wgslsmith_f_op_f32(f32(-1f) * -1445f))), _wgslsmith_mod_u32(1u, global1.b.x)), vec3<u32>(1u, u_input.d, ~min(~u_input.d, ~0u)));
    global3 = array<i32, 29>();
    var var_2 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.a) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1213f, -415f, global1.e.x, -170f)))), _wgslsmith_f_op_vec4_f32(-global1.a)), global1.b, u_input.c.zx, false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global1.a.x, global1.e.x) * global1.e))) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.e.x, 140f, global1.e.x))))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1.a), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(226f, 108f, _wgslsmith_f_op_f32(round(1115f)), global1.a.x), vec4<f32>(_wgslsmith_div_f32(global1.a.x, 390f), _wgslsmith_f_op_f32(global1.a.x - var_2.a.x), _wgslsmith_f_op_f32(round(-1026f)), _wgslsmith_f_op_f32(min(var_2.e.x, 366f))))), !(!(!vec4<bool>(false, var_2.d, global1.d, global1.d))))), ~global1.b, reverseBits(_wgslsmith_mod_vec2_i32(var_2.c, global1.c)), (~4294967295u << (abs(var_2.b.x ^ var_2.b.x) % 32u)) >= ~min(~var_2.b.x, global1.b.x | global1.b.x), _wgslsmith_f_op_vec3_f32(-global1.a.yxy));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = global1.b.x;
    var var_1 = min(~(vec4<i32>(-1i) * -vec4<i32>(global1.c.x, -48896i, 2147483647i, -2206i)), vec4<i32>(global1.c.x, select(global3[_wgslsmith_index_u32(u_input.b, 29u)], -2147483647i, true), _wgslsmith_sub_i32(-2147483647i, global3[_wgslsmith_index_u32(u_input.d, 29u)]), _wgslsmith_mult_i32(-1i & global3[_wgslsmith_index_u32(16035u, 29u)], func_3(Struct_3(Struct_2(global1.c.x, vec2<i32>(71093i, -11996i)), global1.c, vec4<i32>(u_input.a, global3[_wgslsmith_index_u32(global1.b.x, 29u)], global1.c.x, 2147483647i)), vec4<u32>(0u, 1465u, 0u, u_input.d), Struct_3(Struct_2(global1.c.x, u_input.c.zz), vec2<i32>(global1.c.x, global1.c.x), vec4<i32>(-2147483647i, -1i, global1.c.x, global3[_wgslsmith_index_u32(0u, 29u)])))) ^ u_input.c.x));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.a.x, -641f, global1.a.x, -1000f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global1.a, global1.a, vec4<bool>(false, true, global1.d, global1.d))) + global1.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a + _wgslsmith_f_op_vec4_f32(exp2(global1.a))) - global1.a), global1.d)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(30323u, func_1().b.x, global1.b.x, global1.b.x ^ 4294967295u)), ~vec4<u32>(~42006u, 4294967295u, 0u, min(global1.b.x, 12973u))), -func_2(vec2<u32>(_wgslsmith_sub_u32(8693u, global1.b.x), _wgslsmith_add_u32(1u, u_input.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e.x * global1.a.x) + -1281f)).c.yz, !global1.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1205f, _wgslsmith_f_op_f32(round(-2900f)), -1000f)));
    let var_3 = max(global3[_wgslsmith_index_u32(~u_input.b, 29u)] ^ _wgslsmith_mult_i32(var_2.c.x, _wgslsmith_mult_i32(func_3(Struct_3(Struct_2(global3[_wgslsmith_index_u32(var_2.b.x, 29u)], vec2<i32>(-49343i, -2147483647i)), vec2<i32>(2147483647i, -1i), vec4<i32>(39804i, var_2.c.x, -1i, var_1.x)), vec4<u32>(1u, global1.b.x, global1.b.x, 43216u), Struct_3(Struct_2(-11472i, vec2<i32>(u_input.a, var_1.x)), vec2<i32>(var_2.c.x, -18248i), vec4<i32>(-1i, -20058i, var_1.x, var_2.c.x))), u_input.c.x)), _wgslsmith_mod_i32(-13437i, ~(~(-var_2.c.x))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_2.a.x, global1.e.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.e.x) * global1.e.x)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.e.x, 111f)) - _wgslsmith_f_op_f32(-var_2.e.x)));
    var_1 = _wgslsmith_add_vec4_i32(reverseBits(-vec4<i32>(18064i, 13254i, var_3, 0i)), _wgslsmith_mod_vec4_i32(min(vec4<i32>(-51570i, -12226i, var_3, -8872i), vec4<i32>(var_3, 1i, 75316i, global3[_wgslsmith_index_u32(4294967295u, 29u)])), -vec4<i32>(0i, 2147483647i, u_input.c.x, global3[_wgslsmith_index_u32(global1.b.x, 29u)])) | ~_wgslsmith_clamp_vec4_i32(vec4<i32>(9572i, global1.c.x, 28872i, var_3), vec4<i32>(global1.c.x, 34059i, var_3, global3[_wgslsmith_index_u32(global1.b.x, 29u)]), vec4<i32>(var_3, -1i, 21420i, 1i))) << (~(~var_2.b) % vec4<u32>(32u));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-432f)));
    let x = u_input.a;
    s_output = StorageBuffer(14710u | ~var_2.b.x, 19427u, var_4, _wgslsmith_div_i32(abs(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_2.c, global1.c), i32(-1i) * -2147483647i)), 18091i), _wgslsmith_dot_vec2_u32(~min(var_2.b.yy, global1.b.xw) << (_wgslsmith_mult_vec2_u32(var_2.b.zx, _wgslsmith_add_vec2_u32(global1.b.yx, global1.b.yy)) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, 4294967295u)));
}

