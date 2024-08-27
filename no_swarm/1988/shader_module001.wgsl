struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

var<private> global2: vec2<f32> = vec2<f32>(-1244f, 1147f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<f32> {
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1f, global2.x) - global2.x)));
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global2.x, global2.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-897f * global2.x) - _wgslsmith_f_op_f32(select(-841f, global2.x, global0.c.x)))) + _wgslsmith_f_op_f32(137f - global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - 307f) + -106f))) * -1000f), 293f);
    let var_1 = u_input.a.x;
    let var_2 = ~61264u;
    global0 = Struct_2(Struct_1(_wgslsmith_add_u32(_wgslsmith_add_u32(var_2, global1.b), var_2) < 64539u, 30106u), -1i, select(!(!(!global0.c)), global0.c, true), vec3<u32>(~(~(~u_input.b.x)), var_2, ~firstTrailingBit(_wgslsmith_add_u32(u_input.b.x, var_1))), !global1.a);
    return var_0.yx;
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    global2 = _wgslsmith_f_op_vec2_f32(func_3());
    var var_0 = firstTrailingBit(_wgslsmith_add_vec3_i32(~u_input.c, u_input.c));
    var var_1 = vec3<f32>(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), global2.x), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1397f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -683f))), -558f)));
    var var_2 = Struct_2(global0.a, countOneBits(min(global0.b, _wgslsmith_clamp_i32(_wgslsmith_add_i32(global0.b, -19559i), _wgslsmith_dot_vec2_i32(var_0.yx, vec2<i32>(global0.b, global0.b)), _wgslsmith_dot_vec2_i32(u_input.c.xx, var_0.zx)))), global0.c, ~u_input.b, arg_0.x < _wgslsmith_mult_u32(~(~global0.d.x), _wgslsmith_mod_u32(_wgslsmith_add_u32(13954u, global1.b), min(0u, 23891u))));
    let var_3 = Struct_1(-937f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x - -924f)))), _wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_add_u32(0u | global0.a.b, ~arg_0.x)), abs(~39309u)));
    return select(~var_2.d.x, _wgslsmith_dot_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(4973u, 0u, 0u, var_3.b), ~vec4<u32>(global0.d.x, 4294967295u, 1u, global0.a.b))), abs(firstTrailingBit(vec4<u32>(6517u, u_input.a.x, global0.a.b, global1.b)))), !all(!var_2.c));
}

fn func_1() -> u32 {
    var var_0 = ~max(vec2<u32>(u_input.b.x, 0u) & vec2<u32>(u_input.b.x, global1.b), ~vec2<u32>(12188u, u_input.a.x)) | vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, 28562u, global1.b), _wgslsmith_div_vec3_u32(vec3<u32>(global1.b, u_input.a.x, 1u), u_input.b)), countOneBits(func_2(vec3<u32>(53855u, u_input.b.x, global0.d.x))));
    var var_1 = global0.a;
    let var_2 = ~u_input.b;
    let var_3 = var_1.a;
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1214f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.x, 1170f))))), vec2<f32>(global2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(1424f - 662f))), _wgslsmith_f_op_f32(-global2.x))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(-global2.x);
    let var_2 = !(!select(vec3<bool>(all(vec4<bool>(false, global1.a, false, global1.a)), global1.a, global0.e), !select(vec3<bool>(false, global0.c.x, global1.a), vec3<bool>(global1.a, global1.a, true), global0.c.x), !vec3<bool>(global1.a, true, false)));
    let var_3 = -(u_input.c ^ vec3<i32>(u_input.c.x, -1i, 1704i));
    var var_4 = vec3<f32>(_wgslsmith_div_f32(-258f, var_1), var_1, var_1);
    let var_5 = ~vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, u_input.b.x)), vec2<u32>(33715u, 4294967295u) << (global0.d.xz % vec2<u32>(32u))), func_1()), 30675u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(select(_wgslsmith_add_u32(~2917u, _wgslsmith_mod_u32(global0.a.b, u_input.b.x)), ~(1u & global1.b), !(var_5.x < 4294967295u)), global1.b), reverseBits(~var_3.x), u_input.c.x, vec3<f32>(_wgslsmith_f_op_f32(1f * -1626f), -2224f, _wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.d.x, 4294967295u, 32997u), ~u_input.b) ^ ~0u, global0.a.b));
}

