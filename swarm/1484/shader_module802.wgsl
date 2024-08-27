struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(1u, 1i, 0i, -1i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: i32) -> Struct_1 {
    let var_0 = ~_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 0u, 66980u) | firstLeadingBit(vec3<u32>(0u, 10403u, global3.a)), ~vec3<u32>(abs(1u), 0u, _wgslsmith_mod_u32(global2.a, 0u)));
    var var_1 = var_0.xy;
    global1 = select(!(!(!select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, false, global1.x), global1.x))), !(!vec3<bool>(true, true, global1.x | true)), false);
    let var_2 = global0.a;
    var var_3 = 662f;
    return Struct_1(var_1.x, global0.b, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.c, ~(-27931i)), vec2<i32>(_wgslsmith_div_i32(10053i, global0.b), 1i))), -_wgslsmith_add_i32(countOneBits(-1i), -2147483647i) >> (0u % 32u));
}

fn func_3() -> vec3<bool> {
    let var_0 = select(select(vec2<bool>(all(select(vec4<bool>(global1.x, false, global1.x, true), vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(global1.x, global1.x, global1.x, true))), all(!vec3<bool>(global1.x, global1.x, false))), !global1.xy, select(select(global1.yz, select(global1.xz, global1.zz, true), select(true, false, false)), global1.zz, select(global1.zz, global1.zx, !vec2<bool>(global1.x, global1.x)))), vec2<bool>(true, false), !global1.xy);
    let var_1 = func_2(8892i);
    var var_2 = 61508i;
    var var_3 = 593f;
    var var_4 = var_1;
    return vec3<bool>(true, all(select(!vec3<bool>(var_0.x, global1.x, false), !vec3<bool>(global1.x, global1.x, global1.x), select(select(vec3<bool>(var_0.x, global1.x, false), vec3<bool>(global1.x, var_0.x, var_0.x), vec3<bool>(global1.x, global1.x, var_0.x)), vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, true, var_0.x)))), !var_0.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: f32) -> vec2<u32> {
    global3 = Struct_1(4294967295u, _wgslsmith_dot_vec4_i32(vec4<i32>(~(i32(-1i) * -52993i), -12079i, -1i, -9200i), -select(_wgslsmith_clamp_vec4_i32(vec4<i32>(global3.b, -15841i, -2147483647i, global3.b), vec4<i32>(-23738i, -1i, -19866i, global0.b), vec4<i32>(u_input.b, 6156i, global2.b, 44453i)), -vec4<i32>(global2.b, 38779i, global0.b, 0i), select(vec4<bool>(false, false, false, false), vec4<bool>(global1.x, false, arg_0.x, global1.x), arg_0.x))), _wgslsmith_add_i32(countOneBits(-global3.c), -global2.d), 25193i);
    let var_0 = Struct_1(1u, 58988i, global3.b, 1986i);
    var var_1 = global1.x;
    global3 = var_0;
    global0 = var_0;
    return firstLeadingBit(_wgslsmith_add_vec2_u32(~select(~vec2<u32>(global0.a, 122354u), vec2<u32>(1u, 1u), !vec2<bool>(true, arg_0.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.a, 0u, global3.a, 18568u) | vec4<u32>(global0.a, var_0.a, 1u, 0u), ~vec4<u32>(9219u, global3.a, 4294967295u, global0.a)), ~_wgslsmith_mod_u32(1u, 59662u))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global3 = func_2(-global3.b);
    global3 = Struct_1(~(~(_wgslsmith_dot_vec4_u32(vec4<u32>(44928u, 4294967295u, 0u, 9833u), vec4<u32>(16812u, global2.a, global3.a, 65109u)) << ((global2.a << (global0.a % 32u)) % 32u))), global2.d, abs(0i), _wgslsmith_div_i32(abs(global3.b), global3.c));
    var var_0 = ~_wgslsmith_add_vec2_u32(vec2<u32>(1u, abs(global3.a)) ^ func_4(func_3(), -1243f), ~vec2<u32>(firstTrailingBit(global3.a), 43121u));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-165f, -1496f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(778f - _wgslsmith_f_op_f32(sign(595f))))))));
    var var_2 = firstLeadingBit(vec3<u32>(global0.a, ~(~(~global3.a)), 12988u));
    return func_2(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(global1.x);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -694f) + _wgslsmith_f_op_f32(770f * 705f))))));
    var var_2 = func_2(countOneBits(countOneBits(_wgslsmith_div_i32(-2147483647i, u_input.a))));
    var var_3 = vec3<i32>(_wgslsmith_mod_i32(-8418i, 41480i), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(var_0.c, 7151i, 0i), vec3<i32>(-1i, -2147483647i, -9318i)), ~(~vec3<i32>(var_0.b, var_0.c, var_2.c))) | max(-(-58414i ^ global2.c), _wgslsmith_mult_i32(-global2.b, ~global2.d)), _wgslsmith_sub_i32(func_2(min(_wgslsmith_mod_i32(global0.c, 2147483647i), global0.d)).c, -2147483647i | (_wgslsmith_mult_i32(global0.b, -35872i) | _wgslsmith_clamp_i32(var_2.c, global3.c, 1i))));
    global2 = Struct_1(~(~0u), -2147483647i, u_input.c >> (~40248u % 32u), _wgslsmith_sub_i32(-(~var_0.d), global0.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(min(85081u, 4294967295u), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a, 1u), vec2<u32>(global2.a, 1u)), select(vec2<u32>(global2.a, global0.a), vec2<u32>(104871u, 90669u), vec2<bool>(false, false))), _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, var_2.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(9752u, 1u), vec2<u32>(1u, 1u), vec2<u32>(0u, 274u)))), _wgslsmith_mult_vec3_u32(select(vec3<u32>(global3.a, 4294967295u, global2.a), ~vec3<u32>(var_2.a, global2.a, global3.a), !vec3<bool>(true, global1.x, global1.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a, global0.a, var_0.a), vec3<u32>(4294967295u, 2459u, 54064u)), ~vec3<u32>(22019u, var_0.a, 0u), vec3<u32>(var_0.a, global3.a, 1u)))), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, var_2.a, 1u), vec3<u32>(global2.a, 1u, 41089u)) << (_wgslsmith_sub_u32(global2.a, global0.a) % 32u), func_4(vec3<bool>(false, false, global1.x), 170f).x), reverseBits(~abs(vec3<u32>(global0.a, global0.a, 10441u)))), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(69567u, var_0.a, global3.a, 23180u) ^ vec4<u32>(global3.a, global0.a, 43081u, global3.a), vec4<u32>(var_2.a, 0u, 0u, global3.a))), var_1, ~(vec4<u32>(~global2.a, _wgslsmith_div_u32(27576u, 4294967295u), ~global3.a, ~var_2.a) << (~_wgslsmith_div_vec4_u32(vec4<u32>(var_2.a, 33136u, 15573u, var_2.a), vec4<u32>(4294967295u, var_2.a, global2.a, 4294967295u)) % vec4<u32>(32u))));
}

