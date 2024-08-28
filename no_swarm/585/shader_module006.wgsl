struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-738f, 1226f, -1000f, -463f), vec4<f32>(-397f, -689f, 682f, -474f), vec4<f32>(969f, 479f, -1078f, -289f), vec4<f32>(-477f, 1000f, -460f, 2176f), vec4<f32>(-245f, 1353f, 1000f, -995f), vec4<f32>(-583f, -1605f, 1424f, 2038f), vec4<f32>(788f, 831f, 1510f, -556f), vec4<f32>(1078f, 554f, 463f, 458f), vec4<f32>(118f, 1108f, -1158f, 667f), vec4<f32>(3203f, -1357f, 949f, 1155f), vec4<f32>(-165f, -587f, 102f, -997f), vec4<f32>(-1121f, 440f, -1470f, -1150f), vec4<f32>(1394f, -1182f, -421f, -1433f), vec4<f32>(1597f, -512f, 1241f, -1367f), vec4<f32>(-457f, 106f, -1000f, 1614f));

var<private> global1: f32;

var<private> global2: array<vec4<u32>, 30> = array<vec4<u32>, 30>(vec4<u32>(41496u, 4294967295u, 0u, 1u), vec4<u32>(1u, 4294967295u, 49441u, 22192u), vec4<u32>(56521u, 32456u, 4294967295u, 25866u), vec4<u32>(4647u, 52329u, 4294967295u, 1u), vec4<u32>(0u, 1u, 1u, 0u), vec4<u32>(1u, 64532u, 47125u, 1u), vec4<u32>(0u, 1u, 17063u, 4294967295u), vec4<u32>(1u, 35290u, 0u, 73718u), vec4<u32>(0u, 52098u, 70450u, 80926u), vec4<u32>(0u, 0u, 55766u, 94463u), vec4<u32>(2063u, 56417u, 53117u, 1u), vec4<u32>(0u, 1u, 106684u, 76516u), vec4<u32>(1u, 91183u, 1u, 4294967295u), vec4<u32>(61730u, 1u, 46459u, 79249u), vec4<u32>(64663u, 0u, 1u, 4294967295u), vec4<u32>(4294967295u, 0u, 4294967295u, 0u), vec4<u32>(83281u, 74529u, 137660u, 12389u), vec4<u32>(4294967295u, 6132u, 27363u, 38324u), vec4<u32>(41736u, 28215u, 100617u, 0u), vec4<u32>(77246u, 101730u, 1u, 14399u), vec4<u32>(10047u, 1u, 32643u, 4294967295u), vec4<u32>(0u, 34280u, 3578u, 0u), vec4<u32>(1u, 4294967295u, 1u, 42720u), vec4<u32>(27297u, 0u, 45902u, 56409u), vec4<u32>(1u, 1u, 9601u, 6202u), vec4<u32>(0u, 14394u, 4294967295u, 0u), vec4<u32>(1u, 7474u, 100638u, 1u), vec4<u32>(30942u, 41538u, 4294967295u, 0u), vec4<u32>(42703u, 0u, 62672u, 26521u), vec4<u32>(1u, 23625u, 18347u, 18746u));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_mod_u32(0u ^ firstTrailingBit(1u), u_input.a);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-764f + _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(729f - arg_0.x) * arg_0.x))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -746f))))) + _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(-1000f - var_1.a)));
    global0 = array<vec4<f32>, 15>();
    return Struct_2(u_input.b, true);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(~1u, 15u)] - vec4<f32>(arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.a)), 1000f, arg_3.a)));
    var var_1 = vec4<bool>(true, false, !(!(!all(arg_0.wx))), false);
    global2 = array<vec4<u32>, 30>();
    var var_2 = arg_3;
    var_1 = vec4<bool>(all(arg_0.yz), any(vec2<bool>(u_input.a < ~26932u, var_0.b && arg_1.b)), !(!(_wgslsmith_f_op_f32(-var_2.a) >= _wgslsmith_f_op_f32(-arg_3.a))), var_1.x);
    return ~min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(abs(20497u), ~u_input.a)) | _wgslsmith_mult_vec2_u32(~select(vec2<u32>(4294967295u, u_input.a), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(3522u, u_input.a)), !var_1.zz), ~countOneBits(vec2<u32>(41508u, 1u)) << (~vec2<u32>(1u, u_input.a) % vec2<u32>(32u)));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1234f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-535f)) + -835f));
    var var_1 = Struct_2(reverseBits(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -1i, u_input.d, u_input.b), vec4<i32>(1i, u_input.d, u_input.c.x, 1i))), false);
    var var_2 = vec4<u32>(~_wgslsmith_mult_u32(~u_input.a, u_input.a), countOneBits(u_input.a), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(u_input.a, u_input.a)), countOneBits(func_3(!vec4<bool>(var_1.b, var_1.b, false, var_1.b), func_2(global0[_wgslsmith_index_u32(u_input.a, 15u)]), vec4<i32>(-5468i, u_input.b, 0i, u_input.b), Struct_1(2005f)))), u_input.a);
    let var_3 = !all(select(!select(vec3<bool>(var_1.b, true, false), vec3<bool>(var_1.b, var_1.b, var_1.b), var_1.b), vec3<bool>(any(vec4<bool>(var_1.b, var_1.b, false, var_1.b)), false, true), var_1.b));
    global1 = -702f;
    return func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(4294967295u, 15u)] - global0[_wgslsmith_index_u32(4294967295u, 15u)]) + vec4<f32>(-1367f, -1281f, -689f, var_0)) + global0[_wgslsmith_index_u32(max(1u, var_2.x) & (4294967295u >> (var_2.x % 32u)), 15u)]) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.a, 15u)]))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, 1000f, var_0) - global0[_wgslsmith_index_u32(var_2.x, 15u)])))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global2 = array<vec4<u32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~(~(u_input.a >> (u_input.a % 32u))), 520u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -452f) - _wgslsmith_f_op_f32(step(1264f, 1991f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(340f + 1001f) * _wgslsmith_f_op_f32(-679f + 217f)))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(127f + 122f)), 1158f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1011f * -169f)), 1f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-310f)))), _wgslsmith_f_op_f32(sign(677f))), firstLeadingBit(~vec3<i32>(var_0.a, 5336i >> (u_input.a % 32u), -1i)));
}

