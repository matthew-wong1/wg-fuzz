struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
    c: Struct_3,
    d: vec4<i32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 31> = array<vec2<i32>, 31>(vec2<i32>(-27340i, 2147483647i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(1i, 30988i), vec2<i32>(-1i, -17654i), vec2<i32>(17252i, -20613i), vec2<i32>(-24435i, 2147483647i), vec2<i32>(2147483647i, -103492i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(41093i, -1i), vec2<i32>(2147483647i, 0i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(6919i, 6241i), vec2<i32>(-8724i, 13145i), vec2<i32>(0i, -12566i), vec2<i32>(2700i, -1i), vec2<i32>(-30324i, 0i), vec2<i32>(-24054i, 0i), vec2<i32>(-1i, 0i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(33921i, -1i), vec2<i32>(i32(-2147483648), 29368i), vec2<i32>(28706i, 0i), vec2<i32>(-20445i, 58343i), vec2<i32>(-29273i, -4828i), vec2<i32>(-47318i, -19881i), vec2<i32>(-39657i, 31038i), vec2<i32>(i32(-2147483648), 22272i), vec2<i32>(15616i, 26760i), vec2<i32>(10447i, 31687i), vec2<i32>(-10297i, -6735i));

var<private> global1: Struct_2;

var<private> global2: array<vec2<u32>, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    global0 = array<vec2<i32>, 31>();
    let var_0 = Struct_5(global1.a.xxw, true, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
    var var_1 = _wgslsmith_mod_i32(-global1.b, ~(-5390i));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(759f, -2043f, 1162f, var_0.c.x))) + vec4<f32>(_wgslsmith_f_op_f32(step(1575f, var_0.c.x)), _wgslsmith_f_op_f32(297f + -1204f), _wgslsmith_f_op_f32(f32(-1f) * -1885f), _wgslsmith_f_op_f32(-var_0.c.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1919f, 841f, var_0.c.x, 109f), vec4<f32>(var_0.c.x, 1929f, var_0.c.x, var_0.c.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(408f, 1000f, -1069f, var_0.c.x))))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(-864f + 276f), _wgslsmith_f_op_f32(-var_0.c.x), 833f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c.x, -848f, var_0.c.x, 515f))))))), global1.a));
    global1 = Struct_2(select(global1.a, select(!(!global1.a), select(global1.a, !vec4<bool>(global1.a.x, true, true, true), global1.a), select(global1.a, !vec4<bool>(var_0.a.x, false, true, true), !vec4<bool>(true, var_0.b, var_0.a.x, true))), select(global1.a.x, true, all(vec4<bool>(var_0.a.x, false, global1.a.x, true))) & true), 1i);
    return _wgslsmith_clamp_u32(~1u, ~(u_input.c.x ^ ~(~u_input.d)), ~u_input.d);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec4<bool>) -> bool {
    let var_0 = func_3();
    global1 = Struct_2(vec4<bool>(!arg_2.x, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -964f) - -1395f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1035f)) * -361f), arg_2.x), 5369i);
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1340f, 2207f, 672f, 288f))), vec4<f32>(-628f, 1243f, -1521f, -649f), select(true, true, true))))))));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.b, -2147483647i, arg_0.x, arg_0.x), arg_0), global1.b, 1i, abs(-(~(-1i)))) | -max(firstTrailingBit(~vec4<i32>(u_input.e, 40113i, global1.b, arg_0.x)), firstLeadingBit(u_input.a));
    var var_3 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(firstTrailingBit(~(~arg_1)), countOneBits(vec2<u32>(~41337u, arg_1.x << (var_0 % 32u)))), (_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.d, var_0), vec2<u32>(46893u, arg_1.x)) >> ((vec2<u32>(0u, arg_1.x) | (u_input.c ^ global2[_wgslsmith_index_u32(116336u, 31u)])) % vec2<u32>(32u))) ^ _wgslsmith_add_vec2_u32(~(~vec2<u32>(arg_1.x, arg_1.x)), reverseBits(vec2<u32>(u_input.d, 36643u))));
    return all(global1.a);
}

fn func_1(arg_0: vec2<i32>) -> bool {
    global1 = Struct_2(select(vec4<bool>(true, global1.a.x, global1.a.x != select(true, global1.a.x, false), true), global1.a, global1.a.x), _wgslsmith_sub_i32(global1.b & _wgslsmith_add_i32(-arg_0.x, u_input.b), 30389i));
    var var_0 = select(select(global1.a.yzx, global1.a.zxw, vec3<bool>(global1.a.x, 31038u > _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.d), global2[_wgslsmith_index_u32(1u, 31u)]), global1.a.x)), select(!select(global1.a.xyy, select(vec3<bool>(global1.a.x, global1.a.x, true), vec3<bool>(global1.a.x, global1.a.x, false), vec3<bool>(global1.a.x, global1.a.x, true)), select(global1.a.zzz, global1.a.xzw, global1.a.yyz)), vec3<bool>(!global1.a.x && any(global1.a.xz), any(global1.a), func_2(~u_input.a, u_input.c, !global1.a)), vec3<bool>(global1.a.x, true, true == global1.a.x)), true & ((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.d, 7905u), vec3<u32>(0u, 63576u, u_input.d)) >> (62633u % 32u)) != max(_wgslsmith_add_u32(u_input.c.x, 864u), 0u)));
    global2 = array<vec2<u32>, 31>();
    let var_1 = _wgslsmith_add_i32(u_input.a.x, ~(u_input.e << (u_input.c.x % 32u)));
    let var_2 = select(vec2<bool>(true, any(vec3<bool>(true, !global1.a.x, any(global1.a.xxx)))), global1.a.xw, any(global1.a.zzx));
    return any(!(!vec4<bool>(true, false, false && var_0.x, true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 31>();
    global1 = Struct_2(vec4<bool>(global1.a.x, func_1(~(global0[_wgslsmith_index_u32(u_input.d, 31u)] | vec2<i32>(1i, u_input.a.x))), any(select(!vec2<bool>(global1.a.x, true), global1.a.wy, global1.a.yw)), !(!(global1.a.x && true))), 1i);
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(sign(-1879f)), -2070f)))));
    var var_1 = Struct_5(!select(select(global1.a.yyy, vec3<bool>(false, false, true), vec3<bool>(false, false, global1.a.x)), global1.a.zyy, true), global1.a.x, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1684f), var_0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(601f, -872f, var_0.x), vec3<f32>(139f, -385f, -953f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(847f, 875f, -434f))))))));
    global2 = array<vec2<u32>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u ^ ~_wgslsmith_mod_u32(u_input.c.x, 0u), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 0u, 1811u), vec3<u32>(62243u, u_input.d, u_input.d)), ~29560u, firstTrailingBit(16855u))), 31u)]);
}

