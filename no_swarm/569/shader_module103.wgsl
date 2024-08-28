struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2) -> i32 {
    global0 = array<Struct_3, 20>();
    let var_0 = ~vec4<u32>(arg_0.c.a ^ (~39724u & _wgslsmith_mod_u32(arg_0.b.a, 53307u)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(21947u, u_input.d.x, 4294967295u, u_input.d.x), reverseBits(vec4<u32>(0u, 1u, u_input.d.x, 83403u))), ((u_input.b ^ arg_0.a.a) >> (1u % 32u)) << (1u % 32u), arg_0.d.a);
    var var_1 = 1u > _wgslsmith_add_u32(0u, arg_0.c.a);
    var var_2 = all(vec4<bool>(true, arg_0.a.e, true, false));
    let var_3 = global0[_wgslsmith_index_u32(~(var_0.x << ((1u >> ((u_input.c | ~var_0.x) % 32u)) % 32u)), 20u)];
    return select(-u_input.a, min(2147483647i, arg_0.c.b.x), any(select(vec2<bool>(!var_3.a.c.e, any(vec3<bool>(arg_0.d.e, var_3.a.c.e, true))), vec2<bool>(true, var_3.a.b.e), true)));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32, arg_3: vec2<bool>) -> bool {
    let var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(min(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.d.a, 16978u, 18370u, arg_1.x), vec4<u32>(arg_0.a.a, 4294967295u, 27680u, 26862u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 25830u, u_input.d.x, 4294967295u), vec4<u32>(64415u, arg_0.a.a, u_input.d.x, arg_1.x))), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, 14006u, u_input.d.x, 0u), vec4<u32>(arg_1.x, u_input.b, 0u, 1u)) | _wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_0.c.a, u_input.d.x), vec4<u32>(1u, 3413u, u_input.b, u_input.b))), 26047u), 20u)];
    let var_1 = ~arg_0.c.a;
    let var_2 = vec4<bool>(var_0.a.d.e, true, !all(select(vec3<bool>(true, true, true), select(vec3<bool>(arg_0.d.e, true, false), vec3<bool>(var_0.a.d.e, true, false), var_0.a.b.e), vec3<bool>(var_0.a.b.e, var_0.a.c.e, var_0.a.c.e))), any(select(vec3<bool>(var_0.a.a.e, arg_3.x, arg_2 == arg_2), select(select(vec3<bool>(arg_3.x, arg_3.x, arg_0.b.e), vec3<bool>(false, true, true), vec3<bool>(var_0.a.b.e, var_0.a.d.e, arg_3.x)), vec3<bool>(false, arg_0.c.e, false), true), arg_0.c.e)));
    var var_3 = global0[_wgslsmith_index_u32(37063u, 20u)];
    let var_4 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1047f, _wgslsmith_f_op_f32(-arg_0.b.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.a.b.d)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1480f, -1000f), vec2<f32>(-887f, arg_0.a.d), arg_3))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1031f, var_0.a.c.c), vec2<f32>(var_0.a.b.c, -1207f))))))));
    return all(var_2.xz);
}

fn func_2() -> f32 {
    global0 = array<Struct_3, 20>();
    var var_0 = u_input.d.x;
    let var_1 = vec2<bool>(any(vec2<bool>(func_4(Struct_2(Struct_1(65132u, vec2<i32>(u_input.a, u_input.a), -526f, -809f, false), Struct_1(u_input.d.x, vec2<i32>(-55531i, 1i), 1710f, 1456f, false), Struct_1(4294967295u, vec2<i32>(u_input.a, u_input.a), 316f, 612f, false), Struct_1(u_input.d.x, vec2<i32>(-1i, -25548i), 1220f, 1000f, false)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 14114u, u_input.b), u_input.d), func_3(Struct_2(Struct_1(u_input.d.x, vec2<i32>(2147483647i, 30383i), 528f, 1000f, false), Struct_1(4294967295u, vec2<i32>(-2147483647i, u_input.a), 1000f, 399f, false), Struct_1(25895u, vec2<i32>(u_input.a, u_input.a), -886f, 1000f, true), Struct_1(u_input.d.x, vec2<i32>(u_input.a, 32340i), 1461f, -459f, true))), vec2<bool>(true, true)), all(vec3<bool>(false, false, false)))), false);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(3378f, -1830f, 742f, 845f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-2406f, -561f, 1164f, 493f), vec4<f32>(634f, 792f, 269f, 364f), vec4<bool>(var_1.x, var_1.x, true, true))), vec4<f32>(1f, 1f, 1f, 1f))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(965f + 437f)) * -1242f), _wgslsmith_f_op_f32(f32(-1f) * -1856f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-304f + -149f) * -233f)), _wgslsmith_f_op_f32(max(-986f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -770f), !var_1.x))))));
    var var_3 = var_1.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_2.x, var_2.x, var_1.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1398f)))) * 1601f);
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec3<f32>) -> Struct_3 {
    global0 = array<Struct_3, 20>();
    let var_0 = _wgslsmith_f_op_f32(func_2());
    global0 = array<Struct_3, 20>();
    var var_1 = Struct_1(1u, -vec2<i32>(_wgslsmith_add_i32(-arg_1, ~2147483647i), 15597i), _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(func_2()), any(vec3<bool>(true | (1u > u_input.b), all(vec3<bool>(true, false, false)), any(vec3<bool>(true, true, false)))));
    let var_2 = ~var_1.b;
    return Struct_3(Struct_2(Struct_1(4294967295u, var_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) * 1062f), 551f, var_1.e), Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(67482u, 49453u), vec2<u32>(1u, 93092u)) | 1u, ~vec2<i32>(var_2.x, var_2.x), _wgslsmith_f_op_f32(-arg_2.x), arg_0, !var_1.e), Struct_1(var_1.a, reverseBits(-var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -517f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-244f, -2321f) - var_1.c), false | (1u < var_1.a)), Struct_1(_wgslsmith_clamp_u32(34097u, var_1.a << (2782u % 32u), var_1.a), vec2<i32>(abs(1509i), abs(9146i)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-268f - -408f))), -804f, all(vec3<bool>(false, false, false)))), var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(~(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -1i, u_input.a), ~vec3<i32>(2147483647i, u_input.a, -4418i))));
    var var_1 = ~(~vec4<u32>(~0u, _wgslsmith_clamp_u32(u_input.b, u_input.b, firstTrailingBit(39567u)), u_input.c, 90081u));
    var_0 = firstTrailingBit(vec3<i32>(u_input.a, 1i, _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.a, select(7194i, u_input.a, false)), var_0.x)));
    global0 = array<Struct_3, 20>();
    var var_2 = func_1(-1985f, i32(-1i) * -_wgslsmith_clamp_i32(reverseBits(u_input.a), -4980i, abs(2147483647i)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<u32>(abs(u_input.b), u_input.c, _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 1u), abs(vec2<u32>(4294967295u, 11208u))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -254f) + _wgslsmith_f_op_f32(f32(-1f) * -251f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.a.c.c)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -197f) + _wgslsmith_f_op_f32(var_2.a.d.c * var_2.a.c.d)))), _wgslsmith_f_op_f32(min(var_2.a.a.d, -210f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1346f) + _wgslsmith_f_op_f32(floor(var_2.a.b.d))), _wgslsmith_f_op_f32(-var_2.a.c.c))), u_input.d.x, abs(min(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.d.zz, vec2<u32>(var_2.a.b.a, 4294967295u)), u_input.b << (41283u % 32u)), var_1.x)), _wgslsmith_sub_u32(abs(1u), var_1.x));
}

