struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(1000f, -1000f, 798f), vec3<f32>(950f, 416f, 1347f), vec3<f32>(1025f, 1000f, -344f), vec3<f32>(1012f, 466f, -419f), vec3<f32>(-557f, -861f, 590f), vec3<f32>(1227f, -630f, -1157f), vec3<f32>(811f, -757f, 846f), vec3<f32>(1274f, 1588f, -1000f));

var<private> global1: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false));

var<private> global2: Struct_1;

var<private> global3: f32;

var<private> global4: Struct_2;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> u32 {
    global3 = _wgslsmith_f_op_f32(-global4.a);
    global4 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -162f));
    let var_0 = arg_1;
    var var_1 = var_0;
    var var_2 = var_0;
    return var_0.c.x;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> bool {
    global1 = array<vec4<bool>, 29>();
    var var_0 = _wgslsmith_f_op_f32(floor(518f));
    var var_1 = arg_0;
    let var_2 = Struct_1(-18641i, ~vec4<i32>(-19726i, _wgslsmith_clamp_i32(firstLeadingBit(arg_0.a), 56937i, arg_0.b.x), _wgslsmith_div_i32(var_1.a, 1i) >> (8947u % 32u), -u_input.b >> (_wgslsmith_div_u32(arg_1, u_input.a.x) % 32u)), vec3<u32>(0u, 29561u, _wgslsmith_add_u32(arg_0.c.x & global2.d.x, 117621u)), vec4<u32>(u_input.d.x, ~37812u, 1u, arg_0.c.x & _wgslsmith_mult_u32(func_3(1u, Struct_1(9464i, arg_0.b, var_1.d.wzz, vec4<u32>(1u, 63323u, 71657u, 4294967295u)), u_input.e.x, Struct_1(-1i, u_input.e, arg_0.d.zzy, global2.d)), 4294967295u)));
    global2 = var_2;
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: u32) -> Struct_1 {
    let var_0 = abs(u_input.a);
    global1 = array<vec4<bool>, 29>();
    let var_1 = Struct_2(-465f);
    var var_2 = ~u_input.b;
    global2 = Struct_1(firstTrailingBit(_wgslsmith_sub_i32(-2147483647i >> (_wgslsmith_clamp_u32(104686u, var_0.x, 76918u) % 32u), _wgslsmith_div_i32(firstTrailingBit(global2.b.x), global2.a))), ~(-(vec4<i32>(-1i) * -u_input.e)), abs(max(global2.c, ~global2.d.zwz)), vec4<u32>(0u, var_0.x, arg_1, ~u_input.d.x));
    return Struct_1(~abs(firstLeadingBit(_wgslsmith_dot_vec3_i32(global2.b.zwy, u_input.e.xxw))), u_input.e, reverseBits(vec3<u32>(52206u, var_0.x, abs(81292u))), ~(~(~abs(vec4<u32>(u_input.c.x, 4294967295u, arg_1, global2.d.x)))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a - global4.a))) - -436f) <= 482f;
    let var_1 = global2.d.zxy;
    var var_2 = all(vec2<bool>(!(!select(false, false, true)), false));
    global0 = array<vec3<f32>, 8>();
    global2 = func_4(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4.a, -141f)) - _wgslsmith_f_op_f32(global4.a + global4.a)) != -1140f, func_2(Struct_1(firstTrailingBit(u_input.b), vec4<i32>(global2.a, 2147483647i, -65327i, 1i), vec3<u32>(15895u, 4294967295u, 65163u), _wgslsmith_add_vec4_u32(global2.d, global2.d)), 7175u), func_2(Struct_1(-1i, u_input.e, vec3<u32>(4294967295u, 91935u, global2.c.x), vec4<u32>(u_input.c.x, global2.c.x, 20669u, 0u)), 1u) || false), ~u_input.a.x);
    return Struct_1(u_input.b & (i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a, 1i, 0i, -2147483647i), u_input.e)), _wgslsmith_clamp_vec4_i32(min(~max(vec4<i32>(2147483647i, u_input.b, global2.a, global2.a), vec4<i32>(u_input.e.x, 0i, -1i, -1888i)), global2.b), global2.b, countOneBits(abs(min(global2.b, vec4<i32>(global2.b.x, global2.a, u_input.e.x, global2.b.x))))), ~(~func_4(vec3<bool>(true, false, true), 19538u).c), global2.d);
}

fn func_5(arg_0: bool, arg_1: bool, arg_2: Struct_1) -> vec2<u32> {
    return vec2<u32>(u_input.d.x, ~(1u & reverseBits(global2.c.x))) << (func_1().d.xz % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 8>();
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(global0[_wgslsmith_index_u32(47331u, 8u)], _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(global0[_wgslsmith_index_u32(18545u, 8u)])))))))));
    global3 = var_1.x;
    var var_2 = global2.d.yy;
    var var_3 = ~func_5(true, select(true, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), u_input.b != global2.b.x), func_1());
    var var_4 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(func_1().d, vec4<u32>(0u, ~u_input.d.x, var_3.x, 4294967295u) << (~global2.d % vec4<u32>(32u)), ~select(_wgslsmith_add_vec4_u32(vec4<u32>(var_3.x, 49855u, 0u, 4127u), vec4<u32>(var_2.x, 1u, u_input.c.x, 1u)), abs(global2.d), global1[_wgslsmith_index_u32(86104u, 29u)])), global2.d);
    var_0 = all(!(!(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.xxz, global4.a, var_2.x);
}

