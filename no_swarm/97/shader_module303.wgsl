struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec4<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_4, 22>;

var<private> global2: array<Struct_1, 24>;

var<private> global3: array<Struct_1, 31>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<u32> {
    let var_0 = (vec2<i32>(reverseBits(u_input.c.x), countOneBits(1014i << (global0.d % 32u))) << ((~u_input.b.yy << (vec2<u32>(15640u, global0.d) % vec2<u32>(32u))) % vec2<u32>(32u))) & -firstLeadingBit(abs(vec2<i32>(global0.b.x, global0.b.x)));
    var var_1 = Struct_2(-_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.c, vec3<i32>(-5827i, 2147483647i, var_0.x)), vec3<i32>(global0.b.x, abs(-150i), 1i)), Struct_1(global0.a, -u_input.c, !(!global0.c), 6532u));
    var var_2 = true;
    var var_3 = Struct_4(_wgslsmith_div_vec3_u32(abs(vec3<u32>(0u, abs(0u), 4294967295u)), vec3<u32>(var_1.b.d, 0u, _wgslsmith_add_u32(48853u, ~var_1.b.d))));
    return _wgslsmith_mod_vec4_u32(u_input.a, u_input.a >> (vec4<u32>(1903u, global0.d, _wgslsmith_add_u32(countOneBits(4294967295u), ~var_1.b.d), ~_wgslsmith_sub_u32(var_1.b.d, var_1.b.d)) % vec4<u32>(32u)));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>) -> Struct_1 {
    global3 = array<Struct_1, 31>();
    global0 = Struct_1(-1972f, vec3<i32>((-global0.b.x | u_input.c.x) << (0u % 32u), u_input.c.x, -u_input.c.x), !global0.c, global0.d);
    let var_0 = false;
    var var_1 = global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(~func_3(), vec4<u32>(~1u, 1u, _wgslsmith_div_u32(global0.d, arg_0), u_input.b.x))) << (_wgslsmith_add_u32(~_wgslsmith_mod_u32(max(0u, 0u), _wgslsmith_sub_u32(global0.d, arg_0)), 120786u) % 32u), 22u)];
    var var_2 = -(~u_input.c);
    return Struct_1(_wgslsmith_f_op_f32(506f + global0.a), ~_wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.c.x | var_2.x, -u_input.c.x), _wgslsmith_div_vec3_i32(vec3<i32>(global0.b.x, 2147483647i, 1i), max(vec3<i32>(-2147483647i, -1i, 1i), global0.b))), global0.c, 4294967295u);
}

fn func_1() -> Struct_1 {
    global1 = array<Struct_4, 22>();
    let var_0 = ((~_wgslsmith_mult_u32(u_input.b.x, u_input.a.x) & (u_input.b.x ^ global0.d)) >= _wgslsmith_dot_vec3_u32(~(~u_input.b), ~(~vec3<u32>(global0.d, 4294967295u, global0.d)))) | true;
    let var_1 = u_input.b;
    global2 = array<Struct_1, 24>();
    var var_2 = select(~(firstTrailingBit(min(var_1, u_input.a.xwy)) << (~abs(vec3<u32>(var_1.x, var_1.x, global0.d)) % vec3<u32>(32u))), ~_wgslsmith_clamp_vec3_u32(~u_input.a.xxx, var_1, u_input.b), var_1.x <= ~var_1.x);
    return func_2(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, u_input.a), ~firstLeadingBit(vec4<u32>(1u, 42635u, global0.d, 24868u) & vec4<u32>(var_2.x, 1u, 1u, 4294967295u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a, 754f)), vec2<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-global0.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 24>();
    let var_0 = func_1();
    global1 = array<Struct_4, 22>();
    global2 = array<Struct_1, 24>();
    let var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(func_1().b.x << (~(~u_input.a.x) % 32u), global0.b.x << (4294967295u % 32u), -8382i), ~abs(vec3<i32>(-var_0.b.x, countOneBits(var_0.b.x), countOneBits(u_input.c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec4<i32>(select(global0.b.x, global0.b.x, true), global0.b.x, -4538i, -1i)), u_input.a.yy, _wgslsmith_div_i32(-48373i, var_0.b.x ^ var_0.b.x) & func_2(~u_input.b.x & var_0.d, vec2<f32>(-344f, _wgslsmith_f_op_f32(f32(-1f) * -474f))).b.x, 4294967295u, 77311u);
}

