struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 35044i;

var<private> global1: vec2<i32> = vec2<i32>(1i, i32(-2147483648));

var<private> global2: array<f32, 21>;

var<private> global3: array<Struct_3, 4> = array<Struct_3, 4>(Struct_3(vec2<u32>(27886u, 0u), Struct_1(vec4<i32>(-1i, -1i, 5350i, -34234i), 307f, vec3<i32>(i32(-2147483648), 2147483647i, -30854i), -1i, -36564i), Struct_2(Struct_1(vec4<i32>(43889i, 1i, -4154i, 51222i), 1000f, vec3<i32>(2147483647i, 64855i, 1i), 2147483647i, i32(-2147483648))), Struct_2(Struct_1(vec4<i32>(0i, -55175i, 1i, 15705i), 1825f, vec3<i32>(2147483647i, -1i, 1i), -1i, -8045i))), Struct_3(vec2<u32>(4123u, 7568u), Struct_1(vec4<i32>(2147483647i, 12584i, 17238i, 1i), 421f, vec3<i32>(1i, 2147483647i, 0i), 0i, -26481i), Struct_2(Struct_1(vec4<i32>(-4666i, i32(-2147483648), 0i, 1i), -1292f, vec3<i32>(-39751i, -1i, 2147483647i), i32(-2147483648), -1i)), Struct_2(Struct_1(vec4<i32>(-26335i, -1i, 16356i, 0i), -586f, vec3<i32>(0i, -19641i, -25980i), -1i, -37146i))), Struct_3(vec2<u32>(104177u, 80480u), Struct_1(vec4<i32>(-51666i, -88i, i32(-2147483648), 1i), 524f, vec3<i32>(-1i, 16284i, 79102i), 2147483647i, -18775i), Struct_2(Struct_1(vec4<i32>(-35612i, 2574i, -13021i, 4147i), -755f, vec3<i32>(0i, 22837i, i32(-2147483648)), -32243i, 38310i)), Struct_2(Struct_1(vec4<i32>(32206i, -1i, 16011i, 0i), 731f, vec3<i32>(0i, -26183i, -41600i), -1i, -1i))), Struct_3(vec2<u32>(1u, 49833u), Struct_1(vec4<i32>(11342i, 1i, 0i, i32(-2147483648)), -1000f, vec3<i32>(1i, 2147483647i, 16607i), 0i, -47181i), Struct_2(Struct_1(vec4<i32>(i32(-2147483648), -1i, -1i, -1i), 836f, vec3<i32>(-53953i, 22307i, 0i), 9300i, 2147483647i)), Struct_2(Struct_1(vec4<i32>(13705i, i32(-2147483648), 2147483647i, 21141i), 1000f, vec3<i32>(16911i, i32(-2147483648), 5890i), i32(-2147483648), -12640i))));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<i32> {
    let var_0 = vec3<f32>(1638f, 554f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, u_input.b, u_input.b), vec4<u32>(1u, u_input.b, 93557u, u_input.b)), 21u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(u_input.b, 21u)], 170f)))))));
    global3 = array<Struct_3, 4>();
    global0 = max(-1i, u_input.d.x);
    var var_1 = select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), u_input.b > (u_input.b ^ u_input.b)), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(false, false, true)), all(vec3<bool>(true, true, true))), any(vec2<bool>(true, true))), false), any(vec2<bool>(false, false)));
    let var_2 = select(vec3<bool>(false, true, !((var_1.x == var_1.x) || var_1.x)), !vec3<bool>(~22230u > ~u_input.b, (var_0.x <= var_0.x) && var_1.x, var_1.x), any(var_1.yz));
    return vec4<i32>(11035i, _wgslsmith_div_i32(_wgslsmith_mult_i32(global1.x, countOneBits(global1.x)), i32(-1i) * -u_input.c), _wgslsmith_div_i32(16478i, u_input.c), countOneBits(firstLeadingBit(u_input.a.x | u_input.a.x) & global1.x));
}

fn func_2(arg_0: Struct_4) -> vec2<bool> {
    global3 = array<Struct_3, 4>();
    var var_0 = Struct_3(vec2<u32>(~(~(~u_input.b)), 106504u), Struct_1(func_3(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.a.a.b), global2[_wgslsmith_index_u32(~4294967295u, 21u)], false)) * _wgslsmith_div_f32(arg_0.b.a.b, -1000f)), firstLeadingBit(~vec3<i32>(2147483647i, 0i, -3434i)), min(_wgslsmith_add_i32(~22881i, func_3().x), _wgslsmith_add_i32(global1.x, min(18790i, -1i))), max(max(abs(u_input.a.x), abs(global1.x)), -_wgslsmith_dot_vec3_i32(u_input.d.ywy, vec3<i32>(arg_0.a.a.e, arg_0.b.a.a.x, -2147483647i)))), Struct_2(Struct_1(firstLeadingBit(min(vec4<i32>(-21865i, global1.x, u_input.d.x, -20338i), u_input.d)), arg_0.a.a.b, arg_0.b.a.a.wxy & vec3<i32>(global1.x, -3075i, -24136i), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(arg_0.a.a.c.x, global1.x, -2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(-3896i, -2147483647i, global1.x), u_input.a)), _wgslsmith_clamp_i32(-2147483647i, arg_0.a.a.d, _wgslsmith_sub_i32(u_input.c, arg_0.b.a.a.x)))), arg_0.a);
    let var_1 = ~vec2<i32>(u_input.c, _wgslsmith_sub_i32(_wgslsmith_mult_i32(~(-2147483647i), 0i), var_0.d.a.d));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1135f), _wgslsmith_f_op_f32(-arg_0.a.a.b)))));
    global2 = array<f32, 21>();
    return !vec2<bool>(true, (14385i != _wgslsmith_dot_vec4_i32(var_0.c.a.a, var_0.d.a.a)) && false);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_5) -> vec3<i32> {
    global0 = 1i | u_input.d.x;
    global2 = array<f32, 21>();
    var var_0 = any(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), 691f == global2[_wgslsmith_index_u32(arg_0.x, 21u)]), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), false), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, true), false), func_2(Struct_4(Struct_2(Struct_1(vec4<i32>(global1.x, u_input.c, 2147483647i, 2147483647i), -588f, vec3<i32>(0i, 2147483647i, -2147483647i), global1.x, u_input.c)), Struct_2(Struct_1(u_input.d, -315f, vec3<i32>(global1.x, 2147483647i, u_input.d.x), -1i, u_input.d.x))))))));
    let var_1 = !vec3<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(47290u, 21u)], global2[_wgslsmith_index_u32(u_input.b, 21u)]), _wgslsmith_f_op_f32(trunc(arg_1.a.x)), all(vec3<bool>(false, false, true)))) == 521f, (true & (global2[_wgslsmith_index_u32(arg_0.x, 21u)] <= arg_1.a.x)) | false, _wgslsmith_dot_vec2_i32(~u_input.a.xy, vec2<i32>(global1.x, -14607i) & u_input.d.xx) <= _wgslsmith_sub_i32(-8409i, global1.x));
    global2 = array<f32, 21>();
    return vec3<i32>(u_input.d.x, _wgslsmith_add_i32(abs(func_3().x), ~26077i), ~u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(vec4<i32>(-global1.x, u_input.d.x, 1i, _wgslsmith_sub_i32(~u_input.c, -u_input.d.x)), global2[_wgslsmith_index_u32(~(1u >> (u_input.b % 32u)), 21u)], ~(~(-vec3<i32>(-6082i, u_input.a.x, 0i))), ~abs(firstTrailingBit(u_input.c)), 29684i));
    var var_1 = func_1(_wgslsmith_add_vec2_u32(vec2<u32>(47087u, u_input.b), reverseBits(~(~vec2<u32>(0u, 1u)))), Struct_5(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(u_input.b, 21u)])), _wgslsmith_f_op_f32(sign(var_0.a.b)))))));
    var_0 = Struct_2(Struct_1(reverseBits(vec4<i32>(global1.x, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(var_1.x, -6467i, -27309i)), _wgslsmith_mult_i32(-1i, u_input.a.x), -1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 21u)]) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(269f * 349f))), _wgslsmith_sub_vec3_i32(~(var_0.a.a.yww | vec3<i32>(2147483647i, var_1.x, u_input.a.x)), u_input.a), func_3().x, u_input.d.x));
    let var_2 = _wgslsmith_div_f32(global2[_wgslsmith_index_u32(14829u, 21u)], var_0.a.b);
    var var_3 = 52987u;
    var var_4 = !(!func_2(Struct_4(Struct_2(Struct_1(u_input.d, global2[_wgslsmith_index_u32(1u, 21u)], var_0.a.c, var_1.x, -20541i)), Struct_2(Struct_1(vec4<i32>(global1.x, 2147483647i, global1.x, 44213i), var_0.a.b, u_input.d.zyy, global1.x, u_input.c)))).x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(var_0.a.c, _wgslsmith_mod_vec3_i32(-vec3<i32>(var_1.x, -2147483647i, 31353i), firstTrailingBit(vec3<i32>(var_1.x, -2147483647i, var_0.a.a.x))) ^ vec3<i32>(u_input.d.x, var_0.a.e, -1i)));
}

