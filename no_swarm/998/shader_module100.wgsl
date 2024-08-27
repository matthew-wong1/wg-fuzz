struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 24>;

var<private> global1: array<Struct_1, 27>;

var<private> global2: Struct_3 = Struct_3(Struct_2(0u), vec4<f32>(-574f, 417f, -1772f, -126f), vec3<i32>(2147483647i, -29772i, 10543i), vec2<i32>(-1i, 2147483647i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> Struct_1 {
    var var_0 = global2.a;
    var var_1 = max(global2.a.a, 4294967295u);
    var var_2 = global2.b.zx;
    var_1 = global2.a.a;
    var_1 = ~countOneBits(0u);
    return global1[_wgslsmith_index_u32(global2.a.a, 27u)];
}

fn func_3() -> vec2<i32> {
    global1 = array<Struct_1, 27>();
    let var_0 = vec2<i32>(abs(u_input.d), _wgslsmith_mod_i32(_wgslsmith_div_i32(2147483647i, -12542i) ^ (u_input.c << (10961u % 32u)), ~(-(~global2.c.x))));
    let var_1 = u_input.a;
    var var_2 = vec3<bool>(true, (i32(-1i) * -u_input.c) <= 1i, !any(func_2().d.yy));
    var var_3 = Struct_4(-1571f, vec3<i32>(firstTrailingBit(-2147483647i), 59240i, var_0.x));
    return global2.c.xy;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>) -> u32 {
    var var_0 = func_2();
    let var_1 = 290f;
    global2 = Struct_3(Struct_2(arg_1.x), _wgslsmith_f_op_vec4_f32(-var_0.c), ~vec3<i32>(~(-7879i), var_0.a.x, -2147483647i), -(~_wgslsmith_add_vec2_i32(var_0.a.xy, reverseBits(global2.d))));
    var var_2 = _wgslsmith_div_u32(arg_1.x, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, arg_1.x, u_input.a, arg_1.x), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.x, 4294967295u, u_input.a, 0u), vec4<u32>(64738u, 95333u, 8488u, 4294967295u))), countOneBits(vec4<u32>(69186u, 857u, 1u, arg_1.x)))) & (~_wgslsmith_add_u32(~arg_1.x, 0u) ^ u_input.a);
    let var_3 = func_3();
    return ~(~_wgslsmith_mod_u32(~(u_input.a | global2.a.a), global2.a.a));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec3<u32>) -> u32 {
    let var_0 = arg_0.d;
    var var_1 = false;
    var var_2 = any(func_2().d);
    let var_3 = global1[_wgslsmith_index_u32(global2.a.a, 27u)];
    let var_4 = var_3.c.zz;
    return 10294u;
}

fn func_5(arg_0: bool) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1334f, global2.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, global2.b.x, arg_0)) - _wgslsmith_f_op_f32(floor(1541f))), global2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1856f) * 1455f)) * vec4<f32>(global2.b.x, global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x * global2.b.x)), 1568f)) * vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)), global2.b.x, all(select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x))), _wgslsmith_f_op_f32(sign(-271f)), _wgslsmith_f_op_f32(f32(-1f) * -548f)));
    let var_1 = Struct_3(global2.a, func_2().c, _wgslsmith_mod_vec3_i32(vec3<i32>(1i, _wgslsmith_sub_i32(global2.d.x, u_input.b) ^ u_input.b, _wgslsmith_clamp_i32(abs(global2.d.x), 1i, 2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(global2.c.x, 32123i, 2147483647i) & select(global2.c, global2.c, arg_0), ~vec3<i32>(u_input.d, -7167i, 21060i))), global2.d);
    var var_2 = Struct_3(Struct_2(_wgslsmith_add_u32(~4294967295u, ~var_1.a.a)), var_1.b, vec3<i32>(~0i, ~67418i << (_wgslsmith_mod_u32(var_1.a.a, ~37607u) % 32u), global2.d.x), global2.d >> (~_wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(u_input.a, 4294967295u)), vec2<u32>(91186u, global2.a.a) << (vec2<u32>(global2.a.a, var_1.a.a) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_3 = 30711i;
    global1 = array<Struct_1, 27>();
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(Struct_2(1u), _wgslsmith_f_op_vec4_f32(global2.b + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-956f, global2.b.x, 873f, -1185f)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.b.x, global2.b.x, global2.b.x, global2.b.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.b.x, 785f, -2062f, global2.b.x))))))), vec3<i32>(_wgslsmith_dot_vec4_i32(select(vec4<i32>(5227i, -40309i, 28123i, global2.d.x), vec4<i32>(2147483647i, 19906i, 33887i, 0i), false), ~vec4<i32>(u_input.c, global2.c.x, 1i, global2.d.x) << (vec4<u32>(7372u, 19825u, 1u, 17651u) % vec4<u32>(32u))), ~(-(~(-1i))), ~24148i), global2.d);
    global2 = func_5(!(func_4(global1[_wgslsmith_index_u32(func_1(global2.b, vec3<u32>(u_input.a, 23683u, 9525u)), 27u)], ~vec4<u32>(12292u, u_input.a, global2.a.a, u_input.a), Struct_2(4294967295u), firstLeadingBit(vec3<u32>(51250u, 16280u, global2.a.a))) != (0u | global2.a.a)));
    let var_0 = vec4<i32>(u_input.c, 0i, ~func_3().x, i32(-1i) * -1i) & vec4<i32>(7154i, global2.c.x, ~_wgslsmith_div_i32(1i, ~u_input.b), u_input.b);
    let var_1 = global1[_wgslsmith_index_u32(u_input.a, 27u)];
    var var_2 = -127f;
    global1 = array<Struct_1, 27>();
    var var_3 = var_0;
    var_3 = vec4<i32>(-1i) * -var_0;
    let x = u_input.a;
    s_output = StorageBuffer(38248u, vec2<u32>(func_4(func_2(), ~vec4<u32>(u_input.a, global2.a.a, global2.a.a, 38684u), global2.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(28408u, 0u, global2.a.a), vec3<u32>(global2.a.a, 4294967295u, 0u))), ~1u) << (_wgslsmith_mult_vec2_u32(vec2<u32>(12404u << (u_input.a % 32u), _wgslsmith_mod_u32(1u, u_input.a)), _wgslsmith_mod_vec2_u32(~vec2<u32>(0u, global2.a.a), ~vec2<u32>(0u, 4294967295u))) % vec2<u32>(32u)), ~(~firstTrailingBit(_wgslsmith_mod_u32(25996u, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(-1600f)), var_1.c.x)) + var_1.c.x)));
}

