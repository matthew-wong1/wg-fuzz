struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24>;

var<private> global1: array<Struct_1, 32>;

var<private> global2: f32 = -452f;

var<private> global3: array<Struct_1, 9>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> Struct_1 {
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), 1f);
    var var_0 = 18734u;
    let var_1 = arg_0.a.x;
    let var_2 = Struct_1(-arg_0.a);
    var var_3 = Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(-var_2.a.x, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_2.a.x, 33805i), ~var_2.a.x, firstLeadingBit(u_input.b.x))), var_2.a));
    return Struct_1(firstTrailingBit(vec2<i32>(var_3.a.x, var_3.a.x)));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> f32 {
    global3 = array<Struct_1, 9>();
    var var_0 = ~u_input.b.xyx;
    let var_1 = arg_1;
    var var_2 = -((countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, var_1.a.x), vec2<i32>(u_input.b.x, 0i))) << (_wgslsmith_mod_vec2_u32(reverseBits(vec2<u32>(76927u, 5168u)), _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, u_input.a.x))) % vec2<u32>(32u))) ^ vec2<i32>(-arg_1.a.x, -var_1.a.x));
    let var_3 = ~u_input.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1361f + -102f), _wgslsmith_f_op_f32(max(-820f, -615f)), true != arg_0)))) - 705f));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> u32 {
    global0 = array<Struct_1, 24>();
    global0 = array<Struct_1, 24>();
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(833f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 * 1793f)))), 1444f));
    global1 = array<Struct_1, 32>();
    let var_1 = u_input.a;
    return ~(~countOneBits(0u));
}

fn func_1(arg_0: vec3<f32>, arg_1: u32) -> vec2<u32> {
    global3 = array<Struct_1, 9>();
    var var_0 = func_2(Struct_1(u_input.b.xy), vec2<f32>(147f, _wgslsmith_f_op_f32(-299f + arg_0.x)));
    let var_1 = u_input.b.x;
    var var_2 = vec4<i32>(-u_input.b.x, -3257i, _wgslsmith_sub_i32(~var_1, u_input.b.x), 7911i);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
    return vec2<u32>(max(61307u >> (arg_1 % 32u), func_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(func_3(false, global1[_wgslsmith_index_u32(arg_1, 32u)]))), arg_0.x, func_2(global3[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 9u)], arg_0.zx), _wgslsmith_f_op_f32(select(arg_0.x, 1000f, false)))), ~_wgslsmith_div_u32(arg_1, ~func_4(-1706f, -580f, Struct_1(vec2<i32>(var_0.a.x, u_input.b.x)), arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(countOneBits(vec3<u32>(u_input.a.x, _wgslsmith_div_u32(0u, reverseBits(u_input.a.x)), u_input.a.x)));
    let var_1 = ~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, 4294967295u, 4294967295u, var_0.x), abs(vec4<u32>(u_input.a.x, 1u, 49879u, u_input.a.x)))));
    let var_2 = Struct_1(u_input.b.yx);
    global0 = array<Struct_1, 24>();
    let var_3 = _wgslsmith_clamp_vec2_u32(vec2<u32>(~u_input.a.x, 4294967295u), u_input.a ^ max(~abs(var_0.zx), var_0.zy), firstLeadingBit(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(446f, 527f, -502f))), ~(~29654u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f))), 1490f, _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.b.x, ~var_2.a.x), var_2.a.x), ~var_3.x);
}

