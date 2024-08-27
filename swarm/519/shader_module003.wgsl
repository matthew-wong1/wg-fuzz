struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(countOneBits(max(countOneBits(arg_0.a), min(11381i, arg_0.a)))), global0.b);
    var var_1 = countOneBits(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.a, 0i), _wgslsmith_mod_vec2_i32(vec2<i32>(0i, arg_0.a), vec2<i32>(9429i, -41300i))) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(global0.a.a, var_0.a.a), vec2<i32>(-5838i, arg_0.a)), vec2<i32>(13433i, -2147483647i))));
    var var_2 = var_0.a;
    var_2 = Struct_1(u_input.a);
    var var_3 = !vec4<bool>(false, !((2147483647i == u_input.a) & true), !(!(1000f <= global0.b)), false);
    return Struct_1(~(-18715i));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = any(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)), vec3<bool>(false, all(vec2<bool>(false, false)), false)));
    global0 = Struct_2(Struct_1(u_input.a), _wgslsmith_f_op_f32(floor(1737f)));
    var var_1 = select(vec2<bool>(select(var_0, any(vec3<bool>(true, true, var_0)), var_0), true), select(select(!vec2<bool>(var_0, true), !select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), vec2<bool>(var_0, var_0)), var_0 & any(vec3<bool>(var_0, var_0, true))), vec2<bool>(true, true), select(select(select(vec2<bool>(var_0, false), vec2<bool>(var_0, false), true), !vec2<bool>(false, var_0), all(vec2<bool>(var_0, var_0))), select(!vec2<bool>(true, var_0), !vec2<bool>(var_0, true), select(vec2<bool>(true, true), vec2<bool>(var_0, var_0), vec2<bool>(true, false))), var_0)), !(!(!select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), var_0))));
    var var_2 = -abs(min(abs(~vec4<i32>(u_input.a, global0.a.a, arg_0.a, u_input.a)), vec4<i32>(arg_0.a, arg_0.a, -15441i, 7466i) >> (select(vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), vec4<u32>(56708u, 0u, 4294967295u, 0u), true) % vec4<u32>(32u))));
    let var_3 = var_0;
    return Struct_1(_wgslsmith_div_i32(-110209i, countOneBits(_wgslsmith_mod_i32(~global0.a.a, -29449i))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> i32 {
    global0 = Struct_2(func_3(func_2(arg_1), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -793f), _wgslsmith_f_op_f32(min(-915f, global0.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - _wgslsmith_f_op_f32(-arg_0.b))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b, arg_0.b)), 1000f))));
    let var_0 = global0.a;
    var var_1 = func_2(Struct_1(-26048i));
    global0 = arg_0;
    var var_2 = 2147483647i;
    return 21766i;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = firstTrailingBit(-_wgslsmith_dot_vec3_i32(arg_1, -countOneBits(vec3<i32>(arg_2.a.a, 12570i, global0.a.a))));
    let var_1 = vec3<i32>(~_wgslsmith_mult_i32(-global0.a.a, arg_2.a.a), ~u_input.a, 7102i);
    let var_2 = -min(-vec4<i32>(var_1.x, var_1.x, var_1.x, _wgslsmith_div_i32(-18123i, -24339i)), firstTrailingBit(select(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_2.a.a, -2147483647i, -1i, 1i), vec4<i32>(2147483647i, -19612i, u_input.a, -1i)), vec4<i32>(14748i, var_1.x, var_1.x, 6850i) & vec4<i32>(0i, var_1.x, arg_2.a.a, 0i), true)));
    var var_3 = 88543u;
    var var_4 = arg_1;
    return Struct_2(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(vec2<bool>(!all(vec2<bool>(true, true)), true), countOneBits(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, global0.a.a), global0.a.a), _wgslsmith_add_i32(max(u_input.a, u_input.a), func_1(Struct_2(global0.a, 805f), global0.a, 13392u)), global0.a.a)), Struct_2(global0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b)))))));
    global0 = var_0;
    global0 = Struct_2(Struct_1(_wgslsmith_div_i32(0i, global0.a.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-377f - var_0.b) - _wgslsmith_f_op_f32(f32(-1f) * -866f)));
    global0 = var_0;
    var var_1 = abs(~func_1(func_4(vec2<bool>(false, false), -vec3<i32>(var_0.a.a, -25600i, 1i), func_4(vec2<bool>(false, true), vec3<i32>(2147483647i, 1i, 66386i), var_0)), var_0.a, 1u));
    global0 = func_4(!select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(false, any(vec2<bool>(true, true))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true), -210f >= global0.b)), ~(countOneBits(vec3<i32>(var_0.a.a, var_0.a.a, global0.a.a)) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), var_0);
    let var_2 = func_2(Struct_1(7778i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(global0.b, global0.b, 837f, -1126f), vec4<f32>(-488f, var_0.b, -1000f, global0.b)))))), vec4<f32>(_wgslsmith_f_op_f32(global0.b + var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - -215f) + _wgslsmith_div_f32(global0.b, global0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b - 1073f)), _wgslsmith_f_op_f32(abs(2139f)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1622f))), 1f, -737f))));
}

