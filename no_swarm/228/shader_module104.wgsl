struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: Struct_3;

var<private> global2: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(59193u, 0u, 67113u, 1u), vec4<u32>(0u, 0u, 0u, 26351u), vec4<u32>(16353u, 4294967295u, 0u, 34845u), vec4<u32>(0u, 56939u, 22583u, 67014u), vec4<u32>(89874u, 49693u, 54611u, 25460u), vec4<u32>(29573u, 4294967295u, 1u, 1u), vec4<u32>(4294967295u, 5758u, 70207u, 12379u));

var<private> global3: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3) -> u32 {
    global1 = arg_1;
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(886f, arg_1.b.x, 383f, global1.b.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1660f, global1.b.x, arg_0.a))))) * vec4<f32>(global1.b.x, global1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1096f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a)))))));
    var var_1 = arg_0;
    let var_2 = arg_1;
    global3 = global1.a;
    return u_input.b.x;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: vec2<bool>) -> u32 {
    global1 = Struct_3(Struct_1(global1.a.a), global1.b);
    let var_0 = Struct_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global1.b.x)))), 7207u, arg_2);
    var var_1 = Struct_3(global1.a, vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.x + -2717f), var_0.a), _wgslsmith_f_op_f32(round(200f)))), var_0.a));
    let var_2 = Struct_3(Struct_1(~global1.a.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1121f, _wgslsmith_f_op_f32(trunc(-1714f))) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.a)), 1f)))));
    global1 = var_2;
    return _wgslsmith_mod_u32(u_input.c ^ 0u, min(u_input.c, reverseBits(~1u)));
}

fn func_1() -> Struct_2 {
    let var_0 = abs(_wgslsmith_div_i32(35274i, select(-20133i, 44507i, true)) >> (u_input.c % 32u)) | ~(-56584i);
    let var_1 = ~(~vec3<u32>(u_input.d, ~func_2(Struct_2(-712f, u_input.c, vec2<bool>(true, true)), Struct_3(global1.a, global1.b)), func_3(44689u, 46943i, vec2<bool>(true, false)) & min(u_input.b.x, u_input.c)));
    global2 = array<vec4<u32>, 7>();
    global0 = array<i32, 21>();
    var var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(var_1.x, ~(~var_1.x), var_1.x), var_1);
    return Struct_2(global1.b.x, 0u, !vec2<bool>(!all(vec4<bool>(true, false, false, false)), false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<i32, 21>();
    let var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a), -2080f), 26240u, vec2<bool>(any(!vec3<bool>(true, var_0.c.x, true)), var_0.c.x));
    global3 = global1.a;
    var var_2 = _wgslsmith_f_op_f32(ceil(1f));
    var var_3 = _wgslsmith_mod_vec2_i32(global1.a.a.zz, _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(global3.a.xz, _wgslsmith_sub_vec2_i32(abs(vec2<i32>(global1.a.a.x, 0i)), abs(global1.a.a.zx))), vec2<i32>(-1i, global0[_wgslsmith_index_u32(10064u, 21u)]) ^ vec2<i32>(global1.a.a.x, ~global1.a.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.b.x, 309f, 277f, var_1.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.x, 671f, 256f, global1.b.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, 376f, 268f, global1.b.x) - vec4<f32>(var_1.a, 410f, var_1.a, var_1.a))), select(vec4<bool>(var_0.c.x, var_1.c.x, var_0.c.x, true), vec4<bool>(var_1.c.x, false, true, true), !var_0.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, var_1.a, 373f) - vec4<f32>(-1446f, var_0.a, var_0.a, -154f))))), ~vec2<u32>(1u, _wgslsmith_sub_u32(1u, firstTrailingBit(var_1.b))), ~_wgslsmith_add_u32(61977u, ~var_0.b), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, u_input.c, var_0.b), vec3<u32>(u_input.b.x, u_input.d, var_1.b)) | ~abs(vec3<u32>(u_input.b.x, 14110u, u_input.b.x))));
}

