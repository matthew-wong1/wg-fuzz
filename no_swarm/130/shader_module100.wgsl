struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: i32,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 6>;

var<private> global1: Struct_3 = Struct_3(vec3<i32>(0i, 29701i, -20386i), -1202f, -669f, 33480i);

var<private> global2: array<Struct_2, 5>;

var<private> global3: Struct_2 = Struct_2(vec4<i32>(2147483647i, -1i, 0i, -2350i), Struct_1(-9623i, vec4<f32>(511f, 480f, -1846f, -875f), 1u), Struct_1(1i, vec4<f32>(858f, 1000f, 647f, 1078f), 36499u), vec4<i32>(1i, 1i, 1i, 2147483647i));

var<private> global4: Struct_4 = Struct_4(2502i, vec4<bool>(true, true, false, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    var var_0 = ~(global3.a << (~vec4<u32>(global3.b.c & global3.b.c, _wgslsmith_add_u32(u_input.c.x, u_input.a.x), ~global3.c.c, u_input.c.x) % vec4<u32>(32u)));
    let var_1 = Struct_4(13405i, vec4<bool>(all(select(global4.b.xz, vec2<bool>(true, true), global4.b.x)) || (_wgslsmith_f_op_f32(global3.b.b.x * -1480f) < _wgslsmith_f_op_f32(-global3.b.b.x)), global4.b.x, false, global4.b.x));
    return !(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.b.x)) > global0[_wgslsmith_index_u32(0u, 6u)]));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = vec4<bool>(!(u_input.a.x >= 1u), func_3(), all(vec3<bool>(true, global4.b.x, any(vec3<bool>(global4.b.x, false, false)) || any(global4.b.zx))), true);
    global1 = Struct_3(max(abs(global1.a | global3.a.wxx), _wgslsmith_div_vec3_i32(global3.a.wzw, vec3<i32>(17566i, u_input.d, 1i))) | max(global3.d.ywy, ~(-vec3<i32>(0i, global3.b.a, u_input.b))), global3.c.b.x, global3.c.b.x, 1i);
    global0 = array<f32, 6>();
    global2 = array<Struct_2, 5>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global3.c.b.yx * vec2<f32>(global1.b, 581f)))))));
    return global3.c;
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> u32 {
    var var_0 = func_2(_wgslsmith_mult_i32(global4.a, _wgslsmith_mod_i32(-2147483647i, _wgslsmith_clamp_i32(~0i, -global1.a.x, -1i))));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-647f * _wgslsmith_f_op_f32(-global3.b.b.x)), global3.b.b.x, ~_wgslsmith_sub_u32(~25484u, 72754u) <= _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(15983u, 4511u, var_0.c, 20611u)))));
    var var_2 = ~u_input.d;
    var var_3 = ~abs(~1u);
    var var_4 = Struct_4(func_2(_wgslsmith_mod_i32(max(global4.a, _wgslsmith_mod_i32(9872i, -2147483647i)), _wgslsmith_div_i32(14637i, func_2(37761i).a))).a, select(vec4<bool>(true, false, global4.b.x, true), select(!(!global4.b), global4.b, false), select(global4.b, global4.b, !select(global4.b, vec4<bool>(arg_1, arg_1, false, global4.b.x), true))));
    return global3.b.c;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.yzx, ~vec4<u32>(1u, func_1(Struct_3(global3.d.yzz, 1000f, global3.b.b.x, 25653i), global4.b.x), 12382u, countOneBits(global3.c.c)) | vec4<u32>(u_input.c.x << (~global3.b.c % 32u), func_1(Struct_3(vec3<i32>(-44803i, u_input.d, global1.a.x), -2573f, -1936f, 2147483647i), false), firstTrailingBit(global3.c.c), max(global3.c.c | 53412u, _wgslsmith_mod_u32(66787u, 4294967295u))), ~(~max(-25522i, _wgslsmith_mult_i32(2147483647i, 1i))), global3.c.c & u_input.a.x);
}

