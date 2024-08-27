struct Struct_1 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 6>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: bool) -> bool {
    global0 = array<bool, 6>();
    var var_0 = ~(-63449i);
    var var_1 = arg_0;
    var_0 = abs(~_wgslsmith_mult_i32(~(~u_input.c), 1i));
    return true;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> u32 {
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    global0 = array<bool, 6>();
    var var_0 = !all(select(vec2<bool>(func_3(Struct_2(vec3<i32>(u_input.c, arg_1.x, u_input.c)), Struct_2(vec3<i32>(u_input.a.x, -12330i, 1i)), 10041i, global0[_wgslsmith_index_u32(105202u, 6u)]), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.b.x, u_input.b), 6u)]), vec2<bool>(global0[_wgslsmith_index_u32(min(4294967295u, 1u), 6u)], select(global0[_wgslsmith_index_u32(u_input.d.x, 6u)], global0[_wgslsmith_index_u32(7010u, 6u)], true)), vec2<bool>(!global0[_wgslsmith_index_u32(71835u, 6u)], true)));
    var var_1 = _wgslsmith_mod_i32(2147483647i, 1i) >= u_input.c;
    return _wgslsmith_mod_u32(54170u ^ abs(arg_0.c.x), abs(1u));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    let var_0 = vec2<u32>(func_2(arg_1, select(u_input.a, _wgslsmith_mult_vec2_i32(u_input.a, u_input.a), any(arg_0))), _wgslsmith_sub_u32(abs(arg_1.b.x >> (u_input.d.x % 32u)), arg_1.b.x)) >> (_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.d.zw, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.d.x, u_input.b), u_input.d.xx), _wgslsmith_sub_vec2_u32(u_input.d.wz, vec2<u32>(43654u, arg_1.c.x)) ^ arg_1.b), ~(~(vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(u_input.b, 1u)))) % vec2<u32>(32u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(arg_1.a + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_1.a.x, arg_1.a.x, -1197f))))), vec2<u32>(1u, 8701u), min(countOneBits(arg_1.c), ~(arg_1.c >> (arg_1.c % vec3<u32>(32u))) ^ vec3<u32>(var_0.x, 4294967295u, u_input.b)));
    let var_2 = true;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-364f, var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-861f)))))), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, u_input.b), 64908u), arg_1.c.x), var_0.x), vec3<u32>(~(var_0.x >> ((var_1.c.x | var_1.b.x) % 32u)), ~(_wgslsmith_mult_u32(var_0.x, 4294967295u) | abs(1u)), _wgslsmith_div_u32(67919u, 1u)));
    global0 = array<bool, 6>();
    return _wgslsmith_add_u32(arg_1.c.x, _wgslsmith_add_u32(~_wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(arg_1.c.x, 1u, 11350u, 1u)), _wgslsmith_dot_vec2_u32(~var_0, firstLeadingBit(max(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, 63187u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2835f - 621f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -915f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-608f, 835f, global0[_wgslsmith_index_u32(u_input.d.x, 6u)])), _wgslsmith_f_op_f32(-151f - 1426f), all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 6u)], global0[_wgslsmith_index_u32(u_input.b, 6u)], true))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-217f, -835f, 707f)))))), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(u_input.d.yw, ~vec2<u32>(17345u, 34231u)), vec2<u32>(func_1(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 6u)]), Struct_1(vec3<f32>(526f, 725f, 106f), vec2<u32>(19692u, 1u), u_input.d.wyw), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 6u)], global0[_wgslsmith_index_u32(u_input.d.x, 6u)], true)), ~u_input.b), u_input.d.yx) << ((max(vec2<u32>(u_input.b, 0u), vec2<u32>(53251u, 1u)) & select(abs(vec2<u32>(4294967295u, 0u)), vec2<u32>(u_input.b, u_input.d.x), vec2<bool>(true, false))) % vec2<u32>(32u)), ~u_input.d.yyw);
    let var_1 = select(select(vec4<bool>(true, true, all(vec3<bool>(global0[_wgslsmith_index_u32(57412u, 6u)], global0[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(1u, 6u)])), false), !vec4<bool>(false, false, false, false && global0[_wgslsmith_index_u32(var_0.b.x, 6u)]), !(!global0[_wgslsmith_index_u32(var_0.b.x, 6u)] && global0[_wgslsmith_index_u32(0u, 6u)])), !select(vec4<bool>(true, true, 1i >= u_input.c, true), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 6u)], false, global0[_wgslsmith_index_u32(u_input.b, 6u)]), global0[_wgslsmith_index_u32(u_input.b, 6u)]), global0[_wgslsmith_index_u32(~(~var_0.c.x), 6u)]), !vec4<bool>(any(vec2<bool>(true, true)), ~23913i <= u_input.c, false, global0[_wgslsmith_index_u32(~19053u, 6u)]));
    let var_2 = ~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(func_1(var_1.yx, Struct_1(var_0.a, vec2<u32>(u_input.d.x, 0u), var_0.c), vec3<bool>(global0[_wgslsmith_index_u32(67379u, 6u)], true, var_1.x)), var_0.c.x << (u_input.d.x % 32u)), ~countOneBits(55338u)), _wgslsmith_add_u32(min(u_input.b, 44093u << (var_0.c.x % 32u)), ~(~1u)), 1u, 1u);
    let var_3 = vec3<f32>(-123f, var_0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(var_0.a.x, -1647f), var_0.a.x, u_input.b == 24131u)))));
    var var_4 = _wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.c.x, countOneBits(var_2.x)), ~_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(45907u, 4294967295u, 26395u), vec3<u32>(45806u, u_input.d.x, var_0.b.x)), u_input.d.xxx), _wgslsmith_mod_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(~var_2.x, select(0u, var_2.x, var_1.x)), firstLeadingBit(4294967295u) << (var_2.x % 32u)), ~(~(u_input.b << (0u % 32u)))));
    let var_5 = ~abs(~u_input.d.x) > 135907u;
    var var_6 = vec4<f32>(_wgslsmith_f_op_f32(round(var_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1400f)) * _wgslsmith_f_op_f32(var_3.x * 226f))) - _wgslsmith_f_op_f32(sign(-397f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-119f, var_3.x))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x, -439f, -1000f) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -244f, -727f, -1000f))))))));
}

