struct Struct_1 {
    a: i32,
    b: bool,
    c: u32,
    d: vec2<bool>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<u32>;

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -138f))))) != -1210f;
    global0 = arg_0;
    global2 = !select(!(!vec4<bool>(true, false, var_0, global0.e.x)), vec4<bool>(select(true, false, global0.d.x), false, true, true), vec4<bool>(true, ~arg_0.c != _wgslsmith_mult_u32(global1.x, 4294967295u), true, true));
    global0 = Struct_1(-16922i ^ (global0.a >> (3142u % 32u)), any(!(!(!vec4<bool>(false, false, true, global0.e.x)))), _wgslsmith_add_u32(~global0.c & arg_0.c, ~u_input.a.x) << (_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.b ^ u_input.a), select(u_input.b, firstTrailingBit(u_input.b), true)) % 32u), vec2<bool>(global0.b, !(-20839i < firstLeadingBit(u_input.c))), vec3<bool>(all(global2.xyx), true, true));
    let var_1 = Struct_2(39835u, Struct_1(-9666i, arg_0.b, global1.x, arg_0.d, !arg_0.e), arg_0);
    return ~(~vec4<u32>(arg_1, 1u, ~max(global0.c, 4294967295u), ~arg_0.c));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<u32>) -> vec2<u32> {
    var var_0 = ~vec3<i32>(2147483647i & global0.a, _wgslsmith_add_i32(~_wgslsmith_div_i32(global0.a, global0.a), arg_0.x), -(~53964i));
    global2 = !select(select(vec4<bool>(all(global0.e), !global2.x, all(vec2<bool>(false, global0.d.x)), all(vec4<bool>(true, global2.x, false, global0.b))), vec4<bool>(true, true, !global0.d.x, false), vec4<bool>(any(vec4<bool>(true, true, global0.b, global0.e.x)), true, true, !global2.x)), !vec4<bool>(all(vec4<bool>(false, false, global0.d.x, false)), true & global2.x, select(global0.e.x, global2.x, global2.x), true), select(select(select(vec4<bool>(global0.e.x, true, global2.x, true), vec4<bool>(false, false, global0.b, false), vec4<bool>(false, false, false, global2.x)), !vec4<bool>(global2.x, global2.x, false, true), select(vec4<bool>(true, global2.x, global2.x, global0.e.x), vec4<bool>(global2.x, global0.b, global0.b, global0.b), vec4<bool>(false, global0.b, true, global0.d.x))), !vec4<bool>(true, global2.x, false, false), select(select(vec4<bool>(true, global0.b, global2.x, global0.e.x), vec4<bool>(false, false, global2.x, global2.x), vec4<bool>(false, global2.x, false, true)), vec4<bool>(true, global0.e.x, global0.d.x, true), global2.x)));
    var var_1 = select(!select(vec4<bool>(select(true, true, true), all(global0.e), all(vec4<bool>(global2.x, global0.d.x, false, false)), global2.x), select(select(vec4<bool>(false, global2.x, global0.d.x, false), vec4<bool>(false, global2.x, global0.d.x, true), global0.b), !vec4<bool>(true, global2.x, global0.b, global2.x), !vec4<bool>(global0.b, true, global2.x, global0.d.x)), vec4<bool>(select(false, global0.b, global2.x), true, global0.d.x | true, true)), !(!(!select(vec4<bool>(true, global2.x, global0.b, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false)))), false);
    let var_2 = var_1.x;
    var var_3 = Struct_1(select(~global0.a, min(u_input.c, abs(u_input.c)) ^ (_wgslsmith_sub_i32(u_input.c, -2147483647i) & reverseBits(u_input.c)), true), global0.b | any(select(global0.e.yy, global2.yw, select(var_1.xx, global2.zw, false))), ~(~(~abs(4294967295u))), global2.ww, !global0.e);
    return arg_1.xx;
}

fn func_2() -> Struct_3 {
    global1 = func_4(-(~vec4<i32>(2147483647i, _wgslsmith_sub_i32(1i, 12644i), _wgslsmith_add_i32(1i, 6930i), _wgslsmith_mod_i32(24199i, 80875i))), select(func_3(Struct_1(-1i, global2.x, 1u, !global2.ww, global0.e), ~u_input.b.x), _wgslsmith_add_vec4_u32(~reverseBits(vec4<u32>(1u, global0.c, 41904u, u_input.b.x)), vec4<u32>(_wgslsmith_clamp_u32(global1.x, global1.x, u_input.b.x), ~1u, global1.x, global0.c)), select(!select(vec4<bool>(true, false, global2.x, false), vec4<bool>(true, true, global0.e.x, global0.e.x), vec4<bool>(false, global2.x, global2.x, false)), vec4<bool>(true, true, true, true), all(global2.yxy))));
    global0 = Struct_1(select(reverseBits(-(global0.a | -48344i)), u_input.c, all(!select(vec4<bool>(global2.x, true, true, true), vec4<bool>(global0.e.x, global0.d.x, false, true), vec4<bool>(false, global0.b, false, global0.b)))), false, min(~_wgslsmith_mult_u32(u_input.b.x, global1.x) & (global0.c | countOneBits(0u)), global0.c), vec2<bool>(any(vec3<bool>(true, global0.d.x, 44565i > global0.a)), (!global0.e.x & global2.x) && any(select(vec4<bool>(global2.x, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)))), select(!(!select(global0.e, global0.e, global2.x)), global2.xxw, true && global0.d.x));
    global2 = vec4<bool>(false, !global0.b, global2.x, false);
    global0 = Struct_1(-19016i, false, u_input.a.x, global0.d, !(!(!select(global2.wyw, global0.e, true))));
    global0 = Struct_1(~global0.a, !select(1u > u_input.a.x, true, global0.d.x), ~1u, !global2.yx, vec3<bool>(false, false, global2.x));
    return Struct_3(vec3<u32>(4294967295u, global0.c, _wgslsmith_mult_u32(u_input.b.x, u_input.a.x)));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: vec4<bool>) -> u32 {
    global0 = Struct_1(arg_1, all(global0.e), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a.x) & ~vec2<u32>(70345u, global1.x), _wgslsmith_div_vec2_u32(select(u_input.b.xx, vec2<u32>(0u, u_input.b.x), true), _wgslsmith_mult_vec2_u32(abs(arg_0.a.xz), _wgslsmith_sub_vec2_u32(arg_0.a.yy, u_input.b.xz)))), global0.d, vec3<bool>(true, true, any(!global2.wyz)));
    var var_0 = Struct_2(~(~(~15058u)), Struct_1(3613i, any(select(global2.xy, !vec2<bool>(true, arg_2.x), vec2<bool>(arg_2.x, arg_2.x))), _wgslsmith_mod_u32(select(u_input.b.x | global0.c, 0u, any(vec3<bool>(false, true, false))), select(_wgslsmith_dot_vec2_u32(vec2<u32>(63861u, 1u), arg_0.a.zz), firstLeadingBit(arg_0.a.x), global0.d.x)), global2.wz, vec3<bool>(false, !global0.b, (global0.c == global1.x) || global2.x)), Struct_1(u_input.c, all(vec3<bool>(global0.e.x, any(vec2<bool>(global0.e.x, arg_2.x)), global0.d.x)), firstLeadingBit(global1.x), global2.zy, vec3<bool>(all(global2.wy), !(!arg_2.x), true)));
    let var_1 = _wgslsmith_sub_i32(-65560i, 28225i);
    var var_2 = global0.b;
    return ~_wgslsmith_clamp_u32(var_0.a, abs(u_input.b.x), ~global1.x);
}

fn func_1(arg_0: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1656f * _wgslsmith_f_op_f32(step(-1000f, -1169f))), _wgslsmith_f_op_f32(min(-209f, 150f))))));
    let var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(3746u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~u_input.a.xy, ~u_input.b.xx), _wgslsmith_mult_u32(u_input.a.x & global1.x, u_input.a.x))), ~vec2<u32>(func_5(func_2(), min(-13079i, global0.a), select(vec4<bool>(global2.x, global2.x, true, global0.d.x), arg_0, true)), _wgslsmith_div_u32(~u_input.a.x, u_input.a.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-633f - _wgslsmith_f_op_f32(round(var_0)))), -1011f) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(2075f, 127f))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(155f, _wgslsmith_f_op_f32(step(var_0, var_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))))));
    var var_3 = ~1u;
    global2 = !(!select(vec4<bool>(global0.a != global0.a, global0.e.x, !global2.x, arg_0.x), select(vec4<bool>(true, true, arg_0.x, true), arg_0, all(vec4<bool>(global2.x, true, false, false))), select(!arg_0, !vec4<bool>(arg_0.x, false, global2.x, global2.x), 12171i == u_input.c)));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(global2.x, func_1(vec4<bool>(~u_input.c != 1i, global0.e.x, global0.d.x, global2.x || global0.b)), global2.x);
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -956f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-286f, -1604f))));
    global2 = select(!(!vec4<bool>(-26780i >= global0.a, !var_0, true, false)), vec4<bool>(false, global2.x | (global0.a == 2147483647i), false, false), select(!(!vec4<bool>(false, false, global0.d.x, global2.x)), vec4<bool>(true, true, true, true), vec4<bool>(func_1(vec4<bool>(var_0, global0.d.x, true, true)), var_0, global2.x, var_0)));
    let var_2 = global0.e;
    let var_3 = _wgslsmith_add_vec2_i32(-(max(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 15394i), vec2<i32>(global0.a, 2147483647i)), vec2<i32>(1i, 1066i)) ^ min(vec2<i32>(u_input.c, 2147483647i) ^ vec2<i32>(36250i, global0.a), abs(vec2<i32>(0i, -1i)))), _wgslsmith_mult_vec2_i32(~vec2<i32>(-u_input.c, global0.a), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(-972i, 16446i)), ~(-vec2<i32>(608i, -12995i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(countOneBits(min(-vec3<i32>(u_input.c, var_3.x, global0.a), _wgslsmith_mod_vec3_i32(vec3<i32>(-5276i, global0.a, 52837i), vec3<i32>(47988i, u_input.c, 2147483647i)))), firstTrailingBit(vec3<i32>(u_input.c, _wgslsmith_sub_i32(-16009i, 17706i), _wgslsmith_div_i32(u_input.c, u_input.c)))));
}

