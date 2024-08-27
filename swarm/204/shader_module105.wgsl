struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 14>;

var<private> global2: vec2<f32> = vec2<f32>(1000f, -1502f);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(select((firstTrailingBit(44605u) ^ 17689u) < global0.b.x, all(!(!vec3<bool>(false, global0.c.x, arg_0.a))), true), _wgslsmith_clamp_vec2_u32(u_input.c.wy, u_input.c.xy, u_input.c.yz), vec2<bool>(false, false || (min(0u, arg_0.b.x) <= _wgslsmith_div_u32(u_input.c.x, 42794u))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(650f, -881f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, arg_0.d.x), global0.d, false)))), !(!arg_0.c.x))))));
    let var_1 = Struct_1(all(select(vec4<bool>(!var_0.c.x, global0.b.x != 0u, true, true), select(select(vec4<bool>(true, true, var_0.a, false), vec4<bool>(var_0.a, arg_0.c.x, false, true), global0.a), select(vec4<bool>(true, false, arg_0.a, var_0.a), vec4<bool>(global0.c.x, global0.c.x, false, global0.a), true), !var_0.a), var_0.b.x > 1u)), (vec2<u32>(1u, var_0.b.x) << (vec2<u32>(_wgslsmith_add_u32(8352u, 18281u), 19477u) % vec2<u32>(32u))) | firstTrailingBit(global0.b), global0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1738f, global2.x) * arg_0.d));
    let var_2 = var_1.d.x;
    let var_3 = _wgslsmith_f_op_f32(ceil(var_1.d.x));
    var var_4 = var_0.b.x << (((abs(_wgslsmith_mult_u32(35260u, 0u)) << (~var_1.b.x % 32u)) & _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.c.x), vec2<u32>(7065u, global0.b.x)), var_0.b.x), 1u)) % 32u);
    return var_1;
}

fn func_3(arg_0: u32) -> vec4<bool> {
    global2 = vec2<f32>(-1546f, global0.d.x);
    var var_0 = func_2(func_2(Struct_1(!global0.c.x, ~vec2<u32>(1234u, 27994u) << ((vec2<u32>(u_input.c.x, 1u) >> (vec2<u32>(4294967295u, global0.b.x) % vec2<u32>(32u))) % vec2<u32>(32u)), select(!vec2<bool>(global0.c.x, global0.c.x), !global0.c, global0.c), global0.d)));
    global1 = array<i32, 14>();
    let var_1 = select(vec3<bool>(true, true, true), vec3<bool>(true && var_0.a, global0.a, false), select(select(!vec3<bool>(false, global0.a, global0.c.x), !(!vec3<bool>(var_0.c.x, var_0.c.x, true)), select(vec3<bool>(false, var_0.a, global0.a), vec3<bool>(true, false, false), global0.c.x | global0.a)), select(vec3<bool>(!var_0.a, true, u_input.c.x >= 4294967295u), vec3<bool>(false, all(vec3<bool>(true, var_0.a, var_0.a)), !var_0.c.x), !(!vec3<bool>(false, true, global0.a))), true));
    var var_2 = Struct_1(!global0.a, ~global0.b, !select(select(!var_1.zx, !vec2<bool>(global0.a, false), var_0.c), select(var_0.c, var_1.xz, vec2<bool>(global0.c.x, var_0.c.x)), select(var_1.yx, select(vec2<bool>(false, var_0.a), vec2<bool>(false, var_1.x), vec2<bool>(global0.c.x, true)), select(vec2<bool>(true, false), var_0.c, false))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-196f, var_0.d.x)));
    return !select(vec4<bool>(func_2(Struct_1(var_0.a, var_2.b, vec2<bool>(global0.a, var_2.a), vec2<f32>(-2527f, var_0.d.x))).a && any(vec4<bool>(var_2.a, true, var_1.x, var_0.c.x)), func_2(func_2(Struct_1(false, vec2<u32>(arg_0, var_2.b.x), vec2<bool>(false, false), vec2<f32>(global2.x, 179f)))).a, true, select(var_1.x, true, var_1.x)), vec4<bool>(false, all(!var_1), true, all(select(vec4<bool>(true, global0.a, var_0.a, true), vec4<bool>(false, true, var_0.c.x, false), var_1.x))), !(!select(vec4<bool>(global0.c.x, var_1.x, false, var_2.a), vec4<bool>(true, true, global0.c.x, var_0.c.x), var_1.x)));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> f32 {
    var var_0 = u_input.c.wyw;
    global0 = func_2(Struct_1(arg_0.a, var_0.zz, select(global0.c, arg_0.c, !(!arg_0.c)), vec2<f32>(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(f32(-1f) * -422f)))));
    var var_1 = Struct_1(!(!any(func_3(u_input.c.x))), ~(~(~arg_0.b)), select(vec2<bool>(!(-1172f > global2.x), !global0.a), !arg_1, vec2<bool>(false, global0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.d - func_2(Struct_1(true, var_0.yy, arg_0.c, vec2<f32>(arg_0.d.x, 226f))).d)));
    var var_2 = func_2(Struct_1(select(true, arg_1.x, any(!vec4<bool>(arg_0.a, arg_0.a, true, true))), ~(var_0.zx >> (global0.b % vec2<u32>(32u))), vec2<bool>(true, arg_1.x), vec2<f32>(_wgslsmith_f_op_f32(abs(462f)), _wgslsmith_f_op_f32(-arg_0.d.x))));
    var var_3 = _wgslsmith_f_op_f32(max(arg_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1681f)) - -251f), 1000f))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * var_2.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_1(true, u_input.c.wx, vec2<bool>(true, global0.c.x), vec2<f32>(-529f, global0.d.x)), global0.c))))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, global0.d.x, -354f), vec3<f32>(global0.d.x, global2.x, -345f), false)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-354f, global2.x, 234f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1520f, 1000f))))));
    var var_1 = !vec3<bool>(u_input.c.x <= global0.b.x, global0.c.x, _wgslsmith_f_op_f32(-var_0.x) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2636f + -599f) * -1169f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-645f)) - _wgslsmith_f_op_f32(abs(global2.x))))), -u_input.a, u_input.b, -2147483647i, 1834u);
}

