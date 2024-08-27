struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: array<vec2<i32>, 3>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = arg_0.c.x;
    var var_1 = ~vec3<u32>(countOneBits(20701u) >> (~(~0u) % 32u), u_input.d.x, _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a, arg_0.a, u_input.d.x), u_input.d.zxy), select(u_input.d.wzz, vec3<u32>(28504u, 4294967295u, arg_0.a), true)));
    global0 = array<bool, 28>();
    var var_2 = Struct_2(var_1.xx, Struct_1(firstLeadingBit(10708u), arg_0.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -624f), arg_0.c.x, -288f)), -_wgslsmith_mod_vec3_i32(arg_0.d << (vec3<u32>(var_1.x, 73616u, 89375u) % vec3<u32>(32u)), arg_0.d | vec3<i32>(-2147483647i, 1i, u_input.b)), u_input.a.zx), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0), -1085f)), _wgslsmith_f_op_f32(-var_0)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.x) + _wgslsmith_f_op_f32(-1805f * -1666f)) * _wgslsmith_f_op_f32(-601f * var_0))), arg_0.c.x, var_1.x);
    global0 = array<bool, 28>();
    return 0u;
}

fn func_2() -> Struct_2 {
    var var_0 = ~u_input.d.yxw;
    let var_1 = Struct_1(~(~(~7531u)), !select(vec2<bool>(true, true), select(vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 28u)], false), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 28u)], global0[_wgslsmith_index_u32(27139u, 28u)]), vec2<bool>(true, true)), vec2<bool>(true, true)), vec3<f32>(_wgslsmith_f_op_f32(669f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -838f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-719f))), _wgslsmith_f_op_f32(f32(-1f) * -850f)), u_input.a, u_input.c);
    var var_2 = global0[_wgslsmith_index_u32(39800u, 28u)];
    global0 = array<bool, 28>();
    let var_3 = Struct_2(_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 1u), vec2<u32>(func_3(var_1), select(4294967295u, 8740u, false)), min(u_input.d.zx ^ var_0.zx, countOneBits(var_0.yy))) & vec2<u32>(32968u, u_input.d.x), var_1, _wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.c.x - var_1.c.x))))), ~(_wgslsmith_add_u32(0u, var_0.x) ^ ~0u));
    return Struct_2(firstTrailingBit(select(vec2<u32>(firstTrailingBit(24469u), 45765u), _wgslsmith_add_vec2_u32(select(vec2<u32>(var_3.e, 53629u), var_3.a, true), ~var_3.a), 0i <= -var_1.e.x)), Struct_1(~firstLeadingBit(~var_3.a.x), var_1.b, vec3<f32>(var_3.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.b.c.x - -258f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.c.x), -364f))), vec3<i32>(min(0i, -25529i), -_wgslsmith_clamp_i32(-23892i, u_input.c.x, -1i), 0i), firstTrailingBit(-u_input.c)), -131f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1383f + var_3.b.c.x)), _wgslsmith_dot_vec4_u32(~u_input.d, _wgslsmith_mod_vec4_u32(countOneBits(u_input.d), ~u_input.d) & vec4<u32>(_wgslsmith_mult_u32(7275u, 0u), countOneBits(28627u), var_1.a, ~29126u)));
}

fn func_1(arg_0: f32, arg_1: u32) -> vec2<bool> {
    global1 = array<vec2<i32>, 3>();
    var var_0 = func_2();
    global0 = array<bool, 28>();
    let var_1 = vec3<i32>(u_input.b, -2849i, _wgslsmith_add_i32(-59220i, -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.b.e.x, u_input.b, var_0.b.d.x), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.b.e.x, 1i, u_input.e, u_input.e), vec4<i32>(var_0.b.d.x, -43184i, var_0.b.d.x, -1i)))));
    global1 = array<vec2<i32>, 3>();
    return func_2().b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = Struct_2(~vec2<u32>(u_input.d.x, reverseBits(~u_input.d.x)), Struct_1(u_input.d.x, !func_1(607f, ~4294967295u), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -329f), 1285f, _wgslsmith_f_op_f32(trunc(-1756f))), var_0 >> (select(vec3<u32>(u_input.d.x, u_input.d.x, 4294967295u), u_input.d.zxy, select(vec3<bool>(false, true, global0[_wgslsmith_index_u32(15322u, 28u)]), vec3<bool>(global0[_wgslsmith_index_u32(253u, 28u)], global0[_wgslsmith_index_u32(u_input.d.x, 28u)], false), global0[_wgslsmith_index_u32(u_input.d.x, 28u)])) % vec3<u32>(32u)), vec2<i32>(var_0.x, u_input.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -291f) * _wgslsmith_f_op_f32(floor(745f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(943f * 1484f)))))), -545f, u_input.d.x);
    let var_2 = vec4<bool>(!(-1122f >= _wgslsmith_f_op_f32(-var_1.c)), all(!(!vec3<bool>(var_1.b.b.x, false, global0[_wgslsmith_index_u32(var_1.b.a, 28u)]))), true, true);
    var var_3 = 16247u;
    var var_4 = var_1.b.d;
    let x = u_input.a;
    s_output = StorageBuffer(~max(u_input.d.x, 4294967295u), _wgslsmith_dot_vec2_i32(~vec2<i32>(_wgslsmith_mult_i32(var_1.b.e.x, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, u_input.a.x), vec2<i32>(-27124i, var_4.x))), firstLeadingBit(vec2<i32>(var_0.x, _wgslsmith_sub_i32(-1i, 0i)))), 602f, _wgslsmith_f_op_f32(min(var_1.b.c.x, _wgslsmith_f_op_f32(step(var_1.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.d, 1028f))))))), var_1.b.d);
}

