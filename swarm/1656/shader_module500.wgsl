struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<u32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<u32>,
    d: i32,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
    c: Struct_3,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32 = 2147483647i;

var<private> global2: vec4<bool>;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: u32) -> bool {
    var var_0 = global0.b;
    let var_1 = _wgslsmith_clamp_vec4_u32(~(global0.c & global0.c), ~global0.c, _wgslsmith_sub_vec4_u32(firstLeadingBit(~vec4<u32>(46800u, global0.c.x, 4294967295u, 1u)) << (global0.c % vec4<u32>(32u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.c.x, 4294967295u, global0.c.x, 49743u), global0.c) << (abs(global0.c) % vec4<u32>(32u))));
    var_0 = Struct_1(vec4<i32>(arg_0.x & 1i, -firstLeadingBit(_wgslsmith_add_i32(-16677i, -6065i)), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-29394i, -2147483647i, 1336i, -1i) & arg_0, vec4<i32>(0i, u_input.d.x, u_input.a.x, var_0.a.x)), ~(-2147483647i)), global0.d));
    global3 = select(global2.yx, select(select(!select(vec2<bool>(true, true), vec2<bool>(true, true), global2.x), global2.wz, !global2.xw), global2.xx, global3.x), select(select(global2.zw, !vec2<bool>(true, global2.x), true), !select(!vec2<bool>(true, global3.x), global2.xy, global3.x), true));
    var var_2 = var_0.a.ww;
    return !global2.x && !all(select(select(vec4<bool>(global3.x, true, global3.x, global3.x), vec4<bool>(global3.x, false, global2.x, global3.x), vec4<bool>(global3.x, false, true, global2.x)), !vec4<bool>(global2.x, global3.x, global2.x, true), global2.x));
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: vec2<i32>) -> u32 {
    var var_0 = global0.b;
    var var_1 = true;
    global2 = !select(select(select(!vec4<bool>(global2.x, arg_0, global3.x, global3.x), select(vec4<bool>(false, global2.x, global2.x, true), vec4<bool>(global3.x, false, global2.x, arg_0), vec4<bool>(false, false, global3.x, global3.x)), arg_1.x == -1000f), !vec4<bool>(global2.x, global3.x, arg_0, global3.x), global2.x), select(!select(vec4<bool>(global2.x, global3.x, true, arg_0), vec4<bool>(true, true, arg_0, true), false), !vec4<bool>(true, global3.x, true, global3.x), !arg_0 | global2.x), true);
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(global0.a - arg_1.xz), global0.b, ~(~global0.c), u_input.d.x);
    var var_3 = Struct_1(-(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, var_0.a.x, arg_2.x), _wgslsmith_div_vec4_i32(var_0.a, global0.b.a))));
    return ~firstTrailingBit(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u, u_input.c, 65778u)), global0.c.zxx));
}

fn func_2(arg_0: bool, arg_1: u32) -> vec4<u32> {
    global3 = vec2<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-487f, 619f, arg_0))))) < _wgslsmith_f_op_f32(round(705f)), true);
    global1 = global0.b.a.x;
    var var_0 = vec4<bool>((func_4(func_3(global0.b.a, arg_1), vec3<f32>(320f, 1051f, 1000f), u_input.a | global0.b.a.xw) << (abs(arg_1) % 32u)) == global0.c.x, true, all(!(!global2.zwx)) | true, true);
    let var_1 = !vec4<bool>(false, true, global3.x, select(global0.c.x, reverseBits(29921u), global2.x) > firstLeadingBit(~12398u));
    global2 = vec4<bool>(any(select(select(var_1, select(vec4<bool>(true, true, arg_0, global2.x), vec4<bool>(global2.x, true, false, true), var_1), !var_1), var_1, var_1)), !func_3(select(~vec4<i32>(global0.d, 31485i, 0i, u_input.d.x), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.a.x, global0.d, global0.b.a.x), global0.b.a), any(vec3<bool>(true, true, true))), global0.c.x), any(global2.zw), (~4068u & (~arg_1 >> (~0u % 32u))) <= (~(~2144u) >> (global0.c.x % 32u)));
    return vec4<u32>(0u, ~reverseBits(global0.c.x), 1u, arg_1);
}

fn func_1() -> i32 {
    global0 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, -2755f) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, -987f)), _wgslsmith_f_op_vec2_f32(ceil(global0.a)), global3.x))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(global0.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, global0.a.x)) - _wgslsmith_f_op_vec2_f32(-global0.a))))), Struct_1(global0.b.a), func_2(!all(!vec3<bool>(global2.x, global2.x, false)), 45797u >> ((u_input.e ^ _wgslsmith_sub_u32(global0.c.x, global0.c.x)) % 32u)), _wgslsmith_dot_vec4_i32(-countOneBits(global0.b.a), global0.b.a));
    global0 = Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a.x, -731f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.a.x, 1f)))), Struct_1(select(global0.b.a, abs(global0.b.a | global0.b.a), global0.c.x >= abs(0u))), vec4<u32>(4294967295u | _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 56702u), func_2(global2.x, 4294967295u).zx), 1u, 1u, 1u), _wgslsmith_sub_i32(64777i, 24634i));
    var var_0 = ~global0.c.x;
    var var_1 = ~(reverseBits(~(~global0.c.x)) & global0.c.x);
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global0.a))), global0.b, _wgslsmith_sub_vec4_u32(vec4<u32>(~global0.c.x ^ global0.c.x, u_input.b.x | global0.c.x, ~global0.c.x, countOneBits(select(global0.c.x, u_input.c, global3.x))), _wgslsmith_mult_vec4_u32(~(vec4<u32>(23174u, u_input.e, global0.c.x, 4294967295u) >> (vec4<u32>(global0.c.x, global0.c.x, global0.c.x, 9974u) % vec4<u32>(32u))), vec4<u32>(~0u, 1u ^ global0.c.x, select(0u, 1u, global3.x), 4294967295u))), -2147483647i);
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -global0.d >> (_wgslsmith_mod_u32(u_input.b.x & min(~u_input.e, global0.c.x), u_input.b.x) % 32u);
    var var_0 = global0.b;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1272f) * -2286f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.a.x)), global0.a.x))), global0.a.x)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + global0.a.x))))));
    let var_2 = vec2<bool>(-954f > global0.a.x, true | !(select(global2.x, global2.x, global3.x) == true));
    var var_3 = func_1();
    var var_4 = vec3<u32>(_wgslsmith_add_u32(~(~0u), ~abs(_wgslsmith_clamp_u32(1u, 80740u, 0u))), _wgslsmith_add_u32(4294967295u, u_input.b.x), global0.c.x);
    var var_5 = !(func_2(!all(vec2<bool>(false, global2.x)), _wgslsmith_div_u32(0u, var_4.x)).x > (~(~var_4.x) << (~(~20688u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~min(u_input.b.x ^ 0u, firstLeadingBit(0u)), firstTrailingBit(u_input.e)));
}

