struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec3<u32>,
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

var<private> global0: vec4<i32> = vec4<i32>(61957i, 15430i, -1414i, 2749i);

var<private> global1: array<Struct_1, 5>;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(1i, 17947i, -17902i), vec3<i32>(-16350i, 101163i, 2147483647i), 63885u, 1u, true);

var<private> global3: vec4<u32>;

var<private> global4: f32 = 354f;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_2) -> i32 {
    let var_0 = true;
    var var_1 = all(vec2<bool>(true, true));
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.b - arg_2.b), arg_2.b), arg_2.b))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, -737f)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-849f, arg_2.b) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_2.b, 1350f), vec2<f32>(447f, arg_2.b))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, -720f)))))))));
    var var_4 = _wgslsmith_add_i32(-(~(i32(-1i) * -1i) << (1u % 32u)), global2.a.x);
    return _wgslsmith_div_i32(reverseBits(-1i), firstTrailingBit(abs(-22729i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: bool) -> vec4<i32> {
    let var_0 = vec4<i32>(0i, _wgslsmith_add_i32(select(firstLeadingBit(-1i), 1i, !global2.e), 0i), func_3(~firstLeadingBit(-27636i), ~vec2<i32>(global0.x, global0.x), Struct_2(-vec2<i32>(global2.a.x, 1i), -334f)), global0.x & _wgslsmith_sub_i32(-arg_0.x, i32(-1i) * -20153i)) & _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(global0.x, -1i, global0.x, u_input.a), -vec4<i32>(global0.x, global2.a.x, global2.a.x, u_input.a)) | vec4<i32>(abs(-51904i), max(global2.b.x, global2.a.x), global2.a.x, arg_0.x), reverseBits(vec4<i32>(-arg_0.x, global2.a.x, 2147483647i, global2.b.x)));
    var var_1 = u_input.d.x << (u_input.c % 32u);
    let var_2 = Struct_1(min(vec3<i32>(~(-1i), ~_wgslsmith_dot_vec4_i32(var_0, var_0), u_input.b), arg_0), var_0.zxx, reverseBits(global2.c), 0u, global2.e | (-var_0.x == ~global2.a.x));
    let var_3 = global2.a.x;
    var var_4 = arg_1.x;
    return var_0;
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    global0 = _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(~vec4<i32>(-47435i, 51703i, u_input.b, global2.b.x), vec4<i32>(-1i, global2.a.x, arg_0.a.x, 1i)), _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(-abs(vec4<i32>(global2.b.x, u_input.a, arg_0.a.x, -1974i)), ~vec4<i32>(u_input.b, global0.x, -1i, u_input.b)), vec4<i32>(arg_0.a.x, arg_0.a.x, 35565i, 2147483647i)));
    var var_0 = arg_0.a.x;
    global1 = array<Struct_1, 5>();
    var var_1 = _wgslsmith_sub_vec4_i32(select(abs(reverseBits(vec4<i32>(0i, -15187i, 0i, global2.b.x)) >> (vec4<u32>(32352u, global2.c, global3.x, global3.x) % vec4<u32>(32u))), firstTrailingBit(func_2(~global2.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, arg_0.b, arg_0.b) + vec4<f32>(-115f, -405f, arg_0.b, arg_0.b)), !global2.e)), global2.e), -abs(abs(vec4<i32>(arg_0.a.x, 0i, arg_0.a.x, u_input.b) & vec4<i32>(global0.x, 24312i, 72563i, u_input.b))));
    let var_2 = vec2<u32>(abs(104582u), ~u_input.d.x);
    return global1[_wgslsmith_index_u32(1u, 5u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(_wgslsmith_mult_vec2_i32(-global2.a.yy >> (select(u_input.d.zy, vec2<u32>(0u, 59544u), true) % vec2<u32>(32u)), global2.b.zz), _wgslsmith_f_op_f32(-2349f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1197f, 1488f)))));
    let var_1 = func_1(Struct_2(abs(global2.a.zy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(select(1000f, -573f, var_0.e))))));
    let var_2 = Struct_1(global2.b, -(~vec3<i32>(~(-1i), func_2(global0.wzw, vec4<f32>(-925f, 1000f, -1000f, -1762f), true).x, u_input.a)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(~0u, ~(33796u & var_1.c), 16592u), ~31147u), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(82206u, u_input.c, global2.c, global2.d) ^ vec4<u32>(u_input.c, u_input.c, u_input.d.x, 4294967295u), ~vec4<u32>(46383u, var_0.d, 1u, 4294967295u)), ~(~26321u)), var_1.e);
    let var_3 = false;
    var var_4 = global2.e;
    let var_5 = 1u;
    global2 = Struct_1(-select(vec3<i32>(global2.a.x, global0.x, -54474i), min(var_1.b, vec3<i32>(1i, global0.x, -9551i)), true) << (_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(select(global3.zxy, global3.xyz, vec3<bool>(true, var_0.e, false)), vec3<u32>(u_input.d.x, 1u, global2.d) | global3.xxw, _wgslsmith_mult_vec3_u32(vec3<u32>(var_5, var_1.d, var_0.c), u_input.d)), firstTrailingBit(~vec3<u32>(0u, global2.c, u_input.c))) % vec3<u32>(32u)), global0.xxx, var_2.d, 55381u, true);
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(u_input.d.x)));
}

