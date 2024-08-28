struct Struct_1 {
    a: vec4<f32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    global0 = array<i32, 8>();
    let var_0 = select(!(!(!select(vec3<bool>(false, arg_0.a.b, arg_0.a.b), vec3<bool>(false, arg_0.a.b, false), vec3<bool>(arg_0.a.b, arg_0.a.b, arg_0.a.b)))), select(select(vec3<bool>(true, true, arg_0.a.b), vec3<bool>(true, !arg_0.a.b, any(vec3<bool>(true, arg_0.a.b, arg_0.a.b))), select(vec3<bool>(true, true, arg_0.a.b), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), true), true)), vec3<bool>(true, true, _wgslsmith_f_op_f32(-arg_0.a.a.x) != -1169f), arg_0.a.b), false);
    let var_1 = ~0u;
    var var_2 = select(var_0.zz, var_0.yx, false);
    let var_3 = !arg_0.a.b;
    return _wgslsmith_mult_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1545u, u_input.c), var_1, 1u, ~12632u), vec4<u32>(4294967295u, abs(30915u), ~u_input.a.x, var_1 >> (17099u % 32u)))), select(select(select(~vec4<u32>(0u, u_input.c, 50339u, u_input.c), ~vec4<u32>(u_input.a.x, 76847u, var_1, u_input.a.x), vec4<bool>(var_3, var_2.x, false, false)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, 33519u), vec4<u32>(var_1, var_1, var_1, var_1)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_2.x, false, false, var_0.x), vec4<bool>(true, false, var_3, var_3), vec4<bool>(true, arg_0.a.b, true, true)), true | var_2.x)), vec4<u32>(countOneBits(51228u), 4824u, 22752u, u_input.c) << (vec4<u32>(1u, var_1 << (var_1 % 32u), 97596u, u_input.a.x) % vec4<u32>(32u)), arg_0.a.b));
}

fn func_2() -> Struct_3 {
    var var_0 = !(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)))));
    var var_1 = -975f;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1324f, -1219f, 1000f, -469f) * vec4<f32>(-200f, 183f, -736f, -356f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1572f, 649f, -170f, -2454f))) + vec4<f32>(_wgslsmith_f_op_f32(sign(-642f)), _wgslsmith_f_op_f32(sign(-734f)), _wgslsmith_f_op_f32(f32(-1f) * -1458f), 883f)), var_0.x));
    var_1 = var_2.a.a.x;
    let var_3 = ~(~(select(vec4<u32>(u_input.c, u_input.c, u_input.a.x, u_input.a.x), func_3(var_2), !vec4<bool>(false, true, var_2.a.b, var_2.a.b)) | ~(~vec4<u32>(1u, 21992u, u_input.c, 4173u))));
    return Struct_3(vec2<i32>(-1i) * -(~u_input.d.xy));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> vec4<f32> {
    let var_0 = func_2();
    global0 = array<i32, 8>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1301f, 1092f, -1000f, -1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1060f, -1127f, 184f, 132f))), vec4<f32>(_wgslsmith_f_op_f32(max(2248f, -1094f)), 716f, _wgslsmith_f_op_f32(f32(-1f) * -361f), _wgslsmith_f_op_f32(999f * -416f)))), (arg_1 | true) || true));
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_1.a.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 89772u;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(reverseBits(u_input.a), global0[_wgslsmith_index_u32(u_input.a.x, 8u)] <= u_input.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-141f, -795f, 212f, 555f)))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -890f), -1064f), 469f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -863f), _wgslsmith_f_op_f32(425f + 894f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(451f, -241f)) + 1093f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(1283f, -580f, true)), -1294f) * var_1.wx) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(ceil(var_1.x))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(912f, var_1.x), var_1.zz)), vec2<f32>(-986f, -664f))))));
    var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_1.xx - var_1.wy), var_1.yx, true));
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_2.x, _wgslsmith_f_op_f32(-555f - _wgslsmith_f_op_f32(round(309f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1 - _wgslsmith_f_op_vec4_f32(var_1 * var_1)), vec4<f32>(1000f, _wgslsmith_div_f32(-1055f, var_2.x), _wgslsmith_f_op_f32(var_2.x - -1195f), 1103f)), true)), var_2.x, firstTrailingBit(~_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.a.x, 1u, u_input.c, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 0u, 15013u) | vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 786u))), (~abs(u_input.e.x) ^ ~_wgslsmith_sub_i32(9627i, global0[_wgslsmith_index_u32(u_input.c, 8u)])) & reverseBits(_wgslsmith_clamp_i32(7721i, countOneBits(global0[_wgslsmith_index_u32(1u, 8u)]), u_input.b)), u_input.c);
}

