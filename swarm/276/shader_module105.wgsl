struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true));

var<private> global2: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    return _wgslsmith_f_op_f32(-arg_0.x);
}

fn func_3(arg_0: vec3<bool>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -587f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1146f)))), -308f, 1145f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(471f * _wgslsmith_div_f32(-1705f, 560f)), _wgslsmith_f_op_f32(round(1516f)), 1f, _wgslsmith_f_op_f32(1838f - _wgslsmith_f_op_f32(round(-1507f))))));
    let var_1 = ~(~u_input.a);
    global0 = array<Struct_2, 6>();
    let var_2 = min(-select((vec2<i32>(var_1, -11214i) & vec2<i32>(var_1, 69946i)) & abs(vec2<i32>(46914i, -13423i)), _wgslsmith_div_vec2_i32(-vec2<i32>(u_input.c, var_1), vec2<i32>(var_1, var_1)), any(arg_0.yz)), ~max(vec2<i32>(_wgslsmith_add_i32(var_1, var_1), -1i), _wgslsmith_div_vec2_i32(abs(vec2<i32>(var_1, -1i)), countOneBits(vec2<i32>(var_1, 16762i)))));
    global0 = array<Struct_2, 6>();
    return _wgslsmith_f_op_vec2_f32(select(var_0.wz, var_0.yx, arg_0.x));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1543f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1038f)) + _wgslsmith_f_op_f32(round(529f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-694f, _wgslsmith_f_op_f32(func_2(vec3<f32>(-1521f, -672f, 275f)))) + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(912f, -1000f), vec2<f32>(-673f, 317f)))))) + _wgslsmith_f_op_vec2_f32(func_3(!(!select(vec3<bool>(true, global2.x, false), vec3<bool>(global2.x, global2.x, global2.x), true)))));
    return Struct_3(-(select(~vec4<i32>(14748i, 42990i, -22917i, u_input.c), firstLeadingBit(vec4<i32>(u_input.c, -5512i, -25823i, u_input.a)), true) & select(-vec4<i32>(0i, 61805i, u_input.a, -23532i), vec4<i32>(20901i, u_input.a, -2147483647i, u_input.a) | vec4<i32>(u_input.c, u_input.a, u_input.c, u_input.a), !global1[_wgslsmith_index_u32(u_input.b.x, 9u)])), global0[_wgslsmith_index_u32(69512u, 6u)]);
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = !global2.x;
    var_0 = global2.x || (_wgslsmith_clamp_i32(-countOneBits(arg_0.a.x), _wgslsmith_add_i32(-2147483647i, u_input.a), ~(-1i) & _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b.a.x, arg_0.b.a.x, 13288i, 0i), arg_0.a)) <= ~(~(1i << (u_input.d % 32u))));
    let var_1 = -u_input.c;
    let var_2 = abs(41502u);
    let var_3 = func_1();
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1u;
    global2 = !vec2<bool>(any(select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(global2.x, global2.x, global2.x), global2.x)) && !global2.x, global2.x);
    var var_1 = firstLeadingBit(31577i);
    global2 = !vec2<bool>(true & all(global1[_wgslsmith_index_u32(12764u, 9u)]), global2.x);
    var var_2 = func_4(func_1());
    var var_3 = !(!select(vec3<bool>(true, global2.x, true), select(vec3<bool>(false, false, false), select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(false, false, false), global2.x), !vec3<bool>(global2.x, global2.x, false)), any(global1[_wgslsmith_index_u32(5632u, 9u)]) && all(vec3<bool>(false, true, global2.x))));
    global1 = array<vec4<bool>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(u_input.d, _wgslsmith_mod_u32(8469u, u_input.b.x)), min(_wgslsmith_sub_vec2_u32(firstTrailingBit(~vec2<u32>(var_2.c.x, 4294967295u)), vec2<u32>(max(65242u, 1u), abs(var_2.c.x))), vec2<u32>(select(u_input.b.x ^ 18691u, u_input.d, true), ~0u)), max(-var_2.a.wwz | max(var_2.a.wyx, vec3<i32>(u_input.c, 45382i, 33573i)), var_2.a.zyy | _wgslsmith_div_vec3_i32(var_2.a.zzw, vec3<i32>(-2147483647i, var_2.a.x, 1i))) ^ (~(~vec3<i32>(13336i, -2147483647i, u_input.c)) & ~(var_2.a.yzy & vec3<i32>(-10619i, 1i, u_input.a))), func_1().b.b.a.x, (firstTrailingBit(vec4<u32>(var_0, var_2.c.x, u_input.b.x, 1u)) | ~vec4<u32>(var_0, 1u, 4294967295u, 3089u)) >> (vec4<u32>(~(~u_input.b.x), 68452u, countOneBits(abs(0u)), 22037u) % vec4<u32>(32u)));
}

