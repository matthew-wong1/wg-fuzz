struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: i32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_5(Struct_3(Struct_2(global0.a, global0.b, global0.c | (global0.c ^ global0.c), true, u_input.a | vec2<i32>(-21025i, -6325i)), !global0.a.a, select(!select(vec2<bool>(false, global0.a.a.x), vec2<bool>(false, global0.a.b.x), false), !vec2<bool>(true, global0.a.d), true)), Struct_3(Struct_2(global0.a, global0.a, _wgslsmith_mod_vec4_i32(global0.c, vec4<i32>(u_input.c, -2147483647i, -18780i, global0.c.x)), true, ~(vec2<i32>(u_input.c, global0.b.c) ^ vec2<i32>(u_input.b.x, 15413i))), select(select(vec4<bool>(false, global0.d, global0.b.d, false), !vec4<bool>(global0.b.d, false, global0.b.b.x, global0.a.b.x), true), global0.a.a, global0.b.a), select(vec2<bool>(global0.b.d, global0.b.b.x), select(select(vec2<bool>(global0.a.a.x, false), vec2<bool>(true, true), false), !vec2<bool>(global0.a.d, global0.b.d), global0.b.b.x), vec2<bool>(false, false))), global0.b);
    let var_1 = var_0.b;
    var var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(52593u, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 4294967295u, 1u, 679u), ~vec4<u32>(61243u, 0u, 4294967295u, 21386u)), 1u, 45772u), ~reverseBits(vec4<u32>(0u, 63471u, 4294967295u, 19747u))), abs(max(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(54425u, 10616u, 0u, 26439u)), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(~4294967295u, _wgslsmith_sub_u32(4294967295u, 4294967295u), select(1u, 18391u, var_0.b.a.b.a.x), ~1u))));
    global0 = var_1.a;
    global0 = var_0.a.a;
    return global0.b.a;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<i32>) -> vec4<i32> {
    global0 = Struct_2(Struct_1(func_3(), global0.a.b, -17831i, all(global0.a.b), vec2<i32>(-15833i, arg_1.x)), global0.b, _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(arg_0, _wgslsmith_add_vec4_i32(abs(arg_0), global0.c)), vec4<i32>(-1i, 17379i, arg_1.x, -14557i)), all(global0.b.a.wx), global0.c.zw);
    var var_0 = !func_3().wzy;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 1f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(628f)))), _wgslsmith_f_op_f32(-351f * 304f)));
    global0 = Struct_2(global0.b, Struct_1(global0.a.a, !select(vec2<bool>(var_0.x, true), select(var_0.xz, vec2<bool>(var_0.x, global0.a.a.x), false), vec2<bool>(true, false)), global0.b.c, all(!global0.b.a), -arg_0.yx), _wgslsmith_add_vec4_i32(global0.c, global0.c), true, select(vec2<i32>(_wgslsmith_mult_i32(-38844i, 12339i), ~(-16320i)), arg_0.wy, !func_3().xw) << (~(~vec2<u32>(0u, 0u)) % vec2<u32>(32u)));
    let var_2 = !vec4<bool>(false, var_0.x, global0.b.a.x, true);
    return vec4<i32>(-_wgslsmith_dot_vec3_i32(global0.c.zyw << (~vec3<u32>(9464u, 44347u, 36119u) % vec3<u32>(32u)), ~arg_0.yzw), arg_1.x, global0.c.x, countOneBits(arg_1.x) ^ -19582i);
}

fn func_1() -> i32 {
    return ~(_wgslsmith_dot_vec4_i32(global0.c, _wgslsmith_clamp_vec4_i32(global0.c, global0.c, func_2(vec4<i32>(u_input.a.x, u_input.a.x, 30020i, 2147483647i), vec2<i32>(-2147483647i, global0.a.c)))) ^ firstLeadingBit(_wgslsmith_mult_i32(i32(-1i) * -1i, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a, Struct_1(select(select(select(global0.a.a, vec4<bool>(global0.b.b.x, false, true, global0.b.d), false), vec4<bool>(false, global0.b.a.x, false, false), global0.b.a), select(select(vec4<bool>(true, global0.a.b.x, global0.a.b.x, global0.a.d), vec4<bool>(true, true, global0.a.d, global0.d), vec4<bool>(global0.d, true, global0.b.a.x, false)), vec4<bool>(global0.a.b.x, false, global0.b.d, global0.b.a.x), select(vec4<bool>(global0.a.d, false, global0.a.a.x, false), vec4<bool>(global0.b.b.x, true, global0.d, global0.d), global0.b.b.x)), vec4<bool>(true, select(global0.a.d, global0.b.a.x, false), any(vec3<bool>(true, false, global0.d)), all(global0.b.a.zzx))), global0.b.b, u_input.b.x, false, max(vec2<i32>(u_input.c, -2147483647i), firstLeadingBit(u_input.b & vec2<i32>(89386i, global0.c.x)))), max(vec4<i32>(-global0.b.e.x, -(~(-1i)), firstTrailingBit(firstTrailingBit(27029i)), func_1()), _wgslsmith_mult_vec4_i32(vec4<i32>(select(u_input.b.x, u_input.c, global0.d), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), max(global0.a.e.x, global0.e.x), _wgslsmith_dot_vec3_i32(global0.c.xwz, vec3<i32>(86019i, global0.a.e.x, 0i))), global0.c)), any(vec3<bool>(any(vec4<bool>(true, global0.b.a.x, global0.d, false)), true, global0.a.b.x)), vec2<i32>(_wgslsmith_sub_i32(-16962i, u_input.c), u_input.a.x));
    var var_0 = Struct_4(-10518i);
    let var_1 = select(select(!vec2<bool>(func_3().x, true), func_3().xz, global0.a.a.zz), !(!global0.a.b), all(vec3<bool>(false, any(vec3<bool>(true, true, false)), select(!global0.d, true, true))));
    let var_2 = 1u;
    global0 = Struct_2(global0.b, Struct_1(vec4<bool>(var_1.x, !func_3().x, false, !(!global0.b.b.x)), !func_3().yw, min(~(-u_input.c), 26013i), all(vec4<bool>(func_3().x, func_3().x, all(var_1), true)), vec2<i32>(countOneBits(~(-13745i)), -_wgslsmith_div_i32(0i, -1i))), _wgslsmith_div_vec4_i32(vec4<i32>(global0.b.c, 2147483647i, 7298i, func_2(global0.c, max(u_input.a, global0.a.e)).x), global0.c), var_1.x, _wgslsmith_div_vec2_i32(vec2<i32>(26253i, u_input.b.x), vec2<i32>(-1i) * -vec2<i32>(u_input.b.x, u_input.b.x)));
    var var_3 = var_1.x && (_wgslsmith_f_op_f32(trunc(1f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-139f - _wgslsmith_f_op_f32(abs(-2199f)))));
    var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2, var_2, 38661u), vec3<u32>(56112u, 1u, 39384u)), var_2) | 4294967295u, 2574i, global0.c.wxx >> (max(~(~vec3<u32>(16772u, 19015u, 1u)), ~select(vec3<u32>(0u, 7718u, 41450u), vec3<u32>(0u, 24389u, var_2), global0.a.a.ywz)) % vec3<u32>(32u)));
}

