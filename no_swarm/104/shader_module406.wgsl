struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27> = array<i32, 27>(i32(-2147483648), 2147483647i, -39210i, 12610i, 14097i, -28759i, 2147483647i, 0i, 0i, -1i, -41660i, 1i, i32(-2147483648), -1i, i32(-2147483648), 0i, 0i, -55970i, 1i, 6419i, 22881i, -8150i, -1i, 0i, 31085i, 0i, 38323i);

var<private> global1: array<vec4<i32>, 27>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: bool) -> f32 {
    global0 = array<i32, 27>();
    var var_0 = vec2<bool>(true, !(!arg_0));
    var_0 = !select(vec2<bool>(true, arg_0), !vec2<bool>(true, select(var_0.x, true, arg_0)), vec2<bool>(0i > min(global0[_wgslsmith_index_u32(1u, 27u)], 31373i), true));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(2262f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(135f + 376f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -154f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-344f)))))), 1134f);
    global1 = array<vec4<i32>, 27>();
    return var_1.x;
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>) -> i32 {
    global0 = array<i32, 27>();
    var var_0 = (vec2<i32>(0i, ~global0[_wgslsmith_index_u32(min(arg_1.e.x, arg_1.a.x), 27u)]) ^ -vec2<i32>(~(-20677i), abs(u_input.b.x))) | ~(vec2<i32>(-1i) * -vec2<i32>(0i, global0[_wgslsmith_index_u32(arg_1.e.x, 27u)]));
    var_0 = abs(vec2<i32>(_wgslsmith_add_i32(var_0.x, ~(-37742i | u_input.a.x)), max(abs(32347i), _wgslsmith_div_i32(abs(u_input.a.x), -43022i))));
    let var_1 = Struct_1(~(_wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 66262u, arg_1.e.x), vec3<u32>(0u, 39231u, 19597u)) ^ ~select(vec3<u32>(0u, 4294967295u, arg_1.e.x), arg_1.a, vec3<bool>(false, arg_0, arg_0))), 611f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-379f, _wgslsmith_f_op_f32(-114f * arg_1.c.x), -625f)) * _wgslsmith_f_op_vec3_f32(arg_1.c - arg_1.c)), -firstTrailingBit(global1[_wgslsmith_index_u32(37316u, 27u)]), ~(~arg_1.e));
    let var_2 = var_1;
    return firstLeadingBit(-min(arg_1.d.x, _wgslsmith_div_i32(var_1.d.x, -arg_1.d.x)));
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> Struct_1 {
    var var_0 = select(vec3<bool>(((global0[_wgslsmith_index_u32(43193u, 27u)] & u_input.b.x) ^ arg_0.d.x) <= global0[_wgslsmith_index_u32(2144u, 27u)], select(all(select(vec2<bool>(true, false), vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, true))), arg_1, _wgslsmith_dot_vec2_i32(arg_0.d.wx, vec2<i32>(u_input.a.x, u_input.a.x)) < func_3(arg_1, Struct_1(vec3<u32>(arg_0.e.x, 1u, arg_0.a.x), arg_0.b, vec3<f32>(1623f, 2008f, -1000f), vec4<i32>(global0[_wgslsmith_index_u32(arg_0.e.x, 27u)], global0[_wgslsmith_index_u32(arg_0.a.x, 27u)], 0i, arg_0.d.x), arg_0.e), arg_0.a.yy)), all(vec3<bool>(true, arg_1, !arg_1))), vec3<bool>(arg_1, !(_wgslsmith_f_op_f32(arg_0.b + arg_0.b) < _wgslsmith_f_op_f32(-arg_0.b)), any(select(!vec2<bool>(arg_1, arg_1), vec2<bool>(true, true), vec2<bool>(false, arg_1)))), !vec3<bool>(arg_1, true, arg_1));
    var var_1 = global1[_wgslsmith_index_u32(~arg_0.a.x, 27u)];
    var var_2 = var_1.xx;
    var var_3 = arg_0;
    var_1 = vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(global1[_wgslsmith_index_u32(firstTrailingBit(33107u), 27u)], global1[_wgslsmith_index_u32(~0u, 27u)], max(global1[_wgslsmith_index_u32(var_3.a.x, 27u)], var_3.d) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(-82114i, var_1.x, -2147483647i, arg_0.d.x), arg_0.d));
    return Struct_1(arg_0.a, _wgslsmith_f_op_f32(-1000f - -378f), _wgslsmith_f_op_vec3_f32(-arg_0.c), ~_wgslsmith_mult_vec4_i32(abs(arg_0.d), max(vec4<i32>(var_3.d.x, 2147483647i, -2147483647i, var_3.d.x), global1[_wgslsmith_index_u32(59783u, 27u)])) ^ abs(vec4<i32>(i32(-1i) * -20442i, ~0i, -13631i, _wgslsmith_clamp_i32(-1i, global0[_wgslsmith_index_u32(14963u, 27u)], 1i))), _wgslsmith_div_vec4_u32(~arg_0.e, _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 19249u, var_3.a.x, 4294967295u), ~var_3.e)) >> (~abs(firstTrailingBit(vec4<u32>(28085u, arg_0.e.x, 17730u, arg_0.e.x))) % vec4<u32>(32u)));
}

fn func_4(arg_0: Struct_1) -> StorageBuffer {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(32718u, arg_0.e.x, _wgslsmith_add_u32(~arg_0.a.x, ~(1u << (arg_0.a.x % 32u)))), select(~abs(arg_0.a), abs(~arg_0.e.zxw), !(arg_0.a.x > arg_0.a.x)) ^ vec3<u32>(firstLeadingBit(arg_0.a.x) >> (74809u % 32u), arg_0.e.x, arg_0.e.x));
    let var_1 = global0[_wgslsmith_index_u32(10652u, 27u)];
    global0 = array<i32, 27>();
    let var_2 = -28730i;
    var var_3 = var_0.x;
    return StorageBuffer(var_0.xx, 10824u, vec4<f32>(arg_0.b, arg_0.b, -212f, _wgslsmith_f_op_f32(f32(-1f) * -439f)), i32(-1i) * -(global0[_wgslsmith_index_u32(var_0.x, 27u)] << (1u % 32u)), -var_2);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~111473u, _wgslsmith_clamp_u32(~_wgslsmith_div_u32(1u, 1u), ~(~4294967295u), _wgslsmith_mult_u32(1u, 4294967295u) >> ((0u >> (1u % 32u)) % 32u)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(48249u, 38760u), vec2<u32>(11637u, 39000u)), 7650u), _wgslsmith_mult_vec3_u32(select(vec3<u32>(31603u, 0u, 87402u), vec3<u32>(33603u, 605u, 44553u), false), firstTrailingBit(vec3<u32>(4294967295u, 0u, 4294967295u)))) % 32u), 1u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(28569u, abs(0u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(55822u, 39834u), vec2<u32>(0u, 4294967295u)), ~1u), abs(29790u) << (_wgslsmith_div_u32(0u, 93364u) % 32u)), ~abs(13653u)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(550f - -1325f), -1028f))))));
    let x = u_input.a;
    s_output = func_4(func_2(Struct_1(var_0.www >> (~var_0.zxz % vec3<u32>(32u)), _wgslsmith_f_op_f32(func_1(all(vec2<bool>(false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1553f, 351f, -406f) + vec3<f32>(1000f, 1001f, 400f))), global1[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_mod_vec4_u32(countOneBits(var_0), vec4<u32>(4294967295u, 0u, var_0.x, var_0.x) | var_0)), true));
}

