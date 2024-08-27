struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec2<i32>(38676i, 1i), 26648u, vec2<i32>(0i, 1122i), vec3<i32>(-21141i, -1i, 18967i));

var<private> global1: u32 = 4294967295u;

var<private> global2: array<u32, 12> = array<u32, 12>(47362u, 49198u, 1u, 10525u, 4294967295u, 1u, 16267u, 52808u, 37141u, 4294967295u, 4294967295u, 24066u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<u32>) -> bool {
    let var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(global0.e.x >> (0u % 32u), ~2147483647i, _wgslsmith_mult_i32(65174i, _wgslsmith_dot_vec3_i32(global0.e, firstTrailingBit(vec3<i32>(global0.d.x, global0.e.x, 2147483647i)))), global0.e.x ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global0.e.x, global0.b.x, global0.e.x, 1041i) | vec4<i32>(global0.b.x, -24374i, 65020i, -39963i), ~vec4<i32>(global0.b.x, 34388i, global0.b.x, 1i))), select(vec4<i32>(12436i & global0.d.x, global0.d.x, _wgslsmith_mult_i32(max(global0.b.x, 1i), global0.e.x), ~global0.d.x), _wgslsmith_mod_vec4_i32(min(~vec4<i32>(1i, global0.e.x, global0.e.x, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(-10084i, 42289i, 0i, 0i), vec4<i32>(1i, 0i, global0.e.x, global0.d.x))), -(vec4<i32>(global0.e.x, global0.e.x, 67214i, global0.e.x) ^ vec4<i32>(global0.e.x, global0.b.x, 6524i, global0.d.x))), vec4<bool>(true, global0.a, all(vec4<bool>(global0.a, global0.a, global0.a, global0.a)), global0.a)));
    var var_1 = select(select(select(select(!vec2<bool>(global0.a, false), !vec2<bool>(global0.a, true), !vec2<bool>(global0.a, false)), vec2<bool>(true, true), global0.a), !(!vec2<bool>(global0.a, global0.a)), !any(!vec2<bool>(false, global0.a))), vec2<bool>(select(!all(vec3<bool>(false, global0.a, global0.a)), true, true), var_0.x == countOneBits(-35079i)), global0.a);
    var_1 = !(!select(vec2<bool>(false, var_1.x), vec2<bool>(any(vec3<bool>(var_1.x, var_1.x, global0.a)), true), !select(vec2<bool>(var_1.x, false), vec2<bool>(global0.a, var_1.x), vec2<bool>(false, false))));
    let var_2 = var_0;
    global0 = Struct_1(any(vec2<bool>(true, true)), vec2<i32>(_wgslsmith_clamp_i32(~var_2.x & 1i, 1i, global0.e.x), 2147483647i ^ var_0.x), arg_0.x, vec2<i32>(-1i) * -(select(vec2<i32>(var_0.x, var_2.x), vec2<i32>(var_2.x, global0.d.x), vec2<bool>(global0.a, global0.a)) | select(vec2<i32>(var_2.x, var_2.x), global0.d, false)), var_2.wwz);
    return !global0.a;
}

fn func_2() -> f32 {
    var var_0 = ~(~vec4<i32>(_wgslsmith_add_i32(global0.b.x ^ global0.b.x, 2579i), global0.e.x, global0.e.x, ~_wgslsmith_dot_vec3_i32(global0.e, vec3<i32>(3344i, -1i, global0.d.x))));
    let var_1 = Struct_1(any(!vec3<bool>(true, func_3(vec4<u32>(global0.c, 102973u, global2[_wgslsmith_index_u32(global0.c, 12u)], global2[_wgslsmith_index_u32(global0.c, 12u)])), true)), _wgslsmith_mod_vec2_i32(var_0.xw, reverseBits(vec2<i32>(var_0.x, var_0.x))), ~(~global2[_wgslsmith_index_u32(1u, 12u)]), -var_0.ww ^ ~vec2<i32>(-82760i, global0.d.x), var_0.zyz);
    var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(-firstTrailingBit(vec4<i32>(1i, -8605i, var_1.e.x, var_1.b.x)), vec4<i32>(var_0.x, var_0.x ^ 1i, abs(-var_1.e.x), -(-24593i | var_1.b.x))), select(vec4<i32>(~(-19342i), firstLeadingBit(global0.b.x), global0.b.x, var_0.x >> (u_input.b.x % 32u)), vec4<i32>(0i, global0.d.x ^ var_0.x, _wgslsmith_clamp_i32(1449i, var_1.d.x, global0.b.x), abs(19857i)), vec4<bool>(true, true, all(vec4<bool>(false, var_1.a, true, var_1.a)), any(vec4<bool>(false, global0.a, false, true)))) << (~(~(vec4<u32>(1u, 1u, 26650u, global0.c) << (vec4<u32>(24289u, 25899u, global0.c, global2[_wgslsmith_index_u32(global0.c, 12u)]) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    global1 = ~abs(_wgslsmith_sub_u32(global0.c, var_1.c & var_1.c) ^ 40254u);
    var var_2 = Struct_1(var_1.a, vec2<i32>(var_0.x, var_1.e.x), 0u, var_1.d, -var_0.zxw);
    return _wgslsmith_f_op_f32(f32(-1f) * -413f);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = ~(arg_1.d.x & arg_1.e.x);
    global1 = arg_1.c | arg_1.c;
    let var_1 = _wgslsmith_mod_u32(~global2[_wgslsmith_index_u32(~(~global0.c), 12u)], 1u);
    var var_2 = vec4<bool>((_wgslsmith_clamp_u32(1u, ~global0.c, arg_1.c) > abs(u_input.a)) != global0.a, any(vec2<bool>(1181f >= _wgslsmith_f_op_f32(arg_0.x - 1000f), _wgslsmith_f_op_f32(floor(arg_0.x)) > 334f)), !(_wgslsmith_dot_vec3_i32(global0.e, arg_1.e >> (vec3<u32>(4294967295u, 0u, var_1) % vec3<u32>(32u))) < _wgslsmith_dot_vec2_i32(~arg_1.e.xy, vec2<i32>(-86208i, global0.b.x))), select(func_3(vec4<u32>(0u, 40408u, arg_1.c, var_1) ^ _wgslsmith_div_vec4_u32(vec4<u32>(0u, 1u, 4294967295u, 11139u), vec4<u32>(8142u, arg_1.c, var_1, arg_1.c))), !(!(global0.d.x > arg_1.e.x)), -899f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(200f)))));
    var_2 = select(select(!vec4<bool>(!var_2.x, true, u_input.b.x > u_input.b.x, false || global0.a), vec4<bool>(_wgslsmith_div_f32(1088f, -1546f) <= _wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-435f + -649f) != _wgslsmith_f_op_f32(arg_0.x + 1010f), (var_2.x | false) && (arg_0.x == arg_0.x), (10079i <= arg_1.b.x) & global0.a), !vec4<bool>(!global0.a, all(var_2.yw), all(vec4<bool>(global0.a, arg_1.a, var_2.x, true)), arg_1.d.x < 34387i)), select(!vec4<bool>(all(vec2<bool>(true, arg_1.a)), !arg_1.a, all(vec4<bool>(var_2.x, arg_1.a, true, true)), true), select(vec4<bool>(arg_1.a, true, 6062u != arg_1.c, any(var_2.xxx)), vec4<bool>(global0.a, arg_1.d.x < -9344i, true, global0.a), select(true & global0.a, true, true)), !select(select(vec4<bool>(false, var_2.x, arg_1.a, false), vec4<bool>(false, false, false, false), vec4<bool>(arg_1.a, false, false, true)), vec4<bool>(arg_1.a, arg_1.a, global0.a, global0.a), vec4<bool>(arg_1.a, false, false, arg_1.a))), !select(vec4<bool>(true, !var_2.x, true, !var_2.x), !(!vec4<bool>(false, global0.a, true, var_2.x)), !select(vec4<bool>(global0.a, global0.a, var_2.x, true), vec4<bool>(global0.a, true, false, global0.a), vec4<bool>(true, var_2.x, true, true))));
    return Struct_1((arg_0.x <= -965f) && arg_1.a, -_wgslsmith_sub_vec2_i32(vec2<i32>(-2673i, arg_1.b.x), vec2<i32>(1i, 2147483647i)) | min(global0.b, _wgslsmith_div_vec2_i32(global0.e.xy, vec2<i32>(-1i, -7551i)) ^ max(arg_1.b, vec2<i32>(global0.e.x, global0.e.x))), _wgslsmith_mod_u32(global0.c, ~_wgslsmith_mult_u32(_wgslsmith_add_u32(var_1, u_input.b.x), arg_1.c)), -arg_1.d, firstLeadingBit(vec3<i32>(global0.e.x, global0.b.x, global0.d.x)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    global2 = array<u32, 12>();
    global0 = func_4(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(select(-1717f, _wgslsmith_f_op_f32(max(2335f, -441f)), all(vec3<bool>(true, global0.a, arg_1.a)))), 1312f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f)))))), Struct_1(true, firstTrailingBit(vec2<i32>(arg_1.b.x, _wgslsmith_mult_i32(arg_0, global0.b.x))), 0u, vec2<i32>(arg_1.e.x, firstTrailingBit(-1i) & ~1453i), vec3<i32>(arg_1.b.x, arg_1.e.x, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, arg_0), global0.b))));
    global2 = array<u32, 12>();
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(242f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-467f + -1984f) * _wgslsmith_f_op_f32(-388f + -197f)), 1000f, _wgslsmith_f_op_f32(-134f - _wgslsmith_f_op_f32(max(-141f, -1375f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(440f, 650f, -1121f, 525f), vec4<f32>(-110f, -321f, -1000f, 1000f), global0.a)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-151f, -772f, -633f, -473f) * vec4<f32>(695f, -309f, -888f, 221f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(164f, 673f, -492f, -1324f)))))), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-437f * -649f), 1052f, 1219f, 211f)), Struct_1(true, arg_1.e.yz, global2[_wgslsmith_index_u32(func_4(vec4<f32>(1430f, 737f, 197f, 492f), arg_1).c, 12u)], _wgslsmith_div_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(arg_1.b.x, arg_1.e.x)) & global0.e.zy, -abs(vec3<i32>(8330i, arg_1.b.x, arg_1.d.x)))));
    let var_1 = var_0;
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec4<bool>) -> f32 {
    var var_0 = false;
    let var_1 = func_1(max(global0.d.x, _wgslsmith_clamp_i32(-28381i, reverseBits(arg_1.d.x), ~arg_1.e.x)) | arg_0.e.x, func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(787f, 882f, 957f, 1433f) * vec4<f32>(-234f, 1000f, 395f, -1000f)) + vec4<f32>(249f, 403f, -865f, 639f)))), func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1063f, 1074f, 420f) - vec4<f32>(1364f, -1661f, -1630f, -1224f))), Struct_1(true, global0.d >> (vec2<u32>(1u, 1u) % vec2<u32>(32u)), firstLeadingBit(arg_1.c), -global0.b, _wgslsmith_mult_vec3_i32(vec3<i32>(arg_1.b.x, arg_1.e.x, 0i), vec3<i32>(1i, 32027i, -1i))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-137f, -1065f, -569f, 677f) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(700f, 1077f, -1007f, -446f)))))));
    global2 = array<u32, 12>();
    var var_3 = arg_1.a & arg_0.a;
    return -1227f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = _wgslsmith_f_op_f32(func_5(func_1(-17279i, Struct_1(true, vec2<i32>(global0.d.x, ~2147483647i), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.c, 12u)], 12u)], ~u_input.b.x), 12u)], _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(global0.b, vec2<i32>(-57634i, global0.d.x)), vec2<i32>(global0.e.x, global0.b.x)), -global0.e | (global0.e & global0.e))), func_1(global0.b.x, Struct_1(!global0.a, global0.b, ~global0.c, -global0.e.yx, _wgslsmith_add_vec3_i32(-vec3<i32>(global0.e.x, global0.d.x, 0i), _wgslsmith_sub_vec3_i32(global0.e, global0.e)))), min(~firstLeadingBit(45480u) >> (global2[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, ~global2[_wgslsmith_index_u32(4294967295u, 12u)]), 12u)] % 32u), ~firstLeadingBit(~global2[_wgslsmith_index_u32(global0.c, 12u)])), select(vec4<bool>(!(global0.a | global0.a), true | func_1(global0.b.x, Struct_1(true, global0.e.yx, global2[_wgslsmith_index_u32(u_input.a, 12u)], global0.d, global0.e)).a, false, any(!vec4<bool>(global0.a, global0.a, global0.a, global0.a))), !select(!vec4<bool>(global0.a, false, global0.a, true), !vec4<bool>(true, global0.a, false, global0.a), false), global0.a)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-407f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-110f * 355f) - -1159f)), 428f));
    global0 = Struct_1(true, ~abs(min(_wgslsmith_div_vec2_i32(vec2<i32>(global0.d.x, global0.d.x), vec2<i32>(2147483647i, 0i)), firstLeadingBit(vec2<i32>(-20031i, global0.d.x)))), ~(max(global0.c, 60553u) >> (abs(38083u) % 32u)) ^ u_input.a, global0.d, global0.e);
    global1 = _wgslsmith_dot_vec3_u32(firstLeadingBit(u_input.b), abs(vec3<u32>(global2[_wgslsmith_index_u32(reverseBits(4294967295u), 12u)] ^ reverseBits(19539u), _wgslsmith_clamp_u32(39754u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(58676u, 12u)], 12u)], 1u) << (u_input.b.x % 32u), ~(~global0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(13229u, -5417i);
}

