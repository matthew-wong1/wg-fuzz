struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_2(vec3<bool>(!(any(vec3<bool>(false, true, false)) || false), u_input.a >= ~2576u, (1u < ~u_input.b.x) || all(vec4<bool>(true, false, true, true))), abs(1i), u_input.b.yxz, select(u_input.c, u_input.c, true));
    var_0 = Struct_2(vec3<bool>(!(false & var_0.a.x), !all(var_0.a), true), var_0.b, ~u_input.c.xww, var_0.d);
    let var_1 = vec3<i32>(~(-(-var_0.b & var_0.b)), abs(-9949i), var_0.b);
    let var_2 = firstTrailingBit(_wgslsmith_clamp_i32(1i, _wgslsmith_add_i32(min(14687i, _wgslsmith_add_i32(var_1.x, -17981i)), i32(-1i) * -2147483647i), -1i));
    var var_3 = !select(!vec4<bool>(false, true, var_2 != 24813i, false), !(!select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), vec4<bool>(false, true, var_0.a.x, var_0.a.x), vec4<bool>(var_0.a.x, var_0.a.x, false, var_0.a.x))), var_0.a.x);
    return vec3<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(1f)))) < _wgslsmith_f_op_f32(f32(-1f) * -1000f), true, any(vec3<bool>(22902i < _wgslsmith_clamp_i32(1i, -19757i, var_2), var_0.a.x | false, false | any(var_0.a.xy))));
}

fn func_2() -> Struct_4 {
    return Struct_4(Struct_2(func_3(), 18437i, u_input.c.zyx, countOneBits(vec4<u32>(~39582u, ~u_input.b.x, select(0u, u_input.a, false), u_input.b.x))));
}

fn func_1() -> Struct_4 {
    var var_0 = func_2();
    var_0 = func_2();
    var var_1 = Struct_3(Struct_1(~var_0.a.b, var_0.a.a.xz));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1447f, -1518f, 1527f, -350f), vec4<f32>(689f, -545f, -730f, 341f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1076f, 1017f, 1756f, -922f))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1453f, -900f, 762f, -600f) + vec4<f32>(423f, 1357f, -659f, 1969f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(852f, 177f, -103f, 862f)))), vec4<f32>(_wgslsmith_div_f32(-527f, 1000f), _wgslsmith_div_f32(-709f, -686f), _wgslsmith_div_f32(861f, 2772f), _wgslsmith_f_op_f32(floor(-1822f))))))));
    let var_3 = var_0.a;
    return Struct_4(func_2().a);
}

fn func_4(arg_0: Struct_4) -> StorageBuffer {
    var var_0 = _wgslsmith_mod_i32(abs(_wgslsmith_dot_vec4_i32(select(~vec4<i32>(arg_0.a.b, -1i, -1i, arg_0.a.b), vec4<i32>(arg_0.a.b, arg_0.a.b, arg_0.a.b, arg_0.a.b), !vec4<bool>(true, true, true, arg_0.a.a.x)), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(arg_0.a.b, -26821i, arg_0.a.b, -58030i)), vec4<i32>(-2147483647i, 7729i, arg_0.a.b, arg_0.a.b)))), 0i);
    var_0 = arg_0.a.b;
    let var_1 = Struct_3(Struct_1(-565i, arg_0.a.a.zx));
    var_0 = ~16871i;
    let var_2 = abs(select(~vec3<u32>(u_input.c.x, 1u, abs(u_input.b.x)), max(arg_0.a.d.xyz, _wgslsmith_sub_vec3_u32(~u_input.b.xwy, u_input.c.zwx)), func_2().a.a));
    return StorageBuffer(var_1.a.a, vec2<i32>(1i, 1i));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(func_1());
}

