struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: i32) -> vec2<f32> {
    var var_0 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(abs(u_input.c.x ^ 76523u), u_input.b.x, select(max(58721u, arg_1.x), ~1u, true), 1673u), vec4<u32>(~(~u_input.c.x), ~0u, u_input.b.x ^ ~4294967295u, 0u)), abs(vec4<u32>(abs(_wgslsmith_mult_u32(0u, u_input.c.x)), 16698u, (39031u >> (arg_1.x % 32u)) & _wgslsmith_mult_u32(16353u, arg_1.x), firstTrailingBit(~27050u))));
    var var_1 = vec4<bool>(abs(u_input.c.x) == (~select(1u, arg_1.x, true) & arg_1.x), true, false, any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true)) || (~0u < firstTrailingBit(_wgslsmith_mult_u32(u_input.c.x, 78738u))));
    let var_2 = 33538i ^ min(abs(arg_0.a.x), 31631i);
    return vec2<f32>(-125f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f + -790f), _wgslsmith_f_op_f32(ceil(-384f)))) + _wgslsmith_div_f32(-440f, -342f)));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<u32>) -> vec3<f32> {
    global0 = array<Struct_2, 19>();
    var var_0 = ~_wgslsmith_mod_vec3_u32(u_input.c, min(abs(u_input.c), vec3<u32>(u_input.b.x, 4294967295u, 4294967295u))) ^ u_input.c;
    var var_1 = ~(u_input.b.x | ~1u);
    var_1 = _wgslsmith_add_u32(arg_1.x, ~arg_1.x);
    let var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(vec4<i32>(arg_0.x, u_input.a, min(60939i, 2147483647i), _wgslsmith_add_i32(u_input.a, u_input.a))), u_input.c, _wgslsmith_mult_i32(-3355i, 7464i))), vec3<i32>(arg_0.x, countOneBits(firstTrailingBit(u_input.a >> (96127u % 32u))), 1i), var_0.x, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(130f, -281f, 1024f, -1024f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1777f, -549f, 441f, -131f)))))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a.x, -767f, -331f), var_2.d.a.zwx) - vec3<f32>(var_2.d.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_2.a.x, -1139f))), -664f)));
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(429f, -1191f, -415f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1201f, 543f, 163f)))), _wgslsmith_f_op_vec3_f32(func_2(vec2<i32>(u_input.a, -37987i) ^ vec2<i32>(u_input.a, -2147483647i), u_input.b)))))));
    global0 = array<Struct_2, 19>();
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    return vec4<bool>(true, true, !(!(!(u_input.a >= u_input.a))), true);
}

fn func_4(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-249f, -464f, 855f, 1157f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-105f, 446f, -651f, 158f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(261f, 746f, -1000f, -1472f) - vec4<f32>(-324f, 485f, 1172f, 1000f))))))));
    var_0 = Struct_1(var_0.a);
    var var_1 = Struct_2(var_0.a.xw, vec3<i32>(12641i, reverseBits(countOneBits(u_input.a) | ~1i), _wgslsmith_add_i32(u_input.a, 1i)), ~min(reverseBits(min(32161u, 1u)), select(_wgslsmith_clamp_u32(1u, u_input.b.x, u_input.c.x), 21974u, true)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-553f, var_0.a.x, var_0.a.x, 1010f), vec4<f32>(248f, var_0.a.x, 788f, 679f), false)) + var_0.a))));
    let var_2 = func_1().zxz;
    global0 = array<Struct_2, 19>();
    return Struct_3(-_wgslsmith_div_vec4_i32(-(~vec4<i32>(-50643i, -2147483647i, u_input.a, var_1.b.x)), -(vec4<i32>(u_input.a, -19631i, u_input.a, u_input.a) ^ vec4<i32>(var_1.b.x, u_input.a, 15033i, -43812i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(29294u, 1u, ~(~(~u_input.c.x)));
    let var_1 = func_4(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(-(vec3<i32>(-2147483647i, u_input.a, 80373i) & var_1.a.wxz), _wgslsmith_mod_u32(~((var_0.x ^ 0u) | (u_input.c.x & 12309u)), ~0u), 1u >> (1u % 32u));
}

