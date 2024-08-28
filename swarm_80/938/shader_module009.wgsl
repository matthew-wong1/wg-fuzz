struct Struct_1 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 3>;

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    global0 = array<Struct_2, 3>();
    global0 = array<Struct_2, 3>();
    var var_0 = -2147483647i;
    var var_1 = -_wgslsmith_mult_vec2_i32(vec2<i32>(-u_input.a, _wgslsmith_mod_i32(~(-16664i), ~u_input.a)), vec2<i32>(1i, 1i));
    var var_2 = -(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(29845i, u_input.a, var_1.x), vec3<i32>(2147483647i, var_1.x, var_1.x)) & vec3<i32>(-2147483647i, -5224i, var_1.x)) ^ max(vec3<i32>(-1i) * -vec3<i32>(u_input.a, var_1.x, var_1.x), vec3<i32>(-6479i, u_input.a, var_1.x)));
    return arg_2.a.x;
}

fn func_2() -> Struct_2 {
    let var_0 = func_3(~_wgslsmith_mod_vec2_u32(countOneBits(~vec2<u32>(u_input.b.x, 4294967295u)), ~u_input.b), vec2<u32>(u_input.d.x, ~(~max(6616u, 50236u))), Struct_1(vec3<bool>(any(vec4<bool>(true, true, true, true)), true, min(30476i, u_input.a) != u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))), Struct_1(vec3<bool>(false, true, select(36297i >= u_input.a, false, true)), vec3<f32>(1f, 1f, 1f)));
    let var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(abs(4294967295u >> (u_input.d.x % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(56840u, abs(0u)), select(~vec2<u32>(u_input.d.x, u_input.d.x), firstTrailingBit(u_input.d.yz), vec2<bool>(true, true)))), 3u)];
    var var_2 = Struct_1(!select(vec3<bool>(false, var_1.a <= -721f, var_0), vec3<bool>(!var_0, var_0, true), !select(vec3<bool>(true, var_0, false), vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, true, false))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(var_1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(171f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(var_1.b.x, var_1.a)), _wgslsmith_f_op_f32(f32(-1f) * -1561f), true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(449f + var_1.a), var_1.a))));
    global1 = select(_wgslsmith_clamp_u32(max(firstLeadingBit(21082u), _wgslsmith_dot_vec2_u32(u_input.d.xy, ~vec2<u32>(u_input.d.x, u_input.e))), u_input.b.x, ~u_input.b.x), _wgslsmith_sub_u32(4294967295u, u_input.b.x), false);
    let var_3 = !select(select(select(select(vec4<bool>(var_0, var_2.a.x, var_0, false), vec4<bool>(true, false, var_0, var_0), false), vec4<bool>(true, var_0, var_0, var_0), vec4<bool>(var_2.a.x, var_0, false, false)), vec4<bool>(true, true, true, true), var_2.a.x), vec4<bool>(!(-10853i > u_input.a), all(select(vec2<bool>(var_2.a.x, var_0), var_2.a.zy, var_2.a.zx)), true, true), var_2.a.x);
    return global0[_wgslsmith_index_u32(u_input.d.x, 3u)];
}

fn func_1() -> Struct_2 {
    global1 = ~u_input.c;
    var var_0 = 1u;
    let var_1 = func_2();
    var var_2 = select(vec4<u32>(~(~u_input.b.x) << (~u_input.e % 32u), ~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.b.x, u_input.c)), u_input.b), (_wgslsmith_mod_u32(u_input.c, u_input.c) >> (~1u % 32u)) | 1u, ~(~45567u)), ~vec4<u32>(u_input.c, ~(~u_input.b.x), 1u, max(2050u, u_input.b.x)), false);
    var var_3 = func_2();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1u;
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1238f - 2639f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(264f, 457f)) + var_1.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -157f))));
    let var_3 = vec4<bool>(true, true, select(-597f >= _wgslsmith_f_op_f32(var_1.a - -1000f), false, !(true != select(false, false, true))), false);
    global0 = array<Struct_2, 3>();
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.a)) * _wgslsmith_f_op_f32(ceil(-510f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-194f * _wgslsmith_f_op_f32(min(var_1.a, var_1.a))))))));
    global1 = ~_wgslsmith_div_u32(9091u, ~24653u);
    let var_4 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.x), 1488f)), 507f, _wgslsmith_f_op_f32(exp2(var_1.b.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_1.b.x, 144f), _wgslsmith_div_f32(var_1.a, -1967f), 1789f)))));
    let var_5 = ~(~u_input.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

