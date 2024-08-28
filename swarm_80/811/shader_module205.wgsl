struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: f32,
    b: f32,
    c: i32,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global1: array<u32, 3>;

var<private> global2: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(-24871i, i32(-2147483648)), vec2<i32>(2147483647i, -51057i), vec2<i32>(-9919i, 1i), vec2<i32>(0i, -3771i), vec2<i32>(-1i, 6094i), vec2<i32>(-12397i, -37066i), vec2<i32>(i32(-2147483648), -13159i), vec2<i32>(1i, 0i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, 1i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(31437i, -18550i), vec2<i32>(-34987i, -24338i), vec2<i32>(0i, 13811i), vec2<i32>(-24002i, 0i), vec2<i32>(21055i, 41355i), vec2<i32>(i32(-2147483648), -46294i), vec2<i32>(-51315i, 53306i), vec2<i32>(21303i, 688i), vec2<i32>(0i, 12367i), vec2<i32>(-22251i, i32(-2147483648)), vec2<i32>(-1i, 18167i), vec2<i32>(-1i, 2147483647i), vec2<i32>(i32(-2147483648), 58180i), vec2<i32>(i32(-2147483648), 9177i));

var<private> global3: array<bool, 15>;

var<private> global4: array<vec4<bool>, 2>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(892f))), -630f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -260f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(399f - 1099f) + _wgslsmith_f_op_f32(590f - 1163f))))));
    var var_1 = -1i;
    let var_2 = vec3<bool>(u_input.b.x >= ~(firstLeadingBit(u_input.b.x) << (_wgslsmith_clamp_u32(2794u, global1[_wgslsmith_index_u32(u_input.e, 3u)], 70210u) % 32u)), any(select(select(global0.zxw, !global0.wyz, vec3<bool>(true, global0.x, true)), global0.zzz, global0.wzz)), true);
    return 1u;
}

fn func_3() -> vec4<i32> {
    global4 = array<vec4<bool>, 2>();
    let var_0 = u_input.c.yy;
    global3 = array<bool, 15>();
    return vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(-39557i, 1i, u_input.b.x, -2147483647i), vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x) << (vec4<u32>(18761u, 52309u, u_input.c.x, 4294967295u) % vec4<u32>(32u))), vec4<i32>(2147483647i, 12309i, 0i, u_input.b.x & u_input.b.x)), max(vec4<i32>(~3214i, -1i, _wgslsmith_mod_i32(0i, -1i), ~u_input.b.x), abs(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(-15623i, 25478i, -33201i, u_input.b.x))))), min(abs(u_input.b.x), u_input.b.x), u_input.b.x, -49456i);
}

fn func_1() -> Struct_1 {
    global3 = array<bool, 15>();
    var var_0 = Struct_3(_wgslsmith_clamp_u32(6466u, global1[_wgslsmith_index_u32(~func_2(global0.x), 3u)], _wgslsmith_mult_u32(14585u, u_input.c.x >> (1u % 32u)) ^ global1[_wgslsmith_index_u32(~31817u, 3u)]), (~func_3() & ~(-vec4<i32>(u_input.b.x, 1i, 2147483647i, u_input.b.x))) & vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(u_input.b, u_input.b, vec3<i32>(u_input.b.x, -1i, 1i)), select(u_input.b, u_input.b, vec3<bool>(global0.x, false, true))), u_input.b.x, -u_input.b.x, -1i << (~u_input.a % 32u)));
    return Struct_1(34203u, var_0.b, vec3<u32>(min(25216u, 1u >> (0u % 32u)), abs(1u), firstLeadingBit(var_0.a) | _wgslsmith_mod_u32(4294967295u, global1[_wgslsmith_index_u32(4294967295u, 3u)])) >> (~(~_wgslsmith_mod_vec3_u32(u_input.c, u_input.c)) % vec3<u32>(32u)), !select(global0.wxx, !select(vec3<bool>(global3[_wgslsmith_index_u32(var_0.a, 15u)], true, false), global0.xyz, true), all(global0.wwz)), vec4<u32>(firstLeadingBit(~1u), 1u, min(1044u, 4294967295u ^ u_input.d), reverseBits(func_2(false))) | ~(~(vec4<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], 49918u, u_input.e, 4294967295u) | vec4<u32>(10906u, global1[_wgslsmith_index_u32(4294967295u, 3u)], var_0.a, var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-511f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-966f * -1746f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1189f)), 2490f)));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(var_0.zx + vec2<f32>(1143f, var_0.x)), _wgslsmith_f_op_vec2_f32(-var_0.yz))) * _wgslsmith_f_op_vec2_f32(-var_0.zy));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, _wgslsmith_f_op_f32(1477f * _wgslsmith_f_op_f32(-110f - -958f))));
    var var_2 = func_1();
    let var_3 = vec3<u32>(~var_2.e.x, global1[_wgslsmith_index_u32(u_input.d, 3u)] >> ((~_wgslsmith_div_u32(var_2.e.x, 1u) << (~(~u_input.e) % 32u)) % 32u), max(min(firstTrailingBit(firstLeadingBit(51929u)), _wgslsmith_sub_u32(~var_2.a, ~var_2.c.x)), countOneBits(_wgslsmith_mod_u32(reverseBits(16592u), 53109u))));
    let var_4 = vec4<f32>(1000f, _wgslsmith_f_op_f32(var_1.x * var_1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_0.x)))), -934f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(var_4, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(var_4 + vec4<f32>(-1109f, -1179f, var_0.x, var_1.x)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 442f, var_4.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 678f, var_4.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.x))), var_1.x, -968f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-153f, -1608f, var_2.d.x))))), _wgslsmith_mod_i32(var_2.b.x, -1i), abs(vec2<i32>(~1i, ~0i)));
}

