struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<i32>(3930i, -2387i, 8504i, -1i));

var<private> global1: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(481f, -2180f, -1010f, 1871f), vec4<f32>(-310f, -449f, 968f, 1342f), vec4<f32>(-195f, 1680f, -978f, -1989f), vec4<f32>(-423f, 194f, 1301f, -2385f), vec4<f32>(2460f, 317f, 1102f, -995f));

var<private> global2: array<u32, 19>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec4<bool> {
    let var_0 = all(select(select(vec3<bool>(true, global0.a.x >= 29193i, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(false, true))), !vec3<bool>(false, true, all(vec4<bool>(false, true, false, true)))));
    global0 = Struct_3(global0.a);
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1004f), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-1000f + -182f))), _wgslsmith_f_op_f32(round(759f))), vec3<f32>(_wgslsmith_f_op_f32(sign(310f)), 996f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1000f) * 1f)), vec3<bool>(var_0, true, true)))));
    var var_2 = _wgslsmith_f_op_f32(var_1.x - var_1.x);
    global0 = Struct_3(-(firstTrailingBit(global0.a & global0.a) << (vec4<u32>(1u << (0u % 32u), global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(23160u, 19u)], 19u)], 19u)], 83834u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(1u, 19u)], 20706u, 4294967295u, 0u), u_input.a)) % vec4<u32>(32u))));
    return select(select(vec4<bool>(true, true, true, true), !vec4<bool>(var_0, any(vec4<bool>(false, true, false, var_0)), false, var_0), var_0), vec4<bool>(true, !((i32(-1i) * -58102i) == (41936i << (global2[_wgslsmith_index_u32(64514u, 19u)] % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_1.x + 1000f)) <= 161f, false), !(!all(vec3<bool>(false, var_0, false))));
}

fn func_2(arg_0: vec4<f32>, arg_1: i32) -> u32 {
    global2 = array<u32, 19>();
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(true, (~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)], 19u)] > u_input.a.x) & true), !any(func_3()));
    global2 = array<u32, 19>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1721f + arg_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.x * 551f)))))));
    let var_2 = ~global0.a;
    return 4294967295u;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: f32, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-130f))) + arg_2), -458f), arg_2, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2 + arg_2))))), arg_2)));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(min(247f, 679f))), arg_2, _wgslsmith_f_op_f32(f32(-1f) * -475f)))));
    global1 = array<vec4<f32>, 5>();
    let var_1 = Struct_2(_wgslsmith_add_vec4_u32(~select(u_input.a, u_input.a, select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, arg_0, true, false), vec4<bool>(arg_0, true, arg_0, true))), ~u_input.a), Struct_1(min(_wgslsmith_sub_i32(global0.a.x, global0.a.x << (arg_1 % 32u)), i32(-1i) * -22094i), _wgslsmith_clamp_vec3_u32(abs(arg_3 ^ u_input.a.wyw), ~(~vec3<u32>(1u, 1u, global2[_wgslsmith_index_u32(4294967295u, 19u)])), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 87506u), arg_3)), vec3<bool>(arg_0, arg_0, arg_0), all(!vec2<bool>(arg_0, false))));
    var_0 = vec3<f32>(-1233f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(645f)))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(arg_2))))))), _wgslsmith_f_op_f32(1695f + var_0.x));
    return Struct_3(global0.a);
}

fn func_1() -> Struct_1 {
    global0 = func_4(true, 39051u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(427f - -216f), _wgslsmith_f_op_f32(abs(1428f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -175f)) * _wgslsmith_div_f32(-614f, _wgslsmith_f_op_f32(floor(-751f))))), ~vec3<u32>(_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(42949u, 19u)] >> (u_input.a.x % 32u), ~4294967295u, _wgslsmith_mod_u32(34178u, u_input.a.x)), func_2(_wgslsmith_f_op_vec4_f32(trunc(global1[_wgslsmith_index_u32(54747u, 5u)])), min(2147483647i, 0i)), func_2(vec4<f32>(412f, 946f, -1187f, 1291f), global0.a.x)));
    var var_0 = global0.a.x;
    global0 = Struct_3(abs(vec4<i32>(global0.a.x, func_4(false, 6635u, _wgslsmith_f_op_f32(f32(-1f) * -1000f), u_input.a.wzy).a.x, -global0.a.x, (global0.a.x & global0.a.x) ^ firstTrailingBit(2147483647i))));
    let var_1 = Struct_4(vec3<u32>(global2[_wgslsmith_index_u32(~(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 19u)], 19u)]), 19u)] ^ 38596u, ~_wgslsmith_dot_vec3_u32(~u_input.a.wyw, u_input.a.xyx), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.b.x) ^ 36672u, 19u)] << (1u % 32u), 19u)]), -640f);
    let var_2 = ~_wgslsmith_mod_u32(u_input.b.x, 1u);
    return Struct_1(reverseBits(22810i), _wgslsmith_add_vec3_u32(~(~firstTrailingBit(vec3<u32>(59389u, 0u, 69949u))), vec3<u32>(~1u, 1u, 48906u)), vec3<bool>(false, all(vec3<bool>(any(vec2<bool>(true, false)), any(vec2<bool>(false, false)), true)), all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), false))), all(func_3().ww));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(firstLeadingBit(vec3<u32>(1u, ~(~22188u), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a & u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -500f), -458f) * 850f)));
    global2 = array<u32, 19>();
    let var_1 = u_input.a;
    var var_2 = func_1();
    global2 = array<u32, 19>();
    let var_3 = select(global0.a.wyw, min(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.a.x, 1i, 0i), ~global0.a.xyz), ~(~global0.a.yxz)), func_1().c) | -global0.a.wxw;
    var_2 = Struct_1(var_2.a, vec3<u32>(_wgslsmith_div_u32(abs(1u), ~u_input.b.x), _wgslsmith_sub_u32(countOneBits(var_2.b.x), var_1.x), 0u) ^ select(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_2.b.x, u_input.b.x), var_1.xxx)), vec3<u32>(max(11965u, 1u), ~94411u, func_1().b.x), !(!var_2.d)), var_2.c, any(select(!func_3().zxz, func_3().yzx, !(var_2.c.x & var_2.d))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~vec4<i32>(var_3.x, 15814i, 0i, var_2.a) | min(_wgslsmith_mod_vec4_i32(global0.a, global0.a), vec4<i32>(var_2.a, -1i, 0i, global0.a.x) & vec4<i32>(-29699i, -1i, -1i, var_2.a))), vec2<f32>(817f, _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1470f + var_0.b)))), vec3<i32>(2147483647i, 12118i, reverseBits(_wgslsmith_dot_vec4_i32(global0.a, vec4<i32>(41993i, -1i, var_3.x, var_3.x)))) & vec3<i32>(-_wgslsmith_clamp_i32(global0.a.x, 31678i, var_3.x), -_wgslsmith_mod_i32(1i, 29066i), var_3.x), ~abs((global0.a.yzy & global0.a.zzw) << (_wgslsmith_mult_vec3_u32(vec3<u32>(11875u, 4294967295u, var_1.x), u_input.a.xzy) % vec3<u32>(32u))), var_1.zzy);
}

