struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: bool,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<f32>,
    d: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
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

var<private> global0: array<bool, 11> = array<bool, 11>(true, false, false, true, true, true, false, false, true, false, true);

var<private> global1: bool;

var<private> global2: array<i32, 11> = array<i32, 11>(7433i, -39139i, -29832i, 2147483647i, 13867i, 38924i, 1i, 6874i, 1i, 17287i, 1i);

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = _wgslsmith_mult_i32(firstTrailingBit(-8306i), _wgslsmith_mod_i32(abs(select(24545i, _wgslsmith_mult_i32(global3.a.x, 1i), !arg_1.c)), global3.a.x));
    var var_1 = u_input.a;
    global1 = global2[_wgslsmith_index_u32(u_input.a, 11u)] < arg_0;
    let var_2 = Struct_3(arg_1.e.x, Struct_1(vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, _wgslsmith_sub_u32(u_input.a, 0u)), 11u)]), vec3<bool>(false, select(all(arg_1.b.xy), all(vec3<bool>(false, false, true)), global0[_wgslsmith_index_u32(9614u, 11u)]), arg_1.b.x), any(vec4<bool>(true, true, true, global3.b.x)), _wgslsmith_div_f32(1643f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -955f)))), vec4<f32>(global3.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1764f))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-127f + arg_1.e.x) + 1000f))));
    var var_3 = false;
    return !vec4<bool>(true, arg_1.c, !global0[_wgslsmith_index_u32(abs(u_input.a), 11u)], true);
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-global3.d), Struct_1(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.wy, vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 11u)], u_input.b.x) | vec2<i32>(u_input.b.x, 0i)), countOneBits(u_input.b.zx)), vec3<bool>(true, select(global3.b.x, global0[_wgslsmith_index_u32(~16285u, 11u)], all(vec4<bool>(global3.c, global0[_wgslsmith_index_u32(0u, 11u)], false, global0[_wgslsmith_index_u32(u_input.a, 11u)]))), global3.c), global3.b.x, _wgslsmith_f_op_f32(global3.d * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-755f - -824f), _wgslsmith_div_f32(global3.d, global3.d))), global3.e));
    let var_1 = var_0.b.d;
    global3 = Struct_1(min(var_0.b.a, vec2<i32>(12726i, reverseBits(~global3.a.x))), vec3<bool>(true, !(!(global3.c == true)), global0[_wgslsmith_index_u32(4294967295u, 11u)] || any(var_0.b.b)), all(func_3(global3.a.x, Struct_1(select(u_input.b.zz, var_0.b.a, true), vec3<bool>(false, global3.b.x, var_0.b.b.x), false, _wgslsmith_f_op_f32(var_0.a * global3.e.x), _wgslsmith_f_op_vec4_f32(-var_0.b.e)))), -1219f, global3.e);
    let var_2 = global0[_wgslsmith_index_u32(u_input.a, 11u)];
    var var_3 = false;
    return Struct_3(var_0.a, Struct_1(~abs(min(var_0.b.a, vec2<i32>(u_input.b.x, global2[_wgslsmith_index_u32(1u, 11u)]))), var_0.b.b, var_0.b.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.e.x, 1053f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, _wgslsmith_f_op_f32(round(881f)), global3.e.x, _wgslsmith_f_op_f32(var_0.b.d - global3.d)) * vec4<f32>(var_0.a, -1474f, _wgslsmith_div_f32(-1267f, var_0.b.e.x), 647f))));
}

fn func_1(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: vec2<u32>) -> u32 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_dot_vec3_i32(~_wgslsmith_add_vec3_i32(u_input.b.wxz, u_input.b.xyz ^ ~vec3<i32>(-27751i, arg_2.a.x, arg_0)), min(~_wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, u_input.b.x, 294i), vec3<i32>(-13915i, 53074i, 1i)), -vec3<i32>(38628i, global3.a.x, -1i)) >> (vec3<u32>(~max(arg_3.x, 0u), u_input.a, 9924u) % vec3<u32>(32u)));
    var_1 = -(~(~firstTrailingBit(-3139i)) << (u_input.a % 32u));
    var var_2 = Struct_1(firstLeadingBit(var_0.b.a), func_2().b.b, true && !global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), arg_3), abs(u_input.a)), 11u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.e.x)), arg_1), _wgslsmith_f_op_vec4_f32(-global3.e));
    global2 = array<i32, 11>();
    return _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, arg_3.x, 43072u) >> (vec4<u32>(u_input.a, u_input.a, u_input.a, 1970u) % vec4<u32>(32u)), vec4<u32>(arg_3.x, arg_3.x, u_input.a, 0u)), ~(~(~vec4<u32>(0u, u_input.a, 55296u, 0u)))) >> (_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(49851u, 82u)), ~arg_3.x ^ arg_3.x), firstLeadingBit(_wgslsmith_mod_u32(~arg_3.x, ~u_input.a))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    global1 = any(vec4<bool>(false, global0[_wgslsmith_index_u32(7719u, 11u)], false, global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(0u, func_1(global2[_wgslsmith_index_u32(u_input.a, 11u)], 111f, Struct_1(vec2<i32>(10391i, 36946i), vec3<bool>(false, true, global3.b.x), global0[_wgslsmith_index_u32(0u, 11u)], var_0, global3.e), vec2<u32>(0u, 12809u)))), 11u)]));
    global0 = array<bool, 11>();
    global1 = global0[_wgslsmith_index_u32(4294967295u, 11u)];
    global3 = Struct_1(_wgslsmith_add_vec2_i32(vec2<i32>(global3.a.x >> (u_input.a % 32u), ~u_input.b.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(31765u, 11u)], -2147483647i), _wgslsmith_sub_vec2_i32(u_input.b.xy, global3.a), select(u_input.b.xx, vec2<i32>(-2147483647i, 0i), true))) >> (~(~reverseBits(vec2<u32>(u_input.a, 0u))) % vec2<u32>(32u)), vec3<bool>(select(all(vec2<bool>(true, true)), !global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, u_input.a), 11u)], _wgslsmith_f_op_f32(var_0 * 846f) > _wgslsmith_f_op_f32(f32(-1f) * -961f)), !((0i > global3.a.x) || global3.b.x), true), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -607f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-539f, -1193f)), _wgslsmith_f_op_f32(-var_0))))), global3.e);
    let var_1 = ~reverseBits(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.a, 1u), abs(vec2<u32>(70721u, 4294967295u))), ~vec2<u32>(u_input.a, 39299u)));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(-2147483647i, u_input.b.x));
}

