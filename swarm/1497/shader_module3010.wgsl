struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: Struct_2 = Struct_2(69112u, vec2<f32>(-1698f, -1954f), 692f);

var<private> global2: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = !any(vec4<bool>(any(vec4<bool>(false, false, true, false)), true, false, all(vec2<bool>(false, false)))) && true;
    let var_1 = vec2<i32>(~(-21762i), u_input.c.x);
    var_0 = true;
    let var_2 = vec2<i32>(abs(_wgslsmith_div_i32(countOneBits(u_input.a.x), reverseBits(1i))), 0i) | -countOneBits(vec2<i32>(~u_input.b.x, ~2147483647i));
    var var_3 = var_2.x;
    return any(!(!select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(false, false), vec2<bool>(false, false), false))));
}

fn func_3(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_2) -> bool {
    var var_0 = Struct_1(global1.a, u_input.c.x);
    var_0 = Struct_1(0u << (global1.a % 32u), 0i);
    var var_1 = u_input.d.yy;
    var var_2 = any(select(!vec2<bool>(all(vec2<bool>(true, true)), any(vec2<bool>(false, false))), vec2<bool>(true, !(arg_0.x >= var_0.b)), true));
    return false;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = vec4<bool>(select(true, any(vec2<bool>(true, func_2(1332f))), all(vec3<bool>(true, true, true))), true, all(select(vec4<bool>(true, any(vec2<bool>(false, false)), true, all(vec3<bool>(false, true, true))), vec4<bool>(true, true, true, true), true)), select(any(vec4<bool>(true, true, true, true)), func_3(u_input.b, _wgslsmith_f_op_f32(trunc(global2.b.x)), Struct_2(0u, global2.b, 299f)), false) == (global2.a == abs(global2.a)));
    global2 = Struct_2(u_input.d.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.x) * 1444f), _wgslsmith_f_op_f32(step(global1.c, _wgslsmith_f_op_f32(global2.c + -1042f))))), _wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-690f + -1981f) * -327f))));
    var var_1 = 44033i;
    global1 = Struct_2(u_input.d.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, global1.c) + vec2<f32>(306f, global1.c))))), global1.c);
    global0 = array<u32, 27>();
    return Struct_1(7509u, ~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.yxy;
    let var_1 = abs(u_input.b.xz) & u_input.c.zz;
    var var_2 = ~vec2<u32>(max(1u, global0[_wgslsmith_index_u32(firstTrailingBit(104252u) | _wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(u_input.d.x, 27u)], 1u, 4294967295u), 27u)]), _wgslsmith_sub_u32(u_input.d.x, 4294967295u));
    var var_3 = func_1(4294967295u);
    global2 = Struct_2(var_3.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.b.x)) - global2.c), _wgslsmith_f_op_f32(select(global2.c, 2205f, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-282f, global1.b.x))))) + global1.c));
    let var_4 = vec3<bool>(true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, max(1u, 1u), firstLeadingBit(var_2.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global2.b, _wgslsmith_f_op_vec2_f32(exp2(global1.b)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-708f, -1000f)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(global2.b, vec2<f32>(1489f, -1000f)))))));
}

