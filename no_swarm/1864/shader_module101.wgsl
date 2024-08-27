struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
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

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<Struct_2, 30>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec2<u32> {
    return select(~vec2<u32>(min(0u, ~1u), u_input.e.x), u_input.a, any(select(!(!vec3<bool>(true, global0.x, arg_0.b)), select(select(vec3<bool>(global0.x, false, true), vec3<bool>(true, true, true), vec3<bool>(arg_1.b, global0.x, arg_1.b)), select(vec3<bool>(arg_1.b, false, arg_0.b), vec3<bool>(false, arg_1.b, true), vec3<bool>(false, arg_1.b, arg_0.b)), !vec3<bool>(arg_0.b, true, false)), select(vec3<bool>(arg_0.b, false, arg_1.b), vec3<bool>(global0.x, false, false), arg_0.b || global0.x))));
}

fn func_2(arg_0: bool) -> vec2<u32> {
    return _wgslsmith_mod_vec2_u32(u_input.a, reverseBits((vec2<u32>(0u, 0u) & func_3(Struct_1(vec2<i32>(u_input.b.x, u_input.d), global0.x, vec3<i32>(u_input.d, -37675i, u_input.b.x), u_input.e.x), Struct_1(u_input.b.zx, arg_0, vec3<i32>(u_input.d, -25392i, -1i), 4444u))) & vec2<u32>(~u_input.e.x, ~u_input.e.x)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: bool) -> f32 {
    var var_0 = vec3<u32>(max(max(_wgslsmith_mult_u32(arg_1.c, u_input.e.x), ~u_input.a.x), ~(0u ^ arg_2.d)) >> (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(~u_input.c.zx, min(vec2<u32>(arg_2.d, arg_2.d), u_input.a)), ~func_2(false)) % 32u), ~4294967295u, func_2(!(0i == arg_2.a.x)).x);
    let var_1 = ~(~8058u) >> (1u % 32u);
    global1 = array<Struct_2, 30>();
    var var_2 = !global0.yz;
    global1 = array<Struct_2, 30>();
    return arg_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 30>();
    var var_0 = _wgslsmith_f_op_f32(select(-893f, _wgslsmith_f_op_f32(ceil(689f)), !global0.x));
    let var_1 = u_input.d ^ -(2147483647i | -max(u_input.b.x, 1i));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -116f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -297f), _wgslsmith_f_op_f32(ceil(-252f))), !(!global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_add_vec4_i32(vec4<i32>(var_1, 2147483647i, 46898i, -25621i), vec4<i32>(u_input.b.x, var_1, u_input.b.x, u_input.d)), Struct_3(vec2<f32>(326f, 642f), Struct_2(u_input.b.zz, vec4<i32>(var_1, -13158i, u_input.d, 1i)), u_input.a.x, 1i, vec4<i32>(var_1, var_1, -1i, 2147483647i)), Struct_1(u_input.b.yz, false, vec3<i32>(-21949i, u_input.d, 27096i), u_input.a.x), !global0.x))))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(744f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<i32>(-22470i, 0i, var_1, var_1), Struct_3(vec2<f32>(1060f, 419f), global1[_wgslsmith_index_u32(u_input.a.x, 30u)], u_input.c.x, -1i, vec4<i32>(-1i, 0i, 1i, 1i)), Struct_1(u_input.b.xz, global0.x, u_input.b, 37618u), global0.x)) - -233f))), 221f)));
    var var_3 = Struct_1(_wgslsmith_sub_vec2_i32(u_input.b.zx, abs(vec2<i32>(var_1 & -9843i, var_1))), u_input.c.x <= 8586u, -u_input.b, 24138u);
    var var_4 = Struct_1(select(vec2<i32>(1i, var_1 << (_wgslsmith_div_u32(u_input.c.x, 0u) % 32u)), ~(abs(var_3.a) << (~vec2<u32>(var_3.d, var_3.d) % vec2<u32>(32u))), !(!all(vec4<bool>(global0.x, false, false, global0.x)))), true, -(~(~vec3<i32>(-37921i, 0i, 66988i))) << (u_input.e.wyx % vec3<u32>(32u)), (_wgslsmith_div_u32(u_input.a.x << (48846u % 32u), var_3.d) ^ 0u) & var_3.d);
    var var_5 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_2, var_2), vec2<f32>(var_2, 648f))), vec2<f32>(917f, var_2))))), global1[_wgslsmith_index_u32(var_3.d, 30u)], _wgslsmith_mult_u32(_wgslsmith_div_u32(~var_3.d, var_4.d), var_4.d), var_3.a.x >> (var_4.d % 32u), _wgslsmith_add_vec4_i32(((vec4<i32>(-42833i, -36944i, 0i, var_1) ^ vec4<i32>(-7040i, 14239i, u_input.d, -2147483647i)) & (vec4<i32>(u_input.d, -1i, var_1, u_input.b.x) & vec4<i32>(u_input.b.x, 5913i, 60386i, var_3.c.x))) ^ -abs(vec4<i32>(var_1, -1i, 0i, 1i)), ~abs(reverseBits(vec4<i32>(2147483647i, var_4.c.x, 0i, u_input.d)))));
    let var_6 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(10346i, var_3.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), 2147483647i, _wgslsmith_mod_vec3_i32(vec3<i32>(1i, _wgslsmith_mod_i32(-7090i, 1i), ~1183i) >> (u_input.c % vec3<u32>(32u)), ~vec3<i32>(~var_1, -var_1, -var_4.c.x)), min(~_wgslsmith_sub_u32(1u, 1u), var_4.d));
}

