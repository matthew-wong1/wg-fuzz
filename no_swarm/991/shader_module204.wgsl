struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
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

var<private> global0: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(18371u, 1u, 51065u), vec3<u32>(72149u, 21242u, 4532u), vec3<u32>(1u, 4294967295u, 16340u), vec3<u32>(26469u, 1u, 4294967295u), vec3<u32>(0u, 1u, 7232u), vec3<u32>(29390u, 35437u, 0u), vec3<u32>(49466u, 63671u, 4294967295u), vec3<u32>(1u, 23828u, 13865u), vec3<u32>(26051u, 0u, 4294967295u), vec3<u32>(1u, 30419u, 4294967295u), vec3<u32>(80742u, 9255u, 1u), vec3<u32>(0u, 58345u, 23853u), vec3<u32>(1u, 56702u, 31399u), vec3<u32>(385u, 4294967295u, 56920u), vec3<u32>(2942u, 0u, 37127u), vec3<u32>(390u, 4294967295u, 13168u), vec3<u32>(21928u, 56269u, 67917u), vec3<u32>(1u, 34316u, 4294967295u), vec3<u32>(53327u, 18938u, 1u), vec3<u32>(0u, 0u, 33452u), vec3<u32>(4294967295u, 43187u, 10691u), vec3<u32>(61010u, 50304u, 0u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    global0 = array<vec3<u32>, 22>();
    var var_0 = Struct_1(1u);
    var var_1 = Struct_1(_wgslsmith_mod_u32(0u, select(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.x, 1u, arg_1.x, 32285u), arg_1), _wgslsmith_mod_u32(var_0.a, reverseBits(53094u)), false)));
    global0 = array<vec3<u32>, 22>();
    var var_2 = u_input.a.wwz;
    return _wgslsmith_dot_vec2_u32(arg_1.xx, ~(arg_1.zz ^ vec2<u32>(46966u, ~arg_1.x)));
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_1 {
    var var_0 = Struct_1(29575u);
    let var_1 = !select(vec3<bool>(true, arg_0 == var_0.a, (i32(-1i) * -2147483647i) < firstTrailingBit(u_input.a.x)), vec3<bool>(true, !(u_input.b > 51645i), true), (all(vec2<bool>(false, false)) || false) | any(vec2<bool>(true, false)));
    var var_2 = Struct_1(var_0.a);
    let var_3 = Struct_1(reverseBits(59084u | var_2.a) | 1u);
    var var_4 = firstTrailingBit(vec4<u32>(func_3(arg_1, vec4<u32>(arg_0, 0u, var_3.a, arg_0)), 1u, _wgslsmith_sub_u32(var_2.a, arg_0), arg_0) ^ ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 9044u, 1u, var_3.a), vec4<u32>(var_2.a, var_2.a, 16631u, 7397u))) & max(_wgslsmith_add_vec4_u32(~(vec4<u32>(1u, var_2.a, 30883u, arg_0) & vec4<u32>(arg_0, 33115u, 5282u, var_2.a)), vec4<u32>(_wgslsmith_mod_u32(1u, var_2.a), arg_0 & var_2.a, 1u >> (arg_0 % 32u), ~arg_0)), vec4<u32>(47564u, var_0.a, var_2.a, ~18479u) << (_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(arg_0, 4294967295u, 0u, arg_0)), firstTrailingBit(vec4<u32>(var_2.a, 40690u, 0u, var_2.a))) % vec4<u32>(32u)));
    return Struct_1(4294967295u);
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    global0 = array<vec3<u32>, 22>();
    let var_0 = true;
    let var_1 = func_2(arg_0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-1090f, _wgslsmith_f_op_f32(1000f * -393f))))), 718f)));
    var var_2 = vec3<bool>(countOneBits(u_input.a.x) != ~(~firstLeadingBit(35639i)), true, !(0i != u_input.a.x));
    var_2 = select(!vec3<bool>(all(vec3<bool>(var_0, var_0, true)), false, false), vec3<bool>(!((false | var_0) & true), var_0, all(!(!vec4<bool>(true, var_2.x, false, true)))), var_0);
    return var_2.xx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(countOneBits(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(13656u, 46061u, 4294967295u), global0[_wgslsmith_index_u32(0u, 22u)]), firstTrailingBit(vec3<u32>(0u, 14832u, 4294967295u)))) >> (10472u % 32u));
    var var_1 = !func_1(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, var_0.a) | vec2<u32>(4294967295u, var_0.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(36085u, 4294967295u), vec2<u32>(var_0.a, var_0.a), vec2<u32>(5631u, 27579u)))));
    let var_2 = var_1.x;
    var var_3 = abs(~(-2147483647i));
    var var_4 = Struct_1(4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(ceil(-203f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-461f, 918f) * -979f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1464f + 2839f) * _wgslsmith_f_op_f32(f32(-1f) * -1976f)), -1640f))));
}

