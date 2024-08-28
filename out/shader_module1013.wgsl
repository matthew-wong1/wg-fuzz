struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2;
    var_0 = Struct_1(~40185u, _wgslsmith_f_op_f32(247f - var_0.b));
    var var_1 = select(vec4<bool>(true, true, global0.x, true), vec4<bool>(any(select(vec4<bool>(arg_0, false, arg_0, true), select(vec4<bool>(false, arg_0, false, false), vec4<bool>(arg_0, arg_0, arg_0, true), arg_0), !global0.x)), false, global0.x, (18715i > u_input.a) == arg_0), !select(select(select(vec4<bool>(false, false, arg_0, true), vec4<bool>(true, arg_0, global0.x, global0.x), arg_0), select(vec4<bool>(arg_0, false, false, arg_0), vec4<bool>(arg_0, false, arg_0, arg_0), global0.x), false), select(!vec4<bool>(arg_0, global0.x, true, false), !vec4<bool>(global0.x, false, arg_0, true), any(global0.zx)), false));
    let var_2 = -2194f;
    var_0 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-2017f, -660f, true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1859f))))));
}

fn func_2(arg_0: bool) -> u32 {
    global0 = vec3<bool>(!(!global0.x), true, (i32(-1i) * -2147483647i) <= firstLeadingBit(u_input.a));
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1582f + 1270f) + -485f), -151f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-617f)))) - _wgslsmith_f_op_f32(max(-271f, _wgslsmith_f_op_f32(floor(-2062f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(arg_0, ~vec2<i32>(u_input.a, u_input.a), Struct_1(u_input.b.x, -1217f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(152f, 1000f)), true)))));
    global0 = select(!select(select(vec3<bool>(false, arg_0, global0.x), !vec3<bool>(arg_0, false, false), !arg_0), select(vec3<bool>(false, false, arg_0), vec3<bool>(true, false, global0.x), select(vec3<bool>(global0.x, false, arg_0), vec3<bool>(false, false, false), vec3<bool>(global0.x, global0.x, true))), select(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, false, global0.x), vec3<bool>(arg_0, global0.x, arg_0)), vec3<bool>(false, false, global0.x), u_input.b.x >= u_input.b.x)), !(!vec3<bool>(global0.x, all(vec4<bool>(true, global0.x, global0.x, false)), true)), select(vec3<bool>(!(!arg_0), false, arg_0), !(!select(vec3<bool>(false, true, true), vec3<bool>(arg_0, false, arg_0), vec3<bool>(arg_0, true, true))), any(!select(vec4<bool>(true, global0.x, arg_0, arg_0), vec4<bool>(true, false, true, global0.x), true))));
    global0 = vec3<bool>(!global0.x, var_0.x < 1847f, arg_0 | any(!(!vec3<bool>(arg_0, true, global0.x))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<f32>(var_0.x, 459f, var_0.x, 704f), var_0.x == var_0.x)), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(max(968f, -317f)), var_0.x))));
    return 21451u;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>) -> Struct_2 {
    global0 = select(vec3<bool>(global0.x, all(!vec2<bool>(global0.x, false)), !arg_0.a.x), !arg_0.b.zyx, arg_0.b.yyw);
    global0 = vec3<bool>((-1309f < arg_0.d.b) & all(select(!vec3<bool>(global0.x, global0.x, true), !arg_0.a.zyz, arg_0.b.x)), !global0.x & select(true, true, _wgslsmith_f_op_f32(-arg_0.d.b) <= _wgslsmith_f_op_f32(-arg_0.d.b)), global0.x);
    let var_0 = Struct_2(vec4<bool>(any(vec2<bool>(true, true)), all(select(!arg_0.b.zy, global0.zx, vec2<bool>(true, true))), true, !(~u_input.a < -52334i)), select(vec4<bool>(!select(global0.x, global0.x, arg_0.b.x), any(vec2<bool>(true, arg_0.b.x)) & global0.x, true, true), vec4<bool>(true, (1u & u_input.b.x) != firstTrailingBit(38248u), true, _wgslsmith_mult_i32(u_input.a, u_input.a) < 1i), vec4<bool>(arg_0.a.x, all(arg_0.b.yw), all(!vec4<bool>(false, arg_0.a.x, arg_0.a.x, arg_0.b.x)), 22955u < _wgslsmith_clamp_u32(arg_0.d.a, arg_0.d.a, 30862u))), arg_1.x, Struct_1(~1u, arg_0.d.b));
    return arg_0;
}

fn func_1(arg_0: vec4<f32>) -> Struct_2 {
    let var_0 = func_4(Struct_2(!(!vec4<bool>(false, true, true, global0.x)), vec4<bool>(select(false, false, global0.x) || (-2147483647i >= u_input.a), all(vec3<bool>(false, global0.x, global0.x)) || (arg_0.x < arg_0.x), _wgslsmith_f_op_f32(arg_0.x + arg_0.x) < _wgslsmith_f_op_f32(-arg_0.x), arg_0.x > _wgslsmith_f_op_f32(floor(-242f))), func_2(false), Struct_1(_wgslsmith_sub_u32(87145u, 1u), _wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(abs(1320f))))), u_input.b.xy);
    global0 = vec3<bool>(!(!func_4(func_4(Struct_2(var_0.a, vec4<bool>(true, true, global0.x, global0.x), 0u, var_0.d), u_input.b.zx), u_input.b.xx).a.x), true, _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(arg_0.x + -785f))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(530f)), -1163f));
    global0 = select(!var_0.a.wzw, func_4(Struct_2(var_0.a, vec4<bool>(true, u_input.a >= u_input.a, true, select(var_0.b.x, global0.x, true)), ~(~var_0.c), var_0.d), vec2<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(56976u, u_input.b.x), u_input.b.x), u_input.b.x)).a.xwx, !(_wgslsmith_f_op_f32(sign(139f)) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1000f, var_0.d.b))))));
    global0 = var_0.b.xwz;
    global0 = !func_4(func_4(func_4(var_0, min(vec2<u32>(u_input.b.x, 0u), u_input.b.xz)), max(_wgslsmith_mod_vec2_u32(u_input.b.yy, u_input.b.xx), u_input.b.zx)), abs(_wgslsmith_mod_vec2_u32(max(u_input.b.zy, u_input.b.zy), u_input.b.xz << (u_input.b.xz % vec2<u32>(32u))))).a.xzy;
    return Struct_2(select(!func_4(Struct_2(vec4<bool>(global0.x, false, true, var_0.b.x), var_0.a, u_input.b.x, var_0.d), vec2<u32>(u_input.b.x, 3387u)).a, vec4<bool>(false, any(vec3<bool>(true, true, true)), var_0.a.x != any(vec4<bool>(global0.x, true, false, true)), false), var_0.a), !(!select(!var_0.b, vec4<bool>(true, false, false, var_0.b.x), vec4<bool>(var_0.b.x, false, true, true))), func_2(!global0.x), var_0.d);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = arg_0.d;
    var var_1 = arg_1.x;
    var var_2 = Struct_1(~var_0.a, 1316f);
    var_1 = var_2.b;
    global0 = arg_0.b.wyw;
    return func_4(func_4(arg_0, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), u_input.b.yz, vec2<u32>(0u, u_input.b.x)) ^ u_input.b.zx), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(var_2.a, 5437u), vec2<u32>(47362u, 77567u)) >> (min(reverseBits(vec2<u32>(21774u, 0u)) & ~u_input.b.zx, ~(~vec2<u32>(57979u, 46024u))) % vec2<u32>(32u))).d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(vec4<f32>(-1349f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(784f, 834f, global0.x)))), -829f, _wgslsmith_f_op_f32(ceil(-2105f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(607f, 188f) * vec2<f32>(1000f, -2066f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(863f, 122f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(613f, 1629f), vec2<f32>(-281f, 623f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1875f, 260f))))));
    var var_1 = !(func_4(Struct_2(!vec4<bool>(false, false, true, global0.x), func_4(Struct_2(vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), var_0.a, var_0), u_input.b.yz).b, var_0.a, func_4(Struct_2(vec4<bool>(global0.x, false, true, false), vec4<bool>(true, true, false, global0.x), 5402u, Struct_1(u_input.b.x, var_0.b)), vec2<u32>(23260u, var_0.a)).d), vec2<u32>(var_0.a, 0u) >> (vec2<u32>(31635u, u_input.b.x) % vec2<u32>(32u))).a.x && (true & all(!vec4<bool>(true, global0.x, false, false))));
    let var_2 = !func_4(Struct_2(!vec4<bool>(true, global0.x, false, false), !vec4<bool>(global0.x, false, false, true), u_input.b.x, func_5(func_1(vec4<f32>(-1389f, -600f, -413f, var_0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, 280f)))), _wgslsmith_div_vec2_u32(~u_input.b.yx, _wgslsmith_clamp_vec2_u32(u_input.b.zz, u_input.b.yz, vec2<u32>(52643u, var_0.a)) | firstLeadingBit(u_input.b.yz))).a.x;
    var_1 = false;
    var var_3 = firstTrailingBit(-1i);
    var var_4 = vec2<u32>(u_input.b.x, ~0u);
    let var_5 = func_4(func_4(Struct_2(func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.b, -2064f, var_0.b, var_0.b)))).b, !select(vec4<bool>(var_2, false, global0.x, var_2), vec4<bool>(global0.x, var_2, false, true), vec4<bool>(global0.x, true, true, var_2)), 4294967295u, Struct_1(var_0.a, func_1(vec4<f32>(1000f, var_0.b, var_0.b, -1641f)).d.b)), vec2<u32>(35351u, ~u_input.b.x)), u_input.b.zz).d;
    var var_6 = min(vec3<i32>(max(u_input.a, -57002i), _wgslsmith_add_i32(4504i ^ u_input.a, abs(-40498i)), 2147483647i), _wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(-1423i, -29350i, u_input.a)), vec3<i32>(-1i, u_input.a, 0i), ~vec3<i32>(21603i, u_input.a, u_input.a)) << (vec3<u32>(var_0.a, 6274u, 85320u) % vec3<u32>(32u))) ^ countOneBits(-abs(select(vec3<i32>(u_input.a, -2147483647i, 25735i), vec3<i32>(-74099i, u_input.a, 10698i), true)));
    var_6 = vec3<i32>(~min(~u_input.a, var_6.x), firstLeadingBit(-30507i), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, abs(var_6.xy), vec2<f32>(-182f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-518f)), _wgslsmith_f_op_f32(f32(-1f) * -593f))), var_5.b)), vec4<u32>(var_4.x, u_input.b.x, ~firstLeadingBit(4294967295u), func_2(all(vec4<bool>(var_2, global0.x, false, global0.x)))), vec4<u32>(max(firstTrailingBit(~u_input.b.x), var_0.a), max(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_4.x, 35866u)), ~vec2<u32>(u_input.b.x, 1u)), u_input.b.x << (~var_4.x % 32u)), var_0.a, func_5(Struct_2(!vec4<bool>(true, global0.x, var_2, false), !vec4<bool>(false, global0.x, global0.x, var_2), func_5(Struct_2(vec4<bool>(true, var_2, false, var_2), vec4<bool>(var_2, true, true, false), 0u, var_0), vec2<f32>(var_0.b, var_5.b)).a, var_5), vec2<f32>(_wgslsmith_f_op_f32(ceil(1302f)), 973f)).a));
}

