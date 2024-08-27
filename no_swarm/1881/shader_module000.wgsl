struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<u32>, 19>;

var<private> global2: vec3<i32> = vec3<i32>(42798i, i32(-2147483648), 0i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_2) -> bool {
    global0 = arg_1;
    var var_0 = arg_3;
    let var_1 = arg_1.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.b.x, var_0.b.b.x, 439f)), _wgslsmith_f_op_vec3_f32(-arg_0.zyz)), vec3<f32>(1520f, -1403f, arg_1.b.b.x), global0.a)) + arg_0.xzz)));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(var_2.x * -171f), global0.b.b.x, 1397f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, arg_1.b.b.x, arg_3.b.b.x), arg_0.zzy) * arg_0.zzz), arg_0.wwy)) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.x)), arg_3.b.b.x, _wgslsmith_f_op_f32(global0.b.b.x * arg_1.b.b.x)));
    return all(!vec2<bool>(var_0.a, any(vec2<bool>(true, true))));
}

fn func_2() -> vec4<bool> {
    return select(vec4<bool>(global0.b.a == global0.b.d, true, !global0.a, false), select(vec4<bool>(!global0.a, -513f >= _wgslsmith_f_op_f32(-178f - global0.b.b.x), !func_3(vec4<f32>(global0.b.b.x, global0.b.b.x, 1187f, 1264f), Struct_2(true, Struct_1(1u, vec2<f32>(global0.b.b.x, 256f), global0.b.c, 1u)), vec2<u32>(global0.b.c, global0.b.d), Struct_2(false, Struct_1(1u, vec2<f32>(global0.b.b.x, -654f), 4294967295u, 33664u))), global0.a), !vec4<bool>(!global0.a, select(global0.a, global0.a, global0.a), global0.a && global0.a, global0.a), select(select(vec4<bool>(false, true, global0.a, false), vec4<bool>(false, global0.a, global0.a, global0.a), vec4<bool>(global0.a, global0.a, false, true)), !(!vec4<bool>(global0.a, global0.a, global0.a, global0.a)), any(!vec4<bool>(global0.a, global0.a, global0.a, true)))), vec4<bool>(true, false, !global0.a, any(vec4<bool>(true, global0.a, global0.a, global0.a && true))));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1556f * 767f))), _wgslsmith_f_op_f32(-global0.b.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1008f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.b.b.x, arg_1.b.b.x)) * _wgslsmith_f_op_f32(max(1534f, arg_1.b.b.x))), _wgslsmith_f_op_f32(round(global0.b.b.x)), 132f, _wgslsmith_f_op_f32(floor(arg_1.b.b.x))))));
    var var_1 = !(!arg_0.yxx);
    let var_2 = firstTrailingBit(select(-vec3<i32>(u_input.a, u_input.a, 0i) & _wgslsmith_mod_vec3_i32(vec3<i32>(global2.x, global2.x, global2.x), vec3<i32>(u_input.a, 2996i, u_input.a) >> (vec3<u32>(global0.b.c, 1u, global0.b.a) % vec3<u32>(32u))), vec3<i32>(1i, global2.x, _wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 42102i), global2.xx))), any(arg_0)));
    global0 = arg_1;
    let var_3 = global2.x ^ _wgslsmith_dot_vec2_i32(-global2.yz, global2.yy);
    return StorageBuffer(2147483647i);
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = select(!(!select(vec4<bool>(true, false, global0.a, true), select(vec4<bool>(false, global0.a, global0.a, true), vec4<bool>(global0.a, global0.a, global0.a, true), global0.a), true)), !select(!select(vec4<bool>(true, global0.a, global0.a, true), vec4<bool>(true, global0.a, global0.a, false), global0.a), select(select(vec4<bool>(false, global0.a, global0.a, true), vec4<bool>(false, global0.a, false, true), vec4<bool>(global0.a, true, false, false)), vec4<bool>(false, global0.a, true, global0.a), !global0.a), vec4<bool>(global0.a, global0.a, global0.a, any(vec3<bool>(global0.a, global0.a, global0.a)))), false);
    var var_1 = _wgslsmith_mod_u32(_wgslsmith_div_u32(88727u, ~global0.b.d | arg_0.a), ~4294967295u);
    var_1 = ~_wgslsmith_mod_u32(global0.b.d, 0u) & min(_wgslsmith_clamp_u32(0u, min(global0.b.d, ~4294967295u), _wgslsmith_clamp_u32(~global0.b.d, arg_0.d & global0.b.d, ~39771u)), 0u);
    var var_2 = vec2<i32>(global2.x, -48696i);
    let var_3 = vec2<i32>((i32(-1i) * -u_input.a) ^ (-37172i << (~arg_0.d % 32u)), 18258i);
    return func_4(select(!var_0, vec4<bool>(-1560f == _wgslsmith_f_op_f32(round(-1604f)), false, select(true, true, var_0.x) & (global0.b.b.x >= arg_0.b.x), !(var_0.x & true)), select(select(func_2(), !var_0, var_0), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, global0.a, var_0.x, var_0.x), var_0.x), true)), Struct_2(global0.a, Struct_1(~7472u, vec2<f32>(_wgslsmith_f_op_f32(round(global0.b.b.x)), _wgslsmith_f_op_f32(abs(462f))), ~arg_0.c ^ _wgslsmith_dot_vec4_u32(vec4<u32>(41403u, global0.b.c, global0.b.a, 30317u), vec4<u32>(arg_0.d, 42421u, 4294967295u, 4294967295u)), ~max(31670u, 69768u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-global0.b.b.x), _wgslsmith_f_op_f32(891f - global0.b.b.x), global0.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.b.x)) - global0.b.b.x)));
    var var_1 = ~global0.b.d;
    global1 = array<vec2<u32>, 19>();
    let var_2 = Struct_1(global0.b.d ^ min(select(74901u, ~9478u, false), 0u), var_0.yx, global0.b.c, ~(~0u));
    global1 = array<vec2<u32>, 19>();
    var_1 = global0.b.c;
    let x = u_input.a;
    s_output = func_1(var_2);
}

