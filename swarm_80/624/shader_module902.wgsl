struct Struct_1 {
    a: u32,
    b: u32,
    c: f32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(24797u, 15337u, 82075u);

var<private> global1: array<Struct_1, 9>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> u32 {
    let var_0 = ~arg_1.x;
    let var_1 = global1[_wgslsmith_index_u32(var_0 ^ ~67354u, 9u)];
    global1 = array<Struct_1, 9>();
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global0.x, _wgslsmith_mult_u32(0u, ~_wgslsmith_sub_u32(1u, global0.x)) << (~min(firstLeadingBit(var_0), ~global0.x) % 32u)), 9u)];
    var var_3 = vec3<i32>(~abs(arg_0), -30563i, u_input.b);
    return 1u;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = Struct_1(arg_1.a, 4926u, _wgslsmith_f_op_f32(abs(1840f)), _wgslsmith_dot_vec4_u32(firstTrailingBit(firstTrailingBit(firstLeadingBit(vec4<u32>(12825u, global0.x, 35317u, global0.x)))), abs(max(vec4<u32>(arg_1.a, 1u, 10972u, global0.x), vec4<u32>(global0.x, arg_1.e, 0u, 1u))) | vec4<u32>(max(1u, 100255u), 1u, 49627u, arg_1.a >> (4294967295u % 32u))), ~4294967295u & max(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(51515u, 1u, arg_1.e, global0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(67947u, arg_1.a, global0.x, 0u), vec4<u32>(0u, 1u, global0.x, arg_1.b)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -587f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c - -1002f) + var_0.c) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.c)) + _wgslsmith_f_op_f32(max(-1071f, -102f))), -672f))));
    global1 = array<Struct_1, 9>();
    let var_2 = firstLeadingBit(countOneBits(_wgslsmith_sub_u32(global0.x, 4294967295u)) | countOneBits(func_2(arg_0.x, ~global0.zx)));
    let var_3 = var_0;
    return !(!select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, true)), true, true, any(vec2<bool>(false, false))), vec4<bool>(true, arg_0.x > 0i, any(vec3<bool>(true, true, false)), true)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: vec3<f32>) -> vec2<f32> {
    global0 = ~vec3<u32>(func_2(~_wgslsmith_sub_i32(-20630i, 0i), _wgslsmith_sub_vec2_u32(global0.zx, _wgslsmith_add_vec2_u32(vec2<u32>(16319u, 0u), global0.zx))), 1u, global0.x);
    global0 = countOneBits(~(~(~min(vec3<u32>(2523u, 0u, global0.x), vec3<u32>(arg_1.x, global0.x, global0.x)))));
    let var_0 = vec4<bool>(!(true | any(func_3(vec4<i32>(20309i, 24192i, arg_0.x, 2147483647i), Struct_1(arg_1.x, global0.x, arg_3.x, 9998u, 4294967295u)))), !(!(-1i >= (arg_2.x << (30740u % 32u)))), ~(~global0.x) >= select(arg_1.x, ~(~arg_1.x), true), all(!select(vec4<bool>(true, false, true, true), func_3(arg_0, global1[_wgslsmith_index_u32(0u, 9u)]), arg_3.x > -1632f)));
    var var_1 = true;
    global1 = array<Struct_1, 9>();
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1582f - arg_3.x), arg_3.x) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_3.x, -459f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(arg_3.zz)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(622f, arg_3.x)))))));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<f32>) -> u32 {
    let var_0 = arg_0;
    var var_1 = -_wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-42516i, u_input.b, u_input.c.x, u_input.d) >> (vec4<u32>(1u, 4294967295u, global0.x, global0.x) % vec4<u32>(32u)), ~vec4<i32>(u_input.c.x, u_input.d, u_input.a, -15330i)), -35316i, 2147483647i, -10379i), select(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -25785i, 0i, -68715i), vec4<i32>(-48614i, u_input.a, u_input.b, -1i), vec4<i32>(u_input.b, -7417i, u_input.c.x, 2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.a, -1i, 0i), vec4<i32>(u_input.c.x, u_input.d, -2147483647i, -1i), vec4<i32>(4007i, u_input.b, 38136i, 0i))), max(vec4<i32>(u_input.c.x, 1i, u_input.c.x, u_input.d), -vec4<i32>(u_input.d, u_input.c.x, -2147483647i, u_input.a)), true | arg_0.x));
    var var_2 = ~(~min(vec4<i32>(var_1.x, _wgslsmith_dot_vec3_i32(var_1.zyy, var_1.zyz), _wgslsmith_clamp_i32(-6928i, 0i, 1i), ~var_1.x), ~select(vec4<i32>(var_1.x, -2147483647i, -2147483647i, 2147483647i), vec4<i32>(3658i, u_input.c.x, var_1.x, var_1.x), arg_0)));
    let var_3 = max(min(vec3<u32>(global0.x, global0.x >> (global0.x % 32u), countOneBits(4294967295u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(global0.x, global0.x, 1u))) | ~(~(~vec3<u32>(global0.x, global0.x, 11696u))), select(abs(~(vec3<u32>(77886u, global0.x, global0.x) & vec3<u32>(4294967295u, 51332u, global0.x))), min(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, global0.x, global0.x), vec3<u32>(0u, 16830u, global0.x))), vec3<u32>(0u, global0.x, global0.x) << (vec3<u32>(1u, 8070u, global0.x) % vec3<u32>(32u))), vec3<bool>(~var_1.x != 1i, _wgslsmith_f_op_f32(arg_1.x + 1829f) <= _wgslsmith_f_op_f32(-arg_1.x), arg_0.x)));
    var var_4 = arg_1.x;
    return ~_wgslsmith_add_u32(abs(~83382u), _wgslsmith_sub_u32(var_3.x, var_3.x >> (global0.x % 32u)) & (5577u | firstLeadingBit(var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<u32>(1u, 19141u, 1u);
    global0 = ~_wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(1u, firstTrailingBit(global0.x), _wgslsmith_clamp_u32(global0.x, global0.x, global0.x))), vec3<u32>(47997u, global0.x, 33443u) & vec3<u32>(select(4294967295u, 101633u, true), select(global0.x, global0.x, true), 1u));
    let var_0 = vec4<u32>(~1u, global0.x, func_4(vec4<bool>(true, false, true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec4<i32>(u_input.c.x, -11739i, u_input.c.x, -1i), global0.zz, vec2<i32>(-1i, -30022i), vec3<f32>(-918f, 880f, 473f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(855f, 541f) + vec2<f32>(1455f, 1000f))) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(245f, 464f)), vec2<f32>(-149f, 1000f))))), ~(~global0.x));
    let var_1 = Struct_1(~_wgslsmith_add_u32(40782u, ~_wgslsmith_dot_vec3_u32(var_0.yzz, vec3<u32>(var_0.x, 1u, global0.x))), var_0.x, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1055f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-617f, -1527f) + _wgslsmith_f_op_f32(min(-181f, 118f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1726f), _wgslsmith_f_op_f32(f32(-1f) * -1138f))))), 59728u, ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.x & global0.x, 4576u), _wgslsmith_mod_u32(firstLeadingBit(0u), global0.x & 37529u)));
    var var_2 = Struct_1(_wgslsmith_mod_u32(min(~global0.x, 49444u >> (var_0.x % 32u)) & var_0.x, abs(21929u)), 68403u, var_1.c, 1u, _wgslsmith_dot_vec3_u32(var_0.zwz, vec3<u32>(global0.x, max(4294967295u, global0.x), 57562u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1579f * -437f) * _wgslsmith_f_op_f32(floor(var_2.c))) + var_2.c))));
}

