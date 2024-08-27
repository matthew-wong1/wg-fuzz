struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(true, vec4<u32>(0u, 4294967295u, 1u, 4294967295u), i32(-2147483648), vec3<u32>(1u, 1u, 4370u), true), Struct_1(true, vec4<u32>(76407u, 1u, 21869u, 1u), 2147483647i, vec3<u32>(20702u, 0u, 4294967295u), true), Struct_1(false, vec4<u32>(14821u, 0u, 4294967295u, 5432u), 0i, vec3<u32>(4294967295u, 9897u, 42566u), false), Struct_1(true, vec4<u32>(20654u, 4294967295u, 86819u, 0u), -1i, vec3<u32>(1u, 39192u, 49918u), false), Struct_1(true, vec4<u32>(0u, 37629u, 91427u, 1u), i32(-2147483648), vec3<u32>(71101u, 4294967295u, 19071u), true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(-324f, -758f)), -657f, _wgslsmith_f_op_f32(f32(-1f) * -451f), _wgslsmith_div_f32(-287f, 1223f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-116f, 1000f, -951f, 889f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(211f, 858f, -1854f, 680f) - vec4<f32>(1437f, 155f, -536f, -876f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(862f, -1000f, 139f, 360f), vec4<f32>(111f, -630f, 1000f, -1903f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-286f, 218f, 471f, -951f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-309f, -1068f, -1000f, 2433f), vec4<f32>(649f, -1245f, 2239f, 870f), vec4<bool>(false, false, true, false))))))));
    let var_1 = 882f;
    let var_2 = _wgslsmith_add_vec3_u32(u_input.a.wzz, ~_wgslsmith_mult_vec3_u32(u_input.a.yyz, u_input.a.ywy));
    var var_3 = vec3<i32>(u_input.e, ~u_input.b.x, abs(0i));
    var_3 = select(vec3<i32>(i32(-1i) * -2147483647i, var_3.x, _wgslsmith_div_i32(-14044i, -(~u_input.e))), abs(countOneBits(-_wgslsmith_div_vec3_i32(vec3<i32>(0i, 3875i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, -32640i)))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)))), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    return _wgslsmith_div_u32(var_2.x, countOneBits(1u));
}

fn func_2() -> u32 {
    var var_0 = max(firstLeadingBit(abs(-u_input.b) | u_input.b), firstLeadingBit(vec2<i32>(1i, u_input.e)));
    let var_1 = global1[_wgslsmith_index_u32(u_input.d, 5u)];
    global0 = 1u;
    return func_3(_wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(abs(vec4<u32>(70365u, 0u, 37493u, u_input.c.x)), min(var_1.b, vec4<u32>(u_input.c.x, u_input.c.x, var_1.d.x, u_input.a.x))), _wgslsmith_sub_u32(0u, ~var_1.b.x)));
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.c.x, ~u_input.a.x | ~39934u), 8755u), _wgslsmith_sub_vec2_u32(countOneBits(vec2<u32>(func_2(), ~0u)), u_input.c));
    var var_1 = Struct_2(Struct_1(true, firstTrailingBit(abs(vec4<u32>(var_0.x, 39915u, u_input.a.x, var_0.x))), _wgslsmith_add_i32(-2147483647i, -arg_0 & u_input.b.x), min(vec3<u32>(abs(5761u), var_0.x | 4294967295u, ~4294967295u), u_input.a.zzx), all(vec2<bool>(true, all(vec2<bool>(true, false))))), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(0u | var_0.x, 1u, 1u), u_input.a.ywx)));
    var var_2 = select(-(vec4<i32>(max(var_1.a.c, var_1.a.c), arg_1.x, 39227i, 1i) | -_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, var_1.a.c, u_input.e), vec4<i32>(2147483647i, arg_1.x, arg_1.x, -1i))), reverseBits(-firstLeadingBit(-vec4<i32>(u_input.b.x, u_input.e, 2147483647i, 2147483647i))), !(-_wgslsmith_sub_i32(arg_0, var_1.a.c) >= 1i));
    var_2 = ~select(select(vec4<i32>(-1i) * -vec4<i32>(2147483647i, 1i, var_1.a.c, u_input.e), firstLeadingBit(-vec4<i32>(-8578i, 1i, var_2.x, -17127i)), vec4<bool>(true, -2147483647i < var_2.x, true, true || var_1.a.e)), ~((vec4<i32>(var_1.a.c, var_2.x, var_1.a.c, var_1.a.c) << (u_input.a % vec4<u32>(32u))) & vec4<i32>(var_2.x, u_input.e, -1i, arg_0)), select(!vec4<bool>(false, true, true, var_1.a.a), select(select(vec4<bool>(var_1.a.a, var_1.a.e, var_1.a.e, var_1.a.e), vec4<bool>(var_1.a.a, var_1.a.e, true, var_1.a.a), var_1.a.a), select(vec4<bool>(false, var_1.a.a, var_1.a.e, true), vec4<bool>(var_1.a.a, false, var_1.a.e, true), false), !vec4<bool>(var_1.a.a, false, false, var_1.a.a)), false));
    let var_3 = -811f;
    return Struct_1(var_1.a.a, ~var_1.a.b, abs(var_1.a.c) | _wgslsmith_mult_i32(_wgslsmith_sub_i32(var_1.a.c, var_2.x), -2147483647i), u_input.a.wzy, all(vec3<bool>(var_1.a.e, all(!vec3<bool>(var_1.a.e, false, var_1.a.a)), var_1.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(~0i, _wgslsmith_div_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.e, u_input.e, 0i), vec3<i32>(u_input.e, u_input.e, u_input.b.x)), vec3<i32>(44620i, u_input.e, u_input.e) >> (_wgslsmith_mult_vec3_u32(u_input.a.xzz, u_input.a.zxz) % vec3<u32>(32u)))), 18183u);
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(~(~(~(~4294967295u))), 5u)], 3877u);
    global1 = array<Struct_1, 5>();
    var var_2 = !vec2<bool>(var_1.a.a, var_1.a.a & false);
    var var_3 = var_1.a.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(vec2<u32>(var_1.b << (18088u % 32u), ~var_0.b) ^ u_input.c), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-179f - -2280f), _wgslsmith_f_op_f32(select(276f, -1155f, true)))), 1f, _wgslsmith_f_op_f32(311f * -1000f), 1000f))));
}

