struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: vec3<bool>;

var<private> global2: f32 = -1350f;

var<private> global3: array<u32, 21>;

var<private> global4: vec4<u32> = vec4<u32>(71688u, 1u, 0u, 4294967295u);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -593f), -1239f));
    let var_1 = Struct_2(Struct_1(var_0.x, ~vec4<i32>(_wgslsmith_mult_i32(2147483647i, u_input.a), u_input.a << (56930u % 32u), i32(-1i) * -37005i, u_input.a), abs(~1u >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)] % 32u)), select(vec3<bool>(any(vec2<bool>(global1.x, true)), true, false), vec3<bool>(all(vec2<bool>(global1.x, global1.x)), false, any(global1.yx)), global1.x), global3[_wgslsmith_index_u32(global4.x, 21u)]));
    global1 = var_1.a.d;
    let var_2 = global4.x;
    global3 = array<u32, 21>();
    return -1857f;
}

fn func_2() -> vec4<u32> {
    global2 = _wgslsmith_div_f32(_wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -580f), 1f, any(vec3<bool>(false, global1.x, global1.x)))), _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-270f, _wgslsmith_f_op_f32(1077f + -1942f))))));
    let var_0 = Struct_4(vec4<i32>(_wgslsmith_clamp_i32(-u_input.a, u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a)), u_input.a, -1i, -55362i));
    let var_1 = _wgslsmith_mod_i32(u_input.a, u_input.a);
    var var_2 = Struct_4(-var_0.a);
    var var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(891f, 568f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1048f, -1000f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(510f, -835f))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-822f, 1040f), vec2<f32>(-658f, 179f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2630f, 1368f))))), global1.xx)));
    return vec4<u32>(_wgslsmith_div_u32(global4.x, global3[_wgslsmith_index_u32(~reverseBits(firstLeadingBit(global4.x)), 21u)]), firstLeadingBit(_wgslsmith_div_u32(global4.x, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global4.xzx, vec3<u32>(0u, global3[_wgslsmith_index_u32(4294967295u, 21u)], 0u)), 21u)])), abs(49942u), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(global4.zw, countOneBits(global4.ww)), ~vec2<u32>(global3[_wgslsmith_index_u32(global4.x, 21u)], 0u)) | _wgslsmith_mod_u32(~27044u, countOneBits(global3[_wgslsmith_index_u32(global4.x, 21u)] | global4.x)));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> f32 {
    global4 = (select((vec4<u32>(4294967295u, arg_1.a.c, 17741u, 0u) & vec4<u32>(arg_1.a.e, global4.x, 0u, global4.x)) | _wgslsmith_mult_vec4_u32(vec4<u32>(40701u, 4294967295u, arg_1.a.c, 0u), vec4<u32>(4294967295u, 13727u, 1u, global4.x)), vec4<u32>(~4294967295u, global3[_wgslsmith_index_u32(0u & arg_1.a.e, 21u)], 80591u, _wgslsmith_div_u32(arg_1.a.c, 14723u)), vec4<bool>(!arg_1.a.d.x, global1.x & arg_1.a.d.x, true, true)) >> (~(~_wgslsmith_mod_vec4_u32(vec4<u32>(99621u, global4.x, 34183u, global4.x), vec4<u32>(26171u, global4.x, global3[_wgslsmith_index_u32(50755u, 21u)], 1u))) % vec4<u32>(32u))) << (func_2() % vec4<u32>(32u));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(1635f * -614f)), max(vec4<i32>(u_input.a, 26590i, u_input.a, arg_1.a.b.x), firstLeadingBit(arg_1.a.b)) >> ((vec4<u32>(global3[_wgslsmith_index_u32(0u, 21u)], 72333u, 14222u, global3[_wgslsmith_index_u32(4294967295u, 21u)]) ^ ~vec4<u32>(38934u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global4.x, 21u)], 21u)], 1839u, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_mult_u32(global4.x, ~(~4294967295u)), arg_1.a.d, global3[_wgslsmith_index_u32(73158u, 21u)]));
    global4 = countOneBits(countOneBits(firstLeadingBit(vec4<u32>(0u, arg_1.a.e, var_0.a.e, 30511u))) & max(vec4<u32>(_wgslsmith_clamp_u32(1u, var_0.a.e, 1u), _wgslsmith_add_u32(35133u, 0u), 27834u, _wgslsmith_dot_vec3_u32(global4.zww, vec3<u32>(1u, global4.x, arg_1.a.c))), min(select(vec4<u32>(0u, 4294967295u, 24681u, var_0.a.c), vec4<u32>(1u, 0u, 83041u, arg_1.a.e), vec4<bool>(false, true, arg_1.a.d.x, true)), vec4<u32>(108825u, 1u, var_0.a.c, var_0.a.e))));
    let var_1 = Struct_4(vec4<i32>(_wgslsmith_mod_i32(~select(u_input.a, 1444i, true), 13315i >> ((global4.x << (arg_1.a.c % 32u)) % 32u)), 1i, -77548i, ~u_input.a));
    let var_2 = arg_1.a.e;
    return -1061f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    var var_1 = vec3<i32>(~u_input.a, u_input.a, -(i32(-1i) * -32034i));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -853f) * _wgslsmith_f_op_f32(f32(-1f) * -470f)) - _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1155f, 152f, -1000f, -788f), vec4<f32>(-1060f, -888f, 828f, 169f))), Struct_2(Struct_1(-2318f, vec4<i32>(2147483647i, -1022i, -24383i, var_1.x), 13674u, vec3<bool>(global1.x, global1.x, true), global3[_wgslsmith_index_u32(global4.x, 21u)]))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<f32>(117f, 680f, -1000f, 1621f), Struct_2(Struct_1(-435f, vec4<i32>(u_input.a, 1i, 1i, var_1.x), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0, 21u)], 21u)], vec3<bool>(false, global1.x, true), global4.x)))))), 1082f));
    let var_3 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(trunc(1641f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - 394f))))));
    let var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(vec4<f32>(-1044f, var_3.x, var_3.x, var_3.x), Struct_2(Struct_1(-264f, vec4<i32>(2147483647i, var_1.x, -1i, u_input.a), 27994u, vec3<bool>(false, true, global1.x), 7768u)))), -170f) * var_3) * vec2<f32>(_wgslsmith_f_op_f32(abs(var_3.x)), -131f)));
    let var_5 = Struct_2(Struct_1(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(653f))))), vec4<i32>(u_input.a, -(u_input.a | u_input.a), -(~1i), firstTrailingBit(0i)), firstTrailingBit(var_0), select(!select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, true, true)), vec3<bool>(global1.x | false, any(vec4<bool>(global1.x, false, false, global1.x)), !global1.x), true), var_0 << (global3[_wgslsmith_index_u32(0u, 21u)] % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~70062u, 0u), vec3<i32>(-1449i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_1.x | 19666i, -2147483647i), var_5.a.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, u_input.a, var_5.a.b.x), ~vec4<i32>(-2147483647i, 32222i, 4528i, 41513i))), -1i), _wgslsmith_sub_vec4_u32(min(reverseBits(countOneBits(vec4<u32>(global4.x, 1u, global4.x, 73789u))), ~abs(vec4<u32>(42766u, 58559u, 4294967295u, 10763u))), firstTrailingBit(vec4<u32>(4294967295u, 65463u, var_5.a.e, global4.x)) & vec4<u32>(1u, 79347u, _wgslsmith_sub_u32(0u, global3[_wgslsmith_index_u32(var_5.a.e, 21u)]), _wgslsmith_sub_u32(10249u, 1u))), var_5.a.b.x, vec2<f32>(var_3.x, var_4.a.x));
}

