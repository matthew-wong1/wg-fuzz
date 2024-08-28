struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec4<i32> = vec4<i32>(-7462i, 1i, 51955i, 0i);

var<private> global2: array<vec3<i32>, 14>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2() -> bool {
    let var_0 = Struct_1(_wgslsmith_div_i32(abs(firstLeadingBit(_wgslsmith_clamp_i32(u_input.d.x, 8459i, global1.x))), 2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1152f)))));
    global2 = array<vec3<i32>, 14>();
    var var_1 = var_0;
    let var_2 = Struct_2(~u_input.c, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - var_1.b) * 174f), _wgslsmith_f_op_f32(abs(var_0.b)), var_0.b))), vec2<bool>(true, false));
    let var_3 = _wgslsmith_div_f32(var_2.b.x, var_1.b);
    return var_2.a <= u_input.c;
}

fn func_1() -> Struct_2 {
    let var_0 = Struct_2(u_input.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(2223f, 157f, -1795f), vec3<f32>(1901f, -865f, -337f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-572f, 854f, -639f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1623f, 1000f, -1149f) - vec3<f32>(1941f, -923f, 1404f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(192f, 409f, -1129f) + vec3<f32>(1112f, -479f, -234f))))), vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(563f * 1692f), _wgslsmith_f_op_f32(ceil(1212f))) < -555f, !func_2()));
    let var_1 = ~vec4<i32>(select(0i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, u_input.d), vec4<i32>(u_input.a.x, global1.x, u_input.d.x, 2147483647i)), func_2()), -2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(global1.ww, u_input.a.wz, u_input.d.xy), select(vec2<i32>(-16722i, -2147483647i), u_input.a.xz, vec2<bool>(var_0.c.x, true))), vec2<i32>(-1i) * -vec2<i32>(global1.x, 23424i)), ~select(u_input.b, u_input.b, true));
    var var_2 = ~1i;
    let var_3 = 4294967295u;
    let var_4 = Struct_1(~17981i, 157f);
    return var_0;
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec2<f32>) -> f32 {
    let var_0 = abs(-(~(-(~0i))));
    global0 = abs(vec2<u32>(firstTrailingBit(22839u), arg_1.a));
    let var_1 = global0.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(-1000f, arg_2.b.x), _wgslsmith_f_op_f32(-func_1().b.x))));
    global1 = _wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(~global1.x) << (global0.x % 32u), reverseBits(1i | _wgslsmith_clamp_i32(u_input.a.x, global1.x, global1.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, global1.x, 1i), reverseBits(global1.xwy)), u_input.a.x), u_input.d.x), u_input.a);
    return 438f;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1739f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.x))))) - arg_0.b.x);
    var var_1 = arg_2;
    let var_2 = ~min(~vec4<u32>(select(u_input.c, 58725u, true), u_input.c, _wgslsmith_div_u32(arg_0.a, u_input.c), ~u_input.c), _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(4294967295u, 34846u, arg_0.a, 1u)) | select(vec4<u32>(global0.x, 48249u, 78972u, arg_3.a), vec4<u32>(0u, global0.x, global0.x, global0.x), vec4<bool>(false, true, false, false)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a, 0u, u_input.c, u_input.c), ~vec4<u32>(40498u, arg_3.a, u_input.c, 0u))));
    let var_3 = Struct_1(min(-32821i, abs((-70044i ^ u_input.d.x) ^ (i32(-1i) * -30265i))), _wgslsmith_f_op_f32(-arg_1.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1544f * arg_2.b));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<i32>, 14>();
    let var_0 = func_4(func_1(), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-396f - 1334f), -565f))), Struct_1(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(63716u, u_input.c, global0.x, u_input.c), Struct_2(61190u, vec3<f32>(573f, -1000f, 1107f), vec2<bool>(false, false)), Struct_2(u_input.c, vec3<f32>(1089f, -1670f, -387f), vec2<bool>(true, false)), _wgslsmith_div_vec2_f32(vec2<f32>(684f, -1149f), vec2<f32>(246f, 310f)))))), func_1());
    global0 = vec2<u32>(select(u_input.c, 4294967295u, any(vec2<bool>(false, true))) | _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global0.x, 6674u), ~vec2<u32>(39756u, 1990u)), countOneBits(vec2<u32>(4294967295u, u_input.c)) | ~vec2<u32>(0u, 32029u)), ~(~4294967295u));
    var var_1 = ~reverseBits(reverseBits(vec3<i32>(1i, ~global1.x, 2147483647i)));
    var_1 = -reverseBits(-global2[_wgslsmith_index_u32(1u, 14u)]);
    global0 = vec2<u32>(u_input.c, ~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<u32>(59357u, 1u, var_0.a, 10975u) ^ (vec4<u32>(global0.x, u_input.c, 1825u, u_input.c) & ~vec4<u32>(u_input.c, 1u, 1u, var_0.a))), vec2<i32>(u_input.b, abs(-(~(-25971i)))), ~34015i >> (_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(var_0.a, u_input.c), vec2<u32>(u_input.c, 1u)), ~vec2<u32>(global0.x, 0u)) % 32u));
}

