struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec3<bool>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8> = array<f32, 8>(-1045f, -1027f, 1001f, 1262f, 858f, -1014f, 633f, 2334f);

var<private> global1: Struct_1;

var<private> global2: array<u32, 14>;

var<private> global3: array<Struct_1, 3>;

var<private> global4: f32 = -1824f;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-832f, global0[_wgslsmith_index_u32(global1.e, 8u)], 1164f, -1318f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-434f, -358f, 416f, global0[_wgslsmith_index_u32(global1.e, 8u)]) + vec4<f32>(-278f, -1059f, 397f, -1320f)))))));
    var var_1 = Struct_1(vec3<i32>(_wgslsmith_mult_i32(u_input.a ^ -2147483647i, 0i), -2147483647i, _wgslsmith_sub_i32(~1i << (1u % 32u), -2147483647i)), select(vec2<bool>(select(global1.c.x, global1.a.x <= 2147483647i, global1.c.x), any(vec3<bool>(false, global1.b.x, global1.c.x))), select(select(!vec2<bool>(global1.c.x, global1.b.x), select(vec2<bool>(true, true), global1.b, vec2<bool>(false, true)), select(vec2<bool>(global1.c.x, global1.b.x), global1.c.yx, global1.c.yx)), !vec2<bool>(global1.c.x, global1.b.x), !(!global1.b)), global1.c.xy), select(vec3<bool>(true, global1.b.x, true), select(vec3<bool>(global1.c.x, false, global1.b.x), select(vec3<bool>(global1.b.x, global1.c.x, global1.c.x), !vec3<bool>(global1.b.x, false, global1.b.x), vec3<bool>(true, false, true)), global1.b.x), !select(select(global1.c, vec3<bool>(global1.b.x, true, false), global1.c), !global1.c, select(vec3<bool>(global1.c.x, true, false), vec3<bool>(global1.b.x, true, global1.c.x), global1.c))), global1.d, global2[_wgslsmith_index_u32(min(~6324u, ~(~global2[_wgslsmith_index_u32(global1.e, 14u)])), 14u)]);
    var var_2 = Struct_1(vec3<i32>(-1i) * -select(vec3<i32>(global1.a.x, -2147483647i, -74462i) >> (vec3<u32>(global1.e, global2[_wgslsmith_index_u32(var_1.d, 14u)], 1u) % vec3<u32>(32u)), vec3<i32>(var_1.a.x, -2147483647i, global1.a.x) ^ vec3<i32>(1i, 6106i, 46111i), var_1.e < 45944u), select(!select(vec2<bool>(false, global1.c.x), vec2<bool>(false, true), var_1.b), !select(vec2<bool>(true, false), select(var_1.b, global1.c.yx, false), var_1.b.x), select(!var_1.b, var_1.c.xz, global1.b.x)), var_1.c, _wgslsmith_mod_u32(1u, _wgslsmith_div_u32(1u, var_1.e)), _wgslsmith_dot_vec2_u32(~(~(vec2<u32>(1u, 23583u) << (vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3636u, 14u)], 14u)], 4294967295u) % vec2<u32>(32u)))), vec2<u32>(firstTrailingBit(var_1.d), ~9759u)));
    let var_3 = Struct_1(vec3<i32>(reverseBits(2147483647i), 2147483647i, i32(-1i) * -var_2.a.x), !(!select(select(global1.b, var_1.b, global1.b.x), select(global1.c.zx, vec2<bool>(global1.b.x, true), global1.b), !var_2.c.yx)), select(var_1.c, select(var_1.c, vec3<bool>(var_1.b.x && global1.c.x, global2[_wgslsmith_index_u32(0u, 14u)] == 23605u, true), select(vec3<bool>(true, true, true), var_1.c, false)), global1.c.x), _wgslsmith_add_u32(global1.e, abs(global1.e)), _wgslsmith_sub_u32(var_2.d, _wgslsmith_clamp_u32(var_1.d, ~min(46280u, 13405u), var_1.d)));
    let var_4 = true;
    return var_1.d;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec2<f32>) -> u32 {
    let var_0 = vec2<bool>(global1.b.x, true | any(!(!vec4<bool>(global1.b.x, false, global1.b.x, true))));
    var var_1 = Struct_1(global1.a, !select(select(select(var_0, vec2<bool>(var_0.x, global1.b.x), global1.c.x), vec2<bool>(global1.c.x, false), select(vec2<bool>(global1.c.x, var_0.x), global1.c.yy, vec2<bool>(true, true))), vec2<bool>(true, var_0.x), var_0.x), vec3<bool>(true | global1.b.x, var_0.x, global1.c.x), 0u, ~_wgslsmith_sub_u32(_wgslsmith_div_u32(25918u >> (global1.d % 32u), countOneBits(4294967295u)), global1.d));
    var var_2 = _wgslsmith_clamp_i32(-2425i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(-(~vec4<i32>(global1.a.x, u_input.a, u_input.a, -31542i)), vec4<i32>(global1.a.x, -2147483647i, -var_1.a.x, _wgslsmith_sub_i32(var_1.a.x, -30079i))), -2147483647i), var_1.a.x);
    let var_3 = !(all(vec3<bool>(false, !var_1.c.x, any(global1.c.yz))) | any(!global1.c.xy));
    var_1 = Struct_1(vec3<i32>(global1.a.x, ~_wgslsmith_mult_i32(u_input.a, abs(-83824i)), -1i), select(vec2<bool>(true & var_1.c.x, false), vec2<bool>(!select(false, global1.c.x, var_3), !select(true, true, var_3)), any(select(vec4<bool>(true, false, true, var_3), select(vec4<bool>(false, global1.c.x, var_0.x, global1.b.x), vec4<bool>(false, false, var_3, global1.b.x), vec4<bool>(var_3, var_3, true, true)), !vec4<bool>(global1.c.x, true, var_1.b.x, var_3)))), global1.c, min(arg_0, _wgslsmith_clamp_u32(abs(_wgslsmith_mult_u32(128317u, global2[_wgslsmith_index_u32(var_1.e, 14u)])), ~(~4294967295u), var_1.e)), _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_1.e, arg_0, global2[_wgslsmith_index_u32(4294967295u, 14u)]), vec3<u32>(34064u, 0u, 4294967295u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.d, global1.d, global2[_wgslsmith_index_u32(43239u, 14u)]), vec3<u32>(arg_0, arg_0, 4294967295u), vec3<u32>(1u, var_1.d, global1.e))), _wgslsmith_add_vec3_u32(vec3<u32>(~global2[_wgslsmith_index_u32(var_1.d, 14u)], firstTrailingBit(0u), ~global2[_wgslsmith_index_u32(global1.d, 14u)]), ~vec3<u32>(var_1.e, var_1.e, arg_0) >> (vec3<u32>(global2[_wgslsmith_index_u32(arg_0, 14u)], arg_0, var_1.d) % vec3<u32>(32u)))));
    return 1u;
}

fn func_2() -> u32 {
    global3 = array<Struct_1, 3>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-127f, global0[_wgslsmith_index_u32(min(global2[_wgslsmith_index_u32(14955u, 14u)], global2[_wgslsmith_index_u32(global1.e, 14u)]), 8u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(1u << (0u % 32u), 8u)])))), global0[_wgslsmith_index_u32(global1.d, 8u)]));
    let var_1 = false;
    global4 = _wgslsmith_f_op_f32(-var_0.x);
    var var_2 = global3[_wgslsmith_index_u32(18455u, 3u)];
    return firstLeadingBit(countOneBits(func_4(func_3(), _wgslsmith_f_op_f32(round(-373f)), vec2<f32>(var_0.x, -729f))));
}

fn func_1() -> f32 {
    let var_0 = global3[_wgslsmith_index_u32(func_2() | ~firstLeadingBit(1u), 3u)];
    var var_1 = !(!(!vec2<bool>(global1.b.x, !global1.b.x)));
    var var_2 = _wgslsmith_sub_vec4_u32(select(select(max(vec4<u32>(1u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.e, 14u)], 14u)], 39190u), firstTrailingBit(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.e, 14u)], 14u)], 0u, 12014u, 522u))), vec4<u32>(68600u, ~1u, ~global2[_wgslsmith_index_u32(global1.e, 14u)], global1.d), vec4<bool>(626f > global0[_wgslsmith_index_u32(52992u, 8u)], any(var_0.c), false, var_1.x & var_1.x)), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(40133u, global1.d, 94476u, 1u), vec4<u32>(var_0.d, var_0.d, 56850u, 14626u))), vec4<bool>(var_0.c.x, var_1.x, true, !(global0[_wgslsmith_index_u32(102425u, 8u)] != global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global1.e, 14u)], 8u)]))), ~(~vec4<u32>(~var_0.e, _wgslsmith_dot_vec2_u32(vec2<u32>(15573u, 91488u), vec2<u32>(var_0.d, global2[_wgslsmith_index_u32(125264u, 14u)])), func_3(), 4294967295u)));
    global2 = array<u32, 14>();
    var var_3 = vec4<bool>(any(global1.c), !any(vec4<bool>(var_0.e != var_0.e, any(global1.c), var_0.c.x, global1.d != 1u)), true, select(true, false && (_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(75707u, 8u)]) != _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.x, 8u)])), !(!var_0.b.x)));
    return _wgslsmith_f_op_f32(round(-574f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global1.a, vec2<bool>(global1.b.x, any(vec3<bool>(true, true, global1.c.x))), vec3<bool>(global1.c.x, (global2[_wgslsmith_index_u32(global1.e, 14u)] > 17146u) | (_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -22899i, global1.a.x), vec3<i32>(global1.a.x, 2147483647i, 2147483647i)) == (u_input.a ^ global1.a.x)), true), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(38480u, _wgslsmith_mod_u32(global1.d, global2[_wgslsmith_index_u32(~abs(global1.e), 14u)])), 14u)], 0u);
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-881f, global0[_wgslsmith_index_u32(15242u, 8u)], _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-799f + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.d, 8u)]))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(0u, 8u)], -659f))));
    global2 = array<u32, 14>();
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], 14u)], 14u)], 14u)], 8u)]))))), var_1.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) - global0[_wgslsmith_index_u32(1u, 8u)])))), var_1.x);
    global4 = var_2.x;
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, max(var_0.d << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_0.e, global1.e), select(vec3<u32>(51688u, var_0.e, global1.e), vec3<u32>(var_0.d, global1.d, 4294967295u), var_0.c.x)) % 32u), 72706u)), 3u)];
    let var_4 = firstLeadingBit(global1.d);
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_2.yw, vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(6381u, 1u), 8u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-571f, 489f)) * _wgslsmith_f_op_f32(-1667f + 1327f))), var_0.b)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -695f) - _wgslsmith_f_op_vec2_f32(-var_2.yy)) - vec2<f32>(_wgslsmith_f_op_f32(round(var_2.x)), -1107f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(17124u, 8u)], _wgslsmith_f_op_f32(-603f * -1954f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(830f, global0[_wgslsmith_index_u32(global1.d, 8u)])), var_3.b.x))));
    var var_6 = vec2<i32>(~_wgslsmith_div_i32(-1i, _wgslsmith_sub_i32(~global1.a.x, 0i)), 58952i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, vec3<u32>(12764u, abs(var_0.d), countOneBits(var_4)), vec3<u32>(4294967295u, select(~reverseBits(global2[_wgslsmith_index_u32(13147u, 14u)]), 125432u, all(!vec4<bool>(var_3.b.x, var_0.c.x, var_3.b.x, true))), func_4(~35423u, 549f, vec2<f32>(_wgslsmith_f_op_f32(var_1.x - -874f), 1036f))));
}

