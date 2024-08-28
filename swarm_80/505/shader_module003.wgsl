struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: vec4<f32> = vec4<f32>(-683f, -1104f, -724f, 1011f);

var<private> global2: array<vec4<u32>, 18>;

var<private> global3: Struct_1 = Struct_1(i32(-2147483648), vec3<bool>(false, false, false), vec2<i32>(47084i, 46688i), vec4<f32>(778f, -1690f, 269f, 823f), vec2<i32>(i32(-2147483648), 2147483647i));

var<private> global4: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32) -> i32 {
    var var_0 = abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(firstLeadingBit(0i), 0i), abs(global3.c), ~global3.c)) >> (~(~vec2<u32>(u_input.a, 1u) | (_wgslsmith_add_vec2_u32(u_input.e.xz, vec2<u32>(u_input.a, 46324u)) << (u_input.e.zy % vec2<u32>(32u)))) % vec2<u32>(32u));
    var_0 = vec2<i32>(49457i, -1i);
    var_0 = abs(max(_wgslsmith_mult_vec2_i32(global3.c, -vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 13u)], var_0.x)), _wgslsmith_div_vec2_i32(global3.c, -global3.e))) << (~vec2<u32>(~_wgslsmith_mod_u32(u_input.a, 35730u), ~_wgslsmith_dot_vec2_u32(u_input.e.zy, u_input.e.xy)) % vec2<u32>(32u));
    let var_1 = Struct_2(u_input.e.x, Struct_1(2147483647i, !(!select(global4.zyw, global3.b, global4.x)), abs(vec2<i32>(u_input.c.x, ~54226i)), vec4<f32>(492f, _wgslsmith_f_op_f32(min(-1417f, arg_1)), _wgslsmith_f_op_f32(sign(397f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global3.d.x))))), vec2<i32>(-9673i, _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(firstLeadingBit(23340u), 13u)], var_0.x))), -vec4<i32>(~(-9399i), ~global0[_wgslsmith_index_u32(25209u, 13u)], global3.e.x, -7234i) >> (global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(~u_input.a, 0u)), 18u)] % vec4<u32>(32u)));
    global0 = array<i32, 13>();
    return var_0.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: Struct_1) -> i32 {
    var var_0 = vec3<i32>(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d.x, _wgslsmith_div_f32(global1.x, global3.d.x), global1.x)), arg_2.d.x), 20248i, _wgslsmith_mult_i32(-1i, firstLeadingBit(~_wgslsmith_mult_i32(-1i, arg_2.e.x))));
    global0 = array<i32, 13>();
    global1 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.d.x, _wgslsmith_f_op_f32(-global1.x)))), -1717f, _wgslsmith_f_op_f32(-arg_2.d.x));
    let var_1 = ~firstTrailingBit(u_input.a);
    let var_2 = 1i;
    return 1i;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(global3.d)), global3.d));
    let var_1 = global1.zzx;
    global1 = arg_2.b.d;
    var var_2 = reverseBits(_wgslsmith_mod_i32(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(arg_0.a, 13u)], 91134i), arg_1.zx)), global3.c.x << (81413u % 32u)));
    return _wgslsmith_f_op_f32(arg_2.b.d.x * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(-636f, global3.d.x)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.d.x), _wgslsmith_f_op_f32(-global3.d.x)))))));
}

fn func_1() -> vec4<bool> {
    let var_0 = u_input.a << (~u_input.a % 32u);
    global0 = array<i32, 13>();
    let var_1 = global3.d.x;
    var var_2 = select(min(_wgslsmith_sub_vec4_i32(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.a, 13u)], global3.c.x, global3.c.x, global0[_wgslsmith_index_u32(65399u, 13u)]), vec4<i32>(global0[_wgslsmith_index_u32(65216u, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], 0i, global0[_wgslsmith_index_u32(44685u, 13u)]))), max(vec4<i32>(0i, -15539i, -1i, u_input.d.x) >> (global2[_wgslsmith_index_u32(4294967295u, 18u)] % vec4<u32>(32u)), vec4<i32>(global3.e.x, u_input.d.x, -2147483647i, global3.c.x))), abs(~vec4<i32>(u_input.d.x, -1i, global0[_wgslsmith_index_u32(0u, 13u)], 1741i))), vec4<i32>(1i, 2147483647i, min(_wgslsmith_add_i32(-15661i, -2470i), global0[_wgslsmith_index_u32(2671u, 13u)] << (14991u % 32u)), _wgslsmith_mod_i32(select(global0[_wgslsmith_index_u32(10200u, 13u)], global3.a, global4.x), 1i)) >> (global2[_wgslsmith_index_u32(var_0, 18u)] % vec4<u32>(32u)), false);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3.d + _wgslsmith_f_op_vec4_f32(vec4<f32>(439f, global1.x, -1434f, global3.d.x) * vec4<f32>(1199f, -346f, 1216f, global3.d.x))))), _wgslsmith_div_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -810f) + -875f), -998f, _wgslsmith_f_op_f32(func_4(Struct_2(7682u, Struct_1(4018i, vec3<bool>(true, false, global4.x), u_input.d, global3.d, vec2<i32>(global0[_wgslsmith_index_u32(var_0, 13u)], global0[_wgslsmith_index_u32(var_0, 13u)])), vec4<i32>(0i, 2147483647i, -11565i, global3.a)), vec3<i32>(global0[_wgslsmith_index_u32(var_0, 13u)], 49303i, global0[_wgslsmith_index_u32(var_0, 13u)]) ^ var_2.xzw, Struct_2(1u, Struct_1(56893i, vec3<bool>(global3.b.x, false, true), global3.e, vec4<f32>(951f, global3.d.x, global1.x, global3.d.x), vec2<i32>(u_input.d.x, 55296i)), vec4<i32>(u_input.c.x, 2147483647i, var_2.x, global0[_wgslsmith_index_u32(var_0, 13u)])), func_2(vec3<f32>(global1.x, 1762f, 1798f), vec2<bool>(global4.x, global3.b.x), Struct_1(-1i, global3.b, var_2.yy, global3.d, vec2<i32>(-1i, 1i)))))), global3.d), global3.b.x));
    return !vec4<bool>(all(global4.zwz), global4.x, any(global3.b), global3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1();
    global3 = Struct_1(-1i, select(global4.zyx, !global4.zzz, vec3<bool>(true, any(global4.wz), global4.x)), reverseBits(max(global3.e, u_input.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.d) - vec4<f32>(-1031f, global3.d.x, 1000f, global1.x))) * vec4<f32>(_wgslsmith_f_op_f32(min(-1003f, _wgslsmith_div_f32(global1.x, 1790f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.d.x), -529f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d.x) * -334f), global3.d.x)), firstLeadingBit(-select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1289i, 0i), vec2<i32>(2147483647i, -6179i), vec2<i32>(10726i, global3.a)), ~vec2<i32>(1i, -1i), !global4.xy)));
    var var_0 = global4.x;
    var var_1 = max(_wgslsmith_clamp_vec2_u32(min(u_input.e.yy, _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.e.xz, vec2<u32>(34576u, u_input.a)), _wgslsmith_add_vec2_u32(u_input.e.zy, u_input.e.zx))), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(abs(u_input.e.zy), u_input.e.yx), vec2<u32>(1u, u_input.a), _wgslsmith_mult_vec2_u32(u_input.e.xx, vec2<u32>(4294967295u, u_input.e.x))), u_input.e.yz), abs(reverseBits(u_input.e.xz & u_input.e.zz)));
    var var_2 = _wgslsmith_mod_vec2_u32(firstTrailingBit(firstTrailingBit(u_input.e.zy)), _wgslsmith_sub_vec2_u32(firstLeadingBit(firstTrailingBit(vec2<u32>(u_input.e.x, 1u)) | vec2<u32>(u_input.e.x, 0u)), abs(~(vec2<u32>(var_1.x, 0u) ^ vec2<u32>(4294967295u, var_1.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global3.d.yy), _wgslsmith_f_op_f32(floor(-594f)));
}

