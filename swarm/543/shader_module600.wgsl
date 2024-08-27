struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
    d: vec2<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: Struct_2,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool) -> u32 {
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    let var_0 = Struct_4(vec3<i32>(~0i, u_input.a.x, u_input.a.x), ~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(1u, 1u, u_input.c.x)), vec3<u32>(u_input.c.x, 1u, 58495u)), ~vec3<u32>(0u, 29001u, u_input.b) >> (~vec3<u32>(84627u, u_input.b, u_input.c.x) % vec3<u32>(32u))), Struct_2(78135u, Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), vec3<i32>(27150i, u_input.a.x, -5977i)), u_input.b << (~46825u % 32u), u_input.c.x, global0[_wgslsmith_index_u32((u_input.b ^ u_input.c.x) >> (~u_input.c.x % 32u), 15u)], false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 15u)], global0[_wgslsmith_index_u32(u_input.b, 15u)], 494f, global0[_wgslsmith_index_u32(u_input.b, 15u)])))), _wgslsmith_mod_vec2_u32(u_input.c, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 21537u), vec2<u32>(1192u, 0u), u_input.c))), u_input.a);
    let var_1 = vec4<i32>(var_0.d.x & _wgslsmith_div_i32(max(_wgslsmith_div_i32(u_input.a.x, -37351i), abs(u_input.a.x)), var_0.c.b.a.x), ~u_input.a.x, var_0.a.x, ~24785i);
    return ~88420u;
}

fn func_2(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: bool) -> vec4<f32> {
    var var_0 = Struct_2(1u, Struct_1(vec3<i32>(-1i >> (u_input.c.x % 32u), -arg_0, -2147483647i << (u_input.c.x % 32u)) << (vec3<u32>(countOneBits(68081u), firstTrailingBit(1u), 35065u) % vec3<u32>(32u)), u_input.b, 23935u, arg_2, any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(arg_3, false), false), arg_1 | false))), vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 15u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(0u, 1u)), 15u)]), arg_2, _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(-1337f * global0[_wgslsmith_index_u32(~59797u, 15u)]))), ~(min(vec2<u32>(u_input.b, 0u), select(u_input.c, vec2<u32>(u_input.b, 49165u), vec2<bool>(arg_3, arg_3))) >> (_wgslsmith_sub_vec2_u32(max(u_input.c, vec2<u32>(0u, 1u)), _wgslsmith_mod_vec2_u32(u_input.c, vec2<u32>(u_input.b, 0u))) % vec2<u32>(32u))));
    let var_1 = ~vec4<u32>(func_3(false) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, var_0.a), vec3<u32>(var_0.a, 26616u, var_0.a)), ~(~38660u), ~_wgslsmith_sub_u32(var_0.b.b, var_0.d.x), u_input.c.x) ^ reverseBits(_wgslsmith_mult_vec4_u32(min(vec4<u32>(u_input.c.x, u_input.c.x, 0u, 4294967295u) >> (vec4<u32>(u_input.b, u_input.b, u_input.c.x, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(var_0.b.c, u_input.c.x, 23448u, u_input.c.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, u_input.b, u_input.c.x, u_input.b), vec4<u32>(92493u, u_input.b, 4294967295u, var_0.b.c))));
    var var_2 = abs(firstTrailingBit(u_input.c)) | ~(~min(vec2<u32>(var_1.x, var_1.x), vec2<u32>(1u, u_input.b)));
    let var_3 = ~abs(vec4<i32>(3265i, -41247i, -41276i & arg_0, firstLeadingBit(0i)));
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(var_0.c, vec4<f32>(arg_2, var_0.b.d, global0[_wgslsmith_index_u32(var_1.x, 15u)], 1000f)))) * _wgslsmith_f_op_vec4_f32(-var_0.c)), var_0.c, arg_3)) - var_0.c);
    return _wgslsmith_f_op_vec4_f32(-var_4);
}

fn func_1(arg_0: Struct_1) -> Struct_2 {
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    let var_0 = Struct_2(1u, arg_0, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_2(63749i, select(true, arg_0.e, arg_0.b > 7909u), global0[_wgslsmith_index_u32(arg_0.b, 15u)], arg_0.e)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_2(abs(-33691i), arg_0.e, _wgslsmith_f_op_f32(round(427f)), true == arg_0.e)))))), ~select(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, 40477u), vec2<u32>(arg_0.c, u_input.c.x)), ~firstTrailingBit(vec2<u32>(52157u, 0u)), any(vec4<bool>(false, true, arg_0.e, arg_0.e)) || true));
    let var_1 = vec2<i32>(~(~(-_wgslsmith_mod_i32(arg_0.a.x, u_input.a.x))), -31882i);
    var var_2 = ~firstTrailingBit(firstTrailingBit(_wgslsmith_mod_vec2_i32(var_0.b.a.zy, var_1)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(countOneBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -48883i, 2147483647i), vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i) | vec3<i32>(-18068i, u_input.a.x, -2147483647i))), 1u & u_input.c.x, u_input.c.x | _wgslsmith_add_u32(~u_input.c.x, u_input.b), _wgslsmith_f_op_f32(abs(1574f)), true));
    global0 = array<f32, 15>();
    let var_1 = Struct_4(select(firstLeadingBit(abs(var_0.b.a ^ u_input.a)), u_input.a, !(!vec3<bool>(var_0.b.e, var_0.b.e, true))), ~(~vec3<u32>(53111u, func_1(Struct_1(var_0.b.a, 1u, 83820u, var_0.c.x, true)).b.c, 20823u)), func_1(func_1(Struct_1(max(vec3<i32>(-48798i, var_0.b.a.x, var_0.b.a.x), vec3<i32>(var_0.b.a.x, 35997i, var_0.b.a.x)), ~var_0.d.x, ~1u, func_1(Struct_1(var_0.b.a, 82847u, var_0.b.b, 1392f, false)).b.d, var_0.b.e)).b), ~(~vec3<i32>(60056i, -45923i, -1i) << (abs(vec3<u32>(0u, u_input.c.x, 1u)) % vec3<u32>(32u))));
    var var_2 = -754f;
    let var_3 = u_input.b;
    var var_4 = func_1(var_0.b);
    var var_5 = func_1(Struct_1(vec3<i32>(-var_1.d.x, ~var_4.b.a.x, firstTrailingBit(1i)) ^ var_0.b.a, 1u, ~_wgslsmith_dot_vec2_u32(abs(u_input.c), ~var_1.c.d), _wgslsmith_f_op_f32(f32(-1f) * -731f), !(var_3 > 4294967295u)));
    let var_6 = func_1(var_5.b).b;
    var var_7 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.b.d * var_0.b.d)), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(var_1.b.x, 62874u, var_1.b.x, 6236u), vec4<u32>(0u, u_input.b, var_0.d.x, var_7.c.a))), 1459f, vec4<i32>(-2314i, firstLeadingBit(min(1i, 48691i)) >> (_wgslsmith_dot_vec2_u32(func_1(Struct_1(var_5.b.a, var_1.b.x, 60812u, -853f, var_1.c.b.e)).d, vec2<u32>(0u, var_6.c)) % 32u), -2147483647i, firstLeadingBit(-1i)));
}

