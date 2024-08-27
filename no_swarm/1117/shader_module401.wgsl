struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: f32) -> f32 {
    var var_0 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 86650u, 1u, 0u), vec4<u32>(4294967295u, 4095u, 4294967295u, 24458u)), 4294967295u), abs(~1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(84534u, 4294967295u, 52424u, 48363u), vec4<u32>(38330u, 41287u, 56395u, 1u)), min(1u, ~0u)), ~22062u >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(21562u, 246u), vec2<u32>(23854u, 14343u)) % 32u), _wgslsmith_sub_vec4_i32(~firstLeadingBit(vec4<i32>(-37507i, -1i, arg_1, 4318i)), ~abs(vec4<i32>(arg_0, 0i, arg_1, 1151i)))));
    let var_1 = ~(var_0.a.a.zw | ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.b, var_0.a.b), ~var_0.a.a.xz));
    let var_2 = Struct_2(var_0.a);
    var var_3 = Struct_1(var_0.a.a, ~var_1.x, vec4<i32>(-firstTrailingBit(var_0.a.c.x) << ((46031u & _wgslsmith_mult_u32(var_0.a.b, var_1.x)) % 32u), u_input.a.x, 20440i, -82570i));
    var_0 = Struct_2(var_2.a);
    return _wgslsmith_f_op_f32(round(-111f));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = !(!(max(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.x, arg_0.x), vec2<u32>(8911u, arg_0.x)), max(4294967295u, 4782u)) != 1u));
    var var_1 = -1272f;
    var var_2 = arg_0.x;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~u_input.a.x, min(_wgslsmith_mult_i32(select(2147483647i, -7731i, true), -u_input.a.x), u_input.a.x | (u_input.a.x >> (495u % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -703f)))) + 408f);
    var_0 = -u_input.a.x > max(-72581i, u_input.a.x);
    return Struct_1(vec4<u32>(_wgslsmith_add_u32(13719u, 102685u), 0u, arg_0.x, ~max(~arg_0.x, ~41132u)), ~1u, countOneBits(-vec4<i32>(-u_input.a.x, ~u_input.a.x, -50466i, _wgslsmith_sub_i32(u_input.a.x, 23777i))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = true;
    let var_1 = arg_0.a.a.x;
    let var_2 = Struct_1(~(~reverseBits(~vec4<u32>(4294967295u, 14639u, arg_0.a.b, arg_0.a.b))), arg_0.a.a.x, -arg_0.a.c);
    let var_3 = arg_0.a.a.zzz;
    var var_4 = func_2(countOneBits(_wgslsmith_mult_vec4_u32(var_2.a << (arg_0.a.a % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(var_1, arg_0.a.a.x), _wgslsmith_clamp_u32(var_1, 59545u, 4294967295u), var_1, var_2.b)))).a;
    return func_2(_wgslsmith_mod_vec4_u32(vec4<u32>(var_3.x, _wgslsmith_dot_vec3_u32(abs(arg_0.a.a.wyy), var_4.zxz), ~var_3.x, var_3.x), arg_0.a.a));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = Struct_2(func_4(Struct_2(func_4(Struct_2(arg_2)))));
    var_0 = Struct_2(var_0.a);
    var_0 = Struct_2(func_4(Struct_2(var_0.a)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(i32(-1i) * -61453i, abs(arg_2.c.x), -1380f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1560f * -1547f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2351f + _wgslsmith_f_op_f32(645f - 319f))))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.c.x, u_input.a.x) << (var_0.a.a.zz % vec2<u32>(32u)), ~var_0.a.c.wz), var_0.a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1091f)))) * 1f);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -892f)), -213f), vec2<f32>(1f, 377f))));
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, _wgslsmith_f_op_f32(-var_0)))), arg_1));
    let var_2 = _wgslsmith_add_u32(~1u, 1u);
    var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_0) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(857f, 866f) * vec2<f32>(var_1.x, var_1.x))), vec2<f32>(_wgslsmith_f_op_f32(select(-1303f, -741f, true)), arg_1), vec2<bool>(true, false))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 1641f)))))));
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_5(reverseBits(1u), 0u, func_4(Struct_2(func_2(vec4<u32>(var_2, 4294967295u, var_2, var_2))))))));
    return func_4(Struct_2(func_2(_wgslsmith_div_vec4_u32(vec4<u32>(var_2, var_2, var_2, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(85384u, var_2, var_2, var_2), vec4<u32>(var_2, 1u, var_2, var_2))))));
}

fn func_6(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_2 {
    var var_0 = ~u_input.a;
    var_0 = arg_2.a.c.zxx;
    var var_1 = ~arg_1.a.x;
    let var_2 = vec3<bool>(_wgslsmith_sub_i32(0i, var_0.x) == (_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.c.x, u_input.a.x, -21207i), _wgslsmith_mod_vec3_i32(arg_2.a.c.xwx, u_input.a)) & _wgslsmith_mult_i32(1i & arg_2.a.c.x, _wgslsmith_sub_i32(u_input.a.x, arg_3.x))), true, (any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true)) & true) & true);
    var var_3 = _wgslsmith_mod_i32(arg_1.c.x, _wgslsmith_div_i32(arg_1.c.x, _wgslsmith_mod_i32(~arg_2.a.c.x, _wgslsmith_div_i32(58950i, -arg_3.x))));
    return arg_2;
}

fn func_7(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: Struct_2) -> f32 {
    var var_0 = arg_3.a.c;
    var var_1 = 43338u;
    var_0 = -func_2(reverseBits(func_1(u_input.a.x | u_input.a.x, -2264f).a)).c;
    let var_2 = arg_3;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(529f, -602f, -1065f) * vec3<f32>(-1000f, arg_1, 171f)))))));
    return -157f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 809f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_7(vec2<u32>(23056u, 1u), _wgslsmith_f_op_f32(f32(-1f) * -124f), min(1u, 1u), func_6(_wgslsmith_div_f32(419f, -1481f), func_1(u_input.a.x, 1000f), Struct_2(Struct_1(vec4<u32>(8919u, 73964u, 63746u, 0u), 23611u, vec4<i32>(1i, -2147483647i, u_input.a.x, u_input.a.x))), func_1(5859i, -178f).c.wz)))), u_input.a.xy);
}

