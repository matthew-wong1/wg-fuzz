struct Struct_1 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<i32>(-25372i, 1i, 18177i, 1i), vec2<u32>(1u, 52008u), 122864u, 391f), Struct_1(vec4<i32>(-3534i, i32(-2147483648), 1857i, -4409i), vec2<u32>(1u, 347u), 23731u, -623f));

var<private> global3: array<i32, 14> = array<i32, 14>(-1814i, 1i, 0i, 1i, 1i, -11225i, -24694i, 0i, 34039i, 22422i, -1i, i32(-2147483648), 19511i, 2147483647i);

var<private> global4: Struct_2 = Struct_2(Struct_1(vec4<i32>(2147483647i, 2147483647i, -1i, i32(-2147483648)), vec2<u32>(20711u, 25102u), 1u, 1216f), Struct_1(vec4<i32>(i32(-2147483648), 53104i, 2147i, 2147483647i), vec2<u32>(44100u, 23725u), 4294967295u, -1000f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> u32 {
    var var_0 = Struct_1(select(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0.b.a.yz, -arg_0.a.a.wz), 9494i, arg_0.a.a.x, _wgslsmith_add_i32(arg_0.a.a.x, 1i) ^ ~global4.a.a.x), vec4<i32>(countOneBits(0i), global3[_wgslsmith_index_u32(~18812u, 14u)], _wgslsmith_div_i32(global4.a.a.x, 0i), _wgslsmith_mult_i32(_wgslsmith_div_i32(2147483647i, global4.a.a.x), _wgslsmith_div_i32(1i, 62576i))), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true))), global4.b.b, _wgslsmith_dot_vec2_u32(countOneBits(max(vec2<u32>(global4.b.b.x, 29613u), global2.b.b)), vec2<u32>(arg_0.a.b.x & 1u, abs(76189u))) << (_wgslsmith_div_u32(_wgslsmith_clamp_u32(60942u, global4.b.c, 4294967295u) & 1u, ~global2.a.b.x) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f))))));
    let var_1 = Struct_1(_wgslsmith_mod_vec4_i32(min(vec4<i32>(1i, 2147483647i, -63917i, 9249i), global2.a.a) & (min(vec4<i32>(-2147483647i, -2147483647i, global3[_wgslsmith_index_u32(var_0.c, 14u)], var_0.a.x), arg_0.b.a) ^ -var_0.a), vec4<i32>(-global4.b.a.x & -var_0.a.x, ~max(-12811i, u_input.a.x), u_input.a.x, _wgslsmith_dot_vec2_i32(reverseBits(u_input.a.yx), reverseBits(vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], global3[_wgslsmith_index_u32(16214u, 14u)]))))), firstTrailingBit(var_0.b), abs(global2.b.c), _wgslsmith_f_op_f32(step(arg_2, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global4.a.d, arg_1))))))));
    global3 = array<i32, 14>();
    var var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2)), -114f), _wgslsmith_f_op_f32(var_1.d * _wgslsmith_f_op_f32(min(var_1.d, -1928f))));
    global0 = arg_0.a.a.x;
    return _wgslsmith_div_u32(arg_0.b.c, ~var_1.b.x);
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> i32 {
    global3 = array<i32, 14>();
    global4 = Struct_2(global4.a, global4.b);
    global3 = array<i32, 14>();
    var var_0 = global4.b.b.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-791f, global4.a.d, arg_1.a.d), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -548f), _wgslsmith_f_op_f32(exp2(arg_1.b.d)), _wgslsmith_f_op_f32(step(global2.a.d, global4.b.d)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(929f, global2.b.d, global4.a.d), vec3<f32>(229f, arg_1.b.d, global2.a.d))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(517f, global4.b.d, global2.b.d) + _wgslsmith_f_op_vec3_f32(vec3<f32>(205f, 364f, global2.b.d) - vec3<f32>(global2.a.d, global2.a.d, global2.b.d)))))));
    return 11162i;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_2(global2.a, global4.b);
    var var_1 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(96253i, -1i, ~(-2147483647i)) | u_input.a.x, min(func_4(func_3(Struct_2(Struct_1(vec4<i32>(5766i, global4.b.a.x, var_0.a.a.x, 0i), var_0.b.b, 36414u, var_0.b.d), var_0.a), global4.b.d, global4.a.d), var_0), func_4(global2.b.b.x, Struct_2(var_0.b, global2.b))));
    var var_2 = false;
    global3 = array<i32, 14>();
    var var_3 = false;
    return global4.a;
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: Struct_2) -> u32 {
    global2 = Struct_2(func_2(0u, global2.b.a.zy), func_2(_wgslsmith_clamp_u32(global2.b.b.x >> (abs(arg_2.b.c) % 32u), 20422u, 0u), -vec2<i32>(1i, 1i)));
    var var_0 = arg_2;
    var_0 = arg_2;
    let var_1 = 8366u;
    let var_2 = Struct_1(vec4<i32>(-_wgslsmith_mult_i32(~var_0.a.a.x, 25099i | global4.a.a.x), -2147483647i, 66009i, ~u_input.a.x), vec2<u32>(38591u, var_1), 95279u, -2224f);
    return func_2(~abs(func_3(arg_2, global2.a.d, global4.a.d)), min(u_input.a.wx >> (vec2<u32>(var_1, ~global2.b.c) % vec2<u32>(32u)), max(_wgslsmith_clamp_vec2_i32(global4.b.a.zz | vec2<i32>(u_input.a.x, -16114i), var_0.b.a.yx, vec2<i32>(1i, 14889i)), vec2<i32>(8353i, 1i)))).b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(firstLeadingBit(func_1(vec3<u32>(1u, ~(~1u), global2.b.b.x), true, Struct_2(global4.b, global2.a))), 14u)];
    var var_1 = vec4<bool>(true, (1u < global2.a.b.x) || !(!any(vec4<bool>(true, false, true, true))), all(vec2<bool>(true, true)) | any(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), !(!(!all(vec3<bool>(false, false, false)))));
    var_1 = !select(vec4<bool>(true, var_1.x, _wgslsmith_f_op_f32(min(global2.a.d, -431f)) > global4.b.d, all(select(var_1.wx, global1[_wgslsmith_index_u32(global4.a.c, 32u)], var_1.x))), vec4<bool>(var_1.x, var_1.x, !all(vec2<bool>(true, var_1.x)), any(select(vec4<bool>(false, false, false, var_1.x), vec4<bool>(true, true, true, false), true))), !(!(!vec4<bool>(false, false, true, var_1.x))));
    global1 = array<vec2<bool>, 32>();
    var var_2 = Struct_2(Struct_1(reverseBits(~global2.b.a), countOneBits(global4.a.b | _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 0u), global4.b.b)), ~(~(~global4.a.c)), -825f), func_2(global2.a.c, -(vec2<i32>(global2.a.a.x, u_input.a.x) & select(global2.a.a.wz, vec2<i32>(global3[_wgslsmith_index_u32(62817u, 14u)], -2147483647i), var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(27346i, _wgslsmith_f_op_f32(trunc(global4.a.d)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.a.d, _wgslsmith_f_op_f32(f32(-1f) * -1066f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.b.d, 737f))))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.b.d, var_2.b.d) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(912f, global4.a.d)))), !var_1.yx)));
}

