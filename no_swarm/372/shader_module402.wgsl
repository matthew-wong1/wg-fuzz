struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec4<i32> = vec4<i32>(2147483647i, -46328i, -1i, 0i);

var<private> global2: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global3: array<f32, 19>;

var<private> global4: array<bool, 27>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<f32>, arg_3: i32) -> vec3<f32> {
    let var_0 = select(select(select(global2.zxy, vec3<bool>(global2.x == true, any(vec4<bool>(false, false, global4[_wgslsmith_index_u32(4294967295u, 27u)], global4[_wgslsmith_index_u32(u_input.b.x, 27u)])), true), global4[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x) ^ u_input.d, 27u)]), select(global2.yww, vec3<bool>(true, true, true), global2.ywx), vec3<bool>(!global2.x | false, true, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x >> (u_input.b.x % 32u), u_input.b.x & u_input.b.x), 27u)])), !select(select(vec3<bool>(false, false, global4[_wgslsmith_index_u32(u_input.b.x, 27u)]), select(vec3<bool>(global2.x, global4[_wgslsmith_index_u32(u_input.b.x, 27u)], global4[_wgslsmith_index_u32(4294967295u, 27u)]), global2.yzw, false), true), vec3<bool>(true, global2.x, all(global2.zzy)), vec3<bool>(true, any(global2.zyw), true)), select(vec3<bool>(!all(vec4<bool>(false, false, global2.x, true)), global4[_wgslsmith_index_u32((u_input.b.x >> (1u % 32u)) << (_wgslsmith_clamp_u32(u_input.d, u_input.d, u_input.d) % 32u), 27u)], true), global2.xyx, any(vec2<bool>(all(global2.zyw), !global4[_wgslsmith_index_u32(0u, 27u)]))));
    global1 = arg_1;
    var var_1 = max(16209u, _wgslsmith_mod_u32(~max(~u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 14972u)), _wgslsmith_mod_u32(0u, u_input.b.x)));
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(countOneBits(16041u), u_input.b.x << (u_input.b.x % 32u), 1u), (20068u ^ u_input.b.x) | _wgslsmith_clamp_u32(u_input.d, u_input.d, u_input.d), 4294967295u, ~(~0u)), _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, 39443u, 642u, u_input.d)), u_input.b)) | ~vec4<u32>(~61893u, u_input.d, 14349u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 54380u), vec2<u32>(24221u, 42093u)) << (u_input.b.x % 32u));
    let var_3 = -51819i;
    return _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1108f, arg_2.x, -520f) + _wgslsmith_f_op_vec3_f32(-arg_2.wwx))), arg_2.zww));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> vec3<i32> {
    global2 = !(!(!vec4<bool>(true, true, global2.x, true)));
    var var_0 = global2.zxy;
    let var_1 = 5199u;
    var var_2 = arg_0;
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-863f, 578f, global3[_wgslsmith_index_u32(1u, 19u)])))) * _wgslsmith_f_op_vec3_f32(func_3(~(-5755i), min(vec4<i32>(-16780i, 19678i, 1i, global1.x), vec4<i32>(global1.x, var_2.b.x, 190i, global0.x)), vec4<f32>(global3[_wgslsmith_index_u32(30886u, 19u)], 548f, 1000f, var_2.a.x), -2147483647i))))), firstLeadingBit(firstTrailingBit(vec4<i32>(-34693i, arg_0.b.x, 1i, global1.x))) >> (~u_input.b % vec4<u32>(32u)));
    return var_3.b.xxx;
}

fn func_1() -> f32 {
    var var_0 = u_input.b.yx;
    let var_1 = abs(~_wgslsmith_clamp_vec3_i32(max(global1.xyw, u_input.c), vec3<i32>(-40517i, 1i, global1.x), global1.yzx)) ^ firstTrailingBit(func_2(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(59793u, 19u)], global3[_wgslsmith_index_u32(u_input.b.x, 19u)], global3[_wgslsmith_index_u32(u_input.d, 19u)]) - vec3<f32>(global3[_wgslsmith_index_u32(67937u, 19u)], global3[_wgslsmith_index_u32(1u, 19u)], 313f)), ~vec4<i32>(global0.x, -1i, global0.x, global0.x)), u_input.b.wwx));
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-929f))), global3[_wgslsmith_index_u32(var_0.x, 19u)], global3[_wgslsmith_index_u32(u_input.d, 19u)]), -(~vec4<i32>(_wgslsmith_clamp_i32(-16691i, var_1.x, -1i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), u_input.c.zx), ~20056i, -49831i)));
    let var_3 = select(vec2<bool>(select(any(global2.xw), global2.x, true) == false, any(vec2<bool>(global2.x, any(vec3<bool>(true, false, global2.x))))), global2.zx, global4[_wgslsmith_index_u32(~reverseBits(~firstTrailingBit(0u)), 27u)]);
    var_0 = vec2<u32>(~(~(~(~var_0.x))), countOneBits(var_0.x));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(195f - _wgslsmith_f_op_vec3_f32(func_3(var_2.b.x << (115946u % 32u), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-2548i, 2147483647i, global0.x, u_input.c.x), var_2.b), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, -2147483647i, -36118i, 22091i), vec4<i32>(3698i, 2147483647i, -2147483647i, global1.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 19u)], global3[_wgslsmith_index_u32(u_input.d, 19u)], var_2.a.x, 1492f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.x, global3[_wgslsmith_index_u32(0u, 19u)], -2151f, var_2.a.x) * vec4<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 19u)], 1571f, global3[_wgslsmith_index_u32(1u, 19u)], global3[_wgslsmith_index_u32(u_input.b.x, 19u)])))), _wgslsmith_add_i32(~var_2.b.x, _wgslsmith_sub_i32(global0.x, -5966i)))).x), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(7706u, 19u)] + var_2.a.x)));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(484f))));
    let var_1 = arg_1.b;
    global0 = vec2<i32>(var_1.x, -2147483647i ^ var_1.x);
    let var_2 = arg_1;
    global2 = !select(!vec4<bool>(all(vec3<bool>(global4[_wgslsmith_index_u32(arg_2, 27u)], false, true)), false, false || global4[_wgslsmith_index_u32(4294967295u, 27u)], !global2.x), vec4<bool>(all(select(vec2<bool>(global4[_wgslsmith_index_u32(1u, 27u)], global4[_wgslsmith_index_u32(arg_2, 27u)]), global2.yz, vec2<bool>(global2.x, true))), true, !(u_input.c.x == 7383i), all(vec4<bool>(false, true, global4[_wgslsmith_index_u32(0u, 27u)], global2.x)) || any(global2.wx)), true);
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = global0.x;
    let var_1 = func_4(func_4(global3[_wgslsmith_index_u32(u_input.b.x, 19u)], arg_0, 4294967295u).a.x, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) - _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.d, 8754u), u_input.b), 19u)] * _wgslsmith_f_op_f32(-arg_0.a.x))), Struct_1(arg_0.a, countOneBits(-arg_0.b)), reverseBits(4294967295u)), 4294967295u).a.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_f_op_f32(var_1 - var_1), _wgslsmith_f_op_f32(f32(-1f) * -1261f)))), arg_0.b);
    var var_3 = countOneBits(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d, 0u, u_input.b.x, 4411u), u_input.b) >> (~60404u % 32u), u_input.d));
    let var_4 = _wgslsmith_f_op_f32(func_1());
    return _wgslsmith_dot_vec2_u32(u_input.b.wz, u_input.b.xw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, any(vec3<bool>(true, !(global4[_wgslsmith_index_u32(4294967295u, 27u)] || global4[_wgslsmith_index_u32(4294967295u, 27u)]), global4[_wgslsmith_index_u32(u_input.b.x, 27u)])), ((_wgslsmith_f_op_f32(-1678f * global3[_wgslsmith_index_u32(u_input.d, 19u)]) > _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(8182u, 19u)] * global3[_wgslsmith_index_u32(0u, 19u)])) | !global2.x) || any(vec2<bool>(true, true)), global4[_wgslsmith_index_u32(firstTrailingBit(4312u), 27u)]);
    var var_1 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(34203u, func_5(func_4(_wgslsmith_f_op_f32(func_1()), Struct_1(vec3<f32>(182f, -851f, global3[_wgslsmith_index_u32(u_input.b.x, 19u)]), vec4<i32>(4817i, -1713i, -46257i, -2147483647i)), _wgslsmith_div_u32(~29749u, 1u)), i32(-1i) * -54989i), 2043u), 19u)];
    let var_2 = _wgslsmith_f_op_f32(func_1());
    global0 = vec2<i32>(global0.x >> (u_input.b.x % 32u), func_4(313f, Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_2, 918f, 616f))), max(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, global1.x, global1.x, global1.x), vec4<i32>(-2147483647i, 28790i, 23760i, u_input.c.x)), ~vec4<i32>(global1.x, -1i, global1.x, global1.x))), 14207u).b.x);
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2))))), 429f))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_vec4_i32(~(vec4<i32>(u_input.c.x, 0i, 1i, -2147483647i) & vec4<i32>(global0.x, 0i, 723i, -1i)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(0i, global1.x, 2147483647i, global1.x), reverseBits(vec4<i32>(13690i, global0.x, global1.x, 0i)), vec4<i32>(-27555i, global0.x, global1.x, global1.x))), ~max(_wgslsmith_mult_vec4_i32(vec4<i32>(17417i, 6641i, -1i, -1i), vec4<i32>(u_input.c.x, u_input.c.x, global0.x, -1i)), -vec4<i32>(global0.x, u_input.a, 2147483647i, u_input.c.x)), var_0), func_2(func_4(_wgslsmith_f_op_f32(select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.xzy, vec3<u32>(1u, u_input.b.x, u_input.d)), 19u)], -387f, all(var_0))), func_4(_wgslsmith_f_op_f32(round(var_2)), func_4(-117f, Struct_1(vec3<f32>(375f, var_2, 2185f), vec4<i32>(u_input.c.x, -1i, 1i, 46657i)), u_input.d), 0u), _wgslsmith_sub_u32(countOneBits(u_input.d), u_input.d)), _wgslsmith_sub_vec3_u32(u_input.b.zyx ^ select(u_input.b.www, vec3<u32>(u_input.d, u_input.d, 4294967295u), vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 27u)], global4[_wgslsmith_index_u32(47717u, 27u)], false)), abs(_wgslsmith_add_vec3_u32(vec3<u32>(9156u, u_input.d, 28060u), vec3<u32>(0u, 4294967295u, u_input.b.x))))).x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(0u, 19u)], var_2)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 19u)], -293f)), var_0.zz)))), 10872i);
}

