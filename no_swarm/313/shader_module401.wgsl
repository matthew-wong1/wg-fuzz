struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<f32>(1266f, -468f, 130f, -1000f), i32(-2147483648), vec4<u32>(1u, 0u, 35503u, 0u), 2147483647i), vec4<i32>(i32(-2147483648), -553i, 2626i, 2147483647i), Struct_1(vec4<f32>(-1516f, -1829f, 890f, -1632f), -25015i, vec4<u32>(4294967295u, 2732u, 4294967295u, 0u), 1i));

var<private> global1: Struct_2;

var<private> global2: array<f32, 13>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: u32) -> bool {
    global0 = Struct_2(global1.a, global0.b, global0.c);
    var var_0 = _wgslsmith_div_vec2_f32(global0.a.a.ww, _wgslsmith_f_op_vec2_f32(global0.c.a.xw - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0, 13u)] * global2[_wgslsmith_index_u32(arg_0, 13u)]), -292f))));
    global1 = Struct_2(global0.a, vec4<i32>(global0.c.b, countOneBits(20312i), global0.a.b, ~(-2147483647i)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a.a))), u_input.c, ~vec4<u32>(_wgslsmith_add_u32(7862u, global0.a.c.x), global0.c.c.x, arg_0 << (8278u % 32u), global0.c.c.x), u_input.a.x));
    global1 = Struct_2(global1.a, ~(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e.x, 1i, -21388i, -5461i), vec4<i32>(global1.b.x, -1i, 0i, global1.a.b)) << (global0.c.c % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(474f, global1.c.a.x, 124f, 1529f)) + _wgslsmith_f_op_vec4_f32(-global0.c.a)), _wgslsmith_f_op_vec4_f32(trunc(global0.c.a)))), 1i << ((~global0.a.c.x << (_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, arg_0, global1.a.c.x), global0.c.c.xwx) % 32u)) % 32u), vec4<u32>(global0.c.c.x, arg_0 & global1.a.c.x, abs(global0.c.c.x | 5007u), firstTrailingBit(global0.c.c.x)), -(-u_input.b.x << (global1.a.c.x % 32u))));
    let var_1 = Struct_2(global0.c, vec4<i32>(global1.c.b, global1.b.x, 1i, u_input.e.x | ~1i), global1.a);
    return false;
}

fn func_3(arg_0: bool) -> Struct_2 {
    global2 = array<f32, 13>();
    var var_0 = any(!vec3<bool>(true, all(vec3<bool>(true, arg_0, arg_0)), !arg_0 != true));
    global0 = Struct_2(global0.c, vec4<i32>(2147483647i, ~select(~35219i, select(-2147483647i, -32823i, arg_0), any(vec3<bool>(false, true, arg_0))), u_input.d.x, global1.c.d), global0.a);
    global2 = array<f32, 13>();
    global1 = Struct_2(global1.a, _wgslsmith_add_vec4_i32(global0.b, vec4<i32>(-firstTrailingBit(-46696i), 21620i, -(-27638i ^ u_input.d.x), i32(-1i) * -12304i)), global0.a);
    return Struct_2(global1.a, vec4<i32>(-24825i, global1.c.b, _wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i, global0.a.d), max(0i, u_input.e.x) >> (~0u % 32u)), select(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(-16258i, 1i, global0.c.d, u_input.e.x), vec4<i32>(global0.b.x, u_input.b.x, u_input.c, global0.b.x))), _wgslsmith_add_i32(~u_input.a.x, global0.a.b), select(any(vec4<bool>(false, false, true, false)), false, !arg_0))), global1.c);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> StorageBuffer {
    var var_0 = global0.c.c.x;
    var var_1 = ~global1.c.c;
    global1 = func_3(all(vec3<bool>(true, true, func_2(~var_1.x))));
    var_0 = abs(_wgslsmith_sub_u32(abs(~var_1.x >> (arg_1 % 32u)), ~var_1.x));
    let var_2 = -max(~2147483647i, 8338i);
    return StorageBuffer(arg_0.zz, global0.a.c << (global1.c.c % vec4<u32>(32u)), -_wgslsmith_mod_i32(~0i, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(global1.b.wwz, _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.c.x, global1.c.c.x, global0.c.c.x, 9102u), vec4<u32>(global0.a.c.x, global0.a.c.x, 31918u, 32614u) ^ global0.a.c), 4294967295u), vec3<u32>(_wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(global0.c.c.x, 1u, global0.c.c.x)), 0u, 0u)));
}

