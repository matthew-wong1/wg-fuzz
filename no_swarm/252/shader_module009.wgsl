struct Struct_1 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<i32>,
    c: f32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_3;

var<private> global2: Struct_2 = Struct_2(16258i);

var<private> global3: i32;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: i32, arg_3: Struct_4) -> i32 {
    global3 = -2147483647i;
    var var_0 = ~(-11433i);
    global2 = arg_3.d;
    global3 = _wgslsmith_dot_vec3_i32(~(arg_3.b.yww >> (u_input.e.wwz % vec3<u32>(32u))), ~(_wgslsmith_mod_vec3_i32(arg_3.b.yzx, arg_3.b.wyw) >> ((vec3<u32>(arg_3.a.c.x, u_input.e.x, 4294967295u) << (global1.c % vec3<u32>(32u))) % vec3<u32>(32u)))) & firstTrailingBit(8670i);
    var var_1 = arg_3.a.c.x;
    return arg_2;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = false;
    global3 = reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, global1.a.x, _wgslsmith_div_i32(func_3(false, Struct_2(-3741i), -2147483647i, Struct_4(Struct_3(u_input.b, 28853u, u_input.a.yyy, global1.d), vec4<i32>(2147483647i, -40645i, global1.a.x, global1.a.x), global1.d, Struct_2(0i))), global1.a.x), -28332i), ~vec4<i32>(-1989i, global1.a.x << (40368u % 32u), global1.a.x | global1.a.x, firstTrailingBit(1i))));
    var var_1 = Struct_3(_wgslsmith_add_vec2_i32(select(vec2<i32>(-26204i, global2.a), _wgslsmith_mod_vec2_i32(vec2<i32>(global1.a.x, -29664i) & u_input.b, u_input.b), true), u_input.b & select(~global1.a, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, global2.a), u_input.b), global0.x)), 0u, select(vec3<u32>(4294967295u, arg_0, ~_wgslsmith_mult_u32(arg_0, u_input.d.x)), vec3<u32>(arg_0, 0u, ~u_input.a.x), vec3<bool>(!global0.x, global0.x, select(global2.a <= global2.a, true, !global0.x))), global1.d);
    let var_2 = Struct_3(-(~(-_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, global1.a.x), vec2<i32>(-21348i, -14362i)))), u_input.d.x, ~(~vec3<u32>(59705u, countOneBits(0u), arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.d, global1.d, arg_1.x))));
    global0 = select(!vec4<bool>(arg_1.x, false, !var_0, global1.c.x == global1.b), select(vec4<bool>(var_0, true, all(select(global0.www, vec3<bool>(var_0, true, false), true)), global1.b > 4294967295u), select(select(vec4<bool>(var_0, var_0, true, arg_1.x), vec4<bool>(var_0, false, true, true), select(vec4<bool>(true, true, var_0, false), vec4<bool>(true, var_0, false, false), global0.x)), vec4<bool>(true, !arg_1.x, false && var_0, true), vec4<bool>(select(var_0, true, false), true, var_2.d != 556f, true)), !(!(!vec4<bool>(true, global0.x, false, arg_1.x)))), false != (!(!arg_1.x) | (~(-2147483647i) <= _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, global1.a.x, 0i, -43076i), vec4<i32>(global1.a.x, global2.a, -1i, var_1.a.x)))));
    return Struct_2(-32535i ^ -firstTrailingBit(-3925i));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: i32) -> vec3<i32> {
    global0 = !(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(global0.x, true, false, global0.x), all(vec3<bool>(true, true, global0.x)))));
    var var_0 = ~4294967295u & firstTrailingBit(arg_0.b.x >> (~(global1.c.x >> (u_input.d.x % 32u)) % 32u));
    var var_1 = func_2(~max(1u, abs(9296u)), global0.wz);
    global1 = Struct_3(abs(global1.a) | (vec2<i32>(arg_2, 1i) >> (global1.c.yy % vec2<u32>(32u))), 0u, vec3<u32>(global1.c.x, ~arg_0.b.x, ~u_input.d.x), _wgslsmith_f_op_f32(arg_1.x * global1.d));
    let var_2 = Struct_2(u_input.c);
    return ~vec3<i32>(1i, ~(0i << (global1.c.x % 32u)), firstLeadingBit(~0i)) | (vec3<i32>(_wgslsmith_sub_i32(-4373i, abs(var_2.a)), -18028i, -1i) << (u_input.d % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_dot_vec3_i32(-(~_wgslsmith_add_vec3_i32(vec3<i32>(global2.a, -57130i, global1.a.x), vec3<i32>(58027i, -1i, 42576i))), func_1(Struct_1(_wgslsmith_div_f32(global1.d, -1419f), u_input.e & vec4<u32>(u_input.a.x, 9735u, 0u, 56397u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d, -535f, -1000f)), 1i));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(global1.d - 650f), _wgslsmith_div_f32(1244f, global1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-271f - global1.d)))))), _wgslsmith_f_op_f32(ceil(1051f)));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1873f + var_1.x))), -746f, global1.d, _wgslsmith_f_op_f32(-1975f - _wgslsmith_f_op_f32(floor(global1.d))))));
    var var_2 = Struct_3(vec2<i32>(var_0, i32(-1i) * -u_input.b.x), max(firstLeadingBit(global1.b), global1.b), _wgslsmith_sub_vec3_u32(firstLeadingBit(~(global1.c ^ u_input.a.zyx)), vec3<u32>(21874u, global1.c.x, _wgslsmith_clamp_u32(abs(u_input.e.x), 0u >> (u_input.e.x % 32u), ~1u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-143f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(234f + 402f) - _wgslsmith_f_op_f32(sign(global1.d)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.x)), 476f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) * global1.d))));
    var var_3 = global0.x & any(!select(vec4<bool>(true, false, global0.x, global0.x), !vec4<bool>(false, global0.x, global0.x, false), select(vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(global0.x, true, false, true), global0.x)));
    let var_4 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(u_input.d.xz, u_input.e.ww), abs(var_2.c.yy)), ~_wgslsmith_add_vec2_u32(global1.c.yx, u_input.a.yy), vec2<bool>(!(var_1.x <= 111f), true)), _wgslsmith_div_vec4_i32(vec4<i32>(~51176i, var_2.a.x, select(-2147483647i, 0i, false), -1i) >> (u_input.e % vec4<u32>(32u)), -(~vec4<i32>(var_2.a.x, var_2.a.x, global1.a.x, 0i))), vec4<i32>(_wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(global2.a, -11096i, global2.a), vec3<i32>(global1.a.x, 1i, 0i), vec3<i32>(global1.a.x, -3262i, u_input.c)), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-4009i, global1.a.x, var_2.a.x), vec3<i32>(u_input.b.x, 2147483647i, 1i), vec3<i32>(u_input.c, 0i, 1i)), firstLeadingBit(vec3<i32>(-1i, 29728i, 74693i)))), var_0, var_0, -_wgslsmith_mult_i32(global2.a, var_0)), max(~countOneBits(vec3<i32>(var_0, global1.a.x, -1i)), _wgslsmith_sub_vec3_i32(~vec3<i32>(global2.a, global1.a.x, global1.a.x), vec3<i32>(var_0, -21723i, global1.a.x))) | ~(~vec3<i32>(global1.a.x, global2.a, 0i)), global2.a);
}

