struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<i32>,
    d: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = abs(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~firstLeadingBit(u_input.a), vec3<u32>(global0[_wgslsmith_index_u32(countOneBits(u_input.a.x), 26u)], _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(92405u, 26u)], u_input.a.x), 46135u >> (global0[_wgslsmith_index_u32(90105u, 26u)] % 32u))), u_input.a));
    let var_1 = Struct_1(~_wgslsmith_div_i32(4173i, ~(-u_input.b.x)), -4762i);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))))) - _wgslsmith_f_op_f32(-arg_0));
    global0 = array<u32, 26>();
    let var_3 = var_1;
    return -1702f;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var_0 = 3579f;
    var var_1 = true;
    var var_2 = _wgslsmith_div_u32(1u, u_input.a.x);
    var var_3 = Struct_1(u_input.c, u_input.d.x);
    return ~firstTrailingBit(4294967295u);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: vec2<i32>, arg_3: i32) -> Struct_1 {
    let var_0 = ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(1u, u_input.a.x), 64270u, ~global0[_wgslsmith_index_u32(u_input.a.x, 26u)], ~u_input.a.x), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x), vec4<u32>(1u, 0u, 1u, u_input.a.x), vec4<u32>(global0[_wgslsmith_index_u32(0u, 26u)], global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(11325u, 26u)], 26u)], 26u)], u_input.a.x)), vec4<u32>(u_input.a.x, 1u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 26u)], 26u)]) >> (vec4<u32>(4294967295u, 4294967295u, 29770u, u_input.a.x) % vec4<u32>(32u)))));
    global0 = array<u32, 26>();
    let var_1 = 4463u;
    let var_2 = arg_0.b;
    var var_3 = var_2.a;
    return Struct_1(-min(1i, min(var_2.a.a, _wgslsmith_div_i32(-19735i, arg_3))), var_3.a);
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3) -> u32 {
    let var_0 = func_4(arg_1, abs(-_wgslsmith_div_vec4_i32(max(arg_1.c, arg_1.c), ~arg_0)), abs(_wgslsmith_div_vec2_i32(~(~vec2<i32>(-47308i, u_input.c)), select(firstTrailingBit(vec2<i32>(arg_1.c.x, 0i)), vec2<i32>(u_input.d.x, arg_0.x), 14331u >= global0[_wgslsmith_index_u32(23840u, 26u)]))), 2147483647i << (func_2() % 32u));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -314f) - -1003f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1613f + -459f), 1000f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1961f), _wgslsmith_f_op_f32(select(451f, -858f, true)))))))));
    var var_2 = arg_1;
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-500f, var_1.x, -100f, 360f) + vec4<f32>(var_1.x, -1433f, -489f, var_1.x)), vec4<f32>(2331f, -648f, -470f, var_1.x), u_input.a.x > global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 26u)], 26u)]))))));
    let var_3 = _wgslsmith_div_f32(443f, _wgslsmith_f_op_f32(1436f * _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(select(var_1.x, 836f, true)))))));
    return ~_wgslsmith_mult_u32(countOneBits(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(0u), 26u)], 26u)], 1u)), 15307u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(all(vec2<bool>(true == any(vec4<bool>(true, false, false, false)), ~56757u > func_1(vec4<i32>(32920i, -2147483647i, 3878i, 29014i), Struct_3(1i, Struct_2(Struct_1(19688i, u_input.b.x)), vec4<i32>(u_input.c, u_input.b.x, u_input.b.x, 1i), 0i)))), all(!vec3<bool>(true, any(vec2<bool>(false, false)), true)), select(true, 1u < _wgslsmith_div_u32(~u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 26u)] >> (u_input.a.x % 32u)), all(vec4<bool>(true, true, true, true))));
    let var_1 = (u_input.a.zz << (~select(vec2<u32>(1u, global0[_wgslsmith_index_u32(56374u, 26u)]) << (vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 26u)], 26u)]) % vec2<u32>(32u)), ~u_input.a.xz, select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true))) % vec2<u32>(32u))) | vec2<u32>(1u, global0[_wgslsmith_index_u32(abs(4294967295u), 26u)]);
    var var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, 15991i, u_input.c), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, 2147483647i, u_input.d.x), vec3<i32>(-23647i, 14080i, 10874i))), _wgslsmith_dot_vec3_i32(select(vec3<i32>(0i, -1298i, 25818i), vec3<i32>(u_input.d.x, 1i, -2147483647i), true), vec3<i32>(u_input.b.x, u_input.b.x, u_input.d.x))), _wgslsmith_div_i32(-3315i, _wgslsmith_mult_i32(-63786i & u_input.c, u_input.c)), -func_4(Struct_3(u_input.c, Struct_2(Struct_1(-2147483647i, 27665i)), vec4<i32>(u_input.d.x, 16924i, u_input.b.x, u_input.b.x), u_input.b.x), firstLeadingBit(vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, u_input.d.x)), abs(u_input.b), u_input.b.x >> (40880u % 32u)).a), -max(vec3<i32>(-7453i, max(36392i, -50544i), 0i), -vec3<i32>(2147483647i, 0i, -22718i)));
    var var_3 = vec2<bool>(!all(vec3<bool>(true, u_input.d.x < u_input.b.x, any(vec2<bool>(true, true)))), !((any(vec3<bool>(false, false, true)) || all(vec3<bool>(true, true, false))) | (u_input.b.x < u_input.b.x)));
    var var_4 = Struct_2(Struct_1(~(-u_input.b.x) & _wgslsmith_mult_i32(~u_input.c, u_input.b.x), u_input.d.x));
    global0 = array<u32, 26>();
    let var_5 = vec2<bool>(true, var_4.a.b > -17275i);
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(var_1.x, 26u)], 4066u, u_input.a, ~(~_wgslsmith_div_u32(4099u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 1u))), ~u_input.a.yy);
}

