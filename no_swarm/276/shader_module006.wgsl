struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(4294967295u, 1u, 37451u));

var<private> global1: vec3<bool>;

var<private> global2: Struct_3;

var<private> global3: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(128f, -1026f), vec2<f32>(-106f, -1467f), vec2<f32>(1436f, 476f), vec2<f32>(1369f, -1789f), vec2<f32>(1028f, -769f), vec2<f32>(309f, -161f), vec2<f32>(-1835f, 701f));

var<private> global4: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: u32) -> f32 {
    let var_0 = arg_1;
    global2 = Struct_3(global2.a, ~vec3<u32>(~(~0u), ~countOneBits(7072u), 0u));
    let var_1 = -670f;
    global2 = Struct_3(~(~(vec4<u32>(1u, arg_1.a.x, var_0.a.x, 96453u) << (select(vec4<u32>(18049u, global0.a.x, 85408u, arg_2), global2.a, false) % vec4<u32>(32u)))), vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, global0.a.x, 9893u, 28587u), vec4<u32>(1945u, 4488u, global0.a.x, global0.a.x) ^ vec4<u32>(global2.b.x, 53196u, arg_2, 40313u))), ~0u, global2.a.x | 0u));
    var var_2 = 1u;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) * _wgslsmith_div_f32(var_1, var_1))));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(691f + _wgslsmith_f_op_f32(2092f - _wgslsmith_f_op_f32(func_2(global1.yy, arg_0, 57162u))));
    var var_1 = u_input.c.x;
    let var_2 = -171f;
    global4 = array<vec4<bool>, 11>();
    let var_3 = _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(-var_2));
    return Struct_2(global2.b);
}

fn func_3() -> Struct_2 {
    global2 = Struct_3(vec4<u32>(reverseBits(17027u), ~firstLeadingBit(~global2.a.x), _wgslsmith_div_u32(~global0.a.x, ~4294967295u ^ ~global2.a.x), reverseBits(89105u)), global2.a.wwx);
    return func_1(func_1(func_1(Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(22207u, 4294967295u, global2.a.x), global2.b)), all(select(global1.zy, global1.zx, false))), global1.x), global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -305f));
    let var_1 = ~firstTrailingBit(_wgslsmith_div_u32(1u, 45924u >> (~4294967295u % 32u)));
    global0 = func_1(Struct_2(global0.a), all(select(global1.zx, global1.yy, vec2<bool>(true, !global1.x))));
    global0 = func_3();
    let var_2 = vec4<u32>(~(~(~(u_input.a ^ global2.b.x))), _wgslsmith_sub_u32(abs(4294967295u), countOneBits(39449u)), ~max(4294967295u, ~(~0u)), ~1u);
    global4 = array<vec4<bool>, 11>();
    let var_3 = Struct_1(13694u, global1.x);
    let var_4 = Struct_3(~min(~(~vec4<u32>(var_2.x, 4294967295u, 1u, 71987u)), var_2 >> (vec4<u32>(57518u, u_input.a, 4294967295u, 44166u) % vec4<u32>(32u))), _wgslsmith_sub_vec3_u32((global2.b | vec3<u32>(495u, u_input.a, var_1)) | ~global2.a.xxz, abs(~var_2.yzy)));
    let var_5 = func_1(func_3(), !(!any(!global4[_wgslsmith_index_u32(u_input.a, 11u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_sub_i32(0i, -min(u_input.c.x, 2147483647i)), abs(2147483647i), -_wgslsmith_sub_i32(4645i, 1i) | max(u_input.b | 5069i, -21697i), 20529i));
}

