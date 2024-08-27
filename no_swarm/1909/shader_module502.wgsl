struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<f32>,
    c: Struct_2,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

var<private> global2: array<Struct_1, 8>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> vec2<bool> {
    var var_0 = ~(vec3<u32>(arg_0.a << (0u % 32u), ~_wgslsmith_add_u32(28814u, arg_0.a), u_input.b.x) >> (~(countOneBits(vec3<u32>(arg_0.a, u_input.c.x, arg_0.a)) ^ reverseBits(vec3<u32>(60028u, u_input.c.x, 4294967295u))) % vec3<u32>(32u)));
    var var_1 = Struct_4(Struct_3(~vec4<u32>(8049u, 1u, ~var_0.x, 0u)));
    var_1 = Struct_4(var_1.a);
    var_0 = (vec3<u32>(_wgslsmith_add_u32(_wgslsmith_div_u32(var_0.x, u_input.c.x), u_input.b.x), 12417u >> ((u_input.b.x << (var_0.x % 32u)) % 32u), ~u_input.b.x) | ~select(~vec3<u32>(35764u, 20960u, var_0.x), vec3<u32>(var_0.x, 1704u, var_0.x), select(vec3<bool>(false, arg_0.b, arg_0.b), vec3<bool>(true, false, arg_0.b), vec3<bool>(arg_0.b, false, arg_0.b)))) & _wgslsmith_add_vec3_u32(vec3<u32>(~u_input.c.x, _wgslsmith_clamp_u32(abs(25238u), max(arg_0.a, 91220u), firstTrailingBit(4294967295u)), 20842u), firstTrailingBit(~_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 4294967295u, u_input.b.x), var_1.a.a.zxx)));
    let var_2 = Struct_5(Struct_3(var_1.a.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(arg_0.d.wwy)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, 1480f, arg_1.x) * arg_0.d.wwz))), arg_0.d.xww)), Struct_2(global2[_wgslsmith_index_u32(~29314u, 8u)], vec2<i32>(12669i, 1i), ~vec3<u32>(~63161u, 0u, 1u)), ~var_1.a.a, arg_0);
    return select(!(!select(!vec2<bool>(true, var_2.e.b), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, var_2.e.b)), select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, true), true))), select(!(!vec2<bool>(arg_0.b, false)), select(select(!vec2<bool>(var_2.c.a.b, true), vec2<bool>(var_2.e.b, var_2.e.b), !var_2.c.a.b), select(!vec2<bool>(var_2.c.a.b, false), select(vec2<bool>(var_2.c.a.b, var_2.e.b), vec2<bool>(false, arg_0.b), vec2<bool>(arg_0.b, false)), arg_0.b && arg_0.b), !select(vec2<bool>(var_2.e.b, false), vec2<bool>(var_2.e.b, var_2.e.b), true)), vec2<bool>(true, any(!vec2<bool>(var_2.e.b, true)))), !(!select(select(vec2<bool>(arg_0.b, true), vec2<bool>(var_2.c.a.b, true), var_2.e.b), !vec2<bool>(arg_0.b, arg_0.b), !vec2<bool>(arg_0.b, var_2.e.b))));
}

fn func_2() -> u32 {
    let var_0 = func_3(Struct_1(1u, true, u_input.a.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -513f) + _wgslsmith_f_op_f32(-510f - 1308f)), _wgslsmith_f_op_f32(f32(-1f) * -216f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(477f)) + -1988f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(269f, 675f)), _wgslsmith_div_f32(-574f, -409f))))), vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1452f) * _wgslsmith_f_op_f32(1464f + -445f)) - -1005f)));
    let var_1 = true;
    global0 = 0i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-5561i, 12317i, ~1i, _wgslsmith_sub_i32(u_input.a.x, -11577i)), firstLeadingBit(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, -13315i, u_input.a.x, u_input.a.x), vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -12002i, u_input.a.x, u_input.a.x)))));
    var var_2 = u_input.a;
    var var_3 = true;
    return 0u;
}

fn func_1() -> Struct_3 {
    global1 = ~func_2();
    let var_0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(393f - -997f) + _wgslsmith_f_op_f32(-1411f - 621f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-381f, -651f, false)) * -405f), _wgslsmith_f_op_f32(f32(-1f) * -1192f)) * vec3<f32>(221f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(817f - 1000f))), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(trunc(-479f))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-499f, -733f, -2097f) - vec3<f32>(853f, -946f, 1470f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1225f, -808f, 985f), vec3<f32>(-1477f, 660f, -1000f), false)))), vec3<f32>(1f, 1f, 1f)), vec3<f32>(1f, 1f, 1f)))));
    let var_1 = func_3(global2[_wgslsmith_index_u32(u_input.c.x, 8u)], vec2<f32>(-753f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.x, var_0.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x))));
    var var_2 = Struct_3(vec4<u32>(~(~0u), 0u, 0u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c.x, 4294967295u, u_input.b.x, u_input.c.x) | vec4<u32>(61448u, u_input.b.x, u_input.b.x, 0u)), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.c.x, 15943u, u_input.b.x), vec4<u32>(9357u, 0u, u_input.b.x, u_input.c.x)), u_input.b.x, 0u))));
    var var_3 = vec4<i32>(-_wgslsmith_mod_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 7160i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 4734i, u_input.a.x)), _wgslsmith_clamp_i32(u_input.a.x >> (0u % 32u), ~u_input.a.x, -u_input.a.x)), 15628i, _wgslsmith_mult_i32(~(_wgslsmith_mult_i32(5433i, u_input.a.x) & u_input.a.x), min(-1822i, u_input.a.x)), 36781i);
    return Struct_3(max(var_2.a, var_2.a));
}

fn func_4(arg_0: Struct_5, arg_1: i32) -> Struct_2 {
    var var_0 = arg_0.c.a.a;
    let var_1 = Struct_2(Struct_1(u_input.c.x, true, _wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(reverseBits(0i), arg_1 >> (1u % 32u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.b.x, arg_0.c.a.d.x, arg_0.c.a.d.x, arg_0.b.x))), _wgslsmith_f_op_vec4_f32(-arg_0.c.a.d))))), (select(-vec2<i32>(arg_0.c.a.c, arg_0.c.a.c), vec2<i32>(arg_0.e.c, 1i), vec2<bool>(true, true)) & u_input.a.yy) >> (vec2<u32>(~(arg_0.a.a.x ^ 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~arg_0.c.c.xz)) % vec2<u32>(32u)), min(~(~vec3<u32>(u_input.b.x, u_input.b.x, arg_0.d.x)) << (arg_0.d.yxw % vec3<u32>(32u)), arg_0.d.xwy));
    return Struct_2(global2[_wgslsmith_index_u32(1u, 8u)], firstLeadingBit(firstTrailingBit(-vec2<i32>(0i, arg_1) ^ _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 1i), u_input.a.xy))), ~(vec3<u32>(~var_1.a.a, var_1.c.x, firstLeadingBit(var_1.a.a)) & (firstLeadingBit(vec3<u32>(4294967295u, arg_0.d.x, arg_0.a.a.x)) | ~vec3<u32>(0u, 9005u, u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -464f;
    var var_1 = func_4(Struct_5(func_1(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(229f, 1995f, 132f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1995f, -153f, -538f)))), Struct_2(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], vec2<i32>(min(-86081i, u_input.a.x), ~(-7161i)), firstLeadingBit(abs(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)))), vec4<u32>(1u, 17389u, firstLeadingBit(u_input.c.x) >> (func_2() % 32u), u_input.b.x), Struct_1(~u_input.b.x, true, u_input.a.x & _wgslsmith_dot_vec4_i32(vec4<i32>(-41156i, 2147483647i, u_input.a.x, 30725i), vec4<i32>(1i, u_input.a.x, u_input.a.x, 3793i)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(639f, -935f, -1167f, 422f))))), min(abs(abs(u_input.a.x)), ~u_input.a.x));
    var var_2 = func_1();
    let var_3 = Struct_1(var_2.a.x, true, 2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.d.x, -828f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(428f, var_1.a.d.x))), 926f)));
    var var_4 = func_1();
    var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(max(0i, ~(-24488i)), countOneBits(1i)));
}

