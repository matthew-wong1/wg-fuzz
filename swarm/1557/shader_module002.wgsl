struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, -22721i, -20873i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: Struct_3) -> bool {
    let var_0 = Struct_4(arg_2);
    var var_1 = var_0;
    global0 = arg_1.wzy;
    let var_2 = global0.x;
    var_1 = var_0;
    return arg_2.a.a && any(!select(!vec3<bool>(true, false, var_0.a.a.a), !vec3<bool>(true, true, arg_2.a.a), !vec3<bool>(true, var_1.a.a.a, false)));
}

fn func_2() -> f32 {
    var var_0 = global0.x;
    let var_1 = Struct_2(!(!(!func_3(global0.xy, vec4<i32>(global0.x, global0.x, global0.x, global0.x), Struct_3(Struct_2(true, vec2<f32>(378f, -469f)))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, 896f), _wgslsmith_f_op_f32(round(537f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -259f))), vec2<bool>(true, all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true))))));
    let var_2 = Struct_3(var_1);
    let var_3 = ~u_input.a.x >> (_wgslsmith_mod_u32(8956u >> ((0u & min(u_input.a.x, 74268u)) % 32u), ~u_input.a.x ^ ~abs(u_input.a.x)) % 32u);
    let var_4 = Struct_3(Struct_2(all(select(select(vec3<bool>(true, var_1.a, var_2.a.a), vec3<bool>(true, false, var_2.a.a), var_2.a.a), select(vec3<bool>(true, var_1.a, var_2.a.a), vec3<bool>(var_2.a.a, true, var_1.a), var_2.a.a), func_3(global0.yz, vec4<i32>(7622i, -2147483647i, global0.x, global0.x), var_2))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.b))));
    return _wgslsmith_f_op_f32(-1372f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.b.x)) * 1043f));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-324f, _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(235f - arg_0.a.a.b.x), _wgslsmith_f_op_f32(-arg_0.a.a.b.x)) - _wgslsmith_f_op_f32(866f * arg_0.a.a.b.x))));
    global0 = vec3<i32>(_wgslsmith_dot_vec2_i32(~(~global0.zx), -vec2<i32>(global0.x, arg_1)), 2147483647i, global0.x) >> (abs(~_wgslsmith_add_vec3_u32(u_input.a.xwx, vec3<u32>(u_input.a.x, arg_2.x, arg_2.x)) >> (min(~u_input.a.zyw, countOneBits(vec3<u32>(u_input.a.x, 39032u, 4294967295u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = select(vec4<bool>(func_3(global0.zx, -_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, global0.x, arg_1, -2147483647i), vec4<i32>(-2147483647i, 2147483647i, global0.x, global0.x)), arg_0.a), true, !(!(!arg_0.a.a.a)), any(!select(vec3<bool>(arg_0.a.a.a, false, false), vec3<bool>(false, arg_0.a.a.a, true), true))), !(!vec4<bool>(arg_0.a.a.a, arg_0.a.a.a, arg_0.a.a.b.x > arg_0.a.a.b.x, !arg_0.a.a.a)), all(!vec2<bool>(!arg_0.a.a.a, true)));
    let var_2 = Struct_1(_wgslsmith_add_i32(-2147483647i, global0.x), max(_wgslsmith_div_i32(arg_1, _wgslsmith_div_i32(reverseBits(global0.x), firstLeadingBit(-36519i))), global0.x | firstTrailingBit(61388i ^ arg_1)), vec3<i32>(2147483647i, -40255i, -7497i));
    var var_3 = var_2.c;
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = max(vec3<i32>(~global0.x, abs(~global0.x), ~1i), ~vec3<i32>(23055i, ~(~global0.x), 30078i));
    var var_0 = abs(vec2<u32>(select(u_input.a.x ^ 57640u, u_input.a.x, true), ~func_1(Struct_4(Struct_3(Struct_2(false, vec2<f32>(2134f, 1428f)))), global0.x, vec2<u32>(u_input.a.x, u_input.a.x))) ^ u_input.a.zw);
    global0 = firstLeadingBit(~vec3<i32>(firstLeadingBit(-65236i), _wgslsmith_add_i32(1i >> (u_input.a.x % 32u), reverseBits(global0.x)), global0.x));
    let var_1 = Struct_1(-42792i, -(~_wgslsmith_dot_vec3_i32(~vec3<i32>(global0.x, -17411i, global0.x), select(vec3<i32>(global0.x, global0.x, -19241i), vec3<i32>(global0.x, 36158i, global0.x), vec3<bool>(false, false, false)))), vec3<i32>(~(~1i), firstLeadingBit(-14660i), _wgslsmith_add_i32(~(-12087i) >> (var_0.x % 32u), ~(~global0.x))));
    var_0 = u_input.a.wx;
    let x = u_input.a;
    s_output = StorageBuffer(abs(0i), _wgslsmith_dot_vec2_u32(vec2<u32>(~3487u, _wgslsmith_dot_vec4_u32(max(vec4<u32>(u_input.a.x, 27694u, 4294967295u, u_input.a.x), vec4<u32>(59202u, 4294967295u, u_input.a.x, u_input.a.x)), u_input.a)), ~u_input.a.zz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -224f)), _wgslsmith_f_op_f32(abs(-189f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-896f - -353f) + _wgslsmith_f_op_f32(-274f * -104f)))));
}

