struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<bool>, 24>;

var<private> global2: vec4<bool>;

var<private> global3: vec4<u32> = vec4<u32>(20216u, 52870u, 76260u, 31770u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = -2147483647i;
    var var_1 = 0i;
    let var_2 = Struct_1(arg_2.a, -75119i, countOneBits(global0.c), u_input.a);
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-644f, arg_1.x, -601f) - vec3<f32>(-196f, arg_1.x, arg_1.x))))))));
    let var_4 = var_2;
    return select(vec4<bool>(true, global2.x, true, true), vec4<bool>(true, global2.x, !(!any(vec4<bool>(true, global2.x, global2.x, true))), !global2.x), !any(!vec4<bool>(global2.x, global2.x, false, true)));
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = Struct_1(vec4<u32>(69396u, ~(~4294967295u), 67783u, 45214u), u_input.b.x, vec3<i32>(global0.b, _wgslsmith_mult_i32(reverseBits(~2147483647i), _wgslsmith_div_i32(u_input.c.x ^ -1i, -global0.b)), ~max(_wgslsmith_div_i32(10039i, -2147483647i), ~23032i)), abs(0u));
    var var_1 = vec2<bool>(((var_0.c.x < var_0.b) || true) | any(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(569f, arg_0)), Struct_1(var_0.a, -26422i, global0.c, u_input.a))), all(!vec2<bool>(all(vec2<bool>(true, global2.x)), true)));
    global0 = Struct_1(vec4<u32>(var_0.a.x, ~reverseBits(~0u), _wgslsmith_sub_u32((global0.a.x >> (u_input.a % 32u)) ^ ~4294967295u, _wgslsmith_sub_u32(~u_input.a, ~4294967295u)), 1u), u_input.c.x, global0.c | select(vec3<i32>(-1i) * -global0.c, var_0.c >> (~global3.xwx % vec3<u32>(32u)), global2.yzw), global0.a.x);
    let var_2 = firstTrailingBit(~min(var_0.c.x, firstLeadingBit(-33074i)));
    let var_3 = select(vec2<bool>(all(!(!vec2<bool>(var_1.x, false))), any(global2.yy)), vec2<bool>(var_0.c.x == -(-4304i << (var_0.a.x % 32u)), !var_1.x), !func_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, 560f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(452f, arg_0) * vec2<f32>(arg_0, arg_0)))), vec2<f32>(arg_0, 1766f), Struct_1(reverseBits(var_0.a), _wgslsmith_mod_i32(global0.c.x, -16348i), firstLeadingBit(vec3<i32>(u_input.b.x, var_2, 0i)), 1u)).x);
    return 1u;
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = any(vec2<bool>(true, false));
    global0 = Struct_1(arg_1.a, select(~(~(global0.c.x >> (51405u % 32u))), -16987i, global2.x), global0.c >> (_wgslsmith_mult_vec3_u32(reverseBits(global0.a.zyy & global3.yzw), ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 4294967295u, 86485u), arg_1.a.wwy)) % vec3<u32>(32u)), 106848u);
    global0 = Struct_1(vec4<u32>(~_wgslsmith_clamp_u32(firstTrailingBit(75709u), _wgslsmith_div_u32(24946u, 1u), select(4294967295u, 2933u, false)), global3.x, _wgslsmith_mod_u32(~u_input.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x, u_input.a, 74152u, global3.x), firstLeadingBit(global0.a))), ~(~(~51654u))), u_input.b.x, max(arg_1.c, ~vec3<i32>(~global0.b, _wgslsmith_clamp_i32(global0.c.x, u_input.b.x, -2147483647i), global0.c.x)), _wgslsmith_dot_vec2_u32(global3.wy, select(reverseBits(arg_0) << ((global3.ww ^ vec2<u32>(arg_0.x, 37138u)) % vec2<u32>(32u)), ~global0.a.zw, select(func_3(arg_2.zx, vec2<f32>(arg_2.x, -499f), arg_1).wz, !vec2<bool>(false, global2.x), global2.x))));
    let var_1 = all(select(!global1[_wgslsmith_index_u32(~(~global0.a.x), 24u)], func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.zx)), _wgslsmith_f_op_vec2_f32(step(arg_2.xz, vec2<f32>(-725f, -1000f))), Struct_1(arg_1.a, u_input.c.x, reverseBits(global0.c), firstLeadingBit(global3.x))).zz, func_3(vec2<f32>(1f, _wgslsmith_f_op_f32(1471f * -456f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, 1000f) + arg_2.zy), vec2<f32>(-707f, arg_2.x)), arg_1).zy));
    let var_2 = -1i;
    return Struct_1((select(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.a, global0.a.x, 87615u), global0.a), _wgslsmith_div_vec4_u32(arg_1.a, arg_1.a), !vec4<bool>(true, true, var_1, true)) >> (_wgslsmith_clamp_vec4_u32(~global0.a, ~vec4<u32>(50591u, global0.a.x, 1u, 0u), _wgslsmith_clamp_vec4_u32(arg_1.a, vec4<u32>(4294967295u, 43619u, arg_0.x, global3.x), global0.a)) % vec4<u32>(32u))) >> (~arg_1.a % vec4<u32>(32u)), -2210i, max(global0.c, ~min(vec3<i32>(0i, 0i, -7312i), global0.c)), global0.d);
}

fn func_1(arg_0: u32, arg_1: f32, arg_2: vec4<u32>) -> f32 {
    global0 = func_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(func_2(arg_1), abs(arg_2.x)), vec2<u32>(min(~arg_2.x, global0.a.x), _wgslsmith_div_u32(global3.x, 4294967295u)), vec2<u32>(u_input.a, ~global3.x)), Struct_1(~global0.a, ~(-2147483647i), vec3<i32>(_wgslsmith_mult_i32(0i, 2147483647i), global0.c.x, ~(-2892i)) | (vec3<i32>(-1i) * -vec3<i32>(-16177i, global0.c.x, u_input.c.x)), reverseBits(~u_input.a)), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1875f, arg_1)), arg_1, true)), _wgslsmith_f_op_f32(sign(1904f)), _wgslsmith_f_op_f32(trunc(arg_1))));
    var var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_div_f32(arg_1, -753f)))) << (~(~firstTrailingBit(~1u)) % 32u);
    let var_1 = vec4<i32>(_wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec2_i32(-vec2<i32>(-24926i, u_input.b.x), global0.c.zz), reverseBits(_wgslsmith_dot_vec3_i32(global0.c, global0.c))) << (global3.x % 32u), _wgslsmith_div_i32(global0.c.x, select(~abs(-15542i), _wgslsmith_dot_vec2_i32(global0.c.xx, reverseBits(vec2<i32>(global0.c.x, u_input.b.x))), true)), _wgslsmith_add_i32(1i, global0.c.x), reverseBits(reverseBits(firstLeadingBit(2147483647i))) >> ((51201u & _wgslsmith_sub_u32(reverseBits(4294967295u), min(global0.d, 0u))) % 32u));
    global2 = select(vec4<bool>(global2.x, !(!global2.x), true | any(func_3(vec2<f32>(arg_1, 1529f), vec2<f32>(arg_1, 1393f), Struct_1(vec4<u32>(u_input.a, 33738u, u_input.a, arg_2.x), global0.c.x, vec3<i32>(var_1.x, -1i, global0.b), 1u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -465f)) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(step(-853f, arg_1)))), !select(!(!vec4<bool>(global2.x, global2.x, global2.x, false)), vec4<bool>(!global2.x, !global2.x, true, true), arg_1 <= _wgslsmith_f_op_f32(min(489f, arg_1))), func_3(vec2<f32>(-1000f, _wgslsmith_f_op_f32(1392f + _wgslsmith_f_op_f32(select(545f, arg_1, global2.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-962f, arg_1)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(194f, arg_1)))) * vec2<f32>(-1220f, arg_1)), Struct_1(vec4<u32>(1u, 0u, 7440u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(84490u, global0.d))), func_4(_wgslsmith_mod_vec2_u32(arg_2.yw, vec2<u32>(4294967295u, arg_0)), func_4(vec2<u32>(arg_2.x, 1u), Struct_1(vec4<u32>(arg_0, global3.x, u_input.a, global3.x), u_input.c.x, global0.c, 51243u), vec3<f32>(arg_1, arg_1, -248f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1, arg_1, arg_1)))).b, var_1.yxz, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, arg_2.x), min(arg_2.yxz, vec3<u32>(13669u, global0.a.x, 764u))))));
    let var_2 = Struct_1(max(~vec4<u32>(~0u, _wgslsmith_div_u32(arg_0, global3.x), 25925u, firstLeadingBit(402u)), global0.a), u_input.b.x, var_1.xxw, ~(~1u));
    return _wgslsmith_f_op_f32(1f * arg_1);
}

fn func_5(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: vec2<i32>) -> vec4<bool> {
    var var_0 = arg_0;
    var var_1 = !vec4<bool>(all(vec2<bool>(true, arg_0 >= 700f)), select(global2.x, _wgslsmith_div_f32(arg_1, arg_0) >= _wgslsmith_f_op_f32(-arg_0), global2.x), true, !func_3(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_1, 847f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-650f, arg_1) - vec2<f32>(arg_0, arg_0)), arg_2).x);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-590f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(u_input.a, -2184f, vec4<u32>(1u, arg_2.a.x, arg_2.d, 26135u))))))));
    var var_2 = arg_2.c.yz;
    let var_3 = arg_2;
    return !select(!vec4<bool>(var_1.x, func_3(vec2<f32>(arg_1, arg_1), vec2<f32>(-600f, arg_1), var_3).x, false, true), vec4<bool>(true, global2.x, !any(global1[_wgslsmith_index_u32(global3.x, 24u)]), any(!vec4<bool>(var_1.x, var_1.x, false, false))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<bool>(!global2.x, !global2.x, true, 14073u >= global3.x);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(840f + -1019f), _wgslsmith_div_f32(1809f, 118f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(658f + 439f), _wgslsmith_f_op_f32(select(1420f, -1000f, true)), global2.x == global2.x))))));
    var var_1 = true;
    global1 = array<vec2<bool>, 24>();
    var var_2 = !global2.wzw;
    var var_3 = Struct_1(vec4<u32>(4294967295u, 74121u, select(min(~63957u, min(25006u, 18963u)), 24896u, u_input.c.x < (global0.c.x >> (40304u % 32u))), global3.x), -18473i, global0.c, _wgslsmith_dot_vec4_u32(~global0.a, global0.a));
    global2 = select(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(42950u, 26607u, 21341u), var_3.a.ywx), _wgslsmith_f_op_f32(-1289f - -699f), global0.a << (vec4<u32>(u_input.a, 98630u, var_3.a.x, u_input.a) % vec4<u32>(32u))))), -2054f, Struct_1((global0.a ^ vec4<u32>(var_3.a.x, 4294967295u, global3.x, 37699u)) | select(global0.a, var_3.a, vec4<bool>(var_2.x, var_2.x, false, false)), abs(1i), global0.c, var_3.a.x), vec2<i32>(_wgslsmith_mult_i32(-1i, ~(-2147483647i)), _wgslsmith_dot_vec2_i32(-global0.c.zy, -global0.c.xy))), !select(vec4<bool>(global0.a.x <= 1u, true, false, global3.x < var_3.a.x), !(!vec4<bool>(false, true, global2.x, true)), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-563f, -390f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-534f, 1000f)), Struct_1(var_3.a, var_3.b, vec3<i32>(-1i, -50227i, u_input.c.x), u_input.a))), all(select(vec4<bool>(global2.x, var_2.x, any(vec4<bool>(global2.x, true, global2.x, global2.x)), any(global2.xz)), vec4<bool>(!var_2.x, true, func_3(vec2<f32>(-1121f, -556f), vec2<f32>(-1804f, 1430f), Struct_1(vec4<u32>(var_3.d, global0.d, 42915u, var_3.a.x), u_input.c.x, var_3.c, var_3.d)).x, var_2.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -483f));
}

