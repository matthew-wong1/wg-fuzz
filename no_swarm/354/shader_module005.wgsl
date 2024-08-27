struct Struct_1 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 28>;

var<private> global1: array<u32, 15> = array<u32, 15>(0u, 15764u, 0u, 11944u, 4294967295u, 0u, 0u, 0u, 1u, 94249u, 4294967295u, 31388u, 26680u, 4294967295u, 0u);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_5(Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1056f, 927f, 1394f, -1312f))), vec4<bool>(true, true, true, true))), Struct_2(Struct_1(vec4<f32>(420f, _wgslsmith_f_op_f32(-1581f * -150f), _wgslsmith_f_op_f32(min(-1237f, -1490f)), 464f), vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(112f, -1819f, 513f, -1153f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(522f, -118f, 1000f, 729f) * vec4<f32>(587f, 538f, 1212f, 367f))), vec4<bool>(true, true, true, true))), 1i, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(947f + -1000f), _wgslsmith_f_op_f32(select(-599f, 365f, true)), -938f, _wgslsmith_f_op_f32(927f + -904f))), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_1 = -1i;
    let var_2 = global0[_wgslsmith_index_u32(~13814u, 28u)];
    var var_3 = var_0.c;
    var var_4 = select(vec4<bool>(true, false, false, false), var_0.a.a.b, !vec4<bool>(false, any(vec4<bool>(var_2.b.b.b.x, true, var_2.b.a.b.x, false)), true, !select(var_2.a.a.b.x, true, var_0.b.a.b.x)));
    return select(vec4<bool>(var_2.d.b.x, all(select(var_4.zy, !vec2<bool>(var_0.b.a.b.x, var_2.a.a.b.x), false)), all(!select(vec2<bool>(true, var_4.x), var_0.b.b.b.yw, false)), true), select(vec4<bool>(!select(true, var_2.b.b.b.x, false), true, true, true), var_2.b.b.b, max(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(24538u, u_input.a.x, u_input.a.x), vec3<u32>(1u, u_input.a.x, 15578u)), 15u)], 15u)], u_input.a.x) >= (~global1[_wgslsmith_index_u32(4294967295u, 15u)] | 1u)), var_2.b.a.b.x);
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = select(select(!vec4<bool>(any(vec4<bool>(true, false, true, true)), false, any(vec3<bool>(false, true, true)), any(vec4<bool>(true, false, false, true))), select(vec4<bool>(true, true, true, true), func_3(), true), any(func_3().zyw)), vec4<bool>(true, false, false, true), all(vec3<bool>(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))), true, func_3().x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(-564f)), 1611f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-252f, 174f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-650f, 1060f) - vec2<f32>(185f, 809f))), any(vec4<bool>(true, true, var_0.x, true)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-394f - 492f), _wgslsmith_f_op_f32(823f * 1000f))), select(vec2<bool>(any(var_0.yw), any(var_0.yyw)), vec2<bool>(false, var_0.x), select(vec2<bool>(true, var_0.x), select(var_0.ww, var_0.ww, vec2<bool>(true, var_0.x)), !vec2<bool>(var_0.x, var_0.x))))) - vec2<f32>(-552f, _wgslsmith_f_op_f32(f32(-1f) * -166f)));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, var_1.x, _wgslsmith_f_op_f32(min(-1108f, 776f)), _wgslsmith_f_op_f32(-var_1.x)))), !select(func_3(), vec4<bool>(false, var_0.x, true, true), select(var_0.x, var_0.x, var_0.x))));
    var_0 = !vec4<bool>(true, false, all(select(vec2<bool>(var_2.a.b.x, false), func_3().wy, vec2<bool>(true, true))), true);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2.a.a - var_2.a.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-842f, var_1.x, var_2.a.a.x, var_1.x)))))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(993f, _wgslsmith_f_op_f32(-1689f + 1000f), 455f, var_2.a.a.x))))), var_2.a.b));
    return var_2.a;
}

fn func_1(arg_0: bool) -> Struct_4 {
    global1 = array<u32, 15>();
    var var_0 = func_2(u_input.a.x);
    global0 = array<Struct_5, 28>();
    let var_1 = Struct_4(abs(vec2<i32>(~_wgslsmith_sub_i32(0i, 20872i), _wgslsmith_add_i32(-1i, max(1i, 23609i)))), -_wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)));
    var var_2 = firstLeadingBit(~(~countOneBits(~u_input.a.x)));
    return var_1;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> Struct_1 {
    var var_0 = 28232u;
    let var_1 = func_1(max(_wgslsmith_clamp_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 15u)], 15u)], 35351u, _wgslsmith_dot_vec2_u32(u_input.a.yz, u_input.a.zz)), 381u) > firstTrailingBit(_wgslsmith_sub_u32(1u, 0u)));
    var var_2 = -abs(~_wgslsmith_dot_vec2_i32(arg_1.a, arg_1.b.xy >> (vec2<u32>(2252u, 56150u) % vec2<u32>(32u))));
    global0 = array<Struct_5, 28>();
    var var_3 = vec2<bool>(any(select(!(!arg_0.a.b), func_3(), !(!arg_0.a.b))), false);
    return func_2(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 28u)];
    global1 = array<u32, 15>();
    let var_1 = select(var_0.d.b.zxx, !(!select(!var_0.a.a.b.www, select(var_0.b.b.b.yxx, var_0.a.a.b.xyz, false), true)), var_0.d.b.x);
    let var_2 = true;
    global0 = array<Struct_5, 28>();
    var var_3 = func_4(var_0.a, func_1(var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.ywy, vec3<u32>(firstTrailingBit(16062u), select(4294967295u << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 15u)], 15u)] % 32u), 3339u << (global1[_wgslsmith_index_u32(17923u, 15u)] % 32u), all(var_1)), max(_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], 23950u, u_input.a.x, 4294967295u), vec4<u32>(global1[_wgslsmith_index_u32(0u, 15u)], 5758u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 15u)], 15u)], u_input.a.x)), global1[_wgslsmith_index_u32(~1u, 15u)])) & u_input.a, _wgslsmith_f_op_vec4_f32(-var_3.a));
}

