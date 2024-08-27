struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: vec3<bool>,
    c: Struct_3,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
    d: bool,
    e: Struct_4,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27>;

var<private> global1: vec2<f32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_4) -> vec2<f32> {
    let var_0 = !vec4<bool>(arg_3.b.x, false, all(vec2<bool>(true, arg_3.b.x)), all(arg_2));
    global0 = array<Struct_4, 27>();
    let var_1 = arg_1.d;
    let var_2 = vec3<f32>(1409f, _wgslsmith_f_op_f32(f32(-1f) * -1931f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(ceil(273f)))));
    var var_3 = arg_3;
    return var_2.xy;
}

fn func_2() -> vec2<f32> {
    var var_0 = u_input.b;
    var_0 = u_input.b;
    return vec2<f32>(global1.x, 916f);
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = -723f;
    var var_1 = Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(488f, global1.x, 718f))))), vec3<f32>(-1030f, -1000f, global1.x), any(vec4<bool>(false, arg_0, arg_0, arg_0)) == true)), 1u, vec3<i32>(~(arg_1.c.x >> (arg_1.b % 32u)), arg_1.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 59039i, u_input.c.x, 1i) & vec4<i32>(1i, u_input.c.x, 1i, -2147483647i), ~vec4<i32>(arg_1.c.x, u_input.c.x, arg_1.c.x, -28260i))), vec2<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_div_f32(1230f, global1.x)), -222f), _wgslsmith_f_op_vec3_f32(-arg_1.e)), select(select(vec3<bool>(48032u <= arg_1.b, true, arg_0), vec3<bool>(!arg_0, !arg_0, all(vec4<bool>(false, true, false, arg_0))), !(!vec3<bool>(true, true, arg_0))), !select(select(vec3<bool>(true, false, false), vec3<bool>(arg_0, arg_0, true), vec3<bool>(true, true, arg_0)), vec3<bool>(true, true, true), select(vec3<bool>(false, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, arg_0, true))), vec3<bool>(true, -757f >= _wgslsmith_f_op_f32(-var_0), (true & arg_0) && !arg_0)), true, arg_0, Struct_4(_wgslsmith_f_op_f32(min(1104f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1372f * arg_1.e.x), _wgslsmith_f_op_f32(global1.x * var_0))))), select(!(!vec3<bool>(true, false, arg_0)), select(vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0)), select(vec3<bool>(arg_0, arg_0, true), !vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, true, true))), Struct_3(-arg_1.c.x & _wgslsmith_add_i32(u_input.c.x, 2147483647i), vec3<f32>(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(arg_1.a.x * var_0), -774f)), select(~vec4<i32>(u_input.c.x, u_input.c.x, -27582i, arg_1.c.x) ^ ~vec4<i32>(u_input.c.x, -17563i, arg_1.c.x, 1i), ~(~vec4<i32>(arg_1.c.x, 2147483647i, 1i, 0i)), true)));
    var var_2 = arg_1.c.yy;
    var_1 = Struct_5(var_1.a, var_1.b, !((0u | select(var_1.a.b, u_input.b.x, var_1.e.b.x)) <= ~1u), any(select(var_1.b, var_1.b, select(select(vec3<bool>(false, true, true), var_1.e.b, arg_0), vec3<bool>(true, true, true), !var_1.b.x))), var_1.e);
    let var_3 = var_1.e.c;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.d) * _wgslsmith_f_op_vec2_f32(-var_1.e.c.b.zz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, 681f), vec2<f32>(global1.x, -297f))))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(776f, global1.x), vec2<f32>(global1.x, global1.x)), vec2<f32>(global1.x, global1.x))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_1(vec2<f32>(747f, global1.x), Struct_2(vec3<f32>(502f, global1.x, global1.x), vec2<i32>(-2147483647i, u_input.c.x), u_input.b.wyz, Struct_1(vec3<f32>(993f, global1.x, global1.x), 0u, vec3<i32>(-1i, 0i, -1i), vec2<f32>(global1.x, 307f), vec3<f32>(global1.x, global1.x, global1.x))), vec4<bool>(false, true, true, true), global0[_wgslsmith_index_u32(4294967295u, 27u)])), vec2<f32>(global1.x, 845f), false)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.x, _wgslsmith_div_f32(global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2()))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(func_3(true, Struct_1(vec3<f32>(global1.x, global1.x, 1235f), 31950u, vec3<i32>(u_input.c.x, -400i, 0i), vec2<f32>(global1.x, -155f), vec3<f32>(-1430f, global1.x, global1.x))))))));
    global0 = array<Struct_4, 27>();
    global1 = vec2<f32>(global1.x, _wgslsmith_f_op_f32(global1.x + -333f));
    let x = u_input.a;
    s_output = StorageBuffer(-362f, _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(4294967295u, u_input.a.x)), max(vec2<u32>(u_input.b.x, 4294967295u), u_input.b.zz)) << (_wgslsmith_mod_vec2_u32(~u_input.a, u_input.b.zw) % vec2<u32>(32u)), vec2<u32>(12643u, _wgslsmith_dot_vec2_u32(~u_input.a, select(vec2<u32>(6143u, u_input.a.x), vec2<u32>(u_input.a.x, u_input.a.x), vec2<bool>(true, true)))), (_wgslsmith_sub_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 37296u)) ^ vec2<u32>(u_input.a.x, u_input.b.x)) | select(~u_input.b.xy, select(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(4294967295u, u_input.a.x), false), false)), min(_wgslsmith_dot_vec2_i32(u_input.c, select(u_input.c, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c.x, -34417i), u_input.c, vec2<i32>(u_input.c.x, 0i)), true)), -(~91408i)), _wgslsmith_mult_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(u_input.c.x, 40545i, u_input.c.x, 2147483647i)), vec4<i32>(_wgslsmith_add_i32(u_input.c.x, ~u_input.c.x), u_input.c.x, reverseBits(_wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, 2147483647i)), 0i)), vec2<u32>(abs(~4294967295u), reverseBits(~min(u_input.b.x, u_input.b.x))));
}

