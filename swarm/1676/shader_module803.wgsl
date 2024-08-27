struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1 = Struct_1(false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: f32) -> bool {
    let var_0 = Struct_1(global1.a | (true || all(select(vec2<bool>(false, global1.a), vec2<bool>(global1.a, global1.a), vec2<bool>(true, true)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1, arg_1))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -2114f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(662f, 378f)))))), vec2<f32>(arg_1, _wgslsmith_f_op_f32(978f * _wgslsmith_f_op_f32(min(arg_1, 247f)))), vec2<bool>(false, global1.a))));
    var var_2 = !any(vec4<bool>(false, false, global1.a, true));
    var var_3 = -1i;
    let var_4 = Struct_1(false);
    return all(vec3<bool>(any(select(!vec3<bool>(var_4.a, var_4.a, false), vec3<bool>(false, var_0.a, false), !vec3<bool>(var_4.a, true, false))), _wgslsmith_div_u32(firstTrailingBit(u_input.b), ~11260u) >= _wgslsmith_div_u32(u_input.c, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.b), vec2<u32>(4294967295u, 41058u))), ~(~4294967295u) <= _wgslsmith_div_u32(~1u, ~u_input.c)));
}

fn func_2(arg_0: i32, arg_1: i32) -> vec2<bool> {
    global1 = Struct_1(!(!(arg_0 > max(-2147483647i, 0i))));
    let var_0 = Struct_1(!(!global1.a));
    global0 = all(select(vec4<bool>(var_0.a, _wgslsmith_mod_u32(u_input.c, 4294967295u) == u_input.c, true, func_3(u_input.a, _wgslsmith_f_op_f32(-745f - -473f))), vec4<bool>(u_input.b > 4294967295u, global1.a, !all(vec4<bool>(var_0.a, var_0.a, var_0.a, true)), func_3(~arg_1, -1000f)), !vec4<bool>(select(global1.a, global1.a, true), true, true, u_input.a == arg_1)));
    global0 = false;
    global1 = Struct_1(global1.a);
    return select(select(vec2<bool>(true, -245f != _wgslsmith_f_op_f32(select(-205f, -1444f, true))), select(!select(vec2<bool>(true, true), vec2<bool>(true, var_0.a), global1.a), vec2<bool>(true, true), !(!vec2<bool>(true, global1.a))), (all(vec4<bool>(true, false, false, var_0.a)) == true) || global1.a), !select(select(vec2<bool>(var_0.a, var_0.a), !vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, var_0.a)), vec2<bool>(true, true), _wgslsmith_clamp_u32(u_input.b, u_input.c, u_input.b) > _wgslsmith_sub_u32(u_input.c, u_input.b)), global1.a);
}

fn func_1() -> Struct_1 {
    var var_0 = func_2(~u_input.a, 9021i);
    let var_1 = Struct_1((i32(-1i) * -43906i) < ~u_input.a);
    var var_2 = vec3<u32>(_wgslsmith_mod_u32(abs(~19477u), countOneBits(~1u)), u_input.c, ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.c) ^ vec2<u32>(28412u, 4294967295u), vec2<u32>(4294967295u, 529u) << (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, u_input.c), reverseBits(vec2<u32>(u_input.c, u_input.c)))));
    let var_3 = Struct_2(min(var_2.yz, ~(var_2.xy >> (~vec2<u32>(var_2.x, u_input.c) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -746f)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-151f, -402f) - _wgslsmith_f_op_f32(floor(-1604f)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-676f))))), all(select(vec3<bool>(!var_0.x, false, true), vec3<bool>(select(true, true, global1.a), true, all(vec4<bool>(var_1.a, var_0.x, true, true))), !(global1.a || false))), _wgslsmith_f_op_f32(min(523f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-851f + -731f))))))));
    var_0 = vec2<bool>(global1.a, !func_3(-4444i, _wgslsmith_f_op_f32(floor(-764f))));
    return Struct_1(any(!vec4<bool>(false, true, true, global1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_1();
    var var_2 = vec2<u32>(~(~_wgslsmith_mod_u32(~0u, _wgslsmith_sub_u32(4294967295u, 29370u))), u_input.b);
    let var_3 = !(!(!func_2(-14359i, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, 14342i)))));
    var var_4 = func_1();
    var var_5 = countOneBits(firstTrailingBit(-_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.a, -6381i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a) ^ vec4<i32>(-1i, u_input.a, u_input.a, u_input.a))));
    let var_6 = Struct_2(vec2<u32>(u_input.c, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, u_input.c) ^ vec2<u32>(var_2.x, 22696u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, var_2.x), vec2<u32>(35722u, 36080u))), _wgslsmith_clamp_u32(~38103u, 30503u, u_input.c))), 863f, true, _wgslsmith_f_op_f32(f32(-1f) * -562f));
    let var_7 = 1f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.b, var_2.x, var_2.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 42743u, 0u, 0u), vec4<u32>(0u, 0u, var_6.a.x, 89598u), vec4<u32>(15006u, 52392u, 0u, var_6.a.x))), abs(vec4<u32>(0u, 44351u, var_2.x, 57015u) << (vec4<u32>(var_2.x, var_6.a.x, var_6.a.x, u_input.b) % vec4<u32>(32u))), vec4<u32>(countOneBits(u_input.b), _wgslsmith_sub_u32(var_6.a.x, u_input.c), ~0u, reverseBits(var_2.x))) | ~(~vec4<u32>(1u, 47567u, 156593u, 1u)), -273f);
}

