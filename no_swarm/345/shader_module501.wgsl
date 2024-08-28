struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29>;

var<private> global1: bool = false;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec2<i32>(-1i, -6149i));
    let var_1 = var_0;
    global1 = true;
    let var_2 = _wgslsmith_add_u32(u_input.c.x, u_input.a.x);
    let var_3 = abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -2147483647i), ~vec2<i32>(4188i, -13334i)) ^ var_1.a.x) >> (u_input.a.x % 32u);
    return Struct_1(var_0.a);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = select(vec4<bool>(true, false, u_input.b.x == 4294967295u, true), vec4<bool>(true, !(u_input.b.x > 0u) & select(false, true, all(vec4<bool>(false, true, false, false))), any(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false))), !(!(36134u < u_input.b.x))), arg_1.a.x < arg_3.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(2140f * -1034f), 134f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-849f + -366f)) + _wgslsmith_f_op_f32(trunc(-122f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1378f)))))));
    var var_2 = any(!(!var_0.wxy));
    var_0 = vec4<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false))) | var_0.x, any(select(select(select(vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), false), vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(false, true, var_0.x, true)), select(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, var_0.x), var_0.x), !vec4<bool>(true, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, false, var_0.x, true)), vec4<bool>(any(vec4<bool>(var_0.x, true, var_0.x, false)), var_0.x, any(var_0.yyy), false))), all(!var_0.yzw), all(var_0.wxz));
    let var_3 = select(vec2<bool>(true, u_input.a.x <= _wgslsmith_div_u32(~arg_0, ~u_input.a.x)), !(!select(select(vec2<bool>(true, false), var_0.ww, vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(var_0.x, false), var_0.xw, vec2<bool>(true, var_0.x)), !var_0.x)), true);
    return arg_2;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec3<i32>, arg_3: f32) -> Struct_1 {
    return func_3(arg_0.x, Struct_1(vec2<i32>(reverseBits(_wgslsmith_mod_i32(arg_2.x, 2147483647i)), arg_2.x)), func_2(), _wgslsmith_add_vec4_i32(abs(vec4<i32>(-25041i, reverseBits(arg_1.x), 1i >> (u_input.b.x % 32u), _wgslsmith_mult_i32(-19223i, arg_1.x))), vec4<i32>(select(arg_2.x, 42944i, arg_1.x > -2582i), arg_2.x, arg_2.x, countOneBits(arg_2.x << (0u % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 29>();
    global0 = array<vec4<u32>, 29>();
    var var_0 = !vec2<bool>(all(vec3<bool>(false, true, true)), false && all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), true)));
    let var_1 = func_1(select(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, ~u_input.b.x & 1u), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.c.x, u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(78986u, 29u)]), ~global0[_wgslsmith_index_u32(0u, 29u)]) | vec4<u32>(4588u, ~u_input.a.x, ~80387u, 4294967295u), !vec4<bool>(all(vec3<bool>(var_0.x, var_0.x, true)), var_0.x, true, any(vec3<bool>(var_0.x, var_0.x, var_0.x)))), (firstTrailingBit(vec3<i32>(1i, 1i, 1i)) << (vec3<u32>(_wgslsmith_div_u32(u_input.c.x, 1u), ~0u, ~u_input.c.x) % vec3<u32>(32u))) << (countOneBits(countOneBits(vec3<u32>(1u, 1u, 1u))) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i), 1470f);
    var var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(562f, 1000f, -2091f, -1147f), vec4<f32>(1000f, 435f, -1196f, -2232f))) * vec4<f32>(_wgslsmith_div_f32(1301f, 1067f), _wgslsmith_f_op_f32(771f * 975f), -1030f, -154f))), _wgslsmith_sub_vec2_u32(u_input.c, ~u_input.c));
}

