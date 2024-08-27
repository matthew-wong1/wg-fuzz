struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<vec3<i32>, 24> = array<vec3<i32>, 24>(vec3<i32>(1948i, -52285i, 1i), vec3<i32>(4907i, 35681i, -1i), vec3<i32>(2147483647i, -10568i, 2147483647i), vec3<i32>(23947i, 14973i, 1i), vec3<i32>(i32(-2147483648), 11204i, -12107i), vec3<i32>(-11046i, -1i, 30302i), vec3<i32>(16835i, -7989i, -1i), vec3<i32>(1371i, -32541i, 2147483647i), vec3<i32>(1i, i32(-2147483648), -5894i), vec3<i32>(2147483647i, 2147483647i, 71661i), vec3<i32>(1i, 2147483647i, 1i), vec3<i32>(2147483647i, -60268i, -1i), vec3<i32>(0i, -1i, -1i), vec3<i32>(-1i, -19535i, 9742i), vec3<i32>(81336i, 0i, i32(-2147483648)), vec3<i32>(32330i, 51027i, -18277i), vec3<i32>(17456i, 3487i, 1i), vec3<i32>(2147483647i, -19592i, 2147483647i), vec3<i32>(-1i, 36118i, -1i), vec3<i32>(-1i, -39155i, 2147483647i), vec3<i32>(0i, -1i, 0i), vec3<i32>(2147483647i, 33603i, 1i), vec3<i32>(68299i, -13808i, -59493i), vec3<i32>(1i, 36335i, -27926i));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    let var_0 = vec3<bool>(any(arg_0.zyw), any(arg_0.yzz), any(vec3<bool>(true, arg_0.x, !arg_0.x)));
    var var_1 = var_0.xy;
    var_1 = vec2<bool>(-236f < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(2038f)), arg_1.x, false | select(true, arg_0.x, var_1.x))), select(!arg_0.x, var_1.x, all(vec2<bool>(false, true))) || var_0.x);
    var_1 = select(vec2<bool>(var_0.x, true), !select(select(!arg_0.zz, vec2<bool>(var_0.x, true), true), vec2<bool>(var_1.x, var_0.x), !(!vec2<bool>(var_1.x, arg_0.x))), true);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -235f), arg_3);
    return var_2.a;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3) -> vec2<f32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec4<bool>(false, false, true, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(567f, -1946f, arg_0)), vec3<i32>(-19547i, 2147483647i, arg_1.a.x), arg_2.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b.a)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c.a + arg_2.b.a), _wgslsmith_f_op_f32(func_3(vec4<bool>(all(vec4<bool>(true, true, false, true)), arg_1.a.x < -9909i, true, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.c.a, -1604f, -1282f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2381f, 1000f, -1603f)))), ~arg_2.c.b.a.zzz, arg_2.e.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(120f, _wgslsmith_f_op_f32(-304f * arg_2.e.a))))))));
    var var_1 = Struct_4(-1609f);
    var var_2 = arg_1;
    var_1 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_0)))), _wgslsmith_f_op_f32(arg_2.c.a - 567f)))));
    var var_3 = ~u_input.b;
    return _wgslsmith_f_op_vec2_f32(max(var_0.xy, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1749f, var_0.x) + _wgslsmith_f_op_vec2_f32(-var_0.zx))))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: u32, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(-_wgslsmith_div_vec2_i32(arg_1.zx, -arg_1.yz), ~vec2<i32>(-2147483647i, -1i)), -vec2<i32>(-arg_1.x, -_wgslsmith_div_i32(arg_1.x, arg_1.x)));
    var var_1 = ~abs(32525u);
    var_1 = arg_2;
    var var_2 = u_input.b;
    global0 = array<Struct_2, 16>();
    return global0[_wgslsmith_index_u32(u_input.b, 16u)];
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    let var_0 = ~(~1u);
    return Struct_3(Struct_1(-(~vec4<i32>(1i, 0i, 2147483647i, 21338i))), func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a, 2068f, arg_0.a) + vec3<f32>(arg_0.a, 1048f, 776f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0.a, arg_0.a, 1217f)))))), -_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 1i, 1i), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 51201u), 24u)]), u_input.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a, -989f) * vec2<f32>(746f, -1155f)), vec2<f32>(arg_0.a, 1049f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(arg_0.a, Struct_1(vec4<i32>(-30941i, -2147483647i, 57592i, -2147483647i)), Struct_3(Struct_1(vec4<i32>(-2147483647i, -1i, 2147483647i, 56766i)), Struct_2(arg_0.a, Struct_1(vec4<i32>(-27624i, -2147483647i, 4973i, 0i))), Struct_2(arg_0.a, Struct_1(vec4<i32>(-12216i, 52438i, -2147483647i, 0i))), arg_0.a, global0[_wgslsmith_index_u32(1u, 16u)]))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1650f, 630f))))))), func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.a, -578f, -1540f), vec3<f32>(arg_0.a, -735f, 2366f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 2053f, 770f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-1048f, 1615f, arg_0.a), vec3<f32>(arg_0.a, arg_0.a, arg_0.a)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1183f, arg_0.a, 1677f)))), vec3<i32>(~_wgslsmith_div_i32(-36467i, -2147483647i), -18608i, -13220i), _wgslsmith_dot_vec3_u32(select(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, 4294967295u, u_input.a), vec3<u32>(u_input.d, 0u, 4294967295u)), _wgslsmith_clamp_vec3_u32(u_input.c, u_input.c, u_input.c), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true)), ~(~vec3<u32>(46130u, var_0, 0u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1261f, _wgslsmith_f_op_f32(526f + -811f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a, 121f)))), arg_0.a, global0[_wgslsmith_index_u32(var_0 ^ ~_wgslsmith_dot_vec2_u32(u_input.c.zx, u_input.c.zy ^ vec2<u32>(u_input.d, var_0)), 16u)]);
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_3) -> vec2<u32> {
    global1 = array<vec3<i32>, 24>();
    global1 = array<vec3<i32>, 24>();
    global1 = array<vec3<i32>, 24>();
    global0 = array<Struct_2, 16>();
    return u_input.c.xx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (reverseBits(-vec2<i32>(0i, 2147483647i)) >> (select(func_5(u_input.c.zy, func_1(Struct_4(-248f))), reverseBits(min(u_input.c.xz, vec2<u32>(1u, u_input.a))), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(false, true), vec2<bool>(true, true))) % vec2<u32>(32u))) >> (u_input.c.zz % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1545f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(279f, 640f)))))));
    global1 = array<vec3<i32>, 24>();
    global1 = array<vec3<i32>, 24>();
    global1 = array<vec3<i32>, 24>();
    var var_2 = _wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(global1[_wgslsmith_index_u32(~1u & min(17976u, u_input.b), 24u)], global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, _wgslsmith_dot_vec2_u32(u_input.c.zz, vec2<u32>(u_input.a, 34074u))), 24u)]), abs(vec3<i32>(-1i, var_0.x, var_0.x) & global1[_wgslsmith_index_u32(countOneBits(22304u), 24u)])), vec3<i32>(_wgslsmith_clamp_i32(-9944i, min(_wgslsmith_add_i32(-15970i, -1i), max(2147483647i, var_0.x)), 0i), ~var_0.x, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, _wgslsmith_f_op_f32(step(var_1, var_1))))), ~vec2<u32>(min(46921u, 1u), 1u));
}

