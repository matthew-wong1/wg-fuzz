struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_3 = Struct_3(Struct_1(-162f), -34247i, 8962i, 11418u, 46376u);

var<private> global2: Struct_1;

var<private> global3: bool;

var<private> global4: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(1068f), Struct_1(-487f), Struct_1(-410f), Struct_1(-206f), Struct_1(305f), Struct_1(-567f), Struct_1(-126f), Struct_1(616f), Struct_1(2357f), Struct_1(-769f), Struct_1(154f), Struct_1(-201f), Struct_1(275f), Struct_1(757f), Struct_1(2593f), Struct_1(257f), Struct_1(-536f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: u32) -> bool {
    var var_0 = global1.e;
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-563f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.a.a, _wgslsmith_f_op_f32(-arg_0.a.a), true)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1254f, global2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-438f + -1404f)))));
    global1 = arg_0;
    global0 = arg_1;
    var_0 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_2, arg_0.d, u_input.b, u_input.b), vec4<u32>(4294967295u, 4723u, 70141u, arg_2) << (vec4<u32>(1u, u_input.b, arg_2, u_input.a.x) % vec4<u32>(32u))), max(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.e, arg_0.d, 125464u, 4294967295u), vec4<u32>(arg_0.e, global1.d, 31100u, 34863u)), ~vec4<u32>(arg_0.e, arg_0.e, global1.d, 4294967295u))), _wgslsmith_div_vec4_u32(~vec4<u32>(124936u, arg_2, arg_0.e, arg_2), vec4<u32>(arg_2, 0u, global1.e, arg_2)) | max(~vec4<u32>(arg_0.e, 27925u, arg_2, arg_0.d), vec4<u32>(arg_0.e, arg_0.d, arg_0.e, 23835u)));
    return arg_1;
}

fn func_1() -> f32 {
    global3 = func_2(Struct_3(global1.a, firstTrailingBit(global1.c), -1i, max(select(global1.e, u_input.b, true) >> (4294967295u % 32u), _wgslsmith_div_u32(global1.d, u_input.b)), u_input.b), _wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.a.x, 60026u) & 1u, 125738u) == 17616u, 1u);
    global3 = all(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    var var_0 = global1.a.a;
    var var_1 = vec3<f32>(_wgslsmith_div_f32(global2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-819f, 391f) - global1.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -103f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.a - 631f), -141f)), _wgslsmith_f_op_f32(abs(global1.a.a)));
    var var_2 = Struct_2(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(reverseBits(u_input.b) << (21569u % 32u), global1.d), 17u)], reverseBits(abs(global1.e)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -296f) + -1611f);
}

fn func_3(arg_0: bool) -> vec3<f32> {
    global0 = select(!(!arg_0), arg_0, true);
    var var_0 = Struct_2(Struct_1(global1.a.a), ~global1.e);
    let var_1 = all(!select(vec2<bool>(true, true), vec2<bool>(arg_0, arg_0), true & arg_0));
    global2 = global4[_wgslsmith_index_u32(u_input.b, 17u)];
    global2 = global4[_wgslsmith_index_u32(0u, 17u)];
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.a, 1000f, 2117f) + vec3<f32>(2045f, global1.a.a, -587f)))), vec3<f32>(-564f, 572f, _wgslsmith_f_op_f32(round(-1396f))), select(select(vec3<bool>(arg_0, var_1, false), vec3<bool>(false, var_1, true), var_1), select(vec3<bool>(false, true, false), vec3<bool>(false, var_1, var_1), arg_0), true))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1348f, global1.a.a, var_0.a.a)))) * vec3<f32>(global2.a, _wgslsmith_f_op_f32(floor(global2.a)), _wgslsmith_f_op_f32(global2.a * 1267f))), var_1)) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(873f, _wgslsmith_f_op_f32(trunc(-656f)), var_0.a.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.a, var_0.a.a, global2.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1020f + global2.a), _wgslsmith_f_op_f32(min(global2.a, global2.a))))), _wgslsmith_f_op_f32(func_1()), global1.a.a), _wgslsmith_div_vec3_f32(vec3<f32>(1269f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1610f, global2.a) * _wgslsmith_f_op_f32(global2.a * 589f)), _wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1255f, global1.a.a, -1810f)), _wgslsmith_f_op_vec3_f32(func_3(false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.a, -115f, -154f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(113f, 1817f, global2.a))), global1.b <= -60280i)))));
    let var_1 = Struct_2(global4[_wgslsmith_index_u32(u_input.b, 17u)], ~(~((128178u << (global1.d % 32u)) >> (global1.d % 32u))));
    global1 = Struct_3(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.b, 2534u << (0u % 32u)), 17u)], min(-1i, global1.b), -29361i, global1.d, ~_wgslsmith_div_u32(abs(4294967295u), 4294967295u) & firstTrailingBit(4294967295u));
    let var_2 = Struct_3(global1.a, ~global1.b, -1i, ~1u & ~var_1.b, u_input.b);
    var var_3 = -15312i;
    var var_4 = Struct_3(Struct_1(_wgslsmith_f_op_f32(ceil(var_0.x))), ~abs(~(~712i)), min(_wgslsmith_sub_i32(~var_2.c, 26649i >> (global1.d % 32u)), _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(var_2.b, -1i)), ~vec2<i32>(var_2.c, global1.b))) | ~(global1.c >> (~var_2.e % 32u)), _wgslsmith_dot_vec3_u32(u_input.a, ~vec3<u32>(_wgslsmith_div_u32(var_2.e, 4294967295u), global1.e, firstTrailingBit(29505u))), _wgslsmith_clamp_u32(~var_2.e, ~73260u, _wgslsmith_dot_vec2_u32(~(~u_input.a.zy), ~u_input.a.xy)));
    var var_5 = var_2;
    let var_6 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_4.c) >> (4294967295u % 32u));
}

