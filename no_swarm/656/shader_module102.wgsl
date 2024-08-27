struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<f32>,
    c: Struct_2,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: vec3<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_4,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = !arg_0.a.x;
    var_0 = arg_0.b.d;
    let var_1 = arg_0.b.c.wzx;
    var var_2 = arg_0.b.a;
    var var_3 = arg_0.b;
    return countOneBits(u_input.b.x & u_input.b.x);
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_5, arg_3: Struct_1) -> vec3<i32> {
    let var_0 = min(select(max(vec4<i32>(_wgslsmith_add_i32(1i, 45980i), countOneBits(0i), ~u_input.b.x, firstLeadingBit(2286i)), (vec4<i32>(arg_2.a.a, 0i, -33271i, -50737i) << (arg_3.c % vec4<u32>(32u))) >> (arg_2.a.c.b.c % vec4<u32>(32u))), ~_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(arg_2.a.a, 2147483647i, -1i, arg_2.a.a)), vec4<i32>(0i, -2147483647i, 35201i, arg_2.a.a)), !((0u < u_input.a.x) && !arg_2.a.c.b.d)), ~abs(vec4<i32>(-1i) * -vec4<i32>(arg_2.a.a, u_input.b.x, 68036i, arg_2.a.a)));
    var var_1 = arg_2.b.d.yx;
    var var_2 = arg_2.b;
    var var_3 = firstLeadingBit(0i);
    var var_4 = arg_2.a;
    return min(~(~vec3<i32>(arg_2.a.a, u_input.b.x, arg_2.a.a)) << (~vec3<u32>(4294967295u, arg_2.c.x, arg_3.c.x) % vec3<u32>(32u)), var_0.wxw | vec3<i32>(i32(-1i) * -58410i, var_0.x & u_input.c, _wgslsmith_div_i32(3243i, var_0.x))) >> (vec3<u32>(u_input.a.x, ~var_4.c.b.c.x, countOneBits(~(71854u & var_4.c.b.c.x))) % vec3<u32>(32u));
}

fn func_2() -> f32 {
    var var_0 = abs(~_wgslsmith_dot_vec3_i32(func_3(reverseBits(u_input.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(494f, 480f, -1259f, 262f) * vec4<f32>(1402f, -1091f, -2067f, 1074f)), Struct_5(Struct_3(0i, vec4<f32>(-1062f, 1000f, -257f, 1634f), Struct_2(vec4<bool>(true, true, false, false), Struct_1(-192f, u_input.a.x, vec4<u32>(u_input.a.x, 1u, u_input.a.x, u_input.a.x), true)), vec4<f32>(626f, -277f, -945f, -1009f), vec4<f32>(389f, -474f, -750f, 1213f)), Struct_4(false, vec3<f32>(660f, 1078f, -1000f), 862f, vec3<bool>(false, true, false)), vec2<u32>(u_input.a.x, u_input.a.x)), Struct_1(867f, 4294967295u, vec4<u32>(16670u, 4294967295u, u_input.a.x, u_input.a.x), false)), firstLeadingBit(abs(u_input.b))));
    var_0 = reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(u_input.c), u_input.c >> (_wgslsmith_mult_u32(20759u, u_input.a.x) % 32u), u_input.c), countOneBits(u_input.b)));
    var_0 = u_input.c << (1u % 32u);
    var var_1 = ~u_input.a.x != ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 18193u, 4294967295u) ^ vec4<u32>(2511u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(0u, u_input.a.x, 0u, 83514u) | vec4<u32>(43755u, 4294967295u, 1u, u_input.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u) >> (vec4<u32>(8799u, u_input.a.x, u_input.a.x, 92592u) % vec4<u32>(32u)), vec4<u32>(0u, 1u, 86542u, u_input.a.x)));
    var var_2 = ~select(~vec4<i32>(2147483647i, _wgslsmith_mult_i32(1i, 0i), countOneBits(1i), u_input.b.x ^ 0i), -(vec4<i32>(-1i) * -vec4<i32>(u_input.b.x, u_input.b.x, u_input.c, u_input.b.x)), any(vec4<bool>(true, all(vec3<bool>(true, true, true)), true, select(true, false, true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(610f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-188f, 1152f))), _wgslsmith_f_op_f32(511f + -757f))));
}

fn func_4(arg_0: f32) -> Struct_3 {
    return Struct_3(i32(-1i) * -u_input.b.x, vec4<f32>(arg_0, -501f, arg_0, _wgslsmith_f_op_f32(-arg_0)), Struct_2(select(vec4<bool>(all(vec3<bool>(false, false, false)), all(vec4<bool>(false, true, true, false)), false, true), select(vec4<bool>(true, false, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), any(vec2<bool>(false, false))), vec4<bool>(true, true, any(vec2<bool>(true, false)), all(vec2<bool>(false, false)))), Struct_1(232f, min(0u, _wgslsmith_div_u32(u_input.a.x, 1u)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(70744u, 4294967295u, u_input.a.x, 1u)), ~vec4<u32>(17256u, 10555u, 1u, u_input.a.x)), all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-177f, arg_0, -235f, arg_0) - vec4<f32>(arg_0, -493f, arg_0, 1471f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -412f, arg_0) - vec4<f32>(1000f, 1903f, 104f, arg_0))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, arg_0, arg_0, arg_0), vec4<f32>(arg_0, arg_0, -1651f, 306f)))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1124f, arg_0, _wgslsmith_f_op_f32(-arg_0), 1058f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-780f + -1838f), arg_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - _wgslsmith_f_op_f32(max(arg_0, arg_0)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(arg_0, arg_0), -164f, _wgslsmith_f_op_f32(-arg_0), 342f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -func_1(Struct_2(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), true), Struct_1(-1730f, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 56337u), _wgslsmith_add_vec4_u32(vec4<u32>(47208u, u_input.a.x, u_input.a.x, 5300u), vec4<u32>(25840u, 0u, u_input.a.x, u_input.a.x)), true)));
    let var_1 = func_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(930f)))))))));
    var_0 = _wgslsmith_mult_i32(var_1.a, _wgslsmith_add_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, 3381i)), ~u_input.c) ^ -2147483647i);
    var var_2 = Struct_1(718f, reverseBits(var_1.c.b.b), vec4<u32>(~19095u, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, abs(u_input.a.x)), reverseBits(1u)), (410f >= _wgslsmith_f_op_f32(sign(var_1.c.b.a))) || var_1.c.b.d);
    var var_3 = select(select(var_1.c.a.zz, var_1.c.a.zy, func_4(func_4(_wgslsmith_f_op_f32(-var_2.a)).c.b.a).c.a.yw), var_1.c.a.xz, !(!func_4(_wgslsmith_f_op_f32(f32(-1f) * -495f)).c.a.xy));
    var var_4 = ~(-27927i);
    var var_5 = func_4(_wgslsmith_f_op_f32(-444f + _wgslsmith_f_op_f32(-var_1.c.b.a))).c;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.xww, _wgslsmith_add_u32(var_5.b.c.x, u_input.a.x), _wgslsmith_f_op_f32(-func_4(var_2.a).b.x), abs(~(~(var_2.c & vec4<u32>(1u, 4294967295u, 6610u, u_input.a.x)))), ~vec4<i32>(_wgslsmith_div_i32(var_1.a, u_input.c) << (~var_5.b.c.x % 32u), select(abs(-2147483647i), u_input.b.x, all(vec4<bool>(false, true, false, var_5.b.d))), max(var_1.a, var_1.a), u_input.b.x));
}

