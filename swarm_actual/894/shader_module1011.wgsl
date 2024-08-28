struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1000f;

var<private> global1: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(5564i, -1734f), Struct_2(-20426i, 1267f), Struct_2(-47753i, -1944f), Struct_2(i32(-2147483648), -2351f), Struct_2(66199i, 1650f), Struct_2(0i, 266f), Struct_2(23139i, 161f), Struct_2(i32(-2147483648), -812f), Struct_2(33523i, -1460f), Struct_2(2147483647i, 852f), Struct_2(-73264i, 1000f), Struct_2(-1i, 150f), Struct_2(0i, 1000f), Struct_2(-61495i, 109f), Struct_2(0i, -367f), Struct_2(16521i, -296f), Struct_2(21923i, 1000f), Struct_2(-14879i, 985f), Struct_2(-1i, -1157f), Struct_2(0i, -2068f), Struct_2(7612i, 968f), Struct_2(0i, 882f), Struct_2(-20831i, 1785f), Struct_2(-16086i, -1346f), Struct_2(36876i, -494f), Struct_2(31938i, -1086f), Struct_2(-1i, -1271f), Struct_2(4463i, -657f));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1() -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(12498u, u_input.b.x), 28u)];
    global1 = array<Struct_2, 28>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.b));
    global1 = array<Struct_2, 28>();
    let var_2 = ~(reverseBits(u_input.a.x) << (4294967295u % 32u));
    return var_1.x;
}

fn func_3(arg_0: vec2<bool>) -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1577f - 2893f)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-995f))))));
    global1 = array<Struct_2, 28>();
    let var_0 = Struct_3(u_input.a.zwx, Struct_2(_wgslsmith_clamp_i32(-10101i, u_input.c, -2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-2378f, -865f)), _wgslsmith_f_op_f32(f32(-1f) * -291f)))));
    global0 = var_0.b.b;
    let var_1 = Struct_1(select(arg_0, !(!arg_0), !arg_0));
    return var_1.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool) -> bool {
    let var_0 = _wgslsmith_mult_vec3_i32(max(_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.b.a, u_input.c, 39248i), vec3<i32>(u_input.c, arg_0.b.a, 4910i), vec3<i32>(-1i, 2147483647i, -33927i)) & vec3<i32>(1i, 1i, 2147483647i), vec3<i32>(u_input.c, arg_0.b.a, firstTrailingBit(-24833i))), -(~(vec3<i32>(u_input.c, -2147483647i, arg_0.b.a) & vec3<i32>(14453i, 1612i, arg_0.b.a)))), vec3<i32>(-1i) * -firstTrailingBit(~vec3<i32>(arg_0.b.a, -2147483647i, 0i)));
    global1 = array<Struct_2, 28>();
    let var_1 = global1[_wgslsmith_index_u32(34770u, 28u)];
    global0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-932f)))));
    var var_2 = max(select(u_input.b.x, _wgslsmith_mod_u32(~(arg_0.a.x ^ arg_0.a.x), min(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), max(20172u, 1u))), arg_1.a.x), 14062u >> (u_input.b.x % 32u));
    return false;
}

fn func_2(arg_0: vec4<i32>) -> vec3<u32> {
    global1 = array<Struct_2, 28>();
    var var_0 = Struct_1(vec2<bool>(func_4(Struct_3(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 73903u, u_input.b.x), vec3<u32>(u_input.a.x, 20368u, u_input.b.x)), Struct_2(arg_0.x, -599f)), Struct_1(func_3(vec2<bool>(false, true))), false), func_3(vec2<bool>(true, true)).x));
    return vec3<u32>(49025u, 1u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.b.x, 26184u), vec2<u32>(1u & u_input.a.x, ~4294967295u)), 13127u & u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-526f, _wgslsmith_f_op_f32(select(1123f, -157f, true))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-455f, 1000f)) + 598f)) * _wgslsmith_f_op_f32(func_1())), -347f));
    global0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0))), var_0, true));
    var var_1 = Struct_3(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.a.xwy, u_input.a.zxz, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a.ywx)), u_input.a.zyx), func_2(firstTrailingBit(countOneBits(vec4<i32>(u_input.c, 0i, u_input.c, u_input.c))))), Struct_2(1i, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) * _wgslsmith_f_op_f32(f32(-1f) * -1519f)), var_0, (1000f == var_0) || any(vec2<bool>(true, true))))));
    var_1 = Struct_3(vec3<u32>(1u | func_2(firstLeadingBit(vec4<i32>(-1i, var_1.b.a, -1i, u_input.c))).x, ~_wgslsmith_clamp_u32(u_input.b.x, 0u, var_1.a.x) << (var_1.a.x % 32u), 45711u), Struct_2(2147483647i, var_1.b.b));
    var var_2 = 359f;
    global0 = 260f;
    let var_3 = firstLeadingBit(2846i);
    let var_4 = global1[_wgslsmith_index_u32(~(~var_1.a.x), 28u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(257f, var_1.b.b, -2086f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-1000f - 1160f), -2094f, _wgslsmith_f_op_f32(-var_4.b)))))), var_4.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -403f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-608f + -175f))))));
}

