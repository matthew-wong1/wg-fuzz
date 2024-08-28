struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25>;

var<private> global1: array<u32, 28>;

var<private> global2: array<u32, 26>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = true;
    global2 = array<u32, 26>();
    let var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(u_input.d.zyw, u_input.d.yxw), min(global1[_wgslsmith_index_u32(26440u, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 28u)])), 25u)], 2261f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, 339f)))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 25u)]) - _wgslsmith_div_f32(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19746u, 28u)], 26u)], 28u)], 25u)], arg_0))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-888f, arg_0)))))))));
    global0 = array<f32, 25>();
    global1 = array<u32, 28>();
    return global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(43616u, abs(global1[_wgslsmith_index_u32(4294967295u, 28u)]), global1[_wgslsmith_index_u32(54617u, 28u)] & global1[_wgslsmith_index_u32(u_input.e, 28u)]), abs(vec3<u32>(0u, global1[_wgslsmith_index_u32(30506u, 28u)], 0u))) >> (~0u % 32u)), 26u)];
}

fn func_2() -> Struct_2 {
    global2 = array<u32, 26>();
    let var_0 = vec3<u32>(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_mod_u32(u_input.d.x, 4294967295u)), 26u)] & global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.d.yw, vec2<u32>(global2[_wgslsmith_index_u32(0u, 26u)], 51015u)), u_input.c >> (1u % 32u)), 26u)], u_input.e), u_input.e, ~u_input.d.x);
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(22736u, 25u)], -471f, global0[_wgslsmith_index_u32(1u, 25u)])))), vec4<u32>(~func_3(545f), var_0.x, 10946u, global1[_wgslsmith_index_u32(~(1u | u_input.a.x), 28u)])), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 28u)]);
    var var_2 = Struct_2(var_1.a, ~_wgslsmith_mult_u32(20243u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b, 4280u, 93740u) | vec3<u32>(u_input.c, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 28u)], 65400u), var_1.a.b.yxx)));
    let var_3 = Struct_2(var_2.a, 1u);
    return var_3;
}

fn func_1(arg_0: vec3<f32>) -> Struct_2 {
    return func_2();
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: vec4<u32>) -> bool {
    global2 = array<u32, 26>();
    global0 = array<f32, 25>();
    var var_0 = arg_1;
    let var_1 = Struct_2(func_1(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -113f), -545f, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 26u)], 26u)], arg_2.x), 3720u), 25u)])).a, 1u);
    let var_2 = select(select(vec2<bool>(true, true), vec2<bool>(-313f == _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 25u)] * -119f), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), select(!select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, false))), true), vec2<bool>(true, true)), any(vec2<bool>(select(false, true, false), true)) & false);
    return arg_0 > max(_wgslsmith_add_u32(~u_input.b, 0u >> (0u % 32u)) & (~u_input.e & countOneBits(global2[_wgslsmith_index_u32(var_1.b, 26u)])), 1u & global1[_wgslsmith_index_u32(arg_2.x, 28u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_u32(u_input.d.zwz, _wgslsmith_mod_vec3_u32(u_input.d.zzw >> ((abs(vec3<u32>(global2[_wgslsmith_index_u32(0u, 26u)], 40743u, global2[_wgslsmith_index_u32(u_input.e, 26u)])) | (vec3<u32>(28003u, 0u, 35778u) ^ vec3<u32>(45010u, global2[_wgslsmith_index_u32(4294967295u, 26u)], 17323u))) % vec3<u32>(32u)), vec3<u32>(1u, 10168u, global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(0u, 26u)] | ~global2[_wgslsmith_index_u32(98135u, 26u)], 26u)])));
    let var_1 = u_input.d;
    global0 = array<f32, 25>();
    var var_2 = select(!select(vec3<bool>(all(vec3<bool>(false, false, false)), true, true), vec3<bool>(true, false, false), vec3<bool>(1000f > global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 26u)], 25u)], true, false)), vec3<bool>(true, select(func_4(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(var_1.x, 28u)], u_input.b, 1u), func_1(vec3<f32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33143u, 26u)], 25u)], -293f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 25u)])), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<u32>(4830u, u_input.b, 48244u, 4294967295u))), true, all(vec2<bool>(true, false))), true), false);
    let var_3 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(func_1(vec3<f32>(global0[_wgslsmith_index_u32(21219u, 25u)], -1761f, 1043f)).a.a)), vec3<f32>(_wgslsmith_f_op_f32(min(-769f, global0[_wgslsmith_index_u32(1u, 25u)])), _wgslsmith_div_f32(-1104f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 25u)]), 129f)), u_input.d), ~u_input.d.x);
    global2 = array<u32, 26>();
    var var_4 = func_2().a;
    var var_5 = firstTrailingBit(min(vec2<i32>(~2147483647i, -18603i), vec2<i32>(max(-2147483647i, -2147483647i) << (var_1.x % 32u), -81150i)));
    global1 = array<u32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_3.a.a.yy + vec2<f32>(global0[_wgslsmith_index_u32(var_3.a.b.x, 25u)], var_4.a.x)))) + vec2<f32>(_wgslsmith_div_f32(var_3.a.a.x, -521f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 25u)])))), _wgslsmith_add_vec2_i32(-abs(firstTrailingBit(vec2<i32>(15293i, var_5.x))), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(31245i, -1i) << (var_0.xy % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(-29004i, var_5.x))) & max(vec2<i32>(2147483647i, 2147483647i), abs(vec2<i32>(44759i, 1i)))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_1.x, 25u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(103f + -1758f) - var_4.a.x)));
}

