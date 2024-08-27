struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: vec3<f32>,
    e: f32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
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

var<private> global0: array<bool, 16>;

var<private> global1: array<vec3<i32>, 24>;

var<private> global2: vec3<f32> = vec3<f32>(-656f, 1416f, 716f);

var<private> global3: f32;

var<private> global4: vec4<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_3 {
    let var_0 = !vec4<bool>(true, false, !arg_2.e, (arg_1.e || arg_1.e) | arg_2.e);
    var var_1 = arg_1.c;
    let var_2 = var_0.x;
    let var_3 = Struct_2(global2.x, !vec4<bool>(false, all(var_0.zz), ~4294967295u < _wgslsmith_add_u32(u_input.a, u_input.c), !arg_1.e), _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(select(arg_1.b, u_input.b, vec2<bool>(false, false)), vec2<i32>(u_input.b.x, u_input.b.x)), vec2<i32>(firstLeadingBit(~12617i), global4.x)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -425f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.x, 554f))), ~u_input.b.x > ~global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - arg_0.x)))), arg_0.x);
    var_1 = 1i;
    return Struct_3(4294967295u);
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: i32) -> bool {
    let var_0 = func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2115f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(387f + global2.x))), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2042f))), -735f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x)))), Struct_1(~(~reverseBits(15900u)), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(select(vec2<i32>(0i, arg_2), vec2<i32>(-2147483647i, -29847i), arg_0), vec2<i32>(arg_2, -7928i)), ~(u_input.b ^ vec2<i32>(arg_2, arg_2))), 1i, arg_1, arg_0 && true), Struct_1(~0u, -_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-12251i, -1i), global4.wy), reverseBits(vec2<i32>(7237i, global4.x)), abs(global4.yw)), 0i, ~vec3<u32>(~9108u, 18077u, 4294967295u), true));
    global1 = array<vec3<i32>, 24>();
    var var_1 = 2354f;
    var var_2 = global4.wz;
    var var_3 = Struct_3(4294967295u);
    return true;
}

fn func_3(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1, arg_3: f32) -> i32 {
    global1 = array<vec3<i32>, 24>();
    var var_0 = -1184f;
    var var_1 = arg_2;
    let var_2 = !var_1.e == arg_2.e;
    var var_3 = ~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~23702u), _wgslsmith_sub_u32(~59426u >> (min(arg_2.a, arg_0.x) % 32u), ~121967u)), 24u)];
    return max(_wgslsmith_mod_i32(i32(-1i) * -firstTrailingBit(-27264i), abs(_wgslsmith_add_i32(-1i, -1i))), arg_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!(func_3(abs(vec4<u32>(u_input.a, 82149u, 1u, 89570u)), func_1(false, vec3<u32>(u_input.c, u_input.a, u_input.c), global4.x), Struct_1(u_input.a, vec2<i32>(-38916i, u_input.b.x), u_input.b.x, vec3<u32>(u_input.a, 32023u, 0u), false), global2.x) != global4.x));
    var var_1 = u_input.c;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-574f)) + _wgslsmith_f_op_f32(min(global2.x, global2.x))))) + global2.x);
    var var_3 = vec2<bool>(global0[_wgslsmith_index_u32(1347u & u_input.a, 16u)], true);
    let var_4 = countOneBits(~_wgslsmith_div_u32(u_input.c, 38785u) << (u_input.c % 32u));
    let var_5 = !select(select(vec2<bool>(false, true), select(select(vec2<bool>(var_3.x, var_3.x), vec2<bool>(global0[_wgslsmith_index_u32(6380u, 16u)], true), false), !vec2<bool>(var_3.x, true), vec2<bool>(true, true)), false), vec2<bool>(-998f != _wgslsmith_f_op_f32(-global2.x), var_3.x), !vec2<bool>(false, global0[_wgslsmith_index_u32(~u_input.c, 16u)]));
    var var_6 = select(vec4<i32>(~(-_wgslsmith_clamp_i32(-2147483647i, -19935i, -59806i)), -1i, global4.x, global4.x), ~select(abs(vec4<i32>(0i, -50551i, -1i, 2147483647i)), countOneBits(vec4<i32>(0i, 0i, u_input.b.x, u_input.b.x)), select(vec4<bool>(true, var_5.x, true, true), vec4<bool>(true, true, var_5.x, global0[_wgslsmith_index_u32(u_input.a, 16u)]), vec4<bool>(var_5.x, false, var_3.x, var_5.x))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(var_4, 1u, 33750u, ~1u), firstLeadingBit(abs(vec4<u32>(4294967295u, u_input.c, 61542u, var_4)))) % vec4<u32>(32u)), select(select(vec4<bool>(var_5.x, var_5.x, true, true), !vec4<bool>(var_5.x, var_5.x, true, false), !vec4<bool>(var_3.x, true, global0[_wgslsmith_index_u32(u_input.c, 16u)], true)), select(vec4<bool>(1u > var_4, all(var_5), var_3.x, all(var_5)), select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)], var_5.x), vec4<bool>(true, true, true, true), select(vec4<bool>(global0[_wgslsmith_index_u32(41409u, 16u)], var_3.x, var_5.x, false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 16u)], true, var_5.x, var_3.x), global0[_wgslsmith_index_u32(0u, 16u)])), vec4<bool>(true, true, true, true)), false && !(global2.x > -1235f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.x + global2.x), -1059f, global2.x, _wgslsmith_div_f32(-1329f, global2.x)))));
}

