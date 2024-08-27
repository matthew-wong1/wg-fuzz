struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec4<u32>) -> bool {
    let var_0 = vec2<bool>(true, true);
    return true;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = arg_0;
    var_0 = all(select(vec4<bool>(arg_0, false, true, all(vec2<bool>(true, true))), select(!vec4<bool>(arg_0, arg_0, true, true), vec4<bool>(false, arg_0, arg_0, true), !arg_0), select(!vec4<bool>(true, true, arg_0, true), !vec4<bool>(false, arg_0, true, arg_0), select(arg_0, true, true)))) | all(select(vec3<bool>(true, arg_0, arg_0), select(select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, arg_0, arg_0)), vec3<bool>(false, true, arg_0), true), select(!vec3<bool>(false, arg_0, arg_0), select(vec3<bool>(true, false, false), vec3<bool>(arg_0, false, false), vec3<bool>(true, arg_0, arg_0)), !vec3<bool>(arg_0, arg_0, arg_0))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x * global0.x), global0.x)), _wgslsmith_f_op_f32(step(-176f, _wgslsmith_f_op_f32(global0.x * 283f))))));
    let var_2 = 1i;
    var_0 = false;
    return select(!vec2<bool>(!(arg_0 && true), true), select(vec2<bool>(-var_2 < u_input.a.x, !arg_0), vec2<bool>(arg_0, select(any(vec3<bool>(arg_0, true, false)), true && arg_0, true)), true), true);
}

fn func_2(arg_0: i32) -> vec2<u32> {
    global0 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1886f, -824f, -1000f, 995f), vec4<f32>(global0.x, 1483f, 1647f, global0.x))), vec4<f32>(-110f, -619f, global0.x, global0.x), vec4<bool>(true, true, true, false))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(607f, -699f, global0.x, global0.x) - vec4<f32>(global0.x, -125f, -616f, -579f))), select(select(true, true, true), true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 170f, global0.x, 172f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, -969f, 1303f) - vec4<f32>(-763f, 878f, global0.x, 1662f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -592f, 1125f, -215f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, global0.x, global0.x, -197f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 306f, _wgslsmith_f_op_f32(global0.x + 1000f), _wgslsmith_div_f32(global0.x, -1000f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1762f, 207f, global0.x, global0.x), vec4<f32>(global0.x, global0.x, global0.x, global0.x), any(vec4<bool>(true, true, false, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 967f, 133f, 550f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1138f, -1328f, global0.x, global0.x) - vec4<f32>(764f, global0.x, 980f, 1300f))))));
    let var_0 = 1239f;
    var var_1 = Struct_1(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.ww)) << (~_wgslsmith_div_vec2_u32(vec2<u32>(8998u, 4294967295u) ^ u_input.b.xw, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, 4294967295u), u_input.b.zx)) % vec2<u32>(32u)));
    let var_2 = -(~(vec2<i32>(-1i) * -u_input.a));
    var var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(433f, 307f, false)))), _wgslsmith_div_f32(var_0, -879f))), -1958f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(global0.yz, _wgslsmith_div_vec2_f32(global0.yy, global0.xz))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, global0.x)))))), !select(func_3(true, 68913u, Struct_1(var_1.a)), vec2<bool>(all(vec2<bool>(false, true)), false), true)));
    return select(min(_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), vec2<u32>(23251u, u_input.c) << (var_1.a % vec2<u32>(32u))) ^ var_1.a, ~vec2<u32>(_wgslsmith_div_u32(0u, u_input.c), u_input.c)), reverseBits(vec2<u32>(u_input.c, 0u)), true);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, -1209f, global0.x, global0.x), vec4<f32>(596f, global0.x, global0.x, global0.x), vec4<bool>(true, true, true, true))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 644f), vec4<f32>(2038f, global0.x, global0.x, global0.x)))) + vec4<f32>(-137f, _wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_f_op_f32(global0.x + global0.x))), true)));
    var var_1 = arg_2.a | u_input.b.yx;
    let var_2 = arg_2;
    let var_3 = var_2;
    let var_4 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(var_1.x, 4294967295u), ~(~vec2<u32>(51541u, 4294967295u))));
    return Struct_1(u_input.b.zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~firstTrailingBit(~u_input.b.wx);
    let var_1 = any(!vec4<bool>(func_1(u_input.b) && true, all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), true)), any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), !select(true, true, false)));
    var var_2 = ~_wgslsmith_add_u32(u_input.b.x, u_input.b.x);
    let var_3 = func_4(Struct_1(func_2(-(~(-26439i)))), vec3<i32>(u_input.a.x, _wgslsmith_add_i32(-u_input.a.x, ~(-30730i)), u_input.a.x) << (u_input.b.yxx % vec3<u32>(32u)), Struct_1(firstLeadingBit(~vec2<u32>(4294967295u, 1491u))));
    var var_4 = 0i;
    let var_5 = 103812u >> (var_3.a.x % 32u);
    var var_6 = ~(-_wgslsmith_div_vec4_i32((vec4<i32>(9519i, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<i32>(103785i, -30108i, 2147483647i, u_input.a.x)) | vec4<i32>(-6044i, 0i, -2147483647i, -24655i), ~(-vec4<i32>(u_input.a.x, 0i, 18378i, -4016i))));
    var var_7 = func_2(abs(_wgslsmith_mult_i32(u_input.a.x, var_6.x))).x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(trunc(global0.x)), vec3<f32>(global0.x, -243f, 542f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.zzx + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(582f, global0.x, global0.x) + global0.yyw), _wgslsmith_f_op_vec3_f32(global0.zwy + global0.ywz)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(387f, -1543f, -577f)) * vec3<f32>(-189f, 1155f, 773f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2443f, global0.x, global0.x) + global0.xyz)))), 53029i);
}

