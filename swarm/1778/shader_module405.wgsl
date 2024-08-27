struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_3) -> f32 {
    global0 = u_input.a;
    var var_0 = ~vec3<i32>(-32176i, -firstTrailingBit(arg_2.b), 15968i);
    var var_1 = -38656i;
    let var_2 = var_0.zy;
    let var_3 = true;
    return 688f;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1146f, -1183f) - vec2<f32>(-1023f, 1750f)), ~arg_1.x, Struct_3(vec2<f32>(434f, 876f), u_input.c))), -1033f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1224f, 562f) + vec2<f32>(1025f, -958f)), vec2<f32>(-363f, 2516f))))), min(min(42544i, _wgslsmith_dot_vec3_i32(vec3<i32>(-8340i, -17434i, u_input.c), vec3<i32>(u_input.c, -7822i, u_input.c) ^ vec3<i32>(-2147483647i, u_input.c, u_input.c))), -34778i));
    var_0 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(vec2<f32>(var_0.a.x, var_0.a.x), arg_1.x, Struct_3(vec2<f32>(987f, var_0.a.x), var_0.b))), var_0.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-358f, var_0.a.x))) + vec2<f32>(_wgslsmith_f_op_f32(-1000f * -563f), var_0.a.x))), -u_input.c);
    let var_1 = any(select(vec4<bool>(true, 329f != var_0.a.x, var_0.b >= u_input.c, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true))), true)) && true;
    var var_2 = Struct_4(vec4<bool>(!(reverseBits(global0.x) <= arg_1.x), true, true, abs(arg_0.x) > 74528u), Struct_2(_wgslsmith_f_op_vec2_f32(-var_0.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1305f, var_0.a.x, var_0.a.x) + vec3<f32>(-1095f, -505f, var_0.a.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a.x, 427f, var_0.a.x), vec3<f32>(-1115f, var_0.a.x, -560f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-2212f, 1000f, -1324f), vec3<f32>(1000f, var_0.a.x, var_0.a.x)))))), firstTrailingBit(531u)));
    var var_3 = u_input.a;
    return ~33011u ^ _wgslsmith_dot_vec4_u32((~arg_1 >> (~arg_1 % vec4<u32>(32u))) >> (~arg_1 % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(45731u, var_2.b.c) ^ vec2<u32>(1u, u_input.a.x), vec2<u32>(52492u, global0.x)), _wgslsmith_add_u32(u_input.a.x, arg_0.x), ~_wgslsmith_sub_u32(1u, arg_0.x), abs(var_2.b.c)));
}

fn func_1(arg_0: f32) -> Struct_2 {
    global0 = countOneBits(~(~vec3<u32>(4294967295u, func_2(vec3<u32>(global0.x, 75383u, 4294967295u), vec4<u32>(u_input.b.x, u_input.b.x, global0.x, global0.x)), u_input.b.x)));
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(step(-1121f, arg_0)), _wgslsmith_f_op_f32(arg_0 - 1794f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1730f) * vec2<f32>(344f, -149f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(272f, arg_0)))))), _wgslsmith_mult_i32(-u_input.c, 41482i));
    var_0 = Struct_3(var_0.a, firstTrailingBit(abs(u_input.c >> (u_input.b.x % 32u))));
    var var_1 = ~0u;
    var var_2 = _wgslsmith_add_vec4_i32(vec4<i32>(-abs(_wgslsmith_mult_i32(u_input.c, 2147483647i)), _wgslsmith_mult_i32(firstTrailingBit(-20814i), 0i), -6589i ^ min(1i, -u_input.c), _wgslsmith_mult_i32(var_0.b, _wgslsmith_sub_i32(var_0.b | var_0.b, var_0.b))), _wgslsmith_mult_vec4_i32(reverseBits(_wgslsmith_add_vec4_i32(-vec4<i32>(1i, var_0.b, var_0.b, u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -1i, 2147483647i, var_0.b), vec4<i32>(u_input.c, var_0.b, var_0.b, 2147483647i), vec4<i32>(var_0.b, u_input.c, u_input.c, u_input.c)))), vec4<i32>(var_0.b, -2147483647i, ~(-2771i), -20777i)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1206f), 584f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, 717f), vec2<f32>(arg_0, -1989f), true)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(-620f, -1000f)), vec2<f32>(var_0.a.x, -1064f))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1000f, 1000f, -423f))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-544f, -676f, arg_0))))))))), ~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(step(-541f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-421f, -923f, true)) * _wgslsmith_f_op_f32(sign(-492f))))));
    global0 = abs(~_wgslsmith_clamp_vec3_u32(u_input.a, reverseBits(vec3<u32>(54819u, global0.x, var_0.c)), u_input.a));
    let var_1 = Struct_4(!vec4<bool>(true, false, any(vec3<bool>(false, true, true)), true), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-355f, -769f) + vec2<f32>(176f, -1181f))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(var_0.b, vec3<f32>(var_0.b.x, -614f, var_0.b.x), true)))), 78455u));
    global0 = firstLeadingBit(u_input.a);
    let var_2 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.x, u_input.c, vec4<i32>(u_input.c, -1i, (_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(u_input.c, u_input.c)) >> (global0.x % 32u)) | (i32(-1i) * -9850i), reverseBits(-(7143i | u_input.c))), (_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(-8834i, 1i, 1i, -2147483647i)), reverseBits(vec4<i32>(26323i, u_input.c, u_input.c, u_input.c))) << (_wgslsmith_clamp_vec4_u32(~vec4<u32>(48381u, u_input.a.x, var_0.c, 0u), ~vec4<u32>(global0.x, global0.x, var_0.c, 38557u), _wgslsmith_add_vec4_u32(vec4<u32>(8466u, 1u, 0u, 9657u), vec4<u32>(9670u, 69844u, 30422u, 3768u))) % vec4<u32>(32u))) | (_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), vec4<i32>(0i, u_input.c, u_input.c, -8588i)), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)) >> (~vec4<u32>(global0.x, 38722u, 4294967295u, u_input.a.x) % vec4<u32>(32u))), firstTrailingBit(4294967295u));
}

