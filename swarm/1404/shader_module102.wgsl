struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_2, 24>;

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(613f, false), Struct_1(-1289f, true), Struct_1(641f, true), Struct_1(2145f, false), Struct_1(1412f, true), Struct_1(1889f, true), Struct_1(1050f, false));

var<private> global3: bool = true;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: f32) -> f32 {
    global3 = false;
    global1 = array<Struct_2, 24>();
    global1 = array<Struct_2, 24>();
    var var_0 = false;
    global3 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<i32>, arg_3: i32) -> vec4<f32> {
    var var_0 = true;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.xz + vec2<f32>(global0.x, global0.x)) - global0.wz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, 110f))) * -978f))), true);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(func_3(global0.xz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-319f))))), !any(select(select(vec3<bool>(false, var_1.b, false), vec3<bool>(var_1.b, var_1.b, false), false), !vec3<bool>(var_1.b, var_1.b, true), true | var_1.b)));
    var var_3 = vec3<u32>(arg_1, firstLeadingBit(24490u), 1u);
    var_3 = _wgslsmith_sub_vec3_u32(reverseBits(min(u_input.b, min(u_input.b, vec3<u32>(53277u, arg_1, u_input.c.x) << (u_input.b % vec3<u32>(32u))))), vec3<u32>(arg_1, max(u_input.b.x, 29812u), _wgslsmith_dot_vec3_u32(u_input.c.wwx, ~vec3<u32>(4294967295u, var_3.x, var_3.x))) & (vec3<u32>(_wgslsmith_mod_u32(30919u, arg_1), arg_1, ~arg_1) << (min(vec3<u32>(u_input.b.x, 78852u, u_input.c.x), abs(u_input.b)) % vec3<u32>(32u))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-1121f * var_2.a), _wgslsmith_f_op_f32(global0.x + 127f), -1040f, -272f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(1303f, var_1.a, -1809f, 1082f) - vec4<f32>(786f, var_2.a, 1000f, global0.x)), vec4<f32>(global0.x, var_1.a, global0.x, 1922f)))))));
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_1 {
    global3 = true;
    global0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(func_2(min(25559i, u_input.a.x), 9659u, vec4<i32>(-43526i, arg_1, -2147483647i, arg_1) & vec4<i32>(arg_1, -10087i, u_input.d, arg_1), arg_1 | arg_1)), vec4<f32>(_wgslsmith_div_f32(global0.x, 1000f), global0.x, _wgslsmith_f_op_f32(abs(361f)), -1000f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, global0.x, global0.x) * vec4<f32>(1678f, 1078f, 1034f, 610f))) + vec4<f32>(_wgslsmith_f_op_f32(arg_0 * -1000f), _wgslsmith_f_op_f32(abs(177f)), _wgslsmith_f_op_f32(func_3(global0.zy, -896f)), _wgslsmith_f_op_f32(-arg_0))))));
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, arg_1 ^ -10153i, -60881i), -vec3<i32>(8785i, -14879i, 0i)), true);
    let var_1 = vec2<i32>(u_input.d, ~(~u_input.d));
    var var_2 = global2[_wgslsmith_index_u32(u_input.c.x, 7u)];
    return Struct_1(_wgslsmith_f_op_f32(-var_2.a), var_0.c);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> f32 {
    global1 = array<Struct_2, 24>();
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(func_2(-1132i, reverseBits(0u), ~_wgslsmith_sub_vec4_i32(~vec4<i32>(0i, u_input.a.x, u_input.a.x, -29903i), -vec4<i32>(33302i, u_input.d, u_input.a.x, 0i)), (_wgslsmith_add_i32(-14194i, -18067i) >> (_wgslsmith_sub_u32(4294967295u, arg_1) % 32u)) & min(_wgslsmith_div_i32(u_input.a.x, 0i), countOneBits(2147483647i))))));
    global0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, global0.x, arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(func_1(global0.x, 15797i).a, _wgslsmith_f_op_f32(min(global0.x, global0.x)), false)) + arg_0.a))));
    global1 = array<Struct_2, 24>();
    var var_0 = global1[_wgslsmith_index_u32(~4294967295u, 24u)];
    return _wgslsmith_div_f32(var_0.a.a, _wgslsmith_f_op_f32(round(-1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 24>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_4(func_1(global0.x, u_input.d | -1i), ~u_input.c.x << (~68031u % 32u), Struct_1(_wgslsmith_f_op_f32(trunc(global0.x)), true))), global0.x));
    global3 = all(select(!vec2<bool>(true, u_input.b.x <= u_input.c.x), vec2<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), false), vec2<bool>(true, true)));
    var var_1 = _wgslsmith_clamp_u32(u_input.c.x, u_input.b.x & 4294967295u, ~_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, 1u, 41202u), firstTrailingBit(u_input.c.wzz)), ~vec3<u32>(u_input.b.x, 0u, 4294967295u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, var_0.x));
    let var_3 = vec2<u32>(u_input.c.x, ~(~u_input.c.x << (min(~1u, _wgslsmith_mult_u32(u_input.c.x, u_input.b.x)) % 32u)));
    let var_4 = ~u_input.b.x | var_3.x;
    var var_5 = _wgslsmith_sub_vec3_i32(vec3<i32>(max(u_input.d, reverseBits(u_input.d >> (var_4 % 32u))), u_input.a.x, ~(-1i)), _wgslsmith_mult_vec3_i32(-abs(vec3<i32>(u_input.d, 1i, u_input.d)), -vec3<i32>(1i, ~8127i, _wgslsmith_add_i32(-1092i, 26901i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(global0.yxw)))), var_5.x);
}

