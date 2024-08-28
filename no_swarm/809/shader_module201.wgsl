struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: vec4<f32>,
    d: vec4<bool>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(21874u, 1u, 1u, 86623u, 11319u, 12344u, 4294967295u);

var<private> global1: Struct_2;

var<private> global2: vec3<i32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = ~(select(u_input.a, _wgslsmith_mod_vec2_u32(~u_input.a, vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(88585u, 7u)])), all(vec4<bool>(global1.b, true, false, global1.b))) >> ((_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 51743u), vec2<u32>(0u, global0[_wgslsmith_index_u32(arg_0.x, 7u)])) >> (~(u_input.a & vec2<u32>(global0[_wgslsmith_index_u32(24027u, 7u)], u_input.a.x)) % vec2<u32>(32u))) % vec2<u32>(32u)));
    global2 = ~(reverseBits(-(vec3<i32>(global2.x, global2.x, -8336i) ^ vec3<i32>(1i, global2.x, -20261i))) << (~select(vec3<u32>(u_input.a.x, u_input.a.x, global1.c), ~arg_0, global1.b) % vec3<u32>(32u)));
    return u_input.a.x;
}

fn func_2(arg_0: Struct_2) -> vec2<bool> {
    let var_0 = ~func_3(~countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(40680u, 1u, arg_0.c), vec3<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global1.c, 7u)], 45799u))));
    global0 = array<u32, 7>();
    global2 = ~(~firstLeadingBit(_wgslsmith_mod_vec3_i32(~vec3<i32>(global2.x, 9474i, -2147483647i), -vec3<i32>(1i, global2.x, 2147483647i))));
    global1 = arg_0;
    let var_1 = select(vec2<bool>(true, arg_0.b), !select(vec2<bool>(true, !global1.b), !select(vec2<bool>(global1.b, arg_0.b), vec2<bool>(true, arg_0.b), vec2<bool>(arg_0.b, arg_0.b)), arg_0.b), vec2<bool>(false, global1.b));
    return !select(vec2<bool>(true | var_1.x, false), var_1, _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_div_f32(1238f, global1.a)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)));
}

fn func_4(arg_0: bool, arg_1: i32) -> Struct_2 {
    var var_0 = 36337u;
    var var_1 = true;
    global2 = -vec3<i32>(firstLeadingBit(global2.x), -countOneBits(~(-13705i)), 2147483647i);
    var var_2 = Struct_2(global1.a, any(select(vec3<bool>(arg_0, u_input.a.x >= global1.c, global1.b), vec3<bool>(true, 0u > u_input.a.x, true | arg_0), select(select(vec3<bool>(false, true, arg_0), vec3<bool>(false, true, false), vec3<bool>(false, arg_0, false)), vec3<bool>(global1.b, arg_0, true), false))), abs(global1.c));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-493f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.a, -1000f, !arg_0)))), true, var_2.c);
    return Struct_2(var_3.a, ~0u <= _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_add_u32(u_input.a.x, global1.c)), 32091u), firstLeadingBit(~(~_wgslsmith_clamp_u32(4294967295u, 1u, global1.c))));
}

fn func_1() -> Struct_2 {
    global1 = Struct_2(global1.a, global1.b, _wgslsmith_dot_vec2_u32(u_input.a & ~vec2<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global1.c, 7u)]), vec2<u32>(10478u, u_input.a.x) & reverseBits(u_input.a)) & 0u);
    var var_0 = 60064u;
    var var_1 = true;
    var var_2 = true;
    var var_3 = select(select(!(!vec3<bool>(true, global1.b, global1.b)), vec3<bool>(global1.b, all(vec3<bool>(global1.b, true, false)) && global1.b, any(select(vec4<bool>(global1.b, global1.b, global1.b, global1.b), vec4<bool>(true, true, false, false), true))), true), !select(!vec3<bool>(global1.b, false, global1.b), select(vec3<bool>(true, true, true), select(vec3<bool>(global1.b, false, false), vec3<bool>(false, true, global1.b), vec3<bool>(global1.b, global1.b, true)), true), all(select(vec3<bool>(global1.b, global1.b, global1.b), vec3<bool>(true, global1.b, global1.b), vec3<bool>(false, true, true)))), true);
    return func_4(all(select(!select(vec2<bool>(global1.b, false), vec2<bool>(true, true), true), func_2(Struct_2(global1.a, global1.b, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])), select(!var_3.yx, !var_3.yz, var_3.zz))), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = var_0.b;
    var_1 = func_2(Struct_2(global1.a, func_1().b, func_4(global1.b, -_wgslsmith_mod_i32(2147483647i, global2.x)).c)).x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a, -1603f) + vec2<f32>(global1.a, -1499f)))) - vec2<f32>(-789f, 908f)), false, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a + global1.a) + -841f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(global1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1379f * var_0.a) - -156f), 1117f))), vec4<bool>(true, !(!global1.b), true, var_0.b), -1i);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(round(var_2.a.x))), _wgslsmith_f_op_f32(-162f - _wgslsmith_f_op_f32(-var_0.a)))), var_2.b, vec4<f32>(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a * -524f) + 368f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a - -1553f)), global1.a), select(!vec4<bool>(1i <= var_2.e, true, var_0.b, false), !select(!var_2.d, select(var_2.d, vec4<bool>(false, false, global1.b, true), true), !var_2.d), select(var_2.d, !var_2.d, var_2.d)), -global2.x);
    var var_4 = global2.yy;
    let x = u_input.a;
    s_output = StorageBuffer(func_1().a, _wgslsmith_add_vec2_u32(select(firstLeadingBit(vec2<u32>(global1.c, 4078u)), _wgslsmith_clamp_vec2_u32(u_input.a, vec2<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 4294967295u), vec2<u32>(var_0.c, 20609u)), !var_2.d.zz), ~abs(vec2<u32>(67649u, u_input.a.x))) >> (u_input.a % vec2<u32>(32u)), -1357f);
}

