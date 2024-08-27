struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3> = array<f32, 3>(-446f, 566f, 906f);

var<private> global1: f32 = -271f;

var<private> global2: f32 = -177f;

var<private> global3: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec3<bool> {
    return vec3<bool>(arg_0.c, true, !global3.a);
}

fn func_2() -> bool {
    var var_0 = Struct_1(any(!func_3(Struct_1(false, global3.b, true), u_input.a.x)), vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(u_input.a.x, 3u)]), global3.c);
    global3 = Struct_1(global3.a, global3.b, true);
    let var_1 = abs(~vec4<i32>(1i, 1i, 1i, 1i) & abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 1i, -1i, -34180i), vec4<i32>(-1i, -2147483647i, -57942i, 10269i)) << ((vec4<u32>(23642u, u_input.a.x, u_input.a.x, u_input.a.x) | vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 69742u)) % vec4<u32>(32u))));
    let var_2 = Struct_1(any(!select(vec4<bool>(true, true, true, true), !vec4<bool>(true, var_0.c, global3.a, false), select(vec4<bool>(global3.c, global3.c, var_0.a, true), vec4<bool>(global3.c, true, false, true), vec4<bool>(false, var_0.a, var_0.a, global3.a)))), global3.b, global3.a);
    let var_3 = var_0.c;
    return !(any(func_3(Struct_1(global3.a, var_0.b, var_0.a), 12393u)) == !(_wgslsmith_div_f32(306f, -1130f) < _wgslsmith_f_op_f32(exp2(var_0.b.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f)))))));
    return Struct_1(any(vec3<bool>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x) >= _wgslsmith_div_u32(u_input.a.x, 1u), all(select(vec3<bool>(arg_0.a, true, global3.c), vec3<bool>(arg_0.c, true, false), vec3<bool>(true, false, false))), func_2())), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1019f, global3.b.x)))) - arg_1))), !(!(true | !global3.a)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> f32 {
    var var_0 = -34417i;
    global2 = -817f;
    let var_1 = func_1(Struct_1(true, global3.b, true || arg_0.x), arg_1.b);
    let var_2 = min(firstTrailingBit(select(vec4<u32>(853u, u_input.a.x, u_input.a.x, 57509u) & vec4<u32>(u_input.a.x, u_input.a.x, 0u, u_input.a.x), abs(~vec4<u32>(24756u, u_input.a.x, u_input.a.x, 1u)), !(!arg_0))), ~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 51788u)) << (~(~max(vec4<u32>(1u, 54577u, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 9125u))) % vec4<u32>(32u)));
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-169f - _wgslsmith_f_op_f32(-global3.b.x))));
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(30474u, 3u)] * 318f)))) + _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~u_input.a.x, 3u)])));
    var var_0 = Struct_1(global3.c, vec2<f32>(363f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(select(vec4<bool>(global3.a, true, false, global3.c), vec4<bool>(true, global3.a, true, true), vec4<bool>(true, global3.c, global3.a, global3.c)), func_1(Struct_1(false, vec2<f32>(-1000f, -426f), false), vec2<f32>(global0[_wgslsmith_index_u32(4592u, 3u)], -1248f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(70580u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)])) * _wgslsmith_div_f32(-765f, global3.b.x)), global3.c))), all(!(!(!vec3<bool>(false, global3.a, false)))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 16140u), u_input.a.yz), 3u)])))));
    var var_1 = func_1(Struct_1(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.b)), true || func_3(func_1(Struct_1(global3.c, vec2<f32>(global3.b.x, -1219f), global3.a), vec2<f32>(-1300f, 158f)), ~u_input.a.x).x), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, -1637f))) + vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x + global3.b.x))))));
    global0 = array<f32, 3>();
    global3 = Struct_1(global3.c != (!var_0.a || var_1.a), var_1.b, global3.a);
    var_1 = Struct_1(false, var_1.b, func_2());
    let var_2 = !(!var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(1u, -_wgslsmith_mult_i32(reverseBits(-2147483647i), _wgslsmith_clamp_i32(~2147483647i, i32(-1i) * -2147483647i, -1i)), _wgslsmith_f_op_vec2_f32(-var_0.b));
}

