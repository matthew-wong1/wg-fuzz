struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec4<bool>,
    d: vec4<f32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false));

var<private> global2: array<vec3<u32>, 17> = array<vec3<u32>, 17>(vec3<u32>(0u, 0u, 1u), vec3<u32>(116816u, 4294967295u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(23523u, 1u, 10777u), vec3<u32>(0u, 1u, 42372u), vec3<u32>(18954u, 25388u, 0u), vec3<u32>(804u, 53704u, 11481u), vec3<u32>(16849u, 1u, 14976u), vec3<u32>(0u, 4294967295u, 31462u), vec3<u32>(3820u, 36565u, 50653u), vec3<u32>(1u, 43598u, 4294967295u), vec3<u32>(4093u, 80770u, 13407u), vec3<u32>(131293u, 17555u, 4294967295u), vec3<u32>(2605u, 4294967295u, 4294967295u), vec3<u32>(10569u, 19565u, 59610u), vec3<u32>(11187u, 1u, 34585u), vec3<u32>(79076u, 2695u, 1u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec2<u32>) -> i32 {
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    global1 = array<vec4<bool>, 7>();
    let var_0 = ~min(_wgslsmith_mult_vec2_i32(-(u_input.a & vec2<i32>(u_input.d.x, u_input.d.x)), vec2<i32>(u_input.d.x, countOneBits(u_input.d.x))), vec2<i32>(u_input.a.x, ~u_input.a.x));
    global0 = array<Struct_1, 14>();
    return i32(-1i) * -11789i;
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: i32) -> vec3<bool> {
    var var_0 = true;
    let var_1 = Struct_2(global0[_wgslsmith_index_u32(max(1u, firstLeadingBit(_wgslsmith_sub_u32(4294967295u, ~u_input.b))), 14u)]);
    var var_2 = Struct_2(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(u_input.b, _wgslsmith_div_u32(~arg_0.x, min(24435u, 24189u)))), 14u)]);
    global1 = array<vec4<bool>, 7>();
    let var_3 = Struct_1(reverseBits(reverseBits(global2[_wgslsmith_index_u32(~30239u, 17u)])), vec2<bool>(all(vec3<bool>(!var_1.a.c.x, var_1.a.b.x || true, var_2.a.b.x || var_2.a.c.x)), any(!(!var_2.a.c.xw))), var_2.a.c, var_1.a.d, 1000f);
    return var_3.c.xwx;
}

fn func_1(arg_0: u32) -> vec3<u32> {
    var var_0 = !func_3(vec4<u32>(49661u, u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 4294967295u, u_input.b, u_input.c) | vec4<u32>(arg_0, arg_0, 50280u, 997u), _wgslsmith_add_vec4_u32(vec4<u32>(8770u, u_input.b, arg_0, arg_0), vec4<u32>(0u, 24055u, 43925u, arg_0))), 4294967295u), countOneBits(_wgslsmith_mult_vec3_i32(u_input.d.xxy, _wgslsmith_clamp_vec3_i32(u_input.d.yww, u_input.d.yzx, u_input.d.zzw))), vec4<i32>(u_input.a.x, u_input.d.x, 2147483647i, _wgslsmith_mult_i32(u_input.a.x, -u_input.a.x)), abs(~func_2(vec2<u32>(u_input.b, arg_0))));
    global0 = array<Struct_1, 14>();
    let var_1 = 1576f;
    let var_2 = select(~abs(vec3<i32>(firstTrailingBit(-2147483647i), func_2(vec2<u32>(u_input.c, u_input.b)), u_input.d.x)), u_input.d.wxx, !(!vec3<bool>(var_0.x || false, var_0.x, var_0.x)));
    var var_3 = global0[_wgslsmith_index_u32(23408u, 14u)];
    return global2[_wgslsmith_index_u32(firstTrailingBit(max(var_3.a.x, ~1u)), 17u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(27046u, ~u_input.b, 1u), func_1(_wgslsmith_mod_u32(u_input.b, u_input.c))), abs(_wgslsmith_div_vec3_u32(abs(global2[_wgslsmith_index_u32(u_input.c, 17u)]), vec3<u32>(4294967295u, u_input.c, u_input.c)))), vec3<u32>(abs(~u_input.c), _wgslsmith_sub_u32(u_input.c, _wgslsmith_mult_u32(u_input.c, ~49522u)), ~0u));
    let var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(abs(427f)), -294f, _wgslsmith_f_op_f32(461f + -1294f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-854f - 1344f), _wgslsmith_f_op_f32(trunc(607f)), -1677f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(885f, -2523f, -1214f, 1000f))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(552f, 134f, -737f, 491f))))))));
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(abs(138093u), ~(~0u), reverseBits(u_input.b)), 14u)];
    global2 = array<vec3<u32>, 17>();
    let var_3 = Struct_2(Struct_1(_wgslsmith_clamp_vec3_u32(firstLeadingBit(countOneBits(var_2.a)), var_2.a, var_2.a), !(!vec2<bool>(false, var_2.b.x)), select(select(!global1[_wgslsmith_index_u32(var_2.a.x, 7u)], select(vec4<bool>(false, var_2.c.x, false, false), vec4<bool>(false, var_2.b.x, var_2.c.x, false), vec4<bool>(var_2.c.x, var_2.c.x, false, var_2.b.x)), var_2.c), vec4<bool>(false, var_2.b.x, !var_2.b.x, any(var_2.c.xyx)), !(!vec4<bool>(var_2.c.x, true, true, var_2.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(var_1, var_2.d))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 461f, 749f, -996f), var_1, var_2.b.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(104f, var_2.d.x, var_1.x, var_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - -772f) - -180f)));
    var var_4 = var_3.a.b;
    let var_5 = var_3;
    let var_6 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(48457u, _wgslsmith_f_op_f32(sign(-1825f)), _wgslsmith_mod_vec3_i32(u_input.d.ywx & vec3<i32>(_wgslsmith_mod_i32(2147483647i, 22303i), 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(1i, -2147483647i))), _wgslsmith_sub_vec3_i32(~vec3<i32>(37052i, u_input.d.x, u_input.a.x), ~u_input.d.zwx)), 1u, u_input.d.wyz);
}

