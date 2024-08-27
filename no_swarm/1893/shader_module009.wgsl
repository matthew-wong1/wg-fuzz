struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: i32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

var<private> global1: Struct_4;

var<private> global2: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(0u, 0u, 70216u, 4294967295u), vec4<u32>(23713u, 1u, 4294967295u, 1u), vec4<u32>(86810u, 9552u, 24622u, 9757u), vec4<u32>(24260u, 21484u, 89096u, 10353u), vec4<u32>(4294967295u, 0u, 41634u, 4294967295u), vec4<u32>(1u, 4294967295u, 11095u, 0u), vec4<u32>(0u, 89643u, 1u, 30471u));

var<private> global3: vec4<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> f32 {
    global1 = Struct_4(global1.a, -378f, min(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c << (20635u % 32u), u_input.c.x, ~0u, ~31089u), vec4<u32>(_wgslsmith_sub_u32(arg_3.d.a.x, arg_3.d.b), arg_1.d.e, select(arg_3.d.a.x, 0u, false), 1u)), (_wgslsmith_dot_vec4_u32(u_input.c, u_input.c) & firstTrailingBit(30696u)) & max(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, 0u), vec2<u32>(arg_3.d.a.x, u_input.b.x)), arg_1.d.a.x)), vec4<f32>(arg_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b)) * -735f), _wgslsmith_f_op_f32(round(arg_3.b)), _wgslsmith_f_op_f32(-1055f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b * 1299f)))));
    let var_0 = 1u;
    global2 = array<vec4<u32>, 7>();
    global2 = array<vec4<u32>, 7>();
    global1 = Struct_4(arg_1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_1.b, -1984f)))), arg_3.b)) + global1.b), min(1u, global1.a.b), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_3.b, -1000f, 320f, -1208f) * vec4<f32>(-474f, global1.d.x, global1.d.x, -453f)) - vec4<f32>(_wgslsmith_f_op_f32(min(global1.d.x, 1000f)), _wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(min(-272f, arg_1.b)), _wgslsmith_f_op_f32(trunc(233f)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)))))));
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_4, arg_3: vec3<bool>) -> vec4<bool> {
    var var_0 = ~_wgslsmith_mod_u32(arg_2.a.e, _wgslsmith_dot_vec3_u32(abs(_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(arg_0.x, 32256u, arg_0.x))), ~_wgslsmith_add_vec3_u32(u_input.b, vec3<u32>(global1.c, arg_1, arg_1))));
    var_0 = ~69943u;
    var_0 = _wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_1, _wgslsmith_mod_u32(firstTrailingBit(arg_0.x), global1.c & 4294967295u)), vec2<u32>(_wgslsmith_mult_u32(arg_0.x & 4294967295u, u_input.a), arg_1), any(vec4<bool>(!arg_2.a.d.x, false, false, true))), arg_0 << (~vec2<u32>(~u_input.a, arg_0.x & 91968u) % vec2<u32>(32u)));
    var var_1 = global1.d.wy;
    global0 = array<Struct_2, 20>();
    return select(!select(select(!vec4<bool>(false, arg_3.x, true, global3.x), !vec4<bool>(false, global3.x, arg_2.a.d.x, arg_3.x), global3.x), select(!vec4<bool>(false, arg_2.a.d.x, arg_3.x, global1.a.d.x), vec4<bool>(false, global1.a.d.x, true, true), !arg_2.a.d.x), !(!global3.x)), select(!(!vec4<bool>(global3.x, false, false, true)), vec4<bool>(select(any(vec3<bool>(arg_3.x, arg_2.a.d.x, true)), any(vec2<bool>(arg_3.x, arg_2.a.d.x)), arg_3.x), false, any(select(vec4<bool>(true, false, global3.x, global1.a.d.x), vec4<bool>(false, true, false, false), vec4<bool>(global3.x, true, false, false))), !(!arg_3.x)), !vec4<bool>(true, true, arg_2.a.d.x, all(vec4<bool>(global1.a.d.x, false, false, false)))), vec4<bool>(true, arg_3.x, !(!all(vec4<bool>(arg_3.x, global3.x, false, false))), true));
}

fn func_2() -> Struct_3 {
    let var_0 = u_input.d;
    global3 = func_4(~vec2<u32>(1u, u_input.a), global1.a.a.x, Struct_4(global1.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(global1.b * _wgslsmith_f_op_f32(295f * global1.d.x)))), global1.a.e, vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<bool>(global3.x, global3.x, true), Struct_2(global3.x, global1.d.x, global1.a.c.x, Struct_1(global1.a.a, 0u, u_input.e, global1.a.d, u_input.c.x), vec4<bool>(true, true, true, global1.a.d.x)), 4294967295u, Struct_2(true, 297f, u_input.e.x, global1.a, vec4<bool>(true, global1.a.d.x, false, true))))), _wgslsmith_f_op_f32(global1.d.x + _wgslsmith_f_op_f32(global1.d.x - global1.d.x)), -1000f)), select(vec3<bool>(true, any(global3.yzz), global3.x), vec3<bool>(global3.x, false, ~5040u < u_input.b.x), vec3<bool>(!global1.a.d.x, 1i <= u_input.e.x, true)));
    return Struct_3(_wgslsmith_f_op_vec4_f32(select(global1.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global1.d.x, -1901f, -665f)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, global1.b, global1.d.x, global1.b)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1562f, 2517f, -363f, global1.d.x) + _wgslsmith_f_op_vec4_f32(select(global1.d, vec4<f32>(global1.d.x, global1.b, 275f, -1717f), global1.a.d.x)))), vec4<bool>(true, any(vec4<bool>(true, false, false, false)) && true, global1.a.d.x, false))), all(vec4<bool>(any(vec4<bool>(true, global3.x, true, global3.x)) && true, select(any(global3.wyx), global1.a.d.x && global1.a.d.x, global3.x), select(false && global3.x, !global1.a.d.x, false), !all(vec4<bool>(global3.x, global1.a.d.x, global3.x, false)))), vec3<u32>(select(1u << (1u % 32u), global1.a.e, global1.a.d.x), select(select(_wgslsmith_add_u32(31812u, u_input.c.x), u_input.b.x | u_input.a, all(vec2<bool>(global3.x, false))), reverseBits(~0u), false), firstTrailingBit(global1.c)));
}

fn func_1(arg_0: Struct_3) -> u32 {
    var var_0 = !(!select(global3.xx, !vec2<bool>(global3.x, false), !global1.a.d));
    let var_1 = func_2();
    global3 = vec4<bool>(select(var_1.b, true, countOneBits(-37851i) < u_input.d), any(select(vec2<bool>(select(var_1.b, global3.x, true), !arg_0.b), !vec2<bool>(arg_0.b, true), global1.a.d)), true, true);
    var var_2 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, func_2().c.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.x, u_input.c.x, u_input.b.x), vec3<u32>(4294967295u, arg_0.c.x, 0u)), 1u & var_1.c.x, 1u)), (min(arg_0.c, arg_0.c) ^ var_1.c) & vec3<u32>(1u << ((1u << (var_1.c.x % 32u)) % 32u), firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.c.x, var_1.c.x), arg_0.c.yx)), _wgslsmith_mult_u32(~42205u, _wgslsmith_mult_u32(u_input.c.x, var_1.c.x))), var_1.c);
    var var_3 = firstLeadingBit(u_input.e.zzw | global1.a.c.xzy);
    return firstLeadingBit(_wgslsmith_sub_u32(var_2.x, ~min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(40886u, global1.c)), ~1u)));
}

fn func_5(arg_0: vec4<bool>, arg_1: i32) -> Struct_4 {
    global3 = select(vec4<bool>(false, !select(true, true, false), global3.x, global1.c < u_input.c.x), select(func_4(vec2<u32>(global1.c & 120373u, reverseBits(0u)), ~_wgslsmith_clamp_u32(u_input.a, 33053u, u_input.b.x), Struct_4(global1.a, global1.b, ~u_input.b.x, _wgslsmith_f_op_vec4_f32(global1.d - global1.d)), !vec3<bool>(false, global3.x, global1.a.d.x)), select(vec4<bool>(true, true, global1.a.d.x, all(vec2<bool>(false, arg_0.x))), func_4(~global1.a.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 0u, 18u, u_input.c.x), u_input.c), Struct_4(Struct_1(vec2<u32>(u_input.a, u_input.c.x), u_input.b.x, u_input.e, global1.a.d, u_input.c.x), -1106f, global1.c, global1.d), arg_0.yxw), select(!vec4<bool>(global3.x, arg_0.x, true, global3.x), !vec4<bool>(global1.a.d.x, global3.x, arg_0.x, true), func_4(global1.a.a, 63995u, Struct_4(global1.a, 710f, 40831u, vec4<f32>(global1.b, -245f, global1.d.x, 1000f)), arg_0.zzy))), true), global3.x);
    var var_0 = Struct_4(global1.a, _wgslsmith_f_op_f32(-global1.d.x), ~101179u, global1.d);
    let var_1 = any(!(!arg_0));
    global1 = Struct_4(Struct_1(~(~countOneBits(vec2<u32>(0u, u_input.c.x))), 0u, vec4<i32>(~(-29127i), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.c.x, -1i), u_input.e.yz), _wgslsmith_div_i32(-68606i, arg_1)), _wgslsmith_dot_vec3_i32(global1.a.c.wyx, ~u_input.e.yyz), firstLeadingBit(firstLeadingBit(2147483647i))), func_4(abs(var_0.a.a), _wgslsmith_sub_u32(1u, _wgslsmith_mult_u32(global1.a.b, 1u)), Struct_4(Struct_1(vec2<u32>(4294967295u, 25594u), global1.a.b, vec4<i32>(10417i, var_0.a.c.x, 0i, global1.a.c.x), global3.xx, global1.c), _wgslsmith_f_op_f32(-global1.d.x), global1.a.a.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1419f, 604f, global1.b, global1.b)))), !arg_0.wyx).yy, reverseBits(global1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(-global1.b))), _wgslsmith_add_u32(~0u, func_2().c.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, _wgslsmith_div_f32(782f, var_0.b), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(min(-155f, global1.d.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-2134f, global1.b, var_0.d.x, global1.d.x) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, global1.b, 942f, global1.d.x) * global1.d))) + var_0.d));
    var var_2 = global1.a;
    return Struct_4(global1.a, -223f, ~_wgslsmith_mod_u32(abs(var_0.a.b), ~20243u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.d * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-309f, -522f, var_0.d.x, -980f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -10383i;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -228f), _wgslsmith_div_f32(985f, _wgslsmith_f_op_f32(global1.d.x * global1.b))));
    let var_2 = func_5(select(vec4<bool>(select(global1.a.d.x || global3.x, false, false), func_1(Struct_3(global1.d, global3.x, vec3<u32>(global1.c, 1u, 1u))) < 4294967295u, global3.x, func_2().b), vec4<bool>(!func_4(u_input.c.zz, global1.c, Struct_4(Struct_1(u_input.b.xz, u_input.c.x, global1.a.c, global3.xy, 4294967295u), global1.b, u_input.b.x, vec4<f32>(var_1, 2137f, 538f, 441f)), global3.xwy).x, all(func_4(vec2<u32>(u_input.a, global1.c), global1.c, Struct_4(global1.a, -193f, 0u, vec4<f32>(var_1, var_1, -960f, 112f)), vec3<bool>(false, false, true)).wyx), _wgslsmith_sub_u32(u_input.a, 0u) != u_input.a, !(false != global3.x)), !vec4<bool>(true, -1i == u_input.d, global1.a.d.x, false)), 12510i);
    global2 = array<vec4<u32>, 7>();
    var var_3 = global3.zyx;
    global1 = Struct_4(func_5(vec4<bool>(all(global3.zzy), any(vec2<bool>(global1.a.d.x, global1.a.d.x)), all(vec3<bool>(true, true, true)), true), countOneBits(38291i)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global3.wzw, Struct_2(global3.x & false, _wgslsmith_f_op_f32(var_2.d.x * var_2.d.x), 27192i, Struct_1(vec2<u32>(85463u, var_2.c), 4294967295u, vec4<i32>(25752i, var_2.a.c.x, 11056i, var_2.a.c.x), vec2<bool>(var_2.a.d.x, var_2.a.d.x), 4294967295u), !vec4<bool>(false, global3.x, var_3.x, false)), global1.a.b, global0[_wgslsmith_index_u32(4898u, 20u)]))), _wgslsmith_dot_vec2_u32(global1.a.a, ~u_input.b.yz), _wgslsmith_f_op_vec4_f32(min(global1.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-func_5(vec4<bool>(false, global3.x, global1.a.d.x, false), 7096i).d), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(global1.d, var_2.d), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.b, global1.d.x, 1071f, 951f), vec4<f32>(-793f, var_2.d.x, var_2.b, global1.b))), global3.x))))));
    var var_4 = func_5(vec4<bool>(true, func_2().b, global1.a.d.x, global3.x != any(global3.yyw)), firstLeadingBit(u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(-1i << (~4294967295u % 32u), _wgslsmith_dot_vec3_u32(~max(u_input.c.xyw, vec3<u32>(53271u, 4294967295u, u_input.a)) | ~(~vec3<u32>(54113u, 123628u, 25101u)), ~vec3<u32>(~32993u, 0u, reverseBits(var_4.a.b))));
}

