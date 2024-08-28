struct Struct_1 {
    a: vec2<i32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, true);

var<private> global1: array<f32, 29>;

var<private> global2: i32 = 53187i;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4) -> Struct_2 {
    let var_0 = countOneBits(_wgslsmith_sub_u32(u_input.b & ~reverseBits(u_input.a.x), _wgslsmith_add_u32(82076u, ~4294967295u)));
    var var_1 = Struct_3(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(45572u | var_0, _wgslsmith_sub_u32(100251u, arg_1.a.a)), ~(19160u >> (arg_1.a.a % 32u)), reverseBits(u_input.b), arg_1.a.a), select(u_input.a, u_input.a, arg_1.a.c.a)), Struct_2(true, vec2<f32>(arg_1.a.b.b.x, -592f), u_input.e), arg_1.a.c);
    let var_2 = arg_0.a;
    global1 = array<f32, 29>();
    let var_3 = vec3<f32>(730f, _wgslsmith_f_op_f32(f32(-1f) * -1160f), -1090f);
    return arg_1.a.b;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.b | arg_0.a, ~u_input.b, ~arg_0.a, _wgslsmith_mod_u32(0u, u_input.b)), u_input.a, u_input.a) ^ (~(vec4<u32>(0u, 0u, 0u, 0u) >> (u_input.a % vec4<u32>(32u))) | _wgslsmith_mod_vec4_u32(select(~vec4<u32>(51165u, arg_0.a, u_input.d, 1u), ~u_input.a, vec4<bool>(false, true, true, true)), vec4<u32>(_wgslsmith_clamp_u32(0u, 28826u, arg_0.a), 4294967295u >> (u_input.b % 32u), 1u, 43793u)));
    var var_1 = !arg_1.a;
    global2 = 63645i;
    global2 = ~(-21163i ^ (min(2147483647i, -arg_0.b.c.x) | 23711i));
    let var_2 = -max(-(~countOneBits(vec3<i32>(0i, arg_0.b.c.x, 1i))), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.c.x, _wgslsmith_div_i32(u_input.c.x, 0i), min(u_input.e.x, arg_1.c.x)), countOneBits(min(vec3<i32>(u_input.c.x, 1i, 2147483647i), vec3<i32>(-19858i, arg_0.b.c.x, -24323i)))));
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> vec2<bool> {
    global0 = !vec2<bool>(true, arg_0.b.a);
    global2 = arg_0.c.c.x;
    var var_0 = _wgslsmith_sub_vec3_i32(~firstTrailingBit(max(vec3<i32>(arg_0.b.c.x, u_input.c.x, 0i), vec3<i32>(-3448i, -2147483647i, -2147483647i))), vec3<i32>(firstTrailingBit(select(2147483647i, -u_input.e.x, any(vec2<bool>(global0.x, true)))), ~min(_wgslsmith_clamp_i32(1i, u_input.c.x, -69212i), -1i), u_input.c.x | -_wgslsmith_sub_i32(2147483647i, arg_0.c.c.x)));
    return !select(!vec2<bool>(all(vec4<bool>(false, arg_0.c.a, false, true)), arg_0.c.a), vec2<bool>(!func_3(arg_0, arg_0.b).b.a, true), !(arg_0.c.b.x > -979f));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: vec4<i32>) -> vec2<bool> {
    return select(select(select(select(select(vec2<bool>(true, global0.x), vec2<bool>(false, false), false), vec2<bool>(false, true), vec2<bool>(global0.x, false)), vec2<bool>(any(vec3<bool>(global0.x, global0.x, true)), true), false), func_4(func_3(Struct_3(4294967295u, Struct_2(global0.x, arg_0.zy, arg_2.wx), Struct_2(global0.x, arg_0.xy, vec2<i32>(2147483647i, arg_1))), func_2(Struct_1(vec2<i32>(arg_1, -2147483647i), global0.x), Struct_4(Struct_3(136210u, Struct_2(global0.x, vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)]), arg_2.wx), Struct_2(false, vec2<f32>(-198f, arg_0.x), u_input.c.zx)), false, false))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.x)))), func_4(func_3(func_3(Struct_3(0u, Struct_2(global0.x, vec2<f32>(654f, global1[_wgslsmith_index_u32(u_input.d, 29u)]), arg_2.yx), Struct_2(global0.x, vec2<f32>(arg_0.x, arg_0.x), u_input.e)), Struct_2(false, arg_0.yy, arg_2.wx)), Struct_2(true, arg_0.xx, vec2<i32>(u_input.e.x, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(2207u, 29u)])))), func_4(func_3(func_3(func_3(Struct_3(4294967295u, Struct_2(false, vec2<f32>(118f, global1[_wgslsmith_index_u32(0u, 29u)]), arg_2.zx), Struct_2(false, vec2<f32>(939f, global1[_wgslsmith_index_u32(u_input.b, 29u)]), u_input.e)), Struct_2(global0.x, arg_0.zy, vec2<i32>(2147483647i, 0i))), func_2(Struct_1(arg_2.wz, true), Struct_4(Struct_3(u_input.b, Struct_2(true, arg_0.yy, vec2<i32>(36302i, arg_1)), Struct_2(global0.x, vec2<f32>(global1[_wgslsmith_index_u32(0u, 29u)], arg_0.x), arg_2.xx)), false, global0.x))), func_3(Struct_3(u_input.a.x, Struct_2(global0.x, arg_0.xy, vec2<i32>(arg_2.x, -1i)), Struct_2(global0.x, arg_0.yz, vec2<i32>(2147483647i, arg_2.x))), func_2(Struct_1(arg_2.yx, global0.x), Struct_4(Struct_3(4294967295u, Struct_2(global0.x, vec2<f32>(439f, global1[_wgslsmith_index_u32(26739u, 29u)]), arg_2.yy), Struct_2(false, arg_0.xx, u_input.c.yx)), true, global0.x))).c), 1f), select(!global0.x, !global0.x, !any(vec4<bool>(true, global0.x, false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec2<bool>(global0.x, any(vec3<bool>(true, true, false))), select(!vec2<bool>(true, all(vec4<bool>(global0.x, false, true, true))), vec2<bool>(true, any(select(vec2<bool>(global0.x, global0.x), vec2<bool>(false, false), vec2<bool>(global0.x, false)))), true), !(!vec2<bool>(global0.x || false, global0.x)));
    let var_0 = all(!(!(!func_1(vec3<f32>(-1966f, -2166f, global1[_wgslsmith_index_u32(44799u, 29u)]), 13895i, vec4<i32>(u_input.c.x, 22571i, -47635i, u_input.c.x)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1582f, 582f))))))))));
    let var_2 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(-1423f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(144f - var_1.x) + global1[_wgslsmith_index_u32(~0u, 29u)]), _wgslsmith_f_op_f32(f32(-1f) * -506f), global1[_wgslsmith_index_u32(min(abs(12212u), reverseBits(u_input.d)), 29u)], global1[_wgslsmith_index_u32(~(~22581u), 29u)]) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(-228f, var_1.x), func_2(Struct_1(vec2<i32>(2147483647i, u_input.c.x), var_0), Struct_4(Struct_3(u_input.d, Struct_2(false, vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(u_input.b, 29u)]), u_input.e), Struct_2(var_0, vec2<f32>(var_1.x, var_1.x), vec2<i32>(var_2, 17754i))), var_0, global0.x)).b.x, global1[_wgslsmith_index_u32(~0u, 29u)], -1000f)))), min(_wgslsmith_dot_vec4_u32(select(u_input.a >> (vec4<u32>(u_input.a.x, 4294967295u, 70904u, 27193u) % vec4<u32>(32u)), ~u_input.a, vec4<bool>(global0.x, false, var_0, var_0)), _wgslsmith_sub_vec4_u32(~u_input.a, ~vec4<u32>(u_input.b, 4294967295u, 31019u, u_input.d))), ~_wgslsmith_add_u32(4294967295u, 0u) << (_wgslsmith_add_u32(_wgslsmith_clamp_u32(37u, u_input.b, 48585u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 0u, 1u), vec3<u32>(44315u, 29396u, 18069u))) % 32u)));
}

