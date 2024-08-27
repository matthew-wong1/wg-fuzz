struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_2, 18>;

var<private> global2: array<vec4<u32>, 12> = array<vec4<u32>, 12>(vec4<u32>(28869u, 1u, 0u, 9936u), vec4<u32>(3564u, 37442u, 4294967295u, 1u), vec4<u32>(1u, 18601u, 4294967295u, 1u), vec4<u32>(1u, 61282u, 24228u, 1u), vec4<u32>(39253u, 3212u, 21344u, 1u), vec4<u32>(59881u, 4294967295u, 53430u, 5908u), vec4<u32>(27687u, 4294967295u, 1u, 20772u), vec4<u32>(4294967295u, 41709u, 17526u, 0u), vec4<u32>(4294967295u, 28252u, 18337u, 32028u), vec4<u32>(0u, 0u, 4294967295u, 0u), vec4<u32>(49826u, 1u, 21037u, 42587u), vec4<u32>(13833u, 0u, 4294967295u, 87364u));

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~_wgslsmith_dot_vec2_u32(min(arg_1.a.ww, arg_1.a.wy), arg_1.a.yy)), abs(abs(min(~37312u, 1u)))), 18u)];
    global1 = array<Struct_2, 18>();
    var var_1 = -(vec4<i32>(firstTrailingBit(~1i), u_input.a, u_input.b, _wgslsmith_mod_i32(34649i ^ u_input.a, u_input.a & -53171i)) << (~(_wgslsmith_div_vec4_u32(vec4<u32>(46926u, 33475u, global3.b, 0u), vec4<u32>(3347u, 1u, 31785u, arg_2.a.x)) ^ vec4<u32>(global0.x, 28069u, arg_1.a.x, 77999u)) % vec4<u32>(32u)));
    let var_2 = var_0.a.x;
    var_1 = firstLeadingBit(~vec4<i32>(min(~(-2147483647i), _wgslsmith_div_i32(u_input.a, var_1.x)), _wgslsmith_sub_i32(904i, -2675i) ^ -u_input.b, u_input.a, var_1.x));
    return 1u;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: vec3<f32>, arg_3: u32) -> u32 {
    let var_0 = Struct_1(vec3<bool>(true, all(vec4<bool>(any(vec2<bool>(false, global3.a.x)), false, false, u_input.b < 0i)), 1f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2.x, -1840f)) - -376f)), ~(~max(arg_0.b, global0.x)));
    global2 = array<vec4<u32>, 12>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(870f, arg_2.x), arg_2.x) + vec2<f32>(_wgslsmith_f_op_f32(-1000f + arg_2.x), _wgslsmith_f_op_f32(select(arg_2.x, -998f, var_0.a.x))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-343f, 279f))))), 323f));
    var var_2 = !vec4<bool>(var_0.a.x, any(vec4<bool>(true, all(vec2<bool>(false, arg_0.a.x)), any(vec4<bool>(global3.a.x, arg_0.a.x, true, global3.a.x)), any(var_0.a.zx))), false, true);
    let var_3 = 1i;
    return (firstTrailingBit(abs(u_input.c.x)) ^ (global0.x ^ firstLeadingBit(firstTrailingBit(56484u)))) << (func_3(_wgslsmith_f_op_vec3_f32(round(arg_2)), global1[_wgslsmith_index_u32(global0.x, 18u)], global1[_wgslsmith_index_u32(10564u, 18u)]) % 32u);
}

fn func_1(arg_0: u32) -> vec3<bool> {
    global3 = Struct_1(vec3<bool>(all(!select(vec4<bool>(false, global3.a.x, true, true), vec4<bool>(false, global3.a.x, global3.a.x, global3.a.x), vec4<bool>(true, global3.a.x, global3.a.x, false))), false, (u_input.c.x >= 66567u) & true), ~((1u & func_2(Struct_1(global3.a, global3.b), vec4<u32>(62748u, global0.x, 9913u, global0.x), vec3<f32>(1000f, -1000f, 1000f), arg_0)) & global3.b));
    global2 = array<vec4<u32>, 12>();
    let var_0 = global0.x;
    var var_1 = vec2<f32>(721f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1240f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1579f - 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -105f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(471f - 918f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(868f - -467f), _wgslsmith_f_op_f32(floor(1117f))))));
    global3 = Struct_1(select(!vec3<bool>(false, any(global3.a), global3.a.x), select(select(select(global3.a, global3.a, global3.a.x), global3.a, global3.a.x), select(global3.a, global3.a, global3.a.x), any(select(vec4<bool>(global3.a.x, global3.a.x, global3.a.x, false), vec4<bool>(global3.a.x, global3.a.x, true, global3.a.x), false))), global3.a), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 1u), u_input.c.xy) & _wgslsmith_dot_vec3_u32(vec3<u32>(global3.b, global3.b, 49483u), _wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, arg_0, global3.b)))));
    return global3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(select(select(func_1(1u), !(!vec3<bool>(global3.a.x, global3.a.x, true)), all(vec2<bool>(true, true))), select(!select(global3.a, vec3<bool>(global3.a.x, false, global3.a.x), global3.a), !(!global3.a), global3.a.x), !func_1(1435u)), global0.x);
    global3 = var_0;
    var var_1 = -518f;
    global3 = var_0;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -303f));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(0u, ~_wgslsmith_div_u32(0u, global3.b)), -select(select(~vec4<i32>(u_input.b, 0i, u_input.b, -13847i), vec4<i32>(1i, 1i, u_input.a, u_input.b), false), vec4<i32>(~1i, -2147483647i, max(u_input.b, u_input.a), u_input.a & u_input.b), true), i32(-1i) * -(u_input.b & 17142i));
}

