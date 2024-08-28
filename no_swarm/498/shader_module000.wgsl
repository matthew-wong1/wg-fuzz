struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 22> = array<bool, 22>(false, true, false, true, true, true, false, true, true, true, false, false, false, false, true, false, true, false, true, true, false, false);

var<private> global1: array<bool, 3>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    global0 = array<bool, 22>();
    var var_0 = Struct_3(0u, ~min((u_input.a.wz >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u))) >> (_wgslsmith_clamp_vec2_u32(u_input.a.wx, vec2<u32>(25929u, u_input.b), vec2<u32>(27746u, u_input.b)) % vec2<u32>(32u)), u_input.a.yz));
    var_0 = Struct_3(1u, ~vec2<u32>(4294967295u, ~var_0.b.x));
    var var_1 = u_input.a.x;
    global1 = array<bool, 3>();
    return 0u;
}

fn func_2() -> Struct_3 {
    let var_0 = ~abs(u_input.c.zx);
    global1 = array<bool, 3>();
    var var_1 = 0u;
    let var_2 = Struct_2(196f, ~vec4<u32>(56907u, u_input.a.x, func_3(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 22u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 22u)])), ~(u_input.d | 13000u)), -u_input.c);
    global0 = array<bool, 22>();
    return Struct_3(17945u, u_input.a.xw);
}

fn func_1() -> u32 {
    var var_0 = func_2();
    global1 = array<bool, 3>();
    var var_1 = Struct_1(false, all(select(vec4<bool>(select(false, global0[_wgslsmith_index_u32(1u, 22u)], true), !global0[_wgslsmith_index_u32(var_0.a, 22u)], any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 22u)], false, false, true)), u_input.c.x < u_input.c.x), select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 3u)], global1[_wgslsmith_index_u32(1u, 3u)], false, global0[_wgslsmith_index_u32(1u, 22u)]), vec4<bool>(true, true, true, true), true), select(!vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(63344u, 22u)]), !vec4<bool>(global0[_wgslsmith_index_u32(58945u, 22u)], true, global0[_wgslsmith_index_u32(var_0.b.x, 22u)], true), false))), ~vec3<u32>(19461u, func_2().a >> (_wgslsmith_mult_u32(14815u, u_input.a.x) % 32u), ~func_2().b.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(756f)))), 1951f));
    var_0 = func_2();
    return 4294967295u | u_input.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.c;
    var var_1 = func_1();
    var var_2 = ((select(select(52397u, 12611u, global0[_wgslsmith_index_u32(u_input.a.x, 22u)]), u_input.a.x, !global1[_wgslsmith_index_u32(1u, 3u)]) >> ((func_3(vec3<bool>(false, false, true)) >> (u_input.d % 32u)) % 32u)) != func_2().a) || !global0[_wgslsmith_index_u32(min(u_input.d, _wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.b, 3764u, 11964u), u_input.a.ywx), u_input.a.zyz ^ u_input.a.wzw)), 22u)];
    var var_3 = !((global1[_wgslsmith_index_u32(u_input.d >> (u_input.d % 32u), 3u)] | global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(2745u, 1u), 22u)]) & (firstTrailingBit(_wgslsmith_div_i32(var_0.x, var_0.x)) != -2147483647i));
    var_0 = _wgslsmith_mult_vec3_i32(countOneBits(min(~u_input.c, ~u_input.c)), vec3<i32>(i32(-1i) * -1i, countOneBits(var_0.x), -u_input.c.x)) & abs(vec3<i32>(u_input.c.x, firstTrailingBit(countOneBits(50457i)), ~35793i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zx, 1u);
}

