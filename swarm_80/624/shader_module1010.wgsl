struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: f32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
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

var<private> global0: Struct_3;

var<private> global1: array<vec2<bool>, 22>;

var<private> global2: array<vec2<i32>, 6>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec2<i32>(-1i, 28742i), vec3<f32>(-786f, -1000f, -184f), -890f, true, vec4<f32>(230f, 529f, -901f, 378f)));

var<private> global4: array<bool, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> i32 {
    let var_0 = 34293u;
    let var_1 = Struct_3(vec2<f32>(220f, _wgslsmith_f_op_f32(-global3.a.c)), global3.a.d);
    return min(46494i, global3.a.a.x);
}

fn func_2(arg_0: u32) -> i32 {
    global1 = array<vec2<bool>, 22>();
    var var_0 = global1[_wgslsmith_index_u32(countOneBits(4294967295u), 22u)];
    global4 = array<bool, 12>();
    var var_1 = firstTrailingBit(max(~_wgslsmith_dot_vec2_i32(-global3.a.a, global3.a.a | vec2<i32>(57938i, u_input.b)), ~func_3()));
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global0.a))), global4[_wgslsmith_index_u32(1u, 12u)] && global3.a.d);
    return -(u_input.a >> (~min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(arg_0, 1u)), 1u >> (u_input.d % 32u)) % 32u));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_4 {
    var var_0 = select(select(select(select(!vec4<bool>(arg_1.a.d, arg_1.a.d, arg_1.a.d, false), !vec4<bool>(global4[_wgslsmith_index_u32(0u, 12u)], true, false, false), any(vec4<bool>(true, global0.b, true, false))), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, global4[_wgslsmith_index_u32(u_input.d, 12u)], false, global0.b), !vec4<bool>(false, true, arg_1.a.d, global4[_wgslsmith_index_u32(u_input.d, 12u)])), !(!vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 12u)], true, global0.b, false))), !vec4<bool>(true, all(vec3<bool>(true, true, global4[_wgslsmith_index_u32(u_input.d, 12u)])), any(vec2<bool>(arg_1.a.d, false)), true), vec4<bool>(global3.a.d, arg_1.a.d, any(select(vec3<bool>(arg_1.a.d, arg_1.a.d, arg_1.a.d), vec3<bool>(false, global4[_wgslsmith_index_u32(47962u, 12u)], arg_1.a.d), vec3<bool>(true, false, global4[_wgslsmith_index_u32(u_input.d, 12u)]))), any(vec2<bool>(false, global0.b)))), !vec4<bool>(any(vec3<bool>(true, global3.a.d, true)), true, select(global0.b, any(vec4<bool>(true, false, true, false)), arg_0.x >= arg_2.a.x), arg_2.b), any(global1[_wgslsmith_index_u32(u_input.d, 22u)]));
    global3 = arg_1;
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(-global3.a.b.xy), all(!(!select(global1[_wgslsmith_index_u32(14015u, 22u)], vec2<bool>(var_0.x, false), global1[_wgslsmith_index_u32(57986u, 22u)]))));
    global0 = arg_2;
    let var_1 = ~(~select(u_input.d, _wgslsmith_mod_u32(u_input.d, u_input.d), any(var_0.wwx))) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.d, 64598u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(2008u, 4294967295u, 56680u, 56046u), vec4<u32>(14u, u_input.d, u_input.d, u_input.d) >> (vec4<u32>(u_input.d, u_input.d, 61701u, u_input.d) % vec4<u32>(32u))), u_input.d, reverseBits(firstTrailingBit(19425u)))) % 32u);
    return Struct_4(_wgslsmith_f_op_f32(-353f - _wgslsmith_f_op_f32(select(arg_2.a.x, -358f, global0.b))), vec2<i32>(abs(~firstLeadingBit(u_input.a)), -countOneBits(-2147483647i)), arg_1.a.a.x >= ~(-_wgslsmith_mod_i32(global3.a.a.x, -1i)), global0.b, abs(global3.a.a));
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_3 {
    var var_0 = 1i;
    var var_1 = func_4(global3.a.b, Struct_2(Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.a, global3.a.a.x), vec3<i32>(-37266i, -56272i, 1283i)), func_2(u_input.d)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.a.x, global0.a.x) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(504f, global0.a.x, global0.a.x), global3.a.e.wwx, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.e.x) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), any(vec4<bool>(true, arg_1, global0.b, global0.b)), vec4<f32>(_wgslsmith_f_op_f32(sign(global0.a.x)), _wgslsmith_f_op_f32(round(global0.a.x)), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(global3.a.c - global0.a.x)))), Struct_3(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-106f, 1126f)))))), any(vec3<bool>(global3.a.d, arg_0, true)) & false));
    let var_2 = _wgslsmith_mod_vec4_u32(max(_wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(u_input.d), _wgslsmith_clamp_u32(u_input.d, 1u, u_input.d), 1u, 27580u), _wgslsmith_mod_vec4_u32(~vec4<u32>(19027u, u_input.d, 0u, 22524u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, u_input.d, u_input.d), vec4<u32>(10200u, u_input.d, u_input.d, 62451u))), vec4<u32>(u_input.d >> (u_input.d % 32u), u_input.d, ~u_input.d, 58863u)), _wgslsmith_add_vec4_u32(min(~vec4<u32>(u_input.d, u_input.d, 23671u, u_input.d), vec4<u32>(u_input.d, u_input.d, 9983u, 65554u)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(955u, 0u, 37896u, 4294967295u), vec4<u32>(u_input.d, 6326u, 1u, 0u)))), max(vec4<u32>(u_input.d, u_input.d, ~u_input.d, 1u), abs(vec4<u32>(min(u_input.d, u_input.d), u_input.d, 30743u, 0u))));
    let var_3 = -min(func_2(4294967295u), reverseBits(u_input.a));
    var_1 = Struct_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.a.b.x), global3.a.b.x)), firstTrailingBit(~global3.a.a), any(!(!(!vec3<bool>(arg_1, arg_0, global0.b)))), var_1.c, _wgslsmith_sub_vec2_i32(select(max(abs(vec2<i32>(global3.a.a.x, 12832i)), global3.a.a), -vec2<i32>(33215i, u_input.c), select(global1[_wgslsmith_index_u32(max(var_2.x, 1u), 22u)], global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(68583u, u_input.d, 3888u), 22u)], !arg_1)), _wgslsmith_div_vec2_i32(~_wgslsmith_mult_vec2_i32(vec2<i32>(var_1.e.x, global3.a.a.x), vec2<i32>(var_3, global3.a.a.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(46144i, -2147483647i), vec2<i32>(75680i, u_input.c) >> (var_2.zw % vec2<u32>(32u))))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -275f), 363f))) * global0.a), global3.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1005i;
    var var_1 = ~(~vec4<u32>(u_input.d | _wgslsmith_add_u32(86140u, 1u), 0u, _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.d, u_input.d), ~u_input.d), countOneBits(~u_input.d)));
    let var_2 = global3.a;
    var var_3 = func_1(global0.b, select(true, true, var_2.d));
    var var_4 = -9615i;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_u32(99557u, _wgslsmith_sub_u32(11298u, select(23862u, 96884u, var_2.d)), ~(~var_1.x)));
}

