struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: bool,
    d: i32,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(1i), Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(40356i), Struct_1(1i), Struct_1(37308i), Struct_1(1i), Struct_1(2147483647i), Struct_1(-27039i), Struct_1(0i), Struct_1(8920i), Struct_1(0i), Struct_1(1i), Struct_1(16197i), Struct_1(-1i), Struct_1(36546i));

var<private> global1: Struct_1;

var<private> global2: f32;

var<private> global3: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(1197f, 1000f), vec2<f32>(907f, 785f), vec2<f32>(188f, 303f), vec2<f32>(-1000f, -1376f), vec2<f32>(2262f, 882f), vec2<f32>(-715f, 558f), vec2<f32>(-1158f, 670f), vec2<f32>(1792f, -672f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-284f)) - _wgslsmith_f_op_f32(-1317f - -1827f)))), vec2<f32>(1493f, 627f), arg_0.x, -arg_1.a, u_input.b);
    return var_0.b.x <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-346f - -569f)))));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<i32>, arg_3: Struct_1) -> f32 {
    global2 = _wgslsmith_f_op_f32(192f * 674f);
    return -1382f;
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: u32) -> Struct_4 {
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(firstLeadingBit(global1.a), _wgslsmith_add_vec4_i32(vec4<i32>(global1.a, -18175i, -1699i, global1.a), vec4<i32>(-1i, 22566i, 2147483647i, 1i)), vec4<i32>(0i, 51582i, 2147483647i, -9358i), Struct_1(0i)))), vec2<f32>(-620f, _wgslsmith_f_op_f32(sign(arg_1))), all(vec3<bool>(true, true, true)), _wgslsmith_sub_i32(global1.a, -31674i), reverseBits(-select(vec3<i32>(14747i, 2147483647i, u_input.b.x), u_input.b, vec3<bool>(false, true, true)))), select(1u, _wgslsmith_mult_u32(u_input.a.x, u_input.c.x ^ u_input.c.x) << (arg_2 % 32u), _wgslsmith_add_i32(~global1.a, 0i) != 40578i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1057f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -485f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(exp2(arg_1))) * _wgslsmith_f_op_f32(floor(arg_1))));
    var var_1 = (-1i >> (firstTrailingBit(1u) % 32u)) << (~_wgslsmith_mult_u32(1u, u_input.c.x) % 32u);
    global3 = array<vec2<f32>, 8>();
    return Struct_4(Struct_2(_wgslsmith_f_op_f32(max(var_0.c, _wgslsmith_f_op_f32(-2102f * 1431f))), vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, -194f)), _wgslsmith_f_op_f32(-1f)), true, _wgslsmith_dot_vec2_i32(var_0.a.e.zz, abs(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, global1.a), vec2<i32>(-1i, arg_0)))), vec3<i32>(-2147483647i, _wgslsmith_div_i32(_wgslsmith_div_i32(45881i, -28690i), -arg_0), -20874i)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: Struct_3, arg_3: bool) -> StorageBuffer {
    global1 = Struct_1(~_wgslsmith_add_i32(u_input.b.x, arg_2.a.d) >> (55961u % 32u));
    global2 = -452f;
    global3 = array<vec2<f32>, 8>();
    global0 = array<Struct_1, 17>();
    global0 = array<Struct_1, 17>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.d), _wgslsmith_f_op_f32(trunc(arg_1.a.a)), _wgslsmith_f_op_f32(arg_2.a.a + -1000f), arg_2.a.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1372f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-676f + _wgslsmith_f_op_f32(f32(-1f) * -179f)) + -175f))));
    var_0 = u_input.a.x;
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -661f)))) - -465f), -352f));
    let var_2 = !(!(!any(vec2<bool>(false, false))) & false);
    let x = u_input.a;
    s_output = func_4(!select(!(!vec2<bool>(true, var_2)), select(!vec2<bool>(false, var_2), vec2<bool>(true, var_2), true), u_input.c.x > ~4294967295u), func_2(0i >> (_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.c.x), u_input.c.x) % 32u), 151f, select(u_input.a.x, 1u, func_1(vec3<bool>(var_2, false, true), Struct_1(u_input.b.x))) | countOneBits(1u), 54724u), Struct_3(Struct_2(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec2_f32(vec2<f32>(314f, 1804f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(388f, -592f) - global3[_wgslsmith_index_u32(26342u, 8u)])), false, u_input.b.x, vec3<i32>(1i, abs(global1.a), -1i)), _wgslsmith_mult_u32(u_input.c.x >> (reverseBits(5867u) % 32u), ~(~u_input.a.x)), -2764f, _wgslsmith_f_op_f32(sign(691f))), false);
}

