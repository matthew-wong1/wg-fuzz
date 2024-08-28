struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(true, true, vec2<u32>(1662u, 10240u)), 0u), Struct_2(Struct_1(true, false, vec2<u32>(4294967295u, 5093u)), 1u), Struct_2(Struct_1(true, true, vec2<u32>(34032u, 15359u)), 17994u), Struct_2(Struct_1(false, true, vec2<u32>(10604u, 1u)), 4294967295u), Struct_2(Struct_1(false, true, vec2<u32>(1u, 53645u)), 1u), Struct_2(Struct_1(true, true, vec2<u32>(54778u, 0u)), 4294967295u));

var<private> global1: Struct_1;

var<private> global2: array<u32, 7>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec4<i32>, arg_2: f32) -> vec4<bool> {
    global2 = array<u32, 7>();
    global2 = array<u32, 7>();
    global1 = Struct_1(!global1.b, global1.b, max(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(26791u, 47970u), vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(arg_0, 1u))), ~u_input.b.xw));
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * arg_2), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_2, arg_2, global1.b))))), _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(arg_2 + 1000f)))) - vec3<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(-arg_2))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1108f * 1518f)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1061f, arg_2, var_0.x, arg_2) * vec4<f32>(arg_2, 1241f, var_0.x, arg_2)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1411f, 713f, 847f, 466f))))) * vec4<f32>(_wgslsmith_f_op_f32(floor(432f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(181f, var_0.x))), var_0.x, _wgslsmith_f_op_f32(step(-1010f, var_0.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - arg_2), arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1011f * var_0.x), -784f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1470f))) - vec4<f32>(1f, _wgslsmith_f_op_f32(round(-1684f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * arg_2) - _wgslsmith_f_op_f32(trunc(-496f))), -1066f)));
    return !vec4<bool>(global1.a, all(select(select(vec3<bool>(false, global1.b, global1.a), vec3<bool>(true, true, global1.a), global1.b), select(vec3<bool>(global1.b, global1.a, global1.b), vec3<bool>(true, global1.b, false), vec3<bool>(global1.b, true, true)), select(vec3<bool>(true, global1.a, false), vec3<bool>(true, global1.a, true), global1.a))), true, global1.a);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1, arg_3: vec2<i32>) -> bool {
    let var_0 = u_input.b.x;
    global0 = array<Struct_2, 6>();
    var var_1 = arg_2;
    let var_2 = var_1.c;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1f))));
    return all(func_3(53508u, _wgslsmith_sub_vec4_i32(-(~u_input.a), reverseBits(-u_input.a)), 1000f));
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    let var_0 = !func_4(u_input.a.x, all(func_3(0u, u_input.a, -2657f)), Struct_1(true, !arg_0.b, countOneBits(arg_0.c)), u_input.a.wx) & any(!(!func_3(arg_0.c.x, u_input.a, -1063f).xyw));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-830f)))) * 1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-644f)) * -2216f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1096f))))));
    let var_2 = !(!(!(!global1.b)));
    let var_3 = -(~(-3554i));
    let var_4 = _wgslsmith_dot_vec3_i32(u_input.a.zww, abs(_wgslsmith_sub_vec3_i32(select(vec3<i32>(2729i, -25850i, var_3), firstLeadingBit(u_input.a.zzw), true), -vec3<i32>(31886i, 2147483647i, 10150i))));
    return global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(reverseBits(1u << (_wgslsmith_dot_vec3_u32(~u_input.b.xwz, ~u_input.b.zxx) % 32u)) >> (~(~global1.c.x) % 32u), 7u)], 6u)];
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_2 {
    global0 = array<Struct_2, 6>();
    var var_0 = ~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, global2[_wgslsmith_index_u32(arg_0.b, 7u)], u_input.b.x), u_input.b.zxw) >> (u_input.b.yxx % vec3<u32>(32u)));
    var var_1 = 1f;
    var var_2 = Struct_2(func_2(func_2(arg_2).a).a, u_input.b.x);
    var var_3 = vec2<bool>(true, true);
    return func_2(arg_2);
}

fn func_6(arg_0: bool, arg_1: Struct_2) -> f32 {
    global0 = array<Struct_2, 6>();
    global2 = array<u32, 7>();
    var var_0 = ~_wgslsmith_mult_i32(~1i, ~0i);
    global1 = Struct_1(any(select(vec4<bool>(true, all(vec2<bool>(false, global1.a)), global1.a, true), select(!vec4<bool>(arg_1.a.a, false, true, false), !vec4<bool>(true, arg_0, arg_1.a.a, arg_1.a.a), func_3(global1.c.x, u_input.a, -1361f)), select(!vec4<bool>(false, arg_1.a.b, false, global1.a), !vec4<bool>(arg_1.a.b, true, global1.b, arg_0), vec4<bool>(arg_1.a.a, true, global1.a, global1.a)))), !all(select(vec4<bool>(true, global1.a, true, true), vec4<bool>(true, false, arg_1.a.a, global1.a), global1.b)), vec2<u32>(16713u, 4294967295u));
    var var_1 = reverseBits(u_input.b);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -397f))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_1(arg_0: bool) -> bool {
    global2 = array<u32, 7>();
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(947f, _wgslsmith_f_op_f32(func_6(true, func_5(func_2(Struct_1(arg_0, true, vec2<u32>(47492u, 70151u))), -1000f, func_2(Struct_1(global1.a, global1.a, vec2<u32>(32138u, global2[_wgslsmith_index_u32(53174u, 7u)]))).a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-106f, 454f, -1445f) * vec3<f32>(517f, -288f, -1246f))))), -369f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(true, Struct_2(Struct_1(global1.b, true, vec2<u32>(0u, global2[_wgslsmith_index_u32(u_input.b.x, 7u)])), 2735u))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1545f, -3670f, 1769f, 520f)) - vec4<f32>(-312f, 687f, -214f, 362f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(729f, -808f, -407f, -1000f), vec4<f32>(623f, -454f, -804f, 336f), select(vec4<bool>(true, global1.a, arg_0, arg_0), vec4<bool>(global1.b, arg_0, global1.b, global1.a), true))), select(func_3(4294967295u, vec4<i32>(-24138i, u_input.a.x, 34013i, u_input.a.x), 354f), !vec4<bool>(global1.b, false, arg_0, false), vec4<bool>(true, true, global1.a, arg_0)))))));
    var var_1 = func_2(func_5(Struct_2(Struct_1(global1.a | arg_0, true, ~vec2<u32>(4294967295u, 41234u)), u_input.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(func_6(arg_0, Struct_2(Struct_1(arg_0, global1.a, u_input.b.wy), global2[_wgslsmith_index_u32(u_input.b.x, 7u)])))))), func_2(func_2(Struct_1(global1.b, arg_0, vec2<u32>(4370u, 4294967295u))).a).a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_f_op_vec3_f32(step(var_0.xyw, var_0.wzw))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) + vec3<f32>(-615f, var_0.x, -130f)), vec3<f32>(-938f, var_0.x, var_0.x)), 13171i < reverseBits(u_input.a.x)))).a).a;
    let var_2 = global0[_wgslsmith_index_u32(1u, 6u)];
    let var_3 = func_2(Struct_1(false, all(!select(vec2<bool>(true, var_1.a), vec2<bool>(true, global1.a), vec2<bool>(var_1.a, false))), ~(~vec2<u32>(1u, 1u))));
    return any(vec3<bool>(max(-u_input.a.x, 2147483647i) >= -(~u_input.a.x), var_0.x > var_0.x, !var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(13984u, 6u)];
    let var_1 = true;
    let var_2 = u_input.b;
    var var_3 = func_1(!(1u >= firstLeadingBit(~var_2.x)));
    let var_4 = -(~abs(_wgslsmith_clamp_vec4_i32(u_input.a, vec4<i32>(-26028i, u_input.a.x, 2529i, u_input.a.x), u_input.a)) ^ vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x << (8617u % 32u), u_input.a.x >> (4294967295u % 32u), _wgslsmith_mult_i32(-13387i, u_input.a.x)), reverseBits(1i), 19334i | ~u_input.a.x, ~(-u_input.a.x)));
    var_3 = !all(func_3(global2[_wgslsmith_index_u32(var_0.b, 7u)] & _wgslsmith_div_u32(global2[_wgslsmith_index_u32(23899u, 7u)], 95569u), reverseBits(var_4), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-365f, 1483f))))).zzz);
    let var_5 = u_input.b.ywz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-257f, 1272f, _wgslsmith_f_op_f32(482f + _wgslsmith_div_f32(466f, 1025f))), vec3<f32>(1f, 1f, 1f))), ~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_5.x ^ var_2.x, 39778u & var_0.a.c.x) >> (~_wgslsmith_mult_u32(var_5.x, var_5.x) % 32u), 7u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1000f, 974f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-644f, -532f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1946f, 272f) + vec2<f32>(-792f, 1233f)))))), var_5 >> (_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(var_2.xxw, var_2.wzy), vec3<u32>(_wgslsmith_mult_u32(1u, var_2.x), ~125288u, ~30974u), ~(var_5 & u_input.b.yzw)) % vec3<u32>(32u)), func_5(global0[_wgslsmith_index_u32(~abs(global1.c.x), 6u)], _wgslsmith_f_op_f32(f32(-1f) * -339f), Struct_1(!global1.b & true, var_0.a.b, vec2<u32>(~var_2.x, u_input.b.x ^ 1u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(700f, -1000f, -530f)))))).b);
}

