struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

var<private> global1: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 25080u, 0u), vec3<u32>(30494u, 19660u, 10616u), vec3<u32>(4294967295u, 4050u, 0u));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = vec2<i32>(_wgslsmith_mod_i32(0i, ~_wgslsmith_dot_vec3_i32(arg_1.a.d, vec3<i32>(global0[_wgslsmith_index_u32(0u, 18u)], u_input.a.x, u_input.a.x)) << (u_input.b.x % 32u)), arg_2.d.x);
    let var_1 = 4294967295u;
    var var_2 = arg_2.b;
    let var_3 = arg_1;
    let var_4 = min(abs(vec4<i32>(arg_0.x, _wgslsmith_mod_i32(arg_2.d.x, ~arg_2.d.x), -1i, _wgslsmith_dot_vec3_i32(select(arg_2.d, arg_1.a.d, arg_2.c), arg_1.a.d))), vec4<i32>(-1i, ~u_input.a.x, 1535i, var_3.a.d.x));
    return var_4;
}

fn func_2(arg_0: f32, arg_1: vec3<f32>) -> i32 {
    var var_0 = -((_wgslsmith_sub_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 18u)], global0[_wgslsmith_index_u32(4294967295u, 18u)], -12435i, global0[_wgslsmith_index_u32(u_input.b.x, 18u)]) >> (u_input.b % vec4<u32>(32u)), func_3(vec2<i32>(u_input.a.x, global0[_wgslsmith_index_u32(62817u, 18u)]), Struct_3(Struct_2(arg_1.x, Struct_1(true), vec3<bool>(true, true, false), vec3<i32>(33538i, 0i, -2147483647i))), Struct_2(arg_0, Struct_1(false), vec3<bool>(false, true, false), vec3<i32>(global0[_wgslsmith_index_u32(1u, 18u)], u_input.a.x, u_input.a.x)), Struct_1(false))) >> (~u_input.b % vec4<u32>(32u))) & ~abs(-vec4<i32>(13657i, u_input.a.x, 2147483647i, -37774i)));
    var var_1 = _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, _wgslsmith_dot_vec2_u32(abs(u_input.b.xz), _wgslsmith_sub_vec2_u32(u_input.b.xz, u_input.b.yz)), 1u) & u_input.b.yxz, ~u_input.b.zzx | vec3<u32>(_wgslsmith_div_u32(abs(0u), u_input.b.x), firstTrailingBit(u_input.b.x ^ 52348u), 4294967295u));
    let var_2 = _wgslsmith_f_op_f32(trunc(678f));
    var var_3 = Struct_3(Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(452f - arg_1.x)), Struct_1(!all(vec3<bool>(true, false, true))), vec3<bool>(true, true, true), vec3<i32>(-(~18184i), -12265i, var_0.x)));
    let var_4 = arg_0;
    return firstLeadingBit(var_0.x);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_div_i32(_wgslsmith_clamp_i32(~_wgslsmith_clamp_i32(37673i ^ u_input.a.x, 0i, u_input.a.x ^ -25109i), -2147483647i, _wgslsmith_mod_i32(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1188f), _wgslsmith_f_op_vec3_f32(arg_2.zwz * arg_2.wwx)), -15730i)), u_input.a.x);
    var var_1 = -_wgslsmith_mod_i32(_wgslsmith_div_i32(reverseBits(u_input.a.x), ~var_0), 1i);
    let var_2 = Struct_2(528f, Struct_1(false), vec3<bool>(arg_1, true, true), vec3<i32>(6971i, ~(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u, u_input.b.x), 18u)] | _wgslsmith_add_i32(global0[_wgslsmith_index_u32(8465u, 18u)], -10674i)), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, -2147483647i, var_0), -vec3<i32>(var_0, u_input.a.x, u_input.a.x), vec3<i32>(var_0, 0i, -6844i)), _wgslsmith_sub_vec3_i32(max(vec3<i32>(0i, var_0, -2147483647i), vec3<i32>(var_0, 0i, 32455i)), abs(vec3<i32>(0i, global0[_wgslsmith_index_u32(0u, 18u)], -2147483647i))))));
    global1 = array<vec3<u32>, 4>();
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, var_2.a, var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -171f)) + arg_2), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-arg_2))), select(vec4<bool>(true, select(true, true, false), 593f == var_2.a, arg_1), !(!vec4<bool>(var_2.b.a, true, false, arg_1)), true))));
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -171f), Struct_1((1u == u_input.b.x) || all(vec4<bool>(false, arg_1, false, true))), !(!var_2.c), -firstTrailingBit(vec3<i32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 18u)]) | vec3<i32>(5976i, global0[_wgslsmith_index_u32(51817u, 18u)], 1i))));
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> vec3<i32> {
    let var_0 = u_input.b.wyz;
    let var_1 = vec4<i32>(-47959i, u_input.a.x, 1i, -func_2(-916f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a, -2296f, 1147f)))) ^ (-firstLeadingBit(firstLeadingBit(vec4<i32>(0i, u_input.a.x, 23453i, 1i))) ^ vec4<i32>(arg_0.a.d.x | _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2147483647i, arg_0.a.d.x, -1i), vec4<i32>(-22123i, arg_0.a.d.x, 0i, arg_0.a.d.x)), -37358i, arg_0.a.d.x, 0i));
    var var_2 = arg_1;
    global0 = array<i32, 18>();
    let var_3 = Struct_1(true);
    return var_1.xwz;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 4>();
    global0 = array<i32, 18>();
    var var_0 = Struct_1(!any(select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(-vec3<i32>(global0[_wgslsmith_index_u32(38135u, 18u)], ~68i, abs(u_input.a.x)), countOneBits(func_4(func_1(u_input.b.x, var_0.a, vec4<f32>(-151f, -747f, 592f, 698f)), -583f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-1128f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(658f + -470f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-347f, 1007f))))))));
}

