struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
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

var<private> global0: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false));

var<private> global1: array<i32, 4> = array<i32, 4>(i32(-2147483648), -1i, 18033i, -1i);

var<private> global2: Struct_1;

var<private> global3: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec3<i32>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec2_u32(select(global2.a, _wgslsmith_div_vec2_u32(u_input.a, global2.a), true), vec2<u32>(global2.a.x, 0u), u_input.a) | ~vec2<u32>(~42651u, _wgslsmith_add_u32(1u, u_input.a.x)));
    let var_1 = !(_wgslsmith_f_op_f32(min(-2167f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1568f, 460f))))) == _wgslsmith_f_op_f32(floor(-128f)));
    var var_2 = var_0;
    let var_3 = Struct_1(global2.a | vec2<u32>(4294967295u, var_0.a.x));
    var var_4 = vec4<bool>(var_1, ~0u >= u_input.a.x, ~firstTrailingBit(63515u) != abs(~25752u), arg_0);
    return -firstTrailingBit(arg_1.x);
}

fn func_2() -> u32 {
    global3 = countOneBits(_wgslsmith_mod_i32(-7924i, func_3(true, vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(global2.a.x, 4u)], 0i))) | func_3(false, _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(15220i, -1253i, global1[_wgslsmith_index_u32(66335u, 4u)])), -vec3<i32>(-1i, -17412i, global1[_wgslsmith_index_u32(14465u, 4u)]), vec3<i32>(40678i, -1i, -31092i))));
    global0 = array<vec4<bool>, 20>();
    let var_0 = _wgslsmith_add_vec3_u32(~(firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, global2.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))) << ((firstLeadingBit(vec3<u32>(u_input.a.x, global2.a.x, u_input.a.x)) & (vec3<u32>(global2.a.x, u_input.a.x, u_input.a.x) << (vec3<u32>(u_input.a.x, 36486u, u_input.a.x) % vec3<u32>(32u)))) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_mod_u32(~global2.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.a.x, 62573u), vec3<u32>(5196u, 0u, u_input.a.x))), u_input.a.x, global2.a.x));
    var var_1 = Struct_1(firstLeadingBit(global2.a));
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-273f, 1000f))))))));
    return var_1.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_add_u32(arg_3.a.x, ~(~((5594u & u_input.a.x) | ~global2.a.x)));
    global0 = array<vec4<bool>, 20>();
    global1 = array<i32, 4>();
    global1 = array<i32, 4>();
    var var_1 = global2.a;
    return vec2<u32>(arg_0.a.x, func_2());
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    global1 = array<i32, 4>();
    var var_0 = select(vec3<u32>(~18234u ^ _wgslsmith_div_u32(func_1(arg_0, vec3<u32>(global2.a.x, 73024u, 77399u), vec2<i32>(2147483647i, 56237i), arg_0).x, 27368u), 0u, 1u), ~vec3<u32>(~global2.a.x, global2.a.x, _wgslsmith_add_u32(u_input.a.x, 10148u) & (1u ^ arg_0.a.x)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false)), vec3<bool>(false, true, false)), false));
    global3 = 2147483647i;
    let var_1 = vec3<u32>(_wgslsmith_mult_u32(4294967295u, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a.x, var_0.x) | ~17500u, 57804u, u_input.a.x)), arg_0.a.x, abs(~firstLeadingBit(_wgslsmith_sub_u32(1u, var_0.x))));
    let var_2 = arg_0;
    return ~vec3<i32>(~(-_wgslsmith_add_i32(0i, 17815i)), _wgslsmith_sub_i32(reverseBits(~(-49159i)), global1[_wgslsmith_index_u32(4294967295u, 4u)]), global1[_wgslsmith_index_u32(var_2.a.x, 4u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 4>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-602f, _wgslsmith_div_f32(1428f, -420f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -309f))))), -585f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1047f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1069f, var_0.x) + 1000f))) < _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-617f + var_0.x));
    var_1 = true;
    var var_2 = 0i;
    let var_3 = func_4(Struct_1(~firstLeadingBit(func_1(Struct_1(vec2<u32>(global2.a.x, global2.a.x)), vec3<u32>(global2.a.x, 8276u, 656u), vec2<i32>(global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(u_input.a.x, 4u)]), Struct_1(vec2<u32>(1u, 4294967295u))))));
    var var_4 = _wgslsmith_f_op_f32(244f + _wgslsmith_f_op_f32(-1f));
    let var_5 = Struct_1(vec2<u32>(~0u, ~0u));
    let x = u_input.a;
    s_output = StorageBuffer(21464u);
}

