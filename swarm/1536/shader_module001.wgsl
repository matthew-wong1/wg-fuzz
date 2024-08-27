struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true));

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = 330f;
    global0 = array<u32, 20>();
    var var_1 = true;
    let var_2 = !(!select(select(vec4<bool>(arg_1.a.x, true, true, true), arg_1.a, true), arg_1.a, select(arg_1.a.x, arg_1.a.x, arg_1.a.x) || (arg_0.x <= 2147483647i)));
    let var_3 = u_input.a.x;
    return select(arg_1.a.wx, global1[_wgslsmith_index_u32(abs(~(~(~25489u))), 29u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(758u, 1u)), _wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 20u)], 2727u), u_input.a.yz)), 7392u) & ~min(var_3, ~u_input.a.x), 29u)]);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(228f + 846f))))) - -1199f);
    var var_1 = !select(arg_0.a.xw, !(!(!arg_1.zx)), func_3(max(vec2<i32>(1i, 1i), ~vec2<i32>(0i, -24054i)), Struct_2(!arg_0.a), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), ~vec2<u32>(u_input.a.x, 29214u)), 16u)], global2[_wgslsmith_index_u32(1u >> (~global0[_wgslsmith_index_u32(48275u, 20u)] % 32u), 16u)]));
    let var_2 = Struct_2(arg_0.a);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 201f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-208f, 866f, -1274f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-955f, var_0, 488f), vec3<f32>(1121f, var_0, var_0), true))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -1000f, var_0)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0, var_0, var_0), vec3<f32>(var_0, var_0, 1000f), vec3<bool>(true, arg_0.a.x, var_1.x)))))), countOneBits(-1i));
    var var_4 = arg_0;
    return vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x);
}

fn func_1() -> Struct_1 {
    global0 = array<u32, 20>();
    global0 = array<u32, 20>();
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(reverseBits(func_2(Struct_2(vec4<bool>(false, false, true, false)), vec3<bool>(true, true, true))) & vec4<u32>(~firstLeadingBit(u_input.a.x), max(1u, 17051u), (15494u >> (u_input.a.x % 32u)) ^ ~u_input.a.x, _wgslsmith_sub_u32(~global0[_wgslsmith_index_u32(u_input.a.x, 20u)], ~u_input.a.x)), func_2(Struct_2(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false)))), vec3<bool>(all(func_3(vec2<i32>(1i, 7955i), Struct_2(vec4<bool>(false, true, false, true)), Struct_1(vec2<f32>(1000f, 1716f), vec3<f32>(-302f, 1302f, -1834f), -2147483647i), global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 16u)])), func_3(-vec2<i32>(-9105i, -17749i), Struct_2(vec4<bool>(true, false, false, false)), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 4294967295u), 16u)], global2[_wgslsmith_index_u32(~1u, 16u)]).x, true))), 16u)];
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.b.x, 2212f)) * _wgslsmith_div_f32(var_0.b.x, -820f)), -279f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, var_0.a.x), var_0.b.zx, true)) * var_0.a) - _wgslsmith_f_op_vec2_f32(-var_0.b.zx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(var_0.b, var_0.b))), -2147483647i);
    global0 = array<u32, 20>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(true, any(vec4<bool>(true, false, false, false)));
    let var_1 = max(countOneBits(23502u), u_input.a.x ^ firstLeadingBit(35415u));
    global1 = array<vec2<bool>, 29>();
    var var_2 = func_1();
    let var_3 = Struct_2(!(!(!(!vec4<bool>(var_0.x, var_0.x, true, var_0.x)))));
    let var_4 = Struct_2(var_3.a);
    let var_5 = var_4;
    let var_6 = 6031i;
    let x = u_input.a;
    s_output = StorageBuffer(-996f, _wgslsmith_sub_i32(var_2.c, _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, var_2.c), _wgslsmith_mod_vec2_i32(vec2<i32>(var_2.c, 1430i), vec2<i32>(var_6, var_2.c))) >> (~4584u % 32u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.a.x, -2710f, var_2.b.x, var_2.a.x))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 1216f, -985f, var_2.b.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.x, var_2.b.x, var_2.b.x, -1028f))))), 2147483647i, 51925u);
}

