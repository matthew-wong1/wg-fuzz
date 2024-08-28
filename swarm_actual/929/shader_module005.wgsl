struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: f32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10> = array<u32, 10>(4294967295u, 0u, 109285u, 1u, 13808u, 80377u, 0u, 1722u, 12679u, 4294967295u);

var<private> global1: vec3<u32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_3) -> u32 {
    global1 = abs(vec3<u32>(_wgslsmith_div_u32(45525u, ~(~1906u)), reverseBits(u_input.b.x), global1.x));
    let var_0 = -(min(vec4<i32>(u_input.c, countOneBits(arg_0.a.x), _wgslsmith_mult_i32(arg_0.a.x, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, -8662i), arg_2.a.b.xy)), vec4<i32>(abs(9311i), 31654i, firstLeadingBit(1i), u_input.e)) >> ((vec4<u32>(_wgslsmith_div_u32(arg_2.e, 34974u), ~0u, 0u, 1u >> (arg_2.e % 32u)) << (~(~u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(952f - 142f) - arg_2.c.x), _wgslsmith_f_op_f32(arg_2.d.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(189f, arg_2.c.x)) * 251f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.b.c), _wgslsmith_f_op_f32(trunc(1906f)), true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.x))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1241f), arg_2.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-584f)) - arg_2.d.x) + -2062f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_2.b.c, _wgslsmith_f_op_f32(-arg_2.c.x))) + _wgslsmith_f_op_f32(-arg_2.b.c))));
    let var_3 = -50296i;
    return _wgslsmith_dot_vec4_u32(u_input.b, ~u_input.b) | u_input.a.x;
}

fn func_2(arg_0: f32) -> vec4<u32> {
    global0 = array<u32, 10>();
    global1 = u_input.b.xwx;
    var var_0 = vec3<u32>(global1.x, _wgslsmith_mod_u32((u_input.b.x << (min(45095u, global0[_wgslsmith_index_u32(13524u, 10u)]) % 32u)) & _wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(global1.x, 10u)], global1.x | 8712u), 7254u), u_input.a.x);
    global1 = ~(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(22202u, var_0.x, 0u), vec3<u32>(global0[_wgslsmith_index_u32(var_0.x, 10u)], 3340u, 0u)), u_input.b.yyy), vec3<u32>(4294967295u, 18392u, ~global1.x)) << ((vec3<u32>(func_3(Struct_1(vec4<i32>(2147483647i, u_input.e, 1i, u_input.d.x), vec3<i32>(18558i, 10157i, u_input.c), vec4<bool>(false, false, true, true)), vec2<bool>(false, true), Struct_3(Struct_1(vec4<i32>(u_input.e, 11798i, -1i, 1i), vec3<i32>(39712i, 1i, 0i), vec4<bool>(true, true, true, true)), Struct_2(Struct_1(vec4<i32>(-2147483647i, u_input.e, u_input.e, u_input.d.x), vec3<i32>(u_input.e, u_input.c, u_input.c), vec4<bool>(false, true, true, true)), vec2<u32>(global1.x, u_input.b.x), arg_0, global1.x, Struct_1(vec4<i32>(u_input.c, -1i, 2147483647i, -1i), vec3<i32>(0i, u_input.d.x, -25346i), vec4<bool>(false, true, false, false))), vec2<f32>(arg_0, arg_0), vec3<f32>(arg_0, -160f, arg_0), 83970u)), abs(1u), 20929u) | vec3<u32>(u_input.a.x >> (83076u % 32u), ~var_0.x, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_0.x, 10u)], 0u))) % vec3<u32>(32u)));
    global1 = u_input.a.xxy;
    return abs(firstTrailingBit(abs(~vec4<u32>(u_input.a.x, var_0.x, 66979u, 66007u))));
}

fn func_1() -> Struct_1 {
    let var_0 = ~(~(~func_2(1f)));
    global1 = _wgslsmith_mult_vec3_u32(abs(u_input.a.yyw), u_input.b.yyy ^ vec3<u32>(~u_input.b.x, ~4294967295u, ~var_0.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(376f, 1054f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-463f, -134f)))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-515f, -1000f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(176f, 1248f)), true)), vec2<f32>(1f, 1f)))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(273f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(363f * -1000f), _wgslsmith_f_op_f32(min(-852f, -944f)), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-134f - 641f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -665f), -495f))));
    let var_2 = !vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), true);
    let var_3 = Struct_1(vec4<i32>(-select(-2147483647i, u_input.c, false), _wgslsmith_dot_vec2_i32(u_input.d, _wgslsmith_div_vec2_i32(u_input.d, vec2<i32>(-1i, u_input.d.x))), _wgslsmith_div_i32(u_input.d.x, _wgslsmith_div_i32(u_input.c, u_input.c)), ~(~u_input.c)) | _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.d.x, u_input.d.x), ~(-16177i), -u_input.c, u_input.d.x & -1i), select(vec4<i32>(29348i, 1i, u_input.c, 25073i), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -10081i, -2844i, u_input.d.x), vec4<i32>(u_input.c, 5671i, u_input.d.x, u_input.c)), var_2.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.e, u_input.d.x, 5578i) << (vec3<u32>(global0[_wgslsmith_index_u32(var_0.x, 10u)], 0u, 4294967295u) % vec3<u32>(32u)), ~vec3<i32>(1i, 2147483647i, 11903i)), _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(12884i, 1i, -28719i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1067i, u_input.d.x, 35542i), vec3<i32>(u_input.c, u_input.d.x, u_input.e), vec3<i32>(-12566i, u_input.e, 55098i)))), reverseBits(~vec3<i32>(u_input.d.x, u_input.e, u_input.d.x) & ~vec3<i32>(u_input.c, u_input.d.x, 2147483647i))), vec4<bool>(!all(!vec4<bool>(false, var_2.x, var_2.x, true)), any(vec4<bool>(true, any(vec2<bool>(var_2.x, true)), var_2.x, !var_2.x)), var_2.x, !(!select(true, var_2.x, false))));
    return Struct_1(reverseBits(vec4<i32>(-var_3.a.x, abs(35133i), select(var_3.a.x, -15248i, var_3.c.x), var_3.b.x)) ^ vec4<i32>(u_input.c, -3697i, _wgslsmith_dot_vec4_i32(var_3.a, vec4<i32>(var_3.b.x, var_3.b.x, var_3.b.x, -2147483647i)) << (~31266u % 32u), ~(~u_input.e)), -var_3.a.wwz, !(!select(!var_3.c, !vec4<bool>(var_3.c.x, false, var_3.c.x, true), var_3.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = u_input.b;
    var_1 = vec4<u32>(1u, 1u, global1.x, max(var_1.x, select(firstTrailingBit(firstTrailingBit(22566u)), global1.x, true)));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-180f, 882f) * vec2<f32>(854f, 2323f))))) + vec2<f32>(_wgslsmith_f_op_f32(step(-1097f, _wgslsmith_f_op_f32(floor(-884f)))), 1f)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - -691f)))))));
    var var_4 = global1.yx;
    global0 = array<u32, 10>();
    var_1 = ~u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(-1274f, -var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.x * -1000f))), -420f))), -2145f);
}

