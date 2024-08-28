struct Struct_1 {
    a: vec2<f32>,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-2345f, -944f);

var<private> global1: vec2<f32> = vec2<f32>(383f, 815f);

var<private> global2: u32;

var<private> global3: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(vec2<f32>(655f, -1000f), false), Struct_1(vec2<f32>(1000f, -629f), false), Struct_1(vec2<f32>(408f, 1802f), true), Struct_1(vec2<f32>(202f, 404f), false), Struct_1(vec2<f32>(317f, -1380f), false), Struct_1(vec2<f32>(-131f, -940f), false), Struct_1(vec2<f32>(1089f, 352f), true), Struct_1(vec2<f32>(955f, 1266f), false), Struct_1(vec2<f32>(-333f, -264f), false), Struct_1(vec2<f32>(-990f, -552f), true), Struct_1(vec2<f32>(-547f, 1000f), true), Struct_1(vec2<f32>(-384f, -656f), false), Struct_1(vec2<f32>(-1094f, 214f), true), Struct_1(vec2<f32>(1460f, -866f), false), Struct_1(vec2<f32>(1219f, 101f), true), Struct_1(vec2<f32>(-572f, -1809f), true), Struct_1(vec2<f32>(-881f, 816f), true), Struct_1(vec2<f32>(-917f, -1000f), true));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>) -> vec2<bool> {
    var var_0 = abs(vec2<u32>(4294967295u, _wgslsmith_mult_u32(32086u, u_input.a >> (~u_input.c.x % 32u))));
    var var_1 = min(1i, -1i);
    global0 = _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(396f, -1906f))), false))), _wgslsmith_f_op_vec2_f32(vec2<f32>(609f, -353f) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-532f, _wgslsmith_f_op_f32(global0.x + 1471f))))));
    var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(1i, abs(0i), firstTrailingBit(firstLeadingBit(-6926i))) ^ firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(53083i, 1i, -28988i), -vec3<i32>(6471i, -2147483647i, -2147483647i))), vec3<i32>(-1i) * -(~vec3<i32>(2147483647i, -22323i, 20903i)));
    global1 = vec2<f32>(-833f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global0.x)));
    return arg_0.zz;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = _wgslsmith_div_u32(max(56420u, 1u) & arg_2, 18716u);
    var_0 = arg_2;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(831f)), 1554f);
    let var_2 = select(~(-32060i), -(~2147483647i), func_3(select(select(!vec4<bool>(false, false, arg_1.b, arg_0.x), !vec4<bool>(arg_3.c, arg_3.c, false, arg_3.c), vec4<bool>(arg_3.c, true, arg_3.c, arg_1.b)), vec4<bool>(all(vec4<bool>(arg_3.d.b, arg_1.b, arg_1.b, true)), any(arg_0), -1029f < global1.x, -1000f < arg_3.e), arg_1.b)).x);
    global3 = array<Struct_1, 18>();
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))), arg_1.a.x)), global0.x);
}

fn func_2() -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(func_4(select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), select(func_3(vec4<bool>(true, false, false, false)), vec2<bool>(true, true), true), vec2<bool>(true, true)), global3[_wgslsmith_index_u32(u_input.c.x, 18u)], 0u >> (u_input.c.x % 32u), Struct_2(_wgslsmith_f_op_f32(-1436f * _wgslsmith_f_op_f32(global1.x * -1031f)), ~vec3<u32>(u_input.a, 18054u, 0u), true, Struct_1(vec2<f32>(global1.x, 514f), all(vec2<bool>(false, false))), global0.x))), true);
    var var_1 = any(!select(select(select(vec4<bool>(false, true, var_0.b, false), vec4<bool>(var_0.b, var_0.b, true, var_0.b), var_0.b), select(vec4<bool>(true, true, var_0.b, true), vec4<bool>(false, var_0.b, false, var_0.b), vec4<bool>(true, true, var_0.b, var_0.b)), var_0.b || false), select(vec4<bool>(true, var_0.b, var_0.b, var_0.b), !vec4<bool>(var_0.b, var_0.b, true, var_0.b), true), all(func_3(vec4<bool>(false, true, false, false)))));
    var var_2 = global3[_wgslsmith_index_u32((9703u >> (_wgslsmith_mult_u32(u_input.a, _wgslsmith_clamp_u32(u_input.b.x, u_input.e.x, u_input.b.x)) % 32u)) ^ reverseBits(~4294967295u), 18u)];
    let var_3 = Struct_2(-499f, firstLeadingBit(firstTrailingBit(u_input.b.zyx) | ~(~vec3<u32>(74629u, u_input.c.x, 4294967295u))), any(vec2<bool>(true, (-1232f <= var_2.a.x) || all(vec2<bool>(var_2.b, var_2.b)))), global3[_wgslsmith_index_u32(u_input.d, 18u)], _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-178f)) - 469f)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), var_2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 548f)), vec4<f32>(-739f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1491f) + 1000f), -1865f, global1.x), vec4<bool>(true, true, all(select(!vec3<bool>(true, var_3.d.b, var_0.b), vec3<bool>(true, var_3.c, var_2.b), !vec3<bool>(false, false, var_0.b))), any(!vec3<bool>(var_3.d.b, var_2.b, var_3.c)))));
    return vec4<bool>(true, true, _wgslsmith_f_op_f32(sign(1787f)) >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1493f))))), var_3.d.b);
}

fn func_1() -> u32 {
    var var_0 = select(vec2<bool>(any(func_2()) & any(vec4<bool>(true, true, true, true)), !(_wgslsmith_clamp_i32(0i, -2147483647i, 2147483647i) == ~(-58439i))), !(!vec2<bool>(true, global1.x == global0.x)), !vec2<bool>(false, any(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)))));
    global3 = array<Struct_1, 18>();
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(622f, -2387f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global1.x))), vec2<f32>(global0.x, _wgslsmith_f_op_vec2_f32(func_4(vec2<bool>(false, var_0.x), global3[_wgslsmith_index_u32(u_input.d, 18u)], 4294967295u, Struct_2(global1.x, u_input.e, var_0.x, Struct_1(vec2<f32>(global0.x, global0.x), var_0.x), global1.x))).x)))))));
    let var_1 = func_2().yz;
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x);
    return 22167u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(_wgslsmith_clamp_u32(u_input.d, ~1u, u_input.c.x), _wgslsmith_mult_u32(min(~_wgslsmith_mult_u32(27859u, u_input.a), _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, 0u), firstTrailingBit(46304u))), func_1()));
    let var_1 = u_input.b << (_wgslsmith_sub_vec4_u32(~(u_input.b << (vec4<u32>(4294967295u, 20463u, u_input.b.x, 1u) % vec4<u32>(32u))) << (vec4<u32>(firstLeadingBit(var_0), ~u_input.c.x, _wgslsmith_dot_vec3_u32(u_input.e, u_input.e), var_0) % vec4<u32>(32u)), ~_wgslsmith_add_vec4_u32(~u_input.b, vec4<u32>(u_input.b.x, 1718u, 22398u, 53974u))) % vec4<u32>(32u));
    let var_2 = vec2<u32>(u_input.c.x, ~(~(u_input.b.x & var_0) << (var_1.x % 32u)));
    let var_3 = Struct_2(global1.x, var_1.xzy >> (~u_input.e % vec3<u32>(32u)), all(vec4<bool>(false, true, true, true)), global3[_wgslsmith_index_u32(firstTrailingBit(1u), 18u)], global1.x);
    let var_4 = select(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(1i, 1i, 1i)), -reverseBits(vec3<i32>(-42640i, 2147483647i, -13194i)), !vec3<bool>(false == var_3.d.b, false, all(vec2<bool>(false, true)))) ^ _wgslsmith_sub_vec3_i32(reverseBits(reverseBits(vec3<i32>(2147483647i, 0i, 39462i))) | select(~vec3<i32>(10258i, 19684i, -27995i), ~vec3<i32>(10181i, 2147483647i, 48303i), vec3<bool>(var_3.d.b, var_3.d.b, var_3.d.b)), vec3<i32>(-1i) * -vec3<i32>(-1i, 2147483647i, 1i));
    var var_5 = Struct_3(!select(select(select(vec3<bool>(var_3.d.b, false, true), vec3<bool>(var_3.d.b, false, var_3.d.b), var_3.c), !vec3<bool>(true, var_3.d.b, true), !vec3<bool>(false, false, var_3.c)), !vec3<bool>(true, var_3.c, true), true), var_3, !(false & !(!var_3.c)), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, var_2, -(~(i32(-1i) * -var_4.x)), _wgslsmith_div_i32(var_4.x, _wgslsmith_dot_vec2_i32(abs(_wgslsmith_clamp_vec2_i32(vec2<i32>(12147i, var_4.x), var_4.zx, vec2<i32>(1i, var_4.x))), vec2<i32>(var_4.x, ~var_4.x))));
}

