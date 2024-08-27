struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 26>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<f32>) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_u32(~(~(~(vec4<u32>(u_input.a, u_input.a, 23480u, u_input.a) >> (vec4<u32>(53748u, u_input.a, 1u, 1u) % vec4<u32>(32u))))), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)), vec4<u32>(10142u, u_input.a, 19054u, u_input.a)), reverseBits(reverseBits(vec4<u32>(4294967295u, 11565u, 1u, 31606u))), _wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(18281u, 0u, 0u, 74611u)), select(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 65997u, u_input.a), vec4<u32>(u_input.a, u_input.a, 80437u, 61484u)), _wgslsmith_sub_vec4_u32(vec4<u32>(33624u, 1u, u_input.a, 5361u), vec4<u32>(u_input.a, 20228u, 20561u, u_input.a)), vec4<bool>(true, true, true, true)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.x + 442f), arg_2.x)), arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.x), -386f))), 489f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.x, 789f)))), _wgslsmith_f_op_f32(1328f - -1590f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_2.x, -434f, false)), 907f), arg_2.x, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_div_f32(-663f, arg_2.x), arg_1 == arg_0.x)) + _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(arg_2.x)))))));
    global0 = array<vec2<bool>, 26>();
    global0 = array<vec2<bool>, 26>();
    var var_2 = vec2<bool>(any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false))) & !(!all(global0[_wgslsmith_index_u32(var_0, 26u)])), true);
    return u_input.a & reverseBits(select(abs(~4294967295u), select(0u, _wgslsmith_add_u32(1u, 33799u), true), all(global0[_wgslsmith_index_u32(var_0, 26u)])));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<f32>) -> vec4<f32> {
    var var_0 = Struct_3(!(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true), true)));
    let var_1 = vec2<u32>(~(~u_input.a), ~func_3(abs(arg_0), -2147483647i << (u_input.a % 32u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-942f, -519f))) ^ _wgslsmith_add_u32(45935u, u_input.a));
    var var_2 = Struct_2(Struct_1(~firstTrailingBit(vec3<i32>(arg_0.x, arg_0.x, arg_0.x)) ^ countOneBits(firstLeadingBit(vec3<i32>(u_input.b, 0i, -1i))), (~u_input.a << (_wgslsmith_add_u32(var_1.x, u_input.a) % 32u)) < var_1.x, all(vec3<bool>(var_0.a.x && false, false & var_0.a.x, true)), select(var_0.a.xwx, vec3<bool>(false, !var_0.a.x, true), select(var_0.a.yzy, vec3<bool>(var_0.a.x, false, var_0.a.x), all(var_0.a)))), true, _wgslsmith_mult_u32(var_1.x, 1u), Struct_1(vec3<i32>(u_input.b, arg_0.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(32844i, 23150i, -1i, arg_0.x)), vec4<i32>(u_input.b, arg_0.x, -1i, 0i))), (reverseBits(arg_0.x) | _wgslsmith_div_i32(arg_0.x, arg_0.x)) == -_wgslsmith_mod_i32(17200i, arg_0.x), !var_0.a.x, vec3<bool>(arg_1.x < _wgslsmith_f_op_f32(-434f + -1000f), all(!var_0.a), true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(arg_1.yz + _wgslsmith_f_op_vec2_f32(select(arg_1.xz, vec2<f32>(-256f, arg_1.x), var_0.a.x))))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x)), vec2<f32>(arg_1.x, arg_1.x)))));
    let var_3 = Struct_2(Struct_1(min(_wgslsmith_div_vec3_i32(var_2.a.a, abs(var_2.a.a)), var_2.d.a), any(select(vec2<bool>(var_2.a.c, true), var_2.a.d.yx, var_2.d.c)) | var_0.a.x, var_2.a.d.x, var_2.d.d), any(select(var_0.a, vec4<bool>(true & var_0.a.x, true, all(vec4<bool>(var_2.d.d.x, var_2.b, false, var_0.a.x)), var_0.a.x), !any(global0[_wgslsmith_index_u32(u_input.a, 26u)]))), max(var_2.c, ~u_input.a), Struct_1(_wgslsmith_mult_vec3_i32(countOneBits(~var_2.d.a), var_2.a.a >> (vec3<u32>(1u, 4294967295u, 4294967295u) % vec3<u32>(32u))), any(var_2.d.d), !any(var_0.a.xxz), var_0.a.xyw), _wgslsmith_f_op_vec2_f32(arg_1.xx + vec2<f32>(-140f, arg_1.x)));
    global0 = array<vec2<bool>, 26>();
    return _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1265f))), var_2.e.x, var_2.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.e.x, var_3.e.x, var_3.e.x, var_3.e.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(760f, 1000f, var_3.e.x, -829f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e.x, 1000f, var_3.e.x, -109f)))), 30224u <= _wgslsmith_dot_vec2_u32(~select(var_1, var_1, var_3.b), ~(~vec2<u32>(var_2.c, var_2.c)))));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: Struct_1, arg_3: f32) -> bool {
    global0 = array<vec2<bool>, 26>();
    global0 = array<vec2<bool>, 26>();
    var var_0 = u_input.a;
    var var_1 = Struct_1(vec3<i32>(arg_1, u_input.b, arg_2.a.x) | _wgslsmith_mod_vec3_i32(select(arg_2.a, vec3<i32>(arg_1, 10543i, -10477i), arg_2.c), select(arg_2.a, arg_2.a, vec3<bool>(false, false, false)) ^ (vec3<i32>(2147483647i, arg_2.a.x, -2147483647i) << (vec3<u32>(1u, 21449u, 0u) % vec3<u32>(32u)))), true, true, select(!vec3<bool>(true, arg_2.d.x, any(vec4<bool>(false, arg_2.b, arg_2.b, false))), arg_2.d, -2147483647i > u_input.b));
    let var_2 = arg_3;
    return true;
}

fn func_1(arg_0: f32) -> Struct_3 {
    var var_0 = vec3<f32>(-1228f, arg_0, 112f);
    global0 = array<vec2<bool>, 26>();
    let var_1 = Struct_1(vec3<i32>(u_input.b, -_wgslsmith_div_i32(u_input.b, -7952i) >> (u_input.a % 32u), -u_input.b), func_4(_wgslsmith_f_op_vec4_f32(func_2(max(abs(vec2<i32>(2147483647i, 11991i)), _wgslsmith_sub_vec2_i32(vec2<i32>(43934i, u_input.b), vec2<i32>(12456i, -29201i))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-471f, -655f, arg_0)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-804f, -1321f, arg_0), vec3<f32>(1303f, var_0.x, 142f), vec3<bool>(false, true, true))))))), abs(u_input.b), Struct_1(_wgslsmith_add_vec3_i32(select(vec3<i32>(-21127i, -30355i, u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b), false), abs(vec3<i32>(5025i, u_input.b, u_input.b))), true, select(true, false, false) | true, vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-506f - _wgslsmith_f_op_f32(f32(-1f) * -2271f)))), !(func_4(_wgslsmith_div_vec4_f32(vec4<f32>(1041f, arg_0, arg_0, var_0.x), vec4<f32>(1642f, arg_0, 1700f, -888f)), abs(u_input.b), Struct_1(vec3<i32>(u_input.b, u_input.b, 24327i), false, false, vec3<bool>(false, true, false)), _wgslsmith_f_op_f32(f32(-1f) * -499f)) | true), vec3<bool>(true, true, true));
    global0 = array<vec2<bool>, 26>();
    var var_2 = var_1;
    return Struct_3(vec4<bool>(var_2.b, var_1.b, true, u_input.a < _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 0u))));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: f32) -> vec3<bool> {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_div_vec2_u32(~(~select(abs(vec2<u32>(12751u, 4294967295u)), ~vec2<u32>(u_input.a, 22428u), vec2<bool>(arg_0.a.x, true))), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, ~4294967295u)));
    var var_2 = ~abs(vec2<u32>(~(~var_1.x), ~var_1.x));
    global0 = array<vec2<bool>, 26>();
    var var_3 = Struct_2(Struct_1(vec3<i32>(-1i) * -countOneBits(vec3<i32>(2147483647i, 2147483647i, arg_1)), true, arg_0.a.x, select(var_0.a.zxz, var_0.a.yyx, func_4(vec4<f32>(arg_2, 509f, -1642f, -382f), max(14199i, -2147483647i), Struct_1(vec3<i32>(12733i, 0i, u_input.b), var_0.a.x, false, vec3<bool>(true, var_0.a.x, var_0.a.x)), _wgslsmith_div_f32(arg_2, arg_2)))), true, 46048u, Struct_1(_wgslsmith_clamp_vec3_i32(firstLeadingBit(firstTrailingBit(vec3<i32>(18874i, 68755i, arg_1))), reverseBits(abs(vec3<i32>(arg_1, -1i, 2147483647i))), _wgslsmith_mod_vec3_i32(~vec3<i32>(arg_1, arg_1, arg_1), ~vec3<i32>(arg_1, 2147483647i, u_input.b))), !(_wgslsmith_f_op_f32(544f * arg_2) < arg_2), all(var_0.a), select(vec3<bool>(arg_0.a.x, false, true), var_0.a.yzz, !arg_0.a.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2)) * vec2<f32>(arg_2, -902f)))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(677f)))), _wgslsmith_f_op_f32(abs(arg_2))), vec2<bool>(any(!var_0.a), true))));
    return vec3<bool>(true, false, !any(select(!vec4<bool>(var_0.a.x, true, true, true), vec4<bool>(false, var_0.a.x, true, false), select(var_0.a, arg_0.a, var_3.b))));
}

fn func_6(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<i32>) -> Struct_3 {
    global0 = array<vec2<bool>, 26>();
    let var_0 = Struct_1(max(max(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.x, arg_2.x, -47582i), vec3<i32>(u_input.b, 2147483647i, u_input.b)), max(arg_2.yzx, vec3<i32>(0i, arg_2.x, -7813i))), -arg_2.yww & arg_2.ywz), -_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2333i, -1i, arg_2.x), arg_2.zww), countOneBits(vec3<i32>(-2077i, u_input.b, 1i)))), true, func_5(func_1(-2374f), ~abs(_wgslsmith_clamp_i32(0i, 15928i, -1i)), _wgslsmith_f_op_f32(f32(-1f) * -1180f)).x, func_1(-433f).a.xwy);
    global0 = array<vec2<bool>, 26>();
    let var_1 = var_0;
    var var_2 = arg_1;
    return func_1(-1284f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 26>();
    global0 = array<vec2<bool>, 26>();
    var var_0 = func_6(53922u, select(select(vec3<bool>(true, true, any(vec4<bool>(true, false, true, false))), func_5(func_1(-1707f), abs(u_input.b), _wgslsmith_f_op_f32(step(1874f, -577f))), true), func_1(-405f).a.zzy, !func_5(func_1(-1000f), 1i, _wgslsmith_f_op_f32(max(1000f, 777f)))), -(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(2147483647i, 46930i, 2147483647i, u_input.b)), -vec4<i32>(u_input.b, u_input.b, -7939i, -14603i)) & -_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 0i, u_input.b, -28493i), vec4<i32>(0i, u_input.b, u_input.b, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_i32(select(vec2<i32>(1i, 1i), -vec2<i32>(0i, 1i), global0[_wgslsmith_index_u32(func_3(vec2<i32>(34260i, 2147483647i), u_input.b, vec2<f32>(153f, 340f)), 26u)]), ~countOneBits(vec2<i32>(0i, u_input.b))), vec4<i32>(61354i, -1i, -countOneBits(1i), -reverseBits(u_input.b)), u_input.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_vec4_f32(func_2(_wgslsmith_div_vec2_i32(vec2<i32>(-39578i, 100423i), vec2<i32>(u_input.b, u_input.b)), _wgslsmith_div_vec3_f32(vec3<f32>(-1680f, 395f, -1546f), vec3<f32>(-1000f, -309f, -137f)))).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(467f - 1492f) * _wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(u_input.b, u_input.b), vec3<f32>(337f, -925f, -1000f))).x), _wgslsmith_f_op_f32(-1864f + -821f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-847f, -1637f) * -1000f))), (1u << (~u_input.a % 32u)) << ((~max(u_input.a, u_input.a) | u_input.a) % 32u));
}

