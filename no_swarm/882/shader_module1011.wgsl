struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec2<bool>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_5, 1> = array<Struct_5, 1>(Struct_5(vec3<bool>(true, true, false)));

var<private> global2: array<bool, 30>;

var<private> global3: vec4<bool> = vec4<bool>(true, false, true, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec3<u32> {
    let var_0 = vec2<bool>(global3.x, !global3.x);
    global1 = array<Struct_5, 1>();
    let var_1 = _wgslsmith_f_op_f32(abs(1185f));
    let var_2 = vec2<f32>(var_1, var_1);
    let var_3 = vec2<i32>(u_input.d.x, -1i << (~min(u_input.a.x, 6264u) % 32u)) & vec2<i32>(_wgslsmith_mod_i32(2147483647i, u_input.d.x | countOneBits(-48043i)), u_input.d.x);
    return vec3<u32>(~1u & firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 70390u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 73941u, u_input.a.x))), u_input.a.x, firstTrailingBit(1u));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_5, arg_2: i32, arg_3: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec3_u32(func_3(), ~_wgslsmith_sub_vec3_u32(vec3<u32>(46075u, arg_3.b, 1596u) ^ vec3<u32>(0u, 0u, arg_3.b), _wgslsmith_mult_vec3_u32(~vec3<u32>(34563u, 96855u, 0u), vec3<u32>(arg_3.b, 4294967295u, arg_3.b))));
    global1 = array<Struct_5, 1>();
    global3 = !select(!(!(!vec4<bool>(true, true, arg_0.c.x, global2[_wgslsmith_index_u32(33005u, 30u)]))), vec4<bool>(any(vec2<bool>(global3.x, true)), true, arg_0.c.x, any(!vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 30u)], global2[_wgslsmith_index_u32(arg_3.b, 30u)], arg_1.a.x))), true);
    global2 = array<bool, 30>();
    let var_1 = 1000f;
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1751f, _wgslsmith_f_op_f32(max(arg_0.d.x, 156f)))) * _wgslsmith_f_op_f32(arg_0.a + _wgslsmith_f_op_f32(max(var_1, 646f)))), var_1), arg_3.d, !select(vec2<bool>(global3.x, true), vec2<bool>(true, any(vec3<bool>(global2[_wgslsmith_index_u32(54780u, 30u)], true, global2[_wgslsmith_index_u32(0u, 30u)]))), vec2<bool>(global3.x, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, arg_3.b, 0u), 30u)])), arg_0.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-581f, arg_0.e)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1 + var_1)))))));
}

fn func_4(arg_0: Struct_3) -> f32 {
    global0 = all(arg_0.c);
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(max(arg_0.e, _wgslsmith_f_op_f32(arg_0.e * _wgslsmith_f_op_f32(-arg_0.e))))), arg_0.d.x);
    global1 = array<Struct_5, 1>();
    let var_1 = Struct_4(u_input.a.x, Struct_2(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(40466i, arg_0.b.a, 2147483647i), vec3<i32>(u_input.b.x, u_input.d.x, -18692i)), min(vec3<i32>(u_input.c.x, 2147483647i, arg_0.b.a), u_input.c.yxw)) >> (~firstTrailingBit(vec3<u32>(1u, 1u, 34890u)) % vec3<u32>(32u)), countOneBits(~abs(u_input.a.x)), firstTrailingBit(abs(-1i << (1u % 32u))), arg_0.b, arg_0.b.b), Struct_2(select(vec3<i32>(u_input.c.x, -18040i, 40114i) << (vec3<u32>(u_input.a.x, 49816u, 4294967295u) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(u_input.d, u_input.b.yxz), select(false, false, true)) << (_wgslsmith_mod_vec3_u32(min(vec3<u32>(u_input.a.x, 72127u, u_input.a.x), vec3<u32>(1u, 4294967295u, 22127u)), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), u_input.a.x, arg_0.b.a, Struct_1(abs(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(arg_0.b.b, arg_0.b.b, u_input.c.x, arg_0.b.a))), ~arg_0.b.a), _wgslsmith_sub_i32(-40991i, 0i)), Struct_2(max(firstTrailingBit(vec3<i32>(arg_0.b.a, 28287i, u_input.b.x)), vec3<i32>(_wgslsmith_add_i32(-20534i, u_input.d.x), firstTrailingBit(arg_0.b.a), ~2147483647i)), u_input.a.x, ~func_2(Struct_3(-844f, Struct_1(arg_0.b.a, u_input.c.x), global3.xz, vec4<f32>(arg_0.a, arg_0.d.x, arg_0.e, 1223f), arg_0.d.x), global1[_wgslsmith_index_u32(~13567u, 1u)], u_input.d.x, Struct_2(u_input.c.xzw, u_input.a.x, 0i, arg_0.b, u_input.b.x)).b.b, Struct_1(_wgslsmith_div_i32(~arg_0.b.b, _wgslsmith_dot_vec2_i32(vec2<i32>(34827i, 2147483647i), vec2<i32>(-2147483647i, u_input.b.x))), _wgslsmith_sub_i32(-28255i, -2147483647i) | (arg_0.b.b ^ u_input.b.x)), _wgslsmith_mod_i32(_wgslsmith_sub_i32(~u_input.c.x, -arg_0.b.a), ~1i)));
    var var_2 = !(!select(vec4<bool>(func_2(Struct_3(arg_0.a, var_1.b.d, global3.wy, arg_0.d, 531f), Struct_5(global3.yxx), u_input.b.x, var_1.c).c.x, all(global3.yw), true & global3.x, true), !(!vec4<bool>(global3.x, true, arg_0.c.x, false)), vec4<bool>(!arg_0.c.x, arg_0.c.x, arg_0.c.x, global3.x)));
    return _wgslsmith_f_op_f32(f32(-1f) * -487f);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> vec2<i32> {
    var var_0 = Struct_4(_wgslsmith_add_u32(select(88988u, u_input.a.x, true), 52914u), Struct_2(-(vec3<i32>(-1i) * -u_input.d), _wgslsmith_div_u32(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a)), ~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-u_input.b.yz, vec2<i32>(10032i, 1i)), ~arg_0.b.b), Struct_1(-2147483647i, _wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.d), countOneBits(u_input.d))), ~reverseBits(~(-57481i))), Struct_2(u_input.d, func_3().x, ~(-1i), func_2(arg_1, Struct_5(!vec3<bool>(false, arg_0.c.x, arg_0.c.x)), reverseBits(-2147483647i), Struct_2(vec3<i32>(u_input.d.x, 1i, arg_0.b.b), 67590u, -arg_1.b.a, Struct_1(u_input.c.x, arg_1.b.a), _wgslsmith_mult_i32(arg_0.b.a, arg_1.b.a))).b, -2935i), Struct_2(reverseBits(vec3<i32>(u_input.b.x, 2147483647i >> (u_input.a.x % 32u), _wgslsmith_div_i32(u_input.b.x, 0i))), ~_wgslsmith_sub_u32(u_input.a.x, 1686u), -37632i, arg_1.b, arg_1.b.a));
    let var_1 = u_input.a.x & var_0.d.b;
    let var_2 = 16983i;
    var var_3 = vec3<bool>(select(!((global2[_wgslsmith_index_u32(30055u, 30u)] || global2[_wgslsmith_index_u32(u_input.a.x, 30u)]) | !global3.x), all(global3.yxy), false), func_2(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-416f * arg_0.a)), Struct_1(arg_0.b.b, -var_0.c.e), select(!arg_1.c, select(vec2<bool>(true, arg_1.c.x), global3.wz, false), vec2<bool>(arg_1.c.x, arg_1.c.x)), vec4<f32>(_wgslsmith_f_op_f32(arg_0.d.x * arg_0.a), _wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-465f * 638f), _wgslsmith_f_op_f32(arg_0.e - 495f)), arg_1.a), global1[_wgslsmith_index_u32(~select(1u, u_input.a.x, global2[_wgslsmith_index_u32(1u, 30u)]), 1u)], var_0.c.d.a, Struct_2(u_input.d, _wgslsmith_mod_u32(~var_1, ~26223u), abs(2147483647i), arg_1.b, (var_0.d.d.a & 35357i) | (i32(-1i) * -58683i))).c.x, any(vec2<bool>(global2[_wgslsmith_index_u32(var_1, 30u)], false)));
    var var_4 = abs(-2147483647i);
    return reverseBits(~var_0.c.a.yy);
}

fn func_1(arg_0: u32) -> Struct_5 {
    global0 = true;
    var var_0 = func_5(Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -649f))), Struct_1(44273i, u_input.c.x), global3.yz, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-426f, -1493f, -378f, 528f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(func_2(Struct_3(865f, Struct_1(1i, u_input.d.x), global3.zz, vec4<f32>(663f, -213f, 1340f, 760f), -321f), Struct_5(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], global2[_wgslsmith_index_u32(arg_0, 30u)], true)), u_input.c.x, Struct_2(u_input.b.xxx, 5240u, 54062i, Struct_1(u_input.b.x, 1i), u_input.b.x))))))), func_2(func_2(Struct_3(_wgslsmith_div_f32(988f, 208f), func_2(Struct_3(996f, Struct_1(u_input.c.x, -45701i), global3.yx, vec4<f32>(701f, -1000f, 1995f, -1023f), 808f), global1[_wgslsmith_index_u32(u_input.a.x, 1u)], u_input.c.x, Struct_2(vec3<i32>(u_input.c.x, -1098i, u_input.d.x), 0u, -2147483647i, Struct_1(u_input.c.x, 0i), 1i)).b, select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 30u)], true), vec2<bool>(global3.x, false), vec2<bool>(false, global3.x)), _wgslsmith_div_vec4_f32(vec4<f32>(169f, -1452f, 329f, -246f), vec4<f32>(629f, 564f, -1032f, 1422f)), _wgslsmith_f_op_f32(f32(-1f) * -1086f)), global1[_wgslsmith_index_u32(arg_0, 1u)], 1i, Struct_2(u_input.c.yxx, reverseBits(u_input.a.x), u_input.c.x, func_2(Struct_3(1871f, Struct_1(u_input.c.x, 80281i), global3.zy, vec4<f32>(695f, -1826f, -352f, -595f), -428f), global1[_wgslsmith_index_u32(4294967295u, 1u)], u_input.c.x, Struct_2(vec3<i32>(1i, u_input.c.x, -27266i), u_input.a.x, 1i, Struct_1(u_input.b.x, u_input.b.x), 31130i)).b, ~u_input.d.x)), Struct_5(select(!global3.xyw, vec3<bool>(global3.x, global2[_wgslsmith_index_u32(30009u, 30u)], true), global3.x)), u_input.c.x, Struct_2(abs(_wgslsmith_clamp_vec3_i32(u_input.c.zxy, u_input.b.xxx, vec3<i32>(-2147483647i, -40022i, u_input.b.x))), 134892u, ~abs(-5335i), func_2(func_2(Struct_3(219f, Struct_1(u_input.b.x, u_input.d.x), vec2<bool>(global2[_wgslsmith_index_u32(1u, 30u)], global2[_wgslsmith_index_u32(arg_0, 30u)]), vec4<f32>(2167f, -1273f, -161f, -1000f), 288f), Struct_5(vec3<bool>(true, global3.x, global3.x)), 55917i, Struct_2(vec3<i32>(0i, u_input.b.x, 13541i), 34074u, u_input.d.x, Struct_1(u_input.d.x, 36262i), u_input.b.x)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 42273u, 0u), vec3<u32>(u_input.a.x, 65879u, u_input.a.x)), 1u)], 2147483647i, Struct_2(vec3<i32>(2147483647i, u_input.d.x, 0i), u_input.a.x, 22550i, Struct_1(1i, 2690i), -15876i)).b, firstTrailingBit(~2147483647i))));
    global2 = array<bool, 30>();
    global2 = array<bool, 30>();
    global3 = !select(select(!vec4<bool>(global3.x, global3.x, global2[_wgslsmith_index_u32(u_input.a.x, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)]), vec4<bool>(false, !global2[_wgslsmith_index_u32(17154u, 30u)], select(true, global3.x, global2[_wgslsmith_index_u32(4294967295u, 30u)]), false), !(global2[_wgslsmith_index_u32(1u, 30u)] | global3.x)), !(!select(vec4<bool>(false, global2[_wgslsmith_index_u32(arg_0, 30u)], true, global3.x), vec4<bool>(global3.x, global2[_wgslsmith_index_u32(30390u, 30u)], false, global3.x), vec4<bool>(global2[_wgslsmith_index_u32(59275u, 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)], global3.x, true))), global3.x);
    return Struct_5(vec3<bool>(global2[_wgslsmith_index_u32(~func_3().x, 30u)], !(!(!global2[_wgslsmith_index_u32(13203u, 30u)])), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_mod_u32(0u, 1u));
    var var_1 = vec2<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec4_i32(u_input.b, ~vec4<i32>(_wgslsmith_mult_i32(0i, 23418i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, 32771i, 23153i), u_input.b), 1i | u_input.d.x, u_input.b.x)));
    var var_2 = ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 26768u, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) | countOneBits(vec3<u32>(71001u, 14741u, 7387u))) << (_wgslsmith_sub_vec3_u32(abs(~(vec3<u32>(4294967295u, 14039u, 1u) & vec3<u32>(u_input.a.x, 0u, u_input.a.x))), ~(~(~vec3<u32>(1u, 14399u, u_input.a.x)))) % vec3<u32>(32u));
    let var_3 = global1[_wgslsmith_index_u32(var_2.x, 1u)];
    var var_4 = ~(~(~(var_2.x & 4294967295u))) > 1u;
    let var_5 = global1[_wgslsmith_index_u32(var_2.x, 1u)];
    let var_6 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_i32(~u_input.c.wy, u_input.b.zz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1049f + _wgslsmith_f_op_f32(-1179f - 1713f)), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-170f * 1575f))))));
}

