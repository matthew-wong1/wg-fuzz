struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(4155i, -30714i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: u32) -> Struct_3 {
    return Struct_3(u_input.e, vec4<i32>(_wgslsmith_div_i32(-5816i, 1i), global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, min(u_input.d.x, u_input.d.x), 51183i, global0.x), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(u_input.d.x, global0.x, 1181i, -1i)), vec4<i32>(global0.x, -11314i, global0.x, -2147483647i))), countOneBits(u_input.c.x)), !(_wgslsmith_f_op_f32(-1699f + _wgslsmith_f_op_f32(select(-1596f, -2234f, true))) == _wgslsmith_f_op_f32(f32(-1f) * -499f)));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_1, arg_3: vec4<i32>) -> bool {
    global0 = -vec2<i32>(~_wgslsmith_mod_i32(global0.x, _wgslsmith_mod_i32(arg_3.x, global0.x)), arg_3.x);
    var var_0 = -1820f;
    var_0 = _wgslsmith_f_op_f32(ceil(486f));
    global0 = max(vec2<i32>(arg_0.b.x, u_input.c.x), arg_2.a.zz);
    let var_1 = arg_2;
    return arg_0.a.x == u_input.e.x;
}

fn func_1() -> i32 {
    let var_0 = select(select(vec3<bool>(false, 1439f < _wgslsmith_f_op_f32(floor(488f)), !any(vec2<bool>(true, false))), vec3<bool>(true, true, true), func_3(func_2(~61902u), true, Struct_1(firstLeadingBit(vec4<i32>(2147483647i, u_input.c.x, 2147483647i, 2608i)), vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.e.x, 0u, u_input.e.x)), vec4<i32>(func_2(0u).b.x, ~global0.x, ~(-2147483647i), global0.x))), !(!vec3<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(false, false)), true)), any(vec4<bool>(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), false)), false, u_input.e.x > 7974u, any(vec4<bool>(true, true, true, true)))));
    var var_1 = Struct_2(func_3(Struct_3(~(u_input.e << (u_input.e % vec2<u32>(32u))), _wgslsmith_div_vec4_i32(vec4<i32>(global0.x, -1i, 0i, u_input.a), vec4<i32>(u_input.c.x, global0.x, u_input.d.x, 0i)) ^ select(vec4<i32>(global0.x, -9995i, global0.x, 2147483647i), vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, global0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !var_0.x), select(var_0.x, false, any(!vec4<bool>(var_0.x, false, false, true))), Struct_1(vec4<i32>(-2147483647i, 1i, u_input.a, firstTrailingBit(49099i)), vec3<u32>(abs(u_input.e.x), 3874u, 4294967295u), _wgslsmith_sub_vec3_u32(abs(vec3<u32>(64845u, u_input.e.x, u_input.e.x)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.e.x), vec3<u32>(48057u, 1u, 541u)))), _wgslsmith_div_vec4_i32(abs(vec4<i32>(global0.x, -2147483647i, -2147483647i, u_input.d.x)) | _wgslsmith_mod_vec4_i32(vec4<i32>(44709i, 1213i, u_input.c.x, 0i), vec4<i32>(-28238i, u_input.a, 18325i, u_input.a)), ~vec4<i32>(-11444i, 1i, u_input.d.x, 16850i) | abs(vec4<i32>(-2147483647i, 0i, u_input.c.x, -2147483647i)))), global0.x);
    let var_2 = true && !(!all(vec4<bool>(var_1.a, var_0.x, var_1.a, true)) || ((i32(-1i) * -1i) != (35597i >> (u_input.e.x % 32u))));
    var_1 = Struct_2(var_0.x, u_input.d.x);
    var var_3 = vec3<bool>(false, var_1.a, var_0.x);
    return func_2(4294967295u).b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(false, vec4<bool>(true, !any(vec3<bool>(false, true, true)) || true, all(!select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), !any(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)))), u_input.d);
    var var_1 = !var_0.a;
    global0 = vec2<i32>(func_1(), select(~countOneBits(_wgslsmith_mod_i32(global0.x, var_0.c.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(83465i, u_input.a, u_input.a, u_input.a) >> (vec4<u32>(u_input.e.x, 1u, 4294967295u, u_input.e.x) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(~vec4<i32>(-6770i, u_input.d.x, global0.x, global0.x), vec4<i32>(-39090i, global0.x, -30292i, var_0.c.x) << (vec4<u32>(6956u, u_input.e.x, 4294967295u, 0u) % vec4<u32>(32u)))), false));
    let var_2 = -254f;
    global0 = abs(~_wgslsmith_sub_vec2_i32(~u_input.d, vec2<i32>(global0.x, global0.x))) & vec2<i32>(~firstLeadingBit(0i), min(u_input.c.x, var_0.c.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 0u), vec4<u32>(u_input.e.x, 34989u, 19194u, u_input.e.x)) % 32u)));
    global0 = abs(var_0.c);
    global0 = -(~abs(~(-u_input.c)));
    global0 = ~(-vec2<i32>(u_input.d.x | var_0.c.x, var_0.c.x));
    let var_3 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~vec4<u32>(u_input.e.x, u_input.e.x, 1u, 35093u)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(var_2)))), _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(ceil(var_2))), 553f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_2, _wgslsmith_f_op_f32(trunc(var_2)), _wgslsmith_div_f32(203f, -901f)), vec3<f32>(_wgslsmith_div_f32(1000f, var_2), var_2, _wgslsmith_f_op_f32(-var_2)))), true)), _wgslsmith_f_op_f32(-var_2), select(vec3<i32>(_wgslsmith_clamp_i32(0i, var_0.c.x, 2147483647i), 2147483647i, var_3.x | var_3.x) & select(func_2(u_input.b).b.wyy, vec3<i32>(var_3.x, var_3.x, var_3.x), any(var_0.b)), ~(abs(vec3<i32>(var_3.x, -23174i, -2147483647i)) << (~vec3<u32>(u_input.b, 1u, u_input.b) % vec3<u32>(32u))), var_0.b.yxy));
}

