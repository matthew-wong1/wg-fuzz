struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 6402i;

var<private> global1: u32 = 7301u;

var<private> global2: Struct_1;

var<private> global3: array<f32, 12>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = ~firstTrailingBit(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0.a, 9436u, global2.a), vec3<u32>(u_input.a, u_input.a, arg_0.a), vec3<u32>(65115u, global2.a, u_input.a)), vec3<u32>(global2.a, global2.a, 20025u))) << (vec3<u32>(~global2.a, arg_0.a << (~1u % 32u), 13169u) % vec3<u32>(32u));
    var var_1 = arg_0;
    let var_2 = -firstTrailingBit(-1i);
    global1 = arg_0.a;
    var var_3 = Struct_1(_wgslsmith_div_u32(abs(1u), 1u));
    return select(vec4<bool>(var_2 >= abs(var_2 | var_2), false && all(vec3<bool>(true, true, true)), any(vec2<bool>(true, all(vec4<bool>(false, false, false, true)))), !(245f < _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_3.a, 12u)] + global3[_wgslsmith_index_u32(4294967295u, 12u)]))), select(select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(false, true, false, false), all(vec2<bool>(false, false))), vec4<bool>(true, any(vec4<bool>(true, false, false, true)), -445f == global3[_wgslsmith_index_u32(var_0.x, 12u)], global3[_wgslsmith_index_u32(var_0.x, 12u)] == -654f), vec4<bool>(1i != var_2, true, all(vec4<bool>(true, true, false, false)), false)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), any(vec3<bool>(false, true, false))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false))), true), vec4<bool>(false, any(vec3<bool>(false, true, true)), true, all(vec4<bool>(true, true, true, true)))), false);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = any(func_3(Struct_1(firstLeadingBit(firstTrailingBit(1u)))));
    global2 = Struct_1(abs(global2.a));
    var var_1 = Struct_1(max(arg_1.a, 1u));
    let var_2 = -526f;
    global1 = arg_3.a;
    return arg_3;
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> vec3<i32> {
    global2 = func_2(abs(countOneBits(countOneBits(vec4<u32>(4544u, u_input.a, 10991u, 16618u) >> (vec4<u32>(u_input.a, arg_1, 63998u, 9898u) % vec4<u32>(32u))))), arg_0, Struct_1(arg_0.a), arg_0);
    let var_0 = firstTrailingBit(arg_1);
    var var_1 = arg_0;
    var var_2 = 4294967295u;
    var_2 = 790u;
    return vec3<i32>(~(~_wgslsmith_dot_vec2_i32(vec2<i32>(-32984i, -2147483647i), vec2<i32>(-1124i, 60410i))), ~(-22731i), ~13921i) ^ (-(~vec3<i32>(-4573i, -14423i, 25873i)) ^ vec3<i32>(~firstTrailingBit(-14388i), firstTrailingBit(_wgslsmith_sub_i32(-18727i, 11841i)), 1716i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(-12703i, 0i)), 1i, 1i), func_1(Struct_1(17899u), 3102u, 1192f) & firstTrailingBit(vec3<i32>(1i, 0i, 14942i))), 0i));
    global3 = array<f32, 12>();
    let var_0 = 23850i;
    var var_1 = Struct_1(_wgslsmith_mult_u32(abs(~(~38092u)), u_input.a));
    let var_2 = _wgslsmith_f_op_f32(trunc(-258f));
    let var_3 = -countOneBits(vec3<i32>(~_wgslsmith_add_i32(var_0, var_0), var_0, reverseBits(~(-1i))));
    var_1 = func_2(~max(_wgslsmith_div_vec4_u32(vec4<u32>(59586u, u_input.a, 4294967295u, 4294967295u), vec4<u32>(global2.a, 4416u, global2.a, 0u)), vec4<u32>(u_input.a, global2.a, var_1.a, 1u)) ^ vec4<u32>(33130u, 1u, 101144u, 0u), Struct_1(46061u), Struct_1(4294967295u), func_2(abs(vec4<u32>(var_1.a, var_1.a, 1u, global2.a)) & _wgslsmith_div_vec4_u32(~vec4<u32>(0u, var_1.a, var_1.a, 1u), ~vec4<u32>(u_input.a, var_1.a, 67495u, 0u)), func_2(_wgslsmith_mod_vec4_u32(~vec4<u32>(global2.a, 1u, u_input.a, global2.a), ~vec4<u32>(69143u, 14995u, 1u, u_input.a)), func_2(~vec4<u32>(var_1.a, 0u, u_input.a, var_1.a), Struct_1(global2.a), func_2(vec4<u32>(var_1.a, 54252u, global2.a, u_input.a), Struct_1(25469u), Struct_1(27263u), Struct_1(1u)), Struct_1(0u)), func_2(~vec4<u32>(4294967295u, global2.a, 58266u, 38203u), func_2(vec4<u32>(u_input.a, u_input.a, var_1.a, 1u), Struct_1(u_input.a), Struct_1(37045u), Struct_1(global2.a)), func_2(vec4<u32>(u_input.a, u_input.a, 4294967295u, 1u), Struct_1(5708u), Struct_1(global2.a), Struct_1(1u)), func_2(vec4<u32>(global2.a, global2.a, global2.a, u_input.a), Struct_1(u_input.a), Struct_1(1u), Struct_1(var_1.a))), Struct_1(reverseBits(15754u))), Struct_1(1u), Struct_1(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a, 1u), ~0u))));
    var_1 = func_2(select(vec4<u32>(1u, u_input.a, ~1u, _wgslsmith_add_u32(global2.a, 3579u)) ^ min(abs(vec4<u32>(1u, global2.a, 6857u, 4294967295u)), ~vec4<u32>(0u, 4294967295u, u_input.a, 39663u)), select(vec4<u32>(var_1.a >> (u_input.a % 32u), global2.a, 1u, u_input.a), ~vec4<u32>(global2.a, u_input.a, 24726u, u_input.a), all(vec2<bool>(true, true)) && all(vec3<bool>(false, false, true))), ~1547i < (-1i >> (max(u_input.a, 36511u) % 32u))), Struct_1(_wgslsmith_dot_vec4_u32(select(vec4<u32>(global2.a, var_1.a, 0u, 18615u), vec4<u32>(global2.a, var_1.a, var_1.a, var_1.a), vec4<bool>(true, false, true, true)) & _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_1.a, 15709u), vec4<u32>(u_input.a, u_input.a, 35111u, 4358u)), _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(2706u, global2.a, var_1.a, 23616u), vec4<u32>(59060u, var_1.a, global2.a, u_input.a), vec4<u32>(var_1.a, 1u, var_1.a, global2.a)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4867u, 83802u, u_input.a), vec4<u32>(global2.a, 4294967295u, 0u, 128589u))))), Struct_1(global2.a), Struct_1(var_1.a & global2.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), ~var_1.a, 1u << (var_1.a % 32u))), ~_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(global2.a, u_input.a, 0u)), abs(vec3<u32>(var_1.a, var_1.a, 33058u)))));
}

