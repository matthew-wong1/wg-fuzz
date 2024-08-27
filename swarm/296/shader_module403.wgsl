struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<bool>,
    d: vec3<i32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> i32 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-275f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-596f, -1583f) * _wgslsmith_f_op_f32(-182f + -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-594f - -592f)))));
    global0 = vec2<bool>(any(select(vec3<bool>(arg_1.e, true, false), !arg_1.c, select(all(vec3<bool>(global0.x, arg_1.e, true)), true, arg_1.b <= 2147483647i))), arg_1.c.x);
    var var_1 = ~arg_1.b;
    var var_2 = arg_0;
    let var_3 = !arg_1.c;
    return _wgslsmith_clamp_i32(-1i, _wgslsmith_mult_i32(u_input.c, max(-arg_1.b, -59385i) << (u_input.b % 32u)), i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_mod_i32(1i, 2147483647i), 21750i));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_mult_vec3_i32(firstTrailingBit(~(vec3<i32>(arg_0, arg_0, 38410i) >> (arg_2.zzx % vec3<u32>(32u)))), vec3<i32>(countOneBits(_wgslsmith_sub_i32(~(-52114i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, arg_0, u_input.c), vec4<i32>(-16966i, 33776i, 75661i, 1i)))), 1460i, ~countOneBits(u_input.c) & func_3(Struct_3(arg_2.x), Struct_1(vec4<i32>(u_input.c, 2147483647i, arg_0, arg_0), -13935i, vec3<bool>(false, true, true), vec3<i32>(-1i, arg_0, -2147483647i), global0.x))));
    global0 = select(select(select(vec2<bool>(false & global0.x, !global0.x), vec2<bool>(true, global0.x), countOneBits(arg_1.x) <= (arg_1.x >> (arg_1.x % 32u))), !(!select(vec2<bool>(global0.x, true), vec2<bool>(false, global0.x), true)), arg_2.x != _wgslsmith_add_u32(reverseBits(arg_2.x), _wgslsmith_mod_u32(arg_2.x, arg_2.x))), select(!(!select(vec2<bool>(global0.x, false), vec2<bool>(global0.x, true), vec2<bool>(global0.x, global0.x))), vec2<bool>(global0.x, arg_2.x > ~arg_1.x), arg_1.x < ~arg_2.x), select(!vec2<bool>(any(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), global0.x), !(!vec2<bool>(true, global0.x)), !vec2<bool>(true, global0.x)));
    var var_1 = Struct_5(select(vec3<bool>(!(!global0.x), global0.x, select(global0.x, global0.x, global0.x)), select(vec3<bool>(global0.x, !global0.x, !global0.x), vec3<bool>(true, 11557i == arg_0, global0.x), global0.x), all(!(!vec2<bool>(global0.x, global0.x)))), select(select(!vec3<bool>(true, false, global0.x), !(!vec3<bool>(true, true, global0.x)), abs(var_0.x) <= select(-70209i, -1i, false)), vec3<bool>(all(select(vec4<bool>(global0.x, false, global0.x, true), vec4<bool>(global0.x, false, global0.x, global0.x), global0.x)), (global0.x & global0.x) || all(vec3<bool>(false, global0.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -599f) > _wgslsmith_f_op_f32(round(-988f))), vec3<bool>(true, true, any(vec3<bool>(global0.x, true, true)))));
    var var_2 = -(~u_input.c);
    let var_3 = ~(~min(max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_2.x, arg_2.x, arg_2.x), vec4<u32>(65102u, arg_2.x, 6710u, 4294967295u)), 21899u), _wgslsmith_dot_vec3_u32(vec3<u32>(52270u, u_input.b, 31719u), vec3<u32>(11909u, u_input.b, 4294967295u))));
    return Struct_2(abs(arg_1.x));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: u32) -> bool {
    global0 = !select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(!(!global0.x), any(!vec3<bool>(false, true, global0.x))));
    let var_0 = abs(_wgslsmith_sub_u32(0u, ~u_input.b));
    let var_1 = max(~(~select(max(vec3<i32>(-56354i, u_input.a, u_input.c), vec3<i32>(8196i, u_input.c, 13594i)), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, 2147483647i, u_input.c), vec3<i32>(-1i, u_input.a, u_input.c)), global0.x && global0.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(-_wgslsmith_mod_i32(u_input.c, 0i), _wgslsmith_mult_i32(0i, 0i), 1i), firstLeadingBit((vec3<i32>(u_input.a, -1i, -32806i) & vec3<i32>(u_input.a, u_input.a, -40990i)) & (vec3<i32>(u_input.c, 0i, u_input.a) | vec3<i32>(u_input.a, -1i, u_input.a)))));
    var var_2 = Struct_5(!(!select(vec3<bool>(global0.x, true, global0.x), !vec3<bool>(true, false, global0.x), true)), vec3<bool>(true, global0.x || false, false));
    global0 = !select(var_2.a.yy, var_2.a.yz, 0u != var_0);
    return var_2.a.x;
}

fn func_1(arg_0: i32) -> vec3<bool> {
    global0 = !vec2<bool>(global0.x, !func_4(_wgslsmith_f_op_f32(1438f * 106f), func_2(u_input.c, vec3<u32>(0u, 16476u, 1u), vec4<u32>(43253u, u_input.b, 1u, 0u)), ~u_input.b));
    let var_0 = func_2(arg_0, ~abs(~(~vec3<u32>(14854u, 51u, u_input.b))), select(vec4<u32>(select(_wgslsmith_mult_u32(u_input.b, 1u), ~4294967295u, false), u_input.b, ~u_input.b, u_input.b), ~vec4<u32>(1u, 4294967295u, ~u_input.b, u_input.b), vec4<bool>(true, ~u_input.b < 0u, global0.x, select(all(vec4<bool>(false, false, true, global0.x)), !global0.x, true))));
    let var_1 = Struct_1(vec4<i32>(_wgslsmith_clamp_i32(arg_0, 37232i, u_input.a), arg_0 << (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 11554u, 4294967295u) >> (vec4<u32>(u_input.b, 0u, 33040u, u_input.b) % vec4<u32>(32u)), reverseBits(vec4<u32>(31654u, var_0.a, 0u, 102878u))) % 32u), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, arg_0, arg_0, arg_0) ^ vec4<i32>(-2424i, -20103i, -7072i, 35192i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 10151i, 2147483647i, arg_0), vec4<i32>(0i, u_input.a, u_input.c, arg_0), vec4<i32>(u_input.c, -42138i, arg_0, -2147483647i)))), ~u_input.c), 16150i, !(!vec3<bool>(true, false, global0.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(firstLeadingBit(-1i), u_input.a, u_input.c), -(~vec3<i32>(u_input.a, u_input.c, 0i))), !(!(firstLeadingBit(u_input.b) > reverseBits(0u))));
    global0 = !select(vec2<bool>(global0.x, global0.x), vec2<bool>(var_1.e, true), true);
    let var_2 = Struct_3(38929u);
    return !select(vec3<bool>(false, all(select(var_1.c, vec3<bool>(global0.x, false, var_1.e), global0.x)), var_1.e), select(var_1.c, select(!var_1.c, vec3<bool>(var_1.c.x, false, true), !var_1.c), !select(var_1.c, vec3<bool>(var_1.c.x, false, false), global0.x)), var_1.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec4<bool>(false, global0.x, true, all(func_1(~u_input.a))));
    global0 = !select(vec2<bool>((4294967295u & u_input.b) >= 55532u, all(func_1(u_input.a).zx)), vec2<bool>(global0.x, var_0 | !global0.x), func_1(abs(7373i)).zy);
    let var_1 = !vec2<bool>(all(vec2<bool>(!var_0, true)), var_0);
    global0 = !(!var_1);
    var var_2 = 12248u;
    let x = u_input.a;
    s_output = StorageBuffer(select(17211u, 55760u, false) >> (~(~(u_input.b | u_input.b)) % 32u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -668f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1476f)), _wgslsmith_f_op_f32(-159f + _wgslsmith_f_op_f32(f32(-1f) * -403f)))), _wgslsmith_f_op_f32(-177f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1277f, 410f)))), ~vec3<i32>(_wgslsmith_add_i32(u_input.c, ~u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.c, 1i) >> (vec2<u32>(1u, u_input.b) % vec2<u32>(32u))), _wgslsmith_mult_i32(_wgslsmith_add_i32(-2147483647i, u_input.a), 19281i)));
}

