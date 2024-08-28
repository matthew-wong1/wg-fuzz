struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, false, false, true)));

var<private> global2: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(12156u, 10095u, 0u, 4294967295u), vec4<u32>(14876u, 4294967295u, 22312u, 0u), vec4<u32>(85001u, 0u, 56503u, 25165u), vec4<u32>(4294967295u, 64868u, 38198u, 25285u), vec4<u32>(0u, 4294967295u, 1u, 30508u), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<u32>(75370u, 50844u, 23067u, 119899u), vec4<u32>(1243u, 24051u, 0u, 4294967295u), vec4<u32>(31135u, 4294967295u, 1u, 26309u), vec4<u32>(4294967295u, 35401u, 1u, 1106u), vec4<u32>(68012u, 1598u, 78290u, 4294967295u), vec4<u32>(0u, 88317u, 1u, 3062u), vec4<u32>(4294967295u, 4294967295u, 9169u, 4294967295u), vec4<u32>(12877u, 14016u, 0u, 0u), vec4<u32>(0u, 4294967295u, 1u, 46880u), vec4<u32>(9939u, 4294967295u, 1971u, 1007u), vec4<u32>(1u, 10665u, 81335u, 40573u), vec4<u32>(28135u, 4294967295u, 60737u, 4294967295u));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1154f, 1f))));
    let var_1 = Struct_2(global1.b, global1.b, Struct_1(select(!(!vec4<bool>(global1.c.a.x, true, global0[_wgslsmith_index_u32(4294967295u, 9u)], true)), vec4<bool>(global0[_wgslsmith_index_u32(111165u, 9u)], 278f > var_0.x, true, true), var_0.x > var_0.x)));
    var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) * _wgslsmith_f_op_f32(var_0.x + -422f)))), _wgslsmith_f_op_f32(round(-503f))));
    var var_2 = Struct_1(var_1.b.a);
    var_2 = var_1.c;
    return Struct_1(global1.c.a);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.c, 9u)];
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -211f);
    let var_2 = 0u;
    let var_3 = arg_1.zyy;
    global0 = array<bool, 9>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(select(global1.b.a, global1.c.a, vec4<bool>(!global0[_wgslsmith_index_u32(4294967295u, 9u)], true, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.zzz, u_input.b.xxx), 9u)], all(global1.a.a)))), Struct_1(!vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, arg_0), 9u)], true && global1.c.a.x, !global1.b.a.x, 15240u == arg_0)), func_2());
    var var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1140f, 492f) - -611f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<f32>(2238f, 1000f, 1436f), vec4<f32>(514f, 1000f, -593f, 1596f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(325f)))))), vec2<f32>(224f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-729f)), _wgslsmith_f_op_f32(trunc(913f))))))), vec2<bool>(all(vec3<bool>(true, var_0.c.a.x != true, any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 9u)], false, false, true)))), var_0.c.a.x)));
    let var_2 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.d.xw, _wgslsmith_mult_vec2_i32(min(select(vec2<i32>(-21948i, u_input.d.x), u_input.d.xw, vec2<bool>(global1.c.a.x, true)), u_input.d.zy), vec2<i32>(_wgslsmith_mult_i32(u_input.d.x, -6771i), u_input.d.x))), ~u_input.d.yy);
    global2 = array<vec4<u32>, 18>();
    var var_3 = Struct_2(Struct_1(global1.c.a), global1.b, func_2());
    return var_0.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec3<i32>) -> Struct_2 {
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    global1 = Struct_2(func_2(), Struct_1(func_2().a), Struct_1(vec4<bool>(true, _wgslsmith_f_op_f32(-341f + -204f) != _wgslsmith_f_op_f32(step(1746f, -1480f)), all(func_1(u_input.a).a.wy), false)));
    global2 = array<vec4<u32>, 18>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(515f, 1000f, -1771f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-136f, 267f, -215f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * vec3<f32>(1000f, -1953f, 1204f)))));
    return Struct_2(global1.a, func_2(), func_2());
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = func_4(Struct_1(func_4(arg_1, vec3<i32>(max(u_input.d.x, 0i), -2147483647i, -7783i), arg_3, vec3<i32>(_wgslsmith_mod_i32(0i, u_input.d.x), abs(-2147483647i), firstTrailingBit(u_input.d.x))).c.a), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(u_input.d.x, u_input.d.x), -u_input.d.x, _wgslsmith_add_i32(u_input.d.x, u_input.d.x), -32500i), reverseBits(~vec4<i32>(u_input.d.x, u_input.d.x, -11965i, 12203i))), u_input.d.x, _wgslsmith_dot_vec3_i32(~(~vec3<i32>(7780i, u_input.d.x, u_input.d.x)), vec3<i32>(u_input.d.x, u_input.d.x, -4123i >> (u_input.c % 32u)))), Struct_2(global1.c, func_4(Struct_1(func_2().a), abs(vec3<i32>(-50090i, 0i, u_input.d.x)), arg_3, u_input.d.zyz | -vec3<i32>(0i, u_input.d.x, u_input.d.x)).c, Struct_1(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 9u)], !arg_1.a.x, select(arg_1.a.x, true, true)))), vec3<i32>(_wgslsmith_div_i32(u_input.d.x, abs(-1i >> (1u % 32u))), -29592i, _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.d.x, ~(-33609i)), -58835i))).b;
    var var_1 = ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, countOneBits(firstLeadingBit(1u))), u_input.b.xy);
    return Struct_2(Struct_1(func_1(max(abs(3009u), 73584u)).a), func_2(), Struct_1(!vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.c, 9u)], true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 9>();
    let var_0 = Struct_1(!select(!vec4<bool>(false, global1.c.a.x, false, global0[_wgslsmith_index_u32(26739u, 9u)]), !select(global1.b.a, global1.b.a, vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 9u)], global1.b.a.x, global0[_wgslsmith_index_u32(35214u, 9u)], false)), !global1.a.a));
    global2 = array<vec4<u32>, 18>();
    var var_1 = func_5(var_0.a.xyx, var_0, vec4<u32>(_wgslsmith_add_u32(u_input.b.x, 37458u), u_input.e.x, u_input.a, reverseBits(~u_input.c ^ _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.a, 14811u, 1u), u_input.b))), func_4(Struct_1(select(global1.a.a, !global1.b.a, global0[_wgslsmith_index_u32(~u_input.a, 9u)])), _wgslsmith_sub_vec3_i32(~select(vec3<i32>(u_input.d.x, -33081i, u_input.d.x), u_input.d.wyy, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 9u)], true, global0[_wgslsmith_index_u32(23846u, 9u)])), _wgslsmith_div_vec3_i32(u_input.d.yzw, u_input.d.yzx) & select(u_input.d.yzx, vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), global1.c.a.xxw)), Struct_2(Struct_1(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(24038u, 9u)], global0[_wgslsmith_index_u32(0u, 9u)], global1.c.a.x)), func_1(0u & u_input.e.x), Struct_1(!global1.c.a)), u_input.d.yxz));
    global0 = array<bool, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(664f, -2921f) + vec2<f32>(306f, -1157f))), vec2<f32>(_wgslsmith_f_op_f32(-509f + -1606f), _wgslsmith_f_op_f32(-407f + -1199f)), var_1.a.a.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -464f)) - vec2<f32>(1f, 1f)))), u_input.d.x);
}

