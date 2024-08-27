struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: vec3<u32>) -> i32 {
    global0 = array<Struct_1, 29>();
    var var_0 = u_input.b.x;
    let var_1 = arg_1.b;
    return abs(~u_input.a.x);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec4<u32>) -> i32 {
    var var_0 = arg_1.c;
    let var_1 = arg_2.x;
    var var_2 = Struct_2(select(arg_0, !arg_1.a, arg_1.a), vec4<i32>(-(-49374i ^ firstLeadingBit(arg_1.c.b)), max(~(i32(-1i) * -20814i), -17268i), -2147483647i | reverseBits(max(var_0.b, -29996i)), -10925i), Struct_1(vec3<f32>(124f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1471f - 632f) * var_0.c), _wgslsmith_f_op_f32(ceil(-795f))), func_3(arg_1.c.a.x, Struct_1(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.c.a.x, var_0.c, arg_1.c.c), vec3<f32>(105f, -1698f, 833f))), var_0.b, 534f), arg_2.wzy), 666f));
    let var_3 = var_2.a;
    var_2 = Struct_2(arg_0, vec4<i32>(abs(abs(~var_2.c.b)), -(~max(u_input.a.x, -19819i)), firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_mult_i32(arg_1.b.x, var_0.b), i32(-1i) * -2147483647i)), u_input.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 1037f, var_0.c))), ~min(_wgslsmith_clamp_i32(u_input.a.x, -1i, -19743i), _wgslsmith_clamp_i32(-10847i, var_2.b.x, var_0.b)), _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -144f))))));
    return -52813i;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec2<u32>) -> Struct_1 {
    global0 = array<Struct_1, 29>();
    var var_0 = vec4<f32>(-252f, 1278f, -1224f, 269f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -483f)), 418f) + var_0.yxx), -3234i, _wgslsmith_f_op_f32(select(-192f, var_0.x, !(_wgslsmith_f_op_f32(f32(-1f) * -196f) != _wgslsmith_f_op_f32(var_0.x - -1129f)))));
    var var_2 = any(vec2<bool>(arg_2.x < 0u, -898f <= var_1.c));
    let var_3 = !(arg_0 <= 29949i);
    return global0[_wgslsmith_index_u32(~(~(arg_2.x >> (u_input.b.x % 32u))), 29u)];
}

fn func_5(arg_0: Struct_1) -> vec4<i32> {
    return -(~_wgslsmith_sub_vec4_i32(countOneBits(~vec4<i32>(-10903i, u_input.a.x, 0i, arg_0.b)), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, arg_0.b, -1i, -17655i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, 21616i, 15384i, u_input.a.x), vec4<i32>(-6275i, 2147483647i, -1i, -22923i)))));
}

fn func_1(arg_0: vec3<i32>) -> vec4<i32> {
    var var_0 = Struct_2(vec2<bool>(true, true), select(func_5(func_4(func_2(vec2<bool>(true, true), Struct_2(vec2<bool>(true, false), vec4<i32>(-4062i, arg_0.x, u_input.a.x, arg_0.x), Struct_1(vec3<f32>(-203f, 1384f, -184f), u_input.a.x, -1000f)), vec4<u32>(u_input.b.x, 67337u, u_input.b.x, u_input.b.x)), u_input.b.x, _wgslsmith_clamp_vec2_u32(u_input.b.zz, u_input.b.zy, vec2<u32>(u_input.b.x, 1u)))), -countOneBits(~vec4<i32>(1i, 73090i, -6703i, arg_0.x)), true), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 1u), 29u)]);
    var var_1 = _wgslsmith_dot_vec2_i32(arg_0.zx, vec2<i32>(_wgslsmith_sub_i32(0i, arg_0.x), func_5(func_4(-1i, ~31985u, select(u_input.b.yy, vec2<u32>(u_input.b.x, u_input.b.x), true))).x));
    return vec4<i32>(func_3(-277f, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_0.c.a, vec3<f32>(var_0.c.c, var_0.c.c, 386f), false))), -(i32(-1i) * -6321i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a.x))), ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, 1u)))), i32(-1i) * -countOneBits(_wgslsmith_div_i32(-2147483647i, arg_0.x)), ~54102i, select(0i, _wgslsmith_mod_i32(-1i, u_input.a.x), !var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 29>();
    var var_0 = Struct_2(select(vec2<bool>((u_input.a.x <= u_input.a.x) | any(vec2<bool>(false, true)), false), vec2<bool>(true, true), any(vec4<bool>(true, true, true, true))), min(func_1(vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i) >> (~u_input.b % vec3<u32>(32u))), vec4<i32>(func_1(_wgslsmith_mod_vec3_i32(vec3<i32>(6721i, 2147483647i, 0i), vec3<i32>(2147483647i, 61905i, u_input.a.x))).x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 0i), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), ~countOneBits(u_input.a.x), u_input.a.x)), global0[_wgslsmith_index_u32(min(u_input.b.x, _wgslsmith_mult_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 32248u), vec3<u32>(1u, u_input.b.x, u_input.b.x)), _wgslsmith_mult_u32(u_input.b.x >> (0u % 32u), ~1u))), 29u)]);
    global0 = array<Struct_1, 29>();
    var_0 = Struct_2(vec2<bool>(!var_0.a.x, any(var_0.a)), var_0.b, func_4(countOneBits(i32(-1i) * -28157i), ~10885u, abs(vec2<u32>(u_input.b.x & u_input.b.x, ~u_input.b.x))));
    var var_1 = 0i;
    let var_2 = any(select(vec3<bool>(any(!vec3<bool>(var_0.a.x, false, var_0.a.x)), 61771i > ~var_0.c.b, true), select(select(vec3<bool>(true, true, true), !vec3<bool>(var_0.a.x, var_0.a.x, false), vec3<bool>(var_0.a.x, var_0.a.x, false)), vec3<bool>(all(var_0.a), var_0.a.x, !var_0.a.x), !(!vec3<bool>(false, true, var_0.a.x))), var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.c.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.a.x - var_0.c.a.x), _wgslsmith_f_op_f32(-var_0.c.a.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -162f)))));
}

