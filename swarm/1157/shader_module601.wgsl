struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 3>;

var<private> global2: vec2<f32> = vec2<f32>(216f, -793f);

var<private> global3: array<Struct_1, 16>;

var<private> global4: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<i32>) -> vec3<bool> {
    global0 = Struct_2(_wgslsmith_f_op_f32(-871f - 508f), global4.b, ~_wgslsmith_mult_i32(-2147483647i, ~(-global4.c)), global0.d);
    let var_0 = Struct_1(global4.b, !vec3<bool>(!(global1[_wgslsmith_index_u32(11447u, 3u)] || global4.b.x), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 1u), 3u)] | !global4.b.x, any(global0.b) && all(vec4<bool>(global1[_wgslsmith_index_u32(59144u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], global4.b.x, true))), select(vec2<bool>(reverseBits(-13204i) <= _wgslsmith_dot_vec2_i32(vec2<i32>(global0.c, -18515i), arg_0.yz), all(select(global4.b, vec2<bool>(global4.b.x, global1[_wgslsmith_index_u32(u_input.a, 3u)]), true))), !global4.b, select(!vec2<bool>(global1[_wgslsmith_index_u32(39325u, 3u)], global4.b.x), !global0.b, global0.b)));
    var var_1 = u_input.c;
    var var_2 = abs(_wgslsmith_add_vec3_u32(abs(~(~vec3<u32>(u_input.b, 12744u, 1u))), u_input.d.www));
    global1 = array<bool, 3>();
    return select(select(select(select(select(var_0.b, vec3<bool>(global1[_wgslsmith_index_u32(45124u, 3u)], global4.b.x, false), false), var_0.b, vec3<bool>(false, var_0.c.x, global0.b.x)), var_0.b, all(global0.b)), vec3<bool>(any(!vec2<bool>(true, global4.b.x)), global0.b.x, any(vec4<bool>(false, global0.b.x, global0.b.x, global4.b.x))), !global0.b.x), var_0.b, !select(!(!var_0.b), vec3<bool>(any(var_0.b), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, 4294967295u), 3u)], global0.b.x), true));
}

fn func_2(arg_0: vec4<bool>) -> vec2<bool> {
    let var_0 = Struct_1(vec2<bool>(global4.a >= global2.x, !arg_0.x), func_3(_wgslsmith_add_vec3_i32(select(~vec3<i32>(0i, global0.c, 0i), firstLeadingBit(vec3<i32>(-2147483647i, -2147483647i, global0.c)), select(arg_0.zyy, vec3<bool>(false, false, arg_0.x), true)), firstLeadingBit(vec3<i32>(2147483647i, global4.c, global4.c)) | _wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.c, -53773i), vec3<i32>(global4.c, global0.c, -35269i)))), arg_0.zy);
    global3 = array<Struct_1, 16>();
    global3 = array<Struct_1, 16>();
    var var_1 = u_input.d;
    var_1 = u_input.d;
    return select(select(global4.b, global0.b, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.x, 34135u), vec2<u32>(var_1.x, var_1.x) << (var_1.zw % vec2<u32>(32u))), 3u)] && true), arg_0.wy, arg_0.x || true);
}

fn func_1() -> Struct_2 {
    var var_0 = ~firstTrailingBit(~u_input.a);
    var var_1 = Struct_1(global4.b, !(!vec3<bool>(global4.c <= global4.c, true, true)), select(!func_2(vec4<bool>(true, true, true, true)), !global4.b, func_3(firstLeadingBit(vec3<i32>(-1i, 1i, global0.c) >> (u_input.d.zzx % vec3<u32>(32u)))).x));
    let var_2 = vec4<bool>(true, select(false, global4.b.x, -1000f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.x, 355f)) - -962f)), select(true, true | (44465u < u_input.a), any(var_1.b)), any(vec4<bool>(global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(u_input.d, u_input.d)), 3u)], _wgslsmith_f_op_f32(-global0.d) == _wgslsmith_f_op_f32(floor(global2.x)), true, true || !var_1.a.x)));
    var_0 = u_input.b;
    var var_3 = vec4<u32>(u_input.d.x, u_input.a, ~abs(0u), ~u_input.d.x);
    return Struct_2(-768f, vec2<bool>(true, true), -35784i, _wgslsmith_f_op_f32(-760f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-850f, -1005f)), -519f)));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_1) -> vec2<bool> {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(27785u, 19515u) << ((abs(_wgslsmith_mod_u32(min(1u, 0u), u_input.b)) | u_input.b) % 32u), 3u)];
    let var_1 = Struct_2(_wgslsmith_f_op_f32(ceil(956f)), !select(vec2<bool>(false, true), func_3(abs(vec3<i32>(-1i, global0.c, u_input.c))).xx, global1[_wgslsmith_index_u32(firstLeadingBit(~u_input.d.x), 3u)]), 50817i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_1().d) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_1.x)))))));
    global0 = Struct_2(2157f, vec2<bool>(true, false), arg_0.c, 227f);
    global4 = Struct_2(-1000f, !select(global4.b, vec2<bool>(var_1.b.x, true), global0.c <= (12798i >> (u_input.d.x % 32u))), firstTrailingBit(-_wgslsmith_clamp_i32(arg_0.c, -1i, reverseBits(-53704i))), _wgslsmith_f_op_f32(global2.x * global0.a));
    var var_2 = firstLeadingBit(u_input.d.x & firstLeadingBit(_wgslsmith_mult_u32(4294967295u, u_input.d.x) << (firstLeadingBit(u_input.a) % 32u)));
    return select(select(func_2(!(!vec4<bool>(arg_2.b.x, true, global0.b.x, global0.b.x))), !arg_2.b.yy, !vec2<bool>(true, func_1().b.x)), func_2(vec4<bool>(u_input.b == 4294967295u, global4.b.x, !(global0.b.x & arg_0.b.x), global0.b.x)), !((min(u_input.b, u_input.b) | ~34951u) >= u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(!(!(!(!vec3<bool>(false, global0.b.x, false)))));
    let var_1 = Struct_2(-1303f, select(vec2<bool>(false, false), global0.b, func_4(func_1(), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.d, -383f)), Struct_1(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 3u)]), !vec3<bool>(global1[_wgslsmith_index_u32(1u, 3u)], global4.b.x, global1[_wgslsmith_index_u32(4294967295u, 3u)]), select(vec2<bool>(global4.b.x, global1[_wgslsmith_index_u32(u_input.a, 3u)]), global0.b, vec2<bool>(false, true))))), global4.c, func_1().a);
    let var_2 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(581f * 841f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global4.a))))), !func_2(vec4<bool>(all(vec3<bool>(false, global4.b.x, var_1.b.x)), true, false, !var_1.b.x)), 2147483647i, 1184f);
    var_0 = any(vec3<bool>(false, var_2.b.x, !(!global1[_wgslsmith_index_u32(47998u, 3u)] & false)));
    var var_3 = Struct_1(vec2<bool>(global0.b.x, all(vec3<bool>(true, func_4(var_1, vec2<f32>(global2.x, global4.a), global3[_wgslsmith_index_u32(1u, 16u)]).x, true))), !vec3<bool>(func_2(!vec4<bool>(false, true, global4.b.x, false)).x, true, false), global0.b);
    var var_4 = Struct_1(global0.b, var_3.b, func_1().b);
    var_0 = true;
    var var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(-28747i, global0.c, max(u_input.c >> (~0u % 32u), ~(-2147483647i))), vec2<i32>(_wgslsmith_dot_vec2_i32(-countOneBits(vec2<i32>(11583i, -2147483647i)), ~vec2<i32>(var_2.c, 1i)), reverseBits(var_2.c)));
}

