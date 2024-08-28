struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<bool>, 9>;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_2) -> vec4<bool> {
    return vec4<bool>(true, false, false, true);
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: bool) -> f32 {
    global2 = !select(vec2<bool>(true, arg_3), global1[_wgslsmith_index_u32(106095u, 9u)], func_1(vec2<bool>(func_1(global1[_wgslsmith_index_u32(arg_0.c.x, 9u)], arg_0.b, arg_0).x, arg_0.c.x == 100703u), arg_0.b, Struct_2(-arg_1.x, arg_0.b, _wgslsmith_add_vec2_u32(arg_0.c, vec2<u32>(arg_0.c.x, arg_0.c.x)))).xy);
    let var_0 = arg_0;
    global0 = true;
    var var_1 = func_1(global1[_wgslsmith_index_u32(var_0.c.x, 9u)], Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -440f)), Struct_2(-4785i, var_0.b, ~(~vec2<u32>(41244u, arg_0.c.x)))).yz;
    var var_2 = var_0.a;
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.a)) * -404f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.a, var_0.b.a, global2.x))), any(vec2<bool>(global2.x, true))))), 1465f));
}

fn func_2() -> u32 {
    global1 = array<vec2<bool>, 9>();
    let var_0 = !vec4<bool>(func_1(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(abs(363u), _wgslsmith_sub_u32(48733u, 1u)), 9u)], Struct_1(_wgslsmith_f_op_f32(func_3(Struct_2(-23192i, Struct_1(129f), vec2<u32>(1u, 4294967295u)), vec4<i32>(-12733i, 31368i, u_input.d, u_input.d), u_input.c.yz, false))), Struct_2(u_input.c.x, Struct_1(-376f), _wgslsmith_mult_vec2_u32(vec2<u32>(161837u, 0u), vec2<u32>(1070u, 4294967295u)))).x, !all(!global1[_wgslsmith_index_u32(50572u, 9u)]), global2.x, false);
    global1 = array<vec2<bool>, 9>();
    global0 = all(vec3<bool>(true, true, true));
    var var_1 = abs(reverseBits(vec3<i32>(-u_input.e.x, u_input.a << (4294967295u % 32u), ~u_input.c.x))) & abs(vec3<i32>(_wgslsmith_sub_i32(~65068i, countOneBits(66833i)), 35457i, ~(u_input.b.x << (4294967295u % 32u))));
    return 142447u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(1u, 1u, 1u) & vec3<u32>(~(~_wgslsmith_add_u32(0u, 1u)), select(~(~1u), 1u, all(func_1(global1[_wgslsmith_index_u32(53915u, 9u)], Struct_1(557f), Struct_2(-2147483647i, Struct_1(-1065f), vec2<u32>(1u, 20331u))))), func_2());
    var var_1 = global2.x;
    var var_2 = !all(vec2<bool>(true, true));
    var var_3 = Struct_1(1339f);
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1171f, var_3.a) * vec2<f32>(575f, 1094f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a, -142f) + vec2<f32>(-1501f, -1967f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, -1727f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(var_3.a * var_3.a), var_3.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 960f)), !vec2<bool>(false, global2.x))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-481f, var_3.a)))), _wgslsmith_f_op_f32(-var_3.a)));
    var var_5 = Struct_2(19107i, Struct_1(-1255f), countOneBits(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(var_0.yz | var_0.zx, vec2<u32>(0u, 92351u) ^ var_0.xz, var_0.xy), var_0.zz)));
    var_1 = !global2.x;
    let var_6 = global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_5.c.x));
}

