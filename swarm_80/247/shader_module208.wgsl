struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 27>;

var<private> global1: array<Struct_2, 26>;

var<private> global2: bool = false;

var<private> global3: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(-6548i, 2147483647i, i32(-2147483648)), vec3<i32>(0i, 10309i, 31755i), vec3<i32>(-1i, 2147483647i, 1i), vec3<i32>(30089i, 1i, -1i), vec3<i32>(58750i, 1i, 19155i), vec3<i32>(29773i, i32(-2147483648), 1i), vec3<i32>(-21622i, 4740i, 2147483647i), vec3<i32>(1i, -63639i, 1i), vec3<i32>(28041i, 1i, 2147483647i), vec3<i32>(0i, 9203i, -10431i), vec3<i32>(41233i, 2147483647i, 0i), vec3<i32>(1i, 2147483647i, -15950i), vec3<i32>(43781i, 24465i, i32(-2147483648)), vec3<i32>(-14505i, 29438i, i32(-2147483648)), vec3<i32>(i32(-2147483648), i32(-2147483648), 28486i), vec3<i32>(15181i, 45531i, i32(-2147483648)), vec3<i32>(0i, 9250i, i32(-2147483648)), vec3<i32>(-31626i, 1680i, 0i), vec3<i32>(0i, 1i, -1i), vec3<i32>(i32(-2147483648), 2147483647i, 0i), vec3<i32>(0i, i32(-2147483648), -21748i), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(-22021i, -71420i, -1i), vec3<i32>(0i, 51955i, -13100i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = arg_0;
    let var_1 = Struct_3(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1988f) * _wgslsmith_f_op_f32(floor(-195f))) >= _wgslsmith_f_op_f32(f32(-1f) * -572f), true));
    var var_2 = Struct_3(!var_1.a);
    let var_3 = global1[_wgslsmith_index_u32(~u_input.a, 26u)];
    global0 = array<vec4<u32>, 27>();
    return !(!(!(!vec4<bool>(var_1.a.x, var_1.a.x, false, var_2.a.x))));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: f32) -> u32 {
    let var_0 = Struct_1(arg_2.a.a, select(-(firstLeadingBit(arg_2.a.b) & _wgslsmith_mod_vec2_i32(vec2<i32>(arg_2.a.b.x, arg_2.a.b.x), vec2<i32>(15533i, -26262i))), min(vec2<i32>(arg_2.a.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), arg_2.a.b)), _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(arg_2.a.b, vec2<i32>(arg_2.a.b.x, arg_2.a.b.x)), arg_2.a.b)), !(!(!arg_1.zy))));
    var var_1 = select(arg_1, !select(vec4<bool>(true, true, true, true), vec4<bool>(!arg_1.x, arg_1.x, true, arg_1.x), select(func_3(arg_2.a), arg_1, !vec4<bool>(true, arg_1.x, true, arg_1.x))), arg_1);
    var var_2 = -_wgslsmith_sub_vec2_i32(~max(vec2<i32>(arg_2.a.b.x, var_0.b.x), vec2<i32>(var_0.b.x, -2147483647i)), vec2<i32>(firstLeadingBit(var_0.b.x), var_0.b.x));
    let var_3 = Struct_1(~min(vec2<u32>(arg_0 >> (u_input.a % 32u), arg_2.a.a.x), vec2<u32>(0u, 9676u) | vec2<u32>(arg_2.a.a.x, var_0.a.x)), var_0.b);
    global1 = array<Struct_2, 26>();
    return abs(max(select(select(37007u, arg_0, true), 5183u, true & arg_1.x), ~_wgslsmith_sub_u32(0u, arg_0)));
}

fn func_1(arg_0: Struct_3, arg_1: vec3<f32>) -> f32 {
    let var_0 = vec4<bool>(all(!(!arg_0.a)), (arg_0.a.x & select(!arg_0.a.x, true, all(vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x)))) | true, (u_input.a >= firstTrailingBit(36847u)) != true, arg_0.a.x);
    global1 = array<Struct_2, 26>();
    var var_1 = ~(~_wgslsmith_mod_vec3_u32(~(vec3<u32>(u_input.a, u_input.a, 38853u) >> (vec3<u32>(1u, 18136u, 0u) % vec3<u32>(32u))), vec3<u32>(func_2(70585u, var_0, global1[_wgslsmith_index_u32(22412u, 26u)], -292f), u_input.a, func_2(u_input.a, vec4<bool>(true, true, arg_0.a.x, arg_0.a.x), global1[_wgslsmith_index_u32(u_input.a, 26u)], 699f))));
    global2 = true;
    let var_2 = global1[_wgslsmith_index_u32(u_input.a, 26u)];
    return _wgslsmith_f_op_f32(max(-1000f, -490f));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(185f, _wgslsmith_f_op_f32(func_1(Struct_3(vec2<bool>(true, false)), vec3<f32>(-742f, -1060f, 1166f)))) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1200f, 1000f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(750f, -448f))))))), vec3<f32>(-1335f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -412f)), _wgslsmith_f_op_f32(-1127f - -223f), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(582f * 1872f))), _wgslsmith_f_op_f32(f32(-1f) * -1078f))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 27u)]);
}

