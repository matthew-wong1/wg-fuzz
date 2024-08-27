struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<f32, 19> = array<f32, 19>(194f, 1000f, 136f, -551f, -1044f, -1228f, -588f, 335f, -858f, -215f, -1438f, -890f, -1316f, 899f, -469f, -1000f, -1537f, 1138f, -1051f);

var<private> global2: array<u32, 8>;

var<private> global3: vec2<i32> = vec2<i32>(-29144i, 1i);

var<private> global4: vec2<f32> = vec2<f32>(468f, -1566f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec2<bool> {
    var var_0 = all(select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true)))) || all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)));
    let var_1 = _wgslsmith_clamp_vec2_u32(u_input.b.yz, ~(select(vec2<u32>(24856u, 1u), u_input.b.xy, false) << (u_input.b.xz % vec2<u32>(32u))), select(~_wgslsmith_clamp_vec2_u32(u_input.b.xx, vec2<u32>(1u, global2[_wgslsmith_index_u32(0u, 8u)]), vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(62675u, 8u)], 8u)], u_input.b.x)), vec2<u32>(_wgslsmith_dot_vec3_u32(max(u_input.b, vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 8u)], 8u)], 1u, u_input.b.x)), ~vec3<u32>(54708u, 0u, 4294967295u)), global2[_wgslsmith_index_u32(select(u_input.b.x, _wgslsmith_div_u32(73685u, 93173u), any(vec2<bool>(true, true))), 8u)]), !select(vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true))));
    let var_2 = Struct_1(vec2<bool>(true, true), !vec2<bool>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(8628u, 19u)] + global1[_wgslsmith_index_u32(var_1.x, 19u)]) >= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(28717u, 8u)], 19u)]), true), vec3<bool>(!all(vec3<bool>(true, true, false)), !(any(vec4<bool>(true, true, false, false)) & select(false, true, true)), 305f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 19u)] + global1[_wgslsmith_index_u32(u_input.b.x, 19u)]))), -457f);
    let var_3 = Struct_1(select(vec2<bool>(var_2.b.x, any(vec4<bool>(false, true, var_2.b.x, var_2.c.x))), select(select(var_2.c.zy, select(var_2.b, vec2<bool>(var_2.b.x, false), var_2.a), true), vec2<bool>(select(var_2.a.x, false, var_2.b.x), global2[_wgslsmith_index_u32(u_input.b.x, 8u)] == 4294967295u), true), true), vec2<bool>(var_2.c.x, true), !var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -523f) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 19u)]))));
    global1 = array<f32, 19>();
    return var_3.a;
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec4<u32>) -> bool {
    var var_0 = Struct_1(func_3(), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), arg_1 <= 101589u)), vec3<bool>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_1 & 18726u, 19u)], _wgslsmith_f_op_f32(sign(344f))) <= -144f, true, any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global4.x)))));
    var var_1 = ~_wgslsmith_div_vec4_u32(min(~arg_2, arg_2), vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 48008u, arg_2.x, 1998u), vec4<u32>(4294967295u, 1u, 9289u, arg_1)), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.b.x, arg_1, arg_2.x), arg_2)), ~u_input.b.x, _wgslsmith_mod_u32(arg_1, ~19706u), _wgslsmith_dot_vec4_u32(arg_2, ~arg_2)));
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global4.x - global4.x), 399f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(312f - -1000f), var_0.d)))));
    let var_2 = Struct_1(vec2<bool>(var_0.b.x, !var_0.c.x), !func_3(), !var_0.c, -276f);
    var var_3 = var_2;
    return false;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> Struct_1 {
    let var_0 = arg_0;
    global4 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.d, -2069f), vec2<f32>(288f, 1742f)) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1008f, global1[_wgslsmith_index_u32(u_input.b.x, 19u)])))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_1.d, var_0.d))), vec2<f32>(global4.x, global4.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, global4.x)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-446f, arg_1.d)))))))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.d - global1[_wgslsmith_index_u32(8633u, 19u)]) * _wgslsmith_f_op_f32(f32(-1f) * -904f)), -350f, arg_2.x)), _wgslsmith_f_op_f32(-266f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.d * 692f), 354f)))));
    global4 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], 19u)], arg_0.d)), vec2<f32>(_wgslsmith_f_op_f32(floor(global4.x)), _wgslsmith_f_op_f32(392f * global1[_wgslsmith_index_u32(u_input.b.x, 19u)])))), vec2<f32>(_wgslsmith_f_op_f32(ceil(-177f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -297f))))));
    global1 = array<f32, 19>();
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(28810u, abs(7588u)), ~vec2<u32>(~(~u_input.b.x), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 8u)], 8u)]));
    return Struct_1(select(arg_1.c.yy, func_3(), arg_2.zz), !select(vec2<bool>(all(vec4<bool>(true, arg_1.b.x, arg_2.x, false)), true), arg_0.b, !(!var_0.a.x)), !select(var_0.c, vec3<bool>(arg_0.b.x, true, arg_0.a.x), true), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.d * arg_1.d), global4.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.d - 615f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1137f * var_0.d))))))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>) -> vec2<bool> {
    var var_0 = -301f;
    var_0 = _wgslsmith_f_op_f32(-global4.x);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1433f)))) + -1150f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(110f, 1000f, true)))))), _wgslsmith_f_op_f32(step(296f, global4.x)));
    let var_2 = arg_0;
    let var_3 = Struct_1(select(func_4(func_4(func_4(arg_0, arg_0, var_2.c), var_2, var_2.c), var_2, vec3<bool>(arg_0.b.x, arg_0.b.x, u_input.b.x >= u_input.b.x)).a, !arg_0.c.yx, func_3()), vec2<bool>(arg_0.a.x, true), vec3<bool>(!(-2147483647i > ~arg_2.x), (func_4(var_2, Struct_1(vec2<bool>(var_2.c.x, true), arg_0.c.zz, arg_0.c, global1[_wgslsmith_index_u32(u_input.b.x, 19u)]), var_2.c).c.x || (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], 8u)] >= 4294967295u)) | true, (func_3().x || (global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], 19u)] > -2043f)) | false), _wgslsmith_f_op_f32(var_2.d + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(431f - _wgslsmith_f_op_f32(abs(arg_0.d))))));
    return vec2<bool>(all(vec4<bool>(arg_0.b.x, _wgslsmith_dot_vec2_i32(arg_2.zw, vec2<i32>(-48469i, global3.x)) != 0i, 0u >= global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, global2[_wgslsmith_index_u32(0u, 8u)]), 8u)], true)), true);
}

fn func_1() -> vec2<bool> {
    global1 = array<f32, 19>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-272f, _wgslsmith_f_op_f32(f32(-1f) * -1368f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1455f, global4.x))), vec2<f32>(-354f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(16567u, 8u)], 4294967295u, u_input.b.x, u_input.b.x), vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], 79463u, 15719u, global2[_wgslsmith_index_u32(4294967295u, 8u)])), 19u)]))));
    global3 = vec2<i32>(~(~global3.x), _wgslsmith_mod_i32(1i, _wgslsmith_dot_vec2_i32(u_input.a.wx >> (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u)), select(vec2<i32>(2147483647i, global3.x), vec2<i32>(global3.x, 2147483647i), true))) | -2481i);
    let var_1 = global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~47641u, u_input.b.x), countOneBits(vec2<u32>(global2[_wgslsmith_index_u32(76243u, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(9044u, 8u)], 8u)], 8u)])) & vec2<u32>(u_input.b.x, u_input.b.x)), vec2<u32>(_wgslsmith_add_u32(u_input.b.x << (u_input.b.x % 32u), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], 8u)], 8u)], 8u)] ^ 22671u), 71803u))), 19u)];
    let var_2 = _wgslsmith_f_op_f32(round(var_0.x));
    return func_5(func_4(Struct_1(vec2<bool>(true, true), vec2<bool>(true, true), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(f32(-1f) * -128f)), Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(func_2(21266i, u_input.b.x, vec4<u32>(global2[_wgslsmith_index_u32(49701u, 8u)], global2[_wgslsmith_index_u32(u_input.b.x, 8u)], 32206u, 10601u)), all(vec3<bool>(false, true, false))), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x * -428f))), vec3<bool>(1000f < _wgslsmith_f_op_f32(-global4.x), false, false)), _wgslsmith_add_i32(_wgslsmith_mult_i32(select(-1i, global3.x, false), _wgslsmith_div_i32(-37853i, global3.x)), _wgslsmith_sub_i32(~(-1i), u_input.a.x)) << (u_input.b.x % 32u), _wgslsmith_sub_vec4_i32(u_input.a, abs(countOneBits(_wgslsmith_div_vec4_i32(u_input.a, u_input.a)))));
}

fn func_6(arg_0: u32, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, -463f), vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global4.x))))) - vec2<f32>(_wgslsmith_f_op_f32(func_4(arg_1, Struct_1(arg_1.c.zz, arg_1.b, vec3<bool>(arg_1.b.x, false, true), arg_1.d), vec3<bool>(false, true, arg_1.b.x)).d - global4.x), _wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(f32(-1f) * -585f))))));
    let var_0 = Struct_1(func_3(), vec2<bool>(arg_1.b.x, func_2(-26666i, arg_0, vec4<u32>(35453u, max(44849u, arg_0), u_input.b.x, firstTrailingBit(global2[_wgslsmith_index_u32(86449u, 8u)])))), arg_1.c, arg_1.d);
    var var_1 = ~_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(arg_0, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(arg_0, 8u)], 4294967295u, 1u) >> (vec4<u32>(1u, 22512u, arg_0, arg_0) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], u_input.b.x, 0u)))), abs(~vec2<u32>(71015u, 45423u) << (vec2<u32>(8187u, u_input.b.x) % vec2<u32>(32u))));
    global2 = array<u32, 8>();
    var var_2 = _wgslsmith_div_vec4_i32(max(vec4<i32>(_wgslsmith_div_i32(-27422i, global3.x), global3.x << (1u % 32u), ~(-1i), -1723i), countOneBits(vec4<i32>(u_input.c, global3.x, 1i, -11607i))), firstLeadingBit(firstLeadingBit(u_input.a))) & vec4<i32>(1i ^ select(_wgslsmith_mod_i32(global3.x, 16062i), global3.x, var_0.c.x | true), u_input.c, firstTrailingBit(_wgslsmith_clamp_i32(-global3.x, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), 1i)), u_input.c);
    return func_4(func_4(arg_1, Struct_1(!select(vec2<bool>(true, false), var_0.b, arg_1.b), func_5(Struct_1(vec2<bool>(true, arg_1.c.x), arg_1.c.yz, arg_1.c, global1[_wgslsmith_index_u32(arg_0, 19u)]), -2147483647i, u_input.a), vec3<bool>(global3.x >= 423i, !var_0.c.x, var_0.d == global4.x), -356f), var_0.c), var_0, !func_4(Struct_1(func_4(Struct_1(vec2<bool>(var_0.b.x, true), vec2<bool>(false, arg_1.a.x), vec3<bool>(false, var_0.c.x, arg_1.b.x), -567f), arg_1, arg_1.c).b, !arg_1.b, !arg_1.c, arg_2), var_0, !arg_1.c).c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(14332u, Struct_1(vec2<bool>(true, all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true)))), func_1(), func_4(func_4(func_4(Struct_1(vec2<bool>(false, true), vec2<bool>(false, true), vec3<bool>(false, false, false), -778f), Struct_1(vec2<bool>(false, false), vec2<bool>(true, false), vec3<bool>(false, true, false), 1349f), vec3<bool>(false, true, false)), func_4(Struct_1(vec2<bool>(false, false), vec2<bool>(false, false), vec3<bool>(true, true, false), 2163f), Struct_1(vec2<bool>(true, true), vec2<bool>(false, false), vec3<bool>(true, false, true), global4.x), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false)), Struct_1(vec2<bool>(true, false), func_3(), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 18745u), 19u)]), vec3<bool>(true, func_3().x, true)).c, global4.x), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32((vec2<u32>(u_input.b.x, 0u) | u_input.b.xy) | firstLeadingBit(vec2<u32>(40514u, 1u)), vec2<u32>(global2[_wgslsmith_index_u32(18090u, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(42750u, 8u)], 8u)]) >> (u_input.b.xy % vec2<u32>(32u))), 19u)]));
    global4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-604f, global1[_wgslsmith_index_u32(56411u, 19u)]))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1637f - _wgslsmith_f_op_f32(657f + global1[_wgslsmith_index_u32(9245u, 19u)])) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 19u)] * global4.x), _wgslsmith_f_op_f32(-global4.x))), _wgslsmith_div_f32(var_0.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(235f + 301f))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(597f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2447f + -750f), _wgslsmith_f_op_f32(var_0.d + global4.x))), func_6(56270u, Struct_1(vec2<bool>(true, var_0.a.x), vec2<bool>(false, var_0.b.x), var_0.c, -741f), 1216f).b.x)))) + global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~select(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], 0u, var_0.b.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(68110u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 8u)], 8u)], 8u)], u_input.b.x) << (vec4<u32>(u_input.b.x, 54308u, global2[_wgslsmith_index_u32(15403u, 8u)], 4294967295u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(85090u, 4294967295u, global2[_wgslsmith_index_u32(u_input.b.x, 8u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(50139u, 8u)], 8u)]), vec4<u32>(u_input.b.x, u_input.b.x, 40295u, u_input.b.x)))), 19u)]);
    global2 = array<u32, 8>();
    var var_2 = Struct_1(select(vec2<bool>(func_6(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 84753u, 42494u), vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], 8u)], u_input.b.x, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 8u)], 8u)])), 8u)], var_0, 661f).c.x, !(!var_0.c.x)), select(!func_6(u_input.b.x, Struct_1(vec2<bool>(false, var_0.b.x), vec2<bool>(false, false), var_0.c, -2156f), 939f).b, vec2<bool>(false, true), any(!vec2<bool>(false, var_0.c.x))), true), func_3(), var_0.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_1, var_1)))));
    var var_3 = -2147483647i;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1082f, -964f, 637f) + vec3<f32>(var_2.d, global1[_wgslsmith_index_u32(0u, 19u)], 128f)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1196f, var_1, var_0.d))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(1347f, 527f, -1693f) - vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], var_0.d, var_0.d)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-228f, 443f, global1[_wgslsmith_index_u32(62456u, 19u)])), func_4(Struct_1(vec2<bool>(false, var_0.c.x), var_0.a, var_2.c, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 8u)], 19u)]), var_0, vec3<bool>(var_0.c.x, var_2.a.x, var_0.a.x)).c)), vec3<f32>(1f, -604f, global1[_wgslsmith_index_u32(~1u, 19u)]))))) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.d, _wgslsmith_f_op_f32(f32(-1f) * -479f), 151f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(711f, global4.x, var_2.d))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1391f, var_2.d, global1[_wgslsmith_index_u32(u_input.b.x, 19u)]) - vec3<f32>(-593f, -538f, var_0.d)), true))))));
    global4 = var_4.zy;
    global2 = array<u32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.c), vec3<i32>(u_input.c, u_input.c, 27054i)));
}

