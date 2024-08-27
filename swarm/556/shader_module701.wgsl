struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<f32, 6>;

var<private> global2: f32 = 785f;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> u32 {
    global0 = array<Struct_1, 19>();
    global2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.c.a.x * 2366f), global1[_wgslsmith_index_u32(1u, 6u)], all(vec4<bool>(arg_0.b.x, false, true, arg_2.c.b.x)))))), -1175f), arg_0.a.x, true));
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    global1 = array<f32, 6>();
    return arg_1;
}

fn func_2() -> i32 {
    global1 = array<f32, 6>();
    global0 = array<Struct_1, 19>();
    let var_0 = -select((0i | u_input.b) >> (func_3(Struct_1(vec4<f32>(1139f, global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], 945f), vec2<bool>(false, true), vec2<f32>(-183f, global1[_wgslsmith_index_u32(25947u, 6u)])), 105642u, Struct_2(vec2<f32>(-388f, global1[_wgslsmith_index_u32(29219u, 6u)]), vec3<f32>(197f, -1093f, global1[_wgslsmith_index_u32(5875u, 6u)]), Struct_1(vec4<f32>(-1196f, 510f, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)]), vec2<bool>(false, false), vec2<f32>(-174f, 203f)))) % 32u), u_input.b, false);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 6u)] * global1[_wgslsmith_index_u32(74870u, 6u)]) - _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)]))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.a.x, 6u)]))) * global1[_wgslsmith_index_u32(u_input.a.x, 6u)]))));
    var var_2 = Struct_4(Struct_3(~firstTrailingBit(u_input.b), Struct_1(vec4<f32>(1274f, global1[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_f_op_f32(1421f + 1256f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 6u)] - -115f)), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(63710u, 6u)], 957f))), vec2<f32>(698f, global1[_wgslsmith_index_u32(u_input.a.x, 6u)])))), _wgslsmith_clamp_vec3_u32(reverseBits(~vec3<u32>(28533u, 9784u, 0u)), ~abs(vec3<u32>(u_input.a.x, 0u, 1u)), firstLeadingBit(countOneBits(vec3<u32>(32047u, 0u, 21790u))))), 2147483647i, global0[_wgslsmith_index_u32(0u, 19u)]);
    return 2147483647i;
}

fn func_1(arg_0: vec2<f32>) -> bool {
    global1 = array<f32, 6>();
    global0 = array<Struct_1, 19>();
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(850f)))), global1[_wgslsmith_index_u32(~(~0u), 6u)]));
    let var_1 = vec3<i32>(-func_2(), _wgslsmith_mult_i32(~0i, abs(u_input.b)) & -1i, u_input.b);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-989f + 2459f) * _wgslsmith_f_op_f32(-226f + 200f)))))) <= _wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(0u, 6u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    global0 = array<Struct_1, 19>();
    global2 = -506f;
    let var_1 = vec2<bool>(false, any(vec4<bool>(!all(vec3<bool>(true, true, false)), any(vec2<bool>(true, true)), all(vec2<bool>(false, true)) || func_1(vec2<f32>(-389f, -1069f)), false)));
    global0 = array<Struct_1, 19>();
    global2 = _wgslsmith_f_op_f32(1118f * -136f);
    let var_2 = Struct_4(Struct_3(min(~(-1i), u_input.b), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(select(-379f, global1[_wgslsmith_index_u32(u_input.a.x, 6u)], var_1.x)), _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)])), -606f, _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.a.x, 6u)]))), vec2<bool>(var_1.x, var_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1061f, 833f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(40357u, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)])))), _wgslsmith_add_vec3_u32(vec3<u32>(32679u, 8013u, u_input.a.x) & vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(27171u, 0u, u_input.a.x) ^ vec3<u32>(1u, 4294967295u, 0u)) << (vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, 1u), ~0u, ~u_input.a.x) % vec3<u32>(32u))), 1i, Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(533f, global1[_wgslsmith_index_u32(54466u, 6u)], global1[_wgslsmith_index_u32(u_input.a.x, 6u)], 1010f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-767f, global1[_wgslsmith_index_u32(1u, 6u)], 1111f, 1000f))))), !select(select(vec2<bool>(var_1.x, var_1.x), var_1, vec2<bool>(false, false)), vec2<bool>(false, true), select(var_1, var_1, vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 6u)], _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(1u, 6u)], 1000f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.a.c, ~firstTrailingBit(countOneBits(vec2<u32>(u_input.a.x, 0u))), var_2.a.c.yx);
}

