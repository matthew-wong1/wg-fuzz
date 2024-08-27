struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<u32> = vec3<u32>(3892u, 23384u, 65601u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = 1000f;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a + var_0)))) + _wgslsmith_f_op_f32(-var_0)), 0u);
    var var_2 = Struct_1(arg_3.a, var_1.b);
    global0 = (-firstLeadingBit(arg_1) <= arg_1) == true;
    var var_3 = Struct_2(Struct_1(var_0, 1u), 26561i, 1i < -arg_2.x);
    return !(!select(!select(vec2<bool>(false, var_3.c), vec2<bool>(false, var_3.c), var_3.c), !(!vec2<bool>(true, var_3.c)), vec2<bool>(!var_3.c, !var_3.c)));
}

fn func_2() -> u32 {
    let var_0 = func_3(Struct_1(625f, 1u), select(1i, 0i, all(vec3<bool>(true, true, true))), vec3<i32>(-(~1i), 1i, ~(~countOneBits(0i))), Struct_1(_wgslsmith_f_op_f32(min(900f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(663f, 1000f)), _wgslsmith_f_op_f32(-648f - -2008f)))), 0u));
    let var_1 = _wgslsmith_div_u32(u_input.a, ~countOneBits(1u));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1749f), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(global1.x, global1.x, var_1), vec3<u32>(~global1.x, ~u_input.a, 4294967295u)), vec3<u32>(global1.x, _wgslsmith_div_u32(_wgslsmith_div_u32(u_input.a, 4294967295u), 135058u), ~(~var_1))));
    let var_3 = Struct_1(-1000f, ~u_input.a);
    global0 = true;
    return min(_wgslsmith_mod_u32(0u, 4294967295u), u_input.a) | var_3.b;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: u32) -> Struct_2 {
    global0 = all(!arg_1.zy);
    global1 = vec3<u32>(~countOneBits(85481u), 16056u, func_2());
    global0 = arg_1.x;
    var var_0 = ~(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 35965u, 25722u, 31407u), vec4<u32>(u_input.a, 15556u, 1u, arg_2)) & arg_2, ~76772u));
    var var_1 = vec4<i32>(-4926i, select(35872i, firstTrailingBit(firstTrailingBit(1i)), -247f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1364f) + _wgslsmith_f_op_f32(round(-1000f)))), abs(1i), _wgslsmith_div_i32(abs(0i), 1i));
    return Struct_2(Struct_1(arg_0.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~global1.xz, vec2<u32>(global1.x, arg_2)), ~(~4294967295u))), 27853i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_0.x)))) - _wgslsmith_f_op_f32(max(arg_0.x, arg_0.x))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-arg_0.x))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    global1 = vec3<u32>(11367u, 0u, global1.x) << (vec3<u32>(func_2(), 0u, _wgslsmith_mult_u32(func_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.a.a, -1678f))), vec3<bool>(false, true, true), arg_1.a.b).a.b, 0u)) % vec3<u32>(32u));
    let var_0 = arg_1.a.a;
    var var_1 = Struct_2(Struct_1(1000f, _wgslsmith_mult_u32(~4294967295u, ~_wgslsmith_sub_u32(arg_2.a.b, arg_2.a.b))), -2147483647i, !select(all(!vec4<bool>(false, true, arg_2.c, arg_2.c)), _wgslsmith_sub_i32(arg_1.b, -7034i) >= arg_2.b, true));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(sign(arg_2.a.a)), ~_wgslsmith_sub_u32(~14855u, arg_1.a.b << (_wgslsmith_dot_vec2_u32(global1.yy, global1.zx) % 32u)));
    var_2 = Struct_1(_wgslsmith_div_f32(arg_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, var_0, true)))), 79972u);
    return var_1.a;
}

fn func_5(arg_0: Struct_1) -> vec3<u32> {
    global0 = func_3(func_4(vec4<i32>(1i << (global1.x % 32u), reverseBits(0i), _wgslsmith_dot_vec4_i32(vec4<i32>(52480i, 2083i, -2482i, 0i), firstTrailingBit(vec4<i32>(28071i, 8704i, 1i, 1i))), ~func_1(vec2<f32>(arg_0.a, -153f), vec3<bool>(false, false, false), 0u).b), Struct_2(arg_0, -1i, (global1.x >> (arg_0.b % 32u)) <= u_input.a), Struct_2(func_4(firstLeadingBit(vec4<i32>(57117i, 6943i, -2147483647i, 1i)), func_1(vec2<f32>(arg_0.a, arg_0.a), vec3<bool>(true, true, false), arg_0.b), Struct_2(Struct_1(arg_0.a, 51939u), 21070i, false)), 2147483647i, all(vec3<bool>(true, true, true)))), ~23927i, -firstLeadingBit(vec3<i32>(1i, 1i, 1i)), Struct_1(arg_0.a, reverseBits(global1.x))).x;
    global1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, ~(arg_0.b & 20846u), func_4(vec4<i32>(0i, -9080i, 2147483647i, 0i), func_1(vec2<f32>(-309f, arg_0.a), vec3<bool>(true, false, true), 17001u), Struct_2(Struct_1(arg_0.a, global1.x), 0i, true)).b), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(92302u, 4294967295u), ~u_input.a, ~u_input.a), vec3<u32>(global1.x, 586u, 23243u) ^ ~vec3<u32>(u_input.a, arg_0.b, 1u))), vec3<u32>(_wgslsmith_clamp_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 39292u, 25303u, global1.x), vec4<u32>(35633u, 45723u, global1.x, 49372u)), ~global1.x) & select(countOneBits(arg_0.b), 63449u, all(vec4<bool>(true, true, false, true))), _wgslsmith_sub_u32(~94960u, u_input.a), 28835u));
    let var_0 = false;
    global0 = select(any(!(!select(vec4<bool>(var_0, var_0, false, false), vec4<bool>(var_0, false, false, var_0), var_0))), 0u > ~(global1.x | u_input.a), false);
    global1 = vec3<u32>(select(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(29266u, global1.x, 1u, 1u), vec4<u32>(64167u, global1.x, global1.x, arg_0.b))) & u_input.a, ~1u, true), ~(~u_input.a) | abs(7310u), _wgslsmith_sub_u32(~(_wgslsmith_mult_u32(global1.x, 108788u) >> (8078u % 32u)), arg_0.b));
    return vec3<u32>(1u, ~(~(~reverseBits(4181u))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(func_5(func_4(vec4<i32>(0i, 18299i, 2950i, -36218i), func_1(vec2<f32>(-828f, -617f), vec3<bool>(true, true, false), 9525u), func_1(vec2<f32>(-993f, -2409f), vec3<bool>(false, false, true), global1.x))) & ~_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, u_input.a, u_input.a), ~vec3<u32>(u_input.a, u_input.a, global1.x)));
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-580f, -1439f)), 1095f))))) == _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(2691f, 1020f)), -638f)))));
    let var_0 = _wgslsmith_clamp_i32(1i, 8143i, 41658i);
    var var_1 = Struct_2(func_4(vec4<i32>(0i, 59430i >> (global1.x % 32u), ~var_0, i32(-1i) * -33115i), func_1(vec2<f32>(1f, 1f), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), ~_wgslsmith_mod_u32(4294967295u, 4294967295u)), Struct_2(func_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-193f, -207f))), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), false), _wgslsmith_clamp_u32(global1.x, 1u, 34236u)).a, var_0, false != all(vec3<bool>(true, false, true)))), -var_0, true);
    let var_2 = Struct_2(var_1.a, _wgslsmith_div_i32(-_wgslsmith_div_i32(1i, -6951i), ~var_0), var_1.c);
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.a, 962f), vec2<f32>(var_1.a.a, 687f)) + _wgslsmith_div_vec2_f32(vec2<f32>(-581f, var_2.a.a), vec2<f32>(var_2.a.a, var_1.a.a))))))));
    var var_4 = var_2.a;
    var var_5 = !func_3(Struct_1(var_2.a.a, var_1.a.b ^ global1.x), _wgslsmith_div_i32(-2147483647i, 15841i), ~(-vec3<i32>(-63289i, 28081i, var_2.b)), Struct_1(func_1(vec2<f32>(var_1.a.a, var_2.a.a), vec3<bool>(var_1.c, false, var_1.c), 7513u).a.a, 1u)).x || var_2.c;
    var var_6 = min(~vec4<u32>(12022u, u_input.a, ~(~0u), 1u), ~vec4<u32>(48285u, max(global1.x, select(global1.x, 32383u, false)), 1u, _wgslsmith_mod_u32(var_2.a.b, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1641f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -767f)))));
}

