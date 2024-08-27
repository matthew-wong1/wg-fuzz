struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-53871i, 2155i), u_input.b.xx);
    var var_1 = _wgslsmith_f_op_f32(ceil(682f)) == -437f;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(-392f)), _wgslsmith_f_op_f32(-435f + _wgslsmith_f_op_f32(-1012f - 1419f)), 306f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1005f) + -152f))));
    var_1 = true;
    let var_3 = Struct_1(vec4<bool>(true, !all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true)), true, true), var_2.yxy);
    return _wgslsmith_f_op_f32(exp2(var_3.b.x));
}

fn func_2(arg_0: Struct_4, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_4(arg_0.a, vec2<f32>(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), arg_1.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1308f, -830f, _wgslsmith_f_op_f32(-142f - var_0.c.x), _wgslsmith_f_op_f32(-arg_1.x))))));
    let var_2 = Struct_3(Struct_1(vec4<bool>(arg_0.c.x >= _wgslsmith_f_op_f32(round(-1459f)), true, true, true), var_0.a.a.ywx));
    let var_3 = _wgslsmith_mod_u32(u_input.a.x, ~_wgslsmith_add_u32(firstLeadingBit(1u), reverseBits(~u_input.a.x)));
    let var_4 = ~(1i ^ _wgslsmith_mult_i32(max(_wgslsmith_add_i32(arg_0.a.b.x, var_0.a.b.x), firstLeadingBit(6823i)), reverseBits(-2147483647i)));
    return Struct_1(var_2.a.a, _wgslsmith_f_op_vec3_f32(sign(var_1.zwx)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-336f, -561f, -350f, arg_1.b.x), vec4<f32>(arg_1.b.x, -1292f, arg_1.b.x, arg_1.b.x))))), firstTrailingBit(abs(vec3<i32>(9624i, -1i, u_input.b.x) & u_input.b) | vec3<i32>(u_input.b.x, u_input.b.x, firstLeadingBit(u_input.b.x))));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.a.x, var_0.a.x, -108f, 1095f), var_0.a)), _wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(arg_1.b.x, var_0.a.x, arg_1.b.x, -811f))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.a.x, var_0.a.x, arg_1.b.x, -2662f), var_0.a))) + vec4<f32>(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_f32(-1273f + var_0.a.x))), -594f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) * -1000f))), select(~(-u_input.b) << (~(~vec3<u32>(u_input.a.x, 1u, 0u)) % vec3<u32>(32u)), select(vec3<i32>(u_input.b.x, var_0.b.x, 6857i) << (arg_0.zyz % vec3<u32>(32u)), min(var_0.b, ~vec3<i32>(u_input.b.x, var_0.b.x, var_0.b.x)), any(select(vec4<bool>(true, false, arg_1.a.x, false), arg_1.a, false))), ((var_0.b.x | var_0.b.x) > _wgslsmith_mult_i32(25408i, var_0.b.x)) & false));
    var_0 = Struct_2(var_0.a, u_input.b);
    let var_1 = reverseBits(1u & _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, 51975u)), _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, arg_0.x, arg_0.x), vec4<u32>(1u, 0u, arg_0.x, 1u)))) & (arg_0.x << (34425u % 32u));
    let var_2 = vec3<u32>(1u, _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 4294967295u), 0u), abs(_wgslsmith_mult_u32(arg_0.x, 26074u))), _wgslsmith_mult_u32(u_input.a.x, ~u_input.a.x)), _wgslsmith_clamp_u32(4294967295u, u_input.a.x >> (4294967295u % 32u), ~_wgslsmith_mod_u32(arg_0.x, ~1u)));
    return _wgslsmith_f_op_f32(var_0.a.x - arg_1.b.x);
}

fn func_1() -> Struct_3 {
    var var_0 = -(~u_input.b.x);
    var_0 = u_input.b.x;
    var_0 = min(-u_input.b.x, 7189i);
    var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(u_input.a, func_2(Struct_4(Struct_2(vec4<f32>(210f, -335f, 1175f, 2148f), vec3<i32>(u_input.b.x, 6040i, 2147483647i)), vec2<f32>(1092f, 295f), vec2<f32>(-167f, 842f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1224f, -757f, 2189f, -1068f), vec4<f32>(-142f, 104f, -510f, 894f), vec4<bool>(false, false, true, false))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-279f, 548f, false)))) * -1107f)));
    return Struct_3(func_2(Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, -1427f, 111f, var_1) + vec4<f32>(var_1, 1314f, var_1, var_1)), _wgslsmith_mult_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(471f, var_1) + vec2<f32>(-178f, var_1)) - vec2<f32>(var_1, -2008f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1, 723f), vec2<f32>(var_1, var_1), vec2<bool>(false, false))))), vec4<f32>(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(var_1 * var_1)), -179f, _wgslsmith_f_op_f32(select(var_1, var_1, select(true, false, false))), 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    let var_1 = var_0.a.a.zz;
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.b.x + var_0.a.b.x), var_0.a.b.x), _wgslsmith_f_op_f32(f32(-1f) * -971f), _wgslsmith_f_op_f32(-var_0.a.b.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(u_input.a, Struct_1(vec4<bool>(false, true, var_0.a.a.x, true), vec3<f32>(var_0.a.b.x, 197f, var_0.a.b.x)))))))), ~firstLeadingBit(firstLeadingBit(u_input.b >> (u_input.a.zzw % vec3<u32>(32u)))));
    var_0 = func_1();
    var_0 = func_1();
    var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(var_2.a * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-461f, var_2.a.x, var_2.a.x, var_0.a.b.x))) - var_2.a)), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec2_u32(vec2<u32>(firstTrailingBit(countOneBits(u_input.a.x)), u_input.a.x), vec2<u32>(1344u, _wgslsmith_div_u32(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x))), vec2<u32>(select(u_input.a.x, 19002u, false), u_input.a.x) | _wgslsmith_div_vec2_u32(select(vec2<u32>(70407u, 26299u), u_input.a.yw, var_0.a.a.xz), u_input.a.zy)), _wgslsmith_sub_vec2_u32(~abs(vec2<u32>(24790u, u_input.a.x)), select(firstTrailingBit(vec2<u32>(25360u, 4990u)), abs(~u_input.a.yy), vec2<bool>(true, var_0.a.a.x & true))));
}

