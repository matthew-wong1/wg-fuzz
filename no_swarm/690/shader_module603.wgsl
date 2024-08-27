struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: vec4<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: f32,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec4<bool>(false, false, true, false), 417f, vec2<f32>(-1378f, -1139f), vec3<u32>(0u, 1u, 1u)), Struct_2(vec4<bool>(true, true, true, false), 154f, vec2<f32>(-1857f, -1167f), vec3<u32>(0u, 0u, 66982u)), Struct_2(vec4<bool>(true, false, false, true), -950f, vec2<f32>(759f, 1000f), vec3<u32>(1u, 1u, 0u)), Struct_2(vec4<bool>(true, true, false, false), 330f, vec2<f32>(1190f, 1089f), vec3<u32>(1u, 0u, 0u)), Struct_2(vec4<bool>(false, true, true, true), 1000f, vec2<f32>(-1127f, -1271f), vec3<u32>(4294967295u, 0u, 4294967295u)));

var<private> global1: array<vec2<bool>, 31>;

var<private> global2: array<vec2<f32>, 25>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_mod_i32(2147483647i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-24965i, abs(0i)) & (reverseBits(arg_2.d.x) & firstLeadingBit(-2147483647i)), u_input.c.x & 24916i, arg_2.d.x));
    global1 = array<vec2<bool>, 31>();
    var var_1 = !arg_2.e.x;
    return select(vec4<i32>(var_0, var_0, min(reverseBits(max(arg_0, 2147483647i)), _wgslsmith_div_i32(-1i, arg_0)), u_input.c.x), ~select(-arg_2.d, vec4<i32>(-1i) * -arg_2.d, select(select(vec4<bool>(false, false, arg_2.e.x, arg_2.e.x), arg_2.e, true), arg_2.e, true)), ~(~arg_2.b) <= arg_1.x);
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: vec3<f32>, arg_3: i32) -> StorageBuffer {
    global2 = array<vec2<f32>, 25>();
    global0 = array<Struct_2, 5>();
    global1 = array<vec2<bool>, 31>();
    global0 = array<Struct_2, 5>();
    var var_0 = Struct_1(~arg_1.xz, u_input.a.x, 132f, _wgslsmith_mult_vec4_i32(func_3(1i, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 14945u), u_input.a.zy), Struct_1(reverseBits(vec2<i32>(u_input.c.x, 47402i)), u_input.b, arg_2.x, ~vec4<i32>(arg_1.x, u_input.c.x, -2147483647i, arg_1.x), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)))), ~(~vec4<i32>(arg_3, -1i, 1i, u_input.c.x))), select(vec4<bool>((1u == u_input.b) && (arg_2.x > arg_2.x), any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), any(vec3<bool>(true, true, true)), all(vec3<bool>(false, true, false)) && true), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), true), any(vec2<bool>(true, true))));
    return StorageBuffer(450f, _wgslsmith_div_i32(abs(-_wgslsmith_clamp_i32(1i, arg_1.x, -1i)), 0i));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -150f), -828f)))) + 1324f));
    var var_1 = true;
    let var_2 = u_input.c.x;
    var var_3 = ~(~(-3377i) ^ abs(var_2)) < u_input.c.x;
    var var_4 = true;
    return func_2(-(~16156i), u_input.c, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + var_0), _wgslsmith_f_op_f32(-1198f * _wgslsmith_f_op_f32(-var_0)), var_0), var_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(any(global1[_wgslsmith_index_u32(u_input.b, 31u)]), false, true, true), (4294967295u > u_input.b) | true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -435f), 1944f, true)) + -751f) * _wgslsmith_f_op_f32(f32(-1f) * -374f)), _wgslsmith_f_op_vec2_f32(ceil(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, u_input.a.x), 25u)])), u_input.a.zzx);
    let var_1 = var_0.a.x;
    var var_2 = var_0.c;
    let x = u_input.a;
    s_output = func_1(var_0.a.x);
}

