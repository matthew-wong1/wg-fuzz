struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec2<bool>, 2>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec4<f32>) -> bool {
    var var_0 = u_input.b.zww;
    let var_1 = Struct_2(~abs(-u_input.b), Struct_1(!global1[_wgslsmith_index_u32(firstTrailingBit(0u), 2u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1703f - 753f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -321f)))), arg_1 & all(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.a), 2u)]), ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_0.x, u_input.d, u_input.b.x, -2147483647i)), abs(vec4<i32>(u_input.d, 1i, 39230i, u_input.b.x)))), u_input.b.xyz);
    var var_2 = countOneBits(~6517u) >> (u_input.a % 32u);
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2)), _wgslsmith_f_op_vec4_f32(arg_2 + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -345f, -317f, 922f) + arg_2))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(340f, 612f, 981f, arg_2.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1045f, arg_2.x, -433f, 512f) - arg_2))))))));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_3.xxz, vec3<f32>(993f, -187f, 534f), false)) * arg_2.zzx) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1516f, var_3.x, 2606f)) * _wgslsmith_f_op_vec3_f32(sign(var_3.zzw)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(arg_2.yzx, var_3.yxy), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, -834f, var_1.b.b), var_3.zxw)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, 397f, -915f) * vec3<f32>(var_3.x, 828f, 315f)))))));
    return false;
}

fn func_2(arg_0: u32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-1051f, global0.x, 1735f), vec3<f32>(955f, global0.x, -1277f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -1000f, -1352f), vec3<f32>(global0.x, global0.x, global0.x)))), select(vec3<bool>(true, true, func_3(1i, false, vec4<f32>(386f, -334f, global0.x, 467f))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), true), true))));
    let var_0 = vec3<bool>(select(any(vec3<bool>(true, true, true)), all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), true)), true) | false, all(vec2<bool>(true, (4294967295u | arg_0) >= 4294967295u)), u_input.a >= 1u);
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, global0.x, 2965f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -315f, global0.x)) * vec3<f32>(global0.x, -1147f, global0.x)))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(f32(-1f) * -1968f), any(var_0.xx))), global0.x, global0.x)));
    var var_2 = Struct_2(u_input.b, Struct_1(!vec2<bool>(false, var_0.x), _wgslsmith_f_op_f32(-var_1.x), !var_0.x, u_input.b.x), abs(u_input.b.wzy));
    var_1 = vec3<f32>(var_2.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.b, _wgslsmith_f_op_f32(-1000f * 121f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(556f, _wgslsmith_f_op_f32(-var_1.x))) + -380f), 483f));
    return Struct_1(var_0.yz, -304f, var_2.c.x <= u_input.b.x, _wgslsmith_div_i32(0i, ~u_input.d));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_2(-vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.d, 8015i), ~u_input.b.x), -u_input.b.x, u_input.b.x, u_input.b.x), func_2(4915u), -min(~u_input.b.yww << (u_input.c.xxw % vec3<u32>(32u)), vec3<i32>(1i, 27880i, 0i)));
    global1 = array<vec2<bool>, 2>();
    let var_1 = var_0.a;
    var var_2 = Struct_2(vec4<i32>((1i << (1u % 32u)) ^ u_input.b.x, -1i, u_input.b.x, var_1.x), Struct_1(var_0.b.a, global0.x, any(!vec3<bool>(var_0.b.a.x, var_0.b.c, var_0.b.a.x)), 2147483647i), min(vec3<i32>(1i ^ _wgslsmith_clamp_i32(2147483647i, var_0.b.d, u_input.b.x), var_0.a.x, var_0.c.x), countOneBits(-vec3<i32>(-2147483647i, 18001i, -23454i))));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-271f, -1513f, _wgslsmith_f_op_f32(sign(var_0.b.b))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -598f), var_2.b.b, _wgslsmith_f_op_f32(-1080f - global0.x)), vec3<f32>(_wgslsmith_f_op_f32(var_2.b.b - var_0.b.b), var_2.b.b, var_0.b.b))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1989f), -682f, _wgslsmith_f_op_f32(max(474f, -1650f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-326f, -396f, var_2.b.b)))), select(select(vec3<bool>(var_0.b.c, true, false), vec3<bool>(true, true, true), var_2.b.c), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(var_2.b.c, false, var_0.b.c)), var_2.c.x != var_1.x))), vec3<bool>(!(4294967295u < u_input.a), false, ~u_input.a != _wgslsmith_dot_vec3_u32(u_input.c.zyx, u_input.c.xxw)))));
    return var_0.b;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = ~firstTrailingBit(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(11336u, u_input.c.x), u_input.c.wx & vec2<u32>(u_input.c.x, 4294967295u), u_input.c.zz));
    var_0 = ~_wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_div_u32(14950u, u_input.c.x), var_0.x ^ abs(46676u)), _wgslsmith_sub_vec2_u32(~countOneBits(vec2<u32>(1u, 36842u)), u_input.c.wx));
    global0 = vec3<f32>(877f, -114f, arg_0.b);
    let var_1 = Struct_1(func_1().a, arg_0.b, arg_0.d < arg_0.d, -func_1().d);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global0.x))))))), _wgslsmith_f_op_f32(round(func_2(u_input.a).b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) * _wgslsmith_f_op_f32(exp2(arg_0.b))));
    return Struct_1(vec2<bool>(!arg_0.a.x, false), arg_0.b, arg_0.a.x, firstTrailingBit(~arg_0.d));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_1 {
    global1 = array<vec2<bool>, 2>();
    global1 = array<vec2<bool>, 2>();
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, func_1().b, _wgslsmith_f_op_f32(-3358f * 382f)) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1337f, arg_1.b, 2010f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.b, arg_1.b, arg_1.b)), select(arg_3.wzx, vec3<bool>(arg_3.x, true, arg_3.x), arg_3.ywz)))))));
    var var_0 = arg_3.x;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(2696f * arg_2.b), -1147f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.b, global0.x, 111f), vec3<f32>(global0.x, arg_1.b, arg_1.b))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_2.b, arg_1.b) - vec3<f32>(global0.x, arg_2.b, -1385f)))))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.c.x;
    global1 = array<vec2<bool>, 2>();
    let var_1 = Struct_2(~u_input.b, func_5(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x & 20547u, _wgslsmith_clamp_u32(u_input.a, u_input.a, var_0), var_0), u_input.c.wwy), Struct_1(vec2<bool>(true, true), global0.x, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), 1i | -u_input.d), func_4(func_1()), vec4<bool>(true, true, true, true)), select(max(u_input.b.wyy, ~(-vec3<i32>(u_input.b.x, 1i, 23464i))), u_input.b.wwx, true));
    let var_2 = Struct_2(var_1.a, Struct_1(select(!vec2<bool>(var_1.b.c, false), global1[_wgslsmith_index_u32(~var_0 << (~var_0 % 32u), 2u)], var_1.b.c), var_1.b.b, !any(select(vec4<bool>(var_1.b.c, var_1.b.a.x, var_1.b.a.x, var_1.b.a.x), vec4<bool>(false, true, var_1.b.a.x, var_1.b.a.x), var_1.b.a.x)), var_1.a.x >> (~_wgslsmith_sub_u32(u_input.c.x, 4294967295u) % 32u)), _wgslsmith_clamp_vec3_i32(-(~vec3<i32>(u_input.d, u_input.b.x, -1i)), vec3<i32>(-24471i, 0i, u_input.d), abs(~var_1.a.wyz)));
    let var_3 = Struct_2(vec4<i32>(-3298i, abs(i32(-1i) * -2147483647i), _wgslsmith_dot_vec4_i32(-(var_1.a >> (u_input.c % vec4<u32>(32u))), vec4<i32>(_wgslsmith_mult_i32(11771i, u_input.d), var_1.c.x, _wgslsmith_dot_vec4_i32(var_1.a, var_1.a), _wgslsmith_add_i32(u_input.d, 21051i))), 0i), func_1(), firstLeadingBit(u_input.b.wzx));
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.b.b, global0.x, func_1().b) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.b.b, var_1.b.b), _wgslsmith_f_op_f32(select(var_3.b.b, 782f, var_2.b.a.x))), 1656f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.b))))));
    global1 = array<vec2<bool>, 2>();
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.b.b, -415f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2.b.b, var_1.b.b)), -411f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - var_1.b.b), global0.x)), var_3.b.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.b, var_2.b.b, 888f) - vec3<f32>(var_1.b.b, global0.x, global0.x)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.b.b, 376f, -249f), vec3<f32>(var_2.b.b, global0.x, var_1.b.b), true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(744f, -967f, 603f))))), false));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1000f, 2134f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - var_3.b.b)) * 302f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-func_1().b))), vec2<i32>(2147483647i, countOneBits(firstLeadingBit(33820i)) >> (_wgslsmith_div_u32(min(var_0, var_0), u_input.c.x) % 32u)), -39413i, -(u_input.d ^ 2147483647i));
}

