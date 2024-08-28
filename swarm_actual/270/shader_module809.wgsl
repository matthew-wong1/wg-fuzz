struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> vec3<f32> {
    var var_0 = _wgslsmith_mult_vec3_u32(max(max(max(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(0u, u_input.a, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(32243u, 1u, 8320u))), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 39231u, 0u), ~vec3<u32>(u_input.a, u_input.a, u_input.a))), _wgslsmith_div_vec3_u32(vec3<u32>(firstTrailingBit(1u), u_input.a, firstLeadingBit(1083u)), ~vec3<u32>(u_input.a, 6014u, 29476u))), countOneBits(reverseBits(_wgslsmith_sub_vec3_u32(~vec3<u32>(29605u, 4294967295u, 1u), ~vec3<u32>(31626u, 80849u, u_input.a)))));
    let var_1 = _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, -1793i, u_input.c, -2147483647i) >> (vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a) % vec4<u32>(32u)), vec4<i32>(-1i, -2147483647i, -2147483647i, u_input.c), vec4<i32>(-2147483647i, u_input.d, -4600i, -1i) >> (vec4<u32>(u_input.a, u_input.a, var_0.x, u_input.a) % vec4<u32>(32u)))), select(reverseBits(vec4<i32>(u_input.e, -1i, u_input.d, -2147483647i)), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d, u_input.b.x, u_input.d, u_input.c), vec4<i32>(2147483647i, 0i, u_input.c, u_input.d)), ~vec4<i32>(33749i, 1i, 12181i, 21786i)), vec4<bool>(true, true, true, true))) & u_input.b.x;
    var var_2 = Struct_2(vec2<f32>(199f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), -443f)))), -1i, global0[_wgslsmith_index_u32(u_input.a, 25u)], Struct_1(max(~u_input.a, 1u)));
    global0 = array<Struct_1, 25>();
    var var_3 = true;
    return vec3<f32>(1388f, _wgslsmith_f_op_f32(-264f + arg_0), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0))));
}

fn func_2(arg_0: vec2<bool>, arg_1: bool) -> bool {
    let var_0 = 287f;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-555f, var_0) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(890f, var_0)))))), u_input.e, Struct_1(u_input.a), Struct_1(~(24663u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.a), vec3<u32>(u_input.a, 403u, u_input.a)) % 32u))));
    var var_2 = Struct_4(true, var_1);
    global0 = array<Struct_1, 25>();
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_2.b.a.x, var_1.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, 905f, 2384f))), vec3<f32>(_wgslsmith_div_f32(var_2.b.a.x, -1245f), _wgslsmith_f_op_f32(ceil(192f)), 310f), arg_1)) + _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.a.x - var_2.b.a.x) * _wgslsmith_f_op_f32(var_2.b.a.x - var_0))))), Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.a.x, -1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.a.x, var_1.a.x))))), abs(~_wgslsmith_clamp_i32(u_input.d, var_2.b.b, 0i)), Struct_1(~firstLeadingBit(17633u)), Struct_1(select(1u, 0u, !arg_0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-265f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.x, -510f)))))));
    return arg_0.x;
}

fn func_1() -> Struct_1 {
    var var_0 = any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, any(vec2<bool>(true, true)), true), vec4<bool>(true, -2147483647i == u_input.c, func_2(vec2<bool>(false, false), false), any(vec3<bool>(false, false, true)))), vec4<bool>(true, true, true, true), vec4<bool>(false, true, !select(true, false, true), true || all(vec4<bool>(true, true, false, true)))));
    var_0 = false;
    var_0 = all(!select(vec2<bool>(all(vec4<bool>(false, true, false, true)), any(vec4<bool>(true, true, true, false))), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)))));
    global0 = array<Struct_1, 25>();
    var_0 = _wgslsmith_add_i32(~2147483647i, u_input.b.x) >= -1073i;
    return Struct_1(4176u);
}

fn func_4(arg_0: Struct_2, arg_1: f32) -> vec2<f32> {
    global0 = array<Struct_1, 25>();
    let var_0 = arg_0;
    var var_1 = u_input.b;
    var var_2 = Struct_4(false, var_0);
    var_2 = Struct_4(var_2.a, Struct_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(max(arg_0.a.x, var_2.b.a.x))))), select(abs(arg_0.b), -8331i << (u_input.a % 32u), all(!vec4<bool>(false, var_2.a, var_2.a, var_2.a))), func_1(), var_0.c));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - -756f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1310f))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    let var_0 = Struct_4(true, Struct_2(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(290f, 685f)), u_input.e << (11092u % 32u), Struct_1(55187u), func_1()), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), u_input.e, Struct_1(reverseBits(0u) >> (_wgslsmith_mult_u32(4294967295u, u_input.a) % 32u)), func_1()));
    let var_1 = countOneBits(~(~(~min(vec4<u32>(u_input.a, var_0.b.d.a, var_0.b.d.a, 78625u), vec4<u32>(1u, 4294967295u, 4294967295u, var_0.b.d.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-1i) * -vec4<i32>(-1i, firstLeadingBit(u_input.c), ~(-2147483647i), -25971i), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec3_f32(func_3(var_0.b.a.x)).x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.a.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_0.b.a.x)))), var_0.b.a.x) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, -1907f), vec4<f32>(467f, 455f, -961f, 423f), false)) * vec4<f32>(-2828f, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x))))), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.c, ~(-var_0.b.b), u_input.e), vec4<i32>(-1i) * -vec4<i32>(-31912i, var_0.b.b, 46562i, -2417i)), ~var_1.xx, countOneBits(var_1.wy >> (select(vec2<u32>(u_input.a, 4294967295u), ~vec2<u32>(1u, var_1.x), var_0.a) % vec2<u32>(32u))));
}

