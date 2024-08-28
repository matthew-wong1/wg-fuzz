struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9>;

var<private> global1: Struct_1 = Struct_1(false, vec3<f32>(255f, 1427f, 377f), 4294967295u, vec4<bool>(false, false, true, false), vec3<f32>(1622f, 567f, 1000f));

var<private> global2: vec4<i32> = vec4<i32>(-64949i, 48059i, -46675i, -30865i);

var<private> global3: array<vec4<i32>, 16>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    var var_0 = vec2<u32>(~firstLeadingBit(4875u), arg_2.a.x >> (abs(~1u) % 32u)) >> (firstTrailingBit(arg_3.a.yx) % vec2<u32>(32u));
    var_0 = max(arg_3.a.zy, vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(global1.c, _wgslsmith_div_u32(57235u, u_input.a)), arg_2.a.x, _wgslsmith_add_u32(~4294967295u, abs(49875u))), abs(_wgslsmith_div_u32(4294967295u, u_input.a))));
    global1 = Struct_1(!(arg_0.x && arg_0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global1.b, global1.e)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_3.b.b), _wgslsmith_div_vec3_f32(arg_2.e.b, vec3<f32>(arg_2.e.e.x, 210f, arg_3.e.b.x)), arg_2.b.d.xxx)))), ~(global1.c | (1u & arg_2.e.c)), arg_3.c.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.e), arg_3.b.b) - _wgslsmith_f_op_vec3_f32(max(arg_3.b.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_2.c.e.x, -598f, global1.b.x))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(560f, 456f, arg_2.e.b.x)))))));
    var var_1 = vec2<bool>(global1.d.x, global1.a);
    global0 = array<Struct_2, 9>();
    return max(-1i, -10724i);
}

fn func_2(arg_0: bool, arg_1: Struct_2, arg_2: u32) -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(~(~1u), 9u)];
    global0 = array<Struct_2, 9>();
    let var_1 = min(-1i, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_1.d.x, arg_1.d.x), global2.x, reverseBits(-2147483647i)), firstTrailingBit(_wgslsmith_add_i32(arg_1.d.x, 6982i))) | var_0.d.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-921f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1763f + arg_1.c.e.x) + _wgslsmith_f_op_f32(exp2(global1.e.x))))));
    let var_3 = Struct_1(var_0.e.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1653f), _wgslsmith_f_op_f32(f32(-1f) * -1187f), -560f)) * _wgslsmith_div_vec3_f32(var_0.c.b, _wgslsmith_f_op_vec3_f32(-arg_1.e.e))), ~u_input.a, arg_1.c.d, var_0.e.e);
    return func_3(select(!(!select(arg_1.b.d, global1.d, true)), select(vec4<bool>(any(vec4<bool>(var_0.c.a, true, global1.d.x, true)), !global1.a, 30389i != global2.x, true), !vec4<bool>(arg_0, true, true, var_3.d.x), arg_0), true), var_1, arg_1, global0[_wgslsmith_index_u32(u_input.a, 9u)]);
}

fn func_1() -> vec4<bool> {
    global2 = vec4<i32>(1i, ~_wgslsmith_sub_i32(func_2(true, global0[_wgslsmith_index_u32(4294967295u, 9u)], 4294967295u) << (~1u % 32u), 5941i), abs(global2.x), min(global2.x, -1i));
    let var_0 = ~max(vec3<u32>(0u, min(0u, 45838u), 1u), ~(~vec3<u32>(global1.c, u_input.a, 24443u)));
    let var_1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-538f, global1.e.x, 1700f), global1.e, global1.a)))))), 11879u, select(select(!(!vec4<bool>(global1.a, true, true, false)), select(select(vec4<bool>(false, true, global1.d.x, false), vec4<bool>(false, global1.d.x, true, global1.a), vec4<bool>(global1.d.x, global1.a, global1.d.x, global1.a)), select(global1.d, vec4<bool>(global1.d.x, false, true, false), global1.d.x), vec4<bool>(false, false, true, global1.d.x)), select(!global1.d, !vec4<bool>(global1.d.x, global1.d.x, true, true), global1.d)), global1.d, !global1.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.b.x, -577f, 1f), global1.b)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(global1.e))))));
    var var_2 = select(vec4<bool>(true & global1.a, true, ~(~var_0.x) == max(reverseBits(global1.c), _wgslsmith_sub_u32(var_1.c, 34803u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x - var_1.e.x) + global1.b.x) < _wgslsmith_div_f32(global1.e.x, -895f)), select(select(var_1.d, var_1.d, vec4<bool>(true, global1.e.x < 1428f, global1.d.x, false)), vec4<bool>(true, any(var_1.d.zww), any(!global1.d), false), vec4<bool>(false, !any(var_1.d.zxy), any(!var_1.d.xxw), global1.a)), global1.d);
    let var_3 = -2147483647i;
    return vec4<bool>(any(var_1.d.zzz), global1.c <= 1u, true, global1.a);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = !(!(!select(global1.d, !vec4<bool>(global1.d.x, true, arg_1.d.x, false), false)));
    var var_1 = Struct_2(vec4<u32>(abs(4294967295u) | _wgslsmith_mod_u32(u_input.a, u_input.a), countOneBits(_wgslsmith_mult_u32(arg_1.c, 30319u)), global1.c, global1.c) >> (abs(~vec4<u32>(4294967295u, 1u, arg_1.c, global1.c)) % vec4<u32>(32u)), Struct_1(!(~global1.c <= _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 46893u, 40844u, 20855u), vec4<u32>(6398u, global1.c, 40296u, global1.c))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.b, arg_1.b, arg_0)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(359f, 741f, -2021f))))), min(_wgslsmith_add_u32(max(38722u, global1.c), 1u), min(79451u, ~1u)), var_0, vec3<f32>(252f, _wgslsmith_f_op_f32(-779f + _wgslsmith_f_op_f32(1605f - -969f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.e.x)) * _wgslsmith_f_op_f32(sign(689f))))), arg_1, global2.xyy, arg_1);
    var var_2 = arg_1.b.x;
    var var_3 = global0[_wgslsmith_index_u32(19257u, 9u)];
    var var_4 = ~func_2(var_1.e.d.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_1.c.c, 1u), 9u)], _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.c, var_3.e.c), var_1.a.zx), ~max(vec2<u32>(arg_1.c, global1.c), var_1.a.ww)));
    return Struct_1(all(vec2<bool>(false, any(var_1.b.d.xy))) || !any(select(var_0.wzz, vec3<bool>(var_0.x, true, false), vec3<bool>(var_3.e.a, false, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.b.x, -383f, _wgslsmith_f_op_f32(-880f * _wgslsmith_f_op_f32(floor(var_1.b.e.x)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.e.x, var_3.e.b.x, -804f))), global1.b) - vec3<f32>(-1226f, arg_1.e.x, _wgslsmith_f_op_f32(max(global1.e.x, 326f))))), ~98018u, vec4<bool>(true, any(vec2<bool>(var_0.x, all(vec4<bool>(false, true, true, false)))), any(func_1().wzz), false), vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(floor(global1.e.x)), 1469f));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec3<f32>) -> u32 {
    global2 = global3[_wgslsmith_index_u32(global1.c, 16u)];
    var var_0 = func_4(arg_1.d.yzx, Struct_1(global1.b.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.e.x * arg_2.x) - _wgslsmith_f_op_f32(sign(arg_2.x))), arg_2, u_input.a, global1.d, arg_1.e));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.b.x, var_0.b.x)) * -2125f), global1.b.x), arg_2.x)));
    var var_2 = Struct_2(vec4<u32>(~_wgslsmith_mod_u32(15341u, ~1u), ~arg_1.c, _wgslsmith_sub_u32(~var_0.c, 3378u), 14609u), arg_1, func_4(vec3<bool>(arg_1.d.x, arg_1.a, !arg_1.d.x), Struct_1(!global1.d.x, arg_1.b, u_input.a, select(!arg_0, arg_1.d, arg_1.d.x && true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.e.x, global1.b.x, -1027f), arg_1.b))))), global2.zxx, arg_1);
    var var_3 = global0[_wgslsmith_index_u32(u_input.a, 9u)];
    return _wgslsmith_sub_u32(max(arg_1.c, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(30149u, var_3.b.c)), _wgslsmith_sub_vec2_u32(var_2.a.xz, ~var_2.a.yx))), _wgslsmith_mod_u32(arg_1.c, abs(1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.c;
    let var_1 = global1.b.x;
    global1 = Struct_1(any(!vec3<bool>(false, global1.d.x, true)) && all(vec2<bool>(all(vec3<bool>(global1.d.x, global1.a, global1.a)), true)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(816f + _wgslsmith_f_op_f32(ceil(global1.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.e.x) + _wgslsmith_f_op_f32(global1.e.x - 1000f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1541f - global1.e.x))))), func_5(select(global1.d, !global1.d, true), func_4(!(!global1.d.yzw), Struct_1(!global1.d.x, vec3<f32>(global1.b.x, global1.e.x, global1.b.x), global1.c, func_1(), global1.e)), vec3<f32>(-1000f, global1.b.x, global1.e.x)), select(global1.d, select(vec4<bool>(true, func_1().x, global1.d.x, any(global1.d)), !(!vec4<bool>(global1.d.x, true, global1.d.x, global1.d.x)), true), func_4(!global1.d.zyz, func_4(vec3<bool>(true, false, false), func_4(global1.d.yxw, Struct_1(false, global1.e, global1.c, vec4<bool>(global1.d.x, global1.d.x, global1.d.x, global1.a), global1.b)))).a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.e))))));
    global3 = array<vec4<i32>, 16>();
    var var_2 = Struct_2(~_wgslsmith_clamp_vec4_u32(select(vec4<u32>(1u, global1.c, u_input.a, global1.c), select(vec4<u32>(75641u, 78482u, global1.c, 0u), vec4<u32>(37052u, u_input.a, u_input.a, global1.c), global1.d), global1.d.x), vec4<u32>(abs(1u), u_input.a | u_input.a, ~0u, ~35790u), abs(vec4<u32>(global1.c, u_input.a, 0u, global1.c)) >> (~vec4<u32>(0u, 0u, global1.c, u_input.a) % vec4<u32>(32u))), func_4(vec3<bool>(true, !global1.d.x, global1.a), func_4(!func_4(vec3<bool>(global1.a, global1.d.x, true), Struct_1(false, global1.e, 62428u, vec4<bool>(true, true, true, global1.a), global1.b)).d.yzw, Struct_1(true, vec3<f32>(382f, global1.e.x, 851f), ~global1.c, !vec4<bool>(true, global1.d.x, global1.a, true), global1.e))), func_4(global1.d.wxw, func_4(select(global1.d.yxx, !vec3<bool>(global1.a, global1.a, global1.d.x), !global1.d.x), Struct_1(true, _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.e.x, -713f, 1276f))), u_input.a, vec4<bool>(true, false, true, global1.d.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.e.x, 709f, -806f)))))), min(~global2.xxx & vec3<i32>(~global2.x, 1i >> (u_input.a % 32u), ~global2.x), select(~vec3<i32>(18281i, global2.x, global2.x), _wgslsmith_clamp_vec3_i32(firstTrailingBit(global2.xzw), _wgslsmith_sub_vec3_i32(vec3<i32>(35690i, -2147483647i, global2.x), global2.xwz), ~global2.yxw), vec3<bool>(global1.d.x | false, global1.a, global1.d.x))), Struct_1(false, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global1.b.x)))), global1.e.x), ~6560u, vec4<bool>(global1.d.x, _wgslsmith_f_op_f32(ceil(global1.b.x)) >= _wgslsmith_f_op_f32(step(global1.b.x, global1.e.x)), all(global1.d.yy), !global1.a), vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.e.x - global1.e.x) + _wgslsmith_f_op_f32(ceil(-1360f))), 326f)));
    let var_3 = func_4(var_2.c.d.yzz, var_2.c);
    var_2 = global0[_wgslsmith_index_u32(reverseBits(48587u), 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(-556f, ~(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.d.x, -3664i, -1i), var_2.d) << (_wgslsmith_mod_u32(u_input.a, 52247u) % 32u)) << (countOneBits(0u) % 32u));
}

