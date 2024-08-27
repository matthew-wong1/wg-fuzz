struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 2>;

var<private> global2: array<u32, 7> = array<u32, 7>(125990u, 64860u, 39749u, 4294967295u, 4294967295u, 12619u, 4294967295u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: i32) -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(global2[_wgslsmith_index_u32(0u, 7u)], u_input.e.x), 7u)];
    let var_1 = -977f;
    let var_2 = select(select(!vec3<bool>(any(vec3<bool>(arg_0, arg_0, true)), !arg_0, any(vec2<bool>(arg_0, arg_0))), !vec3<bool>(var_1 == 650f, arg_0 != arg_0, true), !select(vec3<bool>(arg_0, false, true), vec3<bool>(arg_0, false, arg_0), select(vec3<bool>(true, arg_0, true), vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, true, false)))), select(select(select(select(vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0), true), select(vec3<bool>(true, arg_0, true), vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, arg_0, false)), vec3<bool>(arg_0, arg_0, false)), !select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, arg_0, false)), vec3<bool>(select(true, true, true), u_input.c.x <= -2147483647i, true)), select(!(!vec3<bool>(true, arg_0, true)), select(!vec3<bool>(false, arg_0, arg_0), select(vec3<bool>(true, arg_0, false), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0)), true), any(vec2<bool>(arg_0, true))), !any(select(vec4<bool>(arg_0, arg_0, arg_0, true), vec4<bool>(arg_0, true, arg_0, arg_0), false))), vec3<bool>(true, false, !any(vec3<bool>(true, true, true))));
    var var_3 = vec4<bool>(arg_0, true, all(!select(select(var_2.yz, var_2.zz, vec2<bool>(arg_0, true)), vec2<bool>(true, false), any(vec3<bool>(arg_0, arg_0, var_2.x)))), false);
    global1 = array<Struct_1, 2>();
    return 39555i;
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec3<i32>) -> vec4<f32> {
    var var_0 = arg_2.zy;
    var var_1 = Struct_1(func_3(true, _wgslsmith_sub_i32(arg_1.a, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-28442i, arg_1.a, arg_1.a), arg_2), -vec3<i32>(2147483647i, u_input.c.x, arg_1.a)))));
    global2 = array<u32, 7>();
    let var_2 = vec3<bool>(false, any(!(!(!vec2<bool>(true, arg_0)))), true);
    let var_3 = Struct_1(-1i);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(231f, -827f, -563f, 211f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1193f, -366f, -188f, -552f)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -274f), _wgslsmith_f_op_f32(abs(-214f)), _wgslsmith_f_op_f32(f32(-1f) * -2031f), 453f))));
}

fn func_4(arg_0: vec4<f32>) -> vec4<bool> {
    return !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, false))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true)))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, global0.a == 0i, any(vec2<bool>(true, true)))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), true), true), vec4<bool>(true, true, true, true), true));
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_1, 2>();
    var var_0 = 150f;
    let var_1 = vec4<bool>(any(select(vec4<bool>(true, true, true, true), func_4(_wgslsmith_f_op_vec4_f32(func_2(true, Struct_1(u_input.b), vec3<i32>(u_input.a, -1i, -58935i)))), (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(8338u, 7u)], 7u)] | global2[_wgslsmith_index_u32(29645u, 7u)]) <= ~global2[_wgslsmith_index_u32(63429u, 7u)])), true, select(true || any(vec3<bool>(true, true, true)), true, !all(vec4<bool>(false, false, false, true)) && true), any(vec2<bool>(false, any(vec3<bool>(false, true, true)))) | true);
    global2 = array<u32, 7>();
    let var_2 = vec3<u32>(countOneBits(~(u_input.e.x | global2[_wgslsmith_index_u32(0u, 7u)])) ^ ~global2[_wgslsmith_index_u32(u_input.e.x, 7u)], 51865u, ~countOneBits(~(~u_input.e.x)));
    return global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(~global2[_wgslsmith_index_u32(0u, 7u)] & ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, var_2.x, 32031u, 29664u), vec4<u32>(84303u, u_input.e.x, u_input.e.x, 55939u)), 0u), var_2.x), 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = i32(-1i) * -2147483647i;
    let var_1 = false;
    let var_2 = func_1();
    global0 = var_2;
    var var_3 = Struct_1(-4443i);
    global0 = Struct_1(var_3.a);
    let var_4 = countOneBits(u_input.d.yw);
    var var_5 = vec3<u32>(global2[_wgslsmith_index_u32(u_input.e.x, 7u)], u_input.e.x, firstTrailingBit(4294967295u));
    global2 = array<u32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(-_wgslsmith_add_i32(global0.a, 2147483647i)), var_0, -var_3.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-929f, -407f, -1000f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2698f, -861f, -664f), vec3<f32>(-1000f, 537f, -174f), true))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-100f, 868f, -651f, -1028f)) - vec4<f32>(1f, 1f, 1f, 1f)))));
}

