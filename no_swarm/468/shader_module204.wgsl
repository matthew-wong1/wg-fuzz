struct Struct_1 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<f32>, 4>;

var<private> global2: i32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> vec3<f32> {
    var var_0 = u_input.a.x;
    let var_1 = select(-max(_wgslsmith_div_vec3_i32(vec3<i32>(-17210i, global0.a.a.x, 2147483647i), _wgslsmith_mult_vec3_i32(vec3<i32>(1i, -2147483647i, global0.d.a.x), global0.d.a)), ~abs(global0.d.a)), ~abs(global0.a.a), (false || (true && global0.d.b.x)) | global0.a.b.x);
    let var_2 = Struct_4(select(u_input.a.wzz, u_input.a.zxx, true) ^ ~vec3<u32>(reverseBits(global0.c), min(0u, global0.c), 4167u), select(global0.d.b.xzy, vec3<bool>(global0.a.b.x, true, true), any(vec4<bool>(true, true, any(global0.d.b.xzy), global0.d.b.x))), global0.d, global0.a.b.x);
    let var_3 = vec3<u32>(_wgslsmith_mult_u32(global0.c, _wgslsmith_mult_u32(firstLeadingBit(0u), 42424u)), _wgslsmith_div_u32(min(var_2.a.x, abs(u_input.a.x)), ~abs(19746u)), ~18190u) ^ reverseBits(~(var_2.a ^ vec3<u32>(global0.c, u_input.a.x, var_2.a.x)) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.c, 4294967295u, 1u), var_2.a, var_2.a) % vec3<u32>(32u)));
    let var_4 = Struct_3(global0.d, ~(~var_3), -20680i, global0.d.c);
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1863f, -1201f, 326f))));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> f32 {
    var var_0 = global0.b;
    let var_1 = ~_wgslsmith_mult_i32(~0i, global0.d.a.x);
    global2 = var_1;
    global2 = _wgslsmith_add_i32(1i, 22516i);
    var var_2 = _wgslsmith_f_op_vec3_f32(func_2());
    return var_2.x;
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> bool {
    var var_0 = !vec4<bool>(!global0.a.b.x, global0.d.b.x, 64748u != _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, arg_0.b.x), arg_0.b.xz), arg_0.b.yz | u_input.a.yx), all(arg_0.a.b.yz) && !select(arg_0.a.b.x, false, arg_0.a.b.x));
    let var_1 = arg_0;
    let var_2 = var_1.a.a.zy;
    global0 = Struct_2(Struct_1((select(vec3<i32>(var_2.x, global0.a.c.x, -19146i), var_1.a.a, vec3<bool>(true, global0.a.b.x, false)) << ((vec3<u32>(4294967295u, u_input.a.x, 1548u) & u_input.a.zyz) % vec3<u32>(32u))) >> ((var_1.b & u_input.a.zwx) % vec3<u32>(32u)), select(!(!var_1.a.b), vec4<bool>(!arg_0.a.b.x, var_0.x, true, true), var_1.a.b), abs(vec2<i32>(firstTrailingBit(0i), 2147483647i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.x, 823f) * global0.b), vec2<f32>(-201f, -234f), vec2<bool>(var_1.a.b.x, var_0.x)))))), var_1.b.x, global0.d);
    var var_3 = select(var_1.a.b.x, !var_0.x & ((_wgslsmith_f_op_f32(global0.b.x - global0.b.x) == -773f) & var_0.x), var_0.x);
    return !arg_0.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.d.c.x;
    let var_0 = global0.a.b.yyz;
    var var_1 = global0.b.x;
    var var_2 = global0.a;
    var var_3 = _wgslsmith_mod_vec2_i32(max(vec2<i32>(reverseBits(~var_2.c.x), _wgslsmith_clamp_i32(4045i, var_2.a.x, 0i)), vec2<i32>(var_2.a.x, global0.d.a.x)), max(countOneBits(~vec2<i32>(11525i, global0.a.a.x) << (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u))), ~abs(~vec2<i32>(global0.a.a.x, 1i))));
    let var_4 = global1[_wgslsmith_index_u32(1u, 4u)];
    var var_5 = _wgslsmith_f_op_vec2_f32(global0.b * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2284f + 1110f) - global0.b.x), global0.b.x));
    let var_6 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-324f)))), _wgslsmith_f_op_f32(func_1(global0.c, global0.d.b.wy)), -631f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2()).x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1049f, 354f, -1344f, 1123f))), vec4<f32>(var_5.x, 985f, _wgslsmith_f_op_f32(var_4.x + -511f), -264f)))), vec4<f32>(1000f, 669f, 1000f, var_5.x)));
    var var_7 = Struct_3(Struct_1(~(-var_2.a), vec4<bool>(false, func_3(Struct_3(Struct_1(global0.a.a, vec4<bool>(true, global0.a.b.x, true, false), vec2<i32>(1i, var_2.c.x)), vec3<u32>(u_input.a.x, global0.c, global0.c), global0.a.c.x, global0.d.a.zz), _wgslsmith_add_i32(38789i, 30840i)), true, var_2.b.x), -firstLeadingBit(vec2<i32>(-748i, var_2.c.x))), abs(~u_input.a.xzx), ~var_3.x, firstTrailingBit(max(vec2<i32>(48804i, 2147483647i), vec2<i32>(global0.d.a.x, var_2.a.x)) & global0.a.c));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(4294967295u, 62223u), u_input.a.x);
}

