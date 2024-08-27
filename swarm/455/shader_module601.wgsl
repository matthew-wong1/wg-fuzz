struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<i32>,
    c: Struct_1,
    d: vec3<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: array<i32, 10>;

var<private> global2: array<Struct_1, 26>;

var<private> global3: vec3<i32>;

var<private> global4: Struct_3;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = vec4<i32>(-(~_wgslsmith_mult_i32(23075i, _wgslsmith_mult_i32(2147483647i, u_input.e.x))), select(-51890i, -countOneBits(-6971i), true), firstTrailingBit(_wgslsmith_dot_vec4_i32(select(~vec4<i32>(-28196i, 33381i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19579u, 24u)], 10u)], arg_0.b.x), global4.b, all(vec3<bool>(global4.a, true, global4.c.d.x))), arg_0.b)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~abs(arg_0.b.yyz), max(global4.b.xzy, vec3<i32>(2147483647i, u_input.c, -2147483647i)) >> (vec3<u32>(arg_0.c.c, 4294967295u, 4294967295u) % vec3<u32>(32u))), ~u_input.b));
    var var_1 = Struct_1(any(vec3<bool>(any(select(vec4<bool>(false, true, arg_0.a, arg_0.a), vec4<bool>(true, global4.e, true, true), arg_0.c.d)), false, global4.c.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-135f - arg_0.c.b), global4.c.b))), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(firstTrailingBit(0u), select(global4.d.x, global4.d.x, false)), _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, 41462u), firstLeadingBit(global4.d.x))), !select(vec4<bool>(!arg_0.a, false, true, 51173i >= arg_0.b.x), arg_0.c.d, !select(arg_0.c.d, arg_0.c.d, global4.c.d)));
    var var_2 = var_0;
    var var_3 = _wgslsmith_div_i32(select(~_wgslsmith_sub_i32(~(-58375i), _wgslsmith_add_i32(global3.x, 13042i)), -global3.x, ~(global0[_wgslsmith_index_u32(u_input.d, 24u)] & u_input.d) <= _wgslsmith_add_u32(11434u, global4.c.c)), -40605i);
    var var_4 = Struct_2(global2[_wgslsmith_index_u32(~4294967295u, 26u)], max(reverseBits(~global4.d.zz), vec2<u32>(28155u, 31282u)) | ~select(vec2<u32>(94143u, global4.d.x) << (global4.d.yy % vec2<u32>(32u)), ~vec2<u32>(1u, 21895u), vec2<bool>(global4.c.d.x, global4.a)), Struct_1(!arg_0.a, -631f, _wgslsmith_dot_vec3_u32(~(~arg_0.d), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(global4.d, vec3<u32>(u_input.d, 1u, global0[_wgslsmith_index_u32(60695u, 24u)])), abs(global4.d), vec3<u32>(u_input.d, 0u, u_input.d))), var_1.d));
    return u_input.d;
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_2(Struct_1(true, -1275f, ~countOneBits(~u_input.d), select(vec4<bool>(true, true, global4.d.x >= global4.c.c, true), global4.c.d, global4.c.d)), vec2<u32>(u_input.d, global4.d.x), Struct_1(all(!vec4<bool>(global4.a, true, false, false)), _wgslsmith_f_op_f32(-1f), global4.d.x, select(!vec4<bool>(global4.c.a, global4.a, false, true), !(!global4.c.d), vec4<bool>(any(vec2<bool>(global4.a, global4.a)), true, false, !global4.c.d.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4.c.b, var_0.a.b)) * _wgslsmith_f_op_f32(117f * var_0.a.b)), -731f, global4.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.c.b, var_0.a.b)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-801f, var_0.c.b, global4.c.b, 1449f)) * vec4<f32>(-483f, global4.c.b, global4.c.b, global4.c.b)))));
    let var_2 = _wgslsmith_dot_vec2_u32(global4.d.yy, global4.d.yy);
    let var_3 = Struct_3(var_0.a.a, global4.b, Struct_1(true, -640f, (func_3(Struct_3(global4.a, vec4<i32>(global4.b.x, -1i, global3.x, global1[_wgslsmith_index_u32(0u, 10u)]), Struct_1(global4.a, 648f, global0[_wgslsmith_index_u32(47546u, 24u)], vec4<bool>(global4.e, global4.e, false, false)), global4.d, var_0.c.d.x)) ^ u_input.d) << (~(~7105u) % 32u), vec4<bool>(!(!global4.c.d.x), false, any(vec2<bool>(global4.c.a, false)), var_0.a.a)), global4.d, firstTrailingBit(abs(6727u)) > u_input.d);
    let var_4 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(var_1.zx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c.b, -384f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-274f, -1169f))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-408f, -1712f) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.ww - var_1.wx), vec2<f32>(var_0.a.b, 783f)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_1.x), _wgslsmith_f_op_vec2_f32(-var_1.zz))))));
    return global4.c.d.wzw;
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: vec2<i32>) -> Struct_3 {
    var var_0 = true;
    let var_1 = 2147483647i;
    var var_2 = abs(_wgslsmith_sub_vec2_i32(u_input.e, arg_2));
    global3 = global4.b.wyw;
    let var_3 = any(select(func_2(), vec3<bool>(arg_0, arg_0, select(global4.e, global4.a, global4.a) && !global4.c.a), global4.c.d.yzz));
    return Struct_3(!((global4.c.b <= _wgslsmith_f_op_f32(trunc(global4.c.b))) & true), ~vec4<i32>(_wgslsmith_sub_i32(1i, global1[_wgslsmith_index_u32(51638u, 10u)]) | countOneBits(u_input.a), 8589i, 24110i, _wgslsmith_dot_vec4_i32(-vec4<i32>(global1[_wgslsmith_index_u32(12441u, 10u)], global3.x, -2147483647i, global3.x), vec4<i32>(-1i, global3.x, 21487i, -2147483647i) & global4.b)), Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global4.c.b * global4.c.b))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-473f, -442f)))), 18978u, vec4<bool>(_wgslsmith_f_op_f32(global4.c.b - global4.c.b) != -1913f, all(global4.c.d.zyx), all(global4.c.d), select(arg_0, !arg_0, arg_0))), _wgslsmith_sub_vec3_u32(arg_1, arg_1), true && arg_0);
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = Struct_2(func_1(all(vec2<bool>(global4.c.d.x, true)), vec3<u32>(abs(4294967295u), global0[_wgslsmith_index_u32(~4294967295u, 24u)], _wgslsmith_clamp_u32(_wgslsmith_mod_u32(77214u, 41715u), ~global4.c.c, ~4294967295u)), ~vec2<i32>(-u_input.e.x, 21685i)).c, func_1(false, _wgslsmith_sub_vec3_u32(~(vec3<u32>(1u, 0u, arg_2.c) ^ global4.d), vec3<u32>(u_input.d, _wgslsmith_mod_u32(global4.c.c, 25678u), _wgslsmith_add_u32(1u, 37022u))), ~abs(vec2<i32>(u_input.b.x, global4.b.x))).d.xx, Struct_1(true, 1f, 59397u, !(!vec4<bool>(true, false, arg_3.d.x, arg_3.a))));
    let var_1 = (min(vec3<i32>(-global3.x, _wgslsmith_clamp_i32(global4.b.x, global3.x, global3.x), min(32680i, -73794i)), select(func_1(false, vec3<u32>(0u, 0u, u_input.d), vec2<i32>(global3.x, arg_0.b.x)).b.wzx, ~u_input.b, arg_2.d.ywz)) >> (~vec3<u32>(~arg_1, global4.d.x, func_1(arg_3.a, global4.d, global3.yy).c.c) % vec3<u32>(32u))) >> (vec3<u32>(countOneBits(firstLeadingBit(firstLeadingBit(u_input.d))), 4294967295u, 4294967295u << (u_input.d % 32u)) % vec3<u32>(32u));
    global3 = vec3<i32>(select(abs(_wgslsmith_add_i32(0i, global3.x)), _wgslsmith_add_i32(global1[_wgslsmith_index_u32(21373u, 10u)], _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, -21355i), vec2<i32>(var_1.x, 10175i))), true), var_1.x, ~(~16454i)) | _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-1i, abs(-44353i)), reverseBits(~global1[_wgslsmith_index_u32(1u, 10u)]), -40742i), arg_0.b.wxw);
    let var_2 = select(firstLeadingBit(vec3<i32>(19145i, global3.x, var_1.x)), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(~global4.b.wxx, var_1), ~min(arg_0.b.x, arg_0.b.x), ~_wgslsmith_dot_vec2_i32(global4.b.zw, vec2<i32>(u_input.c, 35514i))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(global4.b.x, 2147483647i, u_input.c, -2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(arg_0.d.x, 10u)], 0i, global4.b.x, -6777i), global4.c.d) >> (~vec4<u32>(92111u, global4.c.c, 34742u, 0u) % vec4<u32>(32u)), global4.b), u_input.c), vec3<bool>(true != (select(arg_2.d.x, true, false) || !var_0.c.d.x), arg_3.d.x, global4.c.d.x));
    global4 = Struct_3(arg_0.a, _wgslsmith_div_vec4_i32(arg_0.b, -(~(-vec4<i32>(global3.x, global3.x, -2147483647i, u_input.e.x)))), Struct_1(arg_3.a, _wgslsmith_f_op_f32(f32(-1f) * -1298f), 9157u, !vec4<bool>(!global4.a, true, false, true)), ~(~vec3<u32>(~global0[_wgslsmith_index_u32(0u, 24u)], 26369u << (arg_3.c % 32u), var_0.a.c)), (func_2().x && true) & all(vec4<bool>(arg_2.d.x | global4.c.d.x, !arg_3.d.x, true, true)));
    return abs(~(((vec4<u32>(0u, u_input.d, 1u, u_input.d) ^ vec4<u32>(4294967295u, arg_0.d.x, 0u, u_input.d)) >> (vec4<u32>(global4.d.x, u_input.d, arg_3.c, 28933u) % vec4<u32>(32u))) ^ vec4<u32>(arg_0.d.x | 1u, ~88437u, 28030u, arg_2.c)));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> Struct_3 {
    let var_0 = Struct_3(true, _wgslsmith_mod_vec4_i32(-(min(vec4<i32>(2147483647i, u_input.c, global3.x, u_input.c), vec4<i32>(-1i, 62540i, 2147483647i, -15206i)) ^ max(global4.b, vec4<i32>(-11870i, -2147483647i, u_input.b.x, -2147483647i))), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(global4.b.x, global3.x, -39007i, -2147483647i), global4.b), vec4<i32>(firstLeadingBit(-30905i), 0i, global1[_wgslsmith_index_u32(reverseBits(1u), 10u)], _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(global4.b.x, -29283i, global1[_wgslsmith_index_u32(1u, 10u)]))))), global2[_wgslsmith_index_u32(func_1(true & (0u < min(u_input.d, 1u)), global4.d, abs(-vec2<i32>(u_input.c, 21069i))).d.x, 26u)], max(global4.d, _wgslsmith_add_vec3_u32(abs(global4.d), global4.d) << (~_wgslsmith_mult_vec3_u32(global4.d, vec3<u32>(arg_1, 1830u, 1u)) % vec3<u32>(32u))), false);
    global3 = vec3<i32>(~global3.x, _wgslsmith_div_i32(2147483647i, u_input.c) & ~2147483647i, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~_wgslsmith_clamp_u32(u_input.d, var_0.c.c, arg_1)), ~arg_1), 10u)]);
    global1 = array<i32, 10>();
    var var_1 = firstLeadingBit(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(24425u, 0u), 24u)] | global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.d.x), arg_2.b), 24u)]) >> (_wgslsmith_mult_u32(reverseBits(func_4(var_0, arg_1, global4.c, global2[_wgslsmith_index_u32(1u, 26u)]).x | ~33476u), global0[_wgslsmith_index_u32(firstTrailingBit(~firstTrailingBit(1u)), 24u)]) % 32u);
    global1 = array<i32, 10>();
    return Struct_3(!all(func_1(func_2().x, vec3<u32>(19127u, 0u, 0u), _wgslsmith_mod_vec2_i32(vec2<i32>(34342i, -18368i), vec2<i32>(2147483647i, -17526i))).c.d.yw), select(-(vec4<i32>(var_0.b.x, global4.b.x, -23292i, global1[_wgslsmith_index_u32(arg_1, 10u)]) & _wgslsmith_clamp_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(var_0.c.c, 10u)], 14105i, -1i, var_0.b.x), var_0.b, global4.b)), firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_0.b.x, 6295i, global3.x) & vec4<i32>(global3.x, var_0.b.x, var_0.b.x, global3.x), global4.b)), (true && (var_0.e | false)) | select(true, global1[_wgslsmith_index_u32(84861u, 10u)] == -20784i, true)), var_0.c, ~func_4(Struct_3(false, vec4<i32>(var_0.b.x, global3.x, -1i, 1i), Struct_1(var_0.a, global4.c.b, 0u, vec4<bool>(true, true, global4.e, true)), global4.d, var_0.c.a), ~arg_1, Struct_1(false, global4.c.b, 0u, global4.c.d), func_1(true, vec3<u32>(u_input.d, global4.c.c, arg_2.a.c), vec2<i32>(2147483647i, global4.b.x)).c).wwz ^ ~var_0.d, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 24>();
    global3 = _wgslsmith_add_vec3_i32(global4.b.yww, vec3<i32>(global3.x, ~(global4.b.x & 2147483647i), global3.x) ^ _wgslsmith_mod_vec3_i32(select(global4.b.xzy, vec3<i32>(2147483647i, -19413i, global3.x), global4.e) | abs(global4.b.xww), _wgslsmith_clamp_vec3_i32(~vec3<i32>(global1[_wgslsmith_index_u32(63364u, 10u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4.c.c, 24u)], 10u)], global3.x), _wgslsmith_mult_vec3_i32(u_input.b, u_input.b), ~u_input.b)));
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.c.b)));
    var var_1 = global4.d;
    let var_2 = func_5(-401f, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(24118u, u_input.d ^ 4294967295u), 1u, global0[_wgslsmith_index_u32(var_1.x, 24u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~1u, 24u)], 24u)]), func_4(func_1(select(true, true, false), global4.d, -vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(global4.c.c, 10u)])), _wgslsmith_mult_u32(global4.d.x, 1u) ^ (u_input.d & u_input.d), Struct_1(true, _wgslsmith_f_op_f32(f32(-1f) * -388f), _wgslsmith_mult_u32(1u, var_1.x), global4.c.d), Struct_1(all(global4.c.d.xxy), _wgslsmith_f_op_f32(f32(-1f) * -1357f), min(global4.d.x, var_1.x), func_1(true, vec3<u32>(global4.c.c, 1u, 4294967295u), vec2<i32>(5103i, -23315i)).c.d))), Struct_2(Struct_1(global4.c.b <= -106f, -389f, ~(~var_1.x), !(!global4.c.d)), ~vec2<u32>(u_input.d, u_input.d), Struct_1(!(!global4.e), 388f, 51358u, func_1(true, _wgslsmith_mult_vec3_u32(vec3<u32>(18402u, 0u, 4294967295u), global4.d), vec2<i32>(27449i, 1i) | vec2<i32>(global4.b.x, -1i)).c.d)));
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_add_i32(-(~global1[_wgslsmith_index_u32(var_1.x, 10u)]), _wgslsmith_mod_i32(global1[_wgslsmith_index_u32(4294967295u, 10u)], -u_input.b.x)), func_5(_wgslsmith_f_op_f32(-func_5(-126f, global0[_wgslsmith_index_u32(29189u, 24u)], Struct_2(Struct_1(true, var_2.c.b, 16583u, var_2.c.d), vec2<u32>(27443u, global0[_wgslsmith_index_u32(68459u, 24u)]), global4.c)).c.b), global0[_wgslsmith_index_u32(countOneBits(~4294967295u), 24u)], Struct_2(func_1(global4.e, var_2.d, vec2<i32>(global3.x, 46840i)).c, countOneBits(vec2<u32>(37147u, 7327u)), Struct_1(global4.c.d.x, 1000f, u_input.d, global4.c.d))).b.x), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(global4.d.yx, vec2<u32>(~var_2.c.c, _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(var_2.c.c, 24u)], 0u), var_2.d.yx))), var_2.d.yz), ~1u, ~select(vec2<u32>(_wgslsmith_dot_vec3_u32(global4.d, vec3<u32>(25064u, 71911u, 9339u)), 1u ^ u_input.d), _wgslsmith_mult_vec2_u32(var_1.zx >> (var_2.d.yy % vec2<u32>(32u)), vec2<u32>(var_1.x, var_2.c.c)), var_2.c.d.yx), -526f);
}

