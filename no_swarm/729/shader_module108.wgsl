struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 25>;

var<private> global1: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(1u, 74425u, 4294967295u));

var<private> global2: array<u32, 1>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec3<i32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1146f), arg_2);
    global2 = array<u32, 1>();
    var var_1 = select(arg_1.a.b.xxy, arg_0.c.b.xww, !vec3<bool>(all(vec4<bool>(true, true, true, true)), arg_0.c.b.x, true));
    var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(arg_0.b.zz)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(301f, 754f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_0.b.xw, vec2<f32>(1041f, 463f), var_1.x)), _wgslsmith_f_op_vec2_f32(-arg_0.b.zx)))) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.x, arg_2, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1434f)) + arg_2)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_2 = -countOneBits(-1i);
    return u_input.e;
}

fn func_2() -> Struct_3 {
    global2 = array<u32, 1>();
    let var_0 = u_input.e;
    let var_1 = Struct_1(-1000f, vec4<bool>(false, false, false, !all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true))));
    let var_2 = Struct_3(~1u, ~_wgslsmith_dot_vec2_i32(firstTrailingBit(~var_0.xx), _wgslsmith_mult_vec2_i32(abs(vec2<i32>(u_input.a.x, -1i)), ~var_0.zz)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -236f), var_1.b);
    return Struct_3(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(var_2.a, var_2.a, global2[_wgslsmith_index_u32(var_2.a, 1u)], 0u) << (vec4<u32>(global2[_wgslsmith_index_u32(53794u, 1u)], var_2.a, var_2.a, 1u) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(global2[_wgslsmith_index_u32(var_2.a, 1u)], global2[_wgslsmith_index_u32(4294967295u, 1u)], 1u, 52443u))), vec4<u32>(var_2.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(var_2.a, 1u)], 11009u, 62678u, global2[_wgslsmith_index_u32(var_2.a, 1u)]), vec4<u32>(19699u, var_2.a, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 1u)], 1u)])), select(_wgslsmith_add_u32(4294967295u, var_2.a), _wgslsmith_dot_vec2_u32(vec2<u32>(var_2.a, global2[_wgslsmith_index_u32(4294967295u, 1u)]), vec2<u32>(34410u, global2[_wgslsmith_index_u32(16579u, 1u)])), var_1.b.x && var_1.b.x), global2[_wgslsmith_index_u32(31869u, 1u)])), _wgslsmith_dot_vec3_i32(-func_3(Struct_2(var_1, vec4<f32>(1255f, 564f, 792f, var_1.a), Struct_1(var_3.a, var_1.b), vec2<u32>(global2[_wgslsmith_index_u32(1u, 1u)], 11794u), var_1), Struct_2(Struct_1(var_3.a, vec4<bool>(true, var_3.b.x, true, var_1.b.x)), vec4<f32>(-439f, 929f, 831f, -1779f), Struct_1(var_1.a, var_3.b), vec2<u32>(21915u, 1u), var_1), _wgslsmith_f_op_f32(trunc(-1000f))), vec3<i32>(max(func_3(Struct_2(var_3, vec4<f32>(-1038f, -496f, 621f, var_1.a), Struct_1(-723f, vec4<bool>(false, false, var_1.b.x, true)), vec2<u32>(6206u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.a, 1u)], 1u)]), Struct_1(var_1.a, vec4<bool>(var_1.b.x, var_3.b.x, var_3.b.x, true))), Struct_2(Struct_1(var_3.a, var_3.b), vec4<f32>(1075f, var_3.a, 1304f, var_1.a), Struct_1(var_3.a, vec4<bool>(var_3.b.x, var_3.b.x, var_1.b.x, true)), vec2<u32>(26405u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_2.a, 1u)], 1u)], 1u)], 1u)], 1u)]), var_3), var_3.a).x, var_2.b), var_2.b, reverseBits(reverseBits(var_2.b)))));
}

fn func_1() -> i32 {
    let var_0 = ~1u;
    let var_1 = firstTrailingBit(countOneBits(vec3<u32>(~_wgslsmith_sub_u32(var_0, 4294967295u), global2[_wgslsmith_index_u32(1u >> (abs(global2[_wgslsmith_index_u32(9323u, 1u)]) % 32u), 1u)], 1531u)));
    var var_2 = func_2();
    let var_3 = func_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1070f), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1077f, 1000f, 1000f, -785f), vec4<f32>(233f, 1382f, 1116f, 1475f))))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(561f - -1654f))), vec4<bool>(true, u_input.b <= 15247i, true, true)), firstLeadingBit(vec2<u32>(_wgslsmith_sub_u32(var_0, var_2.a), var_2.a)), Struct_1(-996f, vec4<bool>(true, all(vec3<bool>(false, true, false)), true, true))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(753f))), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), true)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-681f, -669f, -2154f, -385f))))), Struct_1(-2498f, !select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), true)), var_1.xx, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-556f)) * -515f), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(-1f)).x;
    var var_4 = _wgslsmith_div_f32(1614f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(482f - -803f))) - 1f));
    return reverseBits(-1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(abs(_wgslsmith_mult_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 89172u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13581u, 1u)], 1u)]), vec3<u32>(global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(1u, 1u)], global2[_wgslsmith_index_u32(0u, 1u)])), 4294967295u, true), 66507u)), -25127i);
    var var_1 = var_0.b;
    global0 = array<Struct_3, 25>();
    let var_2 = -55354i;
    var var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b, -2147483647i);
}

