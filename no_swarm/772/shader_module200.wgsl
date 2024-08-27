struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: u32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, false), false, 1u, 39494u, -1662f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec3<u32>, arg_1: bool, arg_2: vec3<i32>, arg_3: bool) -> i32 {
    global0 = array<Struct_1, 32>();
    global1 = Struct_1(global1.a, global1.a.x | all(vec4<bool>(-2126f != global1.e, true, arg_3, arg_1)), reverseBits(select(firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), _wgslsmith_dot_vec2_u32(~u_input.a, vec2<u32>(4294967295u, arg_0.x)), all(select(vec2<bool>(true, true), global1.a, global1.a)))), ~(~(~(arg_0.x ^ arg_0.x))), _wgslsmith_f_op_f32(-2318f + -1238f));
    var var_0 = Struct_1(global1.a, any(!vec4<bool>(global1.a.x, arg_2.x >= arg_2.x, !arg_1, global1.b)), abs(max(1u, global1.c)), 1u, -943f);
    global1 = Struct_1(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.e)) < global1.e, any(vec3<bool>(arg_1, true, all(vec4<bool>(true, var_0.b, var_0.a.x, true))))), select(arg_3, all(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, arg_1, var_0.b, false), vec4<bool>(false, true, false, false))), true), 10057u, ~(~67501u), global1.e);
    let var_1 = false;
    return arg_2.x;
}

fn func_4(arg_0: i32) -> bool {
    return u_input.c > arg_0;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: vec2<bool>, arg_3: u32) -> f32 {
    let var_0 = arg_0.x;
    let var_1 = 31181u;
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    var var_2 = func_4(-firstTrailingBit(func_3(u_input.d.yyy, var_1 == 0u, -vec3<i32>(-2147483647i, u_input.e.x, u_input.b.x), all(vec2<bool>(global1.b, arg_2.x)))));
    return global1.e;
}

fn func_5(arg_0: vec4<f32>, arg_1: bool, arg_2: u32, arg_3: vec3<bool>) -> Struct_1 {
    global0 = array<Struct_1, 32>();
    var var_0 = 40532u;
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 32u)];
    return global0[_wgslsmith_index_u32(max(8723u, abs(~arg_2)) >> (abs(~(~(~arg_2))) % 32u), 32u)];
}

fn func_1() -> Struct_1 {
    global1 = func_5(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e * 1470f)) - _wgslsmith_f_op_f32(min(global1.e, _wgslsmith_f_op_f32(-259f - global1.e)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e + _wgslsmith_f_op_f32(global1.e - -1176f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<f32>(-1071f, global1.e), global1.e, vec2<bool>(false, true), 32072u)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1148f), _wgslsmith_f_op_f32(round(global1.e)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e) * _wgslsmith_f_op_f32(-global1.e)))), true, select(select(~global1.c >> (52239u % 32u), ~abs(global1.c), !global1.b), firstTrailingBit(reverseBits(_wgslsmith_clamp_u32(0u, u_input.a.x, u_input.d.x))), global1.b), vec3<bool>(true && all(vec3<bool>(global1.a.x, global1.b, false)), func_4(u_input.b.x), all(select(select(vec3<bool>(true, global1.a.x, global1.b), vec3<bool>(true, false, global1.b), vec3<bool>(global1.a.x, global1.b, global1.a.x)), select(vec3<bool>(global1.b, global1.b, global1.b), vec3<bool>(global1.b, global1.a.x, false), global1.a.x), !vec3<bool>(global1.b, false, global1.a.x)))));
    let var_0 = 1u;
    global0 = array<Struct_1, 32>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(global1.e, -250f), vec2<f32>(1386f, global1.e)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1.e) + vec2<f32>(-1013f, -1563f)) + vec2<f32>(-1032f, -243f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1883f * global1.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -368f))), select(!(!vec2<bool>(global1.b, false)), global1.a, select(!vec2<bool>(global1.b, global1.a.x), global1.a, global1.b)), abs(max(var_0, firstTrailingBit(global1.c))))), global1.e, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global1.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec2<f32>(global1.e, global1.e), 823f, global1.a, u_input.a.x))))))), _wgslsmith_div_f32(2139f, _wgslsmith_f_op_f32(min(global1.e, global1.e))));
    let var_2 = reverseBits(~(~vec4<u32>(20211u, 4294967295u, 17002u, var_0) >> (countOneBits(u_input.d) % vec4<u32>(32u)))) >> ((u_input.d >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, global1.d, 1u, _wgslsmith_div_u32(var_0, u_input.d.x)), vec4<u32>(12911u, 1u, u_input.a.x, ~global1.c)) % vec4<u32>(32u))) % vec4<u32>(32u));
    return Struct_1(func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1)), all(select(!vec3<bool>(global1.a.x, false, global1.a.x), vec3<bool>(false, global1.b, false), !vec3<bool>(global1.a.x, true, global1.b))), u_input.d.x & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(global1.c, u_input.a.x)), vec3<bool>(true, all(!vec2<bool>(false, global1.a.x)), global1.a.x)).a, global1.b, 24890u, _wgslsmith_clamp_u32(1u, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~var_2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.d, 0u), u_input.d.zz), select(u_input.d.x, var_0, global1.b)), _wgslsmith_mod_u32(var_2.x, ~10480u)), ~(~var_2.x) << (~(~9071u) % 32u)), 760f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(any(global1.a), global1.a.x, global1.a.x & global1.a.x);
    global1 = func_1();
    let var_1 = global0[_wgslsmith_index_u32(global1.c, 32u)];
    global1 = func_5(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e, -1318f, global1.e, var_1.e)))), vec4<f32>(global1.e, _wgslsmith_div_f32(180f, 1000f), _wgslsmith_f_op_f32(step(global1.e, global1.e)), _wgslsmith_f_op_f32(floor(global1.e)))))), false, func_5(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-786f, 460f, _wgslsmith_f_op_f32(global1.e - var_1.e), _wgslsmith_f_op_f32(-219f - global1.e)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.e, var_1.e, var_1.e, 284f))), vec4<f32>(899f, -680f, -106f, 392f)))), !func_4(firstTrailingBit(-2147483647i)), 0u, vec3<bool>(false, global1.b, func_1().a.x)).d, vec3<bool>(global1.a.x, true, !var_0.x));
    global1 = Struct_1(!vec2<bool>(!(global1.e > global1.e), !(!var_0.x)), var_1.b, ~u_input.a.x, reverseBits(~(global1.d & func_5(vec4<f32>(-255f, var_1.e, global1.e, var_1.e), true, 71943u, vec3<bool>(global1.b, false, var_1.b)).d)), var_1.e);
    let x = u_input.a;
    s_output = StorageBuffer(1i, 0u, select(~vec3<u32>(7775u, 4294967295u, 1u), vec3<u32>(min(_wgslsmith_dot_vec2_u32(vec2<u32>(33120u, var_1.d), u_input.d.zx), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 44706u), vec2<u32>(0u, 7818u))), u_input.a.x >> (0u % 32u), select(~global1.c, 1u, !global1.b)), vec3<bool>(all(vec3<bool>(var_0.x, false, var_1.a.x)), !func_1().b, var_0.x)), u_input.d.x);
}

