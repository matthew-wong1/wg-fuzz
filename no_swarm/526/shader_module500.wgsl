struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28>;

var<private> global1: array<Struct_3, 25>;

var<private> global2: bool;

var<private> global3: vec2<u32> = vec2<u32>(34975u, 1u);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    global2 = false;
    global2 = -196f <= arg_0.b;
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(305f, _wgslsmith_f_op_f32(abs(arg_0.b)))))), vec2<bool>(any(vec4<bool>(false, false, false, arg_0.a.b.x)), all(!vec3<bool>(false, true, arg_0.a.b.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b + _wgslsmith_f_op_f32(arg_0.a.c + -186f)), 298f), _wgslsmith_f_op_vec2_f32(abs(arg_0.a.d)), arg_0.a.e), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, arg_0.a.d.x, _wgslsmith_f_op_f32(floor(555f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a.c, 1000f) * arg_0.b)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-252f, arg_0.b, 595f, 786f))), arg_0.a.b.x)), select(!vec3<bool>(!arg_0.a.b.x, true | arg_0.a.b.x, all(arg_0.a.b)), select(vec3<bool>(true, true, true), !select(vec3<bool>(arg_0.a.b.x, arg_0.a.b.x, false), vec3<bool>(arg_0.a.b.x, true, true), arg_0.a.b.x), any(select(vec2<bool>(arg_0.a.b.x, true), arg_0.a.b, arg_0.a.b.x))), vec3<bool>(arg_0.a.b.x, false, true)), arg_0.a.e >= u_input.b);
    var var_1 = select(vec2<bool>(all(!var_0.c.zz), false), !var_0.c.yz, arg_0.a.b);
    let var_2 = var_0;
    return vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(24283u, global3.x), vec2<u32>(3788u, arg_0.a.e))), vec2<u32>(global3.x, arg_0.a.e))), var_2.a.e, _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(arg_0.a.e), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.e, var_2.a.e, var_2.a.e), vec3<u32>(var_0.a.e, u_input.b, 1u)), abs(u_input.a)), vec3<u32>(1u, ~global3.x, u_input.a)) << (~((global3.x | 0u) ^ ~arg_0.a.e) % 32u), ~_wgslsmith_div_u32(122262u, ~global3.x));
}

fn func_2() -> i32 {
    global0 = array<i32, 28>();
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 63442u, _wgslsmith_add_u32(firstTrailingBit(45173u), ~global3.x), ~1u) & vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, global3.x), vec2<u32>(117590u, 33098u)), firstTrailingBit(vec2<u32>(global3.x, global3.x))), 4294967295u, 0u, 4294967295u), func_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(2325f - 569f), vec2<bool>(false, false), _wgslsmith_f_op_f32(1323f + -1295f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(981f, -1000f)), ~global3.x), 904f)));
    var var_1 = vec4<i32>(1i, i32(-1i) * -23813i, global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(var_0, 28u)]);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(760f - -1093f)))), -287f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), 2140f);
    var var_3 = -1i;
    return var_1.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_4, arg_3: vec2<f32>) -> vec3<i32> {
    var var_0 = false;
    let var_1 = firstTrailingBit(1u);
    let var_2 = !vec3<bool>(arg_0.b.x, arg_1.b.x, arg_2.c.x);
    var var_3 = ~(~_wgslsmith_mod_vec2_u32(select(~vec2<u32>(u_input.b, 90639u), abs(vec2<u32>(arg_2.a.e, 1000u)), vec2<bool>(true, true)), select(vec2<u32>(var_1, var_1) ^ vec2<u32>(54210u, u_input.a), ~vec2<u32>(31168u, 64203u), arg_1.b.x)));
    let var_4 = Struct_5(Struct_4(Struct_1(arg_3.x, arg_2.c.yz, -766f, arg_1.d, ~1u), vec4<f32>(arg_1.d.x, _wgslsmith_div_f32(-1000f, arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-148f))), _wgslsmith_f_op_f32(round(1338f))), !select(var_2, vec3<bool>(true, arg_0.b.x, arg_2.d), arg_0.b.x), any(vec2<bool>(any(vec4<bool>(true, true, arg_2.d, true)), var_2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.b.x, 555f, arg_2.b.x, arg_0.a)))))), global1[_wgslsmith_index_u32(global3.x, 25u)]);
    return vec3<i32>(~1i, _wgslsmith_clamp_i32(1602i, var_4.c.a.x, -2147483647i), ~firstTrailingBit(func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(abs(vec2<i32>(1i, global0[_wgslsmith_index_u32(global3.x | global3.x, 28u)])) & -max(vec2<i32>(2147483647i, -46490i) << (vec2<u32>(global3.x, global3.x) % vec2<u32>(32u)), abs(vec2<i32>(global0[_wgslsmith_index_u32(global3.x, 28u)], -39223i))));
    var var_1 = _wgslsmith_add_vec3_i32(~(vec3<i32>(global0[_wgslsmith_index_u32(46967u, 28u)], max(var_0.x, global0[_wgslsmith_index_u32(2660u, 28u)]), ~global0[_wgslsmith_index_u32(0u, 28u)]) | _wgslsmith_div_vec3_i32(-vec3<i32>(var_0.x, 1i, 0i), ~vec3<i32>(-2147483647i, 984i, 39729i))), func_1(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -391f), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)), _wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, 1207f), vec2<f32>(896f, 770f))), 97u), Struct_1(1000f, vec2<bool>(false, true), -1246f, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(731f, -999f), vec2<f32>(-128f, 1000f))), u_input.b), Struct_4(Struct_1(861f, vec2<bool>(false, false), -560f, vec2<f32>(138f, -482f), global3.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1039f, -773f, -168f) - vec4<f32>(385f, -1754f, 1463f, -922f)), vec3<bool>(true, true, true), false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))) | abs(vec3<i32>(_wgslsmith_div_i32(-34905i, 23072i), ~global0[_wgslsmith_index_u32(global3.x, 28u)], -71312i)));
    let var_2 = func_3(Struct_2(Struct_1(-615f, !select(vec2<bool>(false, true), vec2<bool>(false, true), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1383f)), vec2<f32>(1f, 1f), 4294967295u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -332f))))));
    let var_3 = func_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2246f + 1000f) + _wgslsmith_f_op_f32(443f + -222f)), !select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), 1000f, vec2<f32>(-1594f, -658f), var_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-499f)))))).x;
    var var_4 = select(vec2<bool>(true, true), !vec2<bool>(!(global3.x > var_3), all(vec2<bool>(false, false))), vec2<bool>(any(vec4<bool>(true, true, true, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))));
    let var_5 = ~(select(firstTrailingBit(vec4<i32>(var_0.x, 0i, global0[_wgslsmith_index_u32(35266u, 28u)], 0i)), abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.x, -2147483647i, var_1.x, global0[_wgslsmith_index_u32(5302u, 28u)]), vec4<i32>(-35828i, 21410i, var_0.x, global0[_wgslsmith_index_u32(23597u, 28u)]))), select(vec4<bool>(var_4.x, var_4.x, var_4.x, var_4.x), select(vec4<bool>(false, var_4.x, var_4.x, true), vec4<bool>(var_4.x, var_4.x, false, true), var_4.x), true)) ^ ~firstTrailingBit(~vec4<i32>(1i, var_1.x, var_1.x, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(max(abs(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(var_2.wz, var_2.zw), var_2.yz)), var_2.zw), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(711f * _wgslsmith_f_op_f32(898f + -321f)), _wgslsmith_f_op_f32(887f + 175f), -138f, 1044f)));
}

