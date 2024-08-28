struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<bool>,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<i32, 23>;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(4294967295u, 52695u), vec2<u32>(56199u, 6348u), vec4<bool>(false, true, true, false), i32(-2147483648), 0u);

var<private> global3: array<Struct_1, 27>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>) -> u32 {
    global0 = global2.c.yx;
    var var_0 = ~(u_input.b.x | reverseBits(u_input.a & global2.d));
    var var_1 = -1i;
    let var_2 = vec4<u32>(~1u, 1u, 4294967295u, global2.b.x);
    var var_3 = arg_0;
    return ~abs(~_wgslsmith_sub_u32(0u, max(arg_1.x, 1u)));
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    var var_0 = Struct_1(global2.b, vec2<u32>(func_3(arg_0, global2.b), global2.b.x) << (global2.b % vec2<u32>(32u)), global2.c, reverseBits(~global2.d), ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global2.b, vec2<u32>(global2.a.x, 4294967295u)), ~vec2<u32>(global2.b.x, 0u)));
    let var_1 = Struct_1(~select(select(global2.a, _wgslsmith_mod_vec2_u32(global2.b, global2.b), select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, false), vec2<bool>(true, global2.c.x))), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(global2.a, global2.b), select(var_0.a, vec2<u32>(var_0.b.x, global2.b.x), global2.c.x), select(vec2<u32>(var_0.e, 4294967295u), var_0.b, vec2<bool>(global2.c.x, true))), select(!global2.c.wx, var_0.c.zz, !var_0.c.xy)), var_0.a, var_0.c, _wgslsmith_sub_i32(~_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.b.xy, u_input.b.xx), 1i), firstTrailingBit(1i)), ~(~9945u));
    var var_2 = !any(select(select(global2.c.zyw, !var_0.c.wwz, any(vec4<bool>(var_0.c.x, false, global0.x, true))), vec3<bool>(true, true, true), all(vec2<bool>(false, false))));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), -711f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1086f)), 1000f), arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))));
    let var_4 = var_0.d;
    return ~var_0.a.x;
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: vec2<f32>, arg_3: Struct_1) -> vec3<f32> {
    let var_0 = 109175u << (_wgslsmith_sub_u32(~global2.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.a.x, global2.b.x, 0u, 80709u) | vec4<u32>(arg_3.b.x, arg_3.a.x, global2.e, arg_3.b.x), ~vec4<u32>(0u, 1164u, 30995u, 4294967295u)), ~1u)) % 32u);
    let var_1 = Struct_1(vec2<u32>(func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-749f, 1000f, arg_2.x, arg_2.x) - vec4<f32>(-643f, arg_2.x, arg_2.x, arg_2.x))), ~20590u) | arg_3.b, vec2<u32>(~(~arg_3.a.x | 84990u), var_0), vec4<bool>(all(global2.c.xw), true, false, true), firstLeadingBit(~firstTrailingBit(-u_input.b.x)), ~(~(~1u)));
    var var_2 = arg_3;
    let var_3 = arg_1;
    let var_4 = global2.b;
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(abs(arg_2.x)), _wgslsmith_f_op_f32(-arg_2.x))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x + arg_2.x) + -561f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, 594f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.x)) * _wgslsmith_f_op_f32(-454f - -1668f))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: f32, arg_2: vec4<bool>) -> bool {
    global3 = array<Struct_1, 27>();
    var var_0 = _wgslsmith_dot_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(global2.b.x, global2.b.x), global2.b, ~global2.a)) | global2.b, vec2<u32>(global2.e, _wgslsmith_add_u32(_wgslsmith_div_u32(~global2.b.x, ~19407u), _wgslsmith_mult_u32(global2.e, abs(global2.e)))));
    var var_1 = global3[_wgslsmith_index_u32(66826u ^ global2.e, 27u)];
    var var_2 = 1u;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1017f, arg_1, arg_0.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -606f, -1198f) + arg_0))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1440f, -749f, 113f)) + vec3<f32>(arg_1, arg_1, 274f)))));
    return var_1.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global2.b, global2.b >> (_wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(global2.b, vec2<u32>(4294967295u, global2.b.x)), vec2<u32>(~38659u, global2.e)) % vec2<u32>(32u)), vec4<bool>(func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(18019i, global2.c.x, vec2<f32>(-805f, 184f), Struct_1(vec2<u32>(global2.e, global2.b.x), global2.b, global2.c, u_input.b.x, global2.e))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(862f, -397f, -909f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1704f) - _wgslsmith_f_op_f32(max(1211f, -997f))), global2.c), true, global2.c.x, global0.x), ~global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~max(vec4<u32>(global2.b.x, global2.a.x, global2.e, global2.e), vec4<u32>(global2.a.x, global2.a.x, 18633u, 10892u)), min(vec4<u32>(4294967295u, 1u, global2.e, global2.e), firstLeadingBit(vec4<u32>(global2.a.x, global2.e, global2.e, global2.b.x)))), 23u)], ~max(14570u, ~global2.e) ^ func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(116f, -961f, 667f, -1943f)) - vec4<f32>(-1000f, -460f, -1000f, 1110f)), select(global2.a, global2.b, vec2<bool>(global2.c.x, global2.c.x))));
    global0 = select(select(var_0.c.zx, var_0.c.yw, vec2<bool>(!global0.x, all(global2.c.wyx))), vec2<bool>(var_0.c.x, true), global2.c.wz);
    let var_1 = select(!(!global2.c.xz), vec2<bool>(var_0.c.x || global0.x, false), true);
    global2 = global3[_wgslsmith_index_u32(var_0.e ^ firstTrailingBit(4294967295u), 27u)];
    var var_2 = Struct_1(firstLeadingBit(var_0.a | vec2<u32>(449u >> (var_0.e % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, 0u, 35004u), vec3<u32>(0u, global2.e, 0u)))), vec2<u32>(_wgslsmith_mod_u32(abs(global2.b.x), func_2(vec4<f32>(105f, -1351f, 1780f, -1491f))), 1u) ^ vec2<u32>(global2.b.x, _wgslsmith_clamp_u32(35669u ^ global2.e, global2.a.x, min(84869u, 4294967295u))), !global2.c, ~(~(global1[_wgslsmith_index_u32(0u, 23u)] >> (var_0.a.x % 32u))) << (~global2.b.x % 32u), reverseBits(global2.e) << (global2.b.x % 32u));
    var_2 = global3[_wgslsmith_index_u32(var_0.b.x, 27u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, (global2.d & -1159i) << (var_0.a.x % 32u), -reverseBits(~global1[_wgslsmith_index_u32(var_2.e, 23u)]), 14866i), -1338f, -(~(-u_input.a)), firstLeadingBit(reverseBits(countOneBits(vec4<u32>(24684u, 102608u, var_2.e, 7029u)))), min(select(i32(-1i) * -2147483647i, abs(global2.d), var_1.x & var_1.x) >> (_wgslsmith_mod_u32(_wgslsmith_mult_u32(global2.b.x, global2.a.x), var_2.b.x) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(50628i, var_2.d, u_input.b.x, var_2.d), -_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, -1i, var_2.d, global1[_wgslsmith_index_u32(var_0.e, 23u)]), vec4<i32>(var_0.d, var_2.d, global1[_wgslsmith_index_u32(0u, 23u)], -37588i)))));
}

