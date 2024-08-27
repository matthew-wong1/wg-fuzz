struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: u32,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_3,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
    d: vec3<i32>,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(0u, 24583u, 0u, 14693u, 23620u, 0u, 1u, 0u, 0u, 0u, 9855u, 4294967295u, 7649u, 52038u, 27395u, 1u, 66270u, 19812u, 64561u, 17706u, 4294967295u, 0u, 0u, 0u);

var<private> global1: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec3<bool> {
    global1 = Struct_1(global1.a, vec4<u32>(abs(1u), firstLeadingBit(~27906u) << (global1.a % 32u), 23806u, 4294967295u));
    let var_0 = any(select(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), false), vec4<bool>(any(vec2<bool>(true, false)), true, true, all(vec3<bool>(true, true, true))), select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), ~20819u > ~global1.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-769f, -464f) * _wgslsmith_f_op_f32(step(330f, 383f))) < _wgslsmith_f_op_f32(-1139f - _wgslsmith_div_f32(321f, -346f))));
    global1 = Struct_1(global0[_wgslsmith_index_u32(14359u, 24u)] << (~global0[_wgslsmith_index_u32(59194u, 24u)] % 32u), vec4<u32>(~firstTrailingBit(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, global1.a, 4294967295u), 24u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global1.b.yww, u_input.a.wzx), 24u)], select(~1u, firstTrailingBit(0u), min(15698u, global1.b.x) <= (global1.a << (global1.a % 32u))), ~global1.a ^ 4294967295u));
    var var_1 = true;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1025f, -933f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -651f) + _wgslsmith_f_op_f32(236f * -2322f)))));
    return select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, true, true), vec3<bool>(var_0, select(false, countOneBits(16826u) != min(global1.a, global1.a), !all(vec2<bool>(false, false))), false));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1001f);
    global0 = array<u32, 24>();
    let var_1 = Struct_4(Struct_2(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true)), !func_3()), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(arg_0.a, 1u, 1u), arg_0.b.x), 0u), ~global1.b.x, arg_0, func_3()), Struct_2(!vec3<bool>(false, true, func_3().x), global0[_wgslsmith_index_u32(1u, 24u)], ~global1.b.x >> ((_wgslsmith_sub_u32(57741u, 19152u) ^ global0[_wgslsmith_index_u32(_wgslsmith_div_u32(37931u, u_input.a.x), 24u)]) % 32u), arg_0, func_3()), Struct_3(global0[_wgslsmith_index_u32(~(~0u), 24u)], vec3<bool>(all(vec2<bool>(true, true)), true, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1275f, 798f, 260f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-477f, -604f, 161f) * vec3<f32>(-1187f, 959f, -2577f))))))), Struct_1(select(global1.a, ~countOneBits(global1.b.x), false), vec4<u32>(1u, 1u, firstTrailingBit(global0[_wgslsmith_index_u32(~u_input.a.x, 24u)]), global1.b.x)));
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    return 35527u << (_wgslsmith_mult_u32(34581u, ~var_1.b.d.b.x) % 32u);
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    global1 = Struct_1(~(u_input.a.x >> (global1.a % 32u)), u_input.a);
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-138f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-2562f)), 1339f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2499f * -635f))), _wgslsmith_f_op_f32(-1f), 1f);
    var var_1 = Struct_1(func_2(Struct_1(~22144u | ~u_input.a.x, _wgslsmith_mult_vec4_u32(~vec4<u32>(global1.b.x, global1.a, global0[_wgslsmith_index_u32(global1.a, 24u)], u_input.a.x), select(vec4<u32>(global1.b.x, global0[_wgslsmith_index_u32(15352u, 24u)], 23008u, global1.b.x), global1.b, true)))), ~vec4<u32>(1u, global0[_wgslsmith_index_u32(4294967295u, 24u)], u_input.a.x, 1u));
    global1 = Struct_1(_wgslsmith_mult_u32(4294967295u, ~_wgslsmith_dot_vec3_u32(min(global1.b.wyw, vec3<u32>(0u, global1.a, 29112u)), vec3<u32>(18359u, var_1.b.x, 5368u))), _wgslsmith_div_vec4_u32(firstTrailingBit(u_input.a) | vec4<u32>(u_input.a.x, 0u, 15398u, max(global0[_wgslsmith_index_u32(var_1.a, 24u)], 114807u)), _wgslsmith_clamp_vec4_u32(~(~global1.b), ~vec4<u32>(global1.b.x, var_1.b.x, 12604u, global0[_wgslsmith_index_u32(global1.a, 24u)]), firstLeadingBit(reverseBits(vec4<u32>(17373u, 37716u, u_input.a.x, u_input.a.x))))));
    let var_2 = Struct_2(vec3<bool>(true, all(vec2<bool>(any(vec2<bool>(true, false)), arg_0.x | false)), arg_0.x), firstLeadingBit(~(global1.a | global1.a)), 81727u, Struct_1(_wgslsmith_div_u32(1u, u_input.a.x), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a, 1u, 1u, 73791u), _wgslsmith_sub_vec4_u32(global1.b, vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(0u, 24u)], global1.a, 29752u)))), !vec3<bool>(true, true, arg_0.x));
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 24>();
    global1 = func_1(vec3<bool>(false, true, any(vec4<bool>(true, select(true, false, false), true, true))));
    var var_0 = u_input.a.zzw;
    var var_1 = func_1(vec3<bool>(false, true, !all(vec2<bool>(true, true))));
    var var_2 = 0i;
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(317f))), _wgslsmith_f_op_f32(-1000f + 294f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-1070f, 615f, false)), 1218f, true))) - vec3<f32>(_wgslsmith_f_op_f32(-169f - _wgslsmith_f_op_f32(abs(-1000f))), -599f, _wgslsmith_f_op_f32(trunc(-101f))))));
    let x = u_input.a;
    s_output = StorageBuffer(-49099i);
}

