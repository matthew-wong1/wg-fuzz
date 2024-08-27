struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(vec4<i32>(-48934i, 1i, i32(-2147483648), 0i), vec3<i32>(i32(-2147483648), 2147483647i, -19893i), 0u, 4294967295u), Struct_1(vec4<i32>(-15372i, i32(-2147483648), -42798i, 35366i), vec3<i32>(-1i, -69503i, -2219i), 7362u, 4294967295u), Struct_1(vec4<i32>(8158i, -20062i, 2147483647i, 10867i), vec3<i32>(2147483647i, -17305i, 22339i), 4233u, 46402u), Struct_1(vec4<i32>(1i, 19450i, i32(-2147483648), 2147483647i), vec3<i32>(7006i, 18413i, 0i), 1923u, 0u), Struct_1(vec4<i32>(-17518i, -1i, 1i, 1i), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), 15828u, 0u), Struct_1(vec4<i32>(60095i, 1i, i32(-2147483648), 2147483647i), vec3<i32>(41770i, 4763i, -1i), 33266u, 22417u), Struct_1(vec4<i32>(-13257i, 26824i, 0i, -28060i), vec3<i32>(3935i, 60434i, 0i), 0u, 1u), Struct_1(vec4<i32>(41905i, 0i, -1i, 51018i), vec3<i32>(0i, 0i, 1i), 10447u, 1u), Struct_1(vec4<i32>(35144i, 20554i, i32(-2147483648), 0i), vec3<i32>(1i, i32(-2147483648), -3786i), 1u, 17499u), Struct_1(vec4<i32>(-61139i, 1i, 0i, -1i), vec3<i32>(2147483647i, -42474i, -1i), 0u, 0u), Struct_1(vec4<i32>(1i, -9091i, -4140i, -1i), vec3<i32>(2147483647i, -40451i, -1i), 0u, 1u), Struct_1(vec4<i32>(1i, 10272i, i32(-2147483648), i32(-2147483648)), vec3<i32>(1i, 2147483647i, -1i), 0u, 4294967295u), Struct_1(vec4<i32>(0i, 1i, 53941i, -1832i), vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), 12876u, 0u), Struct_1(vec4<i32>(0i, -20139i, 49660i, -28173i), vec3<i32>(2147483647i, -59166i, 36785i), 4294967295u, 89045u), Struct_1(vec4<i32>(-73586i, i32(-2147483648), 18029i, 0i), vec3<i32>(27148i, 15435i, 1i), 0u, 4294967295u), Struct_1(vec4<i32>(2147483647i, 22452i, -9574i, 2147483647i), vec3<i32>(-33624i, 0i, 47727i), 1u, 25121u), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 0i, -1i), vec3<i32>(-36415i, 26220i, -3773i), 71517u, 0u));

var<private> global1: array<i32, 29> = array<i32, 29>(72201i, -1i, -13340i, 7571i, 9251i, i32(-2147483648), 8356i, -1i, -51528i, 16808i, -16930i, 49584i, 32601i, 0i, -16887i, 0i, 38932i, -1i, -2912i, -1i, -8907i, 2147483647i, 0i, 0i, 1i, 0i, 0i, -14809i, -21787i);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = ~global1[_wgslsmith_index_u32(arg_0.c, 29u)];
    let var_1 = max((u_input.a.zy & reverseBits(vec2<u32>(arg_0.c, 0u))) << (u_input.a.yx % vec2<u32>(32u)), ~(~vec2<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), arg_0.c)));
    global1 = array<i32, 29>();
    global0 = array<Struct_1, 17>();
    let var_2 = 4294967295u | _wgslsmith_div_u32(1u, arg_0.c);
    return false || (73560i != reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.x, 0i, global1[_wgslsmith_index_u32(arg_0.c, 29u)]), vec3<i32>(1i, arg_0.b.x, -7577i))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>) -> vec4<bool> {
    global0 = array<Struct_1, 17>();
    var var_0 = arg_0.a.yzw;
    global0 = array<Struct_1, 17>();
    let var_1 = u_input.a.wzx;
    let var_2 = arg_0;
    return select(!vec4<bool>(select(true, true, true), any(vec4<bool>(true, true, true, true)), true, all(vec2<bool>(true, false))), vec4<bool>(true, true, true, true), true);
}

fn func_3(arg_0: bool) -> u32 {
    global1 = array<i32, 29>();
    let var_0 = select(-1514i & global1[_wgslsmith_index_u32(~0u, 29u)], -2147483647i, true);
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-521f, _wgslsmith_f_op_f32(f32(-1f) * -1370f), -2838f, _wgslsmith_f_op_f32(max(1381f, 974f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(792f, -363f, -755f, 1000f))))))))));
    global0 = array<Struct_1, 17>();
    global1 = array<i32, 29>();
    return 1u;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_clamp_vec4_u32(~u_input.a, ~_wgslsmith_div_vec4_u32(abs(vec4<u32>(1u, u_input.a.x, arg_3.d, arg_0.c)), ~vec4<u32>(arg_3.d, u_input.a.x, u_input.a.x, 34394u)), u_input.a);
    var_0 = ~vec4<u32>(var_0.x ^ 20924u, arg_3.d, ~func_3(true), ~(~u_input.a.x));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_2.x, 590f)) - _wgslsmith_f_op_f32(273f - arg_1)) - -2120f)))));
    let var_2 = Struct_1(arg_0.a, ~countOneBits(arg_3.b & arg_0.b), u_input.a.x, ~func_3(select(-17187i, global1[_wgslsmith_index_u32(30875u, 29u)], true) > 38732i));
    var var_3 = arg_0;
    return -vec3<i32>(arg_0.b.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 1u, 4297u, 0u), vec4<u32>(u_input.a.x, 7947u, var_3.c, var_2.d) & vec4<u32>(var_3.d, 4294967295u, arg_0.c, 0u)) % 32u), var_2.b.x, _wgslsmith_dot_vec3_i32(arg_0.a.wzx, vec3<i32>(var_2.a.x >> (var_0.x % 32u), arg_3.b.x, var_2.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(535f, _wgslsmith_f_op_f32(sign(-317f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1090f, -800f)))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2030f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -317f)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -793f) + _wgslsmith_div_f32(1135f, -1024f)), var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, -1182f, 387f)))))));
    let var_2 = var_1;
    global1 = array<i32, 29>();
    var var_3 = global0[_wgslsmith_index_u32(4294967295u, 17u)];
    let var_4 = vec4<f32>(var_1.x, _wgslsmith_f_op_f32(max(-842f, 1261f)), var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(-var_1.x))), 111f)));
    var var_5 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, all(vec2<bool>(true, true))), any(vec4<bool>(false, false, false, false))), select(vec4<bool>(any(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), true, 1u != abs(var_3.d), !func_1(Struct_1(var_3.a, var_3.b, 4294967295u, 27640u), 160f)), func_2(Struct_1(firstTrailingBit(var_3.a), -var_3.a.xzx, 1u, ~76553u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_1.x), -_wgslsmith_mod_vec4_i32(var_3.a, var_3.a)), true), true);
    var var_6 = _wgslsmith_div_vec3_i32(func_4(global0[_wgslsmith_index_u32(~func_3(var_5.x), 17u)], _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -833f), 681f)), _wgslsmith_f_op_f32(max(var_4.x, _wgslsmith_f_op_f32(step(-915f, var_0.x)))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 1107f) - var_4.xx) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-668f, var_0.x), vec2<f32>(var_1.x, -360f), vec2<bool>(var_5.x, true)))))), global0[_wgslsmith_index_u32(74715u, 17u)]), ~(-var_3.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.x, abs(var_3.a.ywy));
}

