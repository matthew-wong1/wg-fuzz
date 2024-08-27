struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: u32,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 28>;

var<private> global2: array<i32, 4> = array<i32, 4>(-40837i, -1i, i32(-2147483648), 19809i);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> vec3<u32> {
    var var_0 = ~vec2<i32>(u_input.b, u_input.a) ^ vec2<i32>(-1i, 0i);
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(firstTrailingBit(reverseBits(global0.c)), global0.c, 5926u), ~vec3<u32>(0u, countOneBits(17746u), global0.c)), 28u)];
    return vec3<u32>((_wgslsmith_sub_u32(_wgslsmith_div_u32(var_1.c, 49108u), 1u) << (1u % 32u)) >> (112952u % 32u), global0.c, 11335u);
}

fn func_2(arg_0: vec4<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(~global0.c, arg_0.x, _wgslsmith_add_u32(~arg_0.x, arg_0.x & 4294967295u)), ~countOneBits(arg_0.zxw), vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(36599u, global0.c, global0.c, global0.c), arg_0), ~select(44104u, 31973u, true), ~(global0.c << (13127u % 32u)))), max(vec3<u32>(15184u, _wgslsmith_sub_u32(min(109593u, arg_0.x), 1u), 1u), ~_wgslsmith_mult_vec3_u32(func_3(), select(arg_0.ywx, vec3<u32>(4294967295u, 13573u, arg_0.x), vec3<bool>(global0.b.x, false, global0.b.x)))));
    var var_1 = ~(~global0.a);
    var var_2 = _wgslsmith_f_op_f32(-1f) < _wgslsmith_f_op_f32(round(1367f));
    let var_3 = global0.a;
    var var_4 = select(select(!vec4<bool>(true, !global0.b.x, true, true), vec4<bool>(!global0.b.x, true, global0.b.x, global0.b.x), vec4<bool>(all(select(global0.b, global0.b, global0.b.x)), (20506i | var_3.x) <= -775i, (-2147483647i >= global0.d.x) != true, true)), !vec4<bool>(_wgslsmith_sub_i32(-7082i, var_1.x) < global0.d.x, global0.a.x != 1i, !(!global0.b.x), all(!vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x))), global0.b.x);
    return select(var_4.wyz, vec3<bool>(true, !any(vec4<bool>(true, var_4.x, var_4.x, global0.b.x)), !(!(false && var_4.x))), any(select(!(!vec4<bool>(false, var_4.x, false, var_4.x)), select(vec4<bool>(var_4.x, false, global0.b.x, true), vec4<bool>(false, global0.b.x, global0.b.x, global0.b.x), !vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x)), vec4<bool>(global0.b.x, !var_4.x, !var_4.x, global0.b.x))));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec2<u32>) -> Struct_2 {
    global2 = array<i32, 4>();
    let var_0 = arg_2;
    let var_1 = Struct_1(global0.a, select(!global0.b, global0.b, any(func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(5331u, 55231u, 0u, 0u), vec4<u32>(arg_2.x, var_0.x, arg_2.x, arg_0), vec4<u32>(global0.c, arg_2.x, 36382u, arg_1.x))))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(func_3(), _wgslsmith_mult_vec3_u32(vec3<u32>(124758u, 69060u, arg_2.x), vec3<u32>(0u, 6293u, 0u))), var_0.x) << (_wgslsmith_div_u32(arg_0, arg_0) % 32u), global0.d);
    global1 = array<Struct_1, 28>();
    global2 = array<i32, 4>();
    return Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_3().x, firstLeadingBit(~(~var_1.c))), 28u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1000f, 1275f))) * _wgslsmith_f_op_f32(f32(-1f) * -410f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1265f, -311f, var_1.b.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -381f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -358f), -279f), -max(vec2<i32>(var_1.a.x >> (24809u % 32u), abs(-20401i)), -_wgslsmith_div_vec2_i32(global0.a.zy, vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 4u)], global0.d.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -916f), 798f)))) != 1004f);
}

fn func_4(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = func_1(~min(firstTrailingBit(40549u) | ~31387u, arg_0.a.c), ~vec2<u32>(4294967295u, 4294967295u), vec2<u32>(arg_0.a.c, _wgslsmith_clamp_u32(~select(14139u, arg_0.a.c, arg_0.e), ~func_3().x, 0u)));
    global2 = array<i32, 4>();
    var_0 = arg_0;
    global0 = global1[_wgslsmith_index_u32(firstLeadingBit(~4294967295u), 28u)];
    var_0 = func_1(~max(1u, 4294967295u), countOneBits(vec2<u32>(0u, ~(arg_0.a.c << (arg_0.a.c % 32u)))), firstTrailingBit(abs(reverseBits(~vec2<u32>(4840u, 52569u)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(4294967295u, vec2<u32>(arg_0.a.c, 0u), vec2<u32>(26247u, 77171u)).c + 1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-709f * -182f), 533f, !global0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b + arg_0.c), arg_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(2198f, -1042f, 2338f) * _wgslsmith_div_vec3_f32(vec3<f32>(-1380f, -1328f, -443f), vec3<f32>(214f, 808f, 786f))), _wgslsmith_div_vec3_f32(vec3<f32>(-2072f, -271f, 726f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1043f, -1169f, -305f))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-405f * -1598f), _wgslsmith_f_op_f32(-1000f + 794f), _wgslsmith_div_f32(-865f, -616f)) - vec3<f32>(_wgslsmith_f_op_f32(floor(801f)), 103f, 286f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1228f, -653f, -1175f))), vec3<f32>(-1226f, -1370f, -1312f), global0.b.x && false)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(400f, -1877f, 612f)))))));
    var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(2076f, _wgslsmith_f_op_f32(var_0.x - -1581f), var_0.x), vec3<f32>(_wgslsmith_f_op_f32(var_0.x - var_0.x), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -2014f, -453f)))), _wgslsmith_div_vec3_f32(vec3<f32>(-154f, _wgslsmith_f_op_f32(209f * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(round(var_0.x))), vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.x * var_0.x))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(1020f)))));
    global2 = array<i32, 4>();
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1810f + var_0.x) * 593f) * _wgslsmith_f_op_f32(f32(-1f) * -484f)))), var_0.x, -1000f);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(func_1(_wgslsmith_clamp_u32(global0.c, global0.c, 0u), ~vec2<u32>(0u, 73128u), vec2<u32>(global0.c, global0.c)))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, var_0.x, -1000f, var_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.x, 2278f, var_0.x) + vec4<f32>(var_0.x, -280f, 3028f, -406f))))))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, -1216f), vec4<f32>(var_0.x, -359f, var_0.x, var_0.x), false)))) * vec4<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), var_0.x, _wgslsmith_div_f32(-270f, -163f), -1868f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1649f, 1638f, 858f, var_0.x) + vec4<f32>(1423f, -797f, -619f, var_0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, -907f, -520f) - vec4<f32>(-230f, -223f, -1665f, -440f)))), select(!vec4<bool>(false, true, global0.b.x, false), select(!vec4<bool>(true, global0.b.x, false, global0.b.x), vec4<bool>(global0.b.x, true, true, global0.b.x), false), vec4<bool>(true, false, true, !global0.b.x)))));
    global0 = Struct_1(abs(global0.a), global0.b, global0.c, global0.a.yzy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(global2[_wgslsmith_index_u32(global0.c, 4u)], 1i) ^ select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(1i, 0i), global0.b.x)), select(vec2<i32>(-global2[_wgslsmith_index_u32(1u, 4u)], 1i), vec2<i32>(-1i) * -global0.a.wy, true)), _wgslsmith_sub_vec4_i32(firstTrailingBit(~global0.a), global0.a), countOneBits(global0.c | ~global0.c), var_0.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, var_1.x), var_0.xx))) - vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_1.x), var_0.x)), -1144f)));
}

