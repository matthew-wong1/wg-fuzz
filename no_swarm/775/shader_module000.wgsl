struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<u32>(3424u, 10160u, 70309u), vec3<f32>(-1826f, 1671f, -959f), vec4<f32>(1174f, 500f, 1325f, 310f), false, false), Struct_1(vec3<u32>(0u, 58396u, 0u), vec3<f32>(-288f, -788f, 228f), vec4<f32>(163f, -1479f, 834f, -1909f), false, false));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<u32>(4322u, 0u, 90143u), vec3<f32>(-438f, 730f, 462f), vec4<f32>(955f, -1461f, 734f, 215f), false, true), Struct_1(vec3<u32>(77894u, 4294967295u, 0u), vec3<f32>(-486f, 1765f, -106f), vec4<f32>(-1414f, -764f, 295f, -1000f), false, true));

var<private> global3: array<u32, 4> = array<u32, 4>(4294967295u, 19711u, 25601u, 56675u);

var<private> global4: bool;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    let var_0 = firstLeadingBit(max(vec2<i32>(-u_input.b, _wgslsmith_add_i32(reverseBits(u_input.b), -1i << (global2.a.a.x % 32u))), select(vec2<i32>(u_input.b, 2147483647i) ^ (vec2<i32>(u_input.b, 2147483647i) & vec2<i32>(u_input.b, 0i)), _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(u_input.b, 43103i), vec2<i32>(u_input.b, u_input.b)), ~vec2<i32>(u_input.b, -71251i)), vec2<bool>(all(vec2<bool>(true, global2.a.e)), all(vec3<bool>(global2.b.e, global2.a.e, global1.b.e))))));
    var var_1 = global2.a.d;
    global0 = -1009f;
    global1 = Struct_2(Struct_1(~select(firstLeadingBit(global2.a.a), ~global1.b.a, select(vec3<bool>(global1.a.e, false, global2.b.d), vec3<bool>(global1.b.d, global1.a.e, global1.a.d), global1.b.e)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.b.x, _wgslsmith_f_op_f32(round(global1.b.b.x)), global1.b.b.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(874f, -1000f, -978f, global2.b.c.x))), vec4<f32>(global1.a.c.x, global2.b.c.x, global2.b.c.x, -766f))))), true, 474f < _wgslsmith_f_op_f32(global2.a.b.x - _wgslsmith_f_op_f32(-global2.b.b.x))), global2.b);
    global4 = !all(vec3<bool>(global2.a.d || (global2.b.b.x == -1627f), false, true));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global2.a.c.xyw + global2.b.b));
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = global1.b.e;
    let var_1 = Struct_2(Struct_1((vec3<u32>(u_input.a.x, global3[_wgslsmith_index_u32(global2.a.a.x, 4u)], global3[_wgslsmith_index_u32(0u, 4u)]) ^ vec3<u32>(global3[_wgslsmith_index_u32(global2.b.a.x, 4u)], 28478u, 53484u)) | u_input.a, global2.a.b, vec4<f32>(_wgslsmith_f_op_f32(global1.a.b.x + _wgslsmith_f_op_f32(-1109f * global1.a.b.x)), global1.b.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -771f), _wgslsmith_f_op_f32(-269f * global1.a.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.b.x + -1206f))), false, global1.b.d), Struct_1(~(~vec3<u32>(0u, 1u, 34724u)), _wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.a.c.x, _wgslsmith_div_f32(global2.b.c.x, 216f), global1.a.c.x, global1.b.b.x))), !select(false, true, !global1.a.e), false));
    var var_2 = ~(abs(vec4<u32>(global1.a.a.x, 4294967295u, 0u, u_input.a.x)) ^ vec4<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.a.a.x, 4u)], 4u)], 4u)], 4u)], var_1.a.a.x, 1u, global1.a.a.x)) >> (firstLeadingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, var_1.a.a.x, u_input.a.x, global3[_wgslsmith_index_u32(global2.a.a.x, 4u)]), vec4<u32>(33762u, global1.a.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 4u)], u_input.a.x)) & max(vec4<u32>(0u, 1u, global2.b.a.x, 15335u), vec4<u32>(var_1.a.a.x, 69535u, 3163u, 31444u)), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(51441u, 40595u, 47659u, 1u), vec4<u32>(global3[_wgslsmith_index_u32(global2.a.a.x, 4u)], var_1.a.a.x, u_input.a.x, global1.a.a.x), vec4<u32>(global3[_wgslsmith_index_u32(global2.a.a.x, 4u)], global1.a.a.x, var_1.a.a.x, 4294967295u)), countOneBits(vec4<u32>(global1.b.a.x, 7886u, 0u, 62184u)), false))) % vec4<u32>(32u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.b.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-global1.a.c.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.c.x - -2202f), _wgslsmith_f_op_f32(global1.a.c.x * var_1.b.b.x)))));
    var var_4 = true;
    return false;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(u_input.a, vec3<f32>(-268f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.a.b.x)))), _wgslsmith_div_f32(-1207f, _wgslsmith_f_op_f32(ceil(-1517f)))), vec4<f32>(global1.a.b.x, -306f, global1.b.b.x, 202f), func_2(~_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.b, u_input.b), ~(-61680i))), !func_2(u_input.b ^ -1i) || true);
    global4 = all(!select(select(vec2<bool>(true, true), vec2<bool>(false, var_0.e), vec2<bool>(false, global1.a.d)), !select(vec2<bool>(false, false), vec2<bool>(global1.a.d, true), vec2<bool>(global2.b.d, global2.a.d)), vec2<bool>(any(vec4<bool>(false, false, false, global2.a.e)), var_0.b.x <= global1.b.c.x)));
    let var_1 = Struct_2(Struct_1(min(_wgslsmith_sub_vec3_u32(~u_input.a, abs(vec3<u32>(4294967295u, 28968u, var_0.a.x))), vec3<u32>(4294967295u, 10690u, ~1u)), global1.a.b, global2.b.c, all(!vec3<bool>(false, var_0.d, false)) | (global1.a.b.x >= 1611f), global2.a.d), global1.b);
    var var_2 = vec2<bool>(!select(any(select(vec3<bool>(var_0.e, false, var_1.b.e), vec3<bool>(global2.b.e, false, var_1.a.d), vec3<bool>(var_0.d, global2.b.e, false))), any(!vec2<bool>(false, var_0.e)), false), global1.a.a.x >= ~(~(~0u)));
    var_0 = global2.b;
    return Struct_1(_wgslsmith_div_vec3_u32(~countOneBits(~vec3<u32>(0u, 4294967295u, 2709u)), ~(global1.a.a & ~global1.a.a)), global1.b.c.xyy, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.c.x, 718f, 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.c.x))) * vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) + _wgslsmith_f_op_f32(abs(-735f))), _wgslsmith_f_op_f32(trunc(-799f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, global1.b.b.x)))), var_2.x, -1591f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.b.x * _wgslsmith_f_op_f32(var_0.b.x + global1.a.b.x))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<f32>) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)), arg_1.x)));
    global2 = Struct_2(Struct_1(global2.a.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(248f * 785f)), arg_2.b.x, 1509f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.b.x)) - arg_1.x), global2.b.b.x, 243f, -1000f), true, arg_0.e), arg_0);
    var var_1 = func_1().e;
    let var_2 = _wgslsmith_f_op_f32(select(926f, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * global1.b.b.x)))), func_1().d));
    let var_3 = arg_0.a.yy;
    return StorageBuffer(vec2<u32>(1u ^ global3[_wgslsmith_index_u32(~(~22180u), 4u)], min(1u, 53223u ^ arg_0.a.x) << (var_3.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1(), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(327f, global1.a.b.x, 880f, global2.a.c.x) * _wgslsmith_f_op_vec4_f32(exp2(global1.b.c)))))), func_1(), _wgslsmith_f_op_vec2_f32(vec2<f32>(1593f, -458f) - _wgslsmith_f_op_vec3_f32(func_3()).yy));
}

