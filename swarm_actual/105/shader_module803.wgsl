struct Struct_1 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: bool,
    d: f32,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<i32>;

var<private> global2: i32 = 0i;

var<private> global3: i32 = 0i;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: bool) -> vec3<i32> {
    let var_0 = !select(vec4<bool>(arg_0, global0.c, global0.c, false), select(!(!vec4<bool>(arg_0, arg_0, arg_0, global0.c)), vec4<bool>(false, global0.c, true, any(vec3<bool>(arg_0, global0.c, true))), !select(vec4<bool>(global0.c, global0.c, false, false), vec4<bool>(arg_0, arg_0, false, true), vec4<bool>(arg_0, false, true, false))), false);
    let var_1 = select(reverseBits(vec4<i32>(42621i, 23140i, global1.x, global1.x)), vec4<i32>((u_input.c | u_input.c) & 0i, -(~_wgslsmith_mult_i32(12776i, global1.x)), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(42339i, u_input.c, -2147483647i, 0i)), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(global1.x, u_input.c, -2147483647i, 0i)), min(vec4<i32>(global1.x, 2147483647i, global1.x, u_input.c), vec4<i32>(-5047i, u_input.c, -13161i, 49238i)))), ~_wgslsmith_sub_i32(0i, ~(-55159i))), global0.c && false);
    let var_2 = _wgslsmith_dot_vec2_i32(var_1.xz, ~(~(-(~vec2<i32>(1i, -1i)))));
    global1 = firstTrailingBit(select(vec2<i32>(-var_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(14038i, var_1.x, global1.x, var_2), var_1)), vec2<i32>(-1i, -37710i), any(vec4<bool>(var_0.x, var_0.x, false, true)))) << (min(vec2<u32>(4294967295u, 1u), select(max(vec2<u32>(1u, 0u) | u_input.b.wx, _wgslsmith_add_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.d.x, u_input.b.x))), vec2<u32>(1u, 24403u), any(vec3<bool>(true, true, false)))) % vec2<u32>(32u));
    let var_3 = Struct_1(u_input.b, global0.e.ywy, !(!select(false, u_input.c < u_input.c, true)), -299f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1147f - global0.d), _wgslsmith_div_f32(global0.d, _wgslsmith_f_op_f32(-1000f - 1252f)), _wgslsmith_f_op_f32(-809f + -1163f), _wgslsmith_f_op_f32(select(global0.b.x, -1084f, var_0.x)))));
    return vec3<i32>(u_input.c, select(var_2 << (_wgslsmith_div_u32(~52081u, var_3.a.x << (4294967295u % 32u)) % 32u), -38597i, true), var_1.x | (~(-11258i) | var_2));
}

fn func_2() -> vec4<f32> {
    global2 = -_wgslsmith_dot_vec3_i32(func_3(true) << (vec3<u32>(global0.a.x, u_input.d.x, 4294967295u) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(max(vec3<i32>(global1.x, global1.x, 2147483647i), vec3<i32>(-20561i, -8898i, -533i)), vec3<i32>(-9615i, 23532i, -8180i))) << (1u % 32u);
    var var_0 = global0.b.x;
    global1 = -((min(vec2<i32>(-11455i, -2147483647i), firstLeadingBit(vec2<i32>(global1.x, u_input.c))) & vec2<i32>(_wgslsmith_mod_i32(-529i, u_input.c), global1.x)) & (_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(global1.x, global1.x)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, global1.x), vec2<i32>(global1.x, global1.x))) ^ abs(vec2<i32>(u_input.c, -1i) ^ vec2<i32>(u_input.c, 2147483647i))));
    global1 = vec2<i32>(firstTrailingBit(-19481i) >> (0u % 32u), _wgslsmith_mod_i32(abs(abs(firstLeadingBit(1i))), firstLeadingBit(firstTrailingBit(global1.x))));
    global0 = Struct_1(~vec4<u32>(~_wgslsmith_sub_u32(4294967295u, global0.a.x), u_input.b.x, ~(~1u), 13785u), vec3<f32>(295f, _wgslsmith_f_op_f32(-global0.d), global0.b.x), true, global0.b.x, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, global0.d, global0.b.x, global0.e.x))))));
    return _wgslsmith_f_op_vec4_f32(exp2(global0.e));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool) -> vec4<u32> {
    let var_0 = Struct_1(abs(countOneBits(min(u_input.b, global0.a) << (vec4<u32>(0u, 31323u, u_input.b.x, global0.a.x) % vec4<u32>(32u)))), _wgslsmith_div_vec3_f32(global0.e.xwz, global0.e.xzx), true, 530f, global0.e);
    var var_1 = _wgslsmith_f_op_vec4_f32(func_2());
    let var_2 = _wgslsmith_dot_vec2_u32(arg_0.zy, abs(global0.a.zx));
    global3 = -24894i;
    let var_3 = Struct_2(Struct_1(~vec4<u32>(~1u, arg_0.x, _wgslsmith_div_u32(u_input.a, 38160u), 51882u), var_1.yzx, global0.c, _wgslsmith_f_op_f32(ceil(-1292f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.e + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1678f, global0.e.x, var_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1000f, -959f, var_1.x, -153f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1582f, 673f, var_0.d))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1237f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.e.x)))), Struct_1(vec4<u32>(1u, u_input.e, 20643u, ~firstLeadingBit(0u)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(ceil(var_0.d)), _wgslsmith_f_op_f32(ceil(var_0.b.x))), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, var_0.e.x, -492f), global0.b))), any(!vec4<bool>(false, arg_1, true, arg_1)), var_0.e.x, var_0.e));
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~func_1(min(~global0.a, u_input.b), any(!vec3<bool>(true, false, global0.c))));
    let var_1 = Struct_2(Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(579f * -798f), 262f, global0.d)), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))), global0.e), -109f, Struct_1(u_input.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.b), vec3<f32>(_wgslsmith_f_op_f32(step(global0.e.x, -719f)), _wgslsmith_f_op_f32(global0.d * global0.b.x), _wgslsmith_f_op_f32(global0.e.x * 376f)), vec3<bool>(true, true, global0.c))), global0.c, 805f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(global0.e.x, -312f, global0.b.x, global0.e.x), global0.e))) * vec4<f32>(global0.d, _wgslsmith_f_op_f32(floor(global0.e.x)), _wgslsmith_f_op_f32(global0.d + 415f), _wgslsmith_f_op_f32(f32(-1f) * -3155f)))));
    global1 = (vec2<i32>(global1.x, global1.x) >> (var_1.a.a.yw % vec2<u32>(32u))) & -vec2<i32>(0i, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, firstTrailingBit(abs(global1.x >> (var_0.x % 32u))) | firstTrailingBit(_wgslsmith_mod_i32(global1.x, ~(-1i))), _wgslsmith_f_op_vec4_f32(global0.e - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global0.e.x)), 1107f), _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(floor(-864f))), -629f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.b - global0.d) - var_1.b))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -457f) - -106f))));
}

