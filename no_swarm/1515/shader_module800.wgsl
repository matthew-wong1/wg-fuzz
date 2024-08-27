struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 14> = array<bool, 14>(true, true, false, true, true, false, false, true, false, true, false, false, true, true);

var<private> global2: Struct_1 = Struct_1(2147483647i, 346f);

var<private> global3: vec2<u32>;

var<private> global4: Struct_1 = Struct_1(i32(-2147483648), 502f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: bool) -> vec4<f32> {
    global4 = arg_0;
    global1 = array<bool, 14>();
    let var_0 = _wgslsmith_mult_u32(reverseBits(_wgslsmith_mult_u32(1u, u_input.d.x)), max(~_wgslsmith_add_u32(u_input.d.x, 0u), global3.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1056f, arg_1.x))))))));
    let var_2 = vec2<u32>(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 2807u, 4294967295u, var_0), u_input.d)) << (var_0 % 32u), 32879u);
    return vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), 1497f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -1749f));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = !vec3<bool>(false, 2995u <= global3.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(global3.x, u_input.b.x, 4294967295u, global3.x)), ~(~vec4<u32>(18749u, 87967u, 4294967295u, u_input.d.x))), 14u)]);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(arg_1, vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1420f), _wgslsmith_f_op_f32(-global2.b)), _wgslsmith_f_op_f32(step(global2.b, global4.b))), var_0.x)) - vec4<f32>(global2.b, _wgslsmith_f_op_f32(round(1000f)), global0.b, _wgslsmith_f_op_f32(953f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.b))))));
    var var_2 = -1012f;
    let var_3 = arg_1;
    var var_4 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1555f), _wgslsmith_f_op_vec4_f32(func_3(arg_1, _wgslsmith_f_op_vec4_f32(func_3(Struct_1(global4.a, var_1.x), var_1.zzz, var_0.x)).yxx, false)).x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, arg_1.b) + _wgslsmith_f_op_f32(floor(global2.b))), arg_0.x))));
    return u_input.d.ww;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_mod_i32(1i, global2.a), 1f);
    var var_1 = ~vec2<i32>(-2147483647i, ~_wgslsmith_div_i32(45558i, _wgslsmith_mod_i32(u_input.c, global4.a)));
    global3 = vec2<u32>(_wgslsmith_mod_u32(~reverseBits(4294967295u), 4294967295u), global3.x);
    global3 = func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(133f, 1000f) + vec2<f32>(-285f, -1644f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b, 1432f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, arg_0.b))))), Struct_1(countOneBits(firstLeadingBit(var_0.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global0.b)), -218f))));
    var var_2 = vec2<bool>(var_1.x == 1i, global1[_wgslsmith_index_u32(reverseBits(1u), 14u)]);
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(global2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b))), _wgslsmith_f_op_f32(-global4.b))));
    global0 = Struct_1(_wgslsmith_mult_i32(global4.a, var_0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.b)), _wgslsmith_f_op_f32(exp2(global0.b))), _wgslsmith_f_op_f32(max(global4.b, -1302f)))) * _wgslsmith_f_op_f32(round(-273f))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1f)));
    global0 = func_1(Struct_1(global2.a, 926f));
    let var_2 = func_1(Struct_1(var_0.a, global0.b));
    let var_3 = !(!(!select(vec2<bool>(true, global1[_wgslsmith_index_u32(48566u, 14u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(global3.x, 14u)]), select(vec2<bool>(true, false), vec2<bool>(true, false), global1[_wgslsmith_index_u32(4294967295u, 14u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.b.x, ~1u, u_input.d.x & global3.x), var_0.b, u_input.d.x, var_2.b);
}

