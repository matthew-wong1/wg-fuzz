struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: bool,
    d: vec2<i32>,
    e: bool,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: Struct_1,
    d: i32,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(Struct_2(vec4<bool>(false, true, true, false)));

var<private> global1: Struct_1;

var<private> global2: bool = true;

var<private> global3: i32;

var<private> global4: array<f32, 23> = array<f32, 23>(708f, -689f, -370f, 1000f, -655f, 822f, -1279f, 500f, -350f, 575f, 189f, -1125f, -1233f, 244f, -892f, -345f, 987f, 2342f, 983f, 312f, 221f, 727f, 231f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    global3 = u_input.b.x;
    return Struct_1(((global1.a << (~vec3<u32>(4294967295u, arg_0.x, u_input.c) % vec3<u32>(32u))) & ~(~vec3<u32>(7124u, global1.c.x, u_input.c))) >> (_wgslsmith_add_vec3_u32(vec3<u32>(~0u, global1.a.x, _wgslsmith_sub_u32(4294967295u, arg_0.x)), min(vec3<u32>(u_input.c, 1u, 141895u), vec3<u32>(9155u, 0u, arg_0.x)) >> (~vec3<u32>(17830u, 0u, 49104u) % vec3<u32>(32u))) % vec3<u32>(32u)), u_input.c, _wgslsmith_div_vec2_u32(arg_0, _wgslsmith_sub_vec2_u32(~_wgslsmith_clamp_vec2_u32(global1.c, arg_0, vec2<u32>(arg_0.x, 1u)), vec2<u32>(_wgslsmith_add_u32(u_input.c, global1.b), arg_0.x))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: vec2<u32>) -> vec2<i32> {
    var var_0 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(countOneBits(vec3<u32>(~1u, _wgslsmith_div_u32(0u, u_input.c), ~4294967295u))), vec3<u32>(abs(arg_2), ~(~(~0u)), ~1u)), 23u)];
    var var_1 = !all(!vec3<bool>(u_input.c < 9026u, true, all(global0.a.a.yy)));
    global0 = Struct_5(Struct_2(!vec4<bool>(true, arg_0.x != true, true, arg_0.x)));
    var var_2 = Struct_5(global0.a);
    let var_3 = func_2(global1.a.xy);
    return u_input.b;
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    global1 = func_2(~vec2<u32>(~u_input.c, 9768u));
    var var_0 = ~u_input.b.x << (22435u % 32u);
    let var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-35288i << (global1.a.x % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.a, u_input.b.x, 0i), ~vec4<i32>(-2147483647i, u_input.a, -34032i, 8263i))), -min(-vec2<i32>(-1i, u_input.b.x), func_3(global0.a.a.yz, Struct_1(global1.a, 46586u, global1.c), global1.b, global1.c))), _wgslsmith_mult_i32(u_input.a, -(i32(-1i) * -10771i)));
    let var_2 = vec3<bool>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.c, 23u)] + global4[_wgslsmith_index_u32(0u, 23u)]) != _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~25850u, 23u)]), true, all(global0.a.a.zzz));
    var_0 = u_input.a;
    return 77132i;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-884f + 387f), _wgslsmith_div_f32(global4[_wgslsmith_index_u32(1u, 23u)], _wgslsmith_f_op_f32(f32(-1f) * -234f))))), 22536u, -14457i, vec3<i32>(_wgslsmith_add_i32(-1i, (u_input.a << (4294967295u % 32u)) | func_1(vec3<f32>(global4[_wgslsmith_index_u32(u_input.c, 23u)], global4[_wgslsmith_index_u32(u_input.c, 23u)], global4[_wgslsmith_index_u32(u_input.c, 23u)]))), -2147483647i, -12613i), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.x, u_input.c, ~global1.c.x, ~107023u), vec4<u32>(countOneBits(26287u), reverseBits(5145u), _wgslsmith_clamp_u32(global1.c.x, u_input.c, 8380u), global1.c.x)), ~u_input.c));
}

