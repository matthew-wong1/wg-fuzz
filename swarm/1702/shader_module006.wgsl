struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: i32,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 32>;

var<private> global1: Struct_1 = Struct_1(vec2<i32>(8535i, -1i), vec4<bool>(true, false, true, false), -35202i, vec2<i32>(62400i, i32(-2147483648)), vec2<f32>(-1473f, -141f));

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<i32>(-26469i, -29877i), vec4<bool>(false, true, true, false), 71804i, vec2<i32>(i32(-2147483648), 47510i), vec2<f32>(-1000f, 238f)), Struct_1(vec2<i32>(-63204i, -23932i), vec4<bool>(true, false, true, false), -45729i, vec2<i32>(1i, 105062i), vec2<f32>(-333f, -169f)));

var<private> global3: vec4<u32> = vec4<u32>(1u, 83821u, 4294967295u, 2937u);

var<private> global4: array<bool, 23>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32) -> u32 {
    var var_0 = vec4<u32>(~(global3.x ^ ~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, u_input.b, 4294967295u, 4294967295u), vec4<u32>(1u, u_input.b, u_input.b, 0u))), 26302u, max(global3.x, global3.x), ~abs(_wgslsmith_clamp_u32(65731u, ~0u, 74936u)));
    global1 = global2[_wgslsmith_index_u32(~(~1u), 2u)];
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(global3.x & global3.x, 32u)], vec3<u32>(~(4294967295u << (global3.x % 32u)), abs(~abs(44538u)), ~_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(var_0.x, 32u)], vec3<u32>(28886u, 4294967295u, 8201u)))), 2u)];
    var var_1 = !vec4<bool>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(~vec3<u32>(global3.x, var_0.x, 38088u)), select(min(vec3<u32>(u_input.b, var_0.x, u_input.b), vec3<u32>(global3.x, 4294967295u, 1651u)), vec3<u32>(var_0.x, u_input.b, 42509u), 4294967295u == var_0.x)), 23u)], false, false, any(vec4<bool>(false && global1.b.x, global1.e.x > global1.e.x, global1.c > 0i, true)));
    let var_2 = global2[_wgslsmith_index_u32(countOneBits(78724u), 2u)];
    return 1u;
}

fn func_2() -> i32 {
    global4 = array<bool, 23>();
    global3 = ~(~vec4<u32>(1u, 0u, global3.x, 1u | u_input.b));
    global0 = array<vec3<u32>, 32>();
    var var_0 = global2[_wgslsmith_index_u32(~global3.x, 2u)];
    var var_1 = global2[_wgslsmith_index_u32(func_3(1i, ~global1.d.x), 2u)];
    return abs(var_0.d.x >> (select(4294967295u, u_input.b, !all(global1.b)) % 32u));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(u_input.a, select(!vec4<bool>(true, global4[_wgslsmith_index_u32(28447u, 23u)], false, true), !global1.b, true), global1.d.x, vec2<i32>(1i, func_2()), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global1.e.x, global1.e.x, true)), _wgslsmith_f_op_f32(-152f + global1.e.x)), _wgslsmith_f_op_f32(1328f * 240f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.e.x)), _wgslsmith_f_op_f32(-971f + 1592f)))));
    global1 = global2[_wgslsmith_index_u32(abs(abs(_wgslsmith_div_u32(4294967295u, ~4561u))), 2u)];
    global0 = array<vec3<u32>, 32>();
    global2 = array<Struct_1, 2>();
    let var_1 = var_0;
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(global1.a, vec4<bool>(global4[_wgslsmith_index_u32(~(0u & abs(global3.x)), 23u)], u_input.a.x > ~_wgslsmith_add_i32(-2147483647i, 2147483647i), false, all(arg_0.b.xwy)), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(abs(global1.c), arg_0.d.x, -_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, 1i, -2599i, 0i), vec4<i32>(-48118i, 23283i, global1.d.x, global1.c))), ~(global1.d.x & -9455i)), vec2<i32>(_wgslsmith_mod_i32(1i, -85825i), 0i), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-289f, -208f) - arg_0.e))), global1.e, select(vec2<bool>(global4[_wgslsmith_index_u32(u_input.b, 23u)], global1.b.x), arg_0.b.yz, true))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_0.e);
    global3 = ~_wgslsmith_sub_vec4_u32(~abs(~vec4<u32>(arg_1, u_input.b, 14220u, 27350u)), countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 4294967295u, arg_1, u_input.b), vec4<u32>(17912u, global3.x, arg_1, 1u))));
    let var_2 = func_1().b.ywx;
    let var_3 = Struct_1(min(vec2<i32>(-2147483647i, 46653i), arg_0.a), vec4<bool>(false, func_1().b.x, all(arg_0.b) & (33950u <= arg_1), all(func_1().b)), 0i, -global1.d, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-289f, 733f) + var_1.x), -419f))));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(max(firstTrailingBit(8460u), min(4294967295u, u_input.b)), 2u)];
    let var_1 = func_4(func_1(), u_input.b);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1657f, 224f, 406f, var_0.e.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.e.x, var_1.e.x, global1.e.x, var_1.e.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.e.x, var_0.e.x, var_1.e.x, var_1.e.x))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-179f, var_1.e.x, var_0.e.x, var_0.e.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-2359f, -665f, -1142f, var_0.e.x))))))));
    global0 = array<vec3<u32>, 32>();
    let var_3 = Struct_1(u_input.a, !vec4<bool>(func_4(func_1(), abs(global3.x)).b.x, global1.b.x, true, !(!global4[_wgslsmith_index_u32(1u, 23u)])), var_0.a.x | -var_1.a.x, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-9161i, u_input.a.x, 2147483647i, 0i) ^ firstLeadingBit(vec4<i32>(var_1.c, var_1.a.x, u_input.a.x, var_0.a.x)), -(vec4<i32>(u_input.a.x, var_0.d.x, global1.c, global1.c) & vec4<i32>(1i, u_input.a.x, -14348i, 23946i))), 1i), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_2.zz - vec2<f32>(var_0.e.x, 355f)), var_0.e, false)))))));
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_1.e.x, global1.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(var_0.e)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.e.x, global1.e.x), vec2<f32>(-428f, -1092f)))))))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(748f, var_0.e.x, var_1.b.x)))), -422f, var_3.b.x)), _wgslsmith_div_f32(var_2.x, var_0.e.x)));
}

