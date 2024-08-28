struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<Struct_2, 7>;

var<private> global2: Struct_2 = Struct_2(vec2<f32>(613f, -614f), vec2<bool>(false, false), vec3<bool>(false, true, false));

var<private> global3: array<bool, 28> = array<bool, 28>(false, false, true, true, false, false, true, true, false, true, true, false, true, true, true, true, true, false, true, true, false, true, true, true, false, false, true, true);

var<private> global4: vec3<i32>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = vec4<u32>(~global0.x, abs(_wgslsmith_mult_u32(u_input.a, u_input.a >> (abs(87896u) % 32u))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(global0.wzw, ~vec3<u32>(u_input.a, 56933u, 14106u), true), select(vec3<u32>(1u, u_input.a, 0u), vec3<u32>(global0.x, 45987u, arg_0) ^ global0.wyz, vec3<bool>(true, arg_1.c.x, global3[_wgslsmith_index_u32(24899u, 28u)]))), ~select(global0.yww << (vec3<u32>(1u, u_input.a, arg_0) % vec3<u32>(32u)), _wgslsmith_mult_vec3_u32(global0.xww, global0.xww), vec3<bool>(true, true, global3[_wgslsmith_index_u32(0u, 28u)]))), abs(4294967295u));
    global3 = array<bool, 28>();
    let var_1 = 4294967295u;
    global0 = vec4<u32>(_wgslsmith_clamp_u32(~(~(~global0.x)), 39386u, arg_0), 23120u, ~((u_input.a | countOneBits(40671u)) << ((~0u ^ _wgslsmith_sub_u32(arg_0, 0u)) % 32u)), ~(~0u));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, abs(~(~u_input.a)), _wgslsmith_div_u32(1u, _wgslsmith_div_u32(4294967295u, global0.x)), firstLeadingBit(_wgslsmith_mult_u32(2717u, var_0.x) & 4294967295u)), reverseBits(vec4<u32>(_wgslsmith_div_u32(arg_0, ~70467u), _wgslsmith_dot_vec2_u32(var_0.yw, ~global0.xy), var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(20285u, 0u, 4294967295u), var_0.zyx)))), 7u)];
    return select(vec2<bool>(true, true), select(vec2<bool>(all(vec4<bool>(global3[_wgslsmith_index_u32(76491u, 28u)], var_2.b.x, arg_1.c.x, true)), var_2.c.x), vec2<bool>(select(global3[_wgslsmith_index_u32(var_0.x, 28u)], var_2.c.x, arg_1.c.x) & false, true), !vec2<bool>(all(global2.c), true)), true);
}

fn func_2(arg_0: bool) -> bool {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) - _wgslsmith_f_op_f32(sign(1000f))))), vec2<bool>(true, all(global2.c)), select(global2.c, global2.c, !select(!vec3<bool>(global2.b.x, true, false), !vec3<bool>(global2.c.x, true, false), arg_0)));
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(-415i, -13941i), -_wgslsmith_dot_vec2_i32(abs(global4.xz ^ global4.xz), global4.xz));
    global1 = array<Struct_2, 7>();
    global0 = ~(~reverseBits(~(~vec4<u32>(global0.x, 4294967295u, u_input.a, u_input.a))));
    var var_2 = select(func_3(~(~u_input.a), Struct_2(_wgslsmith_f_op_vec2_f32(select(global2.a, var_0.a, select(var_0.b, vec2<bool>(global3[_wgslsmith_index_u32(64770u, 28u)], global3[_wgslsmith_index_u32(1u, 28u)]), vec2<bool>(var_0.b.x, false)))), vec2<bool>(global2.a.x >= var_0.a.x, false), var_0.c)), vec2<bool>(all(var_0.b), all(var_0.c)), global2.c.yx);
    return global2.b.x;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> Struct_2 {
    global3 = array<bool, 28>();
    global4 = vec3<i32>((0i & min(-10667i | u_input.b, u_input.b)) & 2147483647i, -u_input.c, -1i);
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1437f, _wgslsmith_f_op_f32(global2.a.x * -1589f)))))), func_3(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 22763u, u_input.a), abs(vec4<u32>(global0.x, 4294967295u, global0.x, global0.x))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, firstTrailingBit(u_input.a), global0.x), 7u)]), arg_1.c);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-914f + var_0.a.x))))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -149f);
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -916f))) * _wgslsmith_f_op_f32(sign(1000f)))), select(select(vec2<bool>(all(global2.c.xx), !global2.c.x), select(var_0.c.zz, !vec2<bool>(global2.b.x, arg_0), all(vec2<bool>(false, global3[_wgslsmith_index_u32(49090u, 28u)]))), vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 14460u), global0.zy), 28u)], global3[_wgslsmith_index_u32(abs(1u), 28u)])), global2.b, var_0.c.yy), global2.c);
}

fn func_1(arg_0: Struct_2) -> i32 {
    global2 = func_4(true && (select(func_2(global3[_wgslsmith_index_u32(u_input.a, 28u)]), global2.c.x, arg_0.c.x) == !all(global2.c)), global1[_wgslsmith_index_u32(~u_input.a ^ firstLeadingBit(_wgslsmith_add_u32(10720u, ~4294967295u)), 7u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(~global0.x) ^ u_input.a, u_input.a), 7u)]);
    var var_0 = !func_3(~(~19975u), Struct_2(arg_0.a, global2.b, vec3<bool>(func_4(global3[_wgslsmith_index_u32(global0.x, 28u)], Struct_2(arg_0.a, arg_0.b, arg_0.c), Struct_2(global2.a, vec2<bool>(false, global3[_wgslsmith_index_u32(42559u, 28u)]), vec3<bool>(arg_0.c.x, false, global2.b.x))).c.x, global3[_wgslsmith_index_u32(4294967295u & global0.x, 28u)], true)));
    var var_1 = ~(-23374i);
    var var_2 = select(vec3<i32>(global4.x, global4.x, _wgslsmith_div_i32(-2147483647i, 2147483647i)), firstTrailingBit(vec3<i32>(_wgslsmith_add_i32(u_input.b, 1i), 67800i, i32(-1i) * -21914i) >> (abs(vec3<u32>(u_input.a, global0.x, 4294967295u)) % vec3<u32>(32u))), !global2.c);
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(361f, -1000f, global2.b.x)), 242f, global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(149f, arg_0.a.x)))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_u32(~(abs(1u) | (42259u & ~u_input.a)), ~global0.x);
    global4 = abs(vec3<i32>(~func_1(Struct_2(global2.a, global2.b, global2.c)), _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b, 9327i), countOneBits(2147483647i)), select(_wgslsmith_mod_i32(0i, global4.x), reverseBits(global4.x), global2.c.x)) & vec3<i32>(_wgslsmith_add_i32(u_input.b & u_input.b, _wgslsmith_mult_i32(global4.x, 16775i)), _wgslsmith_mod_i32(u_input.b, u_input.c), -_wgslsmith_dot_vec4_i32(vec4<i32>(global4.x, 43804i, 2147483647i, 1i), vec4<i32>(0i, 16878i, 1i, u_input.b))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, -181f, -1000f, 1354f) * vec4<f32>(1789f, global2.a.x, -205f, global2.a.x))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -752f), _wgslsmith_f_op_f32(round(global2.a.x)), -1559f, _wgslsmith_f_op_f32(-880f - global2.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, 192f, global2.a.x, -648f) + vec4<f32>(339f, -1000f, global2.a.x, global2.a.x))))));
    global4 = vec3<i32>((~7205i ^ (global4.x & u_input.b)) << (17394u % 32u), -_wgslsmith_mod_i32(u_input.c, _wgslsmith_div_i32(global4.x, -25623i)), -11985i) ^ firstTrailingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, u_input.b, u_input.c), vec3<i32>(-19039i, global4.x, global4.x)), vec3<i32>(global4.x, u_input.b, 55049i) >> (global0.xyy % vec3<u32>(32u))), ~u_input.b, 30191i));
    var var_2 = var_1;
    var var_3 = 64139i;
    var var_4 = Struct_1(var_1.a);
    global0 = vec4<u32>(_wgslsmith_mult_u32(abs(u_input.a), global0.x), u_input.a, 94549u, ~12371u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a.x, global2.a.x)))) * 328f), 550f);
}

