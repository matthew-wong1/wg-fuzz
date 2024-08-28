struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 30>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    let var_0 = vec2<bool>(global0.c, global0.c);
    var var_1 = select(u_input.a, 4294967295u, all(select(!vec3<bool>(false, global0.c, false), vec3<bool>(true, var_0.x, var_0.x), !(!global0.c))));
    global0 = Struct_1(countOneBits(firstLeadingBit(_wgslsmith_div_i32(countOneBits(18685i), ~17335i))), vec3<u32>(~(~71793u), u_input.a, _wgslsmith_clamp_u32(~18542u, 1u, global0.b.x)) << (reverseBits(_wgslsmith_add_vec3_u32(min(global0.b, vec3<u32>(global0.b.x, u_input.a, 11337u)), ~global0.b)) % vec3<u32>(32u)), var_0.x, -global0.d);
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_add_u32(global0.b.x, global0.b.x), 12296u) & min(select(countOneBits(global0.b.yz), vec2<u32>(60580u, u_input.a), !var_0), vec2<u32>(75785u, ~68659u)), global0.b.zz), 30u)];
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(global0.b, ~(_wgslsmith_div_vec3_u32(vec3<u32>(17277u, 32146u, 11350u), vec3<u32>(33975u, global0.b.x, global0.b.x)) << (vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u)))), global0.b), 30u)];
    return !(!any(select(select(vec4<bool>(var_2.c, true, var_2.c, false), vec4<bool>(true, var_0.x, true, false), false), !vec4<bool>(false, var_0.x, global0.c, var_0.x), !var_2.c)));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<bool>) -> bool {
    global0 = Struct_1(global0.d.x >> (~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global0.b.zx, global0.b.yx), global0.b.yz) % 32u), vec3<u32>(29763u, ~_wgslsmith_dot_vec2_u32(~global0.b.xx, global0.b.xx | global0.b.yz), u_input.a), select(!(arg_0 == func_3(vec2<i32>(-60811i, 4758i))), all(!select(vec4<bool>(true, global0.c, true, arg_0), vec4<bool>(true, arg_2.x, arg_0, false), global0.c)), func_3(firstLeadingBit(abs(vec2<i32>(-1i, arg_1.x))))), select(-vec2<i32>(-global0.d.x, -arg_1.x), -arg_1.xx, false));
    let var_0 = _wgslsmith_mult_i32(-1i, _wgslsmith_mod_i32(select(~(~36332i), _wgslsmith_sub_i32(reverseBits(-2147483647i), arg_1.x), true || arg_0), global0.a));
    var var_1 = _wgslsmith_clamp_u32(~_wgslsmith_div_u32(reverseBits(~35752u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(24304u, u_input.a, 59531u, u_input.a), vec4<u32>(0u, 23963u, global0.b.x, global0.b.x))), u_input.a, u_input.a);
    return true;
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = !vec2<bool>(!func_2(any(vec4<bool>(false, false, true, arg_0.c)), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -9648i, 7045i), vec3<i32>(-1i, 1i, global0.d.x)), !vec2<bool>(global0.c, arg_0.c)), select(true, all(!vec4<bool>(false, true, arg_0.c, false)), any(vec3<bool>(false, global0.c, true))));
    return all(!select(vec2<bool>(var_0.x, any(vec4<bool>(var_0.x, false, false, false))), !(!var_0), vec2<bool>(true, func_2(true, vec3<i32>(-18043i, 0i, 0i), var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-133f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -941f), _wgslsmith_f_op_f32(trunc(-1371f)), _wgslsmith_add_i32(-40038i, global0.a) < _wgslsmith_dot_vec2_i32(global0.d, global0.d))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -783f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2411f)) + -1501f));
    var var_2 = select(vec4<bool>(~global0.b.x > countOneBits(21667u), !any(select(vec4<bool>(global0.c, global0.c, global0.c, false), vec4<bool>(global0.c, global0.c, false, global0.c), global0.c)), !global0.c, true), vec4<bool>(true, any(select(vec4<bool>(false, global0.c, false, true), select(vec4<bool>(true, true, global0.c, global0.c), vec4<bool>(global0.c, global0.c, false, global0.c), vec4<bool>(global0.c, global0.c, global0.c, global0.c)), !vec4<bool>(true, global0.c, true, true))), -global0.d.x > global0.a, false), func_1(global1[_wgslsmith_index_u32(select(0u, u_input.a, true), 30u)]));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -385f) + var_1), var_1)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1), -128f, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -348f)))));
    var var_4 = firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(global0.a, -global0.a, countOneBits(1i), -global0.d.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(14613i, global0.d.x, -20759i, global0.a) << ((vec4<u32>(u_input.a, 54382u, u_input.a, u_input.a) << (vec4<u32>(global0.b.x, 1u, 0u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(global0.a, global0.a, global0.d.x, global0.a) | vec4<i32>(55334i, global0.a, -3711i, -21330i)), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(global0.a, global0.d.x, global0.a, 37226i)), max(vec4<i32>(2147483647i, -7719i, 67892i, global0.a), vec4<i32>(-19144i, -25759i, 2147483647i, -1i))))));
    let var_5 = 37659u;
    let x = u_input.a;
    s_output = StorageBuffer(select(max(var_5, max(~3579u, ~u_input.a)), _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(global0.b.zy, vec2<u32>(0u, u_input.a)), global0.b.x & abs(4294967295u)), (global0.a <= _wgslsmith_sub_i32(global0.a, 7619i)) & var_2.x), vec3<i32>(-var_4.x, ((var_4.x & 0i) >> (_wgslsmith_mod_u32(4294967295u, 5205u) % 32u)) << (55554u % 32u), global0.d.x), (i32(-1i) * -17598i) | _wgslsmith_add_i32(_wgslsmith_mod_i32(~var_4.x, var_4.x), -19590i));
}

