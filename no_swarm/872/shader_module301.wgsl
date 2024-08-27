struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<u32, 14>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec4<f32>, arg_3: bool) -> vec4<i32> {
    global0 = array<u32, 14>();
    let var_0 = Struct_1(select(vec2<bool>(true, false), !select(vec2<bool>(true, true), select(vec2<bool>(arg_3, arg_3), vec2<bool>(arg_3, false), vec2<bool>(arg_3, arg_3)), true), select(vec2<bool>(true, any(vec3<bool>(arg_3, arg_3, arg_3))), !(!vec2<bool>(arg_3, arg_3)), true)), _wgslsmith_f_op_f32(f32(-1f) * -768f));
    global0 = array<u32, 14>();
    let var_1 = vec4<i32>(arg_1, reverseBits(-2147483647i), -17067i, abs(arg_1));
    global0 = array<u32, 14>();
    return ~(_wgslsmith_mult_vec4_i32(~(~vec4<i32>(var_1.x, -47806i, 24987i, 2147483647i)), -(~var_1)) & countOneBits(vec4<i32>(var_1.x, arg_1, -arg_1, 1i)));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> vec4<i32> {
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    let var_0 = Struct_1(select(!arg_0.a, !arg_0.a, arg_1), arg_0.b);
    var var_1 = firstLeadingBit(~u_input.a);
    let var_2 = var_0;
    return _wgslsmith_mod_vec4_i32(select(-_wgslsmith_mod_vec4_i32(~vec4<i32>(1i, -1i, -2147483647i, -74370i), -vec4<i32>(31297i, 44574i, -2147483647i, 1i)), (vec4<i32>(1i, 1i, 1i, 1i) | func_3(var_2.b, -2147483647i, vec4<f32>(var_2.b, 1008f, arg_0.b, -755f), var_0.a.x)) << (~select(vec4<u32>(75024u, global0[_wgslsmith_index_u32(4294967295u, 14u)], 6309u, global0[_wgslsmith_index_u32(u_input.a, 14u)]), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 14u)], 14u)], 14u)], u_input.a, 40249u), vec4<bool>(arg_0.a.x, arg_0.a.x, var_2.a.x, arg_1)) % vec4<u32>(32u)), true), vec4<i32>(15242i, _wgslsmith_mult_i32(~(-1i) << (_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 14u)], 14u)], u_input.a) % 32u), firstLeadingBit(~(-1i))), 2147483647i, reverseBits(~max(-13375i, -2147483647i))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> vec3<u32> {
    global0 = array<u32, 14>();
    var var_0 = ~vec2<u32>(~0u, 61620u);
    let var_1 = func_2(Struct_1(vec2<bool>(!any(arg_0.a), arg_1), _wgslsmith_f_op_f32(-arg_0.b)), true);
    global0 = array<u32, 14>();
    let var_2 = arg_0;
    return ~vec3<u32>(var_0.x | (~u_input.a & u_input.a), global0[_wgslsmith_index_u32(~27895u, 14u)], 8136u);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec2<u32>) -> vec2<u32> {
    var var_0 = !(!select(!vec3<bool>(arg_1.a.x, arg_1.a.x, false), !(!vec3<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x)), vec3<bool>(arg_1.b > 1057f, arg_1.a.x || true, true)));
    var var_1 = max(max(abs(~u_input.a ^ (arg_0.x ^ arg_2.x)), firstTrailingBit(~(~7332u))), arg_2.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(-arg_1.b)))))));
    let var_3 = abs(_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(firstTrailingBit(-1i), -52749i), 1i), -2147483647i));
    let var_4 = select(!select(select(select(vec3<bool>(false, arg_1.a.x, arg_1.a.x), vec3<bool>(false, true, false), vec3<bool>(arg_1.a.x, false, true)), vec3<bool>(arg_1.a.x, false, false), select(vec3<bool>(true, true, false), vec3<bool>(var_0.x, true, var_0.x), true)), select(!vec3<bool>(var_0.x, arg_1.a.x, false), select(vec3<bool>(true, var_0.x, false), vec3<bool>(arg_1.a.x, false, arg_1.a.x), false), !vec3<bool>(var_0.x, true, var_0.x)), !vec3<bool>(var_0.x, arg_1.a.x, arg_1.a.x)), vec3<bool>(any(select(vec3<bool>(true, var_0.x, false), !vec3<bool>(false, arg_1.a.x, true), select(vec3<bool>(arg_1.a.x, var_0.x, false), vec3<bool>(false, var_0.x, arg_1.a.x), var_0.x))), true, any(select(var_0.xy, select(vec2<bool>(arg_1.a.x, true), arg_1.a, false), select(vec2<bool>(false, var_0.x), vec2<bool>(true, false), vec2<bool>(arg_1.a.x, arg_1.a.x))))), !(!select(select(vec3<bool>(arg_1.a.x, var_0.x, true), vec3<bool>(arg_1.a.x, arg_1.a.x, false), false), select(vec3<bool>(true, arg_1.a.x, false), vec3<bool>(true, var_0.x, arg_1.a.x), vec3<bool>(true, var_0.x, var_0.x)), false)));
    return ~abs(vec2<u32>(u_input.a, ~42739u));
}

fn func_5(arg_0: vec2<u32>) -> StorageBuffer {
    var var_0 = Struct_1(select(vec2<bool>(true, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(2147483647i, 0i)) == 6511i), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, true)), true))), 1151f);
    var var_1 = vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x & true);
    global0 = array<u32, 14>();
    let var_2 = Struct_1(select(select(vec2<bool>(false, !var_0.a.x), vec2<bool>(false, true), var_0.a), vec2<bool>(var_0.a.x && var_0.a.x, (1u >> (arg_0.x % 32u)) <= u_input.a), !select(vec2<bool>(var_0.a.x, true), vec2<bool>(var_1.x, true), var_0.a.x)), _wgslsmith_div_f32(-843f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b, var_0.b)))));
    var var_3 = var_2;
    return StorageBuffer(_wgslsmith_add_i32(_wgslsmith_mult_i32(min(~(-2147483647i), func_3(-702f, 80264i, vec4<f32>(var_2.b, var_0.b, 1000f, 714f), var_0.a.x).x), _wgslsmith_sub_i32(firstTrailingBit(0i), ~40870i)), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(func_4(_wgslsmith_mult_vec3_u32(~func_1(Struct_1(vec2<bool>(true, false), -150f), true, false), ~(~vec3<u32>(u_input.a, u_input.a, global0[_wgslsmith_index_u32(26825u, 14u)]))), Struct_1(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), true), vec2<bool>(true, true)), _wgslsmith_f_op_f32(abs(-481f))), ~reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(22090u, global0[_wgslsmith_index_u32(u_input.a, 14u)]), vec2<u32>(9997u, 87506u)))));
}

