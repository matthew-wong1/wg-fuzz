struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<bool>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: f32) -> f32 {
    return -1519f;
}

fn func_3(arg_0: f32, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: f32) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(626f, arg_3))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(219f, arg_3, false))))) + 1328f));
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-760f + -744f), -128f) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-600f, 497f))))))), u_input.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-418f, _wgslsmith_f_op_f32(ceil(-1000f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1072f + -1184f)))), -1433f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1316f, 876f)))), 756f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-902f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<bool>(arg_0, arg_0, true), Struct_2(Struct_1(arg_0, vec4<f32>(-597f, 1069f, 851f, 963f), vec4<bool>(true, false, arg_0, arg_0), u_input.a.x, 1u), u_input.b, vec4<u32>(1u, 19120u, u_input.a.x, u_input.a.x)), 2030f))) + 132f))));
    let var_1 = firstTrailingBit(_wgslsmith_sub_i32(-62855i, u_input.b));
    var_0 = Struct_3(var_0.a);
    var_0 = Struct_3(-1829f);
    let var_2 = -11566i << ((min(0u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, u_input.a.x), 46584u, 84571u)) | 60810u) % 32u);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 22414i, 11054i), vec3<i32>(u_input.b, -10236i, -1i)), vec3<i32>(u_input.b, u_input.b, u_input.b) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), u_input.b), _wgslsmith_dot_vec2_i32(max(~vec2<i32>(-613i, -15339i), max(vec2<i32>(-14107i, u_input.b), vec2<i32>(u_input.b, u_input.b))), vec2<i32>(1i, 1i)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(~u_input.b, -2147483647i), firstTrailingBit(func_1(true))), 58552i) << (vec4<u32>(471u, _wgslsmith_sub_u32(0u, ~(~u_input.a.x)), ~0u, max(~u_input.a.x, 26802u)) % vec4<u32>(32u));
    var var_1 = select(select(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), vec3<bool>(true, true, true), true), !(!vec3<bool>(select(false, true, true), all(vec4<bool>(false, false, false, false)), true)), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(true, false, true), any(vec2<bool>(true, false))), vec3<bool>(true, true, true), false), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), vec3<bool>(false, true, false))));
    var var_2 = firstTrailingBit(max(_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, 22383u, 0u, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) | vec4<u32>(u_input.a.x, u_input.a.x, 65484u, u_input.a.x)), reverseBits(vec4<u32>(u_input.a.x, ~94862u, 0u, u_input.a.x))));
    var_2 = vec4<u32>(~47724u, ~(~u_input.a.x), reverseBits(select(~(u_input.a.x << (u_input.a.x % 32u)), 36957u, true)), u_input.a.x);
    var var_3 = vec4<bool>(48407i < ~min(u_input.b, ~(-1i)), u_input.a.x < var_2.x, true, any(!(!select(vec3<bool>(var_1.x, var_1.x, false), vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x)))));
    var var_4 = 52682u ^ var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<u32>(~0u & _wgslsmith_add_u32(43033u, var_2.x), 4294967295u & u_input.a.x, u_input.a.x), var_2.ywy), vec4<u32>(1u, ~(~_wgslsmith_clamp_u32(144840u, 37770u, u_input.a.x)), ~var_2.x, ~(~(~88395u))), var_0.wwy, _wgslsmith_clamp_vec4_i32(var_0, vec4<i32>(u_input.b, 2147483647i, ~1818i, max(_wgslsmith_mod_i32(u_input.b, 90i), var_0.x)), var_0), -139f);
}

