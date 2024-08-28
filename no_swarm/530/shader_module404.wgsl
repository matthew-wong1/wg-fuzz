struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(1u), Struct_1(100561u), Struct_1(4294967295u), Struct_1(45830u), Struct_1(83205u), Struct_1(0u), Struct_1(1u), Struct_1(0u), Struct_1(1u), Struct_1(7383u), Struct_1(33685u), Struct_1(40295u), Struct_1(4294967295u), Struct_1(21401u), Struct_1(1u), Struct_1(4294967295u), Struct_1(1u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(47688u), Struct_1(0u), Struct_1(23587u), Struct_1(0u), Struct_1(1u), Struct_1(0u), Struct_1(0u), Struct_1(42204u), Struct_1(4294967295u));

var<private> global1: array<Struct_1, 8>;

var<private> global2: array<u32, 11>;

var<private> global3: u32 = 72277u;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec2<bool> {
    return select(select(vec2<bool>(true, true), select(!select(vec2<bool>(true, false), vec2<bool>(false, true), false), !select(vec2<bool>(false, true), vec2<bool>(false, true), false), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), true), false), vec2<bool>(u_input.b.x <= u_input.c, false))), select(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, true)), !select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true), all(vec2<bool>(false, true))), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), true)), any(vec2<bool>(all(vec4<bool>(true, false, true, true)), 11655i <= (u_input.c & u_input.a.x))));
}

fn func_2() -> vec4<u32> {
    let var_0 = -415f;
    let var_1 = global0[_wgslsmith_index_u32(~firstTrailingBit(countOneBits(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(9604u, 11u)], global2[_wgslsmith_index_u32(~4294967295u, 11u)]))), 28u)];
    let var_2 = vec4<bool>(true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), true))), false, any(!(!func_3())));
    let var_3 = var_2.ww;
    var var_4 = vec3<i32>(-u_input.c, -u_input.a.x, select(firstTrailingBit(u_input.b.x), 1i, var_3.x || !var_3.x));
    return vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 11u)], abs(11792u) >> (max(firstLeadingBit(firstLeadingBit(4294967295u)), _wgslsmith_mult_u32(u_input.d, u_input.d) << (~4294967295u % 32u)) % 32u), 1u, ~abs(var_1.a | u_input.d));
}

fn func_1() -> Struct_1 {
    var var_0 = ~_wgslsmith_sub_vec2_u32(reverseBits(select(_wgslsmith_add_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33548u, 11u)], 11u)], 1811u), vec2<u32>(16428u, 1u)), ~vec2<u32>(4294967295u, 140978u), vec2<bool>(true, false))), ~_wgslsmith_add_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(u_input.d, 11u)], u_input.d), ~vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], u_input.d)));
    var var_1 = Struct_1(u_input.d);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(419f, 845f, -1464f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(173f, 456f, -621f)))))))));
    let var_3 = _wgslsmith_add_vec4_u32((_wgslsmith_add_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(4170u, 11u)], 1088u, var_1.a, 27559u), ~vec4<u32>(38268u, 0u, 9160u, var_0.x)) ^ ~vec4<u32>(22898u, 0u, 26643u, u_input.d)) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(select(var_0.x, 0u, false), ~4294967295u, reverseBits(u_input.d), _wgslsmith_mult_u32(26694u, var_0.x)), ~vec4<u32>(var_0.x, 67854u, u_input.d, global2[_wgslsmith_index_u32(37575u, 11u)]) & vec4<u32>(var_1.a, 4294967295u, global2[_wgslsmith_index_u32(var_1.a, 11u)], 4294967295u)) % vec4<u32>(32u)), func_2());
    let var_4 = global1[_wgslsmith_index_u32(var_1.a & firstTrailingBit(var_0.x), 8u)];
    return global0[_wgslsmith_index_u32(~17852u, 28u)];
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> f32 {
    let var_0 = vec4<i32>(i32(-1i) * -arg_1, u_input.c, _wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1, u_input.a.x, arg_1), vec3<i32>(u_input.c, u_input.c, 2147483647i), u_input.b), vec3<i32>(-29944i, -_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(0i, -54330i, arg_1)), _wgslsmith_add_i32(arg_1, _wgslsmith_sub_i32(arg_1, arg_1)))), min(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(arg_1, -2147483647i), u_input.b.xx | u_input.a), u_input.a), _wgslsmith_sub_i32(~(-arg_1), min(-2147483647i, 1i))));
    global1 = array<Struct_1, 8>();
    var var_1 = arg_0;
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(func_1(), abs(_wgslsmith_div_i32(u_input.b.x, -2147483647i)), Struct_1(~1u))))) - 849f);
    global3 = global2[_wgslsmith_index_u32(select(~(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 11u)], 11u)])) | ~(~_wgslsmith_div_u32(4294967295u, u_input.d)), global2[_wgslsmith_index_u32(u_input.d, 11u)], !(((u_input.b.x <= u_input.b.x) == true) || true)), 11u)];
    var_0 = 1069f;
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d >> (firstTrailingBit(~_wgslsmith_mod_u32(u_input.d, 9779u)) % 32u), ~(~min(global2[_wgslsmith_index_u32(~4294967295u, 11u)], ~17251u)), abs(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(~1u, 11u)], _wgslsmith_add_u32(~u_input.d, global2[_wgslsmith_index_u32(4294967295u, 11u)])))), 11u)];
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(reverseBits(firstLeadingBit(vec3<u32>(global2[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(u_input.d, 11u)], global2[_wgslsmith_index_u32(u_input.d, 11u)]) | vec3<u32>(29750u, 48553u, u_input.d))), vec3<u32>(106183u & global2[_wgslsmith_index_u32(1u, 11u)], 13491u, min(1u, 4294967295u)) & (min(vec3<u32>(u_input.d, global2[_wgslsmith_index_u32(u_input.d, 11u)], 4294967295u), vec3<u32>(90928u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 11u)], 11u)], 3367u)) ^ min(vec3<u32>(u_input.d, global2[_wgslsmith_index_u32(1u, 11u)], 38300u), vec3<u32>(40114u, 4294967295u, u_input.d)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, select(~_wgslsmith_mult_vec4_u32(vec4<u32>(56960u, 34339u, u_input.d, global2[_wgslsmith_index_u32(45003u, 11u)]), vec4<u32>(4294967295u, var_2.a, 47998u, u_input.d)), vec4<u32>(~u_input.d, var_2.a, global2[_wgslsmith_index_u32(u_input.d, 11u)], 40011u), vec4<bool>(true, true, true, true)) ^ abs(vec4<u32>(global2[_wgslsmith_index_u32(firstTrailingBit(10261u), 11u)], global2[_wgslsmith_index_u32(u_input.d, 11u)] ^ 38383u, 7587u, 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1878f, 1000f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1084f, -1551f))), vec2<f32>(1235f, _wgslsmith_f_op_f32(-123f + -2591f)))), 1583f);
}

