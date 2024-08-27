struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 3> = array<u32, 3>(92066u, 56389u, 0u);

var<private> global1: array<u32, 18>;

var<private> global2: vec4<bool>;

var<private> global3: Struct_2 = Struct_2(4294967295u, vec3<f32>(590f, -690f, 595f));

var<private> global4: array<u32, 10>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: vec2<f32>) -> f32 {
    var var_0 = Struct_1(!select(!vec4<bool>(false, global2.x, global2.x, false), select(!vec4<bool>(false, global2.x, false, global2.x), !vec4<bool>(arg_0, arg_0, false, true), !global2.x), any(!vec4<bool>(false, false, false, arg_0))));
    global3 = Struct_2(21779u, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global3.b * _wgslsmith_f_op_vec3_f32(select(global3.b, _wgslsmith_f_op_vec3_f32(-global3.b), any(vec4<bool>(var_0.a.x, true, false, var_0.a.x))))))));
    var var_1 = true;
    var var_2 = global3.b;
    let var_3 = !select(select(!var_0.a, vec4<bool>(true, true, true, true), !var_0.a), var_0.a, true);
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) + var_2.x))), _wgslsmith_f_op_f32(floor(arg_1.x))));
}

fn func_2(arg_0: i32) -> Struct_3 {
    global0 = array<u32, 3>();
    global1 = array<u32, 18>();
    var var_0 = i32(-1i) * -1i;
    global1 = array<u32, 18>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1066f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, global3.b.yx)))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -253f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1200f + 1339f) + _wgslsmith_f_op_f32(-483f * global3.b.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.b.x))), global3.b.x))), 936f, -327f);
    return Struct_3(Struct_1(select(vec4<bool>(true, !global2.x, global2.x & global2.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(1u, 10u)], 10u)] <= 39113u), select(!vec4<bool>(false, true, global2.x, true), vec4<bool>(false, true, global2.x, true), true), true)), Struct_2(~global4[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.yzz - vec3<f32>(global3.b.x, -322f, global3.b.x)) - _wgslsmith_f_op_vec3_f32(-var_1.xwy)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.b + var_1.wzy), var_1.xzw))));
}

fn func_1(arg_0: f32) -> Struct_2 {
    let var_0 = func_2(min(~reverseBits(36402i), 39564i));
    var var_1 = _wgslsmith_div_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -51676i), vec2<i32>(1i, 2147483647i)) >> (firstTrailingBit(~global1[_wgslsmith_index_u32(global3.a, 18u)]) % 32u), _wgslsmith_clamp_i32(abs(-1i), 1i, -1i)) & -reverseBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(0i, 1i), select(vec2<i32>(-2147483647i, 0i), vec2<i32>(1i, 1i), true)));
    let var_2 = global2.x;
    global4 = array<u32, 10>();
    var var_3 = Struct_3(func_2(2147483647i).a, Struct_2(~(~firstLeadingBit(0u)), vec3<f32>(-140f, 158f, _wgslsmith_div_f32(-1062f, var_0.b.b.x))));
    return func_2(-14886i).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3.b.x + _wgslsmith_f_op_f32(floor(-1679f))))));
    global0 = array<u32, 3>();
    let var_1 = 2147483647i;
    global1 = array<u32, 18>();
    let var_2 = global2.x;
    var var_3 = ~4294967295u;
    var var_4 = func_2(19165i).a;
    let var_5 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(global0[_wgslsmith_index_u32(39845u, 3u)], select(36169u, global3.a, true))) << ((~u_input.a.yy << (vec2<u32>(45315u, ~1u) % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(u_input.a.xx, ~(~abs(u_input.a.xy))), ~u_input.a.zz);
    var var_6 = vec3<i32>(~(-(~var_1)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1, select(1i, var_1, true)), vec2<i32>(var_1, 2147483647i)), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_1, var_1), -vec2<i32>(var_1, 33211i)) << (countOneBits(~var_0.a) % 32u)) << ((select(~firstTrailingBit(u_input.a), min(u_input.a, _wgslsmith_sub_vec3_u32(vec3<u32>(var_5.x, var_5.x, 0u), u_input.a)), vec3<bool>(all(var_4.a.wz), all(global2.wx), true)) ^ u_input.a) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(1i, 0u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.x, global3.b.x, global3.b.x, global3.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-733f, var_0.b.x, global3.b.x, var_0.b.x)))))));
}

