struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<u32, 25>;

var<private> global2: array<u32, 4>;

var<private> global3: array<i32, 9>;

var<private> global4: array<bool, 27>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(select(u_input.b >> (u_input.b % vec4<u32>(32u)), (select(vec4<u32>(u_input.b.x, arg_1.b.x, 0u, arg_0.b.x), vec4<u32>(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], 28246u, arg_1.b.x, arg_1.a.x), global4[_wgslsmith_index_u32(arg_0.b.x, 27u)]) << ((vec4<u32>(65394u, arg_1.b.x, 37530u, 27735u) | u_input.b) % vec4<u32>(32u))) << ((_wgslsmith_clamp_vec4_u32(arg_0.a, arg_1.a, vec4<u32>(23701u, 2719u, u_input.b.x, 1u)) ^ _wgslsmith_sub_vec4_u32(arg_1.a, u_input.b)) % vec4<u32>(32u)), all(select(vec2<bool>(false, true), select(vec2<bool>(false, global4[_wgslsmith_index_u32(u_input.b.x, 27u)]), vec2<bool>(global4[_wgslsmith_index_u32(arg_0.a.x, 27u)], false), global4[_wgslsmith_index_u32(73270u, 27u)]), false))), vec3<u32>(min(global1[_wgslsmith_index_u32(1u, 25u)] >> (_wgslsmith_mult_u32(arg_0.a.x, arg_0.b.x) % 32u), arg_0.b.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.b.yx, vec2<u32>(22645u, u_input.b.x), vec2<u32>(arg_1.b.x, arg_0.a.x)), ~vec2<u32>(u_input.b.x, global1[_wgslsmith_index_u32(u_input.b.x, 25u)])), 25u)] | 1u, _wgslsmith_dot_vec2_u32(~firstLeadingBit(vec2<u32>(arg_0.a.x, 37838u)), vec2<u32>(arg_0.a.x, global2[_wgslsmith_index_u32(abs(arg_0.b.x), 4u)]))), 1000f, vec3<f32>(arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(243f, arg_1.c)), arg_1.c))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_1.d.x))))))));
    let var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-_wgslsmith_mult_i32(-1i, 2147483647i), -3646i, global3[_wgslsmith_index_u32(33039u, 9u)]), _wgslsmith_sub_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -21930i, u_input.a), vec3<i32>(1i, u_input.a, global3[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.a.x, 25u)], 9u)])), vec3<i32>(-1223i, -1i ^ u_input.a, global3[_wgslsmith_index_u32(2636u, 9u)]))), _wgslsmith_mult_vec3_i32(-((vec3<i32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(937u, 4u)], 9u)], 64778i, global3[_wgslsmith_index_u32(var_0.a.x, 9u)]) << (u_input.b.yyz % vec3<u32>(32u))) ^ vec3<i32>(-2147483647i, 32459i, u_input.a)), vec3<i32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(4294967295u), arg_1.b.x), 9u)], countOneBits(u_input.a), abs(-14773i))));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(floor(-2783f)), arg_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.d.x, arg_1.d.x)) + 1000f), _wgslsmith_f_op_f32(max(var_0.d.x, -1492f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.d.x - 1025f), _wgslsmith_f_op_f32(var_0.c + arg_0.d.x)), 899f, 157f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.c)), _wgslsmith_f_op_f32(step(1910f, 589f))))), vec4<bool>(global4[_wgslsmith_index_u32(arg_1.a.x, 27u)], all(vec4<bool>(global4[_wgslsmith_index_u32(var_0.b.x, 27u)] | true, 27385i < var_1.x, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.xwz, arg_0.b), 27u)], !global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.a.x, 25u)], 4u)], 27u)])), any(vec3<bool>(any(vec2<bool>(global4[_wgslsmith_index_u32(0u, 27u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 25u)], 27u)])), false & global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.b.x, 25u)], 27u)], !global4[_wgslsmith_index_u32(1u, 27u)])), global4[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(6331u, 0u, arg_0.a.x) >> (1u % 32u), 27u)])));
    var var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.a.x, 18067u, u_input.b.x), u_input.b.yzz) | firstTrailingBit(var_0.a.xwz)), _wgslsmith_mult_vec3_u32(abs(vec3<u32>(u_input.b.x, global2[_wgslsmith_index_u32(u_input.b.x, 4u)], 19045u)), var_0.a.zxw)), 19u)];
    global1 = array<u32, 25>();
    return ~global1[_wgslsmith_index_u32(abs(4294967295u), 25u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    global4 = array<bool, 27>();
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -825f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-225f * arg_0.d.x)), -1225f), _wgslsmith_f_op_vec3_f32(arg_0.d * _wgslsmith_div_vec3_f32(vec3<f32>(234f, arg_1.d.x, -379f), vec3<f32>(arg_1.c, arg_1.c, -808f))))), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d.x * -238f) + _wgslsmith_f_op_f32(sign(-1293f))), _wgslsmith_f_op_f32(-1525f - arg_1.c))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(672f - -115f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.c))))), _wgslsmith_f_op_f32(f32(-1f) * -566f)), vec3<bool>(true, true, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(global2[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(max(7110u, 26567u), 25u)], arg_1.a.x), 4u)], arg_1.b.x ^ reverseBits(global1[_wgslsmith_index_u32(1594u, 25u)])), 27u)])));
    var var_1 = min(u_input.b.x, arg_1.b.x);
    var var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.b.x | _wgslsmith_clamp_u32(96226u, ~arg_1.b.x, 1u), u_input.b.x), 9u)];
    var_1 = 4294967295u;
    return !select(vec3<bool>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.a.xz, select(vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(1u, u_input.b.x), true)), 27u)], global4[_wgslsmith_index_u32(~(global2[_wgslsmith_index_u32(44165u, 4u)] << (85182u % 32u)), 27u)], global4[_wgslsmith_index_u32(abs(~arg_1.a.x), 27u)]), !vec3<bool>(true, arg_1.b.x == arg_1.b.x, !global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.a.x, 25u)], 27u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1002f) * var_0.x) > _wgslsmith_f_op_f32(-arg_0.d.x));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(~reverseBits(vec4<u32>(_wgslsmith_add_u32(u_input.b.x, 43251u), ~u_input.b.x, global2[_wgslsmith_index_u32(abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24814u, 4u)], 4u)]), 4u)], u_input.b.x)), firstLeadingBit(select(u_input.b.xwz, u_input.b.ywx ^ u_input.b.zxx, all(select(vec3<bool>(false, false, global4[_wgslsmith_index_u32(u_input.b.x, 27u)]), vec3<bool>(true, true, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 4u)], 27u)]), vec3<bool>(false, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(83069u, 4u)], 25u)], 27u)], true))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -2554f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1125f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1363f, 858f))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-407f, 1341f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f)))), vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -736f), _wgslsmith_f_op_f32(f32(-1f) * -1363f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -641f)), 599f))));
    let var_1 = !func_4(Struct_1(u_input.b ^ ~var_0.a, ~vec3<u32>(76998u, 19591u, 0u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1200f + 339f), _wgslsmith_f_op_f32(-303f * -707f), true | global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 27u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_0.d)))), Struct_1(~vec4<u32>(var_0.a.x, var_0.a.x, 4294967295u, 0u) << (vec4<u32>(4294967295u, global1[_wgslsmith_index_u32(var_0.a.x, 25u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(2664u, 4u)], 4u)], 32197u) % vec4<u32>(32u)), vec3<u32>(global2[_wgslsmith_index_u32(func_3(Struct_1(var_0.a, var_0.a.zwx, 3092f, var_0.d), global0[_wgslsmith_index_u32(11013u, 19u)]), 4u)], ~var_0.b.x, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 61479u), 4u)]), _wgslsmith_f_op_f32(step(var_0.d.x, var_0.d.x)), vec3<f32>(var_0.c, _wgslsmith_f_op_f32(trunc(-606f)), _wgslsmith_f_op_f32(ceil(var_0.c)))));
    let var_2 = var_0.d;
    global0 = array<Struct_1, 19>();
    let var_3 = _wgslsmith_f_op_vec2_f32(var_2.zx * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1281f, 1769f)) * _wgslsmith_f_op_vec2_f32(-var_0.d.yz)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) + var_2.yy) + vec2<f32>(var_2.x, -2341f)))));
    return select(!select(!var_1, !select(var_1, var_1, vec3<bool>(true, global4[_wgslsmith_index_u32(var_0.b.x, 27u)], global4[_wgslsmith_index_u32(7662u, 27u)])), var_1.x), var_1, var_1.x);
}

fn func_1() -> i32 {
    let var_0 = select(select(select(select(select(vec3<bool>(true, false, true), vec3<bool>(global4[_wgslsmith_index_u32(6626u, 27u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 25u)], 27u)], false), false), vec3<bool>(global4[_wgslsmith_index_u32(41766u, 27u)], false, true), global4[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 4u)], 27u)]), vec3<bool>(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 111629u), 27u)], true, false), select(vec3<bool>(true, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], 25u)], 25u)], 4u)], 27u)], true), !vec3<bool>(false, global4[_wgslsmith_index_u32(42522u, 27u)], global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 4u)], 27u)]), select(vec3<bool>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 4u)], 27u)], false, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23997u, 25u)], 27u)]), vec3<bool>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(18290u, 4u)], 27u)], global4[_wgslsmith_index_u32(0u, 27u)], false), global4[_wgslsmith_index_u32(u_input.b.x, 27u)]))), select(select(vec3<bool>(true, true, true), !vec3<bool>(false, global4[_wgslsmith_index_u32(u_input.b.x, 27u)], global4[_wgslsmith_index_u32(u_input.b.x, 27u)]), global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(1u, 25u)], 1u), 27u)]), func_2(), vec3<bool>(!global4[_wgslsmith_index_u32(u_input.b.x, 27u)], !global4[_wgslsmith_index_u32(0u, 27u)], true & global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 25u)], 27u)])), vec3<bool>(true, ~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 4u)], 4u)] > 31244u, true)), !func_4(Struct_1(u_input.b, ~u_input.b.zwy, _wgslsmith_f_op_f32(-645f - -281f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1065f, 836f, 1015f))), global0[_wgslsmith_index_u32(~26939u, 19u)]), global4[_wgslsmith_index_u32(max(~countOneBits(max(global1[_wgslsmith_index_u32(0u, 25u)], global2[_wgslsmith_index_u32(73924u, 4u)])), 59947u), 27u)]);
    var var_1 = Struct_1(~(~(~(vec4<u32>(44581u, 1u, u_input.b.x, u_input.b.x) << (u_input.b % vec4<u32>(32u))))), vec3<u32>(~min(global1[_wgslsmith_index_u32(~37968u, 25u)], ~32787u), ~4294967295u, global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~u_input.b.x, 0u), 25u)]), -1227f, vec3<f32>(-1000f, -231f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-529f * -1054f))) + _wgslsmith_f_op_f32(ceil(-1493f)))));
    var var_2 = Struct_1(vec4<u32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 4u)], 25u)], var_1.a.x, _wgslsmith_mod_u32(~41058u, ~1u) ^ min(var_1.a.x, abs(19177u)), 1u), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(global2[_wgslsmith_index_u32(29989u, 4u)], 0u, u_input.b.x)), var_1.b, u_input.b.xxy), ~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.x, 4294967295u, 1u, var_1.a.x), var_1.a), ~1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 4u)], 4u)] >> (u_input.b.x % 32u))), -1376f, var_1.d);
    let var_3 = abs(var_1.a);
    var var_4 = select(func_2(), var_0, select(func_4(global0[_wgslsmith_index_u32(var_3.x, 19u)], global0[_wgslsmith_index_u32(~(~0u), 19u)]), select(vec3<bool>(global4[_wgslsmith_index_u32(7445u, 27u)] & false, func_4(Struct_1(var_1.a, vec3<u32>(0u, var_3.x, u_input.b.x), 175f, var_2.d), global0[_wgslsmith_index_u32(0u, 19u)]).x, global4[_wgslsmith_index_u32(var_2.b.x & u_input.b.x, 27u)]), vec3<bool>(!global4[_wgslsmith_index_u32(53002u, 27u)], true, true), false), func_4(Struct_1(_wgslsmith_add_vec4_u32(var_1.a, vec4<u32>(1u, 119876u, var_1.a.x, 54042u)), ~var_3.zxy, var_2.c, vec3<f32>(1661f, 521f, var_1.d.x)), Struct_1(abs(vec4<u32>(17167u, var_3.x, global1[_wgslsmith_index_u32(27741u, 25u)], 0u)), reverseBits(u_input.b.xzy), _wgslsmith_f_op_f32(f32(-1f) * -136f), var_1.d)).x));
    return -u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec2<bool>(true, !any(vec4<bool>(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], 27u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 25u)], 27u)], false, false))));
    global1 = array<u32, 25>();
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 19u)];
    global2 = array<u32, 4>();
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(~(func_1() | reverseBits(global3[_wgslsmith_index_u32(u_input.b.x, 9u)])), u_input.a), 1i, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(1u << (global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.a.x, 25u)], 4u)] % 32u), global2[_wgslsmith_index_u32(51387u, 4u)]), min(11066u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(45573u, 25u)], var_1.b.x))) >> (firstLeadingBit(abs(countOneBits(0u))) % 32u), 9u)], ~(-(i32(-1i) * -global3[_wgslsmith_index_u32(28891u, 9u)])));
    var var_3 = Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(u_input.b, var_1.a), vec4<u32>(_wgslsmith_add_u32(~u_input.b.x, ~u_input.b.x), func_3(global0[_wgslsmith_index_u32(50405u, 19u)], Struct_1(var_1.a, vec3<u32>(1u, global1[_wgslsmith_index_u32(var_1.a.x, 25u)], var_1.b.x), var_1.c, vec3<f32>(var_1.d.x, 1528f, -1870f))), var_1.a.x & ~1u, _wgslsmith_dot_vec3_u32(u_input.b.zxz ^ u_input.b.xwx, u_input.b.zzx))), vec3<u32>(0u, _wgslsmith_mod_u32(firstTrailingBit(4294967295u), ~var_1.a.x << (global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(var_1.a.x, 4u)], 4u)] % 32u)), _wgslsmith_mod_u32(u_input.b.x, ~global2[_wgslsmith_index_u32(0u, 4u)] << (abs(1u) % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-352f - _wgslsmith_div_f32(var_1.d.x, var_1.d.x)) - _wgslsmith_f_op_f32(max(-545f, _wgslsmith_f_op_f32(var_1.d.x - 1101f)))) * _wgslsmith_div_f32(207f, 987f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_1.d - vec3<f32>(var_1.d.x, var_1.d.x, var_1.d.x)))), var_1.d, global4[_wgslsmith_index_u32(firstLeadingBit(u_input.b.x), 27u)]))));
    let var_4 = ~(~var_1.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(-(0i & global3[_wgslsmith_index_u32(var_1.b.x, 9u)]), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~0u, u_input.b.x << (global2[_wgslsmith_index_u32(4294967295u, 4u)] % 32u)), 9u)]), var_3.d.zz, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-858f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(680f + var_3.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -683f)), var_3.d.x)), var_1.a.yx);
}

