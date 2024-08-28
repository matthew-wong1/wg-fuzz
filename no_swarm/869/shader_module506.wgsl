struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<Struct_1, 14>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-296f * _wgslsmith_f_op_f32(max(-743f, 218f)))))), _wgslsmith_f_op_f32(f32(-1f) * -140f)));
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<i32>) -> bool {
    global0 = u_input.b & arg_1.x;
    global0 = countOneBits(-3283i);
    var var_0 = false;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1090f)), _wgslsmith_f_op_f32(func_2(vec2<bool>(true, true))), _wgslsmith_f_op_f32(606f * _wgslsmith_f_op_f32(237f - -1099f))) * vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2(vec2<bool>(false, true))))), 1334f, _wgslsmith_f_op_f32(-825f + _wgslsmith_f_op_f32(1767f * -268f)))));
    var_0 = true;
    return all(!select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_i32(u_input.b, u_input.b);
    let var_0 = func_1(~(~u_input.a), vec2<i32>(-1i) * -vec2<i32>(0i, u_input.b), select(vec2<i32>(u_input.b, u_input.a) >> ((vec2<u32>(u_input.c.x, 59721u) >> (u_input.d % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, u_input.a)) << (u_input.c % vec2<u32>(32u)), false) ^ vec2<i32>(select(u_input.b, 13780i, false), min(2147483647i, i32(-1i) * -69917i)));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(-225f, _wgslsmith_f_op_f32(-1301f - _wgslsmith_div_f32(-748f, -129f)))), -903f, -904f)));
    global0 = u_input.a;
    var var_2 = -vec2<i32>(~u_input.b, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(~vec2<u32>(7395u, 70306u), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d.x, 84406u), u_input.c)) >> (_wgslsmith_div_vec2_u32(~(~vec2<u32>(45730u, u_input.c.x)), abs(u_input.c)) % vec2<u32>(32u)), vec2<u32>(u_input.c.x, u_input.e), ~(~(~vec4<u32>(59511u, 4294967295u, u_input.c.x, u_input.e) >> (abs(vec4<u32>(u_input.e, 18680u, u_input.d.x, u_input.c.x)) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_i32(countOneBits(select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -1i, 2147483647i, 1i), vec4<i32>(-1i, 26818i, u_input.b, -2147483647i)), abs(vec4<i32>(1i, 19628i, -12764i, u_input.a)), !vec4<bool>(false, false, var_0, true))), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, 0i, var_2.x, -13154i), vec4<i32>(4176i, var_2.x, var_2.x, var_2.x), vec4<i32>(u_input.a, -2147483647i, u_input.b, -1i)), vec4<i32>(var_2.x, u_input.b, -4679i, u_input.b) << (vec4<u32>(0u, 28714u, 7919u, u_input.c.x) % vec4<u32>(32u))) >> (~max(vec4<u32>(u_input.c.x, u_input.e, 0u, 69602u), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 17227u)) % vec4<u32>(32u))));
}

