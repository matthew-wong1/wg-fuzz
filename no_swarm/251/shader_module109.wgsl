struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
    d: vec3<u32>,
    e: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<f32>,
    d: Struct_3,
    e: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec3<i32> = vec3<i32>(2147483647i, -1i, -13799i);

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: array<vec3<bool>, 10>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> vec4<u32> {
    var var_0 = global2.x;
    global0 = arg_0.c;
    global3 = array<vec3<bool>, 10>();
    return ~(~vec4<u32>(27567u, arg_0.a, ~u_input.a, 4294967295u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_4, arg_3: vec2<f32>) -> f32 {
    var var_0 = arg_0.b.x;
    let var_1 = Struct_1(abs(reverseBits(arg_0.c.xz) ^ select(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.c.x, 4294967295u), arg_0.a, vec2<u32>(u_input.a, 1u)), vec2<u32>(arg_2.a, 34998u), true)), ~(~global1.yy), ~(~max(arg_2.d.d & vec3<u32>(54430u, arg_2.d.b.x, u_input.a), _wgslsmith_div_vec3_u32(arg_0.c, arg_0.c))));
    var_0 = _wgslsmith_add_i32(-min(-31729i ^ var_1.b.x, firstLeadingBit(_wgslsmith_add_i32(-2147483647i, arg_0.b.x))), var_1.b.x >> (4294967295u % 32u));
    var var_2 = min(arg_0.c.yy, firstTrailingBit(vec2<u32>(25532u, ~(~arg_2.a))));
    let var_3 = vec2<u32>(select(1u, _wgslsmith_mod_u32(1u, ~arg_2.d.d.x), all(!arg_2.e)) << (_wgslsmith_div_u32(30432u, var_1.a.x) % 32u), min(~1u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, var_2.x, 1u), min(vec3<u32>(29145u, 4294967295u, u_input.a), arg_2.d.c.c)), ~abs(var_1.c))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(sign(-1283f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(185f))))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_3.x, 981f))))))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec4<u32>, arg_3: Struct_5) -> bool {
    let var_0 = Struct_5(arg_0.c, vec3<u32>(arg_3.a.c.x, 48663u, arg_0.b.x));
    var var_1 = countOneBits(reverseBits(-vec4<i32>(_wgslsmith_mod_i32(22467i, 44167i), var_0.a.b.x, 1i >> (0u % 32u), _wgslsmith_mod_i32(arg_0.c.b.x, 28924i))));
    global2 = !vec2<bool>(_wgslsmith_f_op_f32(-arg_1) != arg_1, !any(select(vec3<bool>(global2.x, false, arg_0.e.x), vec3<bool>(arg_0.e.x, true, arg_0.e.x), global2.x)));
    let var_2 = -(var_1.zyx & select(~(~var_1.zwy), var_1.zzz >> (countOneBits(var_0.a.c) % vec3<u32>(32u)), !(!arg_0.e)));
    global1 = vec3<i32>(global1.x, 1i, -abs(var_2.x));
    return arg_0.e.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: vec2<f32>) -> vec4<u32> {
    var var_0 = Struct_4(((~4294967295u >> (u_input.a % 32u)) | 1u) ^ u_input.a, !all(vec4<bool>(false, true, true, true)) || !any(select(vec2<bool>(global2.x, true), vec2<bool>(arg_2.a, arg_2.a), true)), vec3<f32>(-236f, _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + 175f) - _wgslsmith_f_op_f32(f32(-1f) * -926f))), 1000f), Struct_3(func_4(Struct_3(false, reverseBits(vec4<u32>(arg_0.x, 22793u, 1u, 1u)), arg_2.b, ~arg_0, !global3[_wgslsmith_index_u32(arg_2.b.c.x, 10u)]), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(func_3(Struct_1(vec2<u32>(7711u, 3822u), global1.zx, arg_0), vec3<f32>(global0.x, -1969f, global0.x), Struct_4(0u, false, vec3<f32>(-309f, arg_3.x, 1217f), Struct_3(false, vec4<u32>(2188u, arg_0.x, u_input.a, u_input.a), arg_2.b, arg_0, vec3<bool>(true, true, arg_2.a)), vec2<bool>(false, global2.x)), vec2<f32>(843f, global0.x))))), vec4<u32>(u_input.a, arg_2.b.a.x, 12421u, u_input.a) << (~vec4<u32>(482u, 0u, u_input.a, 41864u) % vec4<u32>(32u)), Struct_5(arg_2.b, arg_2.b.c)), ~vec4<u32>(_wgslsmith_mult_u32(0u, 60887u), _wgslsmith_sub_u32(0u, 0u), firstLeadingBit(arg_2.b.a.x), arg_0.x), arg_2.b, _wgslsmith_div_vec3_u32(arg_2.b.c, func_1(Struct_4(arg_2.b.c.x, false, vec3<f32>(1337f, arg_3.x, -200f), Struct_3(false, vec4<u32>(8359u, arg_0.x, 63473u, arg_0.x), arg_2.b, vec3<u32>(arg_2.b.a.x, 61811u, arg_2.b.a.x), global3[_wgslsmith_index_u32(u_input.a, 10u)]), vec2<bool>(global2.x, true)), arg_1.x < -9028i).zyy), select(vec3<bool>(global2.x, true, true), global3[_wgslsmith_index_u32(arg_0.x, 10u)], true)), !select(!(!vec2<bool>(arg_2.a, global2.x)), !(!vec2<bool>(arg_2.a, false)), !vec2<bool>(global2.x, false)));
    var var_1 = select(select(vec3<bool>(var_0.e.x, var_0.b, !all(vec4<bool>(true, false, true, true))), select(var_0.d.e, !global3[_wgslsmith_index_u32(var_0.a, 10u)], all(vec4<bool>(global2.x, var_0.e.x, false, true)) | true), var_0.d.e), vec3<bool>(!(arg_3.x < _wgslsmith_div_f32(-825f, 841f)), !(arg_2.c < _wgslsmith_add_i32(-19657i, arg_2.b.b.x)), all(global3[_wgslsmith_index_u32(1u, 10u)])), true);
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1000f, global0.x, 1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1479f, arg_3.x, var_0.c.x, 269f) - vec4<f32>(arg_3.x, -1077f, -787f, 1000f)), var_0.d.c.b.x > 0i)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-910f, arg_3.x, 258f, 1591f)))))))));
    var_1 = select(var_0.d.e, !(!select(!global3[_wgslsmith_index_u32(arg_0.x, 10u)], !vec3<bool>(true, var_0.e.x, arg_2.a), false)), select(vec3<bool>(global2.x, all(!vec2<bool>(var_1.x, global2.x)), arg_2.a && any(vec3<bool>(false, false, var_1.x))), select(var_0.d.e, vec3<bool>(true, false, arg_2.a), global2.x), !global3[_wgslsmith_index_u32(~(4294967295u >> (u_input.a % 32u)), 10u)]));
    let var_3 = var_0.d;
    return var_3.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(global1.x);
    let var_1 = Struct_1(~vec2<u32>(~u_input.a, abs(~u_input.a)), global1.zx, ~vec3<u32>(1u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 131241u, 0u, 65361u)), firstLeadingBit(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a))), _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a, 0u), 4294967295u, u_input.a)));
    let var_2 = max(vec4<u32>(min(~u_input.a, var_1.a.x), 4294967295u, ~(~9266u) >> (((var_1.c.x | u_input.a) << (u_input.a % 32u)) % 32u), u_input.a), reverseBits((func_1(Struct_4(0u, global2.x, vec3<f32>(global0.x, 587f, global0.x), Struct_3(true, vec4<u32>(22154u, 40076u, 0u, 30337u), Struct_1(vec2<u32>(0u, u_input.a), var_1.b, vec3<u32>(63594u, 36250u, var_1.a.x)), var_1.c, vec3<bool>(global2.x, true, false)), vec2<bool>(global2.x, global2.x)), false) << (select(vec4<u32>(var_1.c.x, var_1.a.x, 4294967295u, u_input.a), vec4<u32>(4294967295u, 0u, u_input.a, u_input.a), false) % vec4<u32>(32u))) | select(func_2(vec3<u32>(0u, u_input.a, var_1.c.x), var_1.b, Struct_2(global2.x, Struct_1(vec2<u32>(9387u, 4294967295u), var_1.b, var_1.c), var_0), vec2<f32>(-394f, global0.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(60460u, 42221u, 21155u, u_input.a), vec4<u32>(var_1.c.x, var_1.c.x, 0u, 4294967295u)), global2.x)));
    global3 = array<vec3<bool>, 10>();
    let var_3 = !global2.x | !global2.x;
    var var_4 = select(_wgslsmith_f_op_f32(-global0.x) > _wgslsmith_f_op_f32(f32(-1f) * -654f), any(!(!vec2<bool>(false, var_3))), var_3);
    var var_5 = Struct_4(0u, true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -342f, global0.x), vec3<f32>(-1638f, global0.x, 1342f)))))), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -224f)) > _wgslsmith_f_op_f32(step(global0.x, _wgslsmith_f_op_f32(-global0.x))), ~reverseBits(_wgslsmith_add_vec4_u32(var_2, var_2)), Struct_1(firstLeadingBit(var_1.c.xz), _wgslsmith_clamp_vec2_i32(global1.yz, ~var_1.b, vec2<i32>(var_0, 4411i)), var_1.c), vec3<u32>(4294967295u, reverseBits(_wgslsmith_add_u32(43092u, var_2.x)), ~var_1.a.x), global3[_wgslsmith_index_u32(~u_input.a, 10u)]), vec2<bool>(var_3, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_5.c.x * 693f), _wgslsmith_f_op_f32(f32(-1f) * -616f)))), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 1712f)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(46630i, var_5.d.c.b.x, var_1.b.x), firstLeadingBit(var_1.b.x), _wgslsmith_mult_i32(var_1.b.x, global1.x), var_0 >> (4294967295u % 32u)), ~(~vec4<i32>(var_5.d.c.b.x, -2147483647i, -2147483647i, var_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_5.c.x))), ~select(firstLeadingBit(reverseBits(vec4<u32>(var_2.x, 99183u, 4294967295u, 0u))), ~var_5.d.b, select(any(vec4<bool>(false, var_5.e.x, var_3, var_5.b)), false, true)));
}

