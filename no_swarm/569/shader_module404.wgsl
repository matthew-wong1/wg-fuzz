struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 5>;

var<private> global1: f32;

var<private> global2: vec4<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> i32 {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-736f + arg_1.a), 342f))));
    let var_2 = _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(floor(arg_1.a)));
    var var_3 = _wgslsmith_f_op_f32(1f * 711f);
    var var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -274f), select(countOneBits(min(u_input.b.x, global2.x)), firstTrailingBit(-52834i), var_0) ^ _wgslsmith_sub_i32(-1i, global2.x), arg_0 & _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_div_vec3_i32(global2.ywx, global2.zww)), vec3<i32>(~(-2147483647i), global2.x, 0i)));
    return ~global2.x;
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> u32 {
    let var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(-1i, -1i, u_input.b.x, 0i), vec4<i32>(0i, 44236i, 1i, u_input.b.x) ^ vec4<i32>(u_input.b.x, -1i, -24304i, 2147483647i), vec4<i32>(u_input.b.x, u_input.c, u_input.c, u_input.b.x)), vec4<i32>(41148i, _wgslsmith_dot_vec4_i32(vec4<i32>(47149i, -13307i, 52540i, u_input.c), vec4<i32>(u_input.c, 801i, u_input.b.x, global2.x)), global2.x & 0i, -2147483647i)), func_3(-min(global2.x, u_input.b.x), arg_1), 43184i ^ u_input.b.x, max(-(~(-2147483647i)), 52086i)) << (arg_1.b % vec4<u32>(32u));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(466f))), -713f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a - -1164f), 1f))));
    var var_2 = select(arg_1.b, ~abs(arg_1.b), select(vec4<bool>((arg_0 == 1u) & false, all(vec3<bool>(false, true, true)), false, false), vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(false, true), true)), true, false, select(false, true, all(vec4<bool>(false, false, true, false)))), -1954f < _wgslsmith_f_op_f32(929f + var_1.x)));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(226f)), 1467f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.a, 791f, true))))), _wgslsmith_div_i32(_wgslsmith_add_i32(min(var_0.x ^ var_0.x, firstLeadingBit(var_0.x)), _wgslsmith_sub_i32(i32(-1i) * -74352i, -1i)), -_wgslsmith_mult_i32(-global2.x, 0i)), _wgslsmith_dot_vec2_i32(global2.yz, vec2<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(7571i, var_0.x, 1i, 31423i), reverseBits(vec4<i32>(u_input.c, global2.x, u_input.b.x, u_input.b.x))), u_input.b.x)));
    global1 = 648f;
    return _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0 >> (0u % 32u)), firstLeadingBit(vec2<u32>(~(~50182u), max(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 2407u, 4294967295u), vec3<u32>(arg_1.c, arg_1.c, arg_0))))));
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<bool>) -> Struct_2 {
    let var_0 = ~(-abs(global2.wx));
    global0 = array<vec2<u32>, 5>();
    var var_1 = _wgslsmith_mult_i32(arg_1 >> (_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.a, u_input.a)), global0[_wgslsmith_index_u32(~u_input.d, 5u)]) % 32u), -var_0.x >> ((_wgslsmith_div_u32(select(arg_0.x, u_input.d, arg_2.x), countOneBits(arg_0.x)) >> (1u % 32u)) % 32u));
    global2 = vec4<i32>(-40248i, global2.x, var_0.x, u_input.b.x);
    global0 = array<vec2<u32>, 5>();
    return Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(300f - -1028f))) * -205f))), select(vec4<u32>(~(~arg_0.x), ~19728u | _wgslsmith_dot_vec3_u32(arg_0.yyz, vec3<u32>(u_input.a, 4294967295u, u_input.a)), 59795u, _wgslsmith_dot_vec3_u32(arg_0.xzw, ~vec3<u32>(4294967295u, 4294967295u, arg_0.x))), ~(vec4<u32>(1u, arg_0.x, 10510u, 0u) & ~vec4<u32>(1u, arg_0.x, u_input.d, u_input.a)), vec4<bool>(!arg_2.x, !arg_2.x | arg_2.x, true, !(!arg_2.x))), u_input.a);
}

fn func_1() -> f32 {
    let var_0 = func_4(~vec4<u32>((0u >> (0u % 32u)) & u_input.a, 51161u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.d, u_input.a), u_input.a, 19980u), func_2(u_input.a, Struct_2(504f, vec4<u32>(68524u, u_input.d, u_input.a, u_input.a), u_input.a))), _wgslsmith_mod_i32(-32087i, u_input.c), vec2<bool>(all(vec4<bool>(true, true, true, true)), true != (u_input.a == u_input.d)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * var_0.a), ~_wgslsmith_mult_i32(global2.x, 0i), u_input.b.x);
    var var_2 = reverseBits(~abs(_wgslsmith_dot_vec4_u32(var_0.b, var_0.b)));
    var_2 = 64866u;
    let var_3 = true;
    return _wgslsmith_f_op_f32(sign(-1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = -1000f;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1047f)), -553f))));
    global0 = array<vec2<u32>, 5>();
    var var_1 = ~(5753u | ~_wgslsmith_dot_vec3_u32(vec3<u32>(34344u, u_input.d, u_input.a), vec3<u32>(0u, u_input.d, u_input.a))) | u_input.d;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) + 446f);
    global2 = vec4<i32>(2147483647i, u_input.c, global2.x, ~(-1i));
    var var_2 = select(select(vec2<bool>(abs(-40500i) <= u_input.b.x, true), !select(vec2<bool>(true, false), !vec2<bool>(true, var_0), select(vec2<bool>(var_0, true), vec2<bool>(var_0, true), vec2<bool>(true, false))), !select(vec2<bool>(var_0, var_0), vec2<bool>(true, false), all(vec4<bool>(var_0, true, true, true)))), select(!(!(!vec2<bool>(var_0, var_0))), select(!select(vec2<bool>(var_0, false), vec2<bool>(false, true), var_0), !vec2<bool>(var_0, var_0), select(true, !var_0, var_0)), vec2<bool>(false, !(!var_0))), vec2<bool>(true | ((33969u <= u_input.d) & var_0), false));
    global2 = ~_wgslsmith_mult_vec4_i32(-_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.b.x, -32257i, 15380i, global2.x), ~vec4<i32>(-1i, -39640i, 0i, 0i)), -(~vec4<i32>(-39616i, 0i, global2.x, u_input.b.x)) | ((vec4<i32>(-77712i, -21432i, 52048i, u_input.c) ^ vec4<i32>(u_input.b.x, global2.x, global2.x, u_input.b.x)) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, -26931i, -4926i, global2.x), vec4<i32>(u_input.c, -8121i, u_input.c, -50514i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-998f)), -992f), u_input.d, ~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a, 40410u, 1u, u_input.d) & vec4<u32>(1u, u_input.a, 29547u, 1u)), _wgslsmith_div_vec4_u32(min(vec4<u32>(4294967295u, 62863u, 2133u, u_input.d), vec4<u32>(44088u, u_input.a, 4294967295u, u_input.a)), ~vec4<u32>(1u, u_input.d, 63239u, 12008u))));
}

