struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(628f, Struct_1(-1i, vec4<u32>(17001u, 1531u, 1u, 4294967295u)), Struct_1(17111i, vec4<u32>(4294967295u, 1809u, 22963u, 32921u)), vec2<i32>(-1i, 39554i)), Struct_2(375f, Struct_1(-1i, vec4<u32>(36135u, 30857u, 4294967295u, 43862u)), Struct_1(1i, vec4<u32>(40147u, 1u, 0u, 29753u)), vec2<i32>(-1i, 9751i)));

var<private> global1: vec3<f32> = vec3<f32>(-1000f, 1875f, 1000f);

var<private> global2: Struct_4;

var<private> global3: Struct_3 = Struct_3(vec3<i32>(-1i, 6943i, -37674i), 1u, vec2<bool>(false, false), vec2<bool>(false, false));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> vec2<i32> {
    var var_0 = Struct_2(global2.a.x, Struct_1(-abs(arg_0), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.c, 0u, global3.b, 4294967295u), vec4<u32>(4294967295u, u_input.a, 77906u, 4294967295u)) & vec4<u32>(global2.c, 48105u, 36681u, 4294967295u), ~_wgslsmith_add_vec4_u32(vec4<u32>(global3.b, global2.c, global2.c, u_input.a), vec4<u32>(u_input.a, u_input.a, 12521u, 52487u)))), Struct_1(arg_0, ~_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global2.c, 0u, global2.c), vec4<u32>(1u, 0u, 8287u, global2.c)), vec4<u32>(u_input.a, global3.b, 0u, 4294967295u))), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(global3.a.x, arg_0), vec2<i32>(global3.a.x, 2147483647i))) | select(-firstTrailingBit(vec2<i32>(global3.a.x, -32989i)), global3.a.zy, global3.c));
    let var_1 = Struct_3(vec3<i32>(-1i) * -global3.a, ~global3.b, select(global3.c, global3.c, !global3.d), global3.d);
    return _wgslsmith_mod_vec2_i32(abs(global3.a.yx), var_1.a.zz);
}

fn func_2(arg_0: i32) -> vec4<bool> {
    global2 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global2.a, _wgslsmith_f_op_vec2_f32(-global2.a))), vec2<f32>(-321f, _wgslsmith_f_op_f32(144f * global2.a.x)))), global2.b, 29785u);
    let var_0 = global2.b;
    let var_1 = global2.a.x;
    global3 = Struct_3(abs(~_wgslsmith_add_vec3_i32(global3.a, vec3<i32>(-9653i, -30897i, 1i))), global3.b, vec2<bool>(all(global3.c) == true, true), select(select(vec2<bool>(true, all(vec3<bool>(global3.d.x, global3.c.x, global3.c.x))), select(!global3.d, select(global3.c, global3.d, global3.c.x), !global3.c), true), vec2<bool>((global2.b.x ^ -2147483647i) == (var_0.x << (u_input.a % 32u)), false), !(!select(global3.c, global3.d, vec2<bool>(true, true)))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-719f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-186f, global1.x))))), Struct_1(_wgslsmith_div_i32(1i, var_0.x), ~(~vec4<u32>(4294967295u, global2.c, u_input.a, 32600u))), Struct_1(global3.a.x, vec4<u32>(~0u >> (firstTrailingBit(global2.c) % 32u), 1u, _wgslsmith_sub_u32(~global2.c, 28125u), 4294967295u)), select(var_0.wx, func_3(-2147483647i), global3.d));
    return !select(!select(select(vec4<bool>(global3.c.x, global3.c.x, global3.c.x, global3.c.x), vec4<bool>(true, true, global3.c.x, global3.c.x), global3.d.x), !vec4<bool>(global3.c.x, global3.d.x, global3.c.x, global3.c.x), global3.c.x), !(!select(vec4<bool>(false, global3.d.x, true, false), vec4<bool>(true, true, global3.c.x, false), global3.d.x)), !vec4<bool>(any(vec4<bool>(true, true, global3.d.x, true)), true, !global3.c.x, !global3.d.x));
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: i32) -> Struct_3 {
    global2 = Struct_4(_wgslsmith_f_op_vec2_f32(global2.a - global1.yz), global2.b, 1u);
    global1 = vec3<f32>(_wgslsmith_div_f32(-1499f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1361f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -407f) * _wgslsmith_f_op_f32(-global1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-125f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, global2.a.x) * global1.x)))), -142f);
    global1 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-261f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(975f, global1.x)))))), vec3<f32>(-976f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.x), global1.x, all(vec4<bool>(true, false, global3.c.x, global3.c.x))))), 664f), vec3<bool>(true, all(arg_1.wwz), false)));
    global2 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, -327f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, global2.a.x) * global1.zx) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1071f, global1.x) - vec2<f32>(-190f, 1402f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f)))))), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_sub_i32(2147483647i, 2906i), firstLeadingBit(firstTrailingBit(67607i))), _wgslsmith_mod_i32(firstLeadingBit(reverseBits(-46507i)), func_3(~global3.a.x).x), ~_wgslsmith_mod_i32(~1i, -9251i), arg_2), _wgslsmith_div_u32(~u_input.a, global3.b));
    global3 = Struct_3(vec3<i32>(func_3(global3.a.x).x, -32202i, global2.b.x), ~_wgslsmith_sub_u32(0u, _wgslsmith_div_u32(arg_0, countOneBits(arg_0))), select(select(vec2<bool>(true, true), !(!vec2<bool>(global3.d.x, global3.d.x)), global3.c), arg_1.xx, func_2(global3.a.x).yw), !vec2<bool>(arg_1.x, false));
    return Struct_3(countOneBits(-vec3<i32>(i32(-1i) * -2147483647i, 6846i, _wgslsmith_sub_i32(global2.b.x, -44117i))), ~(global3.b & 4294967295u), arg_1.zx, func_2(-2147483647i).xz);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> Struct_3 {
    global3 = Struct_3(global3.a ^ reverseBits(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(arg_2.a, vec3<i32>(arg_2.a.x, 55904i, global2.b.x)), arg_2.a)), firstTrailingBit(global2.c), select(!global3.d, func_4(arg_1.b.x, vec4<bool>(global3.d.x, true, any(vec4<bool>(true, global3.c.x, true, arg_3)), false), _wgslsmith_sub_i32(8301i << (arg_1.b.x % 32u), 2147483647i)).d, select(vec2<bool>(true, any(vec2<bool>(arg_2.d.x, false))), vec2<bool>(u_input.a <= 33148u, arg_3 && true), any(vec4<bool>(arg_0, true, arg_3, true)))), vec2<bool>(!(!all(vec2<bool>(arg_2.d.x, true))), _wgslsmith_f_op_f32(global2.a.x * -408f) > _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(309f + global1.x)))));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(980f)))), _wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.a.x)) + _wgslsmith_f_op_f32(floor(global2.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global2.a.x, -601f, arg_2.d.x)), -579f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))) * -171f))), global2.a.x);
    let var_1 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -503f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, -132f))))), -global2.b, _wgslsmith_sub_u32(1u, ~arg_1.b.x));
    var var_2 = ~(~(~_wgslsmith_add_vec2_u32(vec2<u32>(global3.b, global2.c), _wgslsmith_sub_vec2_u32(vec2<u32>(18419u, arg_2.b), vec2<u32>(global3.b, 0u)))));
    global0 = array<Struct_2, 2>();
    return Struct_3(_wgslsmith_add_vec3_i32(-global2.b.xzx, vec3<i32>(arg_2.a.x, 14774i, firstTrailingBit(-826i))), ~min(var_2.x | _wgslsmith_add_u32(43196u, 251u), _wgslsmith_dot_vec3_u32(max(vec3<u32>(686u, 1u, arg_2.b), arg_1.b.wyy), select(vec3<u32>(1u, 0u, global3.b), arg_1.b.zyz, vec3<bool>(true, arg_0, false)))), !arg_2.c, arg_2.c);
}

fn func_1(arg_0: i32, arg_1: vec4<u32>) -> Struct_3 {
    let var_0 = ~1i;
    return func_5(true, Struct_1(-2147483647i, arg_1), func_4(~1u, func_2(abs(-29392i)), global3.a.x & min(-2147483647i, _wgslsmith_mod_i32(global2.b.x, 1i))), true);
}

fn func_6(arg_0: Struct_3, arg_1: vec3<u32>) -> f32 {
    global3 = Struct_3(_wgslsmith_div_vec3_i32(global3.a, select(select(vec3<i32>(-1i, -32153i, global3.a.x), arg_0.a, arg_0.c.x), vec3<i32>(global2.b.x, -11337i, global2.b.x), true)) << (~(~(arg_1 | arg_1)) % vec3<u32>(32u)), 1u, func_4(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(~0u, u_input.a & global2.c, arg_1.x), ~_wgslsmith_div_u32(1u, 13644u)), select(vec4<bool>(func_4(5051u, vec4<bool>(false, true, true, global3.c.x), -6644i).c.x, all(arg_0.d), -1i != global3.a.x, true), vec4<bool>(func_5(global3.c.x, Struct_1(arg_0.a.x, vec4<u32>(4294967295u, arg_1.x, 1u, 52519u)), arg_0, true).c.x, !arg_0.c.x, true, false), !select(vec4<bool>(true, false, true, false), vec4<bool>(arg_0.c.x, global3.d.x, false, global3.c.x), vec4<bool>(arg_0.d.x, false, global3.c.x, false))), 12306i).c, vec2<bool>(any(!select(vec4<bool>(arg_0.c.x, false, global3.c.x, false), vec4<bool>(false, false, false, global3.c.x), vec4<bool>(false, arg_0.c.x, arg_0.d.x, arg_0.d.x))), func_4(0u, vec4<bool>(false, !arg_0.d.x, false, all(vec3<bool>(true, false, global3.d.x))), global3.a.x).d.x));
    global0 = array<Struct_2, 2>();
    global2 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-787f, global1.x))))))) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), global2.a.x))), abs(max(~reverseBits(global2.b), ~countOneBits(global2.b))), _wgslsmith_clamp_u32(u_input.a, _wgslsmith_mult_u32(func_4(4294967295u, vec4<bool>(true, global3.d.x, true, false), -2147483647i).b, 4294967295u), ~_wgslsmith_mult_u32(abs(4294967295u), global3.b)));
    var var_0 = 322f;
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global1.x, 288f)))), _wgslsmith_f_op_f32(-global2.a.x), 233f) + vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(min(global1.x, global1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) * global2.a.x)), global1.x));
    return _wgslsmith_f_op_f32(-1528f + global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(672f))), global2.a.x), global2.a.x)));
    let var_0 = !global3.d.x;
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(func_1(global2.b.x << (1u % 32u), abs(vec4<u32>(12473u, u_input.a, global3.b, 1u))), _wgslsmith_add_vec3_u32(select(vec3<u32>(global2.c, 50316u, 0u), vec3<u32>(u_input.a, 68653u, 4294967295u), var_0), vec3<u32>(4882u, 77864u, 0u))))), 732f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) - 1f))));
    global3 = Struct_3(vec3<i32>(_wgslsmith_sub_i32(-1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global3.a.x, global3.a.x), global2.b.zy), -2147483647i)), global3.a.x, _wgslsmith_mult_i32(global2.b.x, global3.a.x)), func_4(select(37019u, ~_wgslsmith_add_u32(13016u, u_input.a), false), vec4<bool>(any(vec4<bool>(var_0, global3.c.x, true, false)), func_5(true, Struct_1(1i, vec4<u32>(0u, 0u, 4294967295u, global3.b)), Struct_3(global2.b.xzw, 1024u, vec2<bool>(true, global3.d.x), global3.d), true).c.x, any(select(vec4<bool>(global3.c.x, var_0, global3.d.x, global3.d.x), vec4<bool>(false, global3.d.x, false, global3.c.x), vec4<bool>(var_0, false, global3.d.x, global3.d.x))), select(var_0, global3.d.x, var_0) & all(global3.c)), max((i32(-1i) * -50498i) ^ ~global3.a.x, -21726i)).b, select(!vec2<bool>(var_0 || var_0, !var_0), !func_1(abs(81810i), _wgslsmith_mult_vec4_u32(vec4<u32>(global2.c, 56906u, 0u, 1u), vec4<u32>(global2.c, 11933u, global2.c, 4294967295u))).d, !func_2(18667i).wz), global3.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(849f * -1000f)))), _wgslsmith_sub_i32(global3.a.x, -global3.a.x), vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(2318f + global1.x), _wgslsmith_f_op_f32(-global1.x)))), -511f));
}

