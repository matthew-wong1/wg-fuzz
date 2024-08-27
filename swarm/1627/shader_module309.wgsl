struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec3<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 14>;

var<private> global1: array<Struct_1, 12>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2) -> i32 {
    let var_0 = !vec4<bool>(arg_0.b.x <= arg_0.b.x, !(!all(vec3<bool>(false, false, true))), false, true);
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_0.b)));
    global1 = array<Struct_1, 12>();
    var var_2 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(52468i, -2147483647i) & vec2<i32>(arg_0.a, arg_0.a), select(vec2<i32>(u_input.a, arg_0.a), vec2<i32>(arg_0.a, u_input.a), var_0.x)), ~reverseBits(u_input.a)), 1i), i32(-1i) * -73731i);
    var var_3 = var_0.x;
    return -38433i;
}

fn func_1(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    var var_0 = -(~vec3<i32>(1i, func_2(arg_2), 35110i));
    let var_1 = _wgslsmith_mod_u32(~56716u, arg_1);
    let var_2 = var_1;
    global0 = array<Struct_2, 14>();
    var var_3 = vec2<u32>(0u, ~(~(~var_1 >> (max(1u, 0u) % 32u))));
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(~_wgslsmith_mod_vec3_u32(select(vec3<u32>(1u, 49188u, 4294967295u), vec3<u32>(16208u, var_2, var_2), true), min(vec3<u32>(1u, var_1, var_2), vec3<u32>(4294967295u, var_2, 1u))), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2, 85609u, var_1), vec3<u32>(arg_0.x, var_1, 4294967295u)), vec3<u32>(~var_1, ~50959u, countOneBits(var_3.x)))), (_wgslsmith_sub_vec3_u32(~vec3<u32>(var_2, 59165u, 4294967295u), ~vec3<u32>(59416u, var_3.x, arg_1)) >> (~(~vec3<u32>(var_1, var_2, arg_1)) % vec3<u32>(32u))) << (max(~vec3<u32>(4294967295u, var_3.x, var_2), ~vec3<u32>(30448u, 0u, arg_1)) % vec3<u32>(32u))), 12u)];
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = func_1(firstTrailingBit(vec2<u32>(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, arg_0.b.x, 38962u, arg_0.b.x), arg_0.b), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0.b.x, arg_0.b.x), arg_0.b.ywy)), 32119u)), arg_0.b.x, Struct_2((1i << ((arg_0.b.x | 26450u) % 32u)) >> (arg_0.b.x % 32u), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-411f, 323f, -226f, 140f) + arg_0.a)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0.a.x, 622f)))));
    let var_1 = true;
    global0 = array<Struct_2, 14>();
    global0 = array<Struct_2, 14>();
    return _wgslsmith_add_i32(u_input.a, -2147483647i) ^ -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1u;
    let var_1 = vec2<i32>(u_input.a, _wgslsmith_sub_i32(func_3(func_1(vec2<u32>(1u, 1u), 1u, global0[_wgslsmith_index_u32(5693u, 14u)], _wgslsmith_f_op_f32(f32(-1f) * -645f))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(2147483647i, u_input.a, 1i, -38383i), vec4<i32>(-49808i, u_input.a, u_input.a, u_input.a), vec4<bool>(false, true, true, true)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(-29048i, 45452i, u_input.a, 2147483647i), vec4<i32>(82483i, u_input.a, -2147483647i, -12556i), vec4<i32>(u_input.a, u_input.a, 42539i, 10661i)), -max(vec4<i32>(u_input.a, -13388i, -25105i, -1i), vec4<i32>(-1i, -2147483647i, u_input.a, u_input.a)))));
    let var_2 = Struct_2(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 20116i, u_input.a) >> (~vec3<u32>(77863u, 4294967295u, 0u) % vec3<u32>(32u)), ~(vec3<i32>(var_1.x, 2147483647i, -10158i) >> (vec3<u32>(4294967295u, 36780u, 0u) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-124f, -340f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(382f)) + _wgslsmith_f_op_f32(sign(-1917f))), _wgslsmith_f_op_f32(trunc(-1000f))))));
    let var_3 = func_1(firstTrailingBit(_wgslsmith_sub_vec2_u32(select(~vec2<u32>(24785u, 20328u), firstLeadingBit(vec2<u32>(89995u, 0u)), true), abs(countOneBits(vec2<u32>(49629u, 50946u))))), _wgslsmith_mult_u32(0u, abs(~_wgslsmith_add_u32(14099u, 74810u))), Struct_2(abs(10427i), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-1155f, _wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_f_op_f32(-var_2.b.x), var_2.b.x)))), -257f).a;
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-var_3))), vec4<u32>(5228u & _wgslsmith_dot_vec2_u32(select(vec2<u32>(4294967295u, 0u), vec2<u32>(60858u, 1u), vec2<bool>(false, true)), ~vec2<u32>(1u, 14172u)), 41487u, 69041u, firstTrailingBit(0u)));
    let var_5 = false;
    let var_6 = Struct_2(var_1.x, var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(select(1i, -var_6.a, !var_5)), vec4<i32>(_wgslsmith_mult_i32(1i, firstLeadingBit(-53198i)), 0i, reverseBits(-46139i), _wgslsmith_clamp_i32(i32(-1i) * -8087i, var_2.a, 1i)) << (vec4<u32>(~1u, 1u, var_4.b.x, var_4.b.x) % vec4<u32>(32u)), var_2.a, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_4.a.x, -1656f)) + 1562f) - _wgslsmith_f_op_f32(1397f - _wgslsmith_f_op_f32(sign(2466f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.x)), 2457f), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(15866i, func_2(Struct_2(var_2.a, var_2.b)))), var_1));
}

