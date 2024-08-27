struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: array<Struct_4, 13>;

var<private> global2: array<vec3<u32>, 21>;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

var<private> global4: array<i32, 12>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    global4 = array<i32, 12>();
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(313f, 1104f), vec2<f32>(-2185f, 1391f)))))) + vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1266f - -1828f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(742f)), _wgslsmith_f_op_f32(round(-1000f)), true)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(653f, _wgslsmith_f_op_f32(f32(-1f) * -1774f))))));
    let var_1 = global1[_wgslsmith_index_u32(22701u, 13u)];
    var var_2 = var_1.a.c;
    global4 = array<i32, 12>();
    return !(!vec2<bool>(~var_1.a.d >= ~var_1.a.e.a.x, false));
}

fn func_2(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    global1 = array<Struct_4, 13>();
    var var_0 = arg_0;
    var var_1 = select(!select(!vec2<bool>(global3.x, var_0.a), !select(vec2<bool>(true, false), vec2<bool>(arg_0.a, arg_0.a), false), !var_0.a), select(select(select(vec2<bool>(arg_0.a, global3.x), !vec2<bool>(var_0.a, var_0.a), select(vec2<bool>(arg_0.a, true), vec2<bool>(global3.x, global3.x), false)), func_3(), select(func_3(), select(vec2<bool>(false, global3.x), vec2<bool>(arg_1, var_0.a), vec2<bool>(global3.x, var_0.a)), !vec2<bool>(true, arg_1))), !(!(!vec2<bool>(arg_1, arg_1))), false), all(!func_3()));
    var var_2 = global1[_wgslsmith_index_u32(~firstTrailingBit(max(~_wgslsmith_add_u32(86761u, 1u), 62927u)), 13u)];
    global1 = array<Struct_4, 13>();
    return var_2.a.e;
}

fn func_1(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = func_2(Struct_2(true), !global3.x | (all(vec3<bool>(global3.x, true, global3.x)) && all(arg_2)));
    global2 = array<vec3<u32>, 21>();
    var var_1 = _wgslsmith_f_op_f32(abs(arg_0));
    return Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(0u, var_0.a.x, var_0.a.x, 4294967295u)), var_0.a) | var_0.a, var_0.a));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_5) -> Struct_5 {
    global2 = array<vec3<u32>, 21>();
    global4 = array<i32, 12>();
    let var_0 = !(!vec3<bool>(any(select(vec3<bool>(true, false, false), vec3<bool>(global3.x, global3.x, true), global3.x)), select(global3.x, arg_1 && false, true), all(select(vec2<bool>(arg_1, true), vec2<bool>(true, false), vec2<bool>(true, arg_2.b.a.b)))));
    var var_1 = vec3<u32>(1u, 1u, 51302u);
    global0 = array<i32, 1>();
    return Struct_5(select(~(~0u), ~_wgslsmith_div_u32(1u, 36700u), (arg_0.a.x <= 1989u) & all(vec4<bool>(arg_2.b.a.b, arg_2.b.a.b, false, var_0.x))) ^ 0u, Struct_4(Struct_3(arg_2.b.a.a, var_0.x, _wgslsmith_f_op_f32(step(arg_2.b.a.c, _wgslsmith_f_op_f32(step(-325f, arg_2.b.a.c)))), 21110u, Struct_1(vec4<u32>(0u, 92352u, 1u, arg_0.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c)))), true);
}

fn func_5(arg_0: f32, arg_1: Struct_5) -> StorageBuffer {
    global3 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -980f) + _wgslsmith_div_f32(911f, -564f))) == arg_0, !(!(abs(u_input.a.x) != global0[_wgslsmith_index_u32(0u, 1u)])));
    global2 = array<vec3<u32>, 21>();
    var var_0 = arg_1.b.a;
    global0 = array<i32, 1>();
    let var_1 = func_4(arg_1.b.a.e, true, arg_1).b;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-331f, -745f, 318f, 120f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(442f, -1284f, arg_0, arg_1.c)))), !(!vec4<bool>(global3.x, global3.x, false, arg_1.b.a.a.a))))), u_input.a, ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(31811u, 1u, 0u), _wgslsmith_sub_vec3_u32(var_0.e.a.xyy, arg_1.b.a.e.a.yzz))), _wgslsmith_mult_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(firstTrailingBit(arg_1.b.a.d), 1u)], -12465i, u_input.a.x, abs(u_input.a.x)), vec4<i32>(~global0[_wgslsmith_index_u32(100296u, 1u)], ~global0[_wgslsmith_index_u32(arg_1.a ^ var_1.a.d, 1u)], abs(global0[_wgslsmith_index_u32(arg_1.b.a.e.a.x, 1u)]) ^ global4[_wgslsmith_index_u32(var_1.a.d | arg_1.b.a.d, 12u)], global0[_wgslsmith_index_u32(countOneBits(83698u), 1u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 1>();
    let x = u_input.a;
    s_output = func_5(-983f, func_4(func_1(_wgslsmith_f_op_f32(step(-1024f, _wgslsmith_div_f32(-1000f, 248f))), vec2<f32>(_wgslsmith_f_op_f32(2686f + 632f), _wgslsmith_f_op_f32(886f * -1586f)), !vec4<bool>(false, global3.x, global3.x, false)), global3.x, Struct_5(reverseBits(1u), Struct_4(Struct_3(Struct_2(false), global3.x, 692f, 58772u, Struct_1(vec4<u32>(0u, 10561u, 4294967295u, 33657u)))), _wgslsmith_div_f32(-867f, 135f), !any(vec3<bool>(false, true, global3.x)))));
}

