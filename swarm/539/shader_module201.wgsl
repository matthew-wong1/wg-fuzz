struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: Struct_2,
    d: vec3<u32>,
    e: f32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec3<bool> = vec3<bool>(false, true, true);

var<private> global2: i32 = 2147483647i;

var<private> global3: array<vec3<bool>, 26>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4) -> vec3<i32> {
    let var_0 = Struct_2(Struct_1(select(~u_input.a.x << (min(arg_1.e.x, 0u) % 32u), -42847i, !global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_1(u_input.b.x), -49529i);
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(150f, global0.b, global0.b)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-316f, 789f, var_0.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -684f, -1852f) - vec3<f32>(arg_0.b, var_0.b, arg_0.b)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1785f, arg_1.b))), _wgslsmith_f_op_f32(669f + _wgslsmith_f_op_f32(ceil(global0.b))), global0.b)), !(!select(global1.xz, vec2<bool>(true, global1.x), true)), Struct_2(var_0.c, -1000f, var_0.c, ~countOneBits(arg_0.c)), global0.e.zxw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -637f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.b, arg_0.b))))));
    global1 = global3[_wgslsmith_index_u32(~arg_1.d << ((arg_0.d >> ((~1u >> (arg_0.d % 32u)) % 32u)) % 32u), 26u)];
    let var_2 = Struct_4(~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i << (1u % 32u), global0.a.x), -arg_1.a), 1367f, -1i, ~global0.e.x, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d.x, 0u, arg_1.d, 49193u), firstLeadingBit(arg_0.e)), ~_wgslsmith_mult_u32(arg_1.d, arg_0.d), _wgslsmith_add_u32(_wgslsmith_mod_u32(0u, arg_1.e.x), _wgslsmith_mod_u32(33902u, global0.e.x)), arg_0.e.x) ^ ~vec4<u32>(abs(arg_0.e.x), 1u, ~61142u, 0u));
    let var_3 = global3[_wgslsmith_index_u32(~(countOneBits(~var_2.e.x) | abs(44672u)), 26u)];
    return _wgslsmith_sub_vec3_i32(abs(~(~(-vec3<i32>(var_0.c.a, arg_0.c, 2147483647i)))), u_input.b);
}

fn func_4(arg_0: Struct_4) -> vec4<f32> {
    let var_0 = global1.x;
    let var_1 = global0.a.x;
    var var_2 = Struct_2(Struct_1(~_wgslsmith_clamp_i32(12242i, 0i, 23999i) | _wgslsmith_sub_i32(~0i, -1i)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.b))) + 758f))), Struct_1(~u_input.b.x), arg_0.c);
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -(~vec3<i32>(2485i, -1i, u_input.b.x)), max(vec3<i32>(_wgslsmith_mod_i32(-40809i, var_2.a.a), -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, arg_0.c, -1i), vec4<i32>(37667i, global0.c, 2147483647i, 1228i))), ~vec3<i32>(arg_0.a.x, -2147483647i, u_input.b.x))) <= ~1i;
    var var_4 = ~(~vec4<i32>(-(i32(-1i) * -29959i), arg_0.a.x, -1i, max(24908i, _wgslsmith_sub_i32(0i, 2147483647i))));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(1538f * var_2.b), -1103f, -1271f, _wgslsmith_f_op_f32(min(global0.b, global0.b))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(890f, -1016f, -1648f, global0.b) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, 1182f, -468f, -2729f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.b, 288f, var_2.b, global0.b), vec4<f32>(global0.b, var_2.b, arg_0.b, var_2.b), false)), vec4<f32>(-330f, -928f, var_2.b, var_2.b), true)))))));
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = global0.e.yyy;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(global0.b + arg_0.b))) - _wgslsmith_f_op_f32(-859f + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.b))))) * 739f);
    let var_2 = _wgslsmith_f_op_vec4_f32(func_4(Struct_4(~firstLeadingBit(vec2<i32>(1i, 2147483647i) ^ vec2<i32>(-25537i, global0.a.x)), 724f, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -19442i, 1i), -func_3(Struct_4(vec2<i32>(-11763i, arg_0.a.a), -1096f, 49278i, 4294967295u, vec4<u32>(var_0.x, var_0.x, global0.e.x, 0u)), Struct_4(global0.a, arg_0.b, -2147483647i, 78912u, vec4<u32>(var_0.x, var_0.x, 4294967295u, 0u)))), 122842u, vec4<u32>(var_0.x, 0u, ~0u, ~abs(1u)))));
    return 1i;
}

fn func_1(arg_0: Struct_3) -> f32 {
    global0 = Struct_4(select(max(~countOneBits(vec2<i32>(u_input.a.x, arg_0.c.c.a)), -(~u_input.b.xx)), _wgslsmith_div_vec2_i32(global0.a, vec2<i32>(_wgslsmith_mult_i32(17278i, 0i), arg_0.c.a.a << (arg_0.d.x % 32u))), 1i > _wgslsmith_div_i32(func_2(Struct_2(Struct_1(global0.c), -1233f, arg_0.c.a, 8454i)), u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.b))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(1000f)))) - _wgslsmith_f_op_f32(min(arg_0.c.b, _wgslsmith_f_op_f32(step(-1323f, arg_0.c.b)))))), -2147483647i, 1u, global0.e);
    let var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(-13366i, arg_0.c.c.a ^ _wgslsmith_div_i32(global0.c, u_input.a.x)), arg_0.c.a.a, _wgslsmith_sub_i32(arg_0.c.c.a, -(~9678i))), u_input.a);
    global3 = array<vec3<bool>, 26>();
    global3 = array<vec3<bool>, 26>();
    var var_1 = arg_0.c;
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !global3[_wgslsmith_index_u32(global0.d, 26u)];
    let var_0 = u_input.b.zx;
    let var_1 = -firstLeadingBit(var_0.x);
    global2 = -68414i;
    var var_2 = vec3<bool>(true, !(_wgslsmith_f_op_f32(func_1(Struct_3(vec3<f32>(global0.b, global0.b, -915f), vec2<bool>(global1.x, global1.x), Struct_2(Struct_1(u_input.b.x), global0.b, Struct_1(2147483647i), u_input.a.x), global0.e.zwy, -727f))) < -419f), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, 1556f)))))), -abs(vec3<i32>(25820i, -8562i, var_0.x) << (vec3<u32>(0u, 0u, global0.e.x) % vec3<u32>(32u))));
}

