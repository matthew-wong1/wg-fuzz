struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: u32,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec4<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> bool {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global0.x, _wgslsmith_f_op_f32(-579f * -1278f))), _wgslsmith_f_op_f32(abs(1741f))))) < _wgslsmith_f_op_f32(f32(-1f) * -335f);
}

fn func_2() -> f32 {
    var var_0 = vec2<bool>(func_3(), select(true, true, true));
    let var_1 = countOneBits(u_input.c.yz);
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, global0.x, -533f)))), Struct_1(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, true))), 0u, select(_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, 4294967295u, 0u), vec4<u32>(32606u, 1u, global1.x, 1u)), vec4<u32>(global1.x, global1.x, u_input.b, global1.x)) | _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 45598u, 100767u, global1.x) & vec4<u32>(u_input.a.x, 34051u, global1.x, global1.x), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.a.x, 0u, global1.x), vec4<u32>(u_input.b, global1.x, 1u, u_input.a.x))), _wgslsmith_sub_vec4_u32(select(vec4<u32>(global1.x, global1.x, 4294967295u, 0u), ~vec4<u32>(8927u, 25245u, 21969u, global1.x), any(vec4<bool>(var_0.x, var_0.x, true, var_0.x))), firstLeadingBit(vec4<u32>(global1.x, global1.x, 86707u, 42892u))), -637f >= global0.x), Struct_1(select(select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, false), var_0.x), select(vec4<bool>(false, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, false), var_0.x), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(true, true, var_0.x, true))), !select(vec4<bool>(true, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(var_0.x, false, var_0.x, false)), vec4<bool>(all(vec3<bool>(var_0.x, false, false)), var_0.x, true, all(vec4<bool>(true, false, var_0.x, var_0.x))))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * -203f)) + _wgslsmith_f_op_f32(abs(-548f))), -708f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.x, _wgslsmith_f_op_f32(step(1220f, -968f)))));
    var_0 = vec2<bool>(func_3(), var_2.e.a.x & (select(351f != global0.x, global1.x == 66688u, var_0.x) && false));
    return var_2.a.x;
}

fn func_1() -> Struct_5 {
    global0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.x, global0.x, global0.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -311f, global0.x)))))))));
    return Struct_5(_wgslsmith_add_u32(abs(140186u & ~u_input.a.x), ~(~_wgslsmith_dot_vec2_u32(global1.wz, vec2<u32>(14019u, u_input.b)))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, global0.x))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) - _wgslsmith_f_op_f32(global0.x * global0.x))))), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(global1.yxw << (countOneBits(vec3<u32>(45043u, u_input.a.x, u_input.a.x)) % vec3<u32>(32u)), vec3<u32>(global1.x, 0u >> (global1.x % 32u), countOneBits(4294967295u))), vec3<u32>(min(u_input.a.x, global1.x), 4294967295u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = vec2<i32>(_wgslsmith_mult_i32(-6176i, u_input.c.x) << (_wgslsmith_add_u32(1u, min(global1.x, _wgslsmith_dot_vec3_u32(global1.xxx, var_0.c))) % 32u), u_input.c.x);
    var var_2 = Struct_1(vec4<bool>(_wgslsmith_dot_vec3_i32(abs(u_input.c), u_input.c & u_input.c) >= ~(-2147483647i), any(vec4<bool>(true, true, true, true)), !(var_1.x < u_input.c.x), true));
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2()))), 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1532f, global0.x)), _wgslsmith_f_op_f32(-808f + -963f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b)), var_0.b)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b), vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(976f, 1762f, var_2.a.x))))))));
    let var_3 = Struct_3(vec2<u32>(~(42719u & _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, 0u, global1.x, 18734u), vec4<u32>(4294967295u, u_input.b, 38705u, 0u))), ~u_input.a.x));
    let var_4 = select(!(!(!vec2<bool>(false, var_2.a.x))), vec2<bool>(var_2.a.x & true, false), !select(vec2<bool>(any(vec3<bool>(false, var_2.a.x, var_2.a.x)), -1118f <= global0.x), select(select(vec2<bool>(var_2.a.x, true), vec2<bool>(true, var_2.a.x), var_2.a.wz), !var_2.a.zz, true), vec2<bool>(true, false || var_2.a.x)));
    let var_5 = _wgslsmith_dot_vec2_i32(vec2<i32>(abs(-2147483647i), ~(~(-1i))), u_input.c.zy);
    let x = u_input.a;
    s_output = StorageBuffer(~((_wgslsmith_div_u32(global1.x, 0u) >> (1u % 32u)) ^ var_3.a.x), countOneBits(_wgslsmith_add_vec4_i32(-min(vec4<i32>(0i, var_5, -41349i, 2147483647i), vec4<i32>(u_input.c.x, 0i, 2147483647i, u_input.c.x)), -(~vec4<i32>(36208i, var_1.x, var_5, 20925i)))), vec4<u32>(abs(~global1.x), _wgslsmith_mod_u32(~72521u, _wgslsmith_add_u32(reverseBits(9808u), 1u)), global1.x, ~u_input.a.x));
}

