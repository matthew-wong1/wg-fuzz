struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 8>;

var<private> global1: Struct_1 = Struct_1(4294967295u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global0 = array<vec4<bool>, 8>();
    let var_0 = Struct_1(arg_3.a);
    global1 = Struct_1(global1.a);
    global1 = var_0;
    return false && (!(u_input.a > 2147483647i) & select(global1.a <= arg_3.a, true, false));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = 1u;
    let var_1 = any(vec3<bool>(func_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -422f))), arg_0, arg_0, arg_0), true, arg_0.a <= _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.b.x, 46979u), vec3<u32>(37761u, 4294967295u, 89448u))));
    return abs(~_wgslsmith_sub_u32(~abs(9731u), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, var_0), vec2<u32>(0u, var_0))));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(any(select(select(vec2<bool>(false, arg_2), vec2<bool>(true, true), false), vec2<bool>(true, all(vec3<bool>(arg_2, arg_2, arg_1))), any(vec4<bool>(false, arg_1, true, arg_1)))), true, !select(all(!vec4<bool>(false, false, true, arg_2)), false, false));
    let var_1 = vec2<bool>(func_3(arg_0, Struct_1(~countOneBits(0u)), arg_3, Struct_1(34907u)), all(global0[_wgslsmith_index_u32(u_input.b.x, 8u)]));
    global1 = Struct_1(0u);
    var var_2 = Struct_1(min(_wgslsmith_div_u32(~u_input.b.x, global1.a), 4294967295u));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0, -161f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(105f, 520f, var_1.x)) + _wgslsmith_f_op_f32(-arg_0))))));
    return arg_3;
}

fn func_1() -> Struct_1 {
    global1 = Struct_1(1u);
    var var_0 = Struct_1(1u);
    var var_1 = func_4(_wgslsmith_f_op_f32(-1f), false, !(1u == func_2(Struct_1(u_input.b.x))) && false, Struct_1(_wgslsmith_dot_vec4_u32(firstLeadingBit(firstTrailingBit(vec4<u32>(82570u, global1.a, 19607u, 0u))), max(_wgslsmith_div_vec4_u32(vec4<u32>(25719u, 1u, 0u, 116490u), vec4<u32>(global1.a, global1.a, u_input.b.x, 4294967295u)), vec4<u32>(var_0.a, var_0.a, 73036u, 39028u) >> (vec4<u32>(1u, 1463u, 1u, global1.a) % vec4<u32>(32u))))));
    let var_2 = func_4(_wgslsmith_div_f32(-497f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -2268f)))), false, !(!func_3(-192f, Struct_1(4294967295u), Struct_1(var_0.a), Struct_1(var_0.a)) | false), Struct_1(_wgslsmith_div_u32(abs(_wgslsmith_div_u32(74909u, global1.a)), select(reverseBits(var_0.a), global1.a & 4294967295u, true))));
    var_1 = var_2;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    global0 = array<vec4<bool>, 8>();
    var var_1 = func_1();
    var var_2 = -_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(~u_input.c.xx, u_input.c.xz), _wgslsmith_mod_vec2_i32(vec2<i32>(min(-48943i, 60436i), 1i), max(u_input.c.zx, u_input.c.yw)));
    var var_3 = !(!any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false))) && (1u == (~1u & _wgslsmith_div_u32(func_2(Struct_1(var_1.a)), _wgslsmith_add_u32(u_input.b.x, var_1.a))));
    var var_4 = !select(vec2<bool>(true, any(vec3<bool>(false, false, false))), !vec2<bool>(true, func_3(-722f, Struct_1(75552u), Struct_1(var_0.x), Struct_1(0u))), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    var var_5 = select(1u, ~abs(0u ^ _wgslsmith_add_u32(0u, var_0.x)), var_4.x);
    var var_6 = Struct_1(u_input.b.x & ~1u);
    let var_7 = vec3<u32>(716u, ~_wgslsmith_div_u32(4294967295u, var_0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_6.a, _wgslsmith_mult_u32(var_0.x << (var_0.x % 32u), ~139732u), ~0u), (min(u_input.b, u_input.b) << (u_input.b % vec3<u32>(32u))) & ~(u_input.b & vec3<u32>(39221u, var_1.a, var_6.a))));
    let x = u_input.a;
    s_output = StorageBuffer(-11936i, ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.c.zy, -u_input.c.yw), u_input.c.x | u_input.a, min(u_input.c.x << (0u % 32u), abs(var_2.x))));
}

