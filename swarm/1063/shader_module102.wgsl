struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: f32;

var<private> global2: bool = false;

var<private> global3: Struct_2;

var<private> global4: array<i32, 9> = array<i32, 9>(-1135i, 1i, 11239i, 17862i, 50252i, 34568i, 0i, 17886i, -38755i);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> i32 {
    global3 = Struct_2(global3.a);
    let var_0 = global3.a.c.x;
    global0 = array<f32, 20>();
    let var_1 = Struct_2(global3.a);
    var var_2 = var_1;
    return -34913i;
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    var var_0 = ~vec3<i32>(func_3(1010f), firstLeadingBit(18389i), global3.a.b) >> ((~abs(~vec3<u32>(u_input.b.x, 56802u, u_input.b.x)) << (vec3<u32>(~u_input.d, ~(~4294967295u), 5845u) % vec3<u32>(32u))) % vec3<u32>(32u));
    global4 = array<i32, 9>();
    let var_1 = -(~max(vec4<i32>(66585i, -47388i, u_input.c, firstLeadingBit(-12566i)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, global3.a.b, 0i, -18850i), vec4<i32>(var_0.x, 0i, 35398i, -1i))));
    let var_2 = Struct_3(~vec3<i32>(1i, var_0.x, reverseBits(global3.a.b)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global3.a.a + arg_2.a)), _wgslsmith_add_i32(-var_0.x, -var_0.x), vec3<bool>(any(vec2<bool>(false, global3.a.c.x)), arg_2.d == -2133f, true), arg_2.a.x)), vec3<f32>(_wgslsmith_f_op_f32(sign(630f)), -118f, arg_2.d), Struct_1(vec2<f32>(965f, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(global3.a.d * arg_2.a.x))), max(arg_2.b, -2147483647i), !(!select(vec3<bool>(global3.a.c.x, arg_2.c.x, arg_2.c.x), vec3<bool>(arg_2.c.x, arg_2.c.x, false), arg_2.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2.d), global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 20u)])))));
    global3 = var_2.b;
    return Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.d, arg_2.a.x)), -1970i, vec3<bool>(arg_2.c.x, true, ~min(u_input.d, 20312u) <= _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.a, u_input.d, u_input.a, u_input.b.x)), vec4<u32>(u_input.d, 1u, 54832u, u_input.d))), -119f);
}

fn func_1() -> Struct_2 {
    global3 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(-global3.a.a), global3.a.c.x, global3.a));
    let var_0 = vec4<i32>(global4[_wgslsmith_index_u32(~u_input.d, 9u)], u_input.c, -2147483647i, firstLeadingBit(global3.a.b));
    let var_1 = firstTrailingBit(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d, 4294967295u, u_input.d), vec3<u32>(u_input.d, u_input.a, 1u), vec3<u32>(u_input.b.x, 38964u, 52289u))) ^ (~(vec3<u32>(u_input.b.x, 0u, 1u) | vec3<u32>(u_input.d, 66720u, u_input.b.x)) >> (_wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.d, 3880u, u_input.b.x), vec3<u32>(7871u, u_input.d, u_input.a), global3.a.c), vec3<u32>(0u, u_input.a, u_input.d)) % vec3<u32>(32u))));
    let var_2 = max(firstLeadingBit(var_0), firstLeadingBit(vec4<i32>(-(~0i), 2147483647i, firstLeadingBit(~var_0.x), reverseBits(reverseBits(global4[_wgslsmith_index_u32(1u, 9u)])))));
    global2 = any(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.a.a * global3.a.a), vec2<f32>(1112f, 473f))), select(false, !any(global3.a.c), !global3.a.c.x), global3.a).c);
    return Struct_2(global3.a);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> u32 {
    var var_0 = vec4<i32>(u_input.e, ~(~(-global3.a.b) ^ arg_1.a.b), _wgslsmith_mod_i32(arg_0.a.b >> (arg_2 % 32u), -52436i), arg_1.a.b);
    var var_1 = true;
    let var_2 = -181f;
    let var_3 = ~vec4<u32>(0u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_2), vec2<u32>(u_input.d, 35189u)) % 32u), ~(~(~1u)), 38293u, ~0u);
    var var_4 = arg_1;
    return ~(~u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(u_input.a << (_wgslsmith_mod_u32(~u_input.b.x, u_input.a) % 32u), ~(~1u));
    let var_1 = u_input.e;
    global4 = array<i32, 9>();
    let var_2 = 1u;
    var var_3 = 30195i;
    let var_4 = _wgslsmith_clamp_u32(23354u, min(func_4(func_1(), Struct_2(Struct_1(global3.a.a, -28955i, vec3<bool>(true, false, false), 312f)), _wgslsmith_mod_u32(50400u, u_input.a), _wgslsmith_f_op_f32(step(-1947f, global3.a.d))), var_0.x), ~u_input.b.x >> (~select(var_2, var_0.x, true) % 32u)) | 4775u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~u_input.b.x, 10331u) ^ 20237u, 39299u), countOneBits(var_1));
}

