struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: vec2<u32>;

var<private> global2: array<vec2<u32>, 15> = array<vec2<u32>, 15>(vec2<u32>(17198u, 37172u), vec2<u32>(11732u, 1u), vec2<u32>(1u, 23020u), vec2<u32>(4294967295u, 21312u), vec2<u32>(1u, 1u), vec2<u32>(1u, 53099u), vec2<u32>(4294967295u, 0u), vec2<u32>(46668u, 4294967295u), vec2<u32>(7327u, 4294967295u), vec2<u32>(99068u, 0u), vec2<u32>(19835u, 4294967295u), vec2<u32>(6148u, 2764u), vec2<u32>(4294967295u, 5007u), vec2<u32>(7852u, 0u), vec2<u32>(4294967295u, 61905u));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool) -> vec3<bool> {
    let var_0 = vec2<bool>(arg_2, _wgslsmith_dot_vec2_u32(~global2[_wgslsmith_index_u32(22361u, 15u)], ~arg_1.b.c.zy) > ~arg_1.b.c.x);
    let var_1 = ~u_input.c.x;
    var var_2 = Struct_2(~_wgslsmith_mult_vec2_i32(~vec2<i32>(36728i, arg_1.a.x), abs(-vec2<i32>(-1i, u_input.b.x))), arg_1.b);
    var var_3 = Struct_2(u_input.a.zx, Struct_1(abs(vec4<i32>(var_2.a.x, var_2.b.a.x, 1i, -10908i)) & var_2.b.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1160f, var_2.b.b.x, -1337f))))), ~var_2.b.c));
    let var_4 = any(vec4<bool>(!var_0.x, any(vec2<bool>(any(vec3<bool>(arg_2, var_0.x, arg_2)), all(vec3<bool>(var_0.x, true, false)))), var_3.b.b.x < -262f, true));
    return !(!select(!select(vec3<bool>(arg_2, var_4, false), vec3<bool>(var_0.x, arg_2, var_4), vec3<bool>(true, false, false)), select(select(vec3<bool>(var_4, false, false), vec3<bool>(true, var_4, var_0.x), vec3<bool>(var_4, var_4, var_4)), !vec3<bool>(false, var_4, true), select(vec3<bool>(var_4, false, true), vec3<bool>(false, true, arg_2), vec3<bool>(false, true, var_0.x))), !(!vec3<bool>(false, var_4, false))));
}

fn func_2(arg_0: u32, arg_1: u32) -> vec2<i32> {
    var var_0 = u_input.c.yx;
    var var_1 = !(!vec3<bool>(all(func_3(vec2<f32>(-1322f, -789f), global0[_wgslsmith_index_u32(0u, 24u)], true)), true == any(vec2<bool>(true, true)), true));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(173f * 1797f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-661f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-610f + -845f), -1000f)) + _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-694f * 1594f))))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1563f), _wgslsmith_f_op_f32(f32(-1f) * -542f)))))));
    var var_3 = true;
    return abs(u_input.b.xz);
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> f32 {
    let var_0 = arg_0;
    var var_1 = Struct_2(func_2(max(arg_0.b.c.x, _wgslsmith_add_u32(40182u, ~u_input.c.x)), global1.x), Struct_1(firstLeadingBit(var_0.b.a ^ vec4<i32>(-23453i, 0i, var_0.b.a.x, 2147483647i)) >> (vec4<u32>(~var_0.b.c.x, arg_0.b.c.x, global1.x, var_0.b.c.x) % vec4<u32>(32u)), var_0.b.b, var_0.b.c));
    global1 = _wgslsmith_clamp_vec2_u32(~(~(~vec2<u32>(var_1.b.c.x, 2107u) >> (vec2<u32>(u_input.c.x, 4294967295u) % vec2<u32>(32u)))), min(u_input.c.yz, ~arg_0.b.c.yw), vec2<u32>(~_wgslsmith_div_u32(26918u, u_input.c.x) >> (0u % 32u), countOneBits(abs(~arg_0.b.c.x))));
    global2 = array<vec2<u32>, 15>();
    let var_2 = vec2<i32>(u_input.d, _wgslsmith_mult_i32(-var_1.a.x << (~_wgslsmith_dot_vec2_u32(var_0.b.c.xw, arg_0.b.c.wx) % 32u), -19831i));
    return -1144f;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> i32 {
    global0 = array<Struct_2, 24>();
    global1 = vec2<u32>(40744u, firstLeadingBit(min(u_input.c.x & global1.x, ~arg_1.c.x) << (max(select(0u, global1.x, true), 24658u) % 32u)));
    var var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(~arg_0.x, u_input.b.x), -1i), arg_0.xxx), u_input.a);
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_1.b.yz);
    let var_2 = Struct_1(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(select(vec4<i32>(26169i, -1i, 7717i, 23458i), arg_0, vec4<bool>(true, false, false, false))), min(vec4<i32>(5724i, u_input.a.x, -2147483647i, -1i), select(vec4<i32>(13633i, 0i, var_0.x, -61632i), arg_1.a, vec4<bool>(true, true, false, false)))), ~(~abs(vec4<i32>(-32944i, 1i, var_0.x, u_input.b.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b) - _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(-485f, var_1.x, -1213f) - vec3<f32>(1151f, arg_1.b.x, -1388f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.b - vec3<f32>(arg_1.b.x, var_1.x, arg_1.b.x))))), arg_1.c);
    return _wgslsmith_dot_vec3_i32(arg_1.a.xwx, var_2.a.wxz);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<u32>, 15>();
    global0 = array<Struct_2, 24>();
    var var_0 = ~func_4(vec4<i32>(~_wgslsmith_mult_i32(u_input.b.x, u_input.a.x), countOneBits(-15775i), firstTrailingBit(2147483647i ^ u_input.b.x), ~(-u_input.d)), Struct_1(u_input.b, vec3<f32>(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(1u, 24u)], true)), _wgslsmith_f_op_f32(round(-953f)), _wgslsmith_f_op_f32(f32(-1f) * -1006f)), vec4<u32>(firstTrailingBit(u_input.c.x), _wgslsmith_add_u32(1u, global1.x), countOneBits(33859u), u_input.c.x >> (u_input.c.x % 32u))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(select(global1.x << (33241u % 32u), ~global1.x, true), 24u)], true))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2764f))));
    var_0 = 1i;
    var_0 = _wgslsmith_div_i32(u_input.b.x, firstTrailingBit(u_input.b.x)) & u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~46051u, _wgslsmith_mult_vec4_i32(-select(_wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, u_input.b), u_input.b, true), vec4<i32>(func_2(global1.x, 38204u).x, ~(-16941i), -2147483647i, countOneBits(1i))), u_input.c, firstLeadingBit(_wgslsmith_sub_i32(26454i, u_input.a.x)) >> (u_input.c.x % 32u), 25426u | _wgslsmith_mult_u32(_wgslsmith_clamp_u32(global1.x, global1.x, 0u) & _wgslsmith_add_u32(global1.x, 4294967295u), ~global1.x));
}

