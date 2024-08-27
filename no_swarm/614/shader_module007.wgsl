struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(1u, 5812u, 1u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(72551u, 0u, 4294967295u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(0u, 1u, 0u), vec3<u32>(3494u, 22271u, 1u), vec3<u32>(24803u, 12357u, 1u), vec3<u32>(26742u, 4294967295u, 1u), vec3<u32>(1u, 15396u, 27805u), vec3<u32>(32050u, 8379u, 40619u), vec3<u32>(259u, 0u, 39632u), vec3<u32>(0u, 1u, 1u), vec3<u32>(5u, 41542u, 8927u), vec3<u32>(44191u, 64657u, 1u), vec3<u32>(4294967295u, 0u, 11735u), vec3<u32>(44383u, 4294967295u, 81161u), vec3<u32>(8671u, 1u, 1u), vec3<u32>(0u, 1u, 103330u), vec3<u32>(32114u, 22834u, 0u), vec3<u32>(0u, 21449u, 4327u), vec3<u32>(64496u, 4294967295u, 1u), vec3<u32>(1u, 49346u, 8079u), vec3<u32>(1u, 15490u, 80521u), vec3<u32>(83499u, 58334u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(38113u, 87954u, 1u), vec3<u32>(53224u, 64816u, 0u), vec3<u32>(0u, 1u, 31067u), vec3<u32>(28517u, 56032u, 4294967295u), vec3<u32>(0u, 34722u, 53440u));

var<private> global1: vec3<bool> = vec3<bool>(true, false, false);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec2<bool>) -> vec3<u32> {
    var var_0 = firstLeadingBit(8395u);
    global0 = array<vec3<u32>, 31>();
    global0 = array<vec3<u32>, 31>();
    global1 = select(vec3<bool>(arg_0.x, global1.x, arg_0.x), !select(vec3<bool>(true, !arg_0.x, true), !vec3<bool>(arg_0.x, true, false), select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(false, false, arg_0.x), vec3<bool>(true, false, false))), arg_0.x);
    var var_1 = !(!select(!(!vec4<bool>(arg_0.x, true, global1.x, false)), select(!vec4<bool>(global1.x, global1.x, true, true), !vec4<bool>(global1.x, true, global1.x, false), select(vec4<bool>(arg_0.x, true, global1.x, global1.x), vec4<bool>(global1.x, false, true, arg_0.x), true)), true));
    return min(firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(global0[_wgslsmith_index_u32(select(0u, u_input.a.x, var_1.x), 31u)]), ~(global0[_wgslsmith_index_u32(u_input.a.x, 31u)] | vec3<u32>(14570u, 34349u, u_input.a.x))), 31u)]), firstLeadingBit(~(vec3<u32>(7336u, 0u, u_input.a.x) & vec3<u32>(15801u, 17361u, u_input.a.x)) ^ vec3<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 4294967295u), u_input.a.x)));
}

fn func_2() -> Struct_5 {
    var var_0 = ~vec2<u32>(~(~(~u_input.a.x)), _wgslsmith_mult_u32(u_input.a.x, ~(1u << (u_input.a.x % 32u))));
    let var_1 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(40665u, var_0.x), 1u, min(18701u, u_input.a.x)), ~global0[_wgslsmith_index_u32(var_0.x, 31u)], firstTrailingBit(func_3(global1.xx))) << (~firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a.x, 31u)]) % vec3<u32>(32u));
    return Struct_5(Struct_3(Struct_1(_wgslsmith_div_u32(~u_input.a.x, ~4294967295u), vec2<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, var_1.x), 6724u), 20552u | _wgslsmith_sub_u32(var_0.x, 0u)), select(vec4<bool>(true, false, global1.x, all(vec3<bool>(global1.x, global1.x, false))), select(!vec4<bool>(false, global1.x, true, global1.x), select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, true, global1.x, global1.x), true), true), !(!global1.x)), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), reverseBits(vec3<i32>(13510i, 34028i, 2147483647i))), Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(0u, u_input.a.x), 93096u), 31u)], abs(u_input.a), 2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1106f)), vec2<i32>(-29649i, -39090i))), !select(!select(vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, true), global1.x), select(!vec4<bool>(false, true, global1.x, global1.x), !vec4<bool>(true, true, global1.x, false), false), vec4<bool>(true, global1.x && true, !global1.x, global1.x)), min(vec4<u32>(u_input.a.x, _wgslsmith_add_u32(~u_input.a.x, 4294967295u), ~countOneBits(1u), ~var_0.x), firstLeadingBit(vec4<u32>(38532u, var_0.x, var_1.x, 0u)) ^ ~vec4<u32>(80035u, 2826u, var_0.x, var_1.x)));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = func_2();
    let var_1 = func_2();
    let var_2 = var_0.a.d.d;
    return Struct_1(max(1554u, _wgslsmith_sub_u32(0u, var_0.a.a.b.x)), vec2<u32>(~(~0u) | _wgslsmith_clamp_u32(~1u, reverseBits(u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, var_1.a.d.a.x)), u_input.a.x), ~u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    var var_1 = global1.x;
    let var_2 = ~(~_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(10928i, -36501i), vec2<i32>(-1i, -51371i)), ~vec2<i32>(-3103i, 2147483647i), -vec2<i32>(-2896i, 20950i)), vec2<i32>(abs(2147483647i), 22199i)));
    var var_3 = false;
    var_1 = global1.x;
    let var_4 = func_1(vec3<bool>(!(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 0u, 74191u)) < ~4294967295u), global1.x, false));
    global1 = vec3<bool>(global1.x, false, !all(vec2<bool>(any(vec3<bool>(global1.x, true, true)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(148f))) * -1271f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(446f - -1301f) - -1073f))), 82967u);
}

