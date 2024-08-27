struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<u32>,
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

var<private> global0: Struct_1;

var<private> global1: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> vec3<bool> {
    global1 = Struct_1(!(!global0.a), select(vec2<bool>(true, true), !(!select(global1.b, vec2<bool>(arg_2, global1.a.x), true)), arg_0.b.x), firstLeadingBit(1u));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    let var_1 = arg_0.a.x;
    global1 = arg_1;
    global0 = Struct_1(!global0.a, arg_1.b, arg_1.c);
    return vec3<bool>(any(!vec4<bool>(false, true, all(arg_0.b), arg_1.a.x)), arg_2, !(((global1.a.x | false) && true) || !(!global0.b.x)));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec3<bool>) -> bool {
    var var_0 = global1.c;
    global1 = Struct_1(!(!select(select(arg_2, vec3<bool>(global1.b.x, global0.b.x, true), global1.a.x), select(arg_2, vec3<bool>(true, true, false), arg_2), func_3(Struct_1(global1.a, vec2<bool>(arg_2.x, arg_2.x), 1u), Struct_1(vec3<bool>(global0.b.x, global0.b.x, false), vec2<bool>(global0.b.x, false), global0.c), true, 0i))), vec2<bool>(!global1.b.x, false | !global1.b.x), global0.c);
    return true;
}

fn func_1() -> f32 {
    global0 = Struct_1(select(select(global1.a, global0.a, vec3<bool>(!global0.a.x, func_2(-1099f, global0.c, vec3<bool>(global0.a.x, global1.b.x, global0.b.x)), global1.a.x)), !vec3<bool>(true, all(global0.b), func_3(Struct_1(global0.a, vec2<bool>(true, false), u_input.b.x), Struct_1(vec3<bool>(global1.a.x, false, global0.b.x), global0.a.xz, 0u), global0.a.x, u_input.a.x).x), !global0.b.x), func_3(Struct_1(global1.a, vec2<bool>(true, true), _wgslsmith_add_u32(1u, u_input.c) & (global0.c << (41710u % 32u))), Struct_1(vec3<bool>(global1.b.x, func_2(-1255f, 1u, vec3<bool>(global0.b.x, global1.a.x, global1.a.x)), true), vec2<bool>(false | global0.a.x, true), _wgslsmith_add_u32(~51875u, select(1u, 1u, false))), func_3(Struct_1(select(vec3<bool>(false, true, true), vec3<bool>(true, global1.b.x, true), global1.b.x), !global0.a.zx, 1u), Struct_1(!vec3<bool>(global0.b.x, global1.b.x, true), !vec2<bool>(global1.a.x, false), ~0u), reverseBits(u_input.a.x) >= -32335i, i32(-1i) * -2147483647i).x, u_input.a.x).zx, ~_wgslsmith_div_u32(102692u, _wgslsmith_div_u32(0u, global0.c)));
    global0 = Struct_1(global0.a, !global0.a.xy, 7690u);
    global1 = Struct_1(select(vec3<bool>(true, false, true & global0.b.x), global1.a, !select(func_3(Struct_1(vec3<bool>(false, global1.b.x, global1.b.x), vec2<bool>(global0.a.x, global1.b.x), global0.c), Struct_1(global1.a, vec2<bool>(global0.a.x, global0.a.x), u_input.e.x), global0.b.x, u_input.a.x), vec3<bool>(global0.b.x, global1.a.x, global1.a.x), select(false, false, global0.a.x))), !(!vec2<bool>(global1.a.x, global0.b.x)), reverseBits(~4294967295u));
    var var_0 = func_2(-356f, 36402u, select(vec3<bool>(_wgslsmith_div_f32(1159f, 551f) < _wgslsmith_f_op_f32(ceil(1000f)), true, !global0.b.x), vec3<bool>(true, all(vec2<bool>(global1.a.x, false)), false), false));
    let var_1 = vec4<i32>(min(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x | u_input.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(u_input.a.x, u_input.a.x)), vec2<i32>(-2147483647i, 25842i))), _wgslsmith_add_i32(u_input.a.x, reverseBits(u_input.a.x))), u_input.a.x ^ -12873i, 0i, 0i);
    return _wgslsmith_f_op_f32(f32(-1f) * -171f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_1()), 1000f, 964f, -278f);
    let var_1 = Struct_1(select(vec3<bool>(global0.b.x, false, all(vec4<bool>(global0.a.x, true, true, global0.a.x))), global1.a, vec3<bool>(true, true != !global0.a.x, true)), vec2<bool>(true, false), ~_wgslsmith_sub_u32(~firstLeadingBit(u_input.d.x), _wgslsmith_dot_vec3_u32(~u_input.d.zxy, u_input.e.wxx >> (vec3<u32>(36167u, 1u, 26912u) % vec3<u32>(32u)))));
    let var_2 = -1i;
    global0 = Struct_1(func_3(Struct_1(vec3<bool>(select(false, global1.b.x, false), var_1.b.x, any(var_1.a)), vec2<bool>(false, false || var_1.b.x), 71111u), Struct_1(select(vec3<bool>(global0.b.x, var_1.b.x, global0.b.x), global0.a, select(vec3<bool>(false, global1.a.x, global1.b.x), global1.a, global1.a)), global0.b, global1.c), (firstTrailingBit(var_2) <= (var_2 << (0u % 32u))) || false, _wgslsmith_sub_i32(u_input.a.x, var_2)), func_3(var_1, Struct_1(!var_1.a, global0.a.xx, _wgslsmith_dot_vec3_u32(min(vec3<u32>(var_1.c, global1.c, 22911u), u_input.e.yzy), select(u_input.e.zxx, vec3<u32>(18555u, 17085u, global1.c), var_1.a.x))), true, 0i).yy, 29177u);
    var var_3 = countOneBits(-_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-18746i, -1i), 1i, -var_2, -59451i), ~vec4<i32>(u_input.a.x, var_2, 11596i, -2147483647i)));
    var var_4 = Struct_1(var_1.a, vec2<bool>(false, var_1.b.x), _wgslsmith_dot_vec2_u32(select(_wgslsmith_mult_vec2_u32(select(vec2<u32>(4294967295u, global1.c), vec2<u32>(1u, 1u), global0.a.x), firstTrailingBit(vec2<u32>(var_1.c, global0.c))), ~reverseBits(vec2<u32>(global0.c, u_input.d.x)), !vec2<bool>(false, global0.b.x)), ~(abs(u_input.b) & min(vec2<u32>(global1.c, 0u), u_input.d.wx))));
    var var_5 = false;
    var_5 = _wgslsmith_mult_i32(i32(-1i) * -u_input.a.x, ~_wgslsmith_sub_i32(u_input.a.x, ~2147483647i)) == (-1i ^ (var_2 & u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(18493i, -2147483647i));
}

