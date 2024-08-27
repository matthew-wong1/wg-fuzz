struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<f32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_2,
    c: vec4<u32>,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = Struct_5(global0.c.zx, Struct_2(global0.a, -2525f, vec3<i32>(~_wgslsmith_clamp_i32(1i, u_input.e, arg_0), firstTrailingBit(33894i), -2147483647i)), ~(abs(~vec4<u32>(4294967295u, u_input.a, global0.a.x, 4294967295u)) << ((_wgslsmith_div_vec4_u32(vec4<u32>(1u, 32910u, global0.a.x, global0.a.x), vec4<u32>(u_input.b, 25158u, u_input.b, global0.a.x)) >> (~vec4<u32>(u_input.c.x, 43243u, global0.a.x, 12550u) % vec4<u32>(32u))) % vec4<u32>(32u))), Struct_1(vec4<bool>(false, true, true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, global0.b) * _wgslsmith_f_op_f32(-global0.b)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.b - 1000f))))), u_input.d);
    let var_1 = !(!(!var_0.d.a.x));
    var var_2 = 868f;
    global0 = var_0.b;
    var var_3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1836f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(227f, 525f, var_1)) * 497f))), var_0.d.b, select(!var_1, global0.a.x == var_0.c.x, firstTrailingBit(global0.c.x) > 22870i))), global0.b);
    return 1i;
}

fn func_2() -> u32 {
    global0 = Struct_2(~vec3<u32>(~1u, firstLeadingBit(global0.a.x), u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-372f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-578f * global0.b)))), -(-global0.c | countOneBits(global0.c | global0.c)));
    global0 = Struct_2(~_wgslsmith_sub_vec3_u32(vec3<u32>(29277u, global0.a.x, u_input.d) << (_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.c.x), vec3<u32>(global0.a.x, 1u, global0.a.x)) % vec3<u32>(32u)), global0.a), _wgslsmith_f_op_f32(f32(-1f) * -534f), vec3<i32>(func_3(~(u_input.e ^ global0.c.x)), ~global0.c.x, _wgslsmith_mult_i32(-reverseBits(29504i), -1i)));
    let var_0 = _wgslsmith_mult_vec3_i32(global0.c, _wgslsmith_clamp_vec3_i32(~(~global0.c) | global0.c, vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(-27309i, u_input.e), global0.c.yz), u_input.e, ~func_3(27471i)), ~(-vec3<i32>(u_input.e, 37193i, global0.c.x))));
    var var_1 = global0.b;
    let var_2 = Struct_5(firstTrailingBit(select(vec2<i32>(u_input.e, var_0.x), firstLeadingBit(~var_0.yz), all(vec2<bool>(true, true)))), Struct_2(vec3<u32>(abs(global0.a.x), abs(28634u), global0.a.x), _wgslsmith_f_op_f32(-569f - _wgslsmith_f_op_f32(-global0.b)), vec3<i32>(global0.c.x, _wgslsmith_mult_i32(var_0.x, -21527i), -1i) ^ var_0), ~_wgslsmith_clamp_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.x, u_input.d, global0.a.x, u_input.c.x), vec4<u32>(global0.a.x, u_input.b, 140139u, 18294u)), vec4<u32>(_wgslsmith_mod_u32(u_input.d, 22764u), 1u, _wgslsmith_div_u32(global0.a.x, u_input.c.x), 44077u), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(7793u, 1u, 98332u, u_input.a), vec4<u32>(4294967295u, 20883u, 2211u, 51497u)), vec4<u32>(u_input.c.x, 11091u, u_input.c.x, global0.a.x) >> (vec4<u32>(4294967295u, 1u, 0u, u_input.a) % vec4<u32>(32u)))), Struct_1(vec4<bool>(~u_input.c.x <= 1u, select(false, true, true), true, any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global0.b, global0.b), _wgslsmith_f_op_f32(round(global0.b)), any(vec4<bool>(true, true, true, true)))), -529f))), reverseBits(countOneBits(_wgslsmith_mult_u32(global0.a.x, ~u_input.a))));
    return ~select(var_2.b.a.x, var_2.e, false) ^ global0.a.x;
}

fn func_1(arg_0: Struct_5, arg_1: u32) -> i32 {
    let var_0 = vec2<i32>((arg_0.a.x >> (~func_2() % 32u)) & _wgslsmith_sub_i32(24077i, arg_0.a.x), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(_wgslsmith_clamp_i32(2147483647i, global0.c.x, -16961i), _wgslsmith_div_i32(arg_0.b.c.x, 1i), _wgslsmith_add_i32(u_input.e, arg_0.a.x))), vec3<i32>(0i, -20647i, u_input.e) << (select(arg_0.c.xzz, select(vec3<u32>(arg_0.e, 31711u, global0.a.x), vec3<u32>(u_input.a, arg_1, 4294967295u), arg_0.d.a.wwy), any(vec4<bool>(arg_0.d.a.x, arg_0.d.a.x, arg_0.d.a.x, true))) % vec3<u32>(32u))));
    let var_1 = ~(~select(_wgslsmith_clamp_vec4_u32(vec4<u32>(8330u, arg_1, 104466u, global0.a.x), vec4<u32>(arg_1, 48467u, global0.a.x, 33074u), vec4<u32>(arg_1, 15987u, 4294967295u, u_input.d)), vec4<u32>(45225u, arg_0.c.x, u_input.c.x, 28906u), !arg_0.d.a.x)) >> (~(~min(vec4<u32>(32125u, 4294967295u, arg_1, 1u), ~arg_0.c)) % vec4<u32>(32u));
    let var_2 = reverseBits(abs(reverseBits(vec3<i32>(u_input.e, 0i, var_0.x)))) & vec3<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(arg_0.a.x, global0.c.x), _wgslsmith_dot_vec3_i32(~vec3<i32>(global0.c.x, 2147483647i, -12205i), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, global0.c.x, global0.c.x), vec3<i32>(global0.c.x, global0.c.x, -1i), global0.c))), 51979i, -_wgslsmith_mod_i32(u_input.e, ~(-2147483647i)));
    global0 = arg_0.b;
    let var_3 = i32(-1i) * -10776i;
    return _wgslsmith_sub_i32(firstTrailingBit(~var_3), global0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(firstLeadingBit(vec3<u32>(0u, global0.a.x, global0.a.x)), _wgslsmith_f_op_f32(1539f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), min(vec3<i32>(func_1(Struct_5(global0.c.zx, Struct_2(vec3<u32>(34220u, 16277u, u_input.d), -1051f, vec3<i32>(u_input.e, u_input.e, 35296i)), vec4<u32>(global0.a.x, 17705u, 0u, u_input.b), Struct_1(vec4<bool>(true, false, false, true), global0.b), global0.a.x), global0.a.x), func_3(0i), max(1i, global0.c.x)), vec3<i32>(func_1(Struct_5(vec2<i32>(-1i, global0.c.x), Struct_2(global0.a, global0.b, vec3<i32>(35452i, global0.c.x, 0i)), vec4<u32>(4294967295u, global0.a.x, global0.a.x, global0.a.x), Struct_1(vec4<bool>(true, true, true, false), global0.b), global0.a.x), global0.a.x), -8027i, u_input.e ^ -2147483647i)) ^ (vec3<i32>(0i, 0i, min(4851i, global0.c.x)) ^ _wgslsmith_div_vec3_i32(global0.c, min(global0.c, global0.c))));
    let var_0 = Struct_4(Struct_2(global0.a, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-253f, _wgslsmith_f_op_f32(global0.b + global0.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - _wgslsmith_f_op_f32(-215f * global0.b))), _wgslsmith_clamp_vec3_i32(vec3<i32>(37454i, ~0i, u_input.e), firstTrailingBit(global0.c), global0.c)), Struct_3(vec4<bool>(true, true, true, true), vec4<f32>(-1000f, -176f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(step(global0.b, global0.b)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, global0.b, global0.b) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1182f, 925f, global0.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, 1293f, global0.b))))));
    var var_1 = Struct_5(vec2<i32>(~(-2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-14852i, global0.c.x, -17000i, global0.c.x) >> (vec4<u32>(var_0.a.a.x, 5923u, 1u, global0.a.x) % vec4<u32>(32u)), vec4<i32>(80852i, u_input.e, global0.c.x, global0.c.x)), vec4<i32>(1i, -u_input.e, -u_input.e, 2147483647i))), Struct_2(abs(var_0.a.a) >> (var_0.a.a % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-666f * global0.b) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(var_0.c.x)), var_0.b.b.x))), ~var_0.a.c), select(select(vec4<u32>(70810u, u_input.b >> (u_input.b % 32u), _wgslsmith_div_u32(global0.a.x, var_0.a.a.x), global0.a.x), select(~vec4<u32>(u_input.c.x, u_input.d, 10410u, u_input.c.x), reverseBits(vec4<u32>(var_0.a.a.x, 20666u, 0u, 20375u)), any(vec3<bool>(false, var_0.b.a.x, true))), any(vec2<bool>(var_0.b.a.x, false))), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 1u, u_input.d, 1u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.a.x, u_input.c.x, global0.a.x, 4294967295u), vec4<u32>(u_input.c.x, global0.a.x, global0.a.x, 67217u))), var_0.b.a.x), Struct_1(select(vec4<bool>(!var_0.b.a.x, all(var_0.b.a.yy), !var_0.b.a.x, var_0.a.a.x > 0u), vec4<bool>(!var_0.b.a.x, true, var_0.b.a.x, false), vec4<bool>(var_0.b.a.x, any(var_0.b.a), false, 499f > global0.b)), _wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.b + -642f)))), 21533u);
    global0 = Struct_2(var_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_1.b.b, var_1.d.b))))) * _wgslsmith_f_op_f32(-var_0.a.b)), vec3<i32>(_wgslsmith_div_i32(u_input.e, u_input.e), global0.c.x, 29450i));
    let var_2 = Struct_1(var_1.d.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c.x))), -1000f)));
    var var_3 = Struct_4(Struct_2(vec3<u32>(u_input.b, ~(~global0.a.x), _wgslsmith_dot_vec4_u32(select(vec4<u32>(var_0.a.a.x, global0.a.x, 0u, 4294967295u), vec4<u32>(4294967295u, 54526u, var_1.e, 63165u), true), firstLeadingBit(var_1.c))), var_0.c.x, reverseBits(vec3<i32>(global0.c.x, -2147483647i, 2147483647i)) & reverseBits(global0.c)), Struct_3(var_1.d.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, 1266f, -392f, 1084f) - vec4<f32>(var_1.d.b, -602f, 1000f, 182f))))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b.x, var_0.c.x, var_1.d.b)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c))))));
    var_3 = var_0;
    var_1 = Struct_5(global0.c.zx, Struct_2(~global0.a, var_2.b, _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(var_0.a.c, var_3.a.c), vec3<i32>(u_input.e, -8738i, global0.c.x)) | ~global0.c), ~vec4<u32>(var_3.a.a.x, 1u ^ _wgslsmith_clamp_u32(u_input.d, 52301u, 22109u), (1u ^ var_1.e) | select(var_1.b.a.x, global0.a.x, var_1.d.a.x), firstTrailingBit(3939u)), Struct_1(var_1.d.a, -718f), ~var_0.a.a.x ^ ~var_0.a.a.x);
    var_3 = Struct_4(Struct_2(firstTrailingBit(var_3.a.a) & var_1.c.zzw, _wgslsmith_f_op_f32(f32(-1f) * -1619f), var_0.a.c), var_0.b, _wgslsmith_f_op_vec3_f32(var_3.c + var_0.b.b.yzx));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.c.yy, firstLeadingBit(firstLeadingBit(min(32806u, u_input.b) | _wgslsmith_mult_u32(1u, var_0.a.a.x))));
}

