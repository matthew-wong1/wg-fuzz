struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_5) -> f32 {
    var var_0 = u_input.a.x;
    let var_1 = abs(firstTrailingBit(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(1u, 1u), 1u), select(~vec2<u32>(20809u, 0u), select(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 34916u), vec2<bool>(global0.x, arg_1.a.b.x)), vec2<bool>(global0.x, false)))));
    global0 = !vec4<bool>(all(!select(vec4<bool>(arg_1.a.a, true, true, false), vec4<bool>(arg_1.a.a, false, true, arg_1.a.b.x), vec4<bool>(true, arg_1.a.b.x, false, true))), arg_1.a.b.x, any(!(!global0.yw)), arg_1.a.a);
    var var_2 = arg_0.x;
    global0 = !vec4<bool>(true, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x)) < 623f, global0.x, true);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x - 439f)))));
}

fn func_2(arg_0: Struct_5) -> vec4<bool> {
    var var_0 = Struct_5(Struct_1(true, vec3<bool>(all(select(vec3<bool>(false, false, arg_0.a.a), global0.zxz, global0.wzy)), arg_0.a.e < arg_0.a.c, false), _wgslsmith_f_op_f32(292f * _wgslsmith_f_op_f32(func_3(arg_0.a.d, arg_0))), _wgslsmith_f_op_vec2_f32(arg_0.a.d * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_0.a.d - vec2<f32>(266f, -697f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.a.c, -306f), arg_0.a.d)))), _wgslsmith_f_op_f32(func_3(vec2<f32>(arg_0.a.d.x, _wgslsmith_f_op_f32(-1021f + arg_0.a.c)), arg_0))));
    var_0 = Struct_5(arg_0.a);
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a.d.x, arg_0.a.d.x, true))))), arg_0.a.d.x, true));
    var var_2 = Struct_3(all(select(select(var_0.a.b, arg_0.a.b, select(arg_0.a.b, vec3<bool>(global0.x, false, global0.x), arg_0.a.b)), select(vec3<bool>(global0.x, global0.x, arg_0.a.a), arg_0.a.b, !arg_0.a.b), any(!arg_0.a.b))));
    return vec4<bool>(var_2.a, var_2.a, ~(~_wgslsmith_clamp_u32(20643u, 1u, 76430u)) <= reverseBits(~4294967295u), !arg_0.a.b.x);
}

fn func_1() -> Struct_3 {
    global0 = !(!select(vec4<bool>(true, global0.x, any(vec4<bool>(global0.x, global0.x, true, global0.x)), true), vec4<bool>(true, true, all(global0.yy), u_input.a.x < u_input.a.x), !func_2(Struct_5(Struct_1(true, vec3<bool>(false, global0.x, false), -508f, vec2<f32>(-767f, -1257f), 1392f)))));
    var var_0 = !vec4<bool>(true, false, global0.x, !global0.x);
    global0 = select(vec4<bool>(any(!vec2<bool>(var_0.x, var_0.x)), var_0.x, u_input.a.x > -_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), !global0.x), select(select(func_2(Struct_5(Struct_1(true, var_0.yxz, -1000f, vec2<f32>(-748f, -826f), 662f))), !vec4<bool>(false, false, var_0.x, true), !vec4<bool>(false, true, var_0.x, true)), vec4<bool>(true, all(global0.yww), global0.x, true), true), all(var_0.zxz));
    var var_1 = select(_wgslsmith_div_vec3_u32(~(select(vec3<u32>(4294967295u, 29766u, 44992u), vec3<u32>(0u, 4294967295u, 0u), true) | ~vec3<u32>(7476u, 88835u, 1u)), _wgslsmith_sub_vec3_u32(max(vec3<u32>(52387u, 2052u, 1u), vec3<u32>(4294967295u, 4294967295u, 0u)), firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(51038u, 8716u, 4294967295u), vec3<u32>(19307u, 4294967295u, 3179u))))), ~(~vec3<u32>(71352u, 86671u, 24303u) >> (vec3<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 0u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u)), 71325u) % vec3<u32>(32u))), !vec3<bool>(true, false, var_0.x));
    var_0 = func_2(Struct_5(Struct_1(true, vec3<bool>(true, var_0.x, global0.x | false), _wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(368f, 218f), vec2<f32>(-569f, 1823f)), Struct_5(Struct_1(global0.x, vec3<bool>(var_0.x, var_0.x, global0.x), -823f, vec2<f32>(266f, -1000f), -2065f)))), vec2<f32>(1f, 1f), _wgslsmith_f_op_f32(func_3(vec2<f32>(-1188f, 709f), Struct_5(Struct_1(global0.x, var_0.yww, -446f, vec2<f32>(2385f, 1750f), -2171f)))))));
    return Struct_3((~1i << (1u % 32u)) != max(~firstTrailingBit(2147483647i), abs(_wgslsmith_mod_i32(u_input.a.x, 2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1615f, -1641f, 169f, 342f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(603f, 628f, 798f, 589f))), vec4<bool>(global0.x, var_0.a, false, false))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-996f, 1642f, -551f, 3029f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-126f, -915f, -470f, -1000f)))) + vec4<f32>(_wgslsmith_f_op_f32(func_3(vec2<f32>(-1889f, -111f), Struct_5(Struct_1(false, global0.ywy, -1000f, vec2<f32>(751f, -229f), -635f)))), 1f, _wgslsmith_f_op_f32(func_3(vec2<f32>(1000f, 1000f), Struct_5(Struct_1(global0.x, global0.ywz, 225f, vec2<f32>(-1798f, 436f), -704f)))), 1789f))));
    var var_2 = reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(firstLeadingBit(13963u), ~4294967295u, 1u, 1u), firstTrailingBit(~select(vec4<u32>(28280u, 28515u, 12995u, 4294967295u), vec4<u32>(52793u, 40607u, 31872u, 4030u), vec4<bool>(false, global0.x, var_0.a, global0.x)))));
    var_2 = ~(42654u << ((0u | _wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, 4294967295u, 0u)), reverseBits(vec3<u32>(28442u, 4294967295u, 1826u)))) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
}

