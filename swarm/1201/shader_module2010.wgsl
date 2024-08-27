struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: vec4<bool>;

var<private> global2: array<Struct_2, 2>;

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 1u, 0u, 0u);

var<private> global4: f32 = -1354f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_2 {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, 38989u), 2u)];
    let var_1 = Struct_2(var_0.a, _wgslsmith_div_vec3_i32(var_0.b, vec3<i32>(var_0.b.x, ~firstLeadingBit(var_0.b.x), _wgslsmith_add_i32(var_0.b.x, _wgslsmith_mod_i32(var_0.b.x, var_0.b.x)))), vec3<u32>(global3.x, ~((global3.x | 12487u) | 1u), ~global3.x), var_0.d);
    global3 = vec4<u32>(4294967295u, 25843u, ~_wgslsmith_mod_u32(var_1.c.x, var_0.c.x), abs(firstTrailingBit(~0u)));
    global0 = ~(~20636i);
    var_0 = global2[_wgslsmith_index_u32(41057u, 2u)];
    return Struct_2(_wgslsmith_div_f32(-789f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(814f + 568f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), any(vec2<bool>(global1.x, false))))))), vec3<i32>(_wgslsmith_add_i32(min(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -39043i, u_input.a, -19341i), vec4<i32>(0i, var_0.b.x, -2147483647i, var_1.b.x)), u_input.a), (u_input.b.x ^ u_input.b.x) << (~var_1.c.x % 32u)), (u_input.b.x & max(-1i, -1i)) | u_input.a, -1i), vec3<u32>(~global3.x, global3.x, _wgslsmith_dot_vec3_u32(global3.ywy, var_1.c)), Struct_1(global3.x));
}

fn func_3() -> Struct_1 {
    global2 = array<Struct_2, 2>();
    global3 = vec4<u32>(~(abs(33872u) & global3.x), select(_wgslsmith_dot_vec2_u32(vec2<u32>(32110u, ~global3.x), ~global3.yx), global3.x, global1.x & true), global3.x, global3.x);
    var var_0 = Struct_1(~_wgslsmith_mult_u32(global3.x, 0u & firstLeadingBit(global3.x)));
    var var_1 = -_wgslsmith_div_vec2_i32(u_input.b, -select(u_input.b, vec2<i32>(u_input.a, u_input.b.x), true));
    global3 = vec4<u32>(~17906u, ~global3.x, select(4294967295u, 0u ^ (countOneBits(46925u) ^ firstLeadingBit(global3.x)), !global1.x), select(0u, ~(~(~global3.x)), global1.x));
    return Struct_1(~2384u);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> f32 {
    let var_0 = func_2();
    global1 = !(!(!vec4<bool>(any(global1.wzy), false, true, all(vec3<bool>(arg_1.x, arg_1.x, true)))));
    var var_1 = (arg_0.a == func_2().c.x) && !global1.x;
    var var_2 = func_2();
    global4 = _wgslsmith_f_op_f32(var_0.a * -1000f);
    return 1101f;
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: u32) -> vec3<i32> {
    var var_0 = global1.yyz;
    let var_1 = func_2();
    global2 = array<Struct_2, 2>();
    global4 = _wgslsmith_f_op_f32(func_4(func_3(), !select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(true, true, true, false)), all(vec4<bool>(var_0.x, var_0.x, false, global1.x))), select(global1.wy, select(vec2<bool>(var_0.x, false), vec2<bool>(true, false), vec2<bool>(true, false)), all(vec4<bool>(var_0.x, var_0.x, true, false))))));
    var var_2 = var_0.x;
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -643f))), _wgslsmith_f_op_f32(f32(-1f) * -1088f)))), _wgslsmith_mult_vec3_i32(~firstTrailingBit(firstLeadingBit(vec3<i32>(u_input.b.x, u_input.b.x, -2147483647i))), abs(func_1(Struct_2(1000f, vec3<i32>(u_input.b.x, -706i, -1i), global3.yyz, Struct_1(26953u)), ~47879u, _wgslsmith_sub_u32(1u, 1u)))), global3.xxy, func_3());
    global3 = _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(~var_0.c.x, countOneBits(4294967295u), _wgslsmith_mult_u32(26890u, var_0.d.a), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.d.a, global3.x, 43737u, 9201u), vec4<u32>(1u, 55317u, 4294967295u, var_0.c.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(18238u, 111400u, 63723u, ~global3.x), vec4<u32>(1u, ~1u, 19178u, 1u))), ~vec4<u32>(_wgslsmith_mult_u32(0u, global3.x) ^ _wgslsmith_mult_u32(65957u, 29908u), var_0.d.a ^ ~19853u, firstTrailingBit(~0u), ~(~global3.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-126f, var_0.a)))), vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(483f * var_0.a)))))) + vec2<f32>(-1332f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-294f, var_0.a) + 604f))));
    global4 = var_0.a;
    global3 = ~vec4<u32>(global3.x, global3.x, ~(~(~4294967295u)), var_0.d.a);
    global1 = !select(!select(select(vec4<bool>(true, true, global1.x, false), vec4<bool>(global1.x, true, global1.x, true), global1.x), !vec4<bool>(global1.x, false, false, global1.x), all(global1.zxy)), select(!vec4<bool>(global1.x, true, false, false), select(vec4<bool>(true, global1.x, global1.x, true), select(vec4<bool>(true, false, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x), true), global1.x), true), !global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c, 81790u, var_0.a, 0i, vec2<u32>(~4294967295u, _wgslsmith_div_u32(_wgslsmith_div_u32(~var_0.d.a, 1u), (var_0.c.x | global3.x) & ~100902u)));
}

