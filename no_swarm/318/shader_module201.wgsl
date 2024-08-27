struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1 = Struct_1(-1379f, vec4<i32>(-41903i, 11701i, -3763i, 0i), 0i);

var<private> global2: array<vec3<u32>, 4> = array<vec3<u32>, 4>(vec3<u32>(77592u, 1u, 69111u), vec3<u32>(1u, 1u, 17920u), vec3<u32>(1u, 43047u, 31319u), vec3<u32>(1u, 16208u, 4294967295u));

var<private> global3: vec3<u32> = vec3<u32>(4294967295u, 0u, 1u);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> u32 {
    let var_0 = arg_0;
    var var_1 = max(var_0.d, min(vec3<u32>(62063u, ~(~4294967295u), 1u), u_input.b));
    var var_2 = var_0.c;
    var var_3 = select(select(!select(vec4<bool>(var_0.e.x, global0.x, true, false), !vec4<bool>(true, arg_0.e.x, arg_0.e.x, global0.x), !vec4<bool>(true, true, true, var_0.e.x)), select(select(!vec4<bool>(var_0.e.x, true, false, false), !vec4<bool>(var_0.e.x, true, var_0.e.x, global0.x), arg_0.e.x), !select(vec4<bool>(true, arg_0.e.x, global0.x, arg_0.e.x), vec4<bool>(true, var_0.e.x, global0.x, true), vec4<bool>(false, var_0.e.x, false, global0.x)), !select(vec4<bool>(false, false, var_0.e.x, global0.x), vec4<bool>(false, arg_0.e.x, false, true), true)), select(select(vec4<bool>(var_0.e.x, arg_0.e.x, false, global0.x), vec4<bool>(true, false, false, global0.x), !vec4<bool>(true, global0.x, global0.x, true)), vec4<bool>(any(vec2<bool>(true, global0.x)), false | arg_0.e.x, var_0.e.x, false), select(select(vec4<bool>(false, false, arg_0.e.x, var_0.e.x), vec4<bool>(var_0.e.x, arg_0.e.x, var_0.e.x, global0.x), arg_0.e.x), select(vec4<bool>(global0.x, true, arg_0.e.x, true), vec4<bool>(global0.x, arg_0.e.x, false, true), var_0.e.x), any(global0.wxy)))), select(select(!vec4<bool>(false, true, true, global0.x), !select(vec4<bool>(arg_0.e.x, true, true, false), vec4<bool>(false, arg_0.e.x, global0.x, false), true), select(select(vec4<bool>(arg_0.e.x, arg_0.e.x, true, false), vec4<bool>(arg_0.e.x, true, false, arg_0.e.x), false), vec4<bool>(false, false, arg_0.e.x, false), any(vec2<bool>(true, var_0.e.x)))), select(vec4<bool>(false, false, true, all(vec2<bool>(false, arg_0.e.x))), vec4<bool>(false | global0.x, true, false, any(global0.wz)), vec4<bool>(false, false, false, global0.x)), true), select(vec4<bool>(global0.x, true, any(!vec4<bool>(true, global0.x, false, arg_0.e.x)), false), !vec4<bool>(true, global0.x, all(arg_0.e), var_0.e.x), vec4<bool>(any(select(vec4<bool>(false, true, global0.x, false), vec4<bool>(global0.x, global0.x, false, true), vec4<bool>(true, arg_0.e.x, true, false))), any(vec3<bool>(true, false, true)), min(4294967295u, 24482u) == u_input.b.x, false)));
    var var_4 = arg_0;
    return ~86464u;
}

fn func_2() -> bool {
    global0 = !(!vec4<bool>(!global0.x & (2147483647i == global1.c), false, any(!vec4<bool>(global0.x, true, true, global0.x)), true));
    var var_0 = Struct_2(_wgslsmith_div_vec4_i32(u_input.a, ~u_input.a >> (vec4<u32>(74691u, firstLeadingBit(global3.x), func_3(Struct_2(vec4<i32>(-2147483647i, global1.c, -1i, u_input.a.x), Struct_1(-1764f, vec4<i32>(-1140i, 1i, 2147483647i, -18495i), u_input.a.x), Struct_1(-583f, global1.b, 30582i), vec3<u32>(35843u, 84582u, 0u), vec2<bool>(global0.x, global0.x)), u_input.a.zxw), global3.x) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(global1.a + global1.a), ~u_input.a, abs(select(min(u_input.c, global1.b.x), _wgslsmith_sub_i32(1i, 0i), select(global0.x, global0.x, true)))), Struct_1(576f, vec4<i32>(482i, global1.c, i32(-1i) * -2147483647i, global1.c), -(~(-30992i))), vec3<u32>(~(~14275u), ~abs(global3.x & global3.x), select(7413u, global3.x, !global0.x)), vec2<bool>(any(select(global0.xxw, !vec3<bool>(true, global0.x, false), global0.wwx)), ~24510u >= _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(26715u, u_input.b.x, global3.x, 54021u), vec4<u32>(10316u, 1u, u_input.b.x, 36066u), vec4<u32>(global3.x, u_input.b.x, u_input.b.x, u_input.b.x)), abs(vec4<u32>(1u, 60339u, 4562u, 1u)))));
    global3 = _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(u_input.b, ~vec3<u32>(var_0.d.x, u_input.b.x, u_input.b.x)), _wgslsmith_add_vec3_u32(select(global2[_wgslsmith_index_u32(1u, 4u)], vec3<u32>(1u, u_input.b.x, var_0.d.x), select(global0.ywz, global0.zyx, global0.x)), firstTrailingBit(~var_0.d))), _wgslsmith_div_vec3_u32(global2[_wgslsmith_index_u32(109705u, 4u)], vec3<u32>(var_0.d.x & 27927u, _wgslsmith_add_u32(24100u, global3.x), var_0.d.x ^ global3.x)) >> (u_input.b % vec3<u32>(32u)));
    let var_1 = _wgslsmith_clamp_i32(-1i, abs(0i), -2147483647i);
    global2 = array<vec3<u32>, 4>();
    return true;
}

fn func_1() -> vec3<f32> {
    var var_0 = select(!(!(!vec4<bool>(global0.x, false, false, true))), vec4<bool>(true, global0.x, any(global0.xw), !(!any(global0.zxy))), func_2());
    let var_1 = -414f;
    var var_2 = 1f;
    var_0 = select(vec4<bool>(select(global3.x > global3.x, true, select(global0.x, true, true)), global0.x | (47913i != ~u_input.c), u_input.c < u_input.a.x, max(-4524i, _wgslsmith_sub_i32(-67882i, u_input.c)) < u_input.c), vec4<bool>(global0.x, global0.x, global3.x < u_input.b.x, true), var_0.x);
    global1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1 - 299f))) - _wgslsmith_f_op_f32(sign(global1.a))))), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, global1.c), u_input.a.x, u_input.c) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, 47751u, global3.x, 37452u) >> (vec4<u32>(u_input.b.x, 22802u, 40105u, 4294967295u) % vec4<u32>(32u)), vec4<u32>(79614u, 48286u, 14768u, u_input.b.x) ^ vec4<u32>(4294967295u, u_input.b.x, 1u, global3.x)) % vec4<u32>(32u)), -_wgslsmith_mod_vec4_i32(reverseBits(u_input.a), global1.b)), -global1.c);
    return vec3<f32>(-864f, 892f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1 - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(ceil(387f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, -1079f)), _wgslsmith_f_op_vec3_f32(func_1()), vec3<bool>(global0.x, global0.x, false)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1481f, global1.a, -295f) - vec3<f32>(1798f, global1.a, -720f)), vec3<f32>(139f, -1000f, global1.a)), vec3<f32>(_wgslsmith_f_op_f32(-global1.a), 1493f, _wgslsmith_f_op_f32(round(global1.a))))), select(select(select(global0.xzz, vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, false, false)), !global0.ywz, global0.x & true), vec3<bool>(true, false, false), select(true, all(vec4<bool>(global0.x, true, global0.x, global0.x)), false)))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, _wgslsmith_f_op_f32(ceil(148f)), global1.a)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_f_op_f32(max(-2690f, 503f)), _wgslsmith_f_op_f32(sign(637f)))))) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_1()).x)), _wgslsmith_f_op_f32(-331f - -402f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 2614f)))));
    global0 = vec4<bool>(false, all(global0.xx), global0.x, false);
    let var_1 = -u_input.c >> (~(~2455u) % 32u);
    var var_2 = Struct_2(global1.b, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -820f), u_input.a, abs(~1i)), Struct_1(_wgslsmith_f_op_f32(round(-528f)), vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(-1i, _wgslsmith_add_i32(global1.c, global1.c)), 26854i, -2147483647i), _wgslsmith_mult_i32(-2147483647i, u_input.c)), u_input.b & _wgslsmith_div_vec3_u32(u_input.b, _wgslsmith_mult_vec3_u32(global2[_wgslsmith_index_u32(~52971u, 4u)], global2[_wgslsmith_index_u32(~80420u, 4u)])), vec2<bool>(func_2(), true));
    global3 = abs(vec3<u32>(4294967295u, var_2.d.x, ~(~global3.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.x, -260f))), var_0.x, global1.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), -471f, -147f))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.a)) + global1.a), _wgslsmith_f_op_vec3_f32(func_1()).x, 632f));
    global2 = array<vec3<u32>, 4>();
    global2 = array<vec3<u32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1007f))))), vec3<i32>(-23835i, _wgslsmith_dot_vec3_i32(global1.b.xyw, -u_input.a.wzx | vec3<i32>(-951i, -1i, global1.b.x)), var_2.a.x));
}

