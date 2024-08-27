struct Struct_1 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: i32,
    d: vec2<f32>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(i32(-2147483648), Struct_2(Struct_1(-1689f, vec2<i32>(7629i, -54737i))), 2147483647i, vec2<f32>(-1818f, -1138f));

var<private> global1: vec3<bool>;

var<private> global2: array<i32, 27> = array<i32, 27>(75249i, 26987i, -44519i, -31803i, 8446i, 0i, -43158i, -1i, 31883i, 28898i, i32(-2147483648), i32(-2147483648), 2147483647i, 24880i, 0i, -14090i, 2147483647i, 0i, 0i, 0i, 16996i, -15873i, 25145i, 27272i, -40044i, 2147483647i, 2147483647i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_4) -> vec2<f32> {
    var var_0 = Struct_2(Struct_1(arg_0.b.a.a, ~countOneBits(-arg_0.b.a.b)));
    global1 = vec3<bool>(global1.x, true, var_0.a.a >= global0.d.x);
    return vec2<f32>(_wgslsmith_f_op_f32(-global0.d.x), -667f);
}

fn func_2(arg_0: vec4<bool>) -> Struct_3 {
    let var_0 = !arg_0.xx;
    return Struct_3(Struct_2(global0.b.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(Struct_4(671i | global2[_wgslsmith_index_u32(0u, 27u)], Struct_2(global0.b.a), global2[_wgslsmith_index_u32(1u, 27u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(-848f, 385f) - global0.d))))));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_3) -> vec3<bool> {
    var var_0 = Struct_5(arg_3, Struct_1(_wgslsmith_div_f32(arg_3.b.x, _wgslsmith_f_op_f32(-arg_1.a)), arg_1.b), Struct_1(global0.d.x, arg_3.a.a.b), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max(~min(vec2<u32>(u_input.b, 15724u), vec2<u32>(u_input.b, 100361u)), vec2<u32>(_wgslsmith_clamp_u32(u_input.b, u_input.b, 0u), 4294967295u)), reverseBits(select(~vec2<u32>(4294967295u, u_input.b), ~vec2<u32>(u_input.b, u_input.b), arg_2.yx))), 27u)], vec3<bool>(arg_2.x, all(!(!vec4<bool>(global1.x, arg_2.x, arg_2.x, arg_2.x))), true));
    global2 = array<i32, 27>();
    var_0 = Struct_5(Struct_3(Struct_2(func_2(select(vec4<bool>(true, var_0.e.x, arg_2.x, false), vec4<bool>(false, var_0.e.x, false, global1.x), vec4<bool>(global1.x, true, true, true))).a.a), _wgslsmith_f_op_vec2_f32(arg_3.b * vec2<f32>(arg_1.a, _wgslsmith_f_op_vec2_f32(func_3(Struct_4(1i, Struct_2(Struct_1(var_0.b.a, vec2<i32>(var_0.a.a.a.b.x, arg_3.a.a.b.x))), 3898i, arg_3.b))).x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a))), select(arg_1.b, select(_wgslsmith_sub_vec2_i32(var_0.b.b, var_0.b.b), var_0.c.b, false), select(!var_0.e.xz, arg_2.yz, vec2<bool>(false, true)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1166f, _wgslsmith_f_op_f32(sign(var_0.c.a)))), vec2<i32>(arg_1.b.x, 0i)), ~arg_1.b.x ^ (_wgslsmith_mult_i32(countOneBits(2147483647i), global2[_wgslsmith_index_u32(4294967295u, 27u)]) >> (u_input.b % 32u)), arg_2);
    let var_1 = func_2(select(select(vec4<bool>(false, false, u_input.b <= 0u, arg_0), vec4<bool>(any(var_0.e), arg_0, false, arg_2.x), any(vec4<bool>(var_0.e.x, var_0.e.x, arg_2.x, true))), !vec4<bool>(arg_0, true, any(vec3<bool>(arg_0, arg_2.x, var_0.e.x)), true), vec4<bool>(~global2[_wgslsmith_index_u32(u_input.b, 27u)] <= ~global0.c, false, true, true))).a;
    let var_2 = 21406u;
    return select(!arg_2, !var_0.e, select(!select(!var_0.e, select(vec3<bool>(var_0.e.x, arg_0, true), vec3<bool>(true, var_0.e.x, global1.x), vec3<bool>(arg_2.x, global1.x, global1.x)), vec3<bool>(false, arg_0, var_0.e.x)), vec3<bool>(true, all(vec2<bool>(global1.x, true)), select(arg_2.x || var_0.e.x, !global1.x, true)), all(var_0.e)));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global2 = array<i32, 27>();
    global1 = !(!select(vec3<bool>(all(global1.zx), global1.x, global1.x), func_4(select(global1.x, true, global1.x), global0.b.a, !vec3<bool>(false, global1.x, global1.x), func_2(vec4<bool>(true, true, false, false))), select(select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), vec3<bool>(true, global1.x, global1.x), select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, global1.x, global1.x)))));
    global0 = Struct_4(1i & ~u_input.a.x, func_2(!select(select(vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(true, false, false, global1.x)), !vec4<bool>(true, global1.x, global1.x, false), select(global1.x, global1.x, false))).a, -4686i << (_wgslsmith_mult_u32(55782u, u_input.b & ~10148u) % 32u), global0.d);
    var var_0 = u_input.b;
    var var_1 = Struct_3(global0.b, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(ceil(global0.b.a.a)), _wgslsmith_f_op_f32(925f + -115f)))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.a.a)))), vec2<i32>(0i, ~abs(_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(17531i, arg_0.x, arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(!(!(!(global0.b.a.a == global0.d.x))), global1.x, true);
    var var_0 = abs(vec2<u32>(select(u_input.b, abs(u_input.b), global1.x), 88317u) | vec2<u32>(firstTrailingBit(0u), u_input.b));
    var var_1 = !vec3<bool>(all(vec2<bool>(global1.x, global1.x)), global1.x, all(vec3<bool>(global0.b.a.a >= global0.b.a.a, false, !global1.x)));
    var var_2 = !(!(!vec2<bool>(var_1.x, -1891f != global0.b.a.a)));
    let var_3 = Struct_5(Struct_3(global0.b, _wgslsmith_f_op_vec2_f32(global0.d - vec2<f32>(_wgslsmith_f_op_f32(-1754f * global0.b.a.a), global0.b.a.a))), global0.b.a, Struct_1(_wgslsmith_f_op_f32(global0.d.x - _wgslsmith_f_op_f32(f32(-1f) * -711f)), select(_wgslsmith_mult_vec2_i32(global0.b.a.b, _wgslsmith_mult_vec2_i32(u_input.a, u_input.a)), vec2<i32>(~global2[_wgslsmith_index_u32(var_0.x, 27u)], countOneBits(global2[_wgslsmith_index_u32(var_0.x, 27u)])), 28218i < global0.a)), _wgslsmith_mod_i32(19765i, global0.b.a.b.x), !(!vec3<bool>(var_1.x, var_2.x | true, global0.a > 0i)));
    global2 = array<i32, 27>();
    let var_4 = Struct_3(Struct_2(func_1(-(vec3<i32>(var_3.c.b.x, u_input.a.x, u_input.a.x) & vec3<i32>(1i, var_3.d, 1i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -233f), _wgslsmith_f_op_f32(var_3.c.a - -319f)))));
    let var_5 = func_4(!all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(global1.x, var_3.e.x, true, true), vec4<bool>(var_3.e.x, false, false, false)), select(vec4<bool>(var_1.x, false, false, var_3.e.x), vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(true, var_1.x, true, true)), !vec4<bool>(true, false, false, var_1.x))), Struct_1(func_2(!(!vec4<bool>(true, global1.x, var_1.x, true))).a.a.a, _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(var_3.b.b.x, global0.a), ~u_input.a)), !select(var_3.e, vec3<bool>(!var_2.x, var_2.x, false), var_3.e), func_2(!vec4<bool>(var_0.x <= 56058u, true, true, global1.x))).yy;
    let var_6 = ~(-abs(max(-74811i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(u_input.a.x, var_3.c.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(~(-4892i), -15445i)), _wgslsmith_f_op_f32(var_3.c.a * _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
}

