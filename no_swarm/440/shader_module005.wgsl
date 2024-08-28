struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1997f, 1123f), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1243f, -432f) + vec2<f32>(-1729f, 1657f)))))));
    var var_1 = u_input.c.x;
    var var_2 = global0.a.a.x;
    return select(select(!(!global0.a.b), vec3<bool>(true, any(global0.a.b.xz), true), select(global0.a.b, select(select(vec3<bool>(true, global0.a.b.x, false), vec3<bool>(global0.a.b.x, global0.a.b.x, global0.a.b.x), true), !vec3<bool>(global0.a.b.x, false, true), select(global0.a.b, global0.a.b, true)), global0.a.b.x)), !vec3<bool>(select(all(vec2<bool>(true, false)), all(global0.a.b), global0.a.b.x), global0.a.b.x, any(vec3<bool>(global0.a.b.x, true, global0.a.b.x))), true);
}

fn func_2(arg_0: vec2<u32>) -> vec3<bool> {
    var var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -908f)));
    return func_3();
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<f32>, arg_3: Struct_2) -> bool {
    global0 = Struct_3(arg_3.a);
    let var_0 = global0.a;
    var var_1 = select(!func_2(~arg_3.a.a.xy), vec3<bool>(any(!arg_3.e.b), !any(global0.a.b.xy) && false, !global0.a.b.x), vec3<bool>(false, any(!vec2<bool>(false, var_0.b.x)), var_0.b.x));
    var var_2 = ~countOneBits(u_input.b);
    global0 = Struct_3(Struct_1(~(~global0.a.a), arg_3.c, vec3<i32>(~(1i ^ var_2.x), select(2147483647i, ~(-34127i), false), _wgslsmith_dot_vec4_i32(u_input.b, ~vec4<i32>(75604i, 36020i, arg_3.a.c.x, -2147483647i)))));
    return true;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: i32) -> bool {
    var var_0 = countOneBits(55822i);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -936f), 1141f)), -555f, 2106f);
    var var_2 = vec2<i32>(select(arg_2, reverseBits(2147483647i), any(vec2<bool>(true, true)) == !global0.a.b.x), _wgslsmith_mult_i32(~reverseBits(_wgslsmith_clamp_i32(52491i, global0.a.c.x, arg_2)), -_wgslsmith_clamp_i32(arg_2, max(2147483647i, arg_2), ~arg_2)));
    var_2 = u_input.b.zz >> (~arg_0.zy % vec2<u32>(32u));
    var var_3 = true;
    return (var_1.x <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x * -1063f), 701f))) != global0.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(max(u_input.a << (vec4<u32>(u_input.c.x, _wgslsmith_add_u32(global0.a.a.x, u_input.c.x), 1u, select(76081u, global0.a.a.x, global0.a.b.x)) % vec4<u32>(32u)), vec4<u32>(4294967295u << (~global0.a.a.x % 32u), 16695u, 5910u << (_wgslsmith_mult_u32(u_input.a.x, global0.a.a.x) % 32u), _wgslsmith_mult_u32(firstTrailingBit(0u), ~u_input.c.x))), vec4<bool>(!global0.a.b.x, select(func_1(min(2147483647i, u_input.b.x), vec2<u32>(1u, u_input.a.x) | global0.a.a.zz, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(332f, -1000f), vec2<f32>(250f, 727f), true)), Struct_2(Struct_1(vec3<u32>(16303u, 18037u, 27039u), vec3<bool>(global0.a.b.x, true, false), global0.a.c), global0.a.b.x, global0.a.b, -1241f, global0.a)), all(select(vec4<bool>(false, global0.a.b.x, global0.a.b.x, global0.a.b.x), vec4<bool>(false, true, false, global0.a.b.x), vec4<bool>(global0.a.b.x, global0.a.b.x, global0.a.b.x, false))), false), global0.a.b.x, !global0.a.b.x), _wgslsmith_div_i32(firstTrailingBit(u_input.b.x), _wgslsmith_dot_vec2_i32(global0.a.c.yy, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, -5280i), ~vec2<i32>(global0.a.c.x, u_input.b.x), _wgslsmith_add_vec2_i32(u_input.b.xx, global0.a.c.xy)))));
    global0 = Struct_3(Struct_1(~u_input.a.wzx >> (~vec3<u32>(global0.a.a.x, global0.a.a.x, 7219u) % vec3<u32>(32u)), vec3<bool>(false, global0.a.b.x, false), reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-11597i, u_input.b.x, global0.a.c.x), _wgslsmith_add_vec3_i32(global0.a.c, u_input.b.xwy), vec3<i32>(global0.a.c.x, 0i, u_input.b.x) << (u_input.a.xzz % vec3<u32>(32u))))));
    var var_1 = -3219i;
    let var_2 = abs(1335i);
    let var_3 = vec2<bool>(var_0, true);
    let var_4 = any(select(!(!vec4<bool>(false, false, var_3.x, true)), vec4<bool>(all(select(vec4<bool>(var_3.x, global0.a.b.x, global0.a.b.x, var_0), vec4<bool>(var_3.x, false, var_3.x, false), var_0)), !global0.a.b.x, !global0.a.b.x, any(vec4<bool>(var_0, var_3.x, false, false))), select(select(select(vec4<bool>(true, var_0, var_0, var_3.x), vec4<bool>(global0.a.b.x, true, true, true), true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, var_3.x, var_0, true), vec4<bool>(false, false, true, true), false)), !select(vec4<bool>(false, var_0, global0.a.b.x, true), vec4<bool>(global0.a.b.x, false, false, var_0), vec4<bool>(true, var_3.x, global0.a.b.x, false)), func_1(~global0.a.c.x, global0.a.a.yy, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-406f, -360f)), Struct_2(global0.a, true, global0.a.b, 398f, Struct_1(global0.a.a, global0.a.b, vec3<i32>(global0.a.c.x, u_input.b.x, -2147483647i)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(vec2<u32>(global0.a.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(global0.a.a, global0.a.a), global0.a.a | global0.a.a)), ~abs(u_input.a.xw)), -1334f, select(vec2<i32>(_wgslsmith_dot_vec2_i32(abs(global0.a.c.xx), vec2<i32>(var_2, -334i) ^ u_input.b.yy), -reverseBits(13181i)), min(-global0.a.c.yx | -vec2<i32>(var_2, u_input.b.x), ~vec2<i32>(var_2, -2147483647i) >> (u_input.c.yz % vec2<u32>(32u))), var_0));
}

