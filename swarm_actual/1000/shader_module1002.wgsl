struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_4) -> bool {
    var var_0 = Struct_4(arg_1.a, arg_1.b, true, arg_1.d);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1524f * -883f))), 1282f, 979f), _wgslsmith_f_op_vec4_f32(-arg_0), true));
    var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x), -297f, false, vec3<i32>(firstLeadingBit(~(~(-2147483647i))), countOneBits(-arg_1.d.x), ~var_0.d.x));
    var var_2 = arg_0;
    let var_3 = Struct_3(vec3<i32>(arg_1.d.x, arg_1.d.x, 80911i));
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4) -> vec2<bool> {
    var var_0 = func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.b, arg_1.a.x, arg_1.b, 493f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, -297f, arg_1.b, arg_1.b) - vec4<f32>(arg_1.a.x, -155f, arg_1.a.x, 1478f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, -947f, 963f, -353f) * vec4<f32>(-1373f, arg_1.b, arg_1.a.x, arg_1.b)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(683f, -538f, arg_1.b, arg_1.b)))), Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(694f, arg_1.a.x), vec2<f32>(-1000f, arg_1.a.x))), _wgslsmith_f_op_f32(-arg_1.a.x), select(any(vec3<bool>(false, true, false)), true, true), vec3<i32>(arg_1.d.x, arg_1.d.x, abs(-2147483647i)))) || false;
    var var_1 = reverseBits(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~u_input.a.zy, vec2<u32>(66529u, arg_0.b.x)), u_input.b), _wgslsmith_dot_vec3_u32(~u_input.a.zww, u_input.c.wxy), u_input.c.x ^ abs(1u)));
    var var_2 = arg_1;
    var_1 = arg_0.b;
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(var_2.b, 547f), _wgslsmith_div_f32(-530f, _wgslsmith_f_op_f32(-324f + -346f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(abs(var_2.a)))) + vec2<f32>(356f, 1000f))), 262f, true, vec3<i32>(-37723i, ~abs(37118i), _wgslsmith_add_i32(var_2.d.x, firstTrailingBit(var_2.d.x))));
    return !select(select(!select(vec2<bool>(var_2.c, var_3.c), vec2<bool>(var_2.c, var_3.c), var_3.c), vec2<bool>(var_3.b != arg_1.a.x, select(true, arg_0.a, arg_0.a)), var_3.c), vec2<bool>(arg_1.c, true), true);
}

fn func_1(arg_0: i32) -> bool {
    var var_0 = !select(vec2<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true))), !(!func_2(Struct_1(false, vec3<u32>(30216u, u_input.c.x, u_input.a.x)), Struct_4(vec2<f32>(583f, -663f), -197f, true, vec3<i32>(-34788i, -1i, 2147483647i)))), func_2(Struct_1(arg_0 >= 1i, vec3<u32>(2669u, 1u, 1u)), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(364f, -447f)), _wgslsmith_f_op_f32(max(-412f, -1940f)), true, firstLeadingBit(vec3<i32>(arg_0, 14263i, arg_0)))));
    let var_1 = Struct_2(1i, Struct_1(var_0.x, ~(~vec3<u32>(2149u, u_input.c.x, 22424u))), 431f, Struct_1(!var_0.x, select(_wgslsmith_clamp_vec3_u32(u_input.c.xxz << (vec3<u32>(77261u, 14568u, 49969u) % vec3<u32>(32u)), u_input.c.xzw, firstLeadingBit(u_input.a.xxx)), u_input.a.wyy, false)), arg_0);
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-578f, var_1.c))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-530f, 938f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.c, 1449f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, var_1.c) - vec2<f32>(-651f, var_1.c))))))));
    var_0 = !(!select(select(vec2<bool>(var_0.x, var_1.b.a), vec2<bool>(true, true), !vec2<bool>(var_1.d.a, var_0.x)), vec2<bool>(true, true), select(vec2<bool>(true, var_0.x), !vec2<bool>(var_1.b.a, true), true)));
    let var_3 = any(select(!select(!vec3<bool>(false, var_1.b.a, var_1.d.a), !vec3<bool>(var_0.x, var_0.x, var_1.b.a), vec3<bool>(true, var_0.x, true)), vec3<bool>(!var_0.x && var_1.d.a, var_2.x >= var_2.x, true), select(vec3<bool>(all(vec2<bool>(var_1.b.a, false)), false, true), select(vec3<bool>(true, var_0.x, true), select(vec3<bool>(var_1.b.a, false, var_0.x), vec3<bool>(var_0.x, var_1.b.a, false), vec3<bool>(var_1.d.a, var_1.b.a, false)), true), var_0.x)));
    return true;
}

fn func_4(arg_0: vec3<bool>, arg_1: bool) -> u32 {
    return _wgslsmith_div_u32(54471u, ~5338u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(func_4(select(vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, false)), func_1(-1i), func_3(vec4<f32>(-1848f, -403f, 789f, 1589f), Struct_4(vec2<f32>(-1742f, 1000f), 778f, false, vec3<i32>(-1i, -2147483647i, -18962i)))), vec3<bool>(true, true, true)), u_input.c.x < ~u_input.b), 25614u << (0u % 32u));
    var var_1 = !vec3<bool>(func_3(vec4<f32>(_wgslsmith_f_op_f32(239f * -1024f), -269f, _wgslsmith_f_op_f32(1587f - -1025f), _wgslsmith_f_op_f32(f32(-1f) * -276f)), Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-707f, -627f)), _wgslsmith_f_op_f32(1512f * -2093f), true, vec3<i32>(22989i, 38756i, 38357i))), !all(vec3<bool>(true, true, false)), false);
    var var_2 = !(!vec4<bool>(false, func_3(vec4<f32>(555f, -1519f, -807f, 265f), Struct_4(vec2<f32>(-1078f, -1468f), 1000f, var_1.x, vec3<i32>(11162i, 0i, 67128i))), true, !var_1.x && var_1.x));
    var_1 = var_2.yxz;
    var_2 = vec4<bool>(true, true, !var_2.x, any(var_2.zy));
    var_1 = select(select(var_2.zyy, var_2.xyx, vec3<bool>(var_1.x, _wgslsmith_f_op_f32(round(-1368f)) >= -431f, var_2.x)), vec3<bool>(true, any(select(var_2.xzy, var_2.zzz, !var_1.x)), true), !all(var_2.zx));
    let x = u_input.a;
    s_output = StorageBuffer(40366u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -592f, 548f, -892f), _wgslsmith_f_op_vec4_f32(vec4<f32>(438f, -1268f, -547f, -1000f) - vec4<f32>(-1031f, 1000f, -268f, -542f)))))), firstTrailingBit(vec4<i32>(_wgslsmith_clamp_i32(min(-1i, -9066i), ~(-38364i), ~21509i), _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, -4831i, 29526i, 2147483647i), vec4<i32>(-2147483647i, 0i, 60849i, 6664i) >> (vec4<u32>(115859u, 0u, var_0.x, 24256u) % vec4<u32>(32u))), 42951i, 2147483647i)));
}

