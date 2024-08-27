struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<bool>,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: u32,
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

var<private> global0: array<Struct_1, 20>;

var<private> global1: f32;

var<private> global2: array<Struct_3, 31>;

var<private> global3: array<i32, 31>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~(~arg_0.x), _wgslsmith_div_u32(u_input.b, 4294967295u) & (arg_0.x >> (29678u % 32u))), arg_0.wz), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, ~u_input.d), firstTrailingBit(max(select(vec2<u32>(arg_0.x, 66082u), arg_0.zw, false), vec2<u32>(27747u, 23659u))))), 20u)];
    let var_1 = abs(max(18051i, -2147483647i)) & -countOneBits(_wgslsmith_mult_i32(var_0.b.x, global3[_wgslsmith_index_u32(arg_0.x, 31u)]) | -1i);
    return Struct_1(max(abs(arg_0) >> (~var_0.a % vec4<u32>(32u)), ~vec4<u32>(var_0.a.x, arg_0.x, 36014u, arg_0.x) << (vec4<u32>(u_input.d, 49636u, ~0u, arg_0.x) % vec4<u32>(32u))), var_0.b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> f32 {
    var var_0 = arg_1;
    global0 = array<Struct_1, 20>();
    global1 = arg_1.d;
    global2 = array<Struct_3, 31>();
    global0 = array<Struct_1, 20>();
    return _wgslsmith_f_op_f32(abs(arg_1.d));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: u32) -> Struct_2 {
    global2 = array<Struct_3, 31>();
    let var_0 = min(4294967295u, 4294967295u);
    var var_1 = firstLeadingBit(var_0);
    var var_2 = Struct_1(vec4<u32>(abs(4294967295u), ~arg_0.a.c, ~(~firstTrailingBit(75773u)), ~1u), firstLeadingBit(-_wgslsmith_mod_vec2_i32(~u_input.a.xw, u_input.a.ww)));
    var var_3 = arg_1.a;
    return Struct_2(firstLeadingBit(27683u), select(!select(vec2<bool>(var_3.b.x, true), vec2<bool>(arg_0.a.b.x, arg_1.a.b.x), all(vec4<bool>(true, false, arg_1.a.b.x, true))), arg_1.a.b, true), firstLeadingBit(0u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(max(179f, 717f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_3.d)) * _wgslsmith_f_op_f32(func_3(func_2(vec4<u32>(arg_0.a.c, 1u, 0u, arg_0.a.a), arg_0.a.b.x), arg_1.a)))), -19624i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> u32 {
    let var_0 = func_2(vec4<u32>(~(4294967295u << (u_input.d % 32u)), max(_wgslsmith_add_u32(~u_input.b, 1u), _wgslsmith_mult_u32(max(44405u, arg_1.c), ~14278u)), ~firstLeadingBit(arg_0.a.x), _wgslsmith_mod_u32(4294967295u, select(arg_0.a.x, arg_0.a.x, arg_1.d < arg_1.d))), true);
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.d)) * _wgslsmith_f_op_f32(ceil(-1726f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.d - -1070f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.d, arg_1.d), vec2<f32>(-1000f, -1066f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1741f, 211f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-520f, -766f))))))));
    let var_2 = !select(vec4<bool>(arg_1.b.x, false, arg_1.b.x, true), vec4<bool>(!all(vec4<bool>(arg_1.b.x, true, arg_1.b.x, arg_1.b.x)), _wgslsmith_sub_i32(-2147483647i, -18006i) > u_input.a.x, true, true), all(vec4<bool>(arg_1.b.x, arg_1.b.x, false, true)) || !arg_1.b.x);
    let var_3 = vec3<i32>(1i, ~(~arg_0.b.x), (func_1(global2[_wgslsmith_index_u32(u_input.d, 31u)], global2[_wgslsmith_index_u32(arg_0.a.x, 31u)], var_0.a.x).e & 0i) >> ((abs(u_input.b) >> (~4294967295u % 32u)) % 32u)) & vec3<i32>(_wgslsmith_div_i32(global3[_wgslsmith_index_u32(28130u, 31u)], arg_1.e), ~select(-1i, var_0.b.x, true), 0i);
    global3 = array<i32, 31>();
    return ~(~(~_wgslsmith_mod_u32(1u, u_input.b) >> (firstLeadingBit(44197u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global1 = -655f;
    global3 = array<i32, 31>();
    global1 = _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1239f - -1047f))))));
    let var_1 = global2[_wgslsmith_index_u32(reverseBits(18435u), 31u)];
    var var_2 = reverseBits(vec4<u32>(u_input.b, _wgslsmith_mult_u32(u_input.b, func_4(global0[_wgslsmith_index_u32(u_input.b, 20u)], func_1(Struct_3(Struct_2(0u, var_1.a.b, u_input.b, 225f, 14860i)), Struct_3(Struct_2(4294967295u, vec2<bool>(var_0, var_0), 4294967295u, 916f, 0i)), var_1.a.a))), _wgslsmith_dot_vec2_u32(vec2<u32>(65705u, 77936u), _wgslsmith_div_vec2_u32(vec2<u32>(15385u, 4294967295u), vec2<u32>(var_1.a.a, 1u))) ^ ~firstLeadingBit(u_input.d), u_input.b));
    var_2 = vec4<u32>(var_1.a.a, countOneBits(var_1.a.c), abs(_wgslsmith_mult_u32(~(var_1.a.a | u_input.b), ~(var_2.x ^ u_input.b))), 0u);
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_mult_i32(var_1.a.e, min(global3[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(u_input.b, 31u)]))));
}

