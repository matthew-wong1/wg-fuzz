struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(0u, 0u, vec3<u32>(16674u, 0u, 0u)), Struct_1(47765u, 1u, vec3<u32>(1u, 62900u, 19369u)), Struct_1(0u, 4530u, vec3<u32>(1u, 67464u, 33895u)), Struct_1(4294967295u, 0u, vec3<u32>(51172u, 0u, 49245u)), Struct_1(1u, 4294967295u, vec3<u32>(0u, 0u, 4294967295u)), Struct_1(51829u, 4294967295u, vec3<u32>(85058u, 0u, 0u)), Struct_1(44069u, 0u, vec3<u32>(0u, 4294967295u, 0u)), Struct_1(4294967295u, 1u, vec3<u32>(4294967295u, 21722u, 359u)), Struct_1(1u, 4294967295u, vec3<u32>(0u, 1u, 106593u)), Struct_1(4294967295u, 97970u, vec3<u32>(1355u, 1u, 0u)), Struct_1(39475u, 39131u, vec3<u32>(22994u, 0u, 4294967295u)), Struct_1(5001u, 4294967295u, vec3<u32>(17400u, 1u, 1u)), Struct_1(4294967295u, 1u, vec3<u32>(0u, 18639u, 21076u)), Struct_1(1u, 53817u, vec3<u32>(1u, 0u, 4848u)), Struct_1(34348u, 12379u, vec3<u32>(10649u, 50502u, 51520u)));

var<private> global2: vec4<bool>;

var<private> global3: vec2<f32> = vec2<f32>(-776f, 974f);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c.x, firstLeadingBit(0u), ~0u), 15u)];
    global3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global3.x, _wgslsmith_div_f32(-105f, -524f)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2819f, -158f) + _wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -277f)))));
    let var_1 = reverseBits(vec4<i32>(firstLeadingBit(firstLeadingBit(-46900i)), -16333i, ~(_wgslsmith_clamp_i32(u_input.a.x, u_input.b, -22552i) << (var_0.a % 32u)), _wgslsmith_div_i32(i32(-1i) * -1i, firstTrailingBit(u_input.b) >> (~u_input.c.x % 32u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global3.x + 1404f), _wgslsmith_div_f32(global3.x, -165f), _wgslsmith_f_op_f32(-521f + global3.x), _wgslsmith_f_op_f32(max(global3.x, -955f)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-533f, global3.x), _wgslsmith_f_op_f32(-global3.x), -686f, global3.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(944f, global3.x, global3.x, -716f), vec4<f32>(1588f, global3.x, -2276f, -488f))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1736f, global3.x, global3.x, global3.x), vec4<f32>(global3.x, -396f, -1631f, global3.x), global2.x)))), global2.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-2546f - _wgslsmith_f_op_f32(ceil(-1059f))), -1028f, _wgslsmith_f_op_f32(-global3.x), global3.x))), global2.x));
    return global2.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: vec3<u32>) -> vec2<f32> {
    global1 = array<Struct_1, 15>();
    global0 = 4294967295u >> (~_wgslsmith_sub_u32(~(~u_input.c.x), ~(~arg_2.x)) % 32u);
    var var_0 = 36607i;
    let var_1 = global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(~1u, ~(~u_input.c.x))), 15u)];
    let var_2 = vec2<bool>(func_3(), !((_wgslsmith_mod_u32(u_input.d.x, var_1.a) ^ 4294967295u) == countOneBits(select(u_input.c.x, var_1.a, true))));
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(arg_0.ww))));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: u32) -> u32 {
    global3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(214f, 1858f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1188f, global3.x), vec2<f32>(global3.x, global3.x)) - vec2<f32>(222f, global3.x))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(round(global3.x)), global3.x), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(986f, global3.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.x, -1085f)))), global2.x))), vec2<f32>(-907f, _wgslsmith_f_op_f32(round(global3.x)))));
    var var_0 = _wgslsmith_mod_u32(u_input.c.x, 1u);
    let var_1 = ~(~abs(min(vec2<u32>(arg_0.x, 4294967295u), ~arg_0.zx)));
    let var_2 = false;
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(1214f, 980f), _wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -564f), _wgslsmith_f_op_f32(-1764f + -1172f), _wgslsmith_f_op_f32(-global3.x), global3.x)), global2.x | !var_2, vec3<u32>(max(1u, arg_2 & 4905u), select(arg_0.x, arg_0.x, true), 1u))));
    return min(6653u, max(~arg_2, ~(~_wgslsmith_div_u32(46002u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 15>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global3.x, global3.x))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(ceil(202f)))) + _wgslsmith_f_op_f32(trunc(global3.x)));
    global2 = vec4<bool>(var_0, var_0, global2.x, global2.x);
    global1 = array<Struct_1, 15>();
    var var_1 = Struct_1(~u_input.d.x, _wgslsmith_sub_u32(~func_1(u_input.d, u_input.a.x & 10444i, ~u_input.d.x), 11138u), u_input.c);
    var var_2 = global1[_wgslsmith_index_u32(~(select(4422u, ~firstLeadingBit(0u), all(!vec2<bool>(var_0, true))) & _wgslsmith_add_u32(var_1.b, 19320u)), 15u)];
    var var_3 = Struct_1(max(~_wgslsmith_dot_vec3_u32(u_input.d.zxz >> (var_1.c % vec3<u32>(32u)), u_input.c ^ var_2.c), 51401u), _wgslsmith_add_u32(max(abs(4294967295u), ~u_input.d.x << (reverseBits(var_1.a) % 32u)), firstTrailingBit(var_2.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.c.x, 1u | ~u_input.c.x, ~(~3558u)), vec3<u32>(firstLeadingBit(84536u), reverseBits(var_1.b), u_input.c.x)));
    var_1 = global1[_wgslsmith_index_u32(9850u, 15u)];
    let var_4 = global1[_wgslsmith_index_u32((u_input.c.x << (var_1.a % 32u)) << (29570u % 32u), 15u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(var_3.c & countOneBits(var_4.c), var_2.c), 934f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.x, global3.x, global3.x, global3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1465f, global3.x, -265f, -778f) + vec4<f32>(global3.x, global3.x, global3.x, 837f)))), vec4<f32>(-249f, _wgslsmith_f_op_f32(208f - -921f), _wgslsmith_f_op_f32(select(-262f, global3.x, global2.x)), _wgslsmith_f_op_f32(-global3.x)), !(var_4.a < var_4.a))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1519f, global3.x, global3.x, -1179f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, 1085f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, 283f) * vec4<f32>(-204f, -453f, global3.x, 203f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1137f, global3.x, global3.x, 365f)))), !select(vec4<bool>(global2.x, true, false, var_0), vec4<bool>(var_0, false, global2.x, false), var_0)))), ~(select(var_4.c.x, u_input.c.x, true || var_0) & 56615u), u_input.a.x);
}

