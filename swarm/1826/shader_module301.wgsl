struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-596f, -263f);

var<private> global1: vec3<f32>;

var<private> global2: vec3<f32>;

var<private> global3: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(7380u, 1u, 4570u, 40868u), vec4<u32>(4294967295u, 35164u, 64249u, 4406u), vec4<u32>(61425u, 1u, 17274u, 4294967295u), vec4<u32>(1u, 20292u, 52434u, 4294967295u), vec4<u32>(62675u, 4294967295u, 4294967295u, 37058u), vec4<u32>(50662u, 4294967295u, 26749u, 23117u), vec4<u32>(1u, 4294967295u, 10845u, 32508u), vec4<u32>(1u, 38030u, 1u, 4294967295u), vec4<u32>(1u, 75774u, 1u, 41016u), vec4<u32>(0u, 25835u, 3062u, 0u), vec4<u32>(4294967295u, 14762u, 13532u, 17187u));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    return ~_wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(48939u, 3887u))), ~max(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 0u)), ~vec2<u32>(4294967295u, 0u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = ((arg_0.x & all(select(vec4<bool>(true, true, false, true), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), true))) | true) || false;
    let var_1 = ~(-u_input.b.x);
    var var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.yx - global1.xz), _wgslsmith_f_op_vec2_f32(-global1.xy)))), global2.xy), global2.zx);
    var var_3 = Struct_1(global1.yz, vec4<f32>(_wgslsmith_f_op_f32(-global1.x), -1412f, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(456f, 332f)))), _wgslsmith_div_u32(~(~0u), func_3()), var_2.x);
    let var_4 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-920f, -1220f, true))), global0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.d, 394f, 391f, 308f) * var_3.b) - _wgslsmith_f_op_vec4_f32(abs(var_3.b)))), ~(~var_3.c), _wgslsmith_div_f32(-354f, var_3.a.x)));
    return Struct_2(var_4.a);
}

fn func_1(arg_0: vec4<u32>) -> Struct_2 {
    return func_2(vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false))), true), u_input.a);
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global3 = array<vec4<u32>, 11>();
    var var_0 = arg_0;
    global0 = func_2(vec2<bool>(true || any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), false & (~var_0.a.c < min(0u, 1u))), -countOneBits(min(max(vec2<i32>(-1i, u_input.d), u_input.b), vec2<i32>(-2147483647i, u_input.d)))).a.b.zw;
    var var_1 = 2287i;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-global1.yz), vec4<f32>(-1810f, 1118f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -129f)) * global2.x), _wgslsmith_f_op_f32(var_0.a.b.x - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-517f + 222f), 281f))), _wgslsmith_clamp_u32(0u, select(20400u, _wgslsmith_add_u32(var_0.a.c, 105155u) << (53966u % 32u), true), ~_wgslsmith_div_u32(~arg_0.a.c, 1u)), _wgslsmith_f_op_f32(select(func_2(vec2<bool>(any(vec3<bool>(false, true, false)), select(false, false, true)), ~(~u_input.b)).a.b.x, -219f, any(vec2<bool>(true, true)))));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<u32>, 11>();
    var var_0 = true;
    var var_1 = Struct_1(_wgslsmith_div_vec2_f32(global2.zz, vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global0.x))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(min(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - global2.x))), -231f, -884f), ~1u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global1.x)), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global2.x)), -1000f)));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, global1.x, global2.x), var_1.b.wyx)))));
    let var_2 = var_1.c;
    var var_3 = Struct_2(func_4(func_1(global3[_wgslsmith_index_u32(var_1.c, 11u)])));
    let var_4 = Struct_2(func_4(func_1(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.c, var_1.c, var_3.a.c, 7268u), global3[_wgslsmith_index_u32(var_3.a.c, 11u)]))));
    let var_5 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(firstLeadingBit(vec4<u32>(~var_4.a.c, 49561u, var_1.c, 1u))).a.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.a.b * var_1.b)), var_4.a.b)), var_3.a.a, global1.x);
}

