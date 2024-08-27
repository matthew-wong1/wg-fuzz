struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(0u, 4294967295u, 18855u, 4294967295u, 33825u, 1u, 26944u, 7779u, 0u, 102028u, 1u, 0u, 4294967295u, 513u, 4294967295u, 42452u, 1u);

var<private> global1: array<vec4<f32>, 14>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: vec4<i32>) -> f32 {
    global1 = array<vec4<f32>, 14>();
    let var_0 = arg_1;
    let var_1 = ~(~_wgslsmith_add_vec3_u32(abs(countOneBits(vec3<u32>(0u, var_0.a.b.x, global0[_wgslsmith_index_u32(u_input.d.x, 17u)]))), ~_wgslsmith_clamp_vec3_u32(u_input.d.yxw, u_input.d.xyx, vec3<u32>(1u, u_input.a.x, arg_1.a.b.x))));
    var var_2 = arg_1.a.a.x;
    var var_3 = 1i;
    return _wgslsmith_f_op_f32(-164f * _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(f32(-1f) * -510f)))));
}

fn func_2() -> vec3<i32> {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(878f - -743f), _wgslsmith_f_op_f32(func_3(208f, Struct_3(Struct_1(vec4<f32>(555f, -1000f, -540f, 502f), u_input.a)), vec4<i32>(64796i, 1i, u_input.b, 1i))), _wgslsmith_f_op_f32(step(-957f, -231f)), 941f)), vec2<u32>(24072u, ~1u)));
    var var_1 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, 333f, var_0.a.a.x, -187f)))), var_0.a.b));
    let var_2 = u_input.d.xzy;
    var_1 = Struct_3(var_0.a);
    var var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(591f * 865f)));
    return firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-1i, u_input.b, u_input.b, u_input.b), _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.b, u_input.c, 26216i), vec4<i32>(-43909i, 0i, 2147483647i, 14039i))), select(max(vec4<i32>(u_input.b, u_input.c, u_input.b, -61009i), vec4<i32>(-8309i, u_input.c, -2147483647i, u_input.b)), select(vec4<i32>(u_input.c, -21642i, u_input.b, u_input.c), vec4<i32>(13547i, u_input.c, u_input.b, -1i), vec4<bool>(false, false, false, false)), vec4<bool>(true, true, true, true))), 10656i, -2147483647i));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = u_input.e;
    var var_1 = Struct_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -385f), -563f, 449f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(243f, 845f))), arg_0));
    var var_2 = func_2();
    let var_3 = 1i;
    global0 = array<u32, 17>();
    return Struct_1(_wgslsmith_f_op_vec4_f32(exp2(global1[_wgslsmith_index_u32(abs(7967u), 14u)])), ~_wgslsmith_sub_vec2_u32(abs(~vec2<u32>(var_1.a.b.x, var_1.a.b.x)), countOneBits(vec2<u32>(global0[_wgslsmith_index_u32(arg_0.x, 17u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43341u, 17u)], 17u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(func_1(~countOneBits(u_input.d.xx)));
    let var_1 = !(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, true))));
    global1 = array<vec4<f32>, 14>();
    let var_2 = all(!var_1);
    global0 = array<u32, 17>();
    global0 = array<u32, 17>();
    let var_3 = _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(1i, -2147483647i, _wgslsmith_div_i32(2090i, 2147483647i))), _wgslsmith_mult_vec3_i32(-_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, u_input.e, u_input.e)), vec3<i32>(u_input.b, u_input.c, 35531i)), vec3<i32>(0i, ~firstTrailingBit(u_input.c), 1i >> (func_1(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)], 6871u)).b.x % 32u))));
    global0 = array<u32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a.a.x)))), _wgslsmith_f_op_f32(-var_0.a.a.x)), _wgslsmith_div_u32(_wgslsmith_mod_u32(var_0.a.b.x, global0[_wgslsmith_index_u32(firstLeadingBit(var_0.a.b.x), 17u)]), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.b.x, 0u), var_0.a.b)) << (~(~21657u) % 32u)), vec3<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(649f, -1629f) - _wgslsmith_f_op_f32(f32(-1f) * -1645f)), var_0.a.a.x));
}

