struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: bool,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 18> = array<vec4<i32>, 18>(vec4<i32>(36338i, 2147483647i, i32(-2147483648), -66200i), vec4<i32>(13185i, 0i, -1i, i32(-2147483648)), vec4<i32>(19458i, 0i, -5135i, 3023i), vec4<i32>(1i, 0i, -57407i, -9562i), vec4<i32>(0i, -1i, 2147483647i, 26148i), vec4<i32>(-41355i, -72159i, 1i, 15254i), vec4<i32>(23528i, -54104i, -1i, 1i), vec4<i32>(68820i, -1i, 0i, 42028i), vec4<i32>(37801i, i32(-2147483648), 0i, i32(-2147483648)), vec4<i32>(161i, -5980i, -1i, -1i), vec4<i32>(2147483647i, -39188i, 39411i, i32(-2147483648)), vec4<i32>(-50519i, -19080i, -1i, i32(-2147483648)), vec4<i32>(-7717i, 31222i, 0i, i32(-2147483648)), vec4<i32>(-71792i, 2020i, -8149i, 40072i), vec4<i32>(-18731i, -6985i, 86161i, -961i), vec4<i32>(1i, 0i, -16489i, -28250i), vec4<i32>(12130i, 47956i, -14206i, -62060i), vec4<i32>(0i, i32(-2147483648), 19201i, -5621i));

var<private> global1: array<Struct_2, 22>;

var<private> global2: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool) -> i32 {
    let var_0 = 1f;
    global0 = array<vec4<i32>, 18>();
    return -1i;
}

fn func_4(arg_0: Struct_1) -> u32 {
    let var_0 = Struct_3(arg_0, -1348f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1748f + -336f) * _wgslsmith_f_op_f32(f32(-1f) * -1837f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(948f))), arg_0.a)), 1253f)));
    global0 = array<vec4<i32>, 18>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * var_0.b) * 1622f)), 145f));
    var var_2 = u_input.c;
    var var_3 = Struct_2(arg_0, select(vec3<bool>(true, all(select(vec2<bool>(false, var_0.a.a), vec2<bool>(var_0.a.a, var_0.a.a), false)), arg_0.a), select(select(vec3<bool>(arg_0.a, true, false), select(vec3<bool>(var_0.a.b, var_0.a.b, arg_0.b), vec3<bool>(true, true, arg_0.b), arg_0.a), var_0.a.a), vec3<bool>(2147483647i == arg_0.c, arg_0.a, arg_0.a), select(!var_0.a.b, !var_0.a.b, !arg_0.b)), all(select(vec4<bool>(arg_0.b, true, arg_0.b, true), select(vec4<bool>(false, arg_0.b, var_0.a.b, arg_0.b), vec4<bool>(arg_0.b, arg_0.a, arg_0.a, true), var_0.a.b), true))), !(true | (_wgslsmith_f_op_f32(sign(690f)) >= _wgslsmith_f_op_f32(-var_1.x))));
    return 0u;
}

fn func_2() -> bool {
    let var_0 = global0[_wgslsmith_index_u32(func_4(Struct_1(any(vec2<bool>(true, false)) || (abs(1i) > (u_input.b.x | u_input.b.x)), true | (_wgslsmith_f_op_f32(f32(-1f) * -828f) >= _wgslsmith_f_op_f32(trunc(1000f))), func_3(global1[_wgslsmith_index_u32(~abs(25626u), 22u)], Struct_4(_wgslsmith_f_op_f32(1810f + 288f), true, true, -u_input.b.x, Struct_2(Struct_1(false, false, u_input.b.x), vec3<bool>(true, true, false), true)), any(vec4<bool>(false, true, false, true))))), 18u)];
    global0 = array<vec4<i32>, 18>();
    var var_1 = -539f;
    var var_2 = u_input.c;
    global1 = array<Struct_2, 22>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-389f * _wgslsmith_f_op_f32(min(-713f, 1281f))))) > _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1966f)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<f32>) -> vec2<u32> {
    var var_0 = ~abs(~vec4<u32>(67682u, _wgslsmith_div_u32(6995u, u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, 4294967295u), vec3<u32>(u_input.c, u_input.a, u_input.a)), 4294967295u));
    var var_1 = vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(arg_1.x * 607f)), _wgslsmith_f_op_f32(-102f + _wgslsmith_f_op_f32(-489f * arg_1.x))) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-296f + 662f)))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), !select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), false))), false == func_2());
    let var_2 = Struct_3(Struct_1(false, var_1.x, i32(-1i) * -1270i), 489f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(118f, 1000f, any(vec3<bool>(var_1.x, var_1.x, var_1.x)))) + _wgslsmith_f_op_f32(trunc(arg_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(arg_1.x)), arg_1.x, u_input.a != u_input.a))))));
    var var_3 = any(vec2<bool>(all(vec3<bool>(true, false | var_2.a.a, var_2.a.b)), true));
    var_3 = var_2.a.b;
    return var_0.zw;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 212f;
    global1 = array<Struct_2, 22>();
    var var_1 = ~(~func_1(reverseBits(global0[_wgslsmith_index_u32(0u, 18u)] | vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(470f, -310f, -783f, -2153f) + vec4<f32>(-1720f, -1000f, 877f, -344f)))));
    global0 = array<vec4<i32>, 18>();
    var var_2 = Struct_3(Struct_1(!(!all(vec2<bool>(false, false))), false, _wgslsmith_div_i32(-u_input.b.x, u_input.b.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(509f, -669f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1376f, 874f))) * _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(2806f, 292f), -1695f, true)))), _wgslsmith_f_op_f32(1f * 434f));
    var var_3 = var_2.a;
    var var_4 = Struct_1(!(!(!(false || var_2.a.b))), all(vec4<bool>(1i != u_input.b.x, any(select(vec2<bool>(true, true), vec2<bool>(var_3.b, var_2.a.b), vec2<bool>(var_2.a.a, true))), select(false, var_2.a.a, true) != (u_input.b.x < var_2.a.c), any(vec2<bool>(true, var_3.a)))), 67216i);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_1(var_4.a, !select(true, var_4.a, true), var_3.c)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.c, var_1.x), 19247u), _wgslsmith_clamp_vec2_u32(select(func_1(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -46778i, -2147483647i, var_2.a.c), vec4<i32>(1i, -2147483647i, 25424i, -21864i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, var_2.c, 586f, -243f))), countOneBits(vec2<u32>(var_1.x, 33349u)), select(!vec2<bool>(false, var_2.a.b), vec2<bool>(true, true), select(vec2<bool>(false, var_4.a), vec2<bool>(var_2.a.b, true), var_4.b))), select(~(~vec2<u32>(u_input.c, var_1.x)), select(abs(vec2<u32>(u_input.c, var_1.x)), firstLeadingBit(vec2<u32>(var_1.x, u_input.a)), select(vec2<bool>(var_3.b, var_2.a.b), vec2<bool>(true, false), true)), func_2() && !var_3.a), ~vec2<u32>(39881u, 37202u) | (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.x, u_input.c), vec2<u32>(85640u, u_input.a), vec2<u32>(18774u, 66745u)) >> (~vec2<u32>(0u, 0u) % vec2<u32>(32u)))), -17310i << (u_input.a % 32u));
}

