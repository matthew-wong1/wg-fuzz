struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = abs(vec2<i32>(~_wgslsmith_mult_i32(-17184i, _wgslsmith_dot_vec3_i32(vec3<i32>(666i, 0i, 12217i), vec3<i32>(58355i, -2147483647i, -4480i))), -countOneBits(2147483647i) >> (1u % 32u)));
    global0 = array<u32, 9>();
    var var_1 = Struct_2(arg_0);
    let var_2 = Struct_2(var_1.a);
    let var_3 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1835f, -785f)))));
    return _wgslsmith_div_vec2_f32(vec2<f32>(-222f, -360f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(2070f, var_3.a.x) + vec2<f32>(956f, 1000f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(155f, -1300f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-138f, 687f), var_3.a)))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(155f + -855f), _wgslsmith_f_op_f32(-var_3.a.x))))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> vec2<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-244f, arg_0.a.x)))));
    global0 = array<u32, 9>();
    global0 = array<u32, 9>();
    var var_1 = Struct_1(arg_1.a, u_input.b);
    var var_2 = Struct_1(var_1.a, reverseBits(~_wgslsmith_sub_u32(arg_1.b & 1u, 64637u)));
    return var_2.a.xz;
}

fn func_1() -> Struct_1 {
    global0 = array<u32, 9>();
    let var_0 = reverseBits(vec2<i32>(abs(54781i), _wgslsmith_add_i32(~(~10310i), _wgslsmith_sub_i32(1i, max(25011i, -50708i)))));
    var var_1 = select(select(func_3(Struct_3(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(vec3<bool>(true, false, false), u_input.b)))), Struct_1(vec3<bool>(true, true, false), 28374u), _wgslsmith_sub_u32(4294967295u, 1u) < ~u_input.c.x, ~_wgslsmith_div_u32(1u, 61858u)), select(!func_3(Struct_3(vec2<f32>(849f, 912f)), Struct_1(vec3<bool>(false, false, true), 25629u), true, 4592u), vec2<bool>(any(vec2<bool>(false, false)), any(vec2<bool>(false, false))), vec2<bool>(true, true)), vec2<bool>(false, true)), func_3(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f))), Struct_1(vec3<bool>(func_3(Struct_3(vec2<f32>(-801f, 1334f)), Struct_1(vec3<bool>(false, true, false), 4294967295u), true, 0u).x, true, all(vec2<bool>(true, true))), global0[_wgslsmith_index_u32(u_input.c.x, 9u)]), true, countOneBits(firstLeadingBit(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(65429u, 9u)], 8449u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 9u)], 9u)])))), 1u >= global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(_wgslsmith_sub_u32(u_input.c.x, 85430u)), 4294967295u >> (select(u_input.d, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)], true) % 32u)), 9u)]);
    let var_2 = u_input.c.wyz;
    let var_3 = u_input.c.xz;
    return Struct_1(!(!vec3<bool>(true, var_1.x, var_1.x || var_1.x)), _wgslsmith_sub_u32(~var_2.x | 65360u, reverseBits(4294967295u)));
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = _wgslsmith_clamp_vec2_i32(firstLeadingBit(abs(_wgslsmith_mult_vec2_i32(-vec2<i32>(-52051i, 28381i), vec2<i32>(38415i, -31485i) >> (u_input.c.zx % vec2<u32>(32u))))), reverseBits(-vec2<i32>(_wgslsmith_add_i32(-33590i, 0i), ~1i)), vec2<i32>(i32(-1i) * -1i, _wgslsmith_sub_i32(-2147483647i, -14571i)));
    var var_1 = Struct_2(func_1());
    var var_2 = !vec3<bool>(false, arg_1.a.x != var_1.a.a.x, !arg_1.a.x);
    let var_3 = arg_1.b;
    var var_4 = ~var_3 & _wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(75305u, 9u)], 50405u);
    return vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(694f, -898f))))))), 1f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1109f, 446f), vec2<f32>(-1113f, 1094f), true)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-824f, -399f))), true)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(555f, 1000f) - _wgslsmith_div_vec2_f32(vec2<f32>(-784f, 893f), vec2<f32>(-956f, -219f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1430f, 893f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(260f, -1087f))))))));
    let var_1 = global0[_wgslsmith_index_u32(0u, 9u)] >= ~(u_input.a ^ ~1u);
    var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_0.x)))))), _wgslsmith_f_op_vec2_f32(func_4(5785u, func_1())));
    let x = u_input.a;
    s_output = StorageBuffer(78408i, ~_wgslsmith_dot_vec4_u32(u_input.c, u_input.c), 17576u, vec4<i32>(reverseBits(max(~6922i, 1i)), -15744i, _wgslsmith_sub_i32(abs(1i), 2147483647i), _wgslsmith_mod_i32(max(abs(-22815i), abs(-2147483647i)), -(-22705i << (u_input.c.x % 32u)))));
}

