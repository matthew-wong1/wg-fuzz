struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<u32>(4294967295u, 0u, 1u), vec3<i32>(-60913i, i32(-2147483648), 1i)), Struct_1(vec3<u32>(3951u, 1u, 62736u), vec3<i32>(61014i, 18234i, 0i)), Struct_1(vec3<u32>(47014u, 1u, 1u), vec3<i32>(13274i, i32(-2147483648), -61322i)), Struct_1(vec3<u32>(15135u, 7730u, 0u), vec3<i32>(1i, 1i, -1i)), Struct_1(vec3<u32>(61875u, 0u, 0u), vec3<i32>(i32(-2147483648), 1i, 2147483647i)), Struct_1(vec3<u32>(1u, 4294967295u, 15971u), vec3<i32>(i32(-2147483648), i32(-2147483648), 36992i)), Struct_1(vec3<u32>(15128u, 65351u, 1u), vec3<i32>(29278i, -6750i, 116i)), Struct_1(vec3<u32>(4294967295u, 56225u, 90103u), vec3<i32>(11097i, 1i, -13522i)), Struct_1(vec3<u32>(4294967295u, 1u, 76980u), vec3<i32>(-1i, -12213i, -27105i)), Struct_1(vec3<u32>(66468u, 1u, 37198u), vec3<i32>(-1i, 25279i, 2147483647i)), Struct_1(vec3<u32>(4294967295u, 1u, 0u), vec3<i32>(1702i, 703i, i32(-2147483648))), Struct_1(vec3<u32>(4294967295u, 92787u, 0u), vec3<i32>(13089i, -14827i, 41420i)), Struct_1(vec3<u32>(66238u, 40425u, 0u), vec3<i32>(i32(-2147483648), -40246i, i32(-2147483648))));

var<private> global1: bool = false;

var<private> global2: bool;

var<private> global3: vec3<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(860f, 1000f, -2683f), vec3<f32>(-479f, -1165f, -859f), vec3<bool>(true, true, true)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-459f, -527f, -1061f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(490f, -845f, -855f))) * vec3<f32>(-992f, 1527f, -1000f))) * vec3<f32>(-438f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-588f, -1124f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(334f, -422f))))));
    let var_1 = arg_0;
    global2 = -31372i > _wgslsmith_mult_i32(var_1.b.x & -abs(var_1.b.x), -70707i);
    var var_2 = arg_0.a.yy;
    let var_3 = true;
    return vec3<bool>(false, var_3, var_3);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<u32> {
    global3 = firstLeadingBit(~(~(~vec3<u32>(0u, 0u, 0u))));
    let var_0 = ~firstTrailingBit(~86283u);
    global0 = array<Struct_1, 13>();
    var var_1 = -1098f;
    var var_2 = ~arg_0.b;
    return ~firstTrailingBit(_wgslsmith_mod_vec3_u32(~firstLeadingBit(arg_0.a), _wgslsmith_mult_vec3_u32(vec3<u32>(global3.x, var_0, arg_0.a.x), firstLeadingBit(vec3<u32>(0u, arg_0.a.x, u_input.c)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: vec2<f32>, arg_3: vec3<i32>) -> u32 {
    let var_0 = select(func_2(Struct_1(arg_0.yxw, ~firstTrailingBit(arg_3)), 66052u), vec3<bool>(func_2(Struct_1(~arg_0.yxw, arg_3 ^ arg_3), abs(4294967295u)).x, false, true), !vec3<bool>(all(vec2<bool>(true, true)), true, true));
    global3 = _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 81385u, abs(51142u)), ~(~(vec3<u32>(1u, 89642u, u_input.c) | _wgslsmith_clamp_vec3_u32(vec3<u32>(7565u, u_input.c, 1u), vec3<u32>(0u, 37315u, u_input.c), arg_0.wyz))));
    let var_1 = firstTrailingBit(arg_0.xzx) | select(func_3(global0[_wgslsmith_index_u32(22793u, 13u)], -_wgslsmith_div_i32(u_input.a, u_input.b)), arg_0.zxx, vec3<bool>(true, (true || var_0.x) | true, true));
    global2 = -_wgslsmith_mult_i32(~_wgslsmith_mod_i32(u_input.a, -862i), firstLeadingBit(u_input.a) ^ -35596i) >= -(-max(u_input.b, -10505i) ^ firstLeadingBit(~arg_3.x));
    let var_2 = !var_0.zy;
    return _wgslsmith_mult_u32(_wgslsmith_sub_u32(~(global3.x & 45541u), ~(1u ^ arg_0.x)), global3.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~(~vec2<u32>(func_1(vec4<u32>(global3.x, 15499u, 4294967295u, 58012u), 125f, vec2<f32>(-403f, -475f), vec3<i32>(1675i, u_input.b, 2147483647i)), u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(26599u, 109854u, var_0.x, ~var_0.x), max(vec4<u32>(1u, 0u, _wgslsmith_clamp_u32(1u, global3.x, 19709u), 49855u), vec4<u32>(_wgslsmith_mult_u32(u_input.c, 22116u), var_0.x, _wgslsmith_mod_u32(var_0.x, global3.x), 15944u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -570f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -503f)))), 2147483647i, countOneBits(firstLeadingBit(func_3(Struct_1(vec3<u32>(1438u, global3.x, var_0.x), vec3<i32>(2147483647i, u_input.b, 10846i)), -37616i).xz)));
}

