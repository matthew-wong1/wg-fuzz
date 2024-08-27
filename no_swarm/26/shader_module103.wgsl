struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(1u, 2100u));

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_1, 19>;

var<private> global3: Struct_1 = Struct_1(false, vec4<u32>(1u, 85719u, 110815u, 28566u), vec3<u32>(40162u, 484u, 94962u), true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> bool {
    global0 = Struct_2(~arg_1.b.yx);
    let var_0 = ~(~(global0.a.x | ~(~1u)));
    global0 = Struct_2(~(global3.c.yx | arg_1.c.xx) & global3.c.xy);
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(f32(-1f) * -190f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(743f - 334f))));
    var var_2 = Struct_1(!(!arg_1.d), global3.b, vec3<u32>(_wgslsmith_mod_u32(u_input.c, countOneBits(4294967295u)), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(11050u, arg_1.b.x)), firstLeadingBit(global3.c.yz)), abs(abs(u_input.c ^ var_0))), firstTrailingBit(arg_2) <= _wgslsmith_add_i32(10135i, _wgslsmith_sub_i32(~16948i, min(0i, arg_2))));
    return select(false, _wgslsmith_dot_vec2_i32(global1.yx, global1.yw) == -10307i, all(vec3<bool>(true, all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), arg_1.a)), any(select(vec2<bool>(var_2.a, var_2.a), vec2<bool>(var_2.a, var_2.a), true)))));
}

fn func_2(arg_0: vec4<bool>) -> vec4<i32> {
    let var_0 = Struct_1(all(arg_0.yww), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(abs(0u), ~global0.a.x), global0.a.x, 7288u, u_input.d), global3.b), vec3<u32>(~(u_input.b.x >> (max(0u, 42088u) % 32u)), select(~30377u, reverseBits(32188u), all(select(vec2<bool>(false, false), arg_0.xw, vec2<bool>(true, arg_0.x)))), ~((u_input.c >> (global3.b.x % 32u)) ^ max(117444u, 0u))), func_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-1055f, 430f, -1000f, 705f), vec4<f32>(767f, 1643f, 1000f, 275f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1500f, 462f, 188f, -411f))))), global2[_wgslsmith_index_u32(global3.c.x, 19u)], 42416i, -554i));
    var var_1 = arg_0.yw;
    var var_2 = 1537f;
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-722f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1886f - -733f)))) - _wgslsmith_div_f32(-631f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -401f), _wgslsmith_f_op_f32(1071f - -1000f))))));
    var var_3 = 1i;
    return vec4<i32>(_wgslsmith_mod_i32(max(_wgslsmith_mult_i32(-14462i >> (u_input.d % 32u), global1.x), i32(-1i) * -u_input.a), firstTrailingBit(0i)), -3493i, u_input.a, ~reverseBits(1i));
}

fn func_1() -> i32 {
    let var_0 = func_2(vec4<bool>(!(!global3.a), global3.d && !global3.a, true, select(false, true, false))) & func_2(select(vec4<bool>(global3.a, global1.x > -12252i, global3.d, global3.d), select(vec4<bool>(false, global3.d, global3.d, false), vec4<bool>(global3.a, global3.d, true, global3.d), global3.d | false), vec4<bool>(true, true, true, true)));
    var var_1 = Struct_2(~global3.b.zy);
    global1 = vec4<i32>(countOneBits(-13416i), ~_wgslsmith_dot_vec2_i32(reverseBits(-vec2<i32>(2567i, var_0.x)), firstTrailingBit(vec2<i32>(var_0.x, -1i))), reverseBits(18954i), -33763i);
    global3 = Struct_1(!(global3.b.x <= _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, var_1.a.x), global0.a.x)), _wgslsmith_sub_vec4_u32(u_input.b, global3.b), firstTrailingBit(select(_wgslsmith_mult_vec3_u32(vec3<u32>(54119u, var_1.a.x, global0.a.x) << (u_input.b.wxy % vec3<u32>(32u)), ~vec3<u32>(u_input.b.x, 0u, 86311u)), abs(~global3.c), select(vec3<bool>(false, global3.a, global3.a), select(vec3<bool>(global3.a, global3.a, global3.d), vec3<bool>(global3.d, true, global3.d), global3.d), vec3<bool>(false, true, true)))), !global3.a);
    global1 = max(~_wgslsmith_mod_vec4_i32(~(-vec4<i32>(-1i, var_0.x, 0i, -34167i)), min(reverseBits(vec4<i32>(var_0.x, 49064i, -20520i, 36987i)), var_0)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-50098i, var_0.x, -1i), vec3<i32>(2147483647i, global1.x, var_0.x)) ^ -27779i, _wgslsmith_div_i32(global1.x & 14136i, global1.x | global1.x) ^ _wgslsmith_add_i32(reverseBits(-1i), global1.x << (0u % 32u)), 29247i, global1.x));
    return ~63234i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~vec4<i32>(global1.x, ~(abs(u_input.a) & _wgslsmith_div_i32(11987i, 24583i)), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(select(global1.xx, vec2<i32>(2147483647i, u_input.a), vec2<bool>(global3.d, global3.a)), global1.zx), vec2<i32>(global1.x | -1i, 1i << (0u % 32u))), -1i);
    var var_0 = 16545u;
    var var_1 = -_wgslsmith_mod_vec4_i32(select(vec4<i32>(u_input.a, global1.x, u_input.a, 2147483647i) << (u_input.b % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(global1.x, global1.x, 0i, global1.x), vec4<i32>(u_input.a, u_input.a, 2147483647i, 2147483647i)), true) << (vec4<u32>(_wgslsmith_clamp_u32(0u, global3.c.x, global0.a.x), u_input.d, 17851u, 1u) % vec4<u32>(32u)), -(~abs(vec4<i32>(-14124i, 20029i, u_input.a, -41665i))));
    var var_2 = (vec4<i32>(select(reverseBits(2147483647i), i32(-1i) * -1i, all(vec3<bool>(false, global3.d, global3.a))), reverseBits(func_1()), -16145i, abs(2147483647i)) & ~(-vec4<i32>(0i, -19618i, 2147483647i, 37783i) << (countOneBits(global3.b) % vec4<u32>(32u)))) & vec4<i32>(_wgslsmith_mult_i32(global1.x, global1.x), abs(_wgslsmith_sub_i32(u_input.a, -20871i)) >> ((u_input.c | ~global3.b.x) % 32u), u_input.a, var_1.x & _wgslsmith_clamp_i32(0i, 21472i, u_input.a >> (global0.a.x % 32u)));
    var_2 = _wgslsmith_mod_vec4_i32(-(vec4<i32>(~(-2147483647i), _wgslsmith_div_i32(var_2.x, var_2.x), _wgslsmith_div_i32(var_2.x, 0i), firstTrailingBit(var_1.x)) ^ (vec4<i32>(var_1.x, global1.x, u_input.a, u_input.a) | select(vec4<i32>(var_1.x, u_input.a, -1i, 0i), vec4<i32>(global1.x, 1i, global1.x, var_2.x), vec4<bool>(global3.a, global3.a, true, false)))), vec4<i32>(var_2.x, var_1.x, 1i, ~(~u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-56723i, var_1.x), -6503i & max(var_2.x, -13578i)), select(-71392i, _wgslsmith_sub_i32(global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), vec4<i32>(u_input.a, -1i, u_input.a, -1i))), !global3.a)), _wgslsmith_mult_u32(u_input.c, ~77614u));
}

