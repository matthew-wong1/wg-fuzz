struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 21>;

var<private> global1: Struct_2 = Struct_2(Struct_1(567f, -879f), false);

var<private> global2: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> Struct_1 {
    global0 = array<i32, 21>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, global1.a.a, global1.a.b) * vec3<f32>(global2.b, 1466f, global1.a.a)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.b, arg_0, 854f), vec3<f32>(global2.b, arg_0, -1303f)))))))));
    global1 = Struct_2(global1.a, any(vec4<bool>(all(vec3<bool>(global1.b, true, global1.b)), all(vec3<bool>(true, global1.b, false)), global1.b, global1.b || true)) && true);
    global0 = array<i32, 21>();
    global1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-520f, _wgslsmith_f_op_f32(1238f - 372f), false)) - var_0.x), var_0.x), false);
    return global1.a;
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: f32) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1093f, arg_2)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(step(223f, global1.a.a))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a, global2.b)) + _wgslsmith_div_vec2_f32(vec2<f32>(596f, global1.a.b), vec2<f32>(global1.a.a, -1496f))))), global1.a);
    let var_1 = Struct_2(Struct_1(-2447f, 210f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(144f, _wgslsmith_f_op_f32(984f * 242f))), global2.b) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -237f), var_0.b.b)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(global2.a, -1353f)), _wgslsmith_div_f32(global1.a.a, -275f)))), func_2(_wgslsmith_div_f32(global2.b, _wgslsmith_div_f32(global1.a.b, _wgslsmith_f_op_f32(f32(-1f) * -215f))), select(vec4<u32>(abs(u_input.c.x), u_input.c.x, 1u, _wgslsmith_mult_u32(16373u, u_input.b.x)), vec4<u32>(26665u, 7491u, u_input.b.x, 1u) << (vec4<u32>(u_input.b.x, u_input.c.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), 26454i >= _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 66030i), vec2<i32>(-65885i, 39549i)))));
    let var_3 = u_input.b;
    var var_4 = Struct_2(var_2.b, arg_1 & (_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, u_input.a), vec2<i32>(-2147483647i, u_input.a)) <= 2147483647i));
    return global1.b;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-510f, _wgslsmith_f_op_f32(838f - global1.a.a)))), func_2(global1.a.b, u_input.b));
    global1 = Struct_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a) + var_0.b.b), ~u_input.b), global1.b);
    global2 = Struct_1(-243f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.a))));
    let var_1 = Struct_2(func_2(666f, _wgslsmith_sub_vec4_u32(~u_input.b | vec4<u32>(4294967295u, u_input.c.x, 4294967295u, 39044u), ~(~u_input.b))), !(!(!func_3(false, global1.b, 1665f))));
    let var_2 = vec4<f32>(global2.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-634f - global2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a.b)) + global2.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.a.a, var_0.b.b))))) * -160f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.b + 956f) * _wgslsmith_f_op_f32(-global2.a)));
    return Struct_1(global1.a.b, -1476f);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(firstTrailingBit(~vec2<i32>(0i, 68158i)));
    let var_0 = !select(select(select(vec4<bool>(global1.b, true, true, false), select(vec4<bool>(false, global1.b, global1.b, true), vec4<bool>(global1.b, false, true, global1.b), false), vec4<bool>(true, false, global1.b, global1.b)), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, global1.b, true, true), vec4<bool>(true, global1.b, true, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(func_3(false, false, 1186f), any(vec3<bool>(true, false, true)), false, any(vec3<bool>(true, global1.b, true))), vec4<bool>(global1.b, true, global1.b, u_input.c.x < 35982u), !(!vec4<bool>(global1.b, true, true, true))), false);
    let var_1 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(1352f + _wgslsmith_f_op_f32(-global2.b)), -1353f), global1.a);
    global2 = func_2(_wgslsmith_f_op_f32(trunc(-1079f)), vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x >> (countOneBits(abs(0u)) % 32u)));
    var var_2 = vec4<bool>(!(!(true || global1.b) | false), true, false, var_0.x);
    global2 = global1.a;
    let var_3 = ~(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(u_input.b.x, u_input.c.x), 19701u) & (u_input.b.x & (u_input.b.x ^ 53747u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(var_3, 21u)], 1i, 1i, u_input.a) << (vec4<u32>(u_input.b.x, var_3, 0u, 4294967295u) % vec4<u32>(32u)), ~(-vec4<i32>(global0[_wgslsmith_index_u32(21870u, 21u)], 0i, -1i, -2147483647i))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(global0[_wgslsmith_index_u32(1u, 21u)], -9990i, 0i, 30317i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, 2147483647i, -349i, global0[_wgslsmith_index_u32(1u, 21u)]) | vec4<i32>(global0[_wgslsmith_index_u32(85934u, 21u)], 2147483647i, global0[_wgslsmith_index_u32(1u, 21u)], -1i), vec4<i32>(94722i, global0[_wgslsmith_index_u32(var_3, 21u)], 0i, 0i) << (u_input.b % vec4<u32>(32u))), firstTrailingBit(~vec4<i32>(u_input.a, 1606i, global0[_wgslsmith_index_u32(27586u, 21u)], 5602i)))));
}

