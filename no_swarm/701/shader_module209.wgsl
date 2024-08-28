struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 1>;

var<private> global2: bool = false;

var<private> global3: Struct_3 = Struct_3(vec3<u32>(76953u, 0u, 0u));

var<private> global4: array<Struct_1, 16>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec3<f32> {
    global1 = array<i32, 1>();
    let var_0 = Struct_3(global3.a);
    var var_1 = firstLeadingBit(~(~(~global3.a.x)));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -159f) - _wgslsmith_f_op_f32(trunc(-688f))))), !all(vec4<bool>(global3.a.x <= 4294967295u, true, true, all(vec2<bool>(true, true)))), true);
    let var_3 = !vec4<bool>(_wgslsmith_f_op_f32(var_2.a * 2148f) < _wgslsmith_f_op_f32(-var_2.a), any(vec2<bool>(var_2.b & var_2.b, false)), all(!select(vec4<bool>(true, true, false, var_2.b), vec4<bool>(var_2.b, var_2.c, var_2.c, false), vec4<bool>(true, var_2.b, true, false))), var_2.c);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(941f + 933f), _wgslsmith_f_op_f32(-var_2.a), -189f))));
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(48724u, 1u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-471f, arg_0) + vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_0)), 484f), _wgslsmith_f_op_f32(arg_0 + -687f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(866f, arg_0, arg_0) - vec3<f32>(2169f, 523f, arg_0)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1975f, -218f, 629f))), global1[_wgslsmith_index_u32(10751u, 1u)] != global1[_wgslsmith_index_u32(19097u, 1u)])) - vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(select(1166f, -328f, false)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, -168f, -406f)))), _wgslsmith_f_op_f32(223f + 1113f), firstTrailingBit(~vec2<u32>(~0u, 1u)));
    global2 = !all(vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)), any(vec3<bool>(true, true, false)) & any(vec4<bool>(true, false, true, false)), !any(vec3<bool>(true, true, false))));
    var var_1 = 13464u;
    let var_2 = abs(vec3<u32>(u_input.d.x, 1u ^ (u_input.d.x >> (54854u % 32u)), ~1u)) | _wgslsmith_mult_vec3_u32(global3.a, ~(~global3.a));
    let var_3 = var_0;
    return global4[_wgslsmith_index_u32(u_input.d.x | ((0u & (3402u ^ var_3.e.x)) | 60427u), 16u)];
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: u32, arg_3: u32) -> bool {
    var var_0 = func_2(arg_1);
    var var_1 = min(~(~(~(~vec4<u32>(global3.a.x, u_input.b, arg_2, arg_2)))), (firstLeadingBit(~vec4<u32>(7497u, 66281u, arg_3, global3.a.x)) << (_wgslsmith_add_vec4_u32(abs(vec4<u32>(42261u, u_input.b, arg_2, u_input.b)), abs(vec4<u32>(arg_3, arg_3, arg_2, arg_2))) % vec4<u32>(32u))) ^ _wgslsmith_mod_vec4_u32(~vec4<u32>(41529u, 1u, global3.a.x, 4294967295u), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d.x, 1u, u_input.b, 4294967295u), vec4<u32>(arg_2, u_input.b, arg_2, 0u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a, func_2(-336f).a, _wgslsmith_f_op_f32(-868f + var_0.a)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-489f, -1000f, arg_1), vec3<f32>(arg_0.x, -1309f, 1739f)))))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(arg_1 + arg_1)))), _wgslsmith_f_op_f32(-func_2(_wgslsmith_f_op_f32(-var_0.a)).a), 219f));
    global3 = Struct_3(countOneBits(min((vec3<u32>(23529u, var_1.x, 9742u) ^ vec3<u32>(1u, u_input.b, 71483u)) | (var_1.wyw >> (vec3<u32>(0u, 1u, arg_2) % vec3<u32>(32u))), vec3<u32>(arg_3, 31034u, var_1.x) ^ vec3<u32>(u_input.d.x, arg_3, 4294967295u))));
    var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.a))))), _wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1006f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + -1000f))));
    return var_0.b | select(true | ((var_2.x > -539f) == !var_0.b), var_0.c, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true && (((2147483647i < ~u_input.a.x) && false) | (!(39079u < u_input.d.x) | true));
    global1 = array<i32, 1>();
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-720f, -1284f, 1067f, 1420f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(580f, 920f, 942f, 345f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -723f), 435f, -1076f, -379f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1679f, -1376f, 820f, -384f) + vec4<f32>(-402f, -297f, 208f, -1890f)))))) * vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(438f + -446f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1090f), 897f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -110f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-412f, -1288f), -1000f))), -484f, 1f));
    global4 = array<Struct_1, 16>();
    var var_2 = any(!vec3<bool>(true, !any(vec3<bool>(true, false, false)), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(163f, var_1.x, 607f) + var_1.xyz), _wgslsmith_f_op_f32(1866f + var_1.x), select(1u, u_input.b, true), ~4294967295u)));
    var var_3 = Struct_3(max(~((vec3<u32>(global3.a.x, global3.a.x, u_input.b) << (vec3<u32>(global3.a.x, u_input.d.x, u_input.b) % vec3<u32>(32u))) << (_wgslsmith_mult_vec3_u32(u_input.d, global3.a) % vec3<u32>(32u))), select(vec3<u32>(4294967295u, 4294967295u, ~3617u), ~(~global3.a), func_2(var_1.x).b)));
    var_2 = any(vec4<bool>(true, true, true || any(vec2<bool>(false, false)), all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))))) | all(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), false), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    global4 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(38471u, reverseBits(-(~(i32(-1i) * -29782i))), ~(~(-(u_input.c ^ global1[_wgslsmith_index_u32(4294967295u, 1u)]))));
}

