struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec2<u32>, 11>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: u32, arg_3: vec3<f32>) -> i32 {
    let var_0 = ~u_input.a.xxx;
    let var_1 = arg_2;
    var var_2 = Struct_2(_wgslsmith_add_vec4_i32(firstTrailingBit(firstTrailingBit(~vec4<i32>(arg_0.a.x, arg_1.x, global0.x, 0i))), vec4<i32>(u_input.c, 1i, 1i, global0.x)));
    let var_3 = u_input.d;
    var var_4 = !select(!vec3<bool>(true, any(vec2<bool>(false, false)), true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), false), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)));
    return _wgslsmith_mod_i32(1i, 1002i);
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = ~func_3(Struct_2(select(u_input.b, vec4<i32>(-27534i, global0.x, 0i, global0.x), vec4<bool>(false, false, false, true)) | (vec4<i32>(2147483647i, global0.x, -12168i, u_input.c) | u_input.b)), vec2<i32>(-1i) * -u_input.b.zz, ~0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-228f, arg_0, 2573f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, -1779f)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1233f, arg_0, arg_0))))));
    global0 = abs(~firstLeadingBit(u_input.b.yy));
    var var_1 = Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(-16126i, min(~(-2147483647i), firstLeadingBit(u_input.b.x)), _wgslsmith_sub_i32(select(7418i, u_input.c, true), global0.x ^ 1i), _wgslsmith_mod_i32(global0.x, 38265i)), abs(vec4<i32>(-25561i, -global0.x, abs(global0.x), _wgslsmith_mult_i32(global0.x, 0i)))));
    var_1 = Struct_2(_wgslsmith_mult_vec4_i32(~_wgslsmith_add_vec4_i32(-var_1.a, u_input.b), select(~countOneBits(var_1.a), vec4<i32>(u_input.c, -u_input.b.x, ~3201i, -var_1.a.x), true)));
    var var_2 = u_input.c;
    return u_input.a.x;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(vec4<i32>(-(~u_input.c), global0.x, 0i, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, global0.x, 63690i), u_input.c ^ -2147483647i, abs(2147483647i), u_input.b.x ^ -1i), min(u_input.b & u_input.b, firstTrailingBit(u_input.b)))), vec4<i32>(~global0.x >> (func_2(_wgslsmith_f_op_f32(step(-921f, 1834f))) % 32u), 1i, u_input.c, ~(-1i & u_input.c)), firstTrailingBit(firstLeadingBit(vec2<u32>(func_2(556f), u_input.a.x))), ~_wgslsmith_mod_i32(-26621i, -(i32(-1i) * -45209i)));
    var var_1 = select(select(!vec4<bool>(any(vec2<bool>(true, false)), true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(true, all(vec2<bool>(false, false)), true, 4294967295u != var_0.c.x)), vec4<bool>((53867u | u_input.d) >= select(1u, var_0.c.x | u_input.d, true), true, true, true), select(vec4<bool>(false, true, any(vec2<bool>(true, true)), select(any(vec2<bool>(false, true)), true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, select(false, false, true), select(false, false, false), false), vec4<bool>(true, true, any(vec2<bool>(true, false)), true), true)));
    let var_2 = vec3<bool>(select(false, false, var_1.x || true), var_1.x, var_1.x || true);
    let var_3 = Struct_2(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b.ww, abs(max(vec2<i32>(u_input.c, -2147483647i), vec2<i32>(2147483647i, global0.x)))), abs(1i), _wgslsmith_mod_i32(u_input.b.x, i32(-1i) * -2147483647i), 1i));
    return Struct_1(select(~_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(18338i, u_input.b.x, global0.x, var_3.a.x), vec4<i32>(20376i, -2147483647i, 3270i, -2147483647i)), _wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(2147483647i, var_0.a.x, 2147483647i, global0.x))), u_input.b, var_1.x), u_input.b, var_0.c, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(~min(~max(1i, global0.x), i32(-1i) * -3617i), _wgslsmith_clamp_i32(global0.x, ~_wgslsmith_mod_i32(-18579i, _wgslsmith_mult_i32(-1i, -39487i)), abs(2147483647i)));
    var var_0 = func_1();
    let var_1 = func_1();
    let var_2 = true;
    let var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_mult_i32(select(1i, func_3(Struct_2(vec4<i32>(var_3.a.x, u_input.c, global0.x, -4336i)), var_1.a.zy, 0u, vec3<f32>(-187f, 362f, -1000f)), var_2), firstTrailingBit(var_1.d | -23254i)), 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(269f, -1081f) * -1002f), _wgslsmith_f_op_f32(select(-408f, 1f, true))))), _wgslsmith_dot_vec3_i32(var_1.b.yzy, reverseBits(~abs(var_3.a.xzy))), max(abs(var_0.c & var_3.c) & (~var_3.c & var_0.c), _wgslsmith_add_vec2_u32(vec2<u32>(~var_3.c.x, 4294967295u), abs(vec2<u32>(var_1.c.x, var_0.c.x) & vec2<u32>(50361u, 76931u)))), select(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.a.x, u_input.c), vec2<i32>(-33850i, var_3.b.x)), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.d, -38190i), vec2<i32>(2147483647i, 3581i))), vec2<bool>(true, true)) ^ (-select(var_3.b.yx, vec2<i32>(var_3.d, u_input.b.x), var_2) >> (max(vec2<u32>(var_1.c.x, u_input.a.x), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), vec2<u32>(var_3.c.x, 1u))) % vec2<u32>(32u))));
}

