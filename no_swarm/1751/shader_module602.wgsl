struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(true, true, false, false, false, true, false, true, false, false, false, true, false, false);

var<private> global1: array<vec4<f32>, 18>;

var<private> global2: i32 = 2147483647i;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-689f - -1178f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var var_1 = 89899u;
    var_1 = 1u;
    global0 = array<bool, 14>();
    let var_2 = true;
    return Struct_1(false, -2717i, arg_1.x);
}

fn func_3(arg_0: Struct_1) -> vec2<u32> {
    return ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.c, 4294967295u), countOneBits(reverseBits(vec2<u32>(69475u, 45469u) | vec2<u32>(arg_0.c, 67160u))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: u32, arg_3: vec4<i32>) -> Struct_1 {
    global1 = array<vec4<f32>, 18>();
    var var_0 = Struct_1(true, u_input.e, 109357u);
    global0 = array<bool, 14>();
    var_0 = func_2(any(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(var_0.a, var_0.a, false, false), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 14u)], var_0.a, true, true)), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(arg_2, 14u)], global0[_wgslsmith_index_u32(arg_1.x, 14u)], global0[_wgslsmith_index_u32(arg_1.x, 14u)]), vec4<bool>(true, true, var_0.a, true), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.x, 14u)], true, false, true)))), ~(~countOneBits(~vec4<u32>(var_0.c, 0u, arg_2, 64743u))), func_2(var_0.a, vec4<u32>(_wgslsmith_div_u32(33448u, arg_2 & 9781u), 0u, ~_wgslsmith_mult_u32(1u, 16680u), var_0.c), false).a);
    var var_1 = func_2(false, vec4<u32>(firstTrailingBit(_wgslsmith_clamp_u32(arg_2, arg_0.x, arg_1.x)), ~(~arg_1.x), _wgslsmith_add_u32(~arg_2, abs(85314u)), 4294967295u) ^ _wgslsmith_mod_vec4_u32(max(vec4<u32>(12300u, 2776u, 0u, arg_2), max(vec4<u32>(10150u, 0u, 0u, arg_0.x), vec4<u32>(16926u, arg_2, 0u, 26811u))), ~vec4<u32>(1u, arg_2, 1u, 32889u) << (vec4<u32>(85386u, arg_0.x, arg_2, arg_1.x) % vec4<u32>(32u))), _wgslsmith_f_op_f32(max(-655f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2502f)))) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1000f)))), -1023f)));
    return Struct_1(!(!(any(vec3<bool>(false, var_0.a, var_1.a)) || true)), 69069i, abs(0u));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global1 = array<vec4<f32>, 18>();
    var var_0 = func_4(min(~select(vec3<u32>(1u, 5221u, 45299u), vec3<u32>(1u, 1u, 1u), false), vec3<u32>(1u, 39161u, _wgslsmith_dot_vec3_u32(max(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<u32>(4294967295u, 1u, 64453u)), _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4908u, 82997u), vec3<u32>(0u, 0u, 0u))))), select(_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u), countOneBits(vec2<u32>(21574u, 4294967295u)), ~vec2<u32>(4294967295u, 4294967295u)) << (firstTrailingBit(firstLeadingBit(vec2<u32>(35493u, 1u))) % vec2<u32>(32u)), func_3(func_2(true, countOneBits(vec4<u32>(46336u, 79846u, 4294967295u, 0u)), true)), !vec2<bool>(func_2(false, vec4<u32>(14633u, 0u, 0u, 52806u), false).a, all(vec2<bool>(global0[_wgslsmith_index_u32(0u, 14u)], global0[_wgslsmith_index_u32(6795u, 14u)])))), ~(~(~77386u)), (select(u_input.c, ~vec4<i32>(0i, u_input.e, -11966i, -44940i), vec4<bool>(global0[_wgslsmith_index_u32(68538u, 14u)], global0[_wgslsmith_index_u32(29820u, 14u)], true, global0[_wgslsmith_index_u32(4294967295u, 14u)])) << (min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(19690u, 97635u, 34559u, 24572u)) % vec4<u32>(32u))) ^ u_input.c);
    let var_1 = !(~abs(var_0.c) <= (var_0.c | 4294967295u));
    var_0 = Struct_1(!all(vec3<bool>(true, false, true)), abs(var_0.b), _wgslsmith_dot_vec2_u32(vec2<u32>(~var_0.c, _wgslsmith_div_u32(abs(1u), 21946u)), vec2<u32>(~_wgslsmith_mult_u32(var_0.c, 1u), 0u)));
    let var_2 = Struct_1(func_4(vec3<u32>(_wgslsmith_div_u32(var_0.c, var_0.c), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c, var_0.c, var_0.c, 1u), vec4<u32>(15189u, var_0.c, 92449u, var_0.c)), _wgslsmith_mod_u32(1u, 976u)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.c, 19001u), vec2<u32>(var_0.c, 127700u)) | vec2<u32>(var_0.c, var_0.c), 1u, u_input.c >> (~vec4<u32>(var_0.c, 4294967295u, var_0.c, 0u) % vec4<u32>(32u))).a || all(vec3<bool>(!var_0.a, all(vec4<bool>(global0[_wgslsmith_index_u32(var_0.c, 14u)], var_1, global0[_wgslsmith_index_u32(var_0.c, 14u)], var_0.a)), !var_0.a)), var_0.b, ~var_0.c << (1u % 32u));
    return Struct_1(var_2.a, 1i, firstTrailingBit(var_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, ~1u, ~reverseBits(_wgslsmith_div_u32(4294967295u, 1u))), 14u)], 2147483647i, 50767u);
    global1 = array<vec4<f32>, 18>();
    global2 = var_0.b;
    var var_1 = var_0;
    global1 = array<vec4<f32>, 18>();
    var var_2 = func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f + 172f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -318f) - 132f))), _wgslsmith_f_op_f32(-1f))));
    global2 = var_1.b;
    let var_3 = ~(~vec4<u32>(~var_1.c & var_1.c, min(49936u, 4294967295u >> (var_0.c % 32u)), ~(~35634u), _wgslsmith_mod_u32(_wgslsmith_div_u32(var_0.c, var_2.c), 13296u)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-480f, -721f))), _wgslsmith_div_f32(_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(680f))), _wgslsmith_f_op_f32(f32(-1f) * -806f))), var_2.b, 0u, -2147483647i);
}

