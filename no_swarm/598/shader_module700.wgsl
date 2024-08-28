struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: bool,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-8605i, -31695i, i32(-2147483648), -20812i);

var<private> global1: array<Struct_1, 11>;

var<private> global2: Struct_2;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    global2 = Struct_2(global2.a);
    let var_0 = true;
    global2 = Struct_2(Struct_1(vec2<u32>(u_input.a.x, abs(u_input.a.x)), ~u_input.d, all(vec2<bool>(!var_0, false)), vec2<f32>(global2.a.d.x, 423f), vec4<u32>(38592u, 4294967295u, _wgslsmith_clamp_u32(0u, 0u, 20004u) | abs(u_input.a.x), _wgslsmith_mod_u32(~global2.a.a.x, u_input.a.x))));
    return u_input.a.x;
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_clamp_vec2_u32(abs(global2.a.a >> (u_input.a % vec2<u32>(32u))), global2.a.e.zx, u_input.a), _wgslsmith_add_i32(global0.x, global2.a.b), global2.a.b >= ((arg_0 & global0.x) & u_input.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(2032f, global2.a.d.x)))), vec4<u32>(~(84679u >> (u_input.a.x % 32u)), 79959u, u_input.e, global2.a.a.x << (~global2.a.e.x % 32u))));
    var var_1 = _wgslsmith_f_op_f32(exp2(global2.a.d.x));
    let var_2 = vec4<u32>(_wgslsmith_div_u32(var_0.a.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~global2.a.e.wzw, vec3<u32>(6042u, 4294967295u, 0u)), _wgslsmith_mult_u32(~0u, firstTrailingBit(u_input.e)))), select(var_0.a.e.x, abs(95954u), true), ~60040u, func_3());
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.a.d)) * _wgslsmith_f_op_vec2_f32(min(global2.a.d, var_0.a.d)));
    var_0 = Struct_2(global2.a);
    return Struct_2(Struct_1(~u_input.a, _wgslsmith_sub_i32(-30152i & u_input.c, _wgslsmith_mod_i32(global0.x, -63167i)), !(1i <= ~global0.x), var_0.a.d, global2.a.e >> ((~vec4<u32>(var_0.a.a.x, 1u, 37778u, var_2.x) & var_2) % vec4<u32>(32u))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 11>();
    var var_0 = func_2(-80289i);
    global0 = vec4<i32>(_wgslsmith_clamp_i32(global2.a.b, reverseBits(global2.a.b), -2147483647i) << (_wgslsmith_div_u32(global2.a.e.x >> (4294967295u % 32u), 0u) % 32u), global2.a.b, i32(-1i) * -34919i, ~(-1i));
    var_0 = func_2((var_0.a.b << ((u_input.a.x ^ 8082u) % 32u)) >> (~global2.a.a.x % 32u));
    let var_1 = _wgslsmith_f_op_f32(-748f + _wgslsmith_f_op_f32(-arg_0.d.x));
    return arg_0;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = -18520i;
    var_0 = -2147483647i;
    global2 = func_2(1i << (1u % 32u));
    var var_1 = !select(!(!select(vec3<bool>(arg_1.c, true, arg_1.c), vec3<bool>(false, arg_1.c, true), vec3<bool>(true, false, global2.a.c))), !vec3<bool>(func_2(-8i).a.c, !global2.a.c, !arg_1.c), false);
    global0 = countOneBits(-vec4<i32>(global2.a.b, u_input.d, ~global2.a.b, func_1(Struct_1(u_input.a, -1i, true, vec2<f32>(180f, global2.a.d.x), vec4<u32>(1u, u_input.e, 35343u, 0u))).b));
    return -225f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_4(abs(vec2<i32>(~u_input.b.x, global0.x)), func_1(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(firstTrailingBit(0u & global2.a.a.x), 23402u), 11u)])));
    var var_1 = Struct_2(func_2(_wgslsmith_clamp_i32(-global0.x, firstLeadingBit(0i ^ global0.x), countOneBits(global2.a.b))).a);
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-277f, global2.a.d.x, -604f, var_1.a.d.x) * vec4<f32>(global2.a.d.x, var_1.a.d.x, global2.a.d.x, -1766f))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-229f, -320f, -378f, 201f) * vec4<f32>(1106f, -295f, global2.a.d.x, -2249f)), vec4<f32>(global2.a.d.x, global2.a.d.x, var_1.a.d.x, 280f)))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.d.x) - -319f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.d.x + global2.a.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -626f), -476f))));
    var_0 = 1292f;
    let var_3 = Struct_1(_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~4294967295u, ~var_1.a.a.x), func_2(_wgslsmith_clamp_i32(0i, var_1.a.b, global0.x)).a.e.zz), _wgslsmith_mult_vec2_u32(~reverseBits(u_input.a), abs(u_input.a))), 17735i, !var_1.a.c, var_1.a.d, ~global2.a.e);
    let var_4 = var_1.a;
    var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-607f * var_3.d.x) - -908f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a.d.x + -784f), var_3.d.x)), global2.a.d.x), _wgslsmith_f_op_f32(963f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(1075f, var_2.x)))))), !(~(~var_1.a.a.x) == u_input.a.x)));
    let var_5 = select(select(!vec2<bool>(false, !var_1.a.c), !(!select(vec2<bool>(var_4.c, false), vec2<bool>(false, var_1.a.c), vec2<bool>(true, var_4.c))), global2.a.c), !vec2<bool>(var_3.c, true), select(!vec2<bool>(func_1(global2.a).c, true & var_1.a.c), vec2<bool>(true & all(vec4<bool>(var_1.a.c, true, global2.a.c, var_1.a.c)), false), select(vec2<bool>(!var_4.c, !var_1.a.c), select(select(vec2<bool>(var_1.a.c, global2.a.c), vec2<bool>(true, global2.a.c), vec2<bool>(var_3.c, false)), vec2<bool>(var_4.c, var_3.c), vec2<bool>(false, true)), vec2<bool>(false, select(var_4.c, var_4.c, var_1.a.c)))));
    let var_6 = func_2((-firstTrailingBit(2147483647i) | min(1i, abs(-66522i))) >> (~_wgslsmith_mult_u32(firstTrailingBit(73464u), ~global2.a.a.x) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(global2.a.b);
}

