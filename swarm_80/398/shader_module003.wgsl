struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(306f), Struct_1(2234f), Struct_1(-384f), Struct_1(-1000f));

var<private> global1: vec2<f32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    let var_0 = ~vec2<u32>(10950u, _wgslsmith_mod_u32(firstTrailingBit(1u), ~max(20358u, 0u)));
    var var_1 = u_input.a;
    return var_0.x;
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = select(select(vec2<u32>(1u, 1u), vec2<u32>(~0u, 1u), vec2<bool>(true, true)), reverseBits(_wgslsmith_add_vec2_u32(abs(vec2<u32>(0u, 32223u)), select(vec2<u32>(13086u, 4294967295u), vec2<u32>(0u, 4294967295u), false))), !vec2<bool>(u_input.a > 2147483647i, true)) << ((countOneBits(vec2<u32>(1u, 1u)) >> (_wgslsmith_add_vec2_u32(~vec2<u32>(1u, 1u), select(vec2<u32>(7210u, 24342u), ~vec2<u32>(101275u, 1u), true)) % vec2<u32>(32u))) % vec2<u32>(32u));
    global1 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(874f)))), _wgslsmith_f_op_f32(exp2(global1.x)));
    var var_1 = global0[_wgslsmith_index_u32(func_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -944f) - _wgslsmith_f_op_f32(global1.x + arg_0.a)) + -1422f), arg_0.a)), 4u)];
    var var_2 = arg_0;
    var var_3 = countOneBits(u_input.a & u_input.a);
    return arg_0.a;
}

fn func_3(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1, arg_3: i32) -> f32 {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)))))) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1129f, 1016f), vec2<f32>(arg_2.a, -1324f), all(vec2<bool>(arg_1, arg_0.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_2.a, 1828f))) + vec2<f32>(-562f, 1808f))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.x - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2.a))))));
    let var_0 = Struct_1(-1183f);
    let var_1 = u_input.a;
    global0 = array<Struct_1, 4>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(abs(870f)));
    return global1.x;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = true;
    var var_1 = _wgslsmith_mult_vec2_i32(-vec2<i32>(u_input.a, ~(-2147483647i)), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(5335i, u_input.a) ^ vec2<i32>(u_input.a, -62555i)), _wgslsmith_add_vec2_i32(vec2<i32>(0i, -412i), ~vec2<i32>(19612i, u_input.a)))) << ((vec2<u32>(arg_1, 1u) >> ((_wgslsmith_mod_vec2_u32(abs(vec2<u32>(4294967295u, 0u)), abs(vec2<u32>(arg_1, 1365u))) >> (vec2<u32>(127079u, arg_1 >> (111327u % 32u)) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_2 = vec4<bool>(any(vec2<bool>(false, true && all(vec3<bool>(true, true, arg_0)))), any(!(!vec3<bool>(arg_0, false, true))), !(arg_3.a == -870f) && any(select(vec3<bool>(arg_0, arg_0, false), !vec3<bool>(true, arg_0, arg_0), false)), all(select(!select(vec2<bool>(true, true), vec2<bool>(arg_0, false), vec2<bool>(true, arg_0)), select(!vec2<bool>(true, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, true), vec2<bool>(arg_0, true)), select(vec2<bool>(arg_0, true), vec2<bool>(true, arg_0), false)), true)));
    var_0 = true;
    let var_3 = (~(~arg_1) <= arg_2) & false;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-185f - _wgslsmith_f_op_f32(min(arg_3.a, 210f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_3.a - _wgslsmith_f_op_f32(-arg_3.a)), arg_3.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(1u), ~15980u), 4u)];
    let var_1 = func_4(any(vec4<bool>(abs(0u) > firstTrailingBit(1u), true, true, any(vec2<bool>(true, true)))), 4294967295u, countOneBits(~47054u), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_1(Struct_1(var_0.a))), _wgslsmith_f_op_f32(func_3(vec2<bool>(false, false), false, Struct_1(var_0.a), u_input.a))))))));
    var_0 = func_4(true, 3447u, 23485u, func_4(!(any(vec4<bool>(false, true, false, false)) | true), 51732u, 0u, func_4(true, abs(max(0u, 1u)), 33486u, Struct_1(_wgslsmith_div_f32(var_0.a, global1.x)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), var_1.a, _wgslsmith_f_op_f32(func_3(vec2<bool>(false, true), true, var_1, 2147483647i)), -1135f)))));
    var var_3 = !select(vec4<bool>(true, any(vec3<bool>(true, true, true)), !(var_1.a != global1.x), true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, false))));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(abs(global1.x)), global1.x, var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(-u_input.a), _wgslsmith_f_op_vec4_f32(var_2 + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_2, vec4<f32>(var_0.a, 965f, var_4.x, var_0.a)))))));
}

