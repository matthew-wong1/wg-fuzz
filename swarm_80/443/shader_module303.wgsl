struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: i32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27>;

var<private> global1: u32;

var<private> global2: Struct_3 = Struct_3(Struct_2(Struct_1(vec4<f32>(1387f, -952f, -1643f, -718f), 0u), vec4<u32>(0u, 0u, 27484u, 19507u), 69771i, vec4<f32>(-1036f, -695f, -330f, 1000f)));

var<private> global3: Struct_3 = Struct_3(Struct_2(Struct_1(vec4<f32>(-122f, 371f, -2203f, 1830f), 44870u), vec4<u32>(6313u, 4294967295u, 4294967295u, 26921u), 7837i, vec4<f32>(783f, 1220f, 1000f, -590f)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    let var_0 = -reverseBits(-24127i);
    global0 = array<Struct_3, 27>();
    let var_1 = global0[_wgslsmith_index_u32(~(~firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u) >> (vec2<u32>(32162u, global3.a.a.b) % vec2<u32>(32u)), ~arg_0.b.ww))), 27u)];
    var var_2 = vec4<u32>(0u, var_1.a.a.b, ~(~_wgslsmith_dot_vec3_u32(global3.a.b.yyw ^ vec3<u32>(1u, 4294967295u, global3.a.b.x), ~vec3<u32>(17227u, global2.a.a.b, var_1.a.a.b))), _wgslsmith_add_u32(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, global3.a.b.x, u_input.c), ~vec3<u32>(global3.a.b.x, 21277u, 18691u))), _wgslsmith_add_u32(global3.a.a.b, 0u)));
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_1.a.a.b, countOneBits(global2.a.b.x)), 27u)];
    return Struct_1(_wgslsmith_f_op_vec4_f32(-var_1.a.d), abs(53781u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1867f, global3.a.a.a.x, global3.a.d.x, 323f), vec4<f32>(211f, global2.a.d.x, -521f, -219f))) + global2.a.d), 46981u), reverseBits(vec4<u32>(global3.a.a.b, ~_wgslsmith_mod_u32(global2.a.a.b, 0u), ~_wgslsmith_div_u32(1u, 84467u), _wgslsmith_sub_u32(6753u << (global2.a.a.b % 32u), ~1u))), -(firstLeadingBit(0i) | global3.a.c), _wgslsmith_f_op_vec4_f32(round(global2.a.a.a)));
    var var_2 = ~vec4<i32>(global2.a.c, _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a, global3.a.c, global2.a.c), 1i), max(u_input.d.x >> (global3.a.a.b % 32u), -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.a.c, global2.a.c, 54513i), vec3<i32>(var_1.c, global3.a.c, u_input.b)) & -9350i) << (global2.a.b % vec4<u32>(32u));
    let var_3 = vec4<i32>(2147483647i, ~(-10444i), 0i, 0i);
    let var_4 = true;
    var var_5 = Struct_3(Struct_2(func_1(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a.a.x) + _wgslsmith_f_op_f32(f32(-1f) * -409f))), var_1.b, _wgslsmith_mod_i32(-reverseBits(-2147483647i), firstTrailingBit(max(-2147483647i, var_3.x))), global2.a.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.b, ~(-(var_1.c >> (~34942u % 32u))), var_5.a.a.a.x);
}

