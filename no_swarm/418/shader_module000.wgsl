struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(-476f, Struct_1(true), Struct_1(true), 1i), Struct_2(868f, Struct_1(false), Struct_1(true), 10203i), Struct_2(-506f, Struct_1(true), Struct_1(true), 0i), Struct_2(-791f, Struct_1(true), Struct_1(false), 5119i));

var<private> global1: vec4<i32> = vec4<i32>(-5538i, i32(-2147483648), -4981i, -30160i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> u32 {
    global0 = array<Struct_2, 4>();
    let var_0 = global0[_wgslsmith_index_u32(~(~u_input.a.x), 4u)];
    global0 = array<Struct_2, 4>();
    var var_1 = true;
    var var_2 = firstLeadingBit(max(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, abs(54657u), u_input.a.x, u_input.a.x), firstLeadingBit(vec4<u32>(41739u, 4294967295u, u_input.a.x, 0u))), vec4<u32>(u_input.a.x, ~21228u, ~(61039u ^ u_input.a.x), u_input.a.x)));
    return select(abs(_wgslsmith_sub_u32(~u_input.a.x, ~u_input.a.x)) & select(var_2.x, u_input.a.x, var_0.c.a), reverseBits(u_input.a.x), true);
}

fn func_2(arg_0: vec4<f32>, arg_1: bool, arg_2: bool) -> bool {
    var var_0 = ~vec2<u32>(~countOneBits(func_3()), abs(31347u));
    var var_1 = global0[_wgslsmith_index_u32(var_0.x, 4u)];
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * var_1.a)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-737f)) * -738f), var_2, _wgslsmith_f_op_f32(ceil(959f)), var_1.a)));
    return true;
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = false && select(arg_1.a, any(select(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, false), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), arg_1.a)) | !(!arg_1.a), func_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_div_vec4_f32(vec4<f32>(559f, 396f, 3001f, -147f), vec4<f32>(755f, 1388f, 344f, 1000f)))), all(select(vec3<bool>(arg_1.a, true, true), vec3<bool>(true, arg_1.a, arg_1.a), vec3<bool>(arg_1.a, true, true))), any(vec3<bool>(false, true, arg_1.a))));
    return select(u_input.c, ~u_input.c, var_0 || (true && var_0));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 4>();
    global1 = _wgslsmith_mult_vec4_i32(-(-(u_input.c & u_input.c) | _wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(-35942i, 3434i, 16058i, 18374i))), ~_wgslsmith_mod_vec4_i32((vec4<i32>(global1.x, global1.x, -1i, global1.x) >> (vec4<u32>(0u, 4294967295u, u_input.a.x, 36922u) % vec4<u32>(32u))) >> ((vec4<u32>(40113u, 28442u, 41335u, u_input.a.x) >> (vec4<u32>(1u, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), u_input.c));
    global0 = array<Struct_2, 4>();
    global1 = vec4<i32>(-(1i << (u_input.a.x % 32u)), ~min(-global1.x, 1i << (u_input.a.x % 32u)), global1.x, _wgslsmith_mod_i32(global1.x & 3072i, i32(-1i) * -23993i) | -1i) | max(vec4<i32>(~global1.x, -175i, global1.x, 2147483647i) ^ ~_wgslsmith_mod_vec4_i32(u_input.c, u_input.c), vec4<i32>(-25928i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global1.x, global1.x), global1.xxx), min(-u_input.b, _wgslsmith_mod_i32(global1.x, u_input.c.x)), ~u_input.b >> (1u % 32u)));
    global1 = _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-23119i, global1.x, global1.x, u_input.c.x), u_input.c) & vec4<i32>(global1.x, u_input.b, u_input.c.x, u_input.b), abs(func_1(32521u, Struct_1(true)))), _wgslsmith_sub_vec4_i32(~u_input.c >> (~vec4<u32>(u_input.a.x, u_input.a.x, 148188u, 649u) % vec4<u32>(32u)), u_input.c | vec4<i32>(-1i, -904i, global1.x, global1.x))) | (vec4<i32>(-52773i, global1.x, _wgslsmith_clamp_i32(global1.x | -12818i, -43590i, u_input.c.x), u_input.c.x) & -abs(~u_input.c));
    let var_0 = _wgslsmith_mult_vec3_i32(select(-global1.xzz, u_input.c.zwz, func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-234f, -708f, -2264f, 182f) + vec4<f32>(-1995f, 1000f, -215f, 680f))), all(vec4<bool>(false, true, true, false)), !any(vec4<bool>(true, true, true, true)))), ~(_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, 0i, 2147483647i) << (vec3<u32>(4294967295u, u_input.a.x, u_input.a.x) % vec3<u32>(32u)), max(vec3<i32>(0i, 0i, -11209i), global1.wyy)) | -u_input.c.xwz));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, ~vec3<i32>(~(-2147483647i ^ var_0.x), var_0.x, ~(~2147483647i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1649f, 902f, 652f, -290f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1115f, -479f, -807f, -668f), vec4<f32>(-504f, 499f, -636f, -1404f))), vec4<bool>(true, true, true, true))))), ~max(_wgslsmith_div_vec3_u32(select(vec3<u32>(57504u, 4294967295u, 69324u), vec3<u32>(4294967295u, 15164u, u_input.a.x), true), u_input.a), ~vec3<u32>(u_input.a.x, 0u, 71757u) >> (vec3<u32>(54903u, 1u, 0u) % vec3<u32>(32u))));
}

