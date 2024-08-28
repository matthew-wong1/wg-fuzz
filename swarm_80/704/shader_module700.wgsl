struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: u32;

var<private> global2: Struct_1;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<u32>) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_mod_u32(u_input.b.x, reverseBits(countOneBits(0u))));
    var var_1 = select(vec4<i32>(firstTrailingBit(~_wgslsmith_sub_i32(u_input.d, arg_1)), u_input.e, reverseBits(u_input.c), u_input.c >> (_wgslsmith_clamp_u32(~70339u, min(arg_2.x, arg_0.a), arg_0.a) % 32u)), (max(-vec4<i32>(21406i, 21000i, arg_1, u_input.c), ~vec4<i32>(arg_1, -13024i, 0i, u_input.c)) & _wgslsmith_mod_vec4_i32(vec4<i32>(35718i, 1i, 1i, u_input.c), vec4<i32>(-1i, u_input.d, 7064i, 0i))) << (firstLeadingBit(select(~arg_2, vec4<u32>(0u, 0u, 1u, 35191u), all(vec4<bool>(false, false, false, true)))) % vec4<u32>(32u)), all(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true)), vec4<bool>(all(vec4<bool>(false, true, true, false)), true, true, true), vec4<bool>(true, true, true, true))));
    var var_2 = arg_0;
    var var_3 = ~(~4294967295u);
    let var_4 = vec3<bool>(true, !select(select(true, true, true), true, all(vec3<bool>(true, true, true))), !any(vec4<bool>(true, true, true, all(vec2<bool>(false, true)))));
    return var_4;
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = !vec3<bool>(false, any(!func_3(global0[_wgslsmith_index_u32(26081u, 22u)], -1i, vec4<u32>(0u, global2.a, 85008u, global2.a))), !func_3(Struct_1(0u), reverseBits(u_input.d), vec4<u32>(14204u, u_input.b.x, 0u, 16200u)).x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -956f));
    let var_2 = var_0.xz;
    let var_3 = _wgslsmith_f_op_f32(trunc(-1256f));
    global0 = array<Struct_1, 22>();
    return u_input.b.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = -1i;
    let var_1 = Struct_1(global2.a);
    let var_2 = 648f;
    var var_3 = var_0;
    global1 = _wgslsmith_mult_u32(14672u, global2.a);
    return StorageBuffer(((_wgslsmith_div_i32(u_input.c, u_input.a) >> (59770u % 32u)) | (u_input.d << (min(arg_1.a, 27473u) % 32u))) ^ u_input.a, vec2<i32>(1i, -1674i), _wgslsmith_div_u32(56567u, _wgslsmith_mult_u32(firstTrailingBit(arg_2.a), firstTrailingBit(arg_2.a))) | func_2(!any(vec2<bool>(false, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 22>();
    let x = u_input.a;
    s_output = func_1(Struct_1(_wgslsmith_mult_u32(select(u_input.b.x, ~global2.a, select(false, false, true)), ~73431u)), global0[_wgslsmith_index_u32(global2.a, 22u)], global0[_wgslsmith_index_u32(27445u, 22u)]);
}

