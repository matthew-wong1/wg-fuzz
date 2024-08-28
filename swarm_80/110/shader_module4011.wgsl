struct Struct_1 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_2,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(13621i, Struct_1(i32(-2147483648), 0u, vec4<u32>(82909u, 1u, 0u, 58011u), false));

var<private> global1: array<i32, 20>;

var<private> global2: vec4<f32> = vec4<f32>(1000f, 692f, 172f, 313f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>) -> vec4<u32> {
    let var_0 = ~(vec4<i32>(~global0.a, countOneBits(u_input.a.x), 1i, u_input.b) | select(-vec4<i32>(2147483647i, -50924i, global0.a, global1[_wgslsmith_index_u32(global0.b.c.x, 20u)]) & abs(u_input.a), u_input.a, vec4<bool>(global0.b.a > 0i, global0.b.d, true, any(vec3<bool>(global0.b.d, false, global0.b.d)))));
    global1 = array<i32, 20>();
    var var_1 = Struct_4(global0.b, Struct_3(~select(select(vec4<u32>(global0.b.b, 1u, global0.b.c.x, 8589u), global0.b.c, vec4<bool>(global0.b.d, global0.b.d, global0.b.d, global0.b.d)), global0.b.c, select(global0.b.d, false, false)), vec4<u32>(~(global0.b.b ^ 102248u), 11427u, ~_wgslsmith_div_u32(34903u, global0.b.c.x), 32952u)), Struct_2(~1i, Struct_1(_wgslsmith_add_i32(~u_input.a.x, -2147483647i), 3656u, select(~vec4<u32>(global0.b.c.x, 1u, global0.b.c.x, global0.b.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.b.c.x, global0.b.c.x, global0.b.c.x, global0.b.b), vec4<u32>(global0.b.b, 40464u, 27293u, 38651u)), select(vec4<bool>(false, true, global0.b.d, false), vec4<bool>(global0.b.d, global0.b.d, global0.b.d, false), global0.b.d)), false)), any(select(select(select(vec3<bool>(true, false, global0.b.d), vec3<bool>(global0.b.d, true, global0.b.d), vec3<bool>(true, global0.b.d, false)), select(vec3<bool>(false, global0.b.d, global0.b.d), vec3<bool>(true, global0.b.d, global0.b.d), vec3<bool>(global0.b.d, false, true)), select(vec3<bool>(true, true, false), vec3<bool>(false, global0.b.d, global0.b.d), vec3<bool>(global0.b.d, false, true))), select(select(vec3<bool>(global0.b.d, global0.b.d, global0.b.d), vec3<bool>(global0.b.d, global0.b.d, global0.b.d), global0.b.d), vec3<bool>(false, false, global0.b.d), !vec3<bool>(global0.b.d, global0.b.d, global0.b.d)), vec3<bool>(global0.b.d, false | global0.b.d, any(vec2<bool>(true, true))))), _wgslsmith_div_u32(_wgslsmith_div_u32(global0.b.c.x ^ (4294967295u & global0.b.c.x), _wgslsmith_clamp_u32(abs(global0.b.c.x), _wgslsmith_mult_u32(global0.b.c.x, global0.b.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(18041u, global0.b.c.x, global0.b.b, 50879u), global0.b.c))), (min(global0.b.c.x, 78532u) >> ((global0.b.b ^ 4294967295u) % 32u)) & _wgslsmith_mult_u32(global0.b.b, global0.b.c.x)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global2.x)))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1188f)) * global2.x)))));
    let var_3 = any(select(vec3<bool>(~global0.b.c.x < select(19320u, 1u, global0.b.d), global0.b.d, select(!var_1.c.b.d, true, global0.b.d)), vec3<bool>(true, any(select(vec4<bool>(false, false, global0.b.d, var_1.a.d), vec4<bool>(false, true, global0.b.d, global0.b.d), vec4<bool>(global0.b.d, global0.b.d, false, var_1.c.b.d))), false), select(select(select(vec3<bool>(global0.b.d, false, global0.b.d), vec3<bool>(var_1.a.d, false, true), vec3<bool>(global0.b.d, true, global0.b.d)), !vec3<bool>(var_1.c.b.d, var_1.c.b.d, global0.b.d), global0.b.d), select(vec3<bool>(global0.b.d, false, true), vec3<bool>(false, true, var_1.d), !global0.b.d), vec3<bool>(var_1.c.b.d, true, var_1.a.d || false))));
    return global0.b.c;
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = 4294967295u;
    global0 = Struct_2(arg_0.x, global0.b);
    let var_1 = Struct_4(global0.b, Struct_3(~func_3(vec4<f32>(1131f, global2.x, global2.x, global2.x)), ~global0.b.c), Struct_2(20206i, global0.b), -372f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global2.x)), var_0);
    return Struct_1(-_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(firstLeadingBit(u_input.a.yyz), -vec3<i32>(arg_0.x, 67230i, global1[_wgslsmith_index_u32(4294967295u, 20u)])), u_input.a.ywx), global0.b.b, ~var_1.b.a, all(vec2<bool>(true, !var_1.a.d)) || !all(select(vec2<bool>(true, global0.b.d), vec2<bool>(true, global0.b.d), vec2<bool>(false, false))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_1 {
    let var_0 = Struct_4(func_2(-vec2<i32>(-41810i, arg_2.x) >> (arg_3.b.c.zz % vec2<u32>(32u))), Struct_3(vec4<u32>(29240u, min(_wgslsmith_add_u32(arg_1.b, global0.b.c.x), ~0u), _wgslsmith_clamp_u32(abs(global0.b.b), ~arg_3.b.c.x, arg_0.x & 28707u), 89826u), global0.b.c), arg_3, select(2147483647i == global1[_wgslsmith_index_u32(25256u, 20u)], arg_3.b.d, any(select(vec3<bool>(arg_1.d, false, true), !vec3<bool>(arg_1.d, true, false), select(vec3<bool>(false, arg_1.d, arg_3.b.d), vec3<bool>(arg_1.d, global0.b.d, false), vec3<bool>(global0.b.d, true, false))))), arg_1.c.x);
    var var_1 = global0.b;
    let var_2 = ~(~_wgslsmith_sub_i32(global0.b.a & 32548i, arg_2.x) & (-20951i >> (_wgslsmith_dot_vec3_u32(countOneBits(var_1.c.zyw), var_1.c.xwy) % 32u)));
    let var_3 = Struct_4(Struct_1(global1[_wgslsmith_index_u32(0u, 20u)], firstLeadingBit(abs(29447u) << (1u % 32u)), ~_wgslsmith_mod_vec4_u32(~arg_1.c, global0.b.c), !(arg_0.x == 26281u)), Struct_3(global0.b.c, reverseBits(~func_3(vec4<f32>(global2.x, 1309f, global2.x, global2.x)))), var_0.c, !(!((arg_0.x <= 0u) & all(vec2<bool>(arg_1.d, arg_1.d)))), 4294967295u | (51783u & ~global0.b.c.x));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) + global2.x), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), 376f)));
    return Struct_1(~(-1i), func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(116f, 682f, -625f, -116f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -441f, global2.x, global2.x)))).x, ~var_1.c, select(false, any(select(vec3<bool>(false, false, arg_1.d), vec3<bool>(true, true, true), select(vec3<bool>(var_0.d, false, arg_1.d), vec3<bool>(false, var_1.d, false), vec3<bool>(true, arg_3.b.d, global0.b.d)))), select(arg_3.b.d, var_1.d, any(vec3<bool>(var_3.c.b.d, true, true)))));
}

fn func_1(arg_0: Struct_4, arg_1: vec3<bool>, arg_2: Struct_4) -> i32 {
    let var_0 = ~_wgslsmith_mult_i32(reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c.a, 2147483647i, arg_0.c.a, arg_0.a.a), _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(global1[_wgslsmith_index_u32(16010u, 20u)], global1[_wgslsmith_index_u32(arg_0.c.b.c.x, 20u)], -2147483647i, arg_2.c.b.a)))), -global0.b.a);
    let var_1 = Struct_2((i32(-1i) * -2147483647i) | arg_0.c.a, func_4(vec2<u32>(arg_2.a.b, ~(~arg_2.b.a.x)), func_2(u_input.a.yy), vec3<i32>(max(~1i, min(-1i, global1[_wgslsmith_index_u32(19946u, 20u)])), 1i, -1i), arg_0.c));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, 2491f, 944f, -296f)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-813f, global2.x, global2.x, -825f), vec4<f32>(-315f, global2.x, 1365f, 145f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-470f, global2.x, -1179f, 1000f)))))));
    var var_2 = ~countOneBits(i32(-1i) * -13557i);
    var var_3 = arg_2.b;
    return arg_0.c.a;
}

fn func_5(arg_0: i32, arg_1: vec2<i32>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = u_input.a;
    var var_1 = Struct_2(-u_input.a.x, func_2(_wgslsmith_mod_vec2_i32(abs(abs(vec2<i32>(48242i, -3532i))), u_input.a.yx)));
    var var_2 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.a, global1[_wgslsmith_index_u32(0u, 20u)], var_0.x), vec3<i32>(-2147483647i, arg_0, -2147483647i)), var_0.x), 2147483647i), func_4(min(vec2<u32>(~global0.b.c.x, var_1.b.b), ~(~vec2<u32>(global0.b.b, var_1.b.b))), Struct_1(arg_1.x, global0.b.c.x, ~var_1.b.c ^ abs(vec4<u32>(global0.b.b, 4294967295u, global0.b.c.x, 120752u)), any(arg_2)), vec3<i32>(~(6743i & global1[_wgslsmith_index_u32(var_1.b.b, 20u)]), _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, arg_1.x), _wgslsmith_dot_vec2_i32(u_input.a.ww, vec2<i32>(u_input.b, -5185i))), ~_wgslsmith_add_i32(arg_1.x, -20489i)), Struct_2(_wgslsmith_mod_i32(36321i << (1u % 32u), _wgslsmith_mod_i32(-18550i, arg_0)), Struct_1(reverseBits(-49437i), var_1.b.b, ~global0.b.c, true))));
    var var_3 = Struct_1(-85432i, ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u << (global0.b.b % 32u), var_1.b.b), ~4294967295u & ~var_2.b.b, _wgslsmith_div_u32(var_1.b.c.x, max(var_2.b.c.x, global0.b.c.x))), ~global0.b.c, true);
    let var_4 = vec4<u32>(~var_3.b, var_1.b.c.x, var_3.b, _wgslsmith_dot_vec2_u32(global0.b.c.yy, vec2<u32>(max(func_2(var_0.yw).b, 22503u), func_4(_wgslsmith_mod_vec2_u32(vec2<u32>(1943u, var_2.b.b), vec2<u32>(var_2.b.c.x, var_2.b.b)), Struct_1(var_2.a, 0u, var_3.c, false), vec3<i32>(-67043i, u_input.a.x, 3799i), Struct_2(global0.b.a, var_1.b)).c.x)));
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 20>();
    let var_0 = ~(~70316u >> (~4294967295u % 32u));
    var var_1 = func_5(select(_wgslsmith_mult_i32(-1i, global1[_wgslsmith_index_u32(var_0, 20u)]), global0.a, false), _wgslsmith_sub_vec2_i32(abs(u_input.a.yx), vec2<i32>((i32(-1i) * -13388i) & -u_input.a.x, func_1(Struct_4(global0.b, Struct_3(global0.b.c, vec4<u32>(global0.b.b, 2434u, 103814u, global0.b.b)), Struct_2(global1[_wgslsmith_index_u32(4656u, 20u)], Struct_1(-17440i, global0.b.c.x, vec4<u32>(var_0, 32235u, 25019u, 76464u), false)), true, 1u), vec3<bool>(false, true, global0.b.d), Struct_4(global0.b, Struct_3(vec4<u32>(var_0, var_0, global0.b.c.x, var_0), vec4<u32>(var_0, global0.b.b, global0.b.b, 0u)), Struct_2(global1[_wgslsmith_index_u32(global0.b.b, 20u)], Struct_1(2147483647i, 69139u, vec4<u32>(global0.b.b, 1u, var_0, var_0), global0.b.d)), global0.b.d, 24398u)) ^ _wgslsmith_mod_i32(-24648i, u_input.a.x))), !(!select(!vec2<bool>(global0.b.d, global0.b.d), !vec2<bool>(false, global0.b.d), global0.b.d)));
    let var_2 = global0.b.b;
    global0 = Struct_2(u_input.b, Struct_1(-3221i, ~func_4(abs(var_1.c.wx), func_2(u_input.a.yy), vec3<i32>(-39103i, global1[_wgslsmith_index_u32(var_0, 20u)], global1[_wgslsmith_index_u32(var_0, 20u)]), Struct_2(-18895i, global0.b)).b, global0.b.c, all(!select(vec3<bool>(global0.b.d, var_1.d, true), vec3<bool>(global0.b.d, false, var_1.d), global0.b.d))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(global2.x, -904f)))), var_0 & (var_1.b | ~0u), -(~reverseBits(vec3<i32>(u_input.a.x, 15985i, u_input.a.x))) & vec3<i32>(global0.a, -2147483647i, countOneBits(0i) >> (func_4(vec2<u32>(global0.b.b, 28657u), Struct_1(global0.a, global0.b.b, var_1.c, global0.b.d), u_input.a.xwz, Struct_2(global1[_wgslsmith_index_u32(var_1.c.x, 20u)], global0.b)).c.x % 32u)));
}

