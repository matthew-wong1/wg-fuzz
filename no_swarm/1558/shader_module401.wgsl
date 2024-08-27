struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: vec2<f32>,
}

struct Struct_5 {
    a: bool,
    b: vec4<u32>,
    c: Struct_3,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<u32> = vec2<u32>(15279u, 9746u);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = Struct_2(global0.a, global0.b);
    return Struct_3(var_0.b, Struct_2(vec2<u32>(4294967295u, ~(~var_0.b.b)), global0.b));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    let var_0 = -global0.b.c;
    var var_1 = arg_1;
    let var_2 = Struct_4(arg_0, -1000f, _wgslsmith_f_op_vec2_f32(floor(arg_1.a.a)));
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(func_2(1000f).b.b.a.x, _wgslsmith_f_op_f32(-var_1.a.a.x), -706f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-618f, 385f, var_2.b) + vec3<f32>(arg_1.b.b.a.x, -2002f, 522f)) * vec3<f32>(-1506f, global0.b.a.x, var_2.a.a.a.x))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(991f, global0.b.a.x, -749f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), vec3<bool>(true, true, true))))));
    let var_4 = Struct_4(Struct_3(var_1.b.b, Struct_2(var_1.b.a, Struct_1(_wgslsmith_f_op_vec2_f32(-arg_1.b.b.a), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.a.x, 0u), vec2<u32>(15084u, var_1.b.b.b)), u_input.d.x & u_input.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -860f)))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_3.x))), _wgslsmith_f_op_f32(-261f - _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(var_1.b.b.a.x + arg_0.a.a.x)))));
    return arg_0;
}

fn func_1() -> Struct_3 {
    global1 = _wgslsmith_clamp_vec2_u32(~vec2<u32>(_wgslsmith_sub_u32(u_input.c << (u_input.c % 32u), 76315u), 22494u), global0.a, ~(~(~_wgslsmith_mult_vec2_u32(global0.a, global0.a))));
    var var_0 = true;
    let var_1 = ~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, countOneBits(u_input.c)), vec2<u32>(~u_input.b, 90226u) & abs(vec2<u32>(u_input.c, 4294967295u) >> (vec2<u32>(0u, u_input.c) % vec2<u32>(32u))));
    var var_2 = var_1;
    var var_3 = ~global0.a;
    return func_3(func_2(_wgslsmith_f_op_f32(abs(-517f))), func_2(global0.b.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = Struct_5(true, ~abs(~(vec4<u32>(1u, u_input.c, 0u, global1.x) & vec4<u32>(1u, u_input.c, 1u, global0.b.b))), func_1(), Struct_4(Struct_3(global0.b, Struct_2(vec2<u32>(4294967295u, global1.x), global0.b)), 724f, global0.b.a));
    var var_2 = 34368u;
    global0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-179f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(ceil(global0.b.a.x)))))).b;
    global1 = vec2<u32>(global1.x, ~countOneBits(0u)) >> (~func_3(var_1.c, var_1.d.a).b.a % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(firstLeadingBit(select(global1.x, ~11401u, true))), vec3<u32>(_wgslsmith_sub_u32(~global1.x, 1u), ~_wgslsmith_dot_vec4_u32(var_1.b, vec4<u32>(0u, 4294967295u, 17257u, global0.b.b)), firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.b, 5316u, 4294967295u), var_1.d.a.b.a.x))), _wgslsmith_dot_vec3_i32(u_input.d.ywy, _wgslsmith_mult_vec3_i32(select(_wgslsmith_sub_vec3_i32(u_input.d.zwx, u_input.a), u_input.a, true), firstTrailingBit(-vec3<i32>(var_1.d.a.a.c, -58441i, 1i)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-360f - 1362f), func_3(Struct_3(Struct_1(global0.b.a, 29498u, u_input.d.x), Struct_2(var_1.d.a.b.a, Struct_1(global0.b.a, global0.a.x, global0.b.c))), Struct_3(Struct_1(global0.b.a, 1u, -6350i), Struct_2(var_1.d.a.b.a, global0.b))).a.a.x, var_1.d.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1709f, global0.b.a.x, 854f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.d.c.x, -966f, var_1.c.a.a.x), vec3<f32>(1385f, 1313f, 2707f), vec3<bool>(var_0, var_0, false)))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(983f, 127f, 913f)), vec3<f32>(var_1.c.a.a.x, -274f, -1524f))))));
}

