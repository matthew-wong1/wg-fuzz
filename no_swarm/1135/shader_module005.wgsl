struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: Struct_2 = Struct_2(false, Struct_1(vec3<f32>(-1513f, 203f, -184f), 531f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> Struct_2 {
    global0 = array<i32, 2>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-237f, global1.b.b, _wgslsmith_f_op_f32(ceil(270f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.b, global1.b.a.x, global1.b.b) * _wgslsmith_f_op_vec3_f32(global1.b.a * vec3<f32>(-1346f, 219f, -455f))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1986f, -1943f, -1000f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b.a + global1.b.a) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.b, global1.b.b, 1066f) + var_0)))), global1.b.a.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-994f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(198f)))));
    var var_3 = ~vec4<u32>(7007u, 1u, 12137u, ~1u);
    return Struct_2(false, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_1.b - var_0.x), _wgslsmith_f_op_f32(abs(var_2.x)), global1.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(783f + -1799f))));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    let var_0 = reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(37433u, _wgslsmith_mod_u32(abs(4294967295u), 20966u), 1u, ~select(1u, 1u, arg_0)), vec4<u32>(1u, 1u, 1u, 1u)));
    let var_1 = select(_wgslsmith_div_u32(abs(min(var_0.x, ~var_0.x)), 1u), ~_wgslsmith_mod_u32(9586u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(1u, var_0.x), select(var_0.x, var_0.x, global1.a))), false);
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_clamp_i32(select(-global0[_wgslsmith_index_u32(var_0.x, 2u)] >> (select(var_0.x, var_0.x, arg_0) % 32u), reverseBits(~23891i), any(vec3<bool>(global1.a, global1.a, arg_0))), -1i, abs(-1i) & -global0[_wgslsmith_index_u32(countOneBits(33105u), 2u)]), ~global0[_wgslsmith_index_u32(abs(var_1), 2u)]);
    var var_3 = max(min(u_input.a.x, ~(-1i)) & -_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, global0[_wgslsmith_index_u32(var_0.x, 2u)], -1i, u_input.a.x), vec4<i32>(global0[_wgslsmith_index_u32(0u, 2u)], global0[_wgslsmith_index_u32(49889u, 2u)], 0i, global0[_wgslsmith_index_u32(var_1, 2u)])), ~(~(-4016i)));
    var_3 = ~firstLeadingBit((_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(1u, 2u)], -2147483647i) | countOneBits(3562i)) ^ (global0[_wgslsmith_index_u32(var_0.x, 2u)] ^ firstTrailingBit(23289i)));
    return !(!select(true, true, arg_0));
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: bool) -> bool {
    global1 = Struct_2(all(!(!select(vec2<bool>(arg_1, true), vec2<bool>(false, arg_1), arg_2))), func_2().b);
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-global1.b.a.x), -518f, 1447f, _wgslsmith_f_op_f32(-996f + -383f))))));
    global0 = array<i32, 2>();
    let var_1 = _wgslsmith_div_vec3_u32(~vec3<u32>(firstLeadingBit(countOneBits(4594u)), min(~23914u, 111851u), ~abs(1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_div_u32(select(83367u, 0u, false), 1u), firstTrailingBit(73946u), firstLeadingBit(1u)), vec3<u32>(~558u, ~41193u, ~34660u) >> (~select(vec3<u32>(63226u, 42287u, 24878u), vec3<u32>(0u, 29212u, 0u), true) % vec3<u32>(32u)), select(~vec3<u32>(1u, 67340u, 13085u), ~min(vec3<u32>(32427u, 4294967295u, 0u), vec3<u32>(24303u, 1u, 39948u)), false)));
    var var_2 = func_2();
    return true;
}

fn func_1(arg_0: Struct_2) -> bool {
    global1 = Struct_2(global1.a, Struct_1(global1.b.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b.a.x))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1510f, arg_0.b.a.x))))));
    var var_0 = arg_0;
    var var_1 = func_2();
    var var_2 = var_1.b;
    let var_3 = vec2<bool>(arg_0.a, true);
    return func_4(u_input.a.x, any(vec4<bool>(select(global1.a, !var_3.x, func_3(var_1.a, var_1.b)), false, _wgslsmith_f_op_f32(-arg_0.b.b) == var_0.b.a.x, false)), global0[_wgslsmith_index_u32(24146u, 2u)] <= u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(func_1(Struct_2(global1.a, global1.b)), global1.b);
    global0 = array<i32, 2>();
    let var_0 = Struct_2(global1.a, func_2().b);
    let var_1 = firstTrailingBit(u_input.a.yy);
    global1 = var_0;
    var var_2 = func_1(func_2());
    global1 = var_0;
    var var_3 = reverseBits(vec4<u32>(~0u, 0u, ~countOneBits(63871u >> (0u % 32u)), ~1u));
    let var_4 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(-740f, abs(max(global0[_wgslsmith_index_u32(var_3.x, 2u)], var_1.x)), ~(~firstTrailingBit(max(var_3.x, 4294967295u))));
}

