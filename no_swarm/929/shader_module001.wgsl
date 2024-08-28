struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
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

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 19>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<bool> {
    let var_0 = ~u_input.c.zy;
    return !vec3<bool>(true, false | any(vec2<bool>(false, false)), true);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1;
    var_0 = global1[_wgslsmith_index_u32(~5233u, 19u)];
    var var_1 = arg_1.c.x;
    var_1 = all(arg_1.c.wy);
    var_1 = true;
    return var_0.b;
}

fn func_2(arg_0: vec3<bool>, arg_1: u32) -> u32 {
    var var_0 = 0u;
    var var_1 = global1[_wgslsmith_index_u32(u_input.c.x, 19u)];
    let var_2 = global1[_wgslsmith_index_u32(~u_input.b & max(1u, _wgslsmith_add_u32(arg_1, 42741u)), 19u)];
    global0 = false;
    var var_3 = Struct_1(181f, func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.a, var_1.a, var_1.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(777f, 1143f, -313f) + vec3<f32>(-1079f, -1581f, var_1.a)))), Struct_1(var_1.a, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-19187i, var_2.b, 48281i, var_1.b), vec4<i32>(2147483647i, var_2.b, 19671i, -24087i)), -var_2.b), var_2.c)), var_1.c);
    return 7899u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~func_2(func_1(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, _wgslsmith_add_i32(u_input.d.x, -2147483647i)), Struct_1(_wgslsmith_f_op_f32(ceil(-899f)), u_input.d.x << (u_input.c.x % 32u), vec4<bool>(false, false, true, true)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -828f, -556f, 680f), vec4<f32>(-166f, -362f, -675f, -1079f), vec4<bool>(true, true, false, true))), vec4<f32>(-524f, -810f, 1000f, -493f)))), _wgslsmith_add_u32(~61947u, ~(~44018u))), 19u)];
    var var_1 = select(var_0.c.zy, var_0.c.xz, true);
    var var_2 = var_0.b << (34138u % 32u);
    var var_3 = global1[_wgslsmith_index_u32(u_input.b | select(u_input.e, ~(~u_input.e), all(select(var_0.c.wyz, select(vec3<bool>(var_1.x, var_1.x, var_0.c.x), var_0.c.zww, var_1.x), vec3<bool>(var_1.x, var_0.c.x, var_0.c.x)))), 19u)];
    var var_4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-836f, -737f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(223f, -922f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.a, -876f)))), all(!vec2<bool>(var_3.c.x, true))))));
    var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(271f, var_4.x)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(155f, var_4.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, -467f)))))) + _wgslsmith_div_vec2_f32(vec2<f32>(var_0.a, var_3.a), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(995f, var_0.a))))))));
    var var_5 = ~u_input.c & u_input.c;
    var_1 = vec2<bool>(!(!(-var_0.b <= u_input.a)), any(select(!(!vec4<bool>(false, var_1.x, false, var_1.x)), var_0.c, all(vec4<bool>(var_1.x, var_1.x, var_3.c.x, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b & (var_3.b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 26065u, var_5.x), u_input.c) % 32u)), vec4<u32>(reverseBits(reverseBits(var_5.x)), _wgslsmith_mult_u32(_wgslsmith_add_u32(var_5.x, u_input.e), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.b, 1u, var_5.x), vec4<u32>(var_5.x, 12920u, 54365u, var_5.x)) << (4294967295u % 32u)), ~1u, 4294967295u), abs(vec3<u32>(_wgslsmith_div_u32(1u, u_input.e), u_input.e, ~u_input.c.x) | countOneBits(vec3<u32>(12534u, var_5.x, u_input.c.x))), abs(8756u), var_5.zy);
}

