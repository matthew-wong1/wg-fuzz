struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_2,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_2, 26>;

var<private> global2: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(1u, 54226u), vec2<u32>(46442u, 11335u), vec2<u32>(4294967295u, 29708u), vec2<u32>(0u, 56957u), vec2<u32>(4294967295u, 30112u), vec2<u32>(57309u, 1u), vec2<u32>(48337u, 110393u), vec2<u32>(20386u, 53162u), vec2<u32>(0u, 12001u), vec2<u32>(0u, 31205u), vec2<u32>(4294967295u, 44165u), vec2<u32>(5105u, 0u), vec2<u32>(0u, 0u), vec2<u32>(17271u, 4294967295u), vec2<u32>(22040u, 49262u), vec2<u32>(4294967295u, 38221u), vec2<u32>(4294967295u, 13570u), vec2<u32>(1u, 13070u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(22359u, 0u), vec2<u32>(4294967295u, 60785u), vec2<u32>(4039u, 38122u), vec2<u32>(27423u, 0u), vec2<u32>(4294967295u, 12927u));

var<private> global3: Struct_3;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: bool, arg_3: vec2<i32>) -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(~global0.x, global3.a.a.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(418f, global3.a.a.c.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.a.c.x, global3.a.a.b) * vec2<f32>(-972f, -1282f)))), select(vec3<bool>(arg_2, false, global3.a.b.x), arg_1.xzz, true)), vec2<bool>(all(!vec4<bool>(arg_1.x, true, arg_2, true)), !all(select(vec3<bool>(true, arg_1.x, true), global3.a.a.d, false))), -51433i);
    global0 = (~vec2<u32>(~u_input.b.x, 55607u) >> (_wgslsmith_div_vec2_u32(min(vec2<u32>(var_0.a.a, 4294967295u) ^ vec2<u32>(u_input.b.x, global3.a.a.a), reverseBits(global2[_wgslsmith_index_u32(3804u, 25u)])), min(vec2<u32>(u_input.b.x, 34496u) | vec2<u32>(10110u, 32162u), ~global2[_wgslsmith_index_u32(var_0.a.a, 25u)])) % vec2<u32>(32u))) & global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.b.x, global3.a.a.a, 15181u, u_input.b.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.a.a, 0u, var_0.a.a, 1u), vec4<u32>(18914u, 4294967295u, u_input.b.x, global0.x), vec4<u32>(global3.a.a.a, 34354u, global3.a.a.a, u_input.b.x))) >> (firstTrailingBit(53678u) % 32u), 4235u | var_0.a.a), 25u)];
    global1 = array<Struct_2, 26>();
    return arg_1;
}

fn func_2() -> Struct_2 {
    let var_0 = global3.a.a.d;
    let var_1 = !select(!vec4<bool>(false, var_0.x, global3.a.a.d.x, var_0.x), !vec4<bool>(global3.a.a.d.x, !var_0.x, true, true), global3.a.b.x);
    global3 = Struct_3(Struct_2(Struct_1(_wgslsmith_add_u32(u_input.b.x, 835u) & ~4294967295u, _wgslsmith_f_op_f32(min(global3.a.a.b, _wgslsmith_f_op_f32(407f + 1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global3.a.a.b)) - _wgslsmith_div_vec2_f32(global3.a.a.c, global3.a.a.c)), !(!vec3<bool>(var_0.x, false, true))), vec2<bool>(global3.a.a.d.x, 533f > _wgslsmith_f_op_f32(select(832f, global3.a.a.c.x, global3.a.b.x))), -2147483647i));
    var var_2 = Struct_3(global1[_wgslsmith_index_u32(28231u << (global0.x % 32u), 26u)]);
    let var_3 = Struct_3(global3.a);
    return Struct_2(global3.a.a, vec2<bool>(var_1.x, any(!func_3(vec4<i32>(global3.a.c, global3.a.c, -2147483647i, var_2.a.c), var_1, var_3.a.b.x, vec2<i32>(-1i, u_input.c.x)))), _wgslsmith_clamp_i32(var_2.a.c, -(~var_2.a.c), var_2.a.c));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: bool, arg_3: vec4<i32>) -> u32 {
    global0 = firstTrailingBit(max(vec2<u32>(_wgslsmith_mult_u32(u_input.b.x, global3.a.a.a), _wgslsmith_mod_u32(min(0u, global3.a.a.a), arg_1.a.a.a)), reverseBits(~(~vec2<u32>(4294967295u, global0.x)))));
    global3 = Struct_3(func_2());
    let var_0 = arg_1;
    global2 = array<vec2<u32>, 25>();
    global3 = var_0;
    return func_2().a.a;
}

fn func_4(arg_0: vec4<u32>, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    global2 = array<vec2<u32>, 25>();
    let var_0 = _wgslsmith_div_u32(~arg_2, 1u);
    let var_1 = Struct_1(~global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(154f, _wgslsmith_f_op_f32(-1000f + global3.a.a.c.x)), _wgslsmith_f_op_f32(-386f * _wgslsmith_f_op_f32(arg_3.c.x * global3.a.a.c.x))))), _wgslsmith_div_vec2_f32(vec2<f32>(global3.a.a.c.x, _wgslsmith_f_op_f32(exp2(global3.a.a.b))), _wgslsmith_f_op_vec2_f32(select(func_2().a.c, vec2<f32>(_wgslsmith_f_op_f32(-global3.a.a.c.x), 3382f), !select(arg_3.d.yz, arg_3.d.yy, global3.a.a.d.x)))), vec3<bool>(arg_1, global3.a.a.d.x, arg_1));
    var var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(global3.a.a.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(arg_3.c)) + var_1.c)));
    var var_3 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(442f, 1168f, arg_3.b, -1335f)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(617f, 1143f, -214f, 1877f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c.x, -357f, arg_3.b, 1351f), vec4<f32>(var_1.c.x, var_1.c.x, 714f, arg_3.b), global3.a.b.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, -268f, -442f, global3.a.a.c.x) - vec4<f32>(-982f, -587f, 514f, -2126f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.c.x, -1149f, var_2.x, 161f), vec4<f32>(arg_3.b, -746f, -160f, 348f), vec4<bool>(var_1.d.x, true, true, true)))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-575f, 1446f, 460f, var_2.x)))), vec4<f32>(-786f, 1269f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(344f + -930f), _wgslsmith_f_op_f32(-var_2.x), func_3(vec4<i32>(global3.a.c, 21056i, 0i, 0i), vec4<bool>(var_1.d.x, false, true, true), arg_3.d.x, vec2<i32>(global3.a.c, u_input.c.x)).x)), _wgslsmith_f_op_f32(ceil(var_2.x))), _wgslsmith_sub_i32(-global3.a.c, _wgslsmith_clamp_i32(u_input.c.x, global3.a.c, 1i)) != (firstTrailingBit(-49132i) >> (max(arg_0.x, 48332u) % 32u))))));
    return func_2().a;
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_3 {
    global0 = vec2<u32>(global0.x, _wgslsmith_mult_u32(arg_2.a, ~arg_2.a));
    var var_0 = Struct_3(Struct_2(global3.a.a, !vec2<bool>(!arg_2.d.x, arg_1.d.x), global3.a.c));
    let var_1 = vec2<f32>(arg_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1798f), 888f, true)), _wgslsmith_f_op_f32(var_0.a.a.b * _wgslsmith_f_op_f32(var_0.a.a.b - -1411f)), global3.a.a.d.x))));
    return Struct_3(Struct_2(Struct_1(~func_2().a.a, _wgslsmith_f_op_f32(-1000f + _wgslsmith_div_f32(-1035f, 1527f)), _wgslsmith_f_op_vec2_f32(-func_2().a.c), select(arg_2.d, global3.a.a.d, !vec3<bool>(false, true, arg_2.d.x))), arg_1.d.zz, global3.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1347f + global3.a.a.b), _wgslsmith_f_op_f32(exp2(global3.a.a.b))), global3.a.a.b))), func_4(vec4<u32>(_wgslsmith_mult_u32(global0.x, ~38655u), 1u, 0u, ~(~global0.x)), (!global3.a.b.x | all(global3.a.a.d)) & global3.a.b.x, reverseBits(func_1(true, Struct_3(global1[_wgslsmith_index_u32(17991u, 26u)]), any(vec3<bool>(true, global3.a.b.x, global3.a.a.d.x)), ~vec4<i32>(-36326i, -2147483647i, global3.a.c, 1i))), func_2().a), global3.a.a);
    let var_0 = ~func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.a.a.c.x, global3.a.a.c.x)))), global3.a.a, func_2().a).a.c;
    let var_1 = func_5(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_4(firstTrailingBit(vec4<u32>(global3.a.a.a, 27696u, u_input.b.x, global3.a.a.a)), func_5(global3.a.a.c.x, global3.a.a, global3.a.a).a.b.x, 52019u, Struct_1(global0.x, -573f, global3.a.a.c, vec3<bool>(true, global3.a.b.x, global3.a.b.x))).b), _wgslsmith_f_op_f32(-global3.a.a.b))), global3.a.a, global3.a.a);
    let var_2 = global3.a.b.x;
    global2 = array<vec2<u32>, 25>();
    let var_3 = select(!select(!(!vec4<bool>(global3.a.b.x, false, true, false)), vec4<bool>(true, true, false & var_1.a.a.d.x, true), !vec4<bool>(global3.a.b.x, true, global3.a.a.d.x, true)), select(!vec4<bool>(true, global3.a.b.x, true, var_1.a.b.x), !select(!vec4<bool>(true, false, var_1.a.a.d.x, global3.a.b.x), !vec4<bool>(global3.a.b.x, var_1.a.a.d.x, false, false), vec4<bool>(true, global3.a.b.x, false, true)), vec4<bool>(true, global3.a.a.d.x, false, false)), false);
    global0 = firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(global0.x & 60198u, _wgslsmith_mult_u32(global3.a.a.a, 4294967295u)), select(_wgslsmith_sub_vec2_u32(select(vec2<u32>(var_1.a.a.a, 4294967295u), global2[_wgslsmith_index_u32(67643u, 25u)], vec2<bool>(var_3.x, var_1.a.b.x)), vec2<u32>(0u, global0.x)), vec2<u32>(_wgslsmith_mod_u32(30626u, 98147u), 3034u), !(!global3.a.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-112f, var_1.a.a.c.x) + func_4(vec4<u32>(global0.x, var_1.a.a.a, 0u, global0.x), var_1.a.a.d.x, ~global0.x, var_1.a.a).b) * _wgslsmith_f_op_f32(f32(-1f) * -978f)));
}

