struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<f32> = vec4<f32>(1289f, -1998f, 967f, -1000f);

var<private> global2: vec3<u32>;

var<private> global3: Struct_1 = Struct_1(vec3<bool>(false, true, true), vec3<i32>(-1i, -77434i, 13470i), 4294967295u, vec3<u32>(4294967295u, 40161u, 4294967295u));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = global1.zy;
    let var_1 = Struct_2(4294967295u);
    global3 = arg_0;
    var var_2 = _wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(~(~26463u), 0u)), u_input.c.zy, ~global2.yy ^ reverseBits(u_input.c.xy));
    var var_3 = vec2<f32>(-1425f, 1342f);
    return _wgslsmith_f_op_vec3_f32(-global1.xzw);
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    global3 = Struct_1(global3.a, global3.b, 32370u, ~(~min(~u_input.c, _wgslsmith_clamp_vec3_u32(u_input.c, vec3<u32>(global2.x, u_input.c.x, global3.d.x), global3.d))));
    let var_0 = global3.a.x;
    return ~global3.b.zz & vec2<i32>(global3.b.x, _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(12613i, 1i, -31187i, global3.b.x) & vec4<i32>(global3.b.x, 2147483647i, 0i, global3.b.x), _wgslsmith_div_vec4_i32(vec4<i32>(0i, -1i, global3.b.x, global3.b.x), vec4<i32>(-17759i, global3.b.x, 16032i, 20075i))), select(vec4<i32>(-71338i, global3.b.x, -10650i, -2147483647i) >> (vec4<u32>(24616u, u_input.a, arg_0.a, 25892u) % vec4<u32>(32u)), vec4<i32>(global3.b.x, 37878i, 2147483647i, 1i) << (vec4<u32>(54943u, global2.x, arg_0.a, 1u) % vec4<u32>(32u)), true)));
}

fn func_2(arg_0: vec2<i32>) -> i32 {
    let var_0 = func_3(Struct_2(abs(10731u)));
    let var_1 = abs(vec2<u32>(4294967295u & ~global3.c, global3.c));
    let var_2 = global2.x;
    var var_3 = Struct_1(vec3<bool>(all(!vec3<bool>(global3.a.x, false, global3.a.x)), any(select(select(vec4<bool>(global3.a.x, false, true, global3.a.x), vec4<bool>(global3.a.x, true, false, false), vec4<bool>(false, global3.a.x, global3.a.x, global3.a.x)), select(vec4<bool>(global3.a.x, global3.a.x, false, false), vec4<bool>(global3.a.x, global3.a.x, true, global3.a.x), vec4<bool>(true, global3.a.x, true, global3.a.x)), !vec4<bool>(true, false, global3.a.x, global3.a.x))), false), vec3<i32>(~(-1i) | arg_0.x, var_0.x, _wgslsmith_add_i32(arg_0.x, var_0.x >> (_wgslsmith_add_u32(51267u, 0u) % 32u))), global2.x, vec3<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(37363u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global3.c), vec2<u32>(global2.x, u_input.d))), _wgslsmith_sub_u32(~1u, _wgslsmith_mod_u32(94400u, var_1.x))), global3.d.x, 116959u));
    var var_4 = Struct_2(17086u);
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), global1.x, _wgslsmith_f_op_f32(global1.x - -2022f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec3<bool>(global3.a.x, global3.a.x, true), vec3<i32>(global3.b.x, global3.b.x, 2147483647i), 1u, u_input.c), Struct_2(global2.x), 0u, Struct_2(23844u))))))));
    global2 = ~vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(16373u, 0u, 1u) | u_input.c), vec3<u32>(global2.x, min(u_input.c.x, 35111u), u_input.d >> (60449u % 32u))), _wgslsmith_mult_u32(global3.c, _wgslsmith_add_u32(52902u, 1u)), ~global3.d.x);
    let var_1 = _wgslsmith_clamp_vec2_i32(~vec2<i32>(_wgslsmith_add_i32(-1i, -12670i), ~2147483647i), vec2<i32>(-abs(global3.b.x), 1i), -abs(min(vec2<i32>(global3.b.x, global3.b.x), vec2<i32>(global3.b.x, 29755i)) & (global3.b.yx << (u_input.c.zx % vec2<u32>(32u)))));
    let var_2 = countOneBits(~_wgslsmith_clamp_vec2_u32(u_input.c.zx, global2.zy, u_input.c.yz));
    global2 = global3.d;
    let x = u_input.a;
    s_output = StorageBuffer(func_2(vec2<i32>(-1i) * -(~var_1)), abs(9726i));
}

