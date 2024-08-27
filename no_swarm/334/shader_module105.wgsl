struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: i32,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<f32>, 1> = array<vec2<f32>, 1>(vec2<f32>(-2007f, -186f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.e.x, -1000f, global0.c.e.x, global0.c.e.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0.c.e.x, -1000f, 264f) - vec4<f32>(global0.c.e.x, global0.c.e.x, 1676f, -1159f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1973f, 315f, -1224f, global0.c.e.x), vec4<f32>(618f, global0.c.e.x, global0.c.e.x, 1184f), true)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.e.x, global0.c.e.x, 900f, global0.c.e.x) - vec4<f32>(1213f, -616f, global0.c.e.x, global0.c.e.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(-global0.c.e.x), -1134f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -587f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.c.e.x - 278f))))));
    var var_1 = vec4<u32>(~global0.a.x, global0.a.x, ~_wgslsmith_clamp_u32(global0.a.x, _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(global0.a.x, global0.a.x)), global0.a ^ vec2<u32>(43586u, 6074u)), 8486u), ~reverseBits(global0.a.x >> (6126u % 32u)) & 52331u);
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -547f, 921f, 1574f)))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x - 441f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 529f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) - _wgslsmith_f_op_f32(max(338f, global0.c.e.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(453f, global0.c.e.x), -694f))));
    var var_2 = vec2<u32>(~(3217u >> (var_1.x % 32u)), global0.a.x);
    var var_3 = global0.c;
    return max(var_2.x, ~(~(~(~global0.a.x))));
}

fn func_2(arg_0: f32, arg_1: i32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c.e.x, arg_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1000f)), arg_0)))));
    let var_1 = select(firstTrailingBit(_wgslsmith_clamp_vec2_i32(global0.c.b, global0.c.b, vec2<i32>(1i, ~arg_1))), vec2<i32>(abs(~(-arg_1)), ~(-(-56982i >> (global0.a.x % 32u)))), global0.b.x);
    global0 = Struct_3(global0.a, select(vec3<bool>(any(vec4<bool>(true, global0.b.x, global0.b.x, false)), true, false), global0.b, !(!global0.c.a.xyx)), Struct_1(select(!global0.c.a, vec4<bool>(true, true, any(vec2<bool>(global0.b.x, global0.c.d.x)), false), global0.c.d), vec2<i32>(-(i32(-1i) * -21325i), 27162i & var_1.x), abs(_wgslsmith_mod_i32(1i, -1i) << (func_3(vec2<bool>(global0.b.x, false)) % 32u)), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(global0.b.x, global0.b.x, global0.c.d.x, global0.b.x), global0.c.a.x), select(global0.c.a, vec4<bool>(global0.c.a.x, true, true, global0.b.x), false), true), global0.c.e));
    global1 = array<vec2<f32>, 1>();
    global1 = array<vec2<f32>, 1>();
    return -303f;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = global0.a.x;
    let var_1 = global0.c;
    var_0 = ~(global0.a.x & 16383u);
    let var_2 = Struct_4(min(global0.a, select(global0.a, vec2<u32>(0u, select(global0.a.x, 51864u, global0.c.d.x)), vec2<bool>(var_1.d.x & arg_1.x, var_1.a.x))), _wgslsmith_f_op_vec2_f32(select(global0.c.e.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2(global0.c.e.x, global0.c.b.x)), 291f)), false)), !(!select(!var_1.a.zwy, global0.b, true)), true);
    let var_3 = Struct_1(var_1.a, ~vec2<i32>(~(var_1.b.x << (4294967295u % 32u)), 128i), -31380i, !(!global0.c.a), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -573f))))), -1110f, -1000f));
    return Struct_3(~vec2<u32>(0u, var_2.a.x), !vec3<bool>(!(var_3.b.x < var_3.b.x), all(vec2<bool>(false, var_2.c.x)), !any(global0.c.a)), global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_f32(1782f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1471f, global0.c.e.x)))), !(!(!vec3<bool>(false, false, global0.c.a.x))));
    global0 = Struct_3(~(~vec2<u32>(~11637u, abs(global0.a.x))), vec3<bool>(global0.c.d.x, !global0.b.x, global0.b.x), Struct_1(global0.c.d, -global0.c.b, 1i, !func_1(global0.c.e.x, vec3<bool>(global0.c.a.x, global0.c.a.x, global0.c.d.x)).c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c.e)))));
    var var_0 = Struct_3(vec2<u32>(global0.a.x, _wgslsmith_mod_u32(global0.a.x, global0.a.x)), select(vec3<bool>(true, global0.a.x == ~21175u, global0.c.d.x), select(vec3<bool>(global0.c.d.x | global0.b.x, true, all(global0.c.d)), global0.c.d.wyx, false), global0.c.d.x), global0.c);
    var var_1 = vec3<i32>(_wgslsmith_add_i32(firstTrailingBit(~var_0.c.b.x), i32(-1i) * -func_1(-1000f, var_0.c.a.zxx).c.b.x), firstLeadingBit((i32(-1i) * -u_input.a) ^ 1i), _wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.c.b.x, global0.c.c), 0i), -6296i) & var_0.c.b.x);
    global0 = func_1(804f, select(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.e.x)), select(select(vec3<bool>(true, var_0.b.x, true), global0.b, true), !vec3<bool>(false, true, global0.b.x), select(var_0.c.d.yxy, var_0.c.d.yyx, vec3<bool>(false, var_0.b.x, true)))).b, var_0.c.a.yzz, func_1(global0.c.e.x, global0.c.d.xzx).b.x));
    var_1 = vec3<i32>(_wgslsmith_div_i32(~var_0.c.b.x, select(u_input.a, -var_0.c.c, global0.c.a.x)), min(-2147483647i, global0.c.b.x), ((-31343i | u_input.a) >> (1u % 32u)) | _wgslsmith_mult_i32(i32(-1i) * -2147483647i, _wgslsmith_add_i32(var_0.c.c, 1i))) & ~(firstTrailingBit(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.c.c, -6528i, 34681i), vec3<i32>(var_1.x, var_1.x, 2147483647i))) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(51444u, var_0.a.x, 9738u), ~vec3<u32>(4294967295u, global0.a.x, 33417u)) % vec3<u32>(32u)));
    let var_2 = vec3<i32>(abs(global0.c.b.x), i32(-1i) * -(i32(-1i) * -var_1.x), -8551i);
    global1 = array<vec2<f32>, 1>();
    let var_3 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.c, -2147483647i, func_1(global0.c.e.x, select(!(!vec3<bool>(global0.c.d.x, var_0.c.d.x, var_3.a.x)), func_1(-185f, vec3<bool>(var_0.b.x, false, true)).c.d.zzz, all(select(vec2<bool>(true, var_0.b.x), vec2<bool>(global0.c.d.x, var_3.d.x), false)))).c.b);
}

