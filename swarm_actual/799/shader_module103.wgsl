struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 4>;

var<private> global1: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(-25022i, i32(-2147483648)), vec2<i32>(10692i, 0i), vec2<i32>(17337i, 0i), vec2<i32>(12068i, 21741i));

var<private> global2: Struct_1 = Struct_1(vec2<i32>(0i, 37189i), vec3<bool>(true, false, false), -811f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = vec3<i32>(firstTrailingBit(arg_1.a.x), 0i, -global2.a.x);
    global2 = arg_1;
    return !(!vec4<bool>(arg_3.b.x, true, all(select(vec2<bool>(true, false), vec2<bool>(arg_1.b.x, false), false)), true));
}

fn func_2() -> Struct_1 {
    global2 = Struct_1(vec2<i32>(~global2.a.x, global2.a.x << ((~23803u | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u))) % 32u)), global2.b, 204f);
    let var_0 = global2.b.yx;
    var var_1 = !(!select(func_3(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 4u)], vec3<bool>(false, var_0.x, false), global2.c), Struct_1(global2.a, vec3<bool>(global2.b.x, true, var_0.x), global2.c), vec3<u32>(0u, u_input.a, 4294967295u), Struct_1(global2.a, global2.b, global2.c)), !(!vec4<bool>(global2.b.x, global2.b.x, true, true)), true));
    var var_2 = Struct_1(global1[_wgslsmith_index_u32(2855u, 4u)], func_3(Struct_1(_wgslsmith_sub_vec2_i32(global1[_wgslsmith_index_u32(~16552u, 4u)], reverseBits(global2.a)), global2.b, _wgslsmith_f_op_f32(-global2.c)), Struct_1(_wgslsmith_mod_vec2_i32(global1[_wgslsmith_index_u32(4294967295u, 4u)], vec2<i32>(1i, 39779i)) | vec2<i32>(global2.a.x, -2147483647i), select(select(var_1.xww, vec3<bool>(false, var_0.x, false), false), global2.b, vec3<bool>(global2.b.x, var_0.x, true)), global2.c), vec3<u32>(~u_input.a, u_input.a, ~94905u), Struct_1(~(global1[_wgslsmith_index_u32(40259u, 4u)] ^ global1[_wgslsmith_index_u32(13612u, 4u)]), var_1.wwx, _wgslsmith_f_op_f32(step(global2.c, _wgslsmith_f_op_f32(-global2.c))))).yyw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-563f))) + _wgslsmith_f_op_f32(ceil(946f)))));
    var var_3 = Struct_1(~vec2<i32>(-global2.a.x, firstTrailingBit(var_2.a.x)), vec3<bool>(!func_3(Struct_1(vec2<i32>(var_2.a.x, 4975i), var_2.b, global2.c), Struct_1(vec2<i32>(global2.a.x, -1i), var_2.b, -413f), vec3<u32>(0u, u_input.a, u_input.a), Struct_1(global1[_wgslsmith_index_u32(u_input.a, 4u)], var_2.b, var_2.c)).x, var_1.x, (~6488u < (u_input.a << (0u % 32u))) | !(var_2.b.x & var_1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.c))), var_2.c));
    return Struct_1(max(-min(var_2.a, _wgslsmith_div_vec2_i32(vec2<i32>(var_2.a.x, 0i), global2.a)), var_2.a), vec3<bool>(false, false, !var_3.b.x), var_3.c);
}

fn func_1() -> f32 {
    var var_0 = func_2();
    let var_1 = -(~_wgslsmith_sub_vec4_i32(min(vec4<i32>(0i, 55966i, global2.a.x, 9136i), vec4<i32>(-31196i, -31996i, -36534i, 43680i)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 1u, 1u), vec4<u32>(u_input.a, 0u, 30534u, 111232u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(global2.a.x, 5799i, 7517i, var_0.a.x), vec4<i32>(-49356i, global2.a.x, var_0.a.x, var_0.a.x))));
    global0 = array<vec4<u32>, 4>();
    var var_2 = vec2<u32>(u_input.a, _wgslsmith_div_u32(abs(u_input.a), ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(33397u, u_input.a), false), firstLeadingBit(vec2<u32>(u_input.a, u_input.a)))));
    global2 = func_2();
    return func_2().c;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 4>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()));
    let var_1 = min(u_input.a, ~_wgslsmith_add_u32(u_input.a, u_input.a)) | _wgslsmith_add_u32(1u, 0u);
    var var_2 = Struct_1(firstTrailingBit(~(-global2.a >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))), vec3<bool>(all(!global2.b.yz), global2.b.x, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c + -695f) * -1000f)))));
    var var_3 = Struct_1(abs(global1[_wgslsmith_index_u32(var_1, 4u)]) & (~var_2.a | ~(~vec2<i32>(var_2.a.x, var_2.a.x))), !func_3(func_2(), func_2(), _wgslsmith_sub_vec3_u32(~vec3<u32>(var_1, u_input.a, 4294967295u), vec3<u32>(8699u, u_input.a, var_1)), func_2()).yww, -553f);
    var var_4 = -min(-(~(vec3<i32>(global2.a.x, var_2.a.x, -8459i) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)))), -(vec3<i32>(0i, -1i, var_2.a.x) & _wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, var_2.a.x, 0i), vec3<i32>(var_3.a.x, global2.a.x, -41552i))));
    let var_5 = _wgslsmith_div_i32(min(min(var_3.a.x, -34302i), func_2().a.x), (~var_3.a.x & _wgslsmith_div_i32(var_3.a.x, _wgslsmith_clamp_i32(var_3.a.x, -1i, 12651i))) ^ var_3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-171f, global2.c, var_3.c, -1000f), _wgslsmith_div_vec4_f32(vec4<f32>(var_3.c, -597f, 347f, var_2.c), vec4<f32>(global2.c, 1367f, -121f, 212f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(395f, -394f, var_2.c, var_3.c) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c, var_3.c, -934f, -1400f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c, 1406f, var_3.c, 1000f) - vec4<f32>(global2.c, var_3.c, -926f, var_3.c)))))), var_2.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1161f, var_3.c), vec2<f32>(-266f, 750f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, -122f) * vec2<f32>(var_3.c, -602f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(780f, var_2.c), vec2<f32>(var_2.c, var_2.c), true)))));
}

