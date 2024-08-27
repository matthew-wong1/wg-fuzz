struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: bool,
    c: vec3<bool>,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<bool>(false, false, false, false), false);

var<private> global1: vec2<u32> = vec2<u32>(15178u, 4294967295u);

var<private> global2: array<Struct_2, 28>;

var<private> global3: Struct_2;

var<private> global4: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = 1000f;
    global0 = Struct_3(select(vec4<bool>(true, global3.d == _wgslsmith_f_op_f32(floor(1025f)), any(!vec3<bool>(true, global0.b, true)), any(vec4<bool>(false, true, global3.e.b, global4.e.b)) | false), vec4<bool>(true, true, global0.b, true), global0.a), global4.e.c == select(true, true, global3.c));
    global0 = Struct_3(!select(select(!vec4<bool>(true, false, global3.e.a, global4.e.a), vec4<bool>(false, true, true, global3.c), !vec4<bool>(global3.c, true, global3.e.a, false)), select(select(vec4<bool>(true, global4.c, false, global3.c), global0.a, global0.a), vec4<bool>(global0.b, true, global3.e.b, true), vec4<bool>(global4.c, false, global0.a.x, global0.b)), !select(vec4<bool>(false, global4.e.a, global4.c, global4.e.b), vec4<bool>(true, false, true, false), true)), false);
    var var_1 = false;
    var var_2 = global3.e;
    return vec4<bool>(true, true, var_2.a, max(_wgslsmith_add_u32(~u_input.c, 22990u), max(_wgslsmith_clamp_u32(41971u, 1u, u_input.c), 47028u)) < 4294967295u);
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec2<f32>) -> bool {
    let var_0 = Struct_3(select(!(!global0.a), func_3(), global0.a), !(!all(select(vec4<bool>(global0.b, global0.b, arg_2.c, global4.e.c), vec4<bool>(global0.a.x, false, global3.e.b, global0.b), arg_1))));
    return false;
}

fn func_1() -> vec2<u32> {
    global3 = global2[_wgslsmith_index_u32(3655u, 28u)];
    let var_0 = global4.e.b && func_2(-413f, !(!select(vec4<bool>(true, false, global3.c, true), vec4<bool>(false, true, global3.c, global4.e.a), vec4<bool>(false, true, true, false))), Struct_2(vec3<i32>(countOneBits(global4.b.x), _wgslsmith_dot_vec4_i32(u_input.e, u_input.e), global3.e.d >> (u_input.c % 32u)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, global3.a.x, u_input.e.x), vec3<i32>(global4.b.x, -15913i, 1i), vec3<i32>(global4.e.d, global4.b.x, 0i)), false, global3.d, Struct_1(select(global4.e.b, global4.c, false), global3.c, all(global0.a.yyx), _wgslsmith_div_i32(1i, 2147483647i))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2191f, 140f))))));
    global0 = Struct_3(global0.a, false);
    let var_1 = global3.b;
    let var_2 = !global4.e.a;
    return (~select(~vec2<u32>(u_input.b, 16583u), ~vec2<u32>(u_input.b, u_input.b), global0.a.zw) >> (countOneBits(~select(vec2<u32>(global1.x, 7174u), vec2<u32>(u_input.c, 4294967295u), global0.a.xx)) % vec2<u32>(32u))) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(~23099u, ~u_input.d) << ((vec2<u32>(1u, 1u) >> (~vec2<u32>(4294967295u, global1.x) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<u32>(1u, ~_wgslsmith_div_u32(0u, global1.x))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.x;
    global2 = array<Struct_2, 28>();
    let var_1 = ~global1.x;
    global2 = array<Struct_2, 28>();
    var var_2 = _wgslsmith_div_u32(global1.x, ~(~0u));
    var var_3 = firstTrailingBit(select(_wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(var_1, 58192u), vec2<u32>(var_1, u_input.c)), _wgslsmith_div_vec2_u32(vec2<u32>(26968u, 4294967295u) ^ vec2<u32>(0u, var_1), _wgslsmith_mod_vec2_u32(vec2<u32>(40352u, u_input.b), vec2<u32>(4625u, u_input.c)))), _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(28405u, global1.x), vec2<u32>(global1.x, 4294967295u)), abs(vec2<u32>(u_input.c, 31159u))) | vec2<u32>(1u, 1u), global3.c));
    let var_4 = vec2<u32>(var_1, ~u_input.d);
    var_3 = ~select(firstTrailingBit(func_1()), var_4, select(vec2<bool>(-1479i >= u_input.e.x, global0.a.x && false), select(global0.a.xy, global0.a.zz, all(global0.a.xzx)), !vec2<bool>(true, global0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_div_u32(4294967295u, var_1) | abs(countOneBits(4294967295u)), 66855u), _wgslsmith_mod_i32(select(1i, u_input.e.x, global4.c), -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.d, global3.d, 291f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.d, 747f, global3.d)), global3.c)))));
}

