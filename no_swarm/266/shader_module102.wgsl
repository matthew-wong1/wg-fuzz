struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: bool,
    d: Struct_3,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<i32>, arg_2: f32) -> vec2<bool> {
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    let var_0 = Struct_4(~_wgslsmith_add_u32(arg_0.c.a, _wgslsmith_clamp_u32(42634u, 115353u, ~u_input.a)), all(!vec3<bool>(any(arg_0.a.a), arg_0.a.a.x, arg_0.a.a.x)), true, arg_0.c.d);
    var var_1 = Struct_3(var_0.d.a);
    let var_2 = arg_2;
    return var_1.a.a;
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: f32) -> bool {
    let var_0 = any(vec3<bool>(all(vec3<bool>(true, true, true)), !any(vec3<bool>(true, true, true)), all(select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), true))));
    var var_1 = Struct_3(Struct_2(select(select(vec2<bool>(true, var_0), !vec2<bool>(var_0, true), true), func_3(Struct_5(Struct_2(vec2<bool>(var_0, true), arg_1.wwy, arg_0), Struct_4(u_input.b.x, false, var_0, Struct_3(Struct_2(vec2<bool>(false, var_0), arg_1.zxx, 325f))), Struct_4(4294967295u, var_0, false, Struct_3(Struct_2(vec2<bool>(false, true), vec3<i32>(arg_1.x, arg_1.x, arg_1.x), arg_0)))), vec3<i32>(arg_1.x, 11608i, arg_1.x), _wgslsmith_f_op_f32(-arg_0)), true), max(countOneBits(abs(arg_1.xyx)), arg_1.wyz), -528f));
    global0 = array<Struct_1, 20>();
    var var_2 = var_1.a.b.yy;
    let var_3 = -1001f;
    return func_3(Struct_5(Struct_2(select(vec2<bool>(var_1.a.a.x, true), var_1.a.a, any(vec3<bool>(var_0, false, false))), vec3<i32>(-arg_1.x, -30769i, firstLeadingBit(0i)), var_1.a.c), Struct_4(~(42605u ^ u_input.a), false, all(select(vec4<bool>(var_0, var_1.a.a.x, false, var_0), vec4<bool>(false, var_0, true, var_0), vec4<bool>(var_1.a.a.x, true, false, var_0))), Struct_3(Struct_2(vec2<bool>(true, var_0), arg_1.wyy, var_3))), Struct_4(~u_input.a, !(-2147483647i < arg_1.x), !var_1.a.a.x, Struct_3(Struct_2(vec2<bool>(var_1.a.a.x, var_0), vec3<i32>(var_1.a.b.x, var_1.a.b.x, var_2.x), arg_0)))), _wgslsmith_add_vec3_i32(~(~arg_1.xzy), vec3<i32>(max(var_1.a.b.x >> (u_input.b.x % 32u), -arg_1.x), 1i, -76775i)), arg_2).x;
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_1, 20>();
    var var_0 = vec4<bool>(true, true, all(vec2<bool>(true, true | func_2(-204f, vec4<i32>(-2147483647i, 10597i, -2147483647i, 1856i), -501f))), true);
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -143f))), _wgslsmith_f_op_f32(-972f - _wgslsmith_f_op_f32(max(-576f, 220f))), -274f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(527f * -1350f), -471f, _wgslsmith_f_op_f32(f32(-1f) * -1492f)))), vec3<bool>(true, true, true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1348f, var_1.x, -1439f, -922f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 151f, 947f, var_1.x))) - vec4<f32>(-1000f, _wgslsmith_f_op_f32(var_1.x + -502f), _wgslsmith_f_op_f32(-847f + 144f), var_1.x)))));
    let var_3 = var_0.zzz;
    return Struct_2(var_0.zy, -vec3<i32>(1i, 1i, 1i), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_1.x * 1000f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>((select(1i, max(67306i, -15965i), all(vec4<bool>(true, false, true, true))) | (i32(-1i) * -20146i)) << (abs(~(~14765u)) % 32u), max(abs(1i >> (abs(u_input.a) % 32u)), -abs(8388i)), -1i, -2147483647i);
    global0 = array<Struct_1, 20>();
    global0 = array<Struct_1, 20>();
    let var_1 = func_1();
    let var_2 = Struct_1(abs(-48102i), firstLeadingBit(abs(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(var_1.b.x, var_0.x)), var_1.b.yy))), !(!select(vec4<bool>(var_1.a.x, false, false, true), select(vec4<bool>(true, true, false, var_1.a.x), vec4<bool>(var_1.a.x, var_1.a.x, false, var_1.a.x), vec4<bool>(false, var_1.a.x, var_1.a.x, true)), true)));
    global0 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(1000f, max(-(max(var_0, vec4<i32>(-9122i, -20303i, var_0.x, -15454i)) | var_0), var_0));
}

