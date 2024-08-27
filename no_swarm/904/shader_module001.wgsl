struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(0u, 59275u, -1i, vec4<i32>(2147483647i, 1i, i32(-2147483648), i32(-2147483648)), Struct_2(Struct_1(vec2<f32>(-182f, -598f))));

var<private> global1: Struct_4 = Struct_4(Struct_2(Struct_1(vec2<f32>(-966f, -1482f))), vec3<f32>(-1000f, -491f, 490f), vec4<u32>(19722u, 0u, 38768u, 0u));

var<private> global2: array<Struct_2, 19>;

var<private> global3: array<Struct_2, 11>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = max(vec3<u32>(~(~(~global1.c.x)), _wgslsmith_mod_u32(global0.a, ~(31957u & global1.c.x)), 1u), global1.c.yxy);
    let var_2 = Struct_2(global1.a.a);
    let var_3 = Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(max(4294967295u | u_input.a, u_input.d.x >> (global0.a % 32u)), _wgslsmith_dot_vec3_u32(~u_input.d.zxz, vec3<u32>(0u, 40247u, 4259u))) & global0.a, 19u)], _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(select(1494f, _wgslsmith_f_op_f32(select(global1.b.x, global0.e.a.a.x, var_0.x)), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1807f, global0.e.a.a.x)), var_2.a.a.x), global0.e.a.a.x))), u_input.d << (((~u_input.d | ~vec4<u32>(4294967295u, global0.a, var_1.x, 1500u)) << (reverseBits(vec4<u32>(4294967295u, var_1.x, 4294967295u, u_input.d.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_4 = global1.a.a;
    return ~(~(~(global1.c.x << (~global0.b % 32u))));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_3(global1.c.x, ~(1u << (global0.a % 32u)), -25983i, global0.d, Struct_2(global1.a.a));
    var var_1 = vec2<i32>(global0.d.x, var_0.d.x & ~(-22363i));
    var_0 = Struct_3(abs(func_3() | 1u), ~min(~(global1.c.x << (var_0.b % 32u)), global0.a), min(_wgslsmith_mod_i32(13274i, var_0.d.x), var_1.x << (0u % 32u)), ~global0.d, Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1451f, var_0.e.a.a.x))))));
    global3 = array<Struct_2, 11>();
    global2 = array<Struct_2, 19>();
    return global1.a.a;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> f32 {
    global2 = array<Struct_2, 19>();
    global2 = array<Struct_2, 19>();
    let var_0 = global1.a.a.a.x;
    global1 = Struct_4(Struct_2(func_2(select(u_input.a, global1.c.x ^ 32126u, true))), global1.b, abs(~u_input.d));
    global3 = array<Struct_2, 11>();
    return -678f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-1450f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(312f * -217f)))) + global0.e.a.a.x), _wgslsmith_f_op_f32(round(1367f)), _wgslsmith_div_f32(-507f, _wgslsmith_f_op_f32(func_1(global1.a, true, global1.a.a))));
    let var_1 = ~firstTrailingBit(2147483647i);
    var var_2 = global2[_wgslsmith_index_u32(global0.a, 19u)];
    var var_3 = global0.d.zx;
    var var_4 = u_input.d.zzx;
    global0 = Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(max(u_input.d, vec4<u32>(var_4.x, 33158u, global0.a, global1.c.x)), firstLeadingBit(u_input.d)), _wgslsmith_dot_vec2_u32(~var_4.yx, countOneBits(vec2<u32>(u_input.d.x, 4294967295u)))), u_input.d.zyy), _wgslsmith_mod_u32(65021u, u_input.a) >> (u_input.d.x % 32u), abs(var_1), vec4<i32>(-1i) * -_wgslsmith_add_vec4_i32(-global0.d, vec4<i32>(-13364i, global0.c, -2147483647i, 1i)), global0.e);
    let x = u_input.a;
    s_output = StorageBuffer(global0.d.yyz, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1016f), func_2(47091u).a.x) - global0.e.a.a.x), select(_wgslsmith_div_i32(-1i, var_1), countOneBits(-50472i << (~u_input.a % 32u)), true));
}

