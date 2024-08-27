struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1000f, 1000f, vec2<bool>(false, true));

var<private> global1: vec2<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, arg_0.b, 638f)))))));
    var var_1 = firstTrailingBit(15368u) ^ u_input.d.x;
    var var_2 = select(vec2<bool>(false, !(!global1.x)), !(!arg_0.c), arg_0.c);
    var_1 = 1u;
    var var_3 = vec3<bool>(select(arg_0.c.x, global1.x || false, var_2.x), arg_0.c.x && !(_wgslsmith_f_op_f32(ceil(-664f)) <= var_0.x), any(select(vec2<bool>(true, false), select(select(vec2<bool>(false, true), arg_0.c, vec2<bool>(arg_0.c.x, global0.c.x)), select(arg_0.c, vec2<bool>(var_2.x, false), var_2.x), arg_0.c.x), !vec2<bool>(var_2.x, var_2.x))));
    return global0.b;
}

fn func_2() -> vec2<f32> {
    let var_0 = u_input.a.x;
    global0 = Struct_1(_wgslsmith_f_op_f32(-1343f * -553f), _wgslsmith_f_op_f32(-global0.a), global0.c);
    global0 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(Struct_1(-738f, _wgslsmith_f_op_f32(floor(global0.a)), vec2<bool>(global1.x, global1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b * _wgslsmith_f_op_f32(global0.a - 176f))))), 703f, vec2<bool>(!all(!vec3<bool>(true, false, global1.x)), global1.x));
    global0 = Struct_1(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), select(vec2<bool>(true, global1.x), global0.c, select(select(global0.c, select(vec2<bool>(global1.x, global1.x), global0.c, global0.c), !global0.c.x), select(!global0.c, select(global0.c, vec2<bool>(true, true), vec2<bool>(global1.x, global0.c.x)), false), !select(vec2<bool>(false, false), vec2<bool>(true, false), global0.c.x))));
    let var_1 = Struct_4(836f, Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global0.a), -1261f, _wgslsmith_f_op_f32(ceil(global0.b))) + vec3<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(-280f * global0.b), _wgslsmith_f_op_f32(-global0.b))), ~(1u ^ _wgslsmith_clamp_u32(u_input.d.x, 4294967295u, u_input.d.x)), ~var_0, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(988f * 821f)), 886f, vec2<bool>(global1.x && false, true)), 103909u));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(var_1.b.a.yz)), _wgslsmith_f_op_vec2_f32(-var_1.b.a.zz), all(vec3<bool>(false, false, var_1.b.d.c.x)))))), vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.b.a.x - global0.a), _wgslsmith_f_op_f32(global0.b + global0.b))), var_1.b.d.a), all(vec4<bool>(false, var_1.b.d.c.x, var_1.b.d.c.x, var_1.b.d.c.x)) | !select(false, var_1.b.d.c.x, false))) + _wgslsmith_f_op_vec2_f32(-var_1.b.a.zy));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_5, arg_2: Struct_1) -> Struct_1 {
    let var_0 = select(vec3<bool>(all(vec4<bool>(true, true, false, true)), true, false), select(vec3<bool>(true, all(vec2<bool>(global1.x, global0.c.x)) || true, false), !vec3<bool>(arg_2.c.x || true, global1.x, !global0.c.x), !(!any(arg_2.c))), vec3<bool>(arg_2.c.x && !arg_2.c.x, arg_2.c.x, true));
    var var_1 = -407f;
    let var_2 = arg_0.x;
    var_1 = 786f;
    let var_3 = _wgslsmith_dot_vec2_i32(u_input.a, -(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, 2147483647i)));
    return arg_2;
}

fn func_1() -> vec3<bool> {
    global0 = func_4(_wgslsmith_f_op_vec2_f32(func_2()), Struct_5(select(vec2<u32>(~29445u, u_input.c ^ 50146u), ~u_input.d.xx, global0.c)), Struct_1(global0.a, -122f, select(select(global0.c, !global0.c, false), vec2<bool>(true, u_input.c == u_input.c), !global0.c)));
    let var_0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -2374f, 827f) + vec3<f32>(global0.a, 638f, -448f)))), vec3<f32>(-863f, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1699f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a, -1947f, 206f) * vec3<f32>(global0.a, -102f, -228f)) + _wgslsmith_div_vec3_f32(vec3<f32>(693f, -1112f, global0.a), vec3<f32>(global0.a, 2228f, global0.b))))), u_input.d.x, 6334i, Struct_1(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -2826f), select(global0.c, !global0.c, vec2<bool>(true, true))), u_input.d.x);
    var var_1 = vec3<i32>(i32(-1i) * -1i, 12345i, -1i);
    var_1 = vec3<i32>(_wgslsmith_sub_i32(23385i, var_0.c), 2147483647i, abs(-18943i));
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.a), ~1u, max(u_input.b, -2147483647i), Struct_1(824f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.a))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.a.x, global0.a))))), select(select(vec2<bool>(false, false), vec2<bool>(false, global1.x), false), global0.c, any(!var_0.d.c))), _wgslsmith_mult_u32(countOneBits(var_0.b), 88503u));
    return vec3<bool>(true, global1.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.x;
    var_0 = !(u_input.a.x == (-30295i & ~_wgslsmith_div_i32(u_input.a.x, u_input.b)));
    var_0 = all(func_1());
    let var_1 = select(~(~_wgslsmith_clamp_vec3_u32(u_input.d.zzw, vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x))), u_input.d.xyw ^ u_input.d.xzw, !func_1()) ^ firstLeadingBit(~(~(~vec3<u32>(0u, u_input.c, u_input.d.x))));
    let var_2 = countOneBits(~_wgslsmith_dot_vec3_u32(select(u_input.d.zwz, vec3<u32>(5976u, var_1.x, var_1.x), !global1.x), min(u_input.d.wyz, u_input.d.zyz)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0.a)))), global0.c.x))), ~(~((u_input.c | var_1.x) ^ abs(1u))));
}

