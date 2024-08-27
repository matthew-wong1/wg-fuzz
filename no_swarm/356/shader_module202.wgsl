struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 29>;

var<private> global1: array<Struct_1, 23>;

var<private> global2: vec3<f32> = vec3<f32>(-786f, -958f, 227f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global0 = array<vec2<f32>, 29>();
    let var_0 = reverseBits(~_wgslsmith_div_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, -1i, 79557i, 0i), vec4<i32>(u_input.b, 2147483647i, u_input.b, -2147483647i)), vec4<i32>(_wgslsmith_mult_i32(-43131i, u_input.b), -u_input.b, ~46i, abs(u_input.b))));
    var var_1 = vec2<bool>(all(vec4<bool>(false, true, any(vec4<bool>(true, true, true, true)), true)), false && (_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(arg_0))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - -1040f)));
    global0 = array<vec2<f32>, 29>();
    global2 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-902f * arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(303f - arg_0) + -204f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(arg_0)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1, -927f)) * global2.x)), !(!var_1.x))), _wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, arg_1)));
    return u_input.b | ~max(48264i, 0i);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = 1f;
    let var_1 = arg_1;
    let var_2 = _wgslsmith_mult_vec4_i32(~(~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(756i, arg_0.x, arg_0.x, 1i), vec4<i32>(-2147483647i, u_input.b, 11070i, u_input.b), vec4<i32>(-9762i, 36004i, 1i, 2147483647i)))), vec4<i32>(~(-1i), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-9047i), ~(-16553i), -47906i >> (u_input.a % 32u), func_3(global2.x, var_0, Struct_1(vec4<u32>(1u, 21356u, u_input.a, var_1.a.x), vec3<u32>(64736u, 9384u, 35444u)), Struct_1(vec4<u32>(u_input.c, 44012u, 1460u, 4294967295u), u_input.d))), countOneBits(vec4<i32>(arg_0.x, u_input.b, u_input.b, 1i) << (vec4<u32>(30146u, 11202u, var_1.a.x, var_1.a.x) % vec4<u32>(32u)))), -27414i, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, arg_0.x) ^ arg_0, arg_0), vec2<i32>(1i, arg_0.x))));
    let var_3 = -_wgslsmith_div_i32(-2147483647i, var_2.x) | func_3(_wgslsmith_f_op_f32(-global2.x), -420f, var_1, Struct_1(_wgslsmith_add_vec4_u32(arg_1.a, var_1.a), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a.x, 0u, u_input.a) & vec3<u32>(0u, 1u, u_input.c), vec3<u32>(4297u, 33762u, arg_1.a.x), min(u_input.d, vec3<u32>(40889u, u_input.a, u_input.d.x)))));
    let var_4 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(select(var_2.zzy, vec3<i32>(var_3, u_input.b, var_3), vec3<bool>(true, true, false)) ^ var_2.wyx, max(vec3<i32>(u_input.b, -18265i, arg_0.x), min(var_2.yxw, vec3<i32>(arg_0.x, var_3, u_input.b)))), ~vec3<i32>(u_input.b, select(-105147i, 10226i, true), arg_0.x)) & (var_2.xxz & var_2.xyx);
    return ~firstLeadingBit(select(abs(vec4<u32>(1u, u_input.c, u_input.a, u_input.a) ^ arg_1.a), firstLeadingBit(vec4<u32>(53349u, arg_1.b.x, 0u, 42178u)) & firstLeadingBit(arg_1.a), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, 1000f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(744f, 1090f, global2.x)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -409f, global2.x) * vec3<f32>(global2.x, global2.x, global2.x))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global2.x * 166f), _wgslsmith_f_op_f32(step(-992f, 1772f)), _wgslsmith_f_op_f32(-global2.x)))));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -446f)) * global2.x), 944f));
    var var_1 = global1[_wgslsmith_index_u32(~27504u, 23u)];
    global1 = array<Struct_1, 23>();
    var var_2 = _wgslsmith_div_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(var_1.a.yx, vec2<u32>(4294967295u, var_1.a.x), vec2<u32>(93891u, 4294967295u)), var_1.b.yz | vec2<u32>(6906u, u_input.c))) | var_1.b.zy, ~(vec2<u32>(var_1.b.x, var_1.b.x) & u_input.d.zz));
    return Struct_1(func_2(-((vec2<i32>(6735i, 51238i) >> (var_1.b.yx % vec2<u32>(32u))) ^ _wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, u_input.b), vec2<i32>(u_input.b, -35753i))), Struct_1(_wgslsmith_div_vec4_u32(var_1.a, min(var_1.a, var_1.a)), ~vec3<u32>(34623u, var_2.x, var_2.x))), vec3<u32>(1u, 4294967295u, func_2(max(vec2<i32>(-41422i, 3379i), vec2<i32>(u_input.b, u_input.b)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(var_1.a.x, 22244u), var_1.a.yx) % vec2<u32>(32u)), Struct_1(countOneBits(var_1.a), u_input.d | u_input.d)).x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(31957u, u_input.a)), ~u_input.d.xz), ~(~vec2<u32>(u_input.d.x, 4294967295u))) ^ _wgslsmith_mult_u32(1u, u_input.d.x));
    let var_1 = func_1(false);
    var var_2 = 1i;
    let var_3 = Struct_1(var_1.a, _wgslsmith_add_vec3_u32(~u_input.d | firstLeadingBit(var_1.a.zyz), var_1.b) ^ var_1.a.xzz);
    global0 = array<vec2<f32>, 29>();
    let var_4 = global1[_wgslsmith_index_u32(var_1.b.x, 23u)];
    var var_5 = func_1(true);
    var var_6 = var_4.a.xzy;
    var var_7 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, -1249f) + global2.zx) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1291f) + global0[_wgslsmith_index_u32(var_0, 29u)]))) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, _wgslsmith_f_op_f32(abs(-451f)))))), ~min(select(~var_6.zz, countOneBits(var_7.a.xz), vec2<bool>(false, false)), ~(~var_5.b.zz)), max(~_wgslsmith_sub_vec2_i32(abs(vec2<i32>(-18941i, u_input.b)), vec2<i32>(-58976i, u_input.b)), vec2<i32>(u_input.b, -1i)));
}

