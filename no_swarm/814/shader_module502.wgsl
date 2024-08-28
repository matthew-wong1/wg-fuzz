struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 16>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: u32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-109f, arg_0.d, any(arg_0.a))), arg_0.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b.x)), _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(arg_0.b)), arg_0.b)))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, arg_0.b.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.d), 331f, 0i < u_input.a.x))))));
    let var_2 = select(vec2<u32>(_wgslsmith_sub_u32(~(~arg_0.c.a), 1u), u_input.d), vec2<u32>(45751u, 19013u) | u_input.b, select(arg_0.a.ww, !(!(!arg_0.a.zx)), arg_0.a.zz));
    global1 = !arg_0.a.wzx;
    global2 = min(abs(~_wgslsmith_dot_vec2_u32(u_input.c.yx, vec2<u32>(u_input.d, 86981u))) ^ arg_0.c.c.x, ~u_input.c.x);
    return !(!arg_0.a.zwz);
}

fn func_2(arg_0: i32) -> Struct_1 {
    global0 = array<Struct_3, 16>();
    let var_0 = u_input.c;
    global0 = array<Struct_3, 16>();
    global1 = vec3<bool>(select(true, all(func_3(Struct_2(vec4<bool>(true, false, true, global1.x), vec4<f32>(-696f, 2180f, -741f, 1000f), Struct_1(18955u, vec2<f32>(199f, 513f), u_input.c), 1879f))), func_3(Struct_2(select(vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(true, true, global1.x, global1.x), vec4<bool>(true, global1.x, false, global1.x)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(147f, -276f, 1000f, 1000f), vec4<f32>(-752f, 452f, 360f, -550f), vec4<bool>(global1.x, true, global1.x, true))), Struct_1(u_input.d, vec2<f32>(1000f, -659f), u_input.c), _wgslsmith_f_op_f32(round(1748f)))).x), max(8314u, u_input.b.x) != ~firstTrailingBit(countOneBits(var_0.x)), !(!(!all(vec3<bool>(global1.x, global1.x, true)))));
    var var_1 = Struct_2(select(select(!select(vec4<bool>(false, global1.x, false, false), vec4<bool>(global1.x, global1.x, false, true), vec4<bool>(true, global1.x, global1.x, true)), vec4<bool>(true, 28086u > var_0.x, false, any(vec2<bool>(global1.x, global1.x))), !vec4<bool>(global1.x, global1.x, true, global1.x)), select(!vec4<bool>(global1.x, false, global1.x, global1.x), select(!vec4<bool>(false, true, true, global1.x), !vec4<bool>(global1.x, global1.x, global1.x, true), vec4<bool>(global1.x, global1.x, global1.x, true)), !global1.x && func_3(Struct_2(vec4<bool>(false, global1.x, true, global1.x), vec4<f32>(-450f, -1244f, -1075f, 719f), Struct_1(29631u, vec2<f32>(1363f, -910f), vec3<u32>(u_input.d, 94037u, u_input.d)), -1046f)).x), vec4<bool>(false, !global1.x & true, true & global1.x, !(!global1.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-660f, 1446f, 1300f, 187f), vec4<f32>(-280f, -781f, 1145f, 111f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(943f, 1294f, -237f, -694f), vec4<f32>(1000f, -440f, -984f, -1000f))))))), Struct_1(u_input.d, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(430f, 1955f)) + _wgslsmith_f_op_f32(297f + -997f)), _wgslsmith_f_op_f32(1289f + _wgslsmith_f_op_f32(f32(-1f) * -2244f))), ~firstTrailingBit(u_input.c) | ~vec3<u32>(var_0.x, 49123u, u_input.c.x)), _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(1325f - -591f)))));
    return var_1.c;
}

fn func_1() -> f32 {
    global2 = 1u;
    var var_0 = false;
    let var_1 = func_2(-2147483647i);
    global0 = array<Struct_3, 16>();
    global0 = array<Struct_3, 16>();
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1088f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), func_2(u_input.a.x).b.x, -551f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-235f, 944f, -851f, -265f)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1010f, 890f, 1218f, -394f))))))));
    let var_1 = global1.x;
    var var_2 = global1.x;
    var_2 = global1.x;
    var_2 = _wgslsmith_f_op_f32(exp2(var_0.x)) <= -826f;
    var var_3 = Struct_2(vec4<bool>(!global1.x, false, false, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -1192f)), 447f)), Struct_1(0u, func_2(u_input.a.x >> (54559u % 32u)).b, vec3<u32>(reverseBits(4294967295u), 0u, 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_f32(trunc(-771f))));
    let var_4 = true | !(8761u != ~var_3.c.a);
    let var_5 = Struct_2(vec4<bool>(var_3.c.c.x == ~(~u_input.d), any(var_3.a.wwx), var_4, true), vec4<f32>(-840f, 722f, var_3.c.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), func_2(_wgslsmith_mult_i32(u_input.a.x, select(u_input.a.x, 2147483647i, var_3.a.x))), var_3.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, ~(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_3.c.a, var_5.c.a), func_2(-2147483647i).c.yy) >> (var_3.c.c.yy % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(-var_5.c.b), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_5.c.b.x, 996f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.c.b.x, -865f) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.x, 702f), vec2<f32>(var_3.c.b.x, var_3.c.b.x))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_5.d, 1088f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.b.x, var_5.b.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(var_0, vec4<f32>(_wgslsmith_f_op_f32(-var_3.d), _wgslsmith_f_op_f32(var_0.x - var_0.x), -875f, _wgslsmith_div_f32(-1000f, var_5.d)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(abs(var_0.x)), var_3.d) + _wgslsmith_f_op_vec4_f32(min(var_3.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, -807f, var_5.d, var_0.x) + var_3.b))))));
}

