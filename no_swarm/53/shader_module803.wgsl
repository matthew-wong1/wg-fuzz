struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(-1209f), Struct_1(-134f), Struct_1(-839f), Struct_1(-127f), Struct_1(-539f), Struct_1(1276f), Struct_1(1000f), Struct_1(-414f), Struct_1(-1701f), Struct_1(-592f), Struct_1(-1000f), Struct_1(246f), Struct_1(1186f));

var<private> global1: vec4<i32> = vec4<i32>(-24304i, -1i, 2147483647i, 1i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<i32>, arg_3: bool) -> vec3<f32> {
    let var_0 = vec3<i32>(-38664i, ~(-1i), global1.x);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(615f)), _wgslsmith_div_f32(1341f, 591f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-667f, -292f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(697f, 1250f)))))));
    var var_2 = -1i;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-960f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1163f) - var_1.x), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(var_1.x, 1595f)), arg_3))));
    var var_4 = global0[_wgslsmith_index_u32(48750u, 13u)];
    return vec3<f32>(_wgslsmith_f_op_f32(trunc(-2340f)), _wgslsmith_f_op_f32(trunc(105f)), var_3);
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<u32>) -> i32 {
    let var_0 = false;
    var var_1 = global0[_wgslsmith_index_u32(284u, 13u)];
    let var_2 = arg_0.xw;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a + arg_0.x) - _wgslsmith_f_op_f32(-1394f - arg_0.x)))), 1053f)) - _wgslsmith_f_op_f32(f32(-1f) * -744f));
    let var_4 = min(vec2<i32>(u_input.b, 16348i), (vec2<i32>(-7021i, firstLeadingBit(global1.x)) << (vec2<u32>(5713u, _wgslsmith_dot_vec3_u32(arg_2.zzy, arg_2.yyy)) % vec2<u32>(32u))) ^ (_wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, 24738i) >> (arg_2.yx % vec2<u32>(32u)), global1.zy) << ((arg_2.xw ^ countOneBits(arg_2.xz)) % vec2<u32>(32u))));
    return global1.x >> (select(arg_2.x, reverseBits(u_input.a), u_input.a > abs(1u)) % 32u);
}

fn func_2(arg_0: f32, arg_1: f32) -> vec3<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -168f));
    let var_1 = !(!vec2<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), all(vec4<bool>(false, false, true, false))));
    global1 = ~vec4<i32>(u_input.b, _wgslsmith_add_i32(func_3(vec4<f32>(arg_0, arg_0, arg_0, var_0.a), global0[_wgslsmith_index_u32(123280u, 13u)], vec4<u32>(0u, u_input.a, u_input.a, 1u)) & -54888i, -4631i), 0i, ~(-1i));
    var var_2 = ~func_3(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(106f, var_0.a, -1579f, 321f), vec4<f32>(arg_1, arg_1, arg_0, 238f))), Struct_1(_wgslsmith_f_op_f32(max(1699f, 1000f))), max(_wgslsmith_div_vec4_u32(vec4<u32>(10335u, u_input.a, 33289u, 4294967295u), vec4<u32>(24415u, 4294967295u, 4294967295u, u_input.a)), vec4<u32>(35944u, u_input.a, u_input.a, u_input.a))) & global1.x;
    var_2 = max(global1.x << (u_input.a % 32u), _wgslsmith_mod_i32(u_input.b, global1.x | _wgslsmith_add_i32(select(-2147483647i, u_input.b, false), -u_input.b)));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(-arg_1))) + _wgslsmith_f_op_f32(var_0.a * 867f)) + _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -493f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, 248f)) * -715f))))));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = ~abs(vec3<i32>(0i, -countOneBits(67811i), abs(_wgslsmith_div_i32(global1.x, 0i))));
    let var_1 = select(select(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)), vec3<u32>(13035u, ~15867u, ~36955u)), _wgslsmith_mod_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1u, 47259u), vec3<u32>(u_input.a, 4294967295u, u_input.a)), ~vec3<u32>(1u, u_input.a, u_input.a)), select(vec3<bool>(arg_0, false, arg_0 | arg_0), select(vec3<bool>(true, true, arg_0), !vec3<bool>(arg_0, true, true), vec3<bool>(true, true, arg_0)), false)), abs(vec3<u32>(~_wgslsmith_mod_u32(u_input.a, 39656u), 57660u, 29860u)), true);
    let var_2 = arg_2;
    var var_3 = select(vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -2147483647i, var_0.x, 17919i), vec4<i32>(arg_3, -1i, -49806i, -53040i)), max(_wgslsmith_dot_vec2_i32(var_0.zx, global1.zz), global1.x)), ~(-2147483647i), 19320i, 2147483647i), vec4<i32>(2650i, -_wgslsmith_mult_i32(var_0.x, 2147483647i), 0i, ~77535i) & countOneBits(-(~vec4<i32>(arg_3, global1.x, 0i, u_input.b))), !arg_0);
    let var_4 = true;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 13>();
    global1 = ~vec4<i32>(global1.x, _wgslsmith_div_i32(_wgslsmith_sub_i32(-61092i, u_input.b), u_input.b), 33968i, u_input.b);
    let var_0 = func_4(false, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(func_1(-(vec4<i32>(-2147483647i, global1.x, global1.x, global1.x) & vec4<i32>(global1.x, 0i, -1i, -18884i)), (u_input.a | u_input.a) | 4294967295u, vec4<i32>(-1i) * -vec4<i32>(u_input.b, 2147483647i, -382i, global1.x), any(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(341f, 1328f, -2386f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 635f, 994f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(778f, -1310f)))), select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), all(vec4<bool>(false, false, true, true))), vec3<bool>(true, false, true)))), Struct_1(_wgslsmith_f_op_f32(sign(984f))), -countOneBits(max(firstLeadingBit(-1i), u_input.b)));
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = func_4(true, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -641f)), 597f, _wgslsmith_f_op_f32(-var_0.a)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -152f), -1300f))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(~abs(vec4<i32>(u_input.b, global1.x, 1i, -23478i)), vec4<i32>(abs(global1.x), -13226i & u_input.b, _wgslsmith_mult_i32(40714i, global1.x), u_input.b)), ~(-61725i << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, 71345u)) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~abs(~1u), firstLeadingBit(~16144u), ~u_input.a, countOneBits(u_input.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1413f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a)) + 706f)), var_1.a));
}

