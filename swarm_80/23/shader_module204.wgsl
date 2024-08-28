struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: vec4<bool>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, true);

var<private> global3: array<bool, 26> = array<bool, 26>(false, false, false, true, true, false, true, true, true, false, true, true, true, true, false, false, false, false, true, true, true, false, true, false, true, false);

var<private> global4: u32 = 4294967295u;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: i32) -> i32 {
    let var_0 = any(vec3<bool>(false, countOneBits(u_input.d) > u_input.d, all(vec4<bool>(global3[_wgslsmith_index_u32(~48220u, 26u)], !global3[_wgslsmith_index_u32(15519u, 26u)], true, true))));
    var var_1 = ~(~_wgslsmith_mod_vec2_i32(~(~vec2<i32>(843i, 2147483647i)), -max(vec2<i32>(arg_1, 2147483647i), vec2<i32>(-14358i, 1i))));
    global1 = !select(select(vec4<bool>(!global3[_wgslsmith_index_u32(0u, 26u)], select(global1.x, true, arg_0), true, true), select(select(vec4<bool>(true, true, false, global2.x), vec4<bool>(false, true, false, true), global2.x), !vec4<bool>(false, global1.x, true, global3[_wgslsmith_index_u32(0u, 26u)]), false), true), vec4<bool>(arg_0, global2.x, true, select(true & global1.x, any(vec4<bool>(true, arg_0, var_0, false)), all(vec3<bool>(global2.x, global3[_wgslsmith_index_u32(u_input.d, 26u)], global3[_wgslsmith_index_u32(15048u, 26u)])))), global1.x);
    global4 = ~(~(~1u));
    let var_2 = ~_wgslsmith_dot_vec4_u32(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d, u_input.c.x, 4294967295u, 0u), vec4<u32>(u_input.a, u_input.d, u_input.d, 0u))), _wgslsmith_add_vec4_u32(~select(vec4<u32>(65650u, 37103u, 54901u, 1866u), vec4<u32>(u_input.c.x, u_input.e, 10049u, u_input.a), arg_0), _wgslsmith_add_vec4_u32(vec4<u32>(90773u, 1u, u_input.e, 15385u), vec4<u32>(45436u, 4294967295u, u_input.a, u_input.c.x))));
    return _wgslsmith_dot_vec2_i32(min(-(vec2<i32>(arg_2, -2147483647i) | ~vec2<i32>(global0[_wgslsmith_index_u32(var_2, 19u)], -19781i)), vec2<i32>(34886i << (0u % 32u), ~u_input.b)), vec2<i32>(-15216i, -(_wgslsmith_sub_i32(-2147483647i, arg_1) | global0[_wgslsmith_index_u32(4855u, 19u)])));
}

fn func_2(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = firstLeadingBit(-_wgslsmith_div_vec3_i32(vec3<i32>(-u_input.b, func_3(global3[_wgslsmith_index_u32(u_input.e, 26u)], global0[_wgslsmith_index_u32(0u, 19u)], arg_0.x), _wgslsmith_dot_vec2_i32(arg_0.zz, arg_0.yz)), _wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.d, 19u)], -22719i), arg_0 << (vec3<u32>(u_input.e, u_input.e, 0u) % vec3<u32>(32u)))));
    global4 = _wgslsmith_dot_vec3_u32(~firstLeadingBit(max(vec3<u32>(4294967295u, 35889u, u_input.e), vec3<u32>(1u, u_input.c.x, 4294967295u)) | _wgslsmith_div_vec3_u32(vec3<u32>(u_input.d, 1222u, 4737u), vec3<u32>(u_input.d, u_input.e, u_input.e))), ~vec3<u32>(u_input.d, u_input.a, ~0u));
    let var_1 = !select(!vec4<bool>(!global2.x, true, true, any(global1.xx)), !(!select(vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(global2.x, true, global3[_wgslsmith_index_u32(u_input.d, 26u)], true), vec4<bool>(global3[_wgslsmith_index_u32(1u, 26u)], true, false, false))), true);
    let var_2 = -1000f;
    let var_3 = Struct_2(Struct_1(u_input.c.x, ~vec2<u32>(u_input.e, _wgslsmith_mult_u32(0u, u_input.a)), vec2<bool>(true, (u_input.e != u_input.a) | true)), -(select(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.c.x, 19u)], arg_0.x), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(67431u, u_input.d), u_input.c), 19u)], select(true, global3[_wgslsmith_index_u32(12882u, 26u)], global1.x)) << (countOneBits(_wgslsmith_sub_u32(u_input.c.x, u_input.e)) % 32u)), !(!select(select(vec3<bool>(var_1.x, true, false), global1.wxy, vec3<bool>(global3[_wgslsmith_index_u32(u_input.d, 26u)], global2.x, global2.x)), vec3<bool>(true, global3[_wgslsmith_index_u32(5718u, 26u)], true), any(vec2<bool>(global2.x, global2.x)))), ~abs(~u_input.c.x << (~u_input.e % 32u)));
    return var_3;
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = vec3<u32>(~arg_0.d, u_input.d, u_input.d);
    var var_1 = !(!select(vec4<bool>(arg_3.a.c.x, true && global2.x, false, !arg_1), vec4<bool>(func_2(vec3<i32>(arg_0.b, global0[_wgslsmith_index_u32(4294967295u, 19u)], arg_3.b)).a.c.x, true, false, all(vec3<bool>(true, arg_1, false))), false));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(491f + -1725f)) - _wgslsmith_f_op_f32(max(-1157f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1826f + -657f)))))));
    let var_3 = var_2;
    return arg_0.a;
}

fn func_1() -> u32 {
    var var_0 = reverseBits(vec3<u32>(_wgslsmith_mod_u32(~(4294967295u << (u_input.a % 32u)), _wgslsmith_add_u32(~u_input.a, ~61542u)), 1u, 28779u));
    let var_1 = Struct_3(94039u, ~1u, Struct_2(func_4(Struct_2(Struct_1(1u, vec2<u32>(var_0.x, 63382u), global2.xx), ~552i, !global1.xwz, var_0.x | u_input.d), !(!global2.x), abs(min(vec3<u32>(1u, var_0.x, var_0.x), vec3<u32>(1u, 67997u, 22393u))), func_2(select(vec3<i32>(global0[_wgslsmith_index_u32(u_input.e, 19u)], 2147483647i, global0[_wgslsmith_index_u32(36491u, 19u)]), vec3<i32>(-21481i, global0[_wgslsmith_index_u32(4294967295u, 19u)], -21745i), global1.xwy))), select(_wgslsmith_clamp_i32(-1997i, abs(-2147483647i), u_input.b), ~(-41605i), true && all(vec2<bool>(true, true))), !(!vec3<bool>(false, global3[_wgslsmith_index_u32(var_0.x, 26u)], true)), var_0.x >> (var_0.x % 32u)));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1934f) + _wgslsmith_div_f32(-652f, -510f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-651f, -334f)) * _wgslsmith_f_op_f32(-1501f - -538f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - _wgslsmith_f_op_f32(sign(1433f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(146f)))))));
    var var_3 = var_0.x;
    global1 = select(select(vec4<bool>(global1.x && func_4(var_1.c, var_1.c.c.x, vec3<u32>(19523u, 57054u, 0u), var_1.c).c.x, !any(vec4<bool>(var_1.c.c.x, true, global2.x, global1.x)), false, any(func_2(vec3<i32>(global0[_wgslsmith_index_u32(u_input.e, 19u)], global0[_wgslsmith_index_u32(33566u, 19u)], 6124i)).c)), !vec4<bool>(global2.x, global2.x, all(vec2<bool>(false, false)), global3[_wgslsmith_index_u32(var_0.x, 26u)] && true), vec4<bool>(_wgslsmith_f_op_f32(-var_2.x) >= -408f, true, _wgslsmith_f_op_f32(-var_2.x) > _wgslsmith_f_op_f32(trunc(1030f)), all(vec3<bool>(var_1.c.a.c.x, true, global1.x)))), !(!vec4<bool>(var_0.x == var_1.a, false, !var_1.c.c.x, true)), vec4<bool>(global1.x, global1.x, var_1.c.b == min(1i, ~var_1.c.b), false));
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(select(~(~vec3<u32>(var_0.x, 8280u, 1u)), vec3<u32>(u_input.e, ~var_1.c.d, select(var_1.b, var_0.x, var_1.c.c.x)), vec3<bool>(any(global2.xy), true, global3[_wgslsmith_index_u32(80350u, 26u)])), ~_wgslsmith_mult_vec3_u32(abs(vec3<u32>(3139u, 0u, var_1.b)), countOneBits(vec3<u32>(92864u, u_input.c.x, var_1.a)))), min(min(4294967295u, _wgslsmith_div_u32(4294967295u, var_0.x | 11234u)), u_input.e));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = 0u;
    global4 = ~48085u;
    global3 = array<bool, 26>();
    var var_0 = ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~func_1(), ~_wgslsmith_clamp_u32(63770u, u_input.c.x, 1u) << (~countOneBits(u_input.c.x) % 32u)), 19u)];
    let var_1 = vec3<f32>(1f, 1f, 1f);
    let var_2 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 10542u, u_input.a), vec3<u32>(u_input.e, 47355u, 4294967295u)), firstLeadingBit(vec3<u32>(u_input.d, u_input.c.x, u_input.d))), firstTrailingBit(vec3<u32>(u_input.e, 50419u, u_input.e) ^ vec3<u32>(37187u, 96606u, u_input.d))), 19u)]), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-46227i, global0[_wgslsmith_index_u32(u_input.a, 19u)])), vec2<i32>(-27000i, -7857i)), 2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(0i, 1i, u_input.b), -vec3<i32>(global0[_wgslsmith_index_u32(87865u, 19u)], u_input.b, global0[_wgslsmith_index_u32(u_input.c.x, 19u)]))), 2147483647i));
}

