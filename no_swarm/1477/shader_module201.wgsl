struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = var_0;
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(arg_2, (vec3<u32>(1u, 32001u, 4294967295u) << (~arg_2 % vec3<u32>(32u))) & firstTrailingBit(arg_2 ^ arg_2)), ~vec3<u32>((u_input.b.x >> (arg_2.x % 32u)) << (61457u % 32u), u_input.a, arg_2.x)), 3u)];
    var var_3 = Struct_1(var_2.a);
    var_3 = Struct_1(true);
    return var_0;
}

fn func_3() -> u32 {
    let var_0 = Struct_1(false | (all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false))) | !func_1(false, global0[_wgslsmith_index_u32(0u, 3u)], vec3<u32>(41849u, 0u, 15385u)).a));
    var var_1 = !(!(!select(!vec2<bool>(var_0.a, false), !vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, true))));
    var var_2 = ~(-24376i);
    var var_3 = func_1(true, Struct_1(false), vec3<u32>(firstLeadingBit(firstLeadingBit(abs(4294967295u))), _wgslsmith_sub_u32(u_input.a, 1u), ~(u_input.a >> (u_input.a % 32u)) | (~4294967295u << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), u_input.b) % 32u))));
    let var_4 = (~(vec3<i32>(-45987i, -31174i, -53006i) << (vec3<u32>(100960u, 1u, u_input.b.x) % vec3<u32>(32u))) & select(vec3<i32>(1i, 1i, 1i) << (vec3<u32>(u_input.b.x, 1u, u_input.a) % vec3<u32>(32u)), ~(~vec3<i32>(-1i, -2147483647i, 2147483647i)), !vec3<bool>(false, var_0.a, true))) << (select(~vec3<u32>(56659u, u_input.b.x, ~4294967295u), vec3<u32>(u_input.b.x, 5214u, _wgslsmith_add_u32(u_input.b.x << (1u % 32u), u_input.b.x)), !(!select(vec3<bool>(var_0.a, true, var_1.x), vec3<bool>(var_3.a, var_0.a, false), vec3<bool>(var_0.a, false, var_0.a)))) % vec3<u32>(32u));
    return 14273u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> bool {
    let var_0 = u_input.b.x;
    global0 = array<Struct_1, 3>();
    var var_1 = func_3() | (~4294967295u & min(_wgslsmith_mod_u32(var_0, u_input.a), _wgslsmith_mod_u32(25734u, _wgslsmith_dot_vec4_u32(vec4<u32>(41809u, u_input.a, var_0, var_0), vec4<u32>(u_input.a, u_input.a, 1u, u_input.b.x)))));
    var_1 = _wgslsmith_add_u32(~func_3(), _wgslsmith_mod_u32(firstTrailingBit(~(~u_input.b.x)), ~u_input.b.x));
    let var_2 = max(vec2<u32>(reverseBits(2538u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(func_3(), var_0, ~60358u), u_input.a)), u_input.b);
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(1u, ~firstTrailingBit(u_input.a));
    var var_1 = vec4<bool>(false, any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), true)) | false, true, !(all(vec2<bool>(true, true)) && true) || func_2(global0[_wgslsmith_index_u32(u_input.a & 4294967295u, 3u)], func_1(select(true, false, true), Struct_1(true), vec3<u32>(45380u, u_input.b.x, var_0)), func_1(true, global0[_wgslsmith_index_u32(0u, 3u)], ~vec3<u32>(var_0, var_0, u_input.a)), _wgslsmith_mult_i32(~(-14663i), 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-522f + _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-140f, 379f), _wgslsmith_f_op_f32(round(-545f)), false))), 243f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-551f * -268f), -475f, var_1.x))))), vec4<i32>(1i, 1i, 1i, 1i), max(_wgslsmith_dot_vec3_u32(vec3<u32>(~22755u, ~var_0, _wgslsmith_add_u32(426u, 0u)), (vec3<u32>(24296u, 4294967295u, 0u) & vec3<u32>(var_0, 36603u, var_0)) << (vec3<u32>(107882u, 1u, 15482u) % vec3<u32>(32u))), u_input.a), 34186i);
}

