struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(2147483647i, vec4<bool>(true, true, true, true)), 1u, -25796i), Struct_2(Struct_1(-33683i, vec4<bool>(false, true, true, false)), 4294967295u, -25914i), Struct_2(Struct_1(15955i, vec4<bool>(false, false, true, true)), 33133u, -16439i), Struct_2(Struct_1(13419i, vec4<bool>(false, true, false, true)), 19453u, 0i), Struct_2(Struct_1(1i, vec4<bool>(true, true, false, false)), 1u, 43906i), Struct_2(Struct_1(18961i, vec4<bool>(false, false, true, true)), 9583u, i32(-2147483648)), Struct_2(Struct_1(-4025i, vec4<bool>(false, false, true, true)), 4294967295u, -46190i), Struct_2(Struct_1(-1i, vec4<bool>(false, true, false, true)), 1u, 2147483647i), Struct_2(Struct_1(38316i, vec4<bool>(true, false, true, true)), 4294967295u, 2147483647i), Struct_2(Struct_1(2147483647i, vec4<bool>(false, false, false, true)), 0u, -1i), Struct_2(Struct_1(i32(-2147483648), vec4<bool>(true, false, true, false)), 28205u, 1i));

var<private> global1: array<u32, 18>;

var<private> global2: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(31320u, 1248u, 1u, 4294967295u), vec4<u32>(18412u, 45495u, 1u, 34792u), vec4<u32>(7210u, 4294967295u, 0u, 4294967295u), vec4<u32>(0u, 1u, 13270u, 0u), vec4<u32>(37120u, 59156u, 48056u, 66790u), vec4<u32>(29692u, 58057u, 6152u, 1u), vec4<u32>(1u, 1u, 4294967295u, 1u), vec4<u32>(27815u, 0u, 0u, 28690u), vec4<u32>(27883u, 0u, 65031u, 4294967295u), vec4<u32>(6856u, 4294967295u, 61120u, 69551u), vec4<u32>(4294967295u, 12460u, 4294967295u, 4294967295u), vec4<u32>(7258u, 21985u, 45751u, 0u), vec4<u32>(65726u, 1u, 1u, 1u), vec4<u32>(22421u, 0u, 1u, 1u), vec4<u32>(1u, 59014u, 0u, 4294967295u), vec4<u32>(26875u, 1u, 0u, 4294967295u), vec4<u32>(0u, 42369u, 60122u, 0u), vec4<u32>(11128u, 48740u, 1u, 4294967295u), vec4<u32>(36916u, 1u, 12091u, 44432u), vec4<u32>(69142u, 14446u, 3524u, 35936u), vec4<u32>(11538u, 4294967295u, 104280u, 1203u), vec4<u32>(0u, 4294967295u, 39393u, 1u), vec4<u32>(0u, 51487u, 0u, 4294967295u));

var<private> global3: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 80110u), vec4<u32>(9697u, 56335u, 8787u, 67495u), vec4<u32>(122767u, 9027u, 4294967295u, 0u), vec4<u32>(0u, 105378u, 0u, 45958u), vec4<u32>(0u, 70961u, 79312u, 0u), vec4<u32>(101996u, 24684u, 52361u, 14618u), vec4<u32>(58184u, 0u, 96403u, 18109u), vec4<u32>(1396u, 0u, 54784u, 26646u), vec4<u32>(23123u, 62352u, 1u, 0u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: i32, arg_2: vec2<u32>) -> u32 {
    let var_0 = arg_0.x;
    global0 = array<Struct_2, 11>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1053f * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -425f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(270f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -509f), -433f, false))))));
    var var_2 = ~(~(~(~firstTrailingBit(global3[_wgslsmith_index_u32(4419u, 9u)]))));
    let var_3 = Struct_1(-_wgslsmith_mult_i32(-42600i, 0i) & ~reverseBits(~u_input.a.x), !vec4<bool>(1u <= ~var_0, any(vec4<bool>(false, false, true, true)) || true, !all(vec4<bool>(true, false, false, true)), true));
    return 53205u;
}

fn func_2() -> vec4<f32> {
    var var_0 = 1i;
    var var_1 = _wgslsmith_f_op_f32(-297f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(588f)) - -920f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))))));
    let var_2 = vec2<i32>(~u_input.a.x, u_input.a.x);
    global0 = array<Struct_2, 11>();
    var var_3 = max(func_3(~(~vec3<u32>(16991u, 4294967295u, 0u)), abs(var_2.x), ~_wgslsmith_mult_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(51792u, 18u)], 0u), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43690u, 18u)], 18u)], 16379u))) ^ (~firstLeadingBit(global1[_wgslsmith_index_u32(75825u, 18u)]) & countOneBits(1u)), 1u);
    return vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(100f - -1262f))), -133f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(480f))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-189f + 1119f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-488f - -608f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1277f)))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-527f)), _wgslsmith_f_op_f32(1415f + 1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(870f + 702f) + _wgslsmith_f_op_f32(sign(-1082f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-469f - -1418f)));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -301f) + _wgslsmith_f_op_f32(f32(-1f) * -484f)), -1000f));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1000f, -2676f, _wgslsmith_f_op_f32(-var_0)) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) - var_0), _wgslsmith_f_op_f32(var_0 + var_0), var_0)) * _wgslsmith_f_op_vec4_f32(func_2()));
    var var_2 = Struct_2(Struct_1(u_input.a.x, select(!select(vec4<bool>(arg_0, arg_0, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, true), false), vec4<bool>(true, !arg_0, all(vec2<bool>(true, false)), false), select(vec4<bool>(false, arg_0, false, false), select(vec4<bool>(false, false, arg_0, false), vec4<bool>(arg_0, false, arg_0, false), false), !vec4<bool>(arg_0, false, true, arg_0)))), 4294967295u, u_input.a.x);
    global2 = array<vec4<u32>, 23>();
    var var_3 = var_2.a;
    return StorageBuffer(vec2<f32>(var_0, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 18u)], 11u)];
    var var_1 = ~4294967295u;
    global1 = array<u32, 18>();
    var var_2 = true;
    var_1 = 15605u;
    var var_3 = !(!var_0.a.b.x) & var_0.a.b.x;
    let x = u_input.a;
    s_output = func_1(false);
}

