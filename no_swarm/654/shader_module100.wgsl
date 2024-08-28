struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(false, true, true), 0u, 47961u);

var<private> global1: vec2<bool>;

var<private> global2: Struct_2;

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1087f, 1158f, 1114f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1363f, 1000f, 435f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(788f, -1729f, -140f))), vec3<f32>(1f, 1f, 1f))))), 1i);
    global1 = vec2<bool>((true & global0.a.x) & true, any(!global0.a));
    global3 = Struct_2(vec3<bool>(any(!(!vec4<bool>(false, global1.x, global2.a.x, true))), global3.a.x, !global2.a.x), ~max(44487u, u_input.b.x), 4294967295u);
    global2 = Struct_2(!select(!vec3<bool>(global2.a.x, global1.x, true), select(!vec3<bool>(global3.a.x, true, false), vec3<bool>(true, global0.a.x, true), false), select(true, false, global1.x)), _wgslsmith_dot_vec2_u32(~select(abs(u_input.b), _wgslsmith_mult_vec2_u32(u_input.b, u_input.b), global3.a.x), _wgslsmith_mod_vec2_u32(vec2<u32>(countOneBits(global2.c), 4294967295u), select(u_input.b, ~vec2<u32>(20551u, 0u), !global0.a.yy))), u_input.a);
    var var_1 = global2.a;
    return var_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = Struct_2(vec3<bool>(false, global1.x, select(true, !any(global2.a), true)), select(_wgslsmith_mod_u32(global3.b, global3.b), ~global3.c, !global2.a.x), global2.c);
    global1 = !vec2<bool>(global0.a.x, true);
    var var_1 = ~global0.b;
    var var_2 = Struct_2(global3.a, _wgslsmith_dot_vec4_u32(~(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.b.x, global0.c, global3.b), vec4<u32>(global0.c, 21662u, 4717u, 4294967295u)) ^ vec4<u32>(global3.b, global0.c, var_0.c, 0u)), countOneBits(vec4<u32>(select(4294967295u, 0u, false), ~global2.c, abs(u_input.b.x), _wgslsmith_clamp_u32(global0.c, 76961u, var_0.c)))), 4294967295u);
    var_0 = Struct_2(select(!select(!global3.a, vec3<bool>(true, var_2.a.x, global3.a.x), true), vec3<bool>(any(select(vec3<bool>(global2.a.x, true, global0.a.x), global2.a, vec3<bool>(global1.x, false, global2.a.x))), all(vec4<bool>(var_0.a.x, true, true, false)) & false, !global2.a.x), !(!(!vec3<bool>(global1.x, global1.x, false)))), ~select(global3.c, 4294967295u, var_0.a.x), _wgslsmith_div_u32(select(48417u, 9543u, !var_0.a.x), var_0.b));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, arg_0.a.x, 1471f) - arg_0.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    var var_0 = func_2();
    global1 = vec2<bool>(all(global0.a.zx), select(all(vec2<bool>(any(vec2<bool>(true, false)), true)), (1u >> (~u_input.b.x % 32u)) <= _wgslsmith_clamp_u32(~61543u, 10681u, 1u), global2.a.x));
    var var_1 = Struct_2(select(vec3<bool>(true, global2.a.x, all(vec3<bool>(arg_1.a.x, false, global2.a.x))), vec3<bool>(all(vec3<bool>(false, global1.x, global0.a.x)), any(global0.a.zy), true), ~(-arg_2.b) > arg_2.b), 4294967295u, 1u);
    var var_2 = vec4<u32>(~(~(~13231u)), _wgslsmith_div_u32(~60786u, _wgslsmith_mod_u32(u_input.b.x, _wgslsmith_sub_u32(~var_1.c, _wgslsmith_div_u32(global2.c, 1u)))), ~_wgslsmith_mod_u32(global0.c, _wgslsmith_dot_vec2_u32(abs(arg_3), vec2<u32>(var_1.c, 15710u))), arg_1.c);
    let var_3 = arg_1;
    return arg_0;
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1487f, -476f, 247f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1386f, 2023f, -935f) + vec3<f32>(1365f, 450f, 165f)), global0.a)), _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(1677f, 696f, 349f), u_input.d.x), func_2()))), _wgslsmith_add_i32(20836i, -18636i)), Struct_2(vec3<bool>(any(select(global2.a, vec3<bool>(global1.x, false, global3.a.x), vec3<bool>(false, true, global3.a.x))), global3.a.x, true), 1u, ~(~abs(global3.b))), func_2(), vec2<u32>(_wgslsmith_mod_u32(min(_wgslsmith_mult_u32(16757u, 47531u), select(global3.c, u_input.b.x, global1.x)), abs(~39177u)), 4136u));
    let var_1 = Struct_2(vec3<bool>(true, 12252i < firstTrailingBit(79173i), global3.a.x), 14547u, ~(~(~(global3.b | 1u))));
    var var_2 = _wgslsmith_f_op_f32(-var_0.a.x);
    let var_3 = _wgslsmith_div_f32(1590f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x))));
    let var_4 = func_2();
    return func_4(var_4, Struct_2(!(!(!global2.a)), _wgslsmith_add_u32(0u, ~_wgslsmith_div_u32(var_1.c, global2.b)), 0u), Struct_1(var_0.a, 1i), u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -328f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-180f - _wgslsmith_f_op_f32(-1260f + _wgslsmith_div_f32(-1580f, -1000f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(633f, 684f, global3.a.x)), -104f));
    global1 = global3.a.yy;
    var var_1 = global3.a;
    let var_2 = _wgslsmith_add_u32(1u >> (~(~(~4294967295u)) % 32u), global0.b);
    let var_3 = reverseBits(u_input.a);
    let var_4 = _wgslsmith_div_u32(firstLeadingBit(global2.b), u_input.b.x);
    let var_5 = var_0.zz;
    let var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~(~var_2 << (~var_3 % 32u)), min(global0.c, global2.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_6.a.x), 1560f) * var_6.a.zz), u_input.d);
}

