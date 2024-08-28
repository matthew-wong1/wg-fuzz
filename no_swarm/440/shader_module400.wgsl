struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<i32>, 23>;

var<private> global2: u32;

var<private> global3: Struct_1;

var<private> global4: array<bool, 14> = array<bool, 14>(true, true, false, false, true, false, false, true, true, false, true, false, false, false);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    let var_0 = arg_1;
    let var_1 = Struct_1(global3.a);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * 603f), 353f);
    let var_3 = Struct_1(!global3.a);
    let var_4 = Struct_1(true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(186f)), -1157f)))));
}

fn func_2(arg_0: vec4<bool>, arg_1: bool) -> vec2<f32> {
    let var_0 = Struct_1(~(~(u_input.b.x & u_input.b.x)) >= 10916u);
    let var_1 = (~14190u >> (u_input.b.x % 32u)) & 1u;
    let var_2 = abs(vec2<i32>(u_input.a, -29701i));
    global2 = ~firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.zx, u_input.b.zx), u_input.b.yy));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-212f, 1481f, -500f), vec3<f32>(645f, -511f, -962f), vec3<bool>(var_0.a, global3.a, true))), vec3<f32>(930f, -457f, -122f))))) * vec3<f32>(1658f, _wgslsmith_f_op_f32(f32(-1f) * -1458f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(vec4<f32>(-1220f, -594f, -428f, 1199f), var_0)))))));
    return _wgslsmith_f_op_vec2_f32(step(var_3.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_3.yz)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = arg_0;
    var var_1 = -2147483647i == -u_input.a;
    var var_2 = vec4<i32>(1i, u_input.a, 0i, _wgslsmith_add_i32(1i, u_input.a) | select(countOneBits(54697i), u_input.a, !all(vec4<bool>(arg_1.x, arg_0.a, true, arg_0.a))));
    let var_3 = Struct_1(arg_1.x);
    global3 = arg_0;
    return arg_0;
}

fn func_1(arg_0: i32) -> Struct_1 {
    let var_0 = func_4(Struct_1(select(false, global4[_wgslsmith_index_u32(reverseBits(~63976u), 14u)], false)), vec3<bool>(false, global3.a && global4[_wgslsmith_index_u32(~(19906u << (u_input.b.x % 32u)), 14u)], true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(vec4<bool>(true, true, true, true), !global3.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-717f, -1000f) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1234f), -701f))));
    let var_1 = Struct_1(false);
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(u_input.a, u_input.a), abs(arg_0));
    global4 = array<bool, 14>();
    let var_3 = var_1;
    return Struct_1(!func_4(var_3, vec3<bool>(4294967295u > u_input.b.x, global3.a & var_1.a, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(429f, 330f))))).a);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~54122u;
    let var_0 = func_1(40235i << (u_input.b.x % 32u));
    global1 = array<vec3<i32>, 23>();
    global2 = _wgslsmith_mult_u32(firstTrailingBit(68605u), ~4294967295u);
    var var_1 = 27409u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, _wgslsmith_mod_i32(-7773i, 42888i)), ~(-vec2<i32>(21004i, 3854i))), -74069i), firstLeadingBit(vec3<i32>(u_input.a, u_input.a, ~2147483647i)));
}

