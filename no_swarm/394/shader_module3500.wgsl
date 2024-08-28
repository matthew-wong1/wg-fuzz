struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

var<private> global1: array<vec2<f32>, 28> = array<vec2<f32>, 28>(vec2<f32>(680f, 1196f), vec2<f32>(743f, 265f), vec2<f32>(1000f, -1189f), vec2<f32>(-1045f, -1967f), vec2<f32>(1834f, 463f), vec2<f32>(-785f, -230f), vec2<f32>(397f, -1000f), vec2<f32>(142f, 996f), vec2<f32>(102f, -1068f), vec2<f32>(1972f, -1000f), vec2<f32>(471f, 346f), vec2<f32>(344f, 1000f), vec2<f32>(385f, 1000f), vec2<f32>(-3166f, 660f), vec2<f32>(136f, 1781f), vec2<f32>(1000f, -517f), vec2<f32>(-652f, -197f), vec2<f32>(1161f, 523f), vec2<f32>(-537f, 435f), vec2<f32>(1607f, -1000f), vec2<f32>(670f, 463f), vec2<f32>(1000f, -1887f), vec2<f32>(-800f, -1153f), vec2<f32>(-1965f, 932f), vec2<f32>(324f, 1670f), vec2<f32>(-250f, -502f), vec2<f32>(-1391f, -678f), vec2<f32>(1176f, -322f));

var<private> global2: u32;

var<private> global3: vec4<f32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> vec2<bool> {
    global0 = array<f32, 17>();
    let var_0 = arg_1;
    global1 = array<vec2<f32>, 28>();
    let var_1 = ~_wgslsmith_sub_vec2_i32(firstTrailingBit(-u_input.d.wx), abs(u_input.d.xx));
    global3 = vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(13469u, 17u)]), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_0)))))), 1384f, global0[_wgslsmith_index_u32(1u, 17u)]);
    return vec2<bool>(any(vec3<bool>(all(vec4<bool>(true, true, true, true)), select(-2147483647i, -2147483647i, true) < _wgslsmith_mult_i32(var_1.x, arg_1.b), true & (global3.x != global3.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1708f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 17u)]))), _wgslsmith_f_op_f32(ceil(arg_0)))) == global0[_wgslsmith_index_u32(4294967295u, 17u)]);
}

fn func_4(arg_0: vec2<bool>) -> i32 {
    let var_0 = Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 78253u, u_input.b), vec3<u32>(u_input.c, firstLeadingBit(u_input.b), 8219u)), ~_wgslsmith_sub_vec3_u32(min(vec3<u32>(u_input.a, u_input.c, u_input.a), vec3<u32>(u_input.c, 1u, u_input.b)), select(vec3<u32>(u_input.c, 4294967295u, u_input.c), vec3<u32>(26521u, u_input.a, 12410u), arg_0.x))), u_input.d.x);
    let var_1 = !vec4<bool>(arg_0.x, all(vec3<bool>(any(arg_0), true, any(vec3<bool>(false, true, true)))), all(arg_0), !select(false, u_input.d.x > -51231i, true));
    let var_2 = !select(!vec4<bool>(true, -596f < global3.x, var_1.x, false || var_1.x), vec4<bool>(true, !arg_0.x, false & (global0[_wgslsmith_index_u32(u_input.a, 17u)] >= global3.x), any(vec2<bool>(arg_0.x, true))), select(select(select(var_1, var_1, var_1.x), select(vec4<bool>(true, arg_0.x, true, var_1.x), var_1, var_1.x), select(vec4<bool>(false, var_1.x, false, arg_0.x), var_1, vec4<bool>(arg_0.x, arg_0.x, false, var_1.x))), select(var_1, vec4<bool>(true, var_1.x, arg_0.x, true), arg_0.x), var_1.x));
    global0 = array<f32, 17>();
    let var_3 = vec3<u32>(1u, 79415u, firstTrailingBit(~(~(~1u))));
    return -1i;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = vec2<bool>(all(vec3<bool>(any(vec3<bool>(true, true, true)), true, true)), false);
    global2 = _wgslsmith_mod_u32(reverseBits(arg_1.a.x) >> (41034u % 32u), 1u);
    global0 = array<f32, 17>();
    let var_1 = vec4<bool>(true, true, true, true);
    var var_2 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(~1u), 17u)]);
    return arg_1.a;
}

fn func_2(arg_0: i32) -> bool {
    let var_0 = u_input.c;
    global2 = abs(1u);
    let var_1 = -(u_input.d.wx | (-vec2<i32>(958i, arg_0) & ~vec2<i32>(arg_0, 27233i))) | _wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.d.yx, vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0, -1i, 1i, u_input.d.x), vec4<i32>(u_input.d.x, -66465i, u_input.d.x, arg_0)))), firstLeadingBit(-vec2<i32>(3853i, 17911i)) >> (vec2<u32>(u_input.c, ~u_input.c) % vec2<u32>(32u)));
    var var_2 = Struct_1(func_5(vec4<i32>(u_input.d.x, -1i, 0i, func_4(func_3(global3.x, Struct_1(vec3<u32>(u_input.b, 1u, var_0), 23683i), var_1.x, var_0))), Struct_1(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, var_0, 22691u), ~vec3<u32>(1u, u_input.b, u_input.c)), _wgslsmith_add_i32(var_1.x, arg_0) ^ arg_0)), u_input.d.x);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(529f, _wgslsmith_f_op_f32(select(-1061f, global3.x, true)))))));
    return any(vec4<bool>(true, true, all(vec3<bool>(true, true, true)), all(vec4<bool>(true, all(vec2<bool>(false, true)), true, false))));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<i32>) -> vec4<u32> {
    let var_0 = arg_1.x;
    global1 = array<vec2<f32>, 28>();
    let var_1 = Struct_1(vec3<u32>(~(~reverseBits(0u)), 23888u, ~(~_wgslsmith_mod_u32(4294967295u, 4294967295u))), u_input.d.x);
    global1 = array<vec2<f32>, 28>();
    var var_2 = false | !(func_2(_wgslsmith_mult_i32(u_input.d.x, var_1.b)) && (any(vec4<bool>(false, true, true, true)) != true));
    return ~(~vec4<u32>(countOneBits(0u), ~_wgslsmith_clamp_u32(4294967295u, 1u, 101051u), ~1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(35884u, 4294967295u, 1u, 3224u), vec4<u32>(var_1.a.x, 81850u, 26659u, 1u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1820f - -565f);
    global2 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, 58440u, 0u, 78284u), vec4<u32>(u_input.c, u_input.a, 0u, u_input.b), true) & vec4<u32>(u_input.b, u_input.b, 9648u, 4294967295u), (vec4<u32>(u_input.c, 4294967295u, 32680u, 19676u) & vec4<u32>(u_input.a, u_input.a, 37954u, u_input.a)) & firstTrailingBit(vec4<u32>(1u, u_input.a, 4294967295u, 0u)), ~min(vec4<u32>(u_input.a, 54698u, u_input.a, u_input.b), vec4<u32>(u_input.a, u_input.b, u_input.b, 33804u))), func_1(reverseBits(vec2<u32>(u_input.c, u_input.a)), -vec3<i32>(u_input.d.x, 1i, -2147483647i) ^ u_input.d.yyx));
    global0 = array<f32, 17>();
    global1 = array<vec2<f32>, 28>();
    var var_1 = vec3<i32>(~(-u_input.d.x & u_input.d.x), -51129i, 2147483647i);
    let var_2 = 1u;
    var var_3 = -1i;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global3.xww, global3.xyw, false)) * _wgslsmith_f_op_vec3_f32(-global3.zxw)) * global3.wyz), vec3<f32>(global3.x, _wgslsmith_f_op_f32(844f * global0[_wgslsmith_index_u32(0u | u_input.b, 17u)]), _wgslsmith_f_op_f32(trunc(global3.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(firstLeadingBit(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(32487u, 43649u, 1u), vec3<u32>(var_2, 0u, var_2)), select(vec3<u32>(u_input.a, 322u, 1u), vec3<u32>(u_input.a, var_2, var_2), vec3<bool>(false, false, false))))), -min(-vec2<i32>(0i, var_1.x), select(-vec2<i32>(var_1.x, 16187i), vec2<i32>(-12803i, u_input.d.x) | var_1.yz, vec2<bool>(true, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1166f - 359f)), _wgslsmith_f_op_f32(299f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(var_4.x))))))));
}

