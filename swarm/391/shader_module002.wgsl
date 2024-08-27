struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(1427f, -861f));

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-1224f, -882f, 819f), vec4<i32>(-52437i, 0i, -20238i, i32(-2147483648)), false);

var<private> global2: Struct_2;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    let var_0 = countOneBits(global1.b.xzw << (~firstTrailingBit(firstLeadingBit(vec3<u32>(u_input.c.x, u_input.c.x, 1u))) % vec3<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1.a.x + -737f)));
    let var_2 = vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(823f - _wgslsmith_f_op_f32(371f - -308f))))));
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a.x, -1990f, 1000f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, -536f, 1061f) + global1.a), vec3<bool>(global1.c, true, true))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global1.a)), var_2) + vec3<f32>(_wgslsmith_f_op_f32(min(global1.a.x, -393f)), global1.a.x, _wgslsmith_f_op_f32(f32(-1f) * -491f))))), vec4<i32>(-21311i, reverseBits(~global1.b.x), _wgslsmith_dot_vec2_i32(var_0.yz, var_0.xz), 0i), true);
    global1 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(min(338f, 2303f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(481f * -267f), _wgslsmith_f_op_f32(-992f - -346f), all(vec3<bool>(global1.c, true, global1.c)))), _wgslsmith_f_op_f32(step(-1958f, -669f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(global1.a, global1.a), _wgslsmith_f_op_vec3_f32(select(var_2, vec3<f32>(1361f, var_2.x, var_2.x), vec3<bool>(global1.c, false, true))))))), countOneBits(global1.b), select(false, 1f <= _wgslsmith_f_op_f32(trunc(global1.a.x)), false));
    return all(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, var_2.x)) - _wgslsmith_f_op_f32(-var_2.x)) == _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(f32(-1f) * -1715f)), true, true));
}

fn func_2() -> Struct_2 {
    let var_0 = !vec4<bool>(func_3(), any(!select(vec4<bool>(global1.c, true, global1.c, false), vec4<bool>(false, false, global1.c, global1.c), true)), any(select(select(vec2<bool>(false, global1.c), vec2<bool>(false, false), vec2<bool>(false, true)), select(vec2<bool>(global1.c, true), vec2<bool>(false, true), vec2<bool>(global1.c, false)), func_3())), false);
    var var_1 = vec3<u32>(41205u, 1u, _wgslsmith_mod_u32(min(_wgslsmith_mult_u32(u_input.c.x | u_input.c.x, ~1u), _wgslsmith_sub_u32(abs(1u), min(u_input.c.x, 39437u))), u_input.c.x));
    var_1 = max(~reverseBits(_wgslsmith_sub_vec3_u32(min(vec3<u32>(0u, 96195u, var_1.x), vec3<u32>(64753u, 83804u, u_input.c.x)), ~vec3<u32>(var_1.x, 2715u, var_1.x))), max(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 1u, 0u, u_input.c.x) ^ vec4<u32>(4294967295u, 4294967295u, 30446u, 21116u), vec4<u32>(u_input.c.x, 0u, var_1.x, u_input.c.x)), ~_wgslsmith_mod_u32(u_input.c.x, 64471u), 1u | var_1.x), vec3<u32>(reverseBits(var_1.x), 1u, ~74985u)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2153f + -417f)), _wgslsmith_f_op_f32(global1.a.x * -280f), _wgslsmith_div_f32(-1052f, global1.a.x)))), ~global1.b, !var_0.x);
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-703f, var_2.a.x, -380f), vec3<f32>(_wgslsmith_f_op_f32(trunc(-1386f)), global1.a.x, _wgslsmith_f_op_f32(global1.a.x * var_2.a.x)), var_0.yyz)))), vec4<i32>(-_wgslsmith_mod_i32(1i, global1.b.x), ~(~(0i | u_input.d.x)), -2147483647i << (0u % 32u), _wgslsmith_mult_i32(-19395i, global2.a)), !any(select(var_0, var_0, global1.c)));
    return Struct_2(_wgslsmith_clamp_i32(~(i32(-1i) * -1i), global1.b.x, firstLeadingBit(-48282i)) | -1i);
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(858f, global1.a.x);
    global2 = func_2();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-global1.a), global1.b, all(vec3<bool>(_wgslsmith_f_op_f32(step(var_0, 456f)) <= _wgslsmith_f_op_f32(f32(-1f) * -442f), global1.c, false)));
    let var_2 = select(vec3<bool>(any(!vec2<bool>(var_1.c, var_1.c)), !func_3(), any(select(vec2<bool>(global1.c, var_1.c), !vec2<bool>(global1.c, false), func_3()))), !(!(!select(vec3<bool>(false, var_1.c, global1.c), vec3<bool>(global1.c, false, false), vec3<bool>(var_1.c, true, var_1.c)))), abs(_wgslsmith_clamp_u32(~u_input.c.x, 4294967295u >> (u_input.c.x % 32u), ~7609u)) != u_input.c.x);
    global2 = Struct_2(_wgslsmith_mult_i32(~global1.b.x, func_2().a));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.c && (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-1000f)))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(698f + global1.a.x))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.a.x - global1.a.x), -106f))));
    var_0 = any(!(!(!(!vec4<bool>(global1.c, false, false, true)))));
    global1 = Struct_1(global1.a, global1.b, false);
    global0 = array<vec2<f32>, 1>();
    var var_1 = func_1(global1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c.x, 24010u, u_input.c.x, u_input.c.x) ^ ~firstTrailingBit(vec4<u32>(22653u, u_input.c.x, u_input.c.x, 4294967295u)), ~firstLeadingBit(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u))), _wgslsmith_f_op_f32(ceil(491f)), vec3<u32>(u_input.c.x, _wgslsmith_mult_u32(0u, u_input.c.x), ~u_input.c.x));
}

