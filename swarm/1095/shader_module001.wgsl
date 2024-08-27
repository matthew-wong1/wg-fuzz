struct Struct_1 {
    a: vec4<bool>,
    b: vec2<u32>,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13>;

var<private> global1: f32;

var<private> global2: bool;

var<private> global3: vec3<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec4<u32>) -> f32 {
    let var_0 = global3.x;
    var var_1 = Struct_3(~(-abs(global3.x)), 1114f, arg_1.c, u_input.b.zz, arg_1.e);
    global2 = !(!(!select(true, all(var_1.e.c.a.yy), !arg_1.e.d)));
    global3 = u_input.b.zww;
    var var_2 = Struct_3(global3.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.e.b * _wgslsmith_f_op_f32(-896f + arg_1.b)), _wgslsmith_f_op_f32(abs(730f)))), 362f)), arg_1.b, global3.xy, var_1.e);
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-934f, var_1.b)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1038f, -829f)))));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = -u_input.b.zx;
    var var_1 = u_input.a;
    let var_2 = 301f;
    var_1 = arg_1.x;
    let var_3 = u_input.b;
    return Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-782f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.a, arg_1.x), global0[_wgslsmith_index_u32(arg_1.x, 13u)], vec4<u32>(33990u, 59822u, arg_1.x, 0u))))))), _wgslsmith_f_op_f32(var_2 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f)))), arg_3, true);
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(arg_2.c, _wgslsmith_f_op_f32(-741f - _wgslsmith_div_f32(-1264f, 1117f))), arg_2.c, _wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(exp2(func_2(select(false, true, arg_1.x), arg_2.e.c.b, u_input.b.xwx, Struct_1(arg_2.e.c.a, vec2<u32>(arg_2.e.c.b.x, arg_2.e.c.b.x), false, false, global3.x)).b)))));
    let var_1 = func_2(arg_1.x & (true & ((1u >> (u_input.a % 32u)) <= reverseBits(arg_2.e.c.b.x))), arg_2.e.c.b ^ arg_2.e.c.b, vec3<i32>(~_wgslsmith_mod_i32(-43484i, 6375i), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 26696i, -2147483647i, 143i), u_input.b), countOneBits(arg_2.d.x)) << (vec3<u32>(~36384u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.e.c.b.x, u_input.a, 0u, 4294967295u), vec4<u32>(arg_2.e.c.b.x, arg_2.e.c.b.x, u_input.a, arg_2.e.c.b.x)), _wgslsmith_sub_u32(~u_input.a, u_input.a << (4294967295u % 32u))) % vec3<u32>(32u)), Struct_1(!arg_2.e.c.a, vec2<u32>(max(1u & u_input.a, 0u), ~21512u), true, !any(arg_2.e.c.a.wyy), -2147483647i));
    var var_2 = u_input.a;
    var var_3 = Struct_1(select(select(!(!var_1.c.a), vec4<bool>(arg_2.e.d, arg_1.x, !arg_2.e.c.c, false), !select(var_1.c.a, vec4<bool>(false, var_1.d, var_1.d, true), arg_1.x)), !var_1.c.a, all(select(func_2(false, vec2<u32>(0u, var_1.c.b.x), u_input.b.yxy, Struct_1(arg_2.e.c.a, vec2<u32>(var_1.c.b.x, 1u), var_1.c.c, arg_1.x, -1i)).c.a.zw, vec2<bool>(false, arg_1.x), !vec2<bool>(var_1.d, false)))), vec2<u32>(abs(countOneBits(~u_input.a)), countOneBits(firstLeadingBit(var_1.c.b.x) >> (reverseBits(3523u) % 32u))), arg_2.e.d, -563f != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))), var_1.c.e);
    var_2 = var_1.c.b.x;
    return func_2(true, arg_2.e.c.b, ~(-vec3<i32>(-1i, u_input.b.x, u_input.b.x)) << (vec3<u32>(0u, countOneBits(var_1.c.b.x), 1u) % vec3<u32>(32u)), arg_2.e.c);
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = func_4(global3.x, vec3<bool>((min(arg_0.x, 0u) >> (1u % 32u)) >= 0u, true, u_input.b.x >= (-12609i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(39579u, 1u), arg_0.xx) % 32u))), Struct_3(global3.x, -1126f, _wgslsmith_f_op_f32(select(834f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -256f)), _wgslsmith_f_op_f32(select(-1466f, -806f, true)) <= _wgslsmith_f_op_f32(sign(-904f)))), _wgslsmith_div_vec2_i32(select(u_input.b.xz, vec2<i32>(-2147483647i, -65871i) >> (arg_0.wx % vec2<u32>(32u)), vec2<bool>(true, true)), vec2<i32>(~global3.x, firstTrailingBit(33755i))), func_2(true, (vec2<u32>(arg_0.x, arg_0.x) >> (vec2<u32>(0u, 102275u) % vec2<u32>(32u))) >> ((vec2<u32>(28541u, u_input.a) ^ arg_0.xz) % vec2<u32>(32u)), vec3<i32>(2147483647i, ~24809i, ~global3.x), Struct_1(vec4<bool>(true, true, true, true), arg_0.zw << (vec2<u32>(u_input.a, 55224u) % vec2<u32>(32u)), arg_0.x == arg_0.x, true, -u_input.b.x))));
    let var_1 = func_4(-(~(35914i << (var_0.c.b.x % 32u))), vec3<bool>(true, _wgslsmith_clamp_u32(abs(84742u), ~arg_0.x, ~u_input.a) != 1u, all(var_0.c.a.wyx)), Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, countOneBits(var_0.c.e), ~0i), firstTrailingBit(~vec3<i32>(20929i, -2147483647i, -1i))), _wgslsmith_f_op_f32(select(var_0.a, var_0.a, true)), _wgslsmith_f_op_f32(-var_0.b), global3.yy, func_2(var_0.c.d, var_0.c.b | select(vec2<u32>(0u, 3202u), var_0.c.b, vec2<bool>(var_0.c.a.x, false)), countOneBits(vec3<i32>(0i, var_0.c.e, -43604i) >> (arg_0.xwz % vec3<u32>(32u))), var_0.c))).c;
    let var_2 = var_1;
    var var_3 = var_1;
    let var_4 = vec4<bool>(!(u_input.b.x <= -2147483647i), !select(true, any(!vec2<bool>(true, var_1.a.x)), any(select(var_3.a, vec4<bool>(var_2.c, false, var_0.d, var_1.c), var_2.d))), false, true);
    return Struct_1(var_3.a, select(~var_1.b, ~(func_4(1i, var_2.a.wyy, Struct_3(-26031i, 1595f, var_0.a, global3.zz, Struct_2(var_0.a, var_0.b, Struct_1(vec4<bool>(var_0.c.a.x, true, true, false), vec2<u32>(4294967295u, 22905u), false, var_4.x, var_1.e), true))).c.b << (var_3.b % vec2<u32>(32u))), var_2.d | true), !all(vec3<bool>(!var_2.d, true, true)), false, 1i);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    global0 = array<Struct_3, 13>();
    let var_0 = arg_2.a.wxz;
    var var_1 = Struct_3(arg_2.e | -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(arg_0.e, -39509i), global3.x, ~u_input.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.b)) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(arg_1.a, 859f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(abs(~vec2<u32>(0u, arg_2.b.x)), Struct_3(arg_0.e ^ 2147483647i, arg_1.a, arg_1.a, u_input.b.yy << (arg_2.b % vec2<u32>(32u)), arg_1), vec4<u32>(1760u, 32418u, _wgslsmith_div_u32(9320u, 1u), arg_0.b.x))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(~arg_2.b, Struct_3(u_input.b.x, -666f, arg_1.a, vec2<i32>(-14523i, arg_0.e), arg_1), min(vec4<u32>(arg_0.b.x, u_input.a, arg_0.b.x, arg_0.b.x), vec4<u32>(arg_1.c.b.x, arg_0.b.x, arg_2.b.x, 1u))))))), u_input.b.ww, arg_1);
    var var_2 = select(vec3<bool>(true, true, true), !arg_0.a.yxw, vec3<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.a), arg_1.b)) != _wgslsmith_f_op_f32(step(407f, _wgslsmith_f_op_f32(-421f + -2059f))), func_4(_wgslsmith_sub_i32(-1i, 17604i), select(func_4(1i, vec3<bool>(true, true, arg_1.d), global0[_wgslsmith_index_u32(u_input.a, 13u)]).c.a.yzw, !arg_0.a.yyy, var_0.x != var_1.e.d), global0[_wgslsmith_index_u32(var_1.e.c.b.x, 13u)]).c.c, all(vec3<bool>(all(vec2<bool>(var_0.x, var_0.x)), true, -365f <= var_1.c))));
    var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1.c.b.x, ~max(5732u, 9538u)), 13u)];
    return 793f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * 782f), _wgslsmith_f_op_f32(trunc(-1285f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -246f), _wgslsmith_f_op_f32(func_5(Struct_1(vec4<bool>(true, true, true, true), firstLeadingBit(vec2<u32>(u_input.a, 0u)), true, true, global3.x << (u_input.a % 32u)), Struct_2(-453f, _wgslsmith_f_op_f32(f32(-1f) * -2236f), Struct_1(vec4<bool>(false, false, false, true), vec2<u32>(4294967295u, u_input.a), true, true, 19843i), true), func_1(~vec4<u32>(4294967295u, 0u, u_input.a, u_input.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1442f, 279f)) - _wgslsmith_div_f32(-1000f, 360f))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-func_2(true, vec2<u32>(0u, u_input.a), -vec3<i32>(-14340i, -2147483647i, u_input.b.x), func_4(1i, vec3<bool>(false, false, true), Struct_3(global3.x, var_0.x, var_0.x, vec2<i32>(u_input.b.x, 1i), Struct_2(var_0.x, -376f, Struct_1(vec4<bool>(false, true, true, false), vec2<u32>(48592u, 17423u), true, true, -2147483647i), true))).c).b))) + -1044f);
    let var_2 = var_0.x;
    var var_3 = u_input.a;
    let var_4 = 436f != var_1;
    let var_5 = vec4<bool>(!var_4, !all(func_2(false, ~vec2<u32>(4294967295u, u_input.a), u_input.b.wxz, Struct_1(vec4<bool>(var_4, var_4, true, var_4), vec2<u32>(1u, 0u), false, true, 2147483647i)).c.a.wxy), any(vec4<bool>(select(true, false, var_4), var_4, select(func_4(12355i, vec3<bool>(var_4, false, true), Struct_3(1872i, 1031f, var_1, vec2<i32>(global3.x, -3730i), Struct_2(var_1, var_0.x, Struct_1(vec4<bool>(false, true, true, var_4), vec2<u32>(u_input.a, u_input.a), var_4, false, global3.x), false))).d, global3.x < -2147483647i, func_1(vec4<u32>(u_input.a, u_input.a, u_input.a, 32740u)).d), false)), any(vec3<bool>(!all(vec3<bool>(true, var_4, var_4)), true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b, _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(1u, u_input.a)) ^ ~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(61752u, 4294967295u)), func_4(~0i, vec3<bool>(false, true, var_5.x), Struct_3(~1i, _wgslsmith_f_op_f32(var_0.x + 762f), _wgslsmith_f_op_f32(-var_1), -vec2<i32>(1i, global3.x), func_2(true, vec2<u32>(u_input.a, 0u), vec3<i32>(u_input.b.x, -1i, u_input.b.x), Struct_1(vec4<bool>(false, var_5.x, var_5.x, true), vec2<u32>(u_input.a, 1u), true, true, 11762i)))).c.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) - -1000f));
}

