struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1092f;

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<Struct_2, 30>;

var<private> global3: vec4<f32>;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1() -> vec3<u32> {
    let var_0 = ~(~_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 25805u, u_input.a.x), ~vec3<u32>(u_input.c.x, u_input.d, 4294967295u), u_input.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(global4.d.a.x, global4.d.a.x, 27944u), _wgslsmith_clamp_vec3_u32(vec3<u32>(global4.b.a.x, 0u, 4294967295u), vec3<u32>(0u, 0u, 1u), vec3<u32>(u_input.c.x, 0u, global4.b.a.x)), ~global4.a.a)));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(global4.d.d.x, global4.b.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -802f))), global3.zz)));
    let var_2 = ~abs(-(~(~global4.e)));
    let var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~(~(0u << (u_input.d % 32u))), _wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0.x, 55098u, 4294967295u), vec4<u32>(var_0.x, var_0.x, u_input.c.x, u_input.a.x)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, var_0.x, 70317u, global4.b.a.x), vec4<u32>(global4.b.a.x, var_0.x, u_input.d, var_0.x), vec4<u32>(53894u, u_input.c.x, 4294967295u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(2675u, global4.d.a.x, u_input.a.x, global4.b.a.x), vec4<u32>(var_0.x, 0u, global4.d.a.x, u_input.a.x))))), u_input.a);
    return global4.b.a;
}

fn func_3() -> i32 {
    global3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-566f)) * 170f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-853f)) * _wgslsmith_f_op_f32(-global3.x)), global3.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1541f, -1109f, global4.d.c.x, global4.b.d.x), vec4<f32>(global3.x, global3.x, global4.b.c.x, global3.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.a.c.x, -707f, global3.x, global4.a.c.x) - vec4<f32>(-663f, 244f, global3.x, global4.b.c.x)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1717f, 1857f, global4.d.c.x, global4.b.d.x))))))));
    var var_0 = _wgslsmith_f_op_f32(sign(global4.a.d.x));
    var var_1 = Struct_4(Struct_1(vec3<u32>(u_input.a.x, global4.d.a.x, u_input.a.x), true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-463f, 477f, global4.b.c.x))) * _wgslsmith_f_op_vec3_f32(global4.b.c - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 1903f, global3.x)))), _wgslsmith_f_op_vec2_f32(trunc(global3.xx))));
    let var_2 = u_input.d;
    let var_3 = Struct_2(Struct_1(~_wgslsmith_add_vec3_u32(vec3<u32>(global4.a.a.x, 50207u, 4294967295u) | vec3<u32>(u_input.c.x, 33246u, var_2), vec3<u32>(1u, var_1.a.a.x, 63562u)), false, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-480f, var_1.a.d.x, global4.b.d.x)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(450f, -609f, var_1.a.d.x)))), vec3<f32>(-1260f, global4.a.c.x, var_1.a.d.x))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f * global3.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -172f))))), var_1.a, u_input.b, Struct_1(vec3<u32>(~(u_input.a.x ^ 23199u), 1u >> (var_1.a.a.x % 32u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.c.x, 15959u, 17784u), _wgslsmith_mod_u32(36804u, var_1.a.a.x))), true, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, -766f, var_1.a.d.x), global3.zxz)), vec2<f32>(_wgslsmith_f_op_f32(-global4.b.d.x), global4.d.c.x)), vec3<i32>(reverseBits(-12534i), u_input.b, _wgslsmith_dot_vec4_i32(~vec4<i32>(-33914i, 2147483647i, u_input.b, 29094i), -_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 0i, global4.e.x), vec4<i32>(u_input.b, global4.c, -53444i, -50999i)))));
    return global4.e.x;
}

fn func_2(arg_0: Struct_3) -> vec3<f32> {
    let var_0 = global4.d;
    global1 = array<Struct_1, 17>();
    global0 = 728f;
    global1 = array<Struct_1, 17>();
    var var_1 = _wgslsmith_div_i32(func_3(), 1i);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-723f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * -584f), var_0.d.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-2938f - 141f), _wgslsmith_f_op_f32(var_0.c.x + 1688f)) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global4.b.c), _wgslsmith_f_op_vec3_f32(var_0.c - vec3<f32>(global3.x, 927f, var_0.c.x)))))) - vec3<f32>(var_0.c.x, 627f, -1288f));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> StorageBuffer {
    return StorageBuffer(~(vec2<i32>(arg_3.x, _wgslsmith_div_i32(24333i, u_input.b)) >> (u_input.c % vec2<u32>(32u))), global3.wz, vec4<i32>(~2147483647i, global4.c, arg_3.x, u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global4.e.zx;
    let var_1 = global2[_wgslsmith_index_u32(0u, 30u)];
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-715f))), -833f, true))));
    let x = u_input.a;
    s_output = func_4(_wgslsmith_mult_vec2_i32(var_1.e.yx, vec2<i32>(_wgslsmith_div_i32(global4.c, ~(-43751i)), var_1.c)), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(75222u << (global4.b.a.x % 32u), ~global4.d.a.x, global4.a.a.x), _wgslsmith_div_vec3_u32(vec3<u32>(global4.b.a.x, u_input.a.x, 0u), func_1())), any(!(!vec3<bool>(true, false, global4.d.b))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(global3.yzw, var_1.d.c)) + _wgslsmith_f_op_vec3_f32(func_2(var_2))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, _wgslsmith_div_f32(-379f, global4.b.c.x)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.d.x, var_2.a) * vec2<f32>(var_2.a, global3.x)))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, ~31561u), abs(~vec2<u32>(var_1.b.a.x, global4.a.a.x)) | countOneBits(~u_input.a.zx)), 17u)], global4.e ^ min(vec3<i32>(-1i << (var_1.b.a.x % 32u), i32(-1i) * -1930i, ~global4.c), ~reverseBits(global4.e)));
}

