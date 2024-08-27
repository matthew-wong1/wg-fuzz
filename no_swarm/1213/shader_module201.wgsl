struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: f32,
    e: f32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 11>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(43625u, 11u)];
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    var var_1 = Struct_1(true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1090f, 1000f, 762f), vec3<f32>(-253f, -1527f, -1610f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1269f, -979f, -2717f)))), !vec4<bool>(any(vec4<bool>(true, false, false, false)), true, !any(vec2<bool>(false, false)), true));
    global0 = array<Struct_3, 11>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.b.x))), _wgslsmith_f_op_f32(-167f * -1447f))));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_1) -> bool {
    global0 = array<Struct_3, 11>();
    let var_0 = ~_wgslsmith_sub_vec2_u32(reverseBits(~arg_1.c.zy) >> (vec2<u32>(u_input.a, ~arg_1.c.x) % vec2<u32>(32u)), arg_1.c.zz);
    global0 = array<Struct_3, 11>();
    var var_1 = arg_1.b;
    global0 = array<Struct_3, 11>();
    return false;
}

fn func_2(arg_0: i32, arg_1: u32) -> vec3<f32> {
    let var_0 = !(!func_4(-842f, Struct_2(-1084f, vec4<f32>(1f, 1f, 1f, 1f), firstLeadingBit(vec3<u32>(1u, u_input.a, u_input.a)), _wgslsmith_f_op_f32(299f - -1216f), _wgslsmith_f_op_f32(func_3())), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), false), Struct_1(any(vec2<bool>(false, false)), vec3<f32>(1129f, 1460f, 243f), select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), false))));
    let var_1 = Struct_1(!any(select(select(vec2<bool>(var_0, true), vec2<bool>(true, var_0), vec2<bool>(true, true)), select(vec2<bool>(true, var_0), vec2<bool>(false, var_0), var_0), all(vec3<bool>(var_0, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-927f, 338f, 495f))))))), select(!select(!vec4<bool>(var_0, var_0, var_0, false), vec4<bool>(true, true, true, true), true), !(!select(vec4<bool>(false, true, var_0, false), vec4<bool>(false, var_0, var_0, true), vec4<bool>(var_0, var_0, var_0, var_0))), vec4<bool>(false, reverseBits(arg_0) > _wgslsmith_div_i32(arg_0, 33382i), true, !var_0 | true)));
    global0 = array<Struct_3, 11>();
    let var_2 = 0u << (u_input.a % 32u);
    var var_3 = 877f;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-805f, var_1.b.x, _wgslsmith_f_op_f32(min(-1000f, var_1.b.x))))) * var_1.b);
}

fn func_5(arg_0: vec3<f32>) -> vec3<f32> {
    var var_0 = ~_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, 10912u))), 21173u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 20463u, 0u), vec3<u32>(38647u, u_input.a, 4294967295u)), 1u), abs(select(firstLeadingBit(vec4<u32>(u_input.a, 110349u, u_input.a, 1u)), vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a), vec4<bool>(false, false, false, true))), ~vec4<u32>(_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), 38719u ^ u_input.a, _wgslsmith_sub_u32(4294967295u, 23415u), u_input.a));
    var var_1 = select(!vec3<bool>(false, _wgslsmith_f_op_f32(abs(arg_0.x)) <= _wgslsmith_f_op_f32(step(arg_0.x, -858f)), true), !vec3<bool>(all(vec4<bool>(false, false, true, false)) & true, false, true), select(vec3<bool>(false, 4294967295u == _wgslsmith_mod_u32(var_0.x, var_0.x), any(vec2<bool>(true, true))), vec3<bool>(false, false, false), any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, false), all(vec3<bool>(true, true, false))))));
    let var_2 = !(true | var_1.x);
    let var_3 = ~_wgslsmith_clamp_vec4_u32(~max(vec4<u32>(0u, u_input.a, 54394u, u_input.a), vec4<u32>(19145u, 26613u, 0u, u_input.a)) & ~firstLeadingBit(vec4<u32>(1u, var_0.x, var_0.x, var_0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(min(0u, var_0.x), u_input.a, ~4294967295u, u_input.a), reverseBits(~vec4<u32>(1u, u_input.a, var_0.x, u_input.a))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 8049u), vec4<u32>(u_input.a, 9236u, var_0.x, 1994u)), min(min(vec4<u32>(4294967295u, 0u, 2065u, var_0.x), vec4<u32>(u_input.a, 0u, u_input.a, 4294967295u)), countOneBits(vec4<u32>(u_input.a, 36566u, var_0.x, 1u)))));
    let var_4 = arg_0.x;
    return vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1184f - var_4)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_4)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -383f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(max(arg_0.x, -638f))))))), var_4);
}

fn func_1() -> Struct_1 {
    let var_0 = ~(~(~(~(~vec2<u32>(u_input.a, u_input.a)))));
    let var_1 = ~9714i;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(249f, _wgslsmith_f_op_f32(f32(-1f) * -2021f), all(vec3<bool>(true, false, false))))))));
    var var_3 = var_0 << (~(~(~select(vec2<u32>(u_input.a, 5072u), vec2<u32>(var_0.x, u_input.a), true))) % vec2<u32>(32u));
    let var_4 = ~(~(~u_input.a));
    return Struct_1(!(!(!any(vec2<bool>(false, true)))), _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(var_1, 88648u))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-418f, var_2, var_2) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(245f, 750f, 164f))))))), select(!vec4<bool>(true, false, true, any(vec2<bool>(true, false))), vec4<bool>(true, true || any(vec2<bool>(false, true)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))), true), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, true)));
}

fn func_6(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = -_wgslsmith_mult_i32(_wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, 0i), select(-2147483647i, 2147483647i, true)), -57605i) ^ -2147483647i;
    let var_1 = arg_2.c.wz;
    var var_2 = vec2<i32>(1i, select(_wgslsmith_sub_i32(2147483647i, -_wgslsmith_div_i32(-2147483647i, 2147483647i)), 27530i, var_1.x));
    let var_3 = ~(~arg_0.a);
    global0 = array<Struct_3, 11>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) - arg_2.b.x), -530f));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    global0 = array<Struct_3, 11>();
    var var_0 = -select(-firstTrailingBit(vec4<i32>(29234i, 10925i, 26604i, -2147483647i)), vec4<i32>(i32(-1i) * -1i, 1i, ~(-47330i), i32(-1i) * -1i), false) & ~(~(~vec4<i32>(-13516i, 6808i, 2147483647i, 38236i)) ^ _wgslsmith_clamp_vec4_i32(-vec4<i32>(-22481i, 0i, -31776i, 25323i), vec4<i32>(0i, -51948i, 2147483647i, 3496i), vec4<i32>(0i, 0i, -2147483647i, -25019i) << (vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a) % vec4<u32>(32u))));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_f32(1088f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -187f)), _wgslsmith_f_op_f32(func_6(Struct_3(1u), ~vec4<u32>(0u, 76791u, u_input.a, u_input.a), func_1()))) + -256f));
    var var_3 = func_1();
    let var_4 = 4294967295u;
    global0 = array<Struct_3, 11>();
    let x = u_input.a;
    s_output = StorageBuffer((var_0.x & 24514i) | var_0.x, _wgslsmith_mult_vec4_u32(select(select(vec4<u32>(var_4, var_4, 18754u, 7116u), vec4<u32>(u_input.a, 86449u, 0u, var_4), var_1) | (vec4<u32>(u_input.a, 0u, 4294967295u, var_4) >> (vec4<u32>(1u, var_4, u_input.a, var_4) % vec4<u32>(32u))), _wgslsmith_add_vec4_u32(~vec4<u32>(12172u, 19468u, u_input.a, var_4), countOneBits(vec4<u32>(5597u, 0u, 45561u, 18530u))), !var_3.c), vec4<u32>(~_wgslsmith_div_u32(u_input.a, 17868u), max(46328u, ~4294967295u), (var_4 & var_4) << (~u_input.a % 32u), firstLeadingBit(firstTrailingBit(1u)))), -1000f, var_3.b);
}

