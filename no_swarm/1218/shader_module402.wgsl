struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
    c: vec2<bool>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_3 = Struct_3(1u, -489f, Struct_1(false, 49718u, 45573u, vec3<bool>(false, true, true)));

var<private> global2: vec3<i32> = vec3<i32>(0i, 1i, 2147483647i);

var<private> global3: array<f32, 31> = array<f32, 31>(-1938f, 646f, -196f, 287f, 1578f, -1000f, 708f, -695f, 461f, 1341f, 374f, -704f, -777f, 1067f, 508f, 993f, -806f, -875f, -1000f, 1000f, 289f, 330f, 477f, -725f, 624f, 852f, -1015f, 283f, 255f, 1700f, -1000f);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: f32) -> bool {
    global0 = vec2<i32>(global2.x, _wgslsmith_dot_vec2_i32(select(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, arg_2.x), vec2<i32>(-14213i, arg_2.x), vec2<i32>(arg_1.x, arg_2.x)), arg_1.yz), arg_1.yx, true), arg_2));
    let var_0 = Struct_3(1u >> ((abs(u_input.a.x) << (abs(_wgslsmith_add_u32(u_input.a.x, global1.a)) % 32u)) % 32u), global3[_wgslsmith_index_u32(global1.c.b, 31u)], Struct_1(arg_0 | arg_0, u_input.a.x, global1.a, select(vec3<bool>(false, global1.c.b > global1.a, false), select(global1.c.d, select(vec3<bool>(global1.c.d.x, false, false), vec3<bool>(true, true, global1.c.a), vec3<bool>(global1.c.d.x, arg_0, arg_0)), !global1.c.a), true)));
    let var_1 = _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(var_0.c.b, 31u)]));
    global1 = var_0;
    var var_2 = vec4<f32>(695f, arg_3, -1000f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.a.yz, u_input.a.wz), vec2<u32>(var_0.c.c, u_input.a.x)), 31u)]));
    return global1.c.d.x;
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -107f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.b, global3[_wgslsmith_index_u32(u_input.a.x, 31u)]), _wgslsmith_f_op_f32(-1270f - global1.b), true)))));
    var var_1 = Struct_1(arg_0, global1.c.b, _wgslsmith_add_u32(1u, global1.a), global1.c.d);
    let var_2 = -532f;
    var_1 = Struct_1(!(!(!select(false, false, global1.c.a))), _wgslsmith_dot_vec2_u32(u_input.a.zx, u_input.a.wz), ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, 31633u), var_1.c, 8240u) >> (~abs(45158u) % 32u), select(var_1.d, vec3<bool>(func_3(all(vec3<bool>(true, global1.c.d.x, arg_0)), firstTrailingBit(vec3<i32>(21022i, 44402i, 1i)), -vec2<i32>(global0.x, -16215i), _wgslsmith_f_op_f32(sign(713f))), select(true, true & arg_0, !global1.c.a), true), vec3<bool>(arg_0, false, all(vec3<bool>(arg_0, true, false)))));
    global1 = Struct_3(u_input.a.x ^ 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~4294967295u, 31u)])), Struct_1(true, ~(~(~17025u)), max(19585u, 29620u), vec3<bool>(!global1.c.d.x, false, firstLeadingBit(56846i) < firstLeadingBit(global0.x))));
    return Struct_3(min(firstTrailingBit(~select(1u, 1u, arg_0)), _wgslsmith_clamp_u32(0u, 4294967295u, reverseBits(_wgslsmith_mult_u32(u_input.a.x, 1u)))), -1000f, global1.c);
}

fn func_1() -> Struct_3 {
    global2 = ~vec3<i32>(_wgslsmith_dot_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, global2.x, -1i, -1i), vec4<i32>(global0.x, 2147483647i, global0.x, global0.x)), _wgslsmith_sub_vec4_i32(min(vec4<i32>(global2.x, global0.x, global0.x, global0.x), vec4<i32>(-73732i, global0.x, global2.x, 0i)), abs(vec4<i32>(-7587i, global0.x, global2.x, -55226i)))), reverseBits(-40644i), 1i);
    return func_2(false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = global3[_wgslsmith_index_u32(global1.a, 31u)];
    global1 = Struct_3(countOneBits(~global1.a) & global1.a, func_1().b, func_1().c);
    global3 = array<f32, 31>();
    global1 = Struct_3(firstTrailingBit(_wgslsmith_clamp_u32(0u, u_input.a.x, 11057u) & (u_input.a.x & u_input.a.x)) | (~(10265u ^ global1.c.c) >> (abs(countOneBits(49163u)) % 32u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 31u)] - -1162f), 556f)))), func_2(true).c);
    let var_1 = _wgslsmith_mod_vec2_i32(firstLeadingBit(min(vec2<i32>(-2147483647i, -14904i), select(abs(vec2<i32>(1i, global2.x)), ~global2.zz, !global1.c.d.x))), firstLeadingBit(_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(2147483647i, 2147483647i)), vec2<i32>(-6918i, global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~u_input.a), global2.yx, -(~_wgslsmith_div_i32(var_1.x | global0.x, -var_1.x)), 1i, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(0u, 31u)], 268f, 506f, global3[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec4<f32>(global1.b, 682f, -1000f, 1186f), false))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -822f), global1.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), global3[_wgslsmith_index_u32(global1.a, 31u)]))));
}

