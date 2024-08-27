struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 20>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<bool>) -> vec3<f32> {
    var var_0 = 35418i;
    let var_1 = arg_0.b.x;
    var var_2 = arg_1;
    var_2 = Struct_1(arg_2.a, ~10212i, vec2<bool>(false, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -373f)))))));
    var var_3 = select(var_2.c, arg_1.c, true);
    return _wgslsmith_f_op_vec3_f32(-arg_0.b);
}

fn func_2(arg_0: bool, arg_1: vec2<i32>) -> Struct_1 {
    let var_0 = -47950i;
    let var_1 = Struct_2(all(select(!vec3<bool>(arg_0, false, true), vec3<bool>(false, false, global0.a), !vec3<bool>(false, arg_0, true))) & global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, 1u), 20u)], Struct_1(true, -24127i | arg_1.x, vec2<bool>(true, false), _wgslsmith_div_f32(global0.b.x, global0.b.x)), global1[_wgslsmith_index_u32(14011u, 20u)], !(!vec3<bool>(true, global0.a, false))))));
    let var_2 = Struct_2(var_1.a, _wgslsmith_div_vec3_f32(var_1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.b) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(false, vec3<f32>(global0.b.x, -1259f, var_1.b.x)), Struct_1(true, -1i, vec2<bool>(true, arg_0), -1606f), Struct_2(var_1.a, vec3<f32>(var_1.b.x, global0.b.x, 571f)), vec3<bool>(true, var_1.a, global0.a))) * _wgslsmith_f_op_vec3_f32(-var_1.b)))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -227f);
    let var_4 = Struct_1((arg_1.x | abs(2147483647i)) == 1i, var_0, select(vec2<bool>(true, true), select(vec2<bool>(true, true), !vec2<bool>(true, var_1.a), select(!vec2<bool>(false, var_2.a), vec2<bool>(true, true), false)), true), -173f);
    return var_4;
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(true, -vec2<i32>(u_input.a, _wgslsmith_mod_i32(-2147483647i | u_input.a, -6953i >> (0u % 32u))));
    var var_1 = var_0.c;
    let var_2 = var_0;
    let var_3 = Struct_2(any(var_0.c), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(round(var_0.d)), 482f, -236f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-892f, 964f, global0.b.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.b.x, var_2.d, global0.b.x), global0.b)) - global0.b)))));
    var var_4 = vec3<bool>(false, _wgslsmith_clamp_u32(56812u, ~reverseBits(4294967295u), _wgslsmith_clamp_u32(41467u, _wgslsmith_mod_u32(38005u, 66108u), ~4294967295u)) < _wgslsmith_div_u32(0u, 1u), !var_1.x);
    return var_3;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global0 = func_1();
    global1 = array<Struct_2, 20>();
    let var_0 = 25898u;
    return Struct_1(false, ~(~(i32(-1i) * -u_input.a)), vec2<bool>(true, true), _wgslsmith_f_op_f32(abs(2329f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), func_1());
    global1 = array<Struct_2, 20>();
    let var_1 = Struct_2(global0.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -669f), func_2(global0.a, _wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a, 1i), vec2<i32>(-37402i, u_input.a))).d, 404f));
    var var_2 = ~(-vec3<i32>(u_input.a, var_0.b, -39406i));
    var var_3 = all(select(vec4<bool>(false, var_0.a, !global0.a, true | global0.a), vec4<bool>(all(!vec4<bool>(var_0.c.x, var_1.a, var_0.c.x, var_0.a)), false, false, func_4(var_1, func_1()).a), select(!vec4<bool>(global0.a, var_1.a, global0.a, var_1.a), select(vec4<bool>(false, global0.a, var_0.c.x, global0.a), select(vec4<bool>(global0.a, var_1.a, true, var_0.c.x), vec4<bool>(false, var_1.a, global0.a, false), vec4<bool>(var_0.c.x, global0.a, var_0.a, false)), true && var_1.a), false)));
    var_0 = func_4(Struct_2(!(func_4(global1[_wgslsmith_index_u32(4294967295u, 20u)], Struct_2(var_0.a, vec3<f32>(var_1.b.x, var_1.b.x, global0.b.x))).c.x == false), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1679f - -779f))), global0.b.x, 818f)), var_1);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~1u)), -72200i);
}

