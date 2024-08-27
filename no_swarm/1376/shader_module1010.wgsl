struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = arg_2;
    var var_0 = !all(select(!select(vec4<bool>(true, true, true, arg_1.x), vec4<bool>(arg_2.c, true, false, true), false), select(vec4<bool>(true, arg_2.c, global0.c, true), select(vec4<bool>(true, true, arg_3.c, true), vec4<bool>(global0.c, global0.c, arg_0, arg_1.x), vec4<bool>(global0.c, arg_1.x, global0.c, global2.x)), vec4<bool>(arg_0, false, arg_2.c, arg_1.x)), select(select(vec4<bool>(arg_1.x, true, arg_2.c, arg_0), vec4<bool>(true, false, arg_3.c, false), vec4<bool>(global0.c, false, global2.x, arg_2.c)), !vec4<bool>(true, global0.c, arg_1.x, false), arg_1.x)));
    global2 = select(arg_1, vec2<bool>(true, true), select(arg_1, !arg_1, true));
    let var_1 = _wgslsmith_mult_vec2_u32(~countOneBits(~u_input.b), ~reverseBits(u_input.b));
    let var_2 = ~(-11866i);
    return abs(var_1.x);
}

fn func_4(arg_0: vec4<bool>, arg_1: bool, arg_2: vec4<bool>, arg_3: f32) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.d.x + arg_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - arg_3))), u_input.d.x, true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.d) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-409f, -130f, 1775f)) + global0.d))));
    let var_1 = max(~u_input.b.x, ~u_input.b.x);
    var var_2 = ~_wgslsmith_mod_i32(-u_input.c, abs(abs(max(-2147483647i, u_input.d.x))));
    let var_3 = 6616u;
    global0 = Struct_1(var_0.d.x, firstLeadingBit(59176i), any(!select(!arg_0, vec4<bool>(global2.x, false, false, false), !arg_0)), vec3<f32>(_wgslsmith_f_op_f32(-911f + global1.a), global0.d.x, -506f));
    return !vec4<bool>(arg_1, all(!(!vec3<bool>(false, global0.c, true))), any(select(arg_2, arg_0, global1.c)) | arg_2.x, false);
}

fn func_2(arg_0: vec4<u32>) -> vec2<f32> {
    let var_0 = ~arg_0.x;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-322f + -896f), 2147483647i, true, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1009f), _wgslsmith_f_op_f32(-global1.d.x), -638f));
    let var_2 = Struct_1(-484f, ~1i, true, _wgslsmith_f_op_vec3_f32(sign(global0.d)));
    var var_3 = vec4<u32>(~u_input.a, max(~8621u, ~(~(u_input.b.x << (u_input.a % 32u)))), countOneBits(0u), var_0);
    global1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.a)) * global1.d.x), global1.b >> (var_3.x % 32u), all(func_4(!select(vec4<bool>(var_2.c, true, global1.c, true), vec4<bool>(global2.x, var_1.c, global1.c, true), var_2.c), func_3(true, vec2<bool>(true, var_2.c), var_2, var_1) > 1u, select(select(vec4<bool>(false, var_2.c, true, global0.c), vec4<bool>(true, global0.c, true, true), global1.c), select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, global2.x, false), var_2.c), select(vec4<bool>(var_1.c, false, false, true), vec4<bool>(global1.c, true, false, var_1.c), false)), global0.a)), vec3<f32>(_wgslsmith_f_op_f32(-699f * global0.a), var_1.d.x, _wgslsmith_f_op_f32(1898f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -135f)))));
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(626f, -205f)))) - -378f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.d.x * _wgslsmith_f_op_f32(global1.a * _wgslsmith_f_op_f32(exp2(var_1.a)))))));
}

fn func_5(arg_0: vec2<f32>) -> Struct_1 {
    global2 = vec2<bool>(global0.c, true);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(282f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(570f, global1.d.x))))), _wgslsmith_dot_vec4_i32(-(~min(vec4<i32>(-45475i, global1.b, u_input.d.x, global1.b), vec4<i32>(global0.b, global0.b, u_input.c, u_input.e))), select(~(~vec4<i32>(global0.b, u_input.e, u_input.e, -1i)), vec4<i32>(-11521i, 31947i, 32571i, u_input.d.x), true)), !global1.c, global0.d);
    var var_1 = _wgslsmith_f_op_f32(-var_0.a);
    var var_2 = _wgslsmith_f_op_f32(-202f * 556f);
    let var_3 = select(select(vec3<bool>(true, true, (1i < global1.b) == all(vec3<bool>(global0.c, false, false))), func_4(select(vec4<bool>(true, true, global1.c, global1.c), vec4<bool>(true, false, global2.x, global1.c), select(vec4<bool>(global2.x, true, true, var_0.c), vec4<bool>(false, true, true, false), true)), true, vec4<bool>(false, all(vec2<bool>(false, true)), true, var_0.a == 924f), _wgslsmith_f_op_f32(sign(var_0.d.x))).zwy, func_4(!select(vec4<bool>(true, global2.x, false, true), vec4<bool>(true, var_0.c, false, false), global2.x), true, select(vec4<bool>(false, global2.x, false, global0.c), vec4<bool>(true, var_0.c, global2.x, false), select(vec4<bool>(false, true, false, false), vec4<bool>(global0.c, var_0.c, false, global0.c), vec4<bool>(true, true, false, false))), 1566f).ywy), vec3<bool>(any(!(!vec4<bool>(true, var_0.c, var_0.c, true))), false, false), var_0.c);
    return Struct_1(_wgslsmith_f_op_vec2_f32(func_2(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(14692u, 4294967295u, u_input.a, u_input.b.x), abs(vec4<u32>(0u, 4294967295u, u_input.b.x, u_input.b.x))), ~vec4<u32>(u_input.b.x, 45783u, 25053u, u_input.b.x), min(vec4<u32>(20031u, 70075u, 27269u, 2368u), abs(vec4<u32>(u_input.b.x, 0u, 93558u, u_input.a)))))).x, -_wgslsmith_add_i32(_wgslsmith_mod_i32(global0.b | global0.b, ~2147483647i), -2147483647i), global2.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(422f, -1474f, var_0.d.x) + global0.d))))));
}

fn func_1() -> Struct_1 {
    global1 = func_5(_wgslsmith_f_op_vec2_f32(func_2(~(~(vec4<u32>(u_input.b.x, u_input.a, 4294967295u, 1u) << (vec4<u32>(12765u, u_input.a, 0u, u_input.a) % vec4<u32>(32u)))))));
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -209f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.d.x))))));
    var var_1 = ~u_input.d.x;
    var_0 = func_5(_wgslsmith_f_op_vec2_f32(-global0.d.yz));
    var_1 = global0.b;
    return Struct_1(var_0.a, global1.b, !global2.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.d, vec3<f32>(global0.a, global0.a, global1.d.x), vec3<bool>(true, false, global0.c))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.d) + global0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = vec4<i32>(max(-444i, reverseBits(~_wgslsmith_sub_i32(-2147483647i, 0i))), -2147483647i, global1.b, _wgslsmith_clamp_i32(0i, var_0.b, 158i));
    let var_2 = ~(~abs(~u_input.b));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(round(var_0.d.x)), u_input.e, any(select(!vec3<bool>(false, global0.c, false), !vec3<bool>(global2.x, global1.c, false), true)) && true, global0.d);
    var var_4 = select(!(!func_4(!vec4<bool>(global1.c, global1.c, global0.c, true), true, !vec4<bool>(false, global2.x, var_0.c, global2.x), global1.a).wz), vec2<bool>(true, true), select(func_4(!func_4(vec4<bool>(global0.c, var_3.c, var_3.c, true), true, vec4<bool>(false, global1.c, true, true), 1755f), all(vec4<bool>(global2.x, true, false, global2.x)), vec4<bool>(global0.c || true, false, global2.x, 211f < global1.a), global0.a).yw, vec2<bool>(global0.c, true), !(!(!vec2<bool>(false, var_0.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(global0.d, i32(-1i) * -63928i, vec2<i32>(-min(var_3.b, global0.b) & ~var_0.b, global0.b), var_0.d.x, var_2.x);
}

