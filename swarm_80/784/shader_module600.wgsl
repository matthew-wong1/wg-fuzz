struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<i32, 11>;

var<private> global2: array<i32, 8>;

var<private> global3: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(15166i), Struct_1(0i), Struct_1(2147483647i), Struct_1(-16994i), Struct_1(i32(-2147483648)), Struct_1(23222i), Struct_1(586i), Struct_1(35412i), Struct_1(3643i), Struct_1(2147483647i), Struct_1(0i), Struct_1(50379i), Struct_1(56895i));

var<private> global4: vec4<i32> = vec4<i32>(-45187i, i32(-2147483648), i32(-2147483648), 0i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> u32 {
    let var_0 = Struct_1(firstLeadingBit(1i >> ((global0.x & min(global0.x, 72569u)) % 32u)));
    var var_1 = 1u;
    global1 = array<i32, 11>();
    var var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(115999u, ~53500u) | firstLeadingBit(min(_wgslsmith_div_u32(1u, 4294967295u), global0.x)), 13u)];
    let var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-666f + 474f))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-597f - 497f) - 923f))), 143f, _wgslsmith_f_op_f32(f32(-1f) * -1002f)), true));
    return 1u;
}

fn func_2() -> i32 {
    global0 = _wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(abs(vec2<u32>(global0.x, 0u) | vec2<u32>(4294967295u, global0.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(0u, global0.x)), vec2<u32>(28550u, 33645u))), vec2<u32>(1u, _wgslsmith_sub_u32(global0.x, 30477u & _wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(global0.x, 20927u)))));
    global0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(65543u, _wgslsmith_clamp_u32(global0.x, func_3(), firstLeadingBit(~global0.x))), ~_wgslsmith_div_vec2_u32(select(~vec2<u32>(global0.x, global0.x), abs(vec2<u32>(6659u, global0.x)), true), select(~vec2<u32>(global0.x, 52138u), ~vec2<u32>(106960u, 1u), select(vec2<bool>(false, false), vec2<bool>(false, false), true))), ~(~(vec2<u32>(62730u, global0.x) << (~vec2<u32>(4294967295u, global0.x) % vec2<u32>(32u)))));
    let var_0 = -44700i;
    let var_1 = Struct_1(2147483647i | max(abs(-1i), _wgslsmith_dot_vec2_i32(global4.wx, vec2<i32>(global4.x, var_0)) ^ 1i));
    var var_2 = Struct_1(3990i);
    return var_0;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_1, arg_3: bool) -> vec4<u32> {
    global0 = _wgslsmith_div_vec2_u32(arg_0.xz, vec2<u32>(~_wgslsmith_sub_u32(arg_0.x, arg_0.x), ~36348u)) << (vec2<u32>(arg_0.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, arg_0.x), _wgslsmith_clamp_vec2_u32(arg_0.xx, vec2<u32>(10717u, global0.x), arg_0.xx)), countOneBits(_wgslsmith_sub_u32(global0.x, arg_0.x)))) % vec2<u32>(32u));
    global3 = array<Struct_1, 13>();
    var var_0 = abs(u_input.e);
    var_0 = vec4<i32>(func_2(), -(~(~_wgslsmith_dot_vec4_i32(u_input.e, u_input.e))), -2147483647i, firstLeadingBit(var_0.x << (41754u % 32u)));
    var var_1 = Struct_1(-2147483647i);
    return vec4<u32>(arg_0.x, _wgslsmith_div_u32(2097u, ~firstTrailingBit(arg_0.x) >> (4294967295u % 32u)), arg_0.x, func_3());
}

fn func_4(arg_0: f32, arg_1: vec3<i32>, arg_2: vec4<u32>, arg_3: vec4<i32>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0, -1694f, -313f), vec3<f32>(arg_0, arg_0, arg_0)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1000f, arg_0))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, -238f) - vec3<f32>(-686f, arg_0, arg_0)))), vec3<bool>(select(true, true, false), false, arg_0 == 624f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-282f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(abs(-384f)))), arg_0)));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -811f)), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(var_0.x + 1000f)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-2238f, var_0.x, var_0.x), vec3<f32>(-993f, arg_0, 545f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, arg_0)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, var_0.x, arg_0)))))));
    var var_2 = global3[_wgslsmith_index_u32(69475u, 13u)];
    let var_3 = vec2<i32>(reverseBits(u_input.b), 61458i);
    global3 = array<Struct_1, 13>();
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2691f, -753f, 603f, var_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -181f, -729f, arg_0), vec4<f32>(542f, var_1.x, var_1.x, var_1.x))))), global0.x, 0i, 954f);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 11>();
    global2 = array<i32, 8>();
    global4 = -(~u_input.e);
    let var_0 = Struct_1(min(global1[_wgslsmith_index_u32(global0.x, 11u)], ~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(40733i, global2[_wgslsmith_index_u32(global0.x, 8u)], global1[_wgslsmith_index_u32(global0.x, 11u)]), vec3<i32>(u_input.b, -2147483647i, u_input.e.x)), global4.wyz)));
    var var_1 = Struct_1(countOneBits(0i));
    let x = u_input.a;
    s_output = func_4(-1000f, vec3<i32>(~global1[_wgslsmith_index_u32(~(~global0.x), 11u)], var_1.a, min(-7745i, var_1.a)), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(5335u, global0.x, 1u, 16497u) ^ vec4<u32>(0u, 4294967295u, 0u, 0u), vec4<u32>(global0.x, 0u, 49655u, 1u))) | _wgslsmith_mult_vec4_u32(~(~vec4<u32>(global0.x, global0.x, 4353u, 15620u)), max(func_1(vec3<u32>(global0.x, global0.x, global0.x), 2991i, Struct_1(u_input.e.x), true), vec4<u32>(2557u, 82219u, 1u, global0.x))), _wgslsmith_mult_vec4_i32(u_input.e, vec4<i32>(u_input.e.x, -max(1i, global2[_wgslsmith_index_u32(global0.x, 8u)]), 2147483647i, -271i)));
}

