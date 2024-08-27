struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, false, true, false), false, vec3<bool>(false, true, false), vec3<u32>(4294967295u, 0u, 0u));

var<private> global1: array<vec2<bool>, 2>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = firstLeadingBit(global0.d);
    let var_1 = vec3<u32>(arg_0.d.x, ~var_0.x, 46965u);
    return arg_0.d.x;
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    return Struct_1(global0.a, -1i != _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.a.x, 39607i, u_input.a.x), u_input.a, !global0.c.x), max(vec3<i32>(u_input.a.x, u_input.a.x, 10538i), _wgslsmith_add_vec3_i32(u_input.a, u_input.a))), global0.c, firstTrailingBit(vec3<u32>(66391u, func_2(Struct_1(global0.a, true, global0.c, global0.d)) & 21191u, _wgslsmith_dot_vec2_u32(vec2<u32>(24071u, 0u) << (global0.d.xz % vec2<u32>(32u)), global0.d.zz))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    var var_0 = false;
    global0 = Struct_1(arg_1.a, all(select(vec2<bool>(!arg_0.a.x, true), global1[_wgslsmith_index_u32(~global0.d.x, 2u)], !vec2<bool>(arg_1.a.x, arg_1.b))), vec3<bool>(false, !(false || !arg_0.c.x), false & all(arg_0.a)), vec3<u32>(arg_0.d.x, 7210u, global0.d.x));
    let var_1 = Struct_1(select(vec4<bool>((arg_1.d.x ^ 4294967295u) > arg_0.d.x, true, arg_0.c.x, any(vec3<bool>(global0.b, false, false)) && all(global0.a)), !(!global0.a), true), arg_0.b, global0.c, ~(_wgslsmith_mult_vec3_u32(vec3<u32>(17u, global0.d.x, 1u), ~arg_0.d) & _wgslsmith_add_vec3_u32(arg_0.d, ~vec3<u32>(1u, 4294967295u, arg_1.d.x))));
    var_0 = true;
    global1 = array<vec2<bool>, 2>();
    return func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(2301f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-930f))), -1134f) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -371f), _wgslsmith_f_op_f32(f32(-1f) * -502f), _wgslsmith_f_op_f32(1000f * 1235f))))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(vec4<bool>(false, false, true, true), global0.b & global0.a.x, !(!func_3(func_1(vec3<f32>(-151f, -1062f, 1353f)), Struct_1(arg_0.a, arg_0.b, arg_0.c, global0.d)).c), vec3<u32>(min(1u, _wgslsmith_dot_vec2_u32(arg_0.d.xz, global0.d.yz)), _wgslsmith_mod_u32(~(~global0.d.x), global0.d.x), global0.d.x));
    var var_1 = func_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1421f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-553f - -136f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-772f, -1644f)) * _wgslsmith_f_op_f32(max(-721f, 2051f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(463f, -1076f)))), _wgslsmith_f_op_f32(f32(-1f) * -522f)));
    let var_2 = -52206i;
    let var_3 = false;
    let var_4 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-930f + -1489f)))))));
    return func_3(func_3(Struct_1(!(!global0.a), false, select(arg_0.c, !vec3<bool>(global0.c.x, var_1.b, false), vec3<bool>(arg_0.b, true, var_1.b)), arg_0.d), arg_0), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_3(Struct_1(vec4<bool>(true, global0.c.x, false, global0.a.x), abs(u_input.a.x) <= _wgslsmith_mult_i32(0i, -25734i), !global0.c, _wgslsmith_div_vec3_u32(abs(global0.d), ~vec3<u32>(global0.d.x, 4294967295u, global0.d.x))), func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(667f, 770f, 697f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1068f, 1270f, 481f) + vec3<f32>(-847f, -2507f, 969f))))), _wgslsmith_mult_u32(0u, ~4294967295u));
    let var_1 = true;
    var var_2 = vec2<bool>(false, true);
    let var_3 = -_wgslsmith_sub_vec4_i32(vec4<i32>((u_input.b ^ u_input.a.x) >> (~1u % 32u), countOneBits(u_input.b), 14626i, 0i), vec4<i32>(-u_input.b, -27239i, _wgslsmith_add_i32(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.a.x, -2147483647i, -2147483647i), vec4<i32>(0i, 0i, u_input.b, 1i))), -1i));
    global0 = Struct_1(vec4<bool>(!var_1, !var_1, func_3(func_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1924f, -1173f, 2009f), vec3<f32>(550f, -409f, -741f)))), Struct_1(global0.a, true, vec3<bool>(global0.c.x, false, true), ~var_0.d)).c.x, true), true, global0.a.zwy, vec3<u32>(max(63503u, 55408u), var_0.d.x, 4294967295u));
    global1 = array<vec2<bool>, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1984f + -250f)) * 957f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(-1308f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-518f, -1446f))), _wgslsmith_f_op_f32(sign(-506f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-207f, 375f, -2080f))), vec3<f32>(1f, 1f, 1f)))), var_0.d.xy);
}

