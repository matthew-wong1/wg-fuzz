struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec3<bool>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec3<i32>, 2>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: f32, arg_3: vec2<i32>) -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.a), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_2, -904f))))), arg_2, global0.c.x)), global0.a.d.a);
    return all(global0.c);
}

fn func_2() -> f32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -983f) * global0.b.a)), ~(~(-2810i)), global0.a.a, Struct_1(-1000f));
    var var_1 = ~vec4<u32>(u_input.d, ~_wgslsmith_clamp_u32(~0u, ~u_input.d, 1u), 4294967295u, _wgslsmith_clamp_u32(~select(u_input.b.x, u_input.b.x, global0.c.x), _wgslsmith_div_u32(_wgslsmith_add_u32(16934u, 39654u), 1u), 0u));
    var var_2 = Struct_4(var_0, global0.b, vec4<bool>(!global0.c.x, !(global0.c.x | false), func_3(global0.a.b, !any(vec2<bool>(global0.c.x, global0.c.x)), _wgslsmith_f_op_f32(ceil(global0.b.a)), -(~vec2<i32>(-2147483647i, var_0.b))), global0.c.x));
    let var_3 = Struct_3(global0.a, max(abs(2147483647i), _wgslsmith_dot_vec3_i32(~vec3<i32>(-13335i, global0.a.b, global0.a.b) ^ abs(vec3<i32>(32976i, 1i, global0.a.b)), global1[_wgslsmith_index_u32(~(~u_input.d), 2u)])), global0.c.wyw, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(20053u, var_1.x, var_1.x, var_1.x), vec4<u32>(u_input.d, var_1.x, 49733u, 35491u)), vec4<u32>(u_input.b.x, 4294967295u, 12537u, var_1.x) | vec4<u32>(1u, var_1.x, u_input.e, 1u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), var_1.zz), 1u, 24199u, u_input.d)), vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 11981u, 10965u, u_input.d), ~vec4<u32>(12546u, var_1.x, 31872u, 0u)), ~(~33994u), ~(~19669u))), var_2.c);
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, var_0.c, -1358f))))))))));
    return _wgslsmith_f_op_f32(var_2.a.c + _wgslsmith_f_op_f32(ceil(var_2.a.a)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    global1 = array<vec3<i32>, 2>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_2()));
    global0 = Struct_4(global0.a, Struct_1(global0.b.a), !(!global0.c));
    var var_1 = Struct_3(global0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -select(vec3<i32>(global0.a.b, 30008i, u_input.c.x), u_input.c, global0.c.x), u_input.c), global0.c.yxz, 1u, vec4<bool>(true, true, !any(global0.c.xxz) & !global0.c.x, global0.c.x));
    var_1 = Struct_3(global0.a, i32(-1i) * -6834i, global0.c.yyw, _wgslsmith_add_u32(abs(14050u), u_input.d), vec4<bool>(any(select(var_1.e, !vec4<bool>(false, global0.c.x, false, var_1.c.x), global0.c)), false, all(!select(var_1.e.xw, vec2<bool>(var_1.e.x, global0.c.x), global0.c.wx)), true));
    return Struct_1(_wgslsmith_div_f32(366f, -430f));
}

fn func_4(arg_0: u32, arg_1: Struct_5, arg_2: vec3<u32>, arg_3: u32) -> vec4<u32> {
    global0 = Struct_4(Struct_2(arg_1.b.c, -arg_1.b.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2179f, _wgslsmith_f_op_f32(func_2()))), arg_1.a.d), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a.c, arg_1.b.a, 781f, global0.b.a))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.a, -1441f, global0.b.a, global0.a.d.a) * vec4<f32>(arg_1.b.c, 1610f, global0.b.a, 1000f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0.b.a, -343f, 177f) * vec4<f32>(271f, -1582f, arg_1.b.d.a, -164f))))), !select(!select(vec4<bool>(false, true, true, global0.c.x), vec4<bool>(true, global0.c.x, global0.c.x, global0.c.x), global0.c), select(global0.c, vec4<bool>(global0.c.x, false, global0.c.x, global0.c.x), true), false));
    let var_0 = min(vec3<i32>(global0.a.b, _wgslsmith_mult_i32(0i, u_input.a), 0i), select(global1[_wgslsmith_index_u32(~5734u, 2u)], global1[_wgslsmith_index_u32(4294967295u, 2u)], !select(vec3<bool>(global0.c.x, global0.c.x, global0.c.x), vec3<bool>(global0.c.x, global0.c.x, true), true)));
    global0 = Struct_4(global0.a, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.d.a) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1.b.c, arg_1.a.c))))), vec4<bool>(global0.c.x, all(select(select(global0.c, global0.c, vec4<bool>(global0.c.x, global0.c.x, false, false)), !global0.c, vec4<bool>(false, global0.c.x, global0.c.x, global0.c.x))), global0.c.x, !any(!vec4<bool>(global0.c.x, false, true, false))));
    global0 = Struct_4(Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.a * arg_1.a.a)), _wgslsmith_f_op_f32(abs(global0.a.a)))), _wgslsmith_mult_i32(~(-514i >> (arg_3 % 32u)), max(-41089i, _wgslsmith_mult_i32(arg_1.b.b, -50282i))), 147f, func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.a, global0.a.c, arg_1.a.d.a, global0.b.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1177f, 1287f, 1000f, -761f) - vec4<f32>(1137f, global0.b.a, -1000f, -2236f))))), global0.a.d, global0.c);
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.a, global0.a.d.a, global0.a.a)), vec3<f32>(global0.b.a, -997f, arg_1.a.c))), vec3<f32>(arg_1.a.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))), -1406f)));
    return vec4<u32>(_wgslsmith_mult_u32(~1u << (~u_input.b.x % 32u), abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, arg_0), vec2<u32>(arg_2.x, arg_3)), _wgslsmith_mult_u32(34559u, arg_2.x)))), _wgslsmith_add_u32(~(~(~39966u)), 6569u), abs(arg_2.x), ~arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_4(1u, Struct_5(Struct_2(_wgslsmith_f_op_f32(max(-695f, global0.a.c)), abs(u_input.c.x), global0.a.c, func_1(vec4<f32>(global0.a.d.a, global0.a.c, global0.a.a, global0.b.a))), global0.a), ~((vec3<u32>(4294967295u, u_input.b.x, u_input.d) ^ u_input.b) << (countOneBits(u_input.b) % vec3<u32>(32u))), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(35275u, 1u, 37144u)) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 13271u, 36739u), vec3<u32>(32498u, u_input.e, 25579u)) % vec3<u32>(32u)), u_input.b));
    global1 = array<vec3<i32>, 2>();
    var var_1 = Struct_1(global0.b.a);
    var_1 = func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(913f, var_1.a, var_1.a, 1740f))))));
    global0 = Struct_4(Struct_2(-108f, -24759i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(global0.a.a, func_1(vec4<f32>(-744f, 1120f, global0.a.d.a, global0.a.a)).a)))), global0.b), global0.b, vec4<bool>(all(vec4<bool>(true, !global0.c.x, global0.c.x & false, global0.c.x)), global0.c.x, abs(1u & var_0.x) > reverseBits(_wgslsmith_add_u32(u_input.d, u_input.b.x)), false));
    let var_2 = true || (global0.c.x && !global0.c.x);
    let var_3 = global0.c;
    var_1 = global0.a.d;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(var_0.x, Struct_5(Struct_2(var_1.a, _wgslsmith_mult_i32(global0.a.b, -2147483647i), -279f, global0.a.d), Struct_2(_wgslsmith_f_op_f32(global0.b.a * 1531f), -1i, _wgslsmith_f_op_f32(-164f + -912f), Struct_1(var_1.a))), u_input.b | _wgslsmith_div_vec3_u32(min(vec3<u32>(u_input.e, var_0.x, 0u), vec3<u32>(u_input.e, var_0.x, 29954u)), vec3<u32>(1u, var_0.x, u_input.d)), ~_wgslsmith_dot_vec2_u32(var_0.yy, ~vec2<u32>(4294967295u, 1u))).x, firstTrailingBit(global1[_wgslsmith_index_u32(reverseBits(~0u << (0u % 32u)), 2u)]), ~vec3<i32>(0i, global0.a.b, _wgslsmith_dot_vec3_i32(global1[_wgslsmith_index_u32(u_input.e, 2u)] | vec3<i32>(u_input.a, 0i, -1i), -vec3<i32>(122i, global0.a.b, u_input.c.x))), min(-(vec4<i32>(30787i, u_input.c.x, u_input.c.x, u_input.c.x) ^ firstTrailingBit(vec4<i32>(101483i, u_input.a, u_input.a, 10849i))), ~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a.b, 30278i, -23711i, 2265i), vec4<i32>(-2476i, global0.a.b, global0.a.b, global0.a.b), vec4<i32>(1i, 0i, 35257i, -17353i)))), ~vec4<i32>(-2147483647i >> (reverseBits(var_0.x) % 32u), global0.a.b, _wgslsmith_sub_i32(_wgslsmith_sub_i32(-1i, u_input.a), -1i), global0.a.b));
}

