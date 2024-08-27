struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: i32,
    e: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: u32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 6636u;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 2>;

var<private> global3: array<i32, 23> = array<i32, 23>(i32(-2147483648), 1i, i32(-2147483648), 1i, 2147483647i, -14834i, 0i, 0i, 16011i, 1i, 37303i, -9062i, 2147483647i, 2017i, 13091i, 1i, -14715i, -1328i, -35356i, 1i, 1i, 0i, 4224i);

var<private> global4: array<Struct_2, 16>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3) -> i32 {
    let var_0 = 31132u;
    let var_1 = vec2<f32>(235f, 1f);
    global3 = array<i32, 23>();
    let var_2 = 1i;
    global2 = array<Struct_2, 2>();
    return 63096i;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: vec2<u32>) -> i32 {
    global3 = array<i32, 23>();
    global0 = 1u;
    var var_0 = arg_1.c.a;
    var var_1 = vec2<bool>(true, true);
    global3 = array<i32, 23>();
    return max(-abs(~countOneBits(950i)), _wgslsmith_add_i32(~2534i, arg_1.c.c.c.x));
}

fn func_2() -> vec2<i32> {
    var var_0 = ~(vec3<u32>(6462u, ~(~1u), 1u) | select(_wgslsmith_add_vec3_u32(max(vec3<u32>(20181u, 12715u, 45764u), vec3<u32>(11644u, 63926u, 26662u)), vec3<u32>(1u, 1u, 1u)), vec3<u32>(~0u, 1u, ~17952u), !global1.b.zwz));
    global4 = array<Struct_2, 16>();
    var var_1 = Struct_5(Struct_4(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -274f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.b + global1.c.a)), vec3<i32>(-global3[_wgslsmith_index_u32(var_0.x, 23u)], -2147483647i << (var_0.x % 32u), u_input.a.x)), global1.c, Struct_2(firstTrailingBit(vec4<i32>(global3[_wgslsmith_index_u32(47813u, 23u)], -27039i, u_input.a.x, -45123i)), global1.b, Struct_1(-1438f, -263f, -vec3<i32>(global1.c.c.x, 0i, 1i)), global1.b.x), max(min(_wgslsmith_mult_i32(-15841i, global1.c.c.x), -global1.a.x), abs(i32(-1i) * -1i)), 4294967295u), func_4(global1.b, Struct_4(global1.c, global1.c, Struct_2(-vec4<i32>(6767i, 1525i, 30191i, -7388i), global1.b, Struct_1(global1.c.b, -494f, global1.c.c), true), global3[_wgslsmith_index_u32(1u & var_0.x, 23u)], 4294967295u), vec3<i32>(_wgslsmith_dot_vec4_i32(global1.a, vec4<i32>(2147483647i, global1.c.c.x, global1.c.c.x, 0i)) >> (_wgslsmith_div_u32(var_0.x, var_0.x) % 32u), u_input.a.x >> ((var_0.x | var_0.x) % 32u), func_3(Struct_4(global1.c, Struct_1(-1207f, -1050f, vec3<i32>(u_input.a.x, global3[_wgslsmith_index_u32(22858u, 23u)], global1.a.x)), Struct_2(global1.a, vec4<bool>(true, false, false, global1.d), global1.c, true), global3[_wgslsmith_index_u32(4294967295u, 23u)], var_0.x), Struct_3(4294967295u, 78795u))), ~var_0.zx), _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(min(var_0.x, _wgslsmith_dot_vec2_u32(var_0.yz, vec2<u32>(4294967295u, var_0.x))), firstTrailingBit(4294967295u), _wgslsmith_div_u32(19896u, 4514u) >> ((var_0.x | 1u) % 32u))), Struct_3(~var_0.x, ~1u));
    var var_2 = false;
    var var_3 = Struct_3(1u, 0u);
    return global1.a.xz;
}

fn func_1() -> vec3<f32> {
    let var_0 = false;
    let var_1 = !global1.b;
    global4 = array<Struct_2, 16>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-789f + _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-global1.c.a)))));
    var var_3 = select(~(-countOneBits(u_input.a)), max(countOneBits(_wgslsmith_clamp_vec2_i32(min(vec2<i32>(global1.a.x, u_input.a.x), global1.c.c.yx), func_2(), vec2<i32>(-2147483647i, 12361i) & u_input.a)), vec2<i32>(-1i) * -vec2<i32>(69884i, -33848i)), true);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.b, -1629f, -1735f))) * vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(865f + global1.c.b), _wgslsmith_div_f32(var_2, -563f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -319f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2), global1.c.a, false)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 - 224f)), _wgslsmith_f_op_f32(global1.c.b * -458f), _wgslsmith_f_op_f32(1531f - var_2))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_2, 16>();
    let var_0 = vec4<u32>(1u & select(75764u, 25685u >> (1u % 32u), all(select(global1.b.xxw, global1.b.xzx, global1.b.x))), ~4294967295u, (~48586u ^ firstTrailingBit(abs(50169u))) << (_wgslsmith_mult_u32(firstLeadingBit(1u), 1u) % 32u), ~1u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1()));
    var var_2 = global1.b.xy;
    var_1 = vec3<f32>(-500f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec3_f32(func_1()).x)), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(265f - 735f) * _wgslsmith_f_op_f32(f32(-1f) * -101f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global1.c.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(-global1.c.c.yz, _wgslsmith_add_vec2_i32(select(global1.a.zy, ~vec2<i32>(-2147483647i, 1i), global1.b.zy), ~vec2<i32>(global3[_wgslsmith_index_u32(var_0.x, 23u)], 5821i) << ((vec2<u32>(var_0.x, var_0.x) | var_0.xz) % vec2<u32>(32u)))), abs(_wgslsmith_dot_vec2_u32(var_0.yx, var_0.zz)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(var_1.yx, vec2<f32>(global1.c.a, global1.c.a)), vec2<f32>(var_1.x, var_1.x))), vec2<f32>(_wgslsmith_f_op_f32(abs(global1.c.b)), _wgslsmith_f_op_f32(-1133f * 477f))) - var_1.xx));
}

