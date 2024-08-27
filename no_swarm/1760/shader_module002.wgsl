struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, false), 33163u, vec4<i32>(-30403i, 14903i, i32(-2147483648), 28830i), -594f, vec3<f32>(-1102f, 471f, -416f));

var<private> global1: vec3<u32> = vec3<u32>(68294u, 0u, 17913u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_2) -> bool {
    global1 = countOneBits(u_input.b.yzx);
    var var_0 = ~abs(_wgslsmith_sub_u32(~(~global1.x), firstLeadingBit(983u)));
    let var_1 = arg_1;
    var var_2 = arg_1.e;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-310f + _wgslsmith_f_op_f32(f32(-1f) * -1701f)) * global0.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(545f + var_2.x) * 1824f));
    return arg_1.a.x;
}

fn func_2() -> f32 {
    let var_0 = global0.b;
    let var_1 = Struct_1(!vec2<bool>(func_3(Struct_1(vec2<bool>(false, true), 1u, vec4<i32>(global0.c.x, global0.c.x, -26026i, u_input.a), global0.d, vec3<f32>(1000f, 131f, -1167f)), Struct_1(vec2<bool>(global0.a.x, false), u_input.c, global0.c, 112f, global0.e), !global0.a.x, Struct_2(global1.x, global0.c, vec3<i32>(-2147483647i, global0.c.x, u_input.a), -294f)), !global0.a.x && !global0.a.x), 4294967295u, -vec4<i32>(-49261i, 0i, global0.c.x, _wgslsmith_mod_i32(24945i, abs(8343i))), _wgslsmith_f_op_f32(-global0.e.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-275f, global0.d, _wgslsmith_div_f32(global0.e.x, global0.e.x)))));
    let var_2 = ~_wgslsmith_clamp_vec4_u32(max(u_input.b, ~u_input.b & select(u_input.b, u_input.b, false)), _wgslsmith_sub_vec4_u32(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, global1.x, 4294967295u, 4294967295u), u_input.b)), u_input.b), ~(~(u_input.b ^ u_input.b)));
    global1 = ~u_input.b.wxy;
    var var_3 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.e.zy))));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(830f, global0.e.x, false))))))))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> bool {
    let var_0 = arg_0;
    var var_1 = Struct_2(arg_0.a, vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(1i, -1i, var_0.b.x)), var_0.b.xyw), -(global0.c.yzw & var_0.c)), 27946i, 64594i, _wgslsmith_add_i32(arg_0.b.x, firstTrailingBit(-1i))), vec3<i32>(firstTrailingBit(-(~var_0.b.x)), i32(-1i) * -10181i, u_input.d.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1044f), var_0.d)))));
    let var_2 = -13886i >> (_wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(35811u, 1u))), ~_wgslsmith_mod_vec2_u32(~global1.zx, vec2<u32>(arg_2, arg_2))) % 32u);
    let var_3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(-1000f * -135f), _wgslsmith_f_op_f32(1113f - -483f), _wgslsmith_f_op_f32(func_2()))) - vec4<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), -1277f, -1275f))));
    let var_4 = var_1.c;
    return ((1u >= firstTrailingBit(u_input.b.x)) & (all(select(global0.a, vec2<bool>(global0.a.x, false), global0.a)) | global0.a.x)) && !global0.a.x;
}

fn func_5(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    let var_0 = Struct_2((select(global1.x, 4294967295u, true) << (abs(abs(30476u)) % 32u)) << (firstTrailingBit(1u) % 32u), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, abs(~arg_2.c.x), -64285i, ~arg_2.c.x >> (43786u % 32u)), arg_2.c), -firstLeadingBit(arg_0.zyx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.e.x - global0.e.x)));
    let var_1 = var_0;
    var var_2 = ~_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.b.x, ~(8222u ^ arg_1)), abs(~1u & u_input.c));
    var var_3 = ~max(~abs(50698u) & global1.x, var_1.a);
    let var_4 = arg_2;
    return 1u;
}

fn func_1() -> vec3<i32> {
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global0.e, global0.e)) * global0.e) - _wgslsmith_f_op_vec3_f32(global0.e - vec3<f32>(-1283f, global0.d, 955f))) * global0.e), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(global0.e, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d, -1176f, -509f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.d, global0.e.x, global0.e.x), vec3<f32>(845f, -262f, 467f), select(vec3<bool>(global0.a.x, global0.a.x, global0.a.x), vec3<bool>(global0.a.x, true, false), global0.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.e, global0.e, vec3<bool>(global0.a.x, false, true)))))));
    global1 = u_input.b.yww;
    let var_1 = func_5(global0.c, u_input.c, Struct_1(select(vec2<bool>(!global0.a.x, 4294967295u > global1.x), !global0.a, func_4(Struct_2(0u, vec4<i32>(global0.c.x, -10623i, -38911i, 0i), global0.c.xzy, 200f), _wgslsmith_f_op_f32(func_2()), global0.b)), ~u_input.b.x, vec4<i32>(abs(-2147483647i), abs(_wgslsmith_clamp_i32(1i, global0.c.x, global0.c.x)), global0.c.x, ~(-3358i) >> (1u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * global0.d) + _wgslsmith_f_op_f32(f32(-1f) * -585f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.e.x))), var_0), firstTrailingBit(firstTrailingBit(global0.c.zx)) & u_input.d);
    let var_2 = 1u;
    var var_3 = 0u;
    return -vec3<i32>(u_input.d.x, -1i, 23229i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = Struct_2(global0.b, global0.c, -(~(-vec3<i32>(44170i, var_0.x, global0.c.x))), _wgslsmith_f_op_f32(-global0.d));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.yy);
}

