struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(vec2<bool>(false, false), Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(1u, 59096u, 0u, 0u), 87450u)), Struct_2(vec2<bool>(true, false), Struct_1(vec4<bool>(false, false, true, true), vec4<u32>(1u, 1u, 56963u, 62668u), 1u)), 2147483647i, vec2<u32>(53364u, 1u));

var<private> global1: array<i32, 24>;

var<private> global2: array<vec2<f32>, 3> = array<vec2<f32>, 3>(vec2<f32>(-455f, 127f), vec2<f32>(-819f, -1010f), vec2<f32>(-197f, -629f));

var<private> global3: Struct_1;

var<private> global4: Struct_3;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    global0 = Struct_3(global4.a, global4.b, _wgslsmith_dot_vec4_i32(vec4<i32>(-44041i, -26392i, _wgslsmith_div_i32(global4.c, global0.c) | 1i, min(i32(-1i) * -21674i, u_input.a.x)), -_wgslsmith_add_vec4_i32(u_input.a, _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(global4.c, 0i, global0.c, global1[_wgslsmith_index_u32(global4.a.b.c, 24u)])))), vec2<u32>(4294967295u, min(_wgslsmith_mult_u32(arg_0.b.x, 4294967295u), 1u) | ~reverseBits(1u)));
    let var_0 = Struct_4(_wgslsmith_mult_vec4_i32(u_input.a, select(firstLeadingBit(vec4<i32>(global0.c, 12715i, 2147483647i, -3259i)), firstTrailingBit(-vec4<i32>(global1[_wgslsmith_index_u32(global4.d.x, 24u)], 4099i, global1[_wgslsmith_index_u32(53627u, 24u)], u_input.a.x)), global4.b.b.a)), arg_1.x, u_input.a.ywy, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 45149u, 0u, global0.b.b.b.x), abs(vec4<u32>(global3.b.x, arg_0.c, global0.a.b.b.x, 0u))) ^ firstLeadingBit(54951u)));
    global1 = array<i32, 24>();
    global4 = Struct_3(global4.a, global4.b, global4.c << (~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 0u, arg_0.c) ^ vec4<u32>(4294967295u, global4.b.b.c, global0.a.b.b.x, global0.a.b.c), vec4<u32>(var_0.d, arg_0.c, global0.d.x, 4294967295u)) % 32u), firstLeadingBit(global0.b.b.b.zy));
    global1 = array<i32, 24>();
    return global0.a.b.c;
}

fn func_4(arg_0: Struct_4) -> vec4<bool> {
    global1 = array<i32, 24>();
    var var_0 = global4.b;
    let var_1 = Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(global3.a, _wgslsmith_add_vec4_u32(abs(vec4<u32>(56237u, 1u, 4294967295u, global4.d.x)), ~vec4<u32>(arg_0.d, 7352u, 1u, 0u)), 0u)), Struct_2(var_0.a, global4.a.b), -53917i, ~(~max(~global4.d, vec2<u32>(global3.c, 4294967295u) & global3.b.wx)));
    var var_2 = arg_0;
    var var_3 = var_0.b;
    return var_1.b.b.a;
}

fn func_2() -> Struct_3 {
    let var_0 = select(global3.a, func_4(Struct_4(u_input.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-585f)), _wgslsmith_f_op_f32(-966f + -1683f))), u_input.a.zzy, ~func_3(Struct_1(global0.b.b.a, vec4<u32>(global3.c, 1u, 1u, global4.b.b.c), 0u), vec2<f32>(-1395f, 1594f)))), !select(func_4(Struct_4(u_input.a, 2445f, vec3<i32>(global4.c, u_input.a.x, global1[_wgslsmith_index_u32(1u, 24u)]), 11778u)), !select(vec4<bool>(true, true, global4.b.b.a.x, true), global4.a.b.a, global0.a.a.x), select(!vec4<bool>(true, global0.a.b.a.x, true, global3.a.x), vec4<bool>(global3.a.x, global3.a.x, true, false), global3.a.x)));
    var var_1 = ~_wgslsmith_sub_vec4_u32(vec4<u32>(~73360u, 0u, ~global4.d.x, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(max(14217u, global0.d.x), 4294967295u, 25254u, ~0u), countOneBits(abs(vec4<u32>(46516u, 0u, 0u, global0.d.x)))));
    var_1 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(reverseBits(func_3(global0.b.b, global2[_wgslsmith_index_u32(1u, 3u)])), reverseBits(19482u), _wgslsmith_div_u32(abs(31708u), 0u >> (global4.b.b.b.x % 32u)), ~_wgslsmith_dot_vec3_u32(global0.b.b.b.yzw, global4.a.b.b.wyy)), (_wgslsmith_mod_vec4_u32(vec4<u32>(global3.c, global0.d.x, global4.b.b.c, global0.d.x), vec4<u32>(global0.d.x, 0u, 4294967295u, 5956u)) | ~vec4<u32>(global4.b.b.c, var_1.x, global0.b.b.b.x, 1u)) & global0.a.b.b);
    let var_2 = Struct_1(!global4.a.b.a, global4.a.b.b, 12216u);
    global1 = array<i32, 24>();
    return Struct_3(global0.a, global4.b, ~26058i, vec2<u32>(_wgslsmith_mult_u32(~62963u, 1u) >> (_wgslsmith_clamp_u32(global0.a.b.b.x, global0.b.b.c, 1u) % 32u), _wgslsmith_clamp_u32(global0.a.b.c, 1u, var_1.x)));
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = global0.b.b;
    global4 = func_2();
    var var_1 = global4.a.b;
    let var_2 = func_2().a.b;
    return abs(20252i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~select(global0.a.b.b.xw, global0.d, true);
    global3 = global0.b.b;
    let var_1 = -606f;
    let var_2 = func_1(_wgslsmith_f_op_f32(var_1 + -1023f));
    global1 = array<i32, 24>();
    let var_3 = global4.a;
    let var_4 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(global4.b.b.c, max(_wgslsmith_dot_vec3_u32(reverseBits(var_3.b.b.yxx), vec3<u32>(global3.b.x, global3.b.x, 7864u)), max(var_0.x >> (var_3.b.b.x % 32u), global0.a.b.c))), _wgslsmith_dot_vec4_u32(~(var_3.b.b >> ((vec4<u32>(global4.d.x, 0u, global0.b.b.c, global3.c) & global0.b.b.b) % vec4<u32>(32u))), ~vec4<u32>(abs(global4.a.b.b.x), countOneBits(global3.b.x), 0u, ~var_3.b.b.x))), 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(-625f, _wgslsmith_f_op_f32(-838f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - var_1)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1), var_1, -2146f)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, -2091f, var_4.x))))))), _wgslsmith_f_op_f32(-var_4.x), _wgslsmith_mult_vec2_u32(func_2().d, ~vec2<u32>(var_0.x >> (4294967295u % 32u), 4183u & global0.b.b.c)));
}

