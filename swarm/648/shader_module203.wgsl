struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: bool,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<bool, 16> = array<bool, 16>(true, false, true, false, false, true, false, false, true, false, true, true, true, false, false, true);

var<private> global2: Struct_1;

var<private> global3: array<i32, 1> = array<i32, 1>(i32(-2147483648));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<f32>) -> u32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -146f)))))));
    global2 = Struct_1(select(countOneBits(~(u_input.a.wzz | vec3<u32>(u_input.a.x, global2.b.x, global2.b.x))), global2.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1446f)), _wgslsmith_f_op_f32(step(var_0.x, 2054f)))) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x)))), global2.a.yz, u_input.a.xww);
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), ~(~(~(~global2.a.yx))));
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(606f + arg_0.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_0.x)), 1197f, true)), _wgslsmith_div_f32(arg_0.x, _wgslsmith_div_f32(arg_0.x, arg_0.x)))));
    global0 = _wgslsmith_add_vec4_i32(firstTrailingBit(abs(vec4<i32>(-23660i, u_input.b, global0.x, -1i) | vec4<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 1u)], global3[_wgslsmith_index_u32(u_input.a.x, 1u)], global3[_wgslsmith_index_u32(4294967295u, 1u)], 0i))), -(~(~max(vec4<i32>(0i, 11928i, -24473i, -1i), vec4<i32>(-86782i, 55437i, global3[_wgslsmith_index_u32(u_input.a.x, 1u)], u_input.b)))));
    let var_1 = Struct_4(-(~firstLeadingBit(-3818i)), ~vec2<u32>(4294967295u, _wgslsmith_div_u32(~1u, u_input.a.x)));
    var var_2 = var_1;
    let var_3 = var_1;
    return 4294967295u;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(4294967295u, u_input.a.x, firstLeadingBit(1u), func_2(!vec3<bool>(true, arg_1.x, arg_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1241f, 927f, 670f, 1518f) - vec4<f32>(981f, -207f, -142f, -436f)))) >> (u_input.a % vec4<u32>(32u)), ~u_input.a);
    global2 = Struct_1(vec3<u32>(countOneBits(~(~global2.b.x)), firstLeadingBit(~(~var_0.x)), ~u_input.a.x), reverseBits(vec2<u32>(~0u, 52141u)), _wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 1u), func_3(vec2<f32>(-239f, -1420f)))), ~global2.a));
    var var_1 = u_input.b;
    global3 = array<i32, 1>();
    var var_2 = 0u;
    return u_input.a.xzz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(select(~(global2.c >> (vec3<u32>(1u, 60716u, 3247u) % vec3<u32>(32u))), firstTrailingBit(global2.a), abs(global0.x) <= 13779i), ~(~vec2<u32>(0u, u_input.a.x)), (~vec3<u32>(4294967295u, global2.c.x, global2.a.x) | func_1(vec3<bool>(global1[_wgslsmith_index_u32(global2.c.x, 16u)], global1[_wgslsmith_index_u32(global2.b.x, 16u)], false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], true, global1[_wgslsmith_index_u32(u_input.a.x, 16u)]), Struct_1(global2.c, global2.b, vec3<u32>(u_input.a.x, global2.b.x, 0u)))) & (abs(global2.c) << (global2.a % vec3<u32>(32u)))));
    var var_1 = var_0.a;
    global0 = vec4<i32>(countOneBits(u_input.c), 1i, 4853i, -global3[_wgslsmith_index_u32(u_input.a.x, 1u)]);
    var_0 = Struct_3(var_0.a);
    var var_2 = Struct_3(var_0.a);
    var var_3 = Struct_3(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(global3[_wgslsmith_index_u32(22685u, 1u)] << (select(u_input.a.x, 1u, true) % 32u)), _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.c, -2147483647i), ~(~2147483647i))));
}

