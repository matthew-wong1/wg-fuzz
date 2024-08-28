struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1121f, 1000f);

var<private> global1: array<Struct_2, 13>;

var<private> global2: vec2<bool>;

var<private> global3: array<vec2<u32>, 11>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.c.yx, _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, 0u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.a.x), arg_0.c.xwx)), ~min(vec2<u32>(arg_0.b, u_input.b), global3[_wgslsmith_index_u32(37810u, 11u)]))), _wgslsmith_div_vec2_u32(reverseBits(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(65320u, arg_0.b) ^ 0u, 11u)]), _wgslsmith_sub_vec2_u32(max(~vec2<u32>(30278u, 23145u), vec2<u32>(29267u, u_input.b) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u))), u_input.a.wx)));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x - -1000f), -147f, _wgslsmith_f_op_f32(354f - global0.x))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1588f, global0.x, 826f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1499f, 249f)), select(vec3<bool>(arg_0.d, false, false), vec3<bool>(arg_0.d, false, true), vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-460f, global0.x, global0.x)), vec3<f32>(-641f, global0.x, 1166f))))));
    global1 = array<Struct_2, 13>();
    return Struct_3(global1[_wgslsmith_index_u32(abs(~(~var_0.x << (arg_0.b % 32u))), 13u)]);
}

fn func_3(arg_0: Struct_5) -> Struct_1 {
    let var_0 = u_input.e;
    global2 = !vec2<bool>(any(vec2<bool>(!arg_0.c.a.a.a, true)), global2.x);
    var var_1 = vec3<u32>(u_input.b, 45232u, 1u);
    var var_2 = Struct_4(arg_0.c.a, arg_0.c.a.b);
    let var_3 = true;
    return func_2(Struct_1(func_2(Struct_1(global2.x, var_2.a.a.b & u_input.b, ~var_2.a.a.c, false)).a.a.a, var_2.a.a.c.x, ~((vec4<u32>(u_input.a.x, var_1.x, u_input.a.x, var_2.a.a.c.x) << (u_input.a % vec4<u32>(32u))) & u_input.a), func_2(arg_0.c.a.a).a.a.d)).a.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> bool {
    global0 = vec2<f32>(-195f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-799f * -532f), _wgslsmith_f_op_f32(-1070f * global0.x)))));
    global2 = select(vec2<bool>(arg_0.a, true), !(!(!select(vec2<bool>(true, true), vec2<bool>(true, arg_0.a), vec2<bool>(arg_1.a.a.a, arg_1.a.a.a)))), vec2<bool>(true, arg_0.a));
    var var_0 = Struct_1(!(!(!global2.x) || (2147483647i >= (1i << (arg_1.a.a.c.x % 32u)))), reverseBits(arg_0.c.x), vec4<u32>(_wgslsmith_dot_vec2_u32(max(global3[_wgslsmith_index_u32(arg_0.b, 11u)], vec2<u32>(arg_0.b, arg_1.a.a.c.x)), ~arg_0.c.wz), u_input.b, arg_1.a.a.c.x, 29555u) | arg_0.c, all(!(!(!vec2<bool>(arg_0.a, true)))));
    let var_1 = countOneBits(_wgslsmith_sub_vec3_u32(abs(vec3<u32>(arg_1.a.a.c.x, 1u, var_0.c.x)), arg_0.c.yww) | vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_0.c.x, 49124u, 30657u), var_0.c), arg_0.b, _wgslsmith_mod_u32(u_input.b, 61150u))) & arg_1.a.a.c.wzx;
    global1 = array<Struct_2, 13>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1137f) == global0.x;
}

fn func_1(arg_0: Struct_4, arg_1: f32) -> Struct_3 {
    var var_0 = 446f;
    global3 = array<vec2<u32>, 11>();
    global3 = array<vec2<u32>, 11>();
    var var_1 = abs(i32(-1i) * -(~(2147483647i ^ u_input.c)));
    let var_2 = Struct_1(!global2.x, 1u, vec4<u32>(arg_0.a.a.b, 1u, u_input.b, 4294967295u), func_4(func_3(Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, 1000f, -911f) * vec3<f32>(1499f, -1000f, arg_1)), _wgslsmith_f_op_f32(abs(664f)), func_2(arg_0.a.a), 7902u)), arg_0));
    return Struct_3(Struct_2(Struct_1(any(!vec3<bool>(false, global2.x, arg_0.a.a.a)), ~var_2.b, _wgslsmith_sub_vec4_u32(~u_input.a, vec4<u32>(arg_0.a.a.c.x, 21029u, arg_0.a.a.c.x, 4294967295u)), true), _wgslsmith_div_vec4_i32(arg_0.b, _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, u_input.d.x, 7432i, 1i), reverseBits(arg_0.a.b)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<f32>) -> f32 {
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x - 1400f)) + arg_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<f32>(_wgslsmith_f_op_f32(func_5(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.b, u_input.b, 41290u, u_input.a.x)), u_input.a), func_1(Struct_4(global1[_wgslsmith_index_u32(u_input.b ^ 1u, 13u)], ~vec4<i32>(64495i, u_input.d.x, u_input.e.x, 18855i)), global0.x), Struct_3(func_2(func_1(Struct_4(Struct_2(Struct_1(global2.x, u_input.b, u_input.a, global2.x), vec4<i32>(u_input.d.x, u_input.c, u_input.c, -79788i)), u_input.d), global0.x).a.a).a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2110f, -100f, global0.x) + vec3<f32>(global0.x, global0.x, global0.x)) + vec3<f32>(global0.x, global0.x, 778f))))), _wgslsmith_f_op_f32(-global0.x));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-1339f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 1361f)), _wgslsmith_f_op_f32(-620f * global0.x), global2.x))), -557f);
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(u_input.e));
}

