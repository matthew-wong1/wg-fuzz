struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
    b: vec3<u32>,
    c: vec4<bool>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3) -> vec2<f32> {
    global0 = array<vec4<bool>, 29>();
    let var_0 = Struct_3(arg_0.a);
    let var_1 = vec2<i32>(-1i) * -(arg_0.a.e.zy >> (select(~vec2<u32>(u_input.b, var_0.a.a), ~vec2<u32>(var_0.a.a, 1u), false) % vec2<u32>(32u)));
    let var_2 = var_0.a.e.x != (firstTrailingBit(u_input.d.x) ^ reverseBits(abs(min(u_input.a.x, -1i))));
    global0 = array<vec4<bool>, 29>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.a.c.yx - vec2<f32>(-1667f, var_0.a.c.x)))));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(506f, 1440f) - vec2<f32>(-1000f, 1142f))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1299f, 557f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_3(Struct_1(1u, true, vec3<f32>(-298f, -493f, -819f), vec2<bool>(false, true), vec4<i32>(u_input.a.x, u_input.d.x, 21997i, u_input.a.x)))))));
    global0 = array<vec4<bool>, 29>();
    var var_1 = Struct_2(Struct_1(1u, false | any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -468f)), -291f, _wgslsmith_f_op_f32(trunc(var_0.x))), vec2<bool>(all(select(vec4<bool>(true, true, true, false), global0[_wgslsmith_index_u32(u_input.b, 29u)], true)), true), vec4<i32>(-39545i << ((36312u >> (u_input.b % 32u)) % 32u), u_input.c.x, ~reverseBits(-32342i), abs(u_input.a.x & 2147483647i))), u_input.c.x >> (49680u % 32u), 2183i, reverseBits(_wgslsmith_dot_vec3_i32(-abs(vec3<i32>(0i, 0i, u_input.a.x)), vec3<i32>(u_input.a.x, u_input.d.x, -u_input.c.x))), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    global0 = array<vec4<bool>, 29>();
    let var_2 = Struct_2(Struct_1(u_input.b, var_1.a.d.x, var_1.a.c, !var_1.e.zy, -firstLeadingBit(-vec4<i32>(var_1.b, -24183i, 21522i, -1i))), ~firstLeadingBit(-1i), 38474i, -u_input.d.x, vec3<bool>(all(var_1.a.d), all(vec4<bool>(all(global0[_wgslsmith_index_u32(var_1.a.a, 29u)]), any(var_1.e.yy), false & var_1.a.b, true)), var_1.a.b));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a.c.x * var_1.a.c.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-289f)) + _wgslsmith_f_op_f32(f32(-1f) * -603f)))))));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -539f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1201f + -409f) + -534f), _wgslsmith_f_op_f32(func_2()))));
    var var_1 = Struct_4(Struct_3(Struct_1(53323u, true, vec3<f32>(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -322f), -1000f), select(vec2<bool>(true, true), vec2<bool>(true, true), true), _wgslsmith_mult_vec4_i32(u_input.c, -vec4<i32>(u_input.a.x, 2147483647i, -18431i, u_input.c.x)))));
    var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-591f, -1267f, var_0.x)) - _wgslsmith_f_op_vec3_f32(min(var_1.a.a.c, var_1.a.a.c))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(334f, var_1.a.a.c.x, 953f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 144f, 327f) - var_1.a.a.c)))), vec3<bool>(true, !all(vec3<bool>(true, true, var_1.a.a.d.x)), -2147483647i == _wgslsmith_dot_vec2_i32(vec2<i32>(-73969i, 0i), u_input.c.xy)))), var_1.a.a.c));
    let var_2 = min(-2147483647i, var_1.a.a.e.x);
    var_1 = Struct_4(Struct_3(var_1.a.a));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    var var_1 = ~(~(u_input.b ^ ((7299u >> (u_input.b % 32u)) >> (1u % 32u))));
    let var_2 = func_1();
    global0 = array<vec4<bool>, 29>();
    let var_3 = Struct_1(1246u, any(select(vec3<bool>(all(global0[_wgslsmith_index_u32(u_input.b, 29u)]), true, all(vec2<bool>(true, false))), !(!vec3<bool>(false, true, var_2.a.b)), !select(vec3<bool>(var_2.a.d.x, var_2.a.b, var_2.a.b), vec3<bool>(var_2.a.d.x, var_2.a.b, var_2.a.b), vec3<bool>(var_2.a.d.x, var_2.a.b, var_2.a.d.x)))), var_2.a.c, var_2.a.d, vec4<i32>(_wgslsmith_div_i32(var_0.x, var_0.x), var_0.x, min(abs(2147483647i), var_0.x), var_2.a.e.x));
    var var_4 = var_3.e.x > -39591i;
    let var_5 = _wgslsmith_sub_i32(i32(-1i) * -1i, u_input.a.x);
    let var_6 = ~((var_5 << (0u % 32u)) << (1u % 32u));
    let var_7 = Struct_5(48286u, ~select(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(116665u, var_3.a), vec2<u32>(var_2.a.a, var_2.a.a)), u_input.b, ~u_input.b), vec3<u32>(4294967295u, var_3.a, var_2.a.a) >> (firstLeadingBit(vec3<u32>(4294967295u, u_input.b, var_3.a)) % vec3<u32>(32u)), func_1().a.b), select(select(vec4<bool>(false || var_2.a.b, all(vec2<bool>(true, true)), true, any(vec3<bool>(var_3.b, var_3.d.x, false))), select(!vec4<bool>(var_2.a.d.x, true, var_2.a.d.x, true), !global0[_wgslsmith_index_u32(u_input.b, 29u)], !var_2.a.b), any(select(vec3<bool>(false, true, var_2.a.b), vec3<bool>(false, false, var_3.d.x), vec3<bool>(true, false, var_3.d.x)))), global0[_wgslsmith_index_u32(75201u, 29u)], var_3.b), _wgslsmith_add_u32(~select(95113u ^ u_input.b, u_input.b, var_3.d.x), 4294967295u), u_input.b & _wgslsmith_mult_u32(~reverseBits(4294967295u), ~29026u ^ (var_3.a | var_3.a)));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, (u_input.c >> ((~vec4<u32>(4294967295u, 0u, var_2.a.a, u_input.b) ^ vec4<u32>(50925u, 54106u, 23907u, var_3.a)) % vec4<u32>(32u))) | u_input.c, var_3.c.zy, _wgslsmith_sub_i32(-16744i, ~abs(func_1().a.e.x)));
}

