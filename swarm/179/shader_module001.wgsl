struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: array<vec4<u32>, 6>;

var<private> global2: vec4<bool>;

var<private> global3: array<i32, 24>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<i32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1486f, -667f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-896f * -461f), arg_0.d, _wgslsmith_f_op_f32(-arg_0.d) < _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global3 = array<i32, 24>();
    let var_1 = ~select(~_wgslsmith_mod_u32(28824u, u_input.a), abs(u_input.a), any(select(select(vec3<bool>(global2.x, true, false), vec3<bool>(true, false, true), global2.wxy), arg_1, false && global0.x)));
    var var_2 = Struct_2(Struct_1(vec3<u32>(u_input.a, ~8371u, ~u_input.a), vec4<u32>(arg_0.c, arg_0.c, ~1u, ~firstLeadingBit(var_1)), min(arg_0.c, min(u_input.a, _wgslsmith_dot_vec2_u32(arg_0.b.wx, arg_0.a.zx))), -1115f));
    var var_3 = firstLeadingBit(vec4<i32>(i32(-1i) * -35200i, -(~(-2147483647i)), select(~(-22225i), arg_2.x, !all(global2.zxz)), firstTrailingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(1u, 24u)], 35764i, 20534i, global3[_wgslsmith_index_u32(var_1, 24u)]), vec4<i32>(1i, 14079i, -1i, 20661i)), vec4<i32>(-15129i, global3[_wgslsmith_index_u32(arg_0.c, 24u)], 0i, 2147483647i)))));
    return -_wgslsmith_clamp_i32(var_3.x, -26814i, -2147483647i);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    global0 = global2.ywy;
    let var_0 = Struct_1(arg_1.a, global1[_wgslsmith_index_u32(1u, 6u)], 85514u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d) + -1000f));
    let var_1 = arg_1.d;
    let var_2 = max(max(42858u, countOneBits(4294967295u)), 9326u);
    global3 = array<i32, 24>();
    return 320f;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: bool) -> vec2<f32> {
    let var_0 = arg_1.a;
    var var_1 = arg_1;
    var var_2 = vec2<f32>(-472f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-554f, var_0.d)));
    var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(global3[_wgslsmith_index_u32(1u, 24u)], var_0, vec3<i32>(func_3(Struct_1(var_0.a, vec4<u32>(28947u, var_1.a.a.x, 0u, 4294967295u), 1u, -1486f), vec3<bool>(true, arg_0.x, true), vec3<i32>(28476i, -2147483647i, 1i)), global3[_wgslsmith_index_u32(13177u, 24u)], global3[_wgslsmith_index_u32(~4294967295u, 24u)])))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1684f + 427f))))));
    let var_3 = arg_1;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(var_2.x, var_0.d, arg_0.x)), _wgslsmith_f_op_f32(var_3.a.d * -1199f)), vec2<f32>(_wgslsmith_f_op_f32(-967f + -674f), _wgslsmith_f_op_f32(-896f + var_0.d)), false)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.d, var_0.d), vec2<f32>(1058f, 1000f)))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, var_0.d), vec2<f32>(-664f, 989f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.d, -1710f))), !arg_0.yx)), select(!(!arg_0.zx), !arg_0.zy, global2.yy))));
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>) -> Struct_2 {
    var var_0 = all(select(global2.yxx, global2.zwx, all(!select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(true, true, global0.x), global0.x))));
    global1 = array<vec4<u32>, 6>();
    var var_1 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-569f, arg_2.x, arg_2.x)));
    var var_2 = global0.x;
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.x * 1124f)));
    return Struct_2(Struct_1(~arg_1.a, reverseBits(~vec4<u32>(u_input.a, u_input.a, u_input.a, 14u)) | select(vec4<u32>(4943u, 1u, 0u, 29279u), ~arg_1.b, !global2.x), 19323u, var_1.x));
}

fn func_6(arg_0: u32, arg_1: Struct_2) -> bool {
    global0 = vec3<bool>(true, !(!all(!global2.wwx)), any(select(select(select(global2.zw, global2.xy, vec2<bool>(false, true)), global0.xz, global0.zy), !global2.xx, arg_1.a.d != _wgslsmith_f_op_f32(arg_1.a.d - 843f))));
    var var_0 = arg_1;
    let var_1 = _wgslsmith_div_i32(-41794i, _wgslsmith_clamp_i32(~(~28562i), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(var_0.a.c), u_input.a | var_0.a.c), 24u)] ^ global3[_wgslsmith_index_u32(~62456u, 24u)], i32(-1i) * -global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1.a.a.xx, arg_1.a.b.yz), 24u)]));
    var var_2 = 166f;
    let var_3 = arg_1;
    return true;
}

fn func_1() -> Struct_1 {
    let var_0 = func_6(~u_input.a, func_5(global0.x, Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a) ^ vec3<u32>(u_input.a, 1u, 0u), min(vec3<u32>(59831u, 56675u, 0u), vec3<u32>(u_input.a, 4987u, 22298u))), ~(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), 0u, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1352f, -1000f, global0.x)), -162f, true))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-587f, 1000f))), _wgslsmith_f_op_vec2_f32(func_2(global2.zxx, Struct_2(Struct_1(vec3<u32>(u_input.a, u_input.a, 0u), global1[_wgslsmith_index_u32(u_input.a, 6u)], 4294967295u, -579f)), global2.x)))));
    let var_1 = !global0.x;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(-global3[_wgslsmith_index_u32(7548u, 24u)], Struct_1(abs(min(vec3<u32>(0u, 11610u, u_input.a), vec3<u32>(22327u, u_input.a, 43400u))), ~global1[_wgslsmith_index_u32(u_input.a, 6u)] ^ vec4<u32>(62307u, 4294967295u, u_input.a, 1u), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(292f, -732f, var_0)) * _wgslsmith_f_op_f32(-743f - -1000f))), select(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 24u)], -9818i, 3163i), vec3<i32>(-1i, -2147483647i, 0i), vec3<i32>(0i, -1i, -1i)), ~vec3<i32>(global3[_wgslsmith_index_u32(11740u, 24u)], global3[_wgslsmith_index_u32(u_input.a, 24u)], -2147483647i), -vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 24u)], global3[_wgslsmith_index_u32(1u, 24u)], 11198i)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, 25972i, global3[_wgslsmith_index_u32(35097u, 24u)]), vec3<i32>(global3[_wgslsmith_index_u32(10900u, 24u)], global3[_wgslsmith_index_u32(7036u, 24u)], -2147483647i)), vec3<i32>(-37168i, global3[_wgslsmith_index_u32(0u, 24u)], -2147483647i) | vec3<i32>(-1i, global3[_wgslsmith_index_u32(u_input.a, 24u)], global3[_wgslsmith_index_u32(u_input.a, 24u)])), select(global2.zzw, global2.xzy, !global2.xww)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_2(vec3<bool>(global2.x, false, var_1), Struct_2(Struct_1(vec3<u32>(u_input.a, 37054u, u_input.a), global1[_wgslsmith_index_u32(21810u, 6u)], 75143u, -1000f)), false)).x))), true));
    global0 = !vec3<bool>(global2.x, !all(vec2<bool>(true, false)), global0.x);
    let var_3 = u_input.a;
    return Struct_1(~(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(130667u, u_input.a, 46841u)), vec3<u32>(u_input.a, u_input.a, 4294967295u) ^ vec3<u32>(9231u, var_3, 6248u), _wgslsmith_div_vec3_u32(vec3<u32>(var_3, 2598u, var_3), vec3<u32>(u_input.a, var_3, 87188u))) << (vec3<u32>(u_input.a, var_3, ~10449u) % vec3<u32>(32u))), ~(global1[_wgslsmith_index_u32(19899u, 6u)] & (~global1[_wgslsmith_index_u32(38714u, 6u)] | _wgslsmith_div_vec4_u32(global1[_wgslsmith_index_u32(u_input.a, 6u)], global1[_wgslsmith_index_u32(1u, 6u)]))), 0u, -536f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global3 = array<i32, 24>();
    let var_1 = vec2<i32>(~_wgslsmith_add_i32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(43609u, u_input.a), 24u)], _wgslsmith_dot_vec3_i32(-vec3<i32>(1i, global3[_wgslsmith_index_u32(0u, 24u)], 33349i), ~vec3<i32>(global3[_wgslsmith_index_u32(var_0.c, 24u)], -1i, 13857i))), global3[_wgslsmith_index_u32(19059u, 24u)]);
    global1 = array<vec4<u32>, 6>();
    var var_2 = Struct_1(var_0.a, global1[_wgslsmith_index_u32(func_5(global2.x, var_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, var_0.d) * vec2<f32>(-868f, 714f))))).a.a.x, 6u)], ~_wgslsmith_mult_u32(~select(0u, var_0.b.x, global0.x), var_0.c), 1000f);
    global0 = !global2.xwy;
    global0 = select(!vec3<bool>(!global2.x, false || (var_0.d <= -157f), 31742u < u_input.a), vec3<bool>(!global0.x, false, global2.x), global2.zwz);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_u32(var_0.c, _wgslsmith_sub_u32(u_input.a, 4294967295u)) ^ var_0.a.x, _wgslsmith_add_vec3_u32(var_2.b.xwy, vec3<u32>(72841u, ~0u, 1u >> (countOneBits(1u) % 32u))));
}

