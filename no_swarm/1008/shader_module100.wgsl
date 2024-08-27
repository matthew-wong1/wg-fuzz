struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec2<u32>, 26>;

var<private> global2: array<vec2<f32>, 2>;

var<private> global3: vec2<f32>;

var<private> global4: vec2<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    let var_0 = vec4<f32>(-414f, 214f, _wgslsmith_f_op_f32(floor(829f)), _wgslsmith_f_op_f32(-global3.x));
    global1 = array<vec2<u32>, 26>();
    global3 = vec2<f32>(global3.x, -452f);
    let var_1 = -_wgslsmith_clamp_i32(u_input.a, _wgslsmith_sub_i32(-2147483647i, u_input.a & firstTrailingBit(u_input.a)), i32(-1i) * -_wgslsmith_mult_i32(39192i, -20501i));
    global1 = array<vec2<u32>, 26>();
    return _wgslsmith_f_op_f32(abs(global3.x));
}

fn func_2(arg_0: Struct_1) -> i32 {
    global4 = vec2<bool>(all(vec3<bool>(_wgslsmith_f_op_f32(floor(global3.x)) < global0.x, false, _wgslsmith_div_f32(global3.x, 966f) != global3.x)), global4.x);
    var var_0 = !(!all(!(!vec4<bool>(false, true, false, global4.x))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-163f, global3.x, false))), global3.x, select(!global4.x, all(vec2<bool>(true, global4.x)), !global4.x)))), -1168f, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-global3.x));
    let var_2 = arg_0;
    return -2147483647i;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = all(vec3<bool>(any(vec3<bool>(0u != arg_1.c.x, all(vec2<bool>(global4.x, global4.x)), arg_2 == u_input.a)), select(false, all(!vec4<bool>(global4.x, true, false, global4.x)), global4.x), true));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1533f), ~select(countOneBits(vec2<u32>(83916u, arg_1.c.x) | vec2<u32>(32146u, 44424u)), vec2<u32>(4294967295u, ~arg_1.c.x), select(!vec2<bool>(false, global4.x), vec2<bool>(global4.x, false), all(vec3<bool>(global4.x, false, global4.x)))), ~vec3<u32>(20702u, arg_1.b.x, 11239u), arg_1.d);
    global2 = array<vec2<f32>, 2>();
    let var_2 = ~1i;
    global3 = vec2<f32>(-1064f, arg_1.a);
    return arg_1;
}

fn func_1() -> Struct_1 {
    var var_0 = u_input.a ^ -(~u_input.a);
    let var_1 = func_4(vec4<i32>(~u_input.a, (-u_input.a & func_2(Struct_1(global0.x, vec2<u32>(4294967295u, 47472u), vec3<u32>(16149u, 0u, 72594u), global2[_wgslsmith_index_u32(12596u, 2u)]))) & u_input.a, 1i, ~func_2(Struct_1(global0.x, vec2<u32>(74914u, 48499u), vec3<u32>(4294967295u, 16622u, 4294967295u), vec2<f32>(-1000f, global0.x)))), Struct_1(global0.x, firstLeadingBit(vec2<u32>(firstTrailingBit(4294967295u), 4294967295u)), vec3<u32>(1u, 1u, 1u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0.x, global3.x))), _wgslsmith_f_op_f32(-1f))), func_2(Struct_1(global0.x, vec2<u32>(0u, 16691u), vec3<u32>(1u, 1u, 1u), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(11250u, 0u), 31145u), 2u)])));
    var_0 = countOneBits(-592i);
    global1 = array<vec2<u32>, 26>();
    let var_2 = var_1;
    return func_4(vec4<i32>(~select(-6297i, 2147483647i, any(vec4<bool>(global4.x, global4.x, global4.x, global4.x))), -firstTrailingBit(u_input.a & u_input.a), 2147483647i, 31697i), var_1, u_input.a);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: vec3<u32>) -> u32 {
    let var_0 = !select(select(select(select(vec4<bool>(global4.x, false, false, global4.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, global4.x), true), !vec4<bool>(true, false, arg_2.x, arg_2.x), !arg_2.x), !select(vec4<bool>(false, false, true, false), vec4<bool>(global4.x, true, false, arg_2.x), global4.x), true), select(!vec4<bool>(true, true, arg_2.x, false), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, global4.x, false, true), vec4<bool>(false, true, false, global4.x), true), select(vec4<bool>(true, global4.x, global4.x, false), vec4<bool>(global4.x, arg_2.x, arg_2.x, global4.x), false)), !vec4<bool>(true, global4.x, true, false)), !global4.x);
    var var_1 = arg_2.x;
    var var_2 = 2116f;
    let var_3 = select(var_0.x, global4.x, var_0.x);
    var var_4 = select(all(var_0.zzw), !((global4.x & global4.x) & true), !(!(arg_0.c.x != 0u))) | var_3;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, vec2<u32>(~9429u, func_5(func_1(), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 48337u), _wgslsmith_div_u32(12263u, 1u), abs(4294967295u)), vec2<bool>(true, true), _wgslsmith_add_vec3_u32(vec3<u32>(18298u, 1u, 1u), ~vec3<u32>(4294967295u, 19191u, 56384u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(-2119f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global3.x)), 1210f), global3.x)), ~(~(~4294967295u >> (1u % 32u))));
}

