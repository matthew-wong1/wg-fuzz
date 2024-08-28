struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<f32>(463f, -391f, -1033f), vec4<f32>(557f, -490f, 1521f, 322f), vec3<u32>(50930u, 25011u, 0u), vec2<u32>(43089u, 0u)), Struct_1(vec3<f32>(-431f, -1243f, -1000f), vec4<f32>(-1335f, -1816f, -557f, -737f), vec3<u32>(2897u, 8718u, 5162u), vec2<u32>(11056u, 1u)), Struct_1(vec3<f32>(719f, -1000f, -1396f), vec4<f32>(-707f, -700f, -229f, -928f), vec3<u32>(4294967295u, 18134u, 4294967295u), vec2<u32>(1u, 53879u)), Struct_1(vec3<f32>(1000f, 1000f, 1018f), vec4<f32>(-656f, -1124f, 1614f, 749f), vec3<u32>(15603u, 1u, 0u), vec2<u32>(1u, 58559u)), Struct_1(vec3<f32>(-170f, -571f, 1812f), vec4<f32>(-849f, 1000f, 1000f, -534f), vec3<u32>(9362u, 1u, 4294967295u), vec2<u32>(0u, 0u)), Struct_1(vec3<f32>(-804f, -1280f, 716f), vec4<f32>(397f, -499f, 766f, -655f), vec3<u32>(252u, 17827u, 1u), vec2<u32>(19969u, 4294967295u)), Struct_1(vec3<f32>(1354f, -1336f, 201f), vec4<f32>(1111f, 640f, 1501f, 490f), vec3<u32>(36132u, 0u, 79318u), vec2<u32>(16667u, 0u)), Struct_1(vec3<f32>(425f, 342f, -859f), vec4<f32>(308f, -122f, -437f, 1307f), vec3<u32>(4294967295u, 0u, 4294967295u), vec2<u32>(1u, 40968u)), Struct_1(vec3<f32>(-1195f, 318f, 218f), vec4<f32>(106f, 261f, -1615f, -268f), vec3<u32>(54710u, 4294967295u, 100213u), vec2<u32>(0u, 50170u)));

var<private> global2: array<vec4<i32>, 15> = array<vec4<i32>, 15>(vec4<i32>(24644i, -8799i, 32224i, 0i), vec4<i32>(0i, 0i, 2147483647i, 32330i), vec4<i32>(-23990i, 2147483647i, -1i, 2147483647i), vec4<i32>(1i, 15292i, 1i, 0i), vec4<i32>(2147483647i, 35926i, 4004i, 0i), vec4<i32>(27204i, i32(-2147483648), -9346i, 1i), vec4<i32>(i32(-2147483648), 2147483647i, -1i, -1i), vec4<i32>(37035i, i32(-2147483648), 12157i, i32(-2147483648)), vec4<i32>(-44059i, 32315i, 0i, 2147483647i), vec4<i32>(0i, 2147483647i, 1i, -31459i), vec4<i32>(-1i, 0i, 1i, -1i), vec4<i32>(-12507i, -63159i, -14152i, -44809i), vec4<i32>(6406i, 15646i, 0i, -36137i), vec4<i32>(-5285i, 2147483647i, 1i, 1i), vec4<i32>(2147483647i, 0i, 14053i, -1i));

var<private> global3: Struct_1 = Struct_1(vec3<f32>(254f, -421f, -909f), vec4<f32>(402f, -385f, -627f, -459f), vec3<u32>(0u, 0u, 1u), vec2<u32>(0u, 105107u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_1) -> vec4<u32> {
    return ~(~select(_wgslsmith_mod_vec4_u32(vec4<u32>(global3.c.x, arg_1.d.x, 30066u, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 0u)) ^ vec4<u32>(arg_1.c.x, global3.c.x, 35589u, 25234u), vec4<u32>(4294967295u, global3.c.x, 98298u, 29370u) << ((vec4<u32>(arg_1.c.x, global3.d.x, 0u, 4294967295u) & vec4<u32>(1u, 0u, global3.d.x, 1u)) % vec4<u32>(32u)), true));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> bool {
    var var_0 = Struct_1(global3.a, global3.b, global3.c, func_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(436f)) + _wgslsmith_f_op_f32(ceil(-493f))), global3.b.x, _wgslsmith_f_op_f32(sign(arg_0)), global3.a.x), global1[_wgslsmith_index_u32(0u, 9u)]).zx);
    var var_1 = ~_wgslsmith_mod_u32(0u, global3.d.x);
    global2 = array<vec4<i32>, 15>();
    var var_2 = -11697i;
    global3 = global1[_wgslsmith_index_u32(1u, 9u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-187f + 921f), _wgslsmith_f_op_f32(var_0.b.x + global0.x))))) == _wgslsmith_f_op_f32(-arg_0);
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: f32) -> Struct_1 {
    let var_0 = select(!vec4<bool>(!(true | arg_1), any(!vec4<bool>(arg_1, arg_1, true, arg_1)), func_3(_wgslsmith_f_op_f32(arg_2 * global3.a.x), vec2<bool>(false, false)), select(!arg_1, true, false)), !(!select(vec4<bool>(arg_1, arg_1, true, arg_1), !vec4<bool>(arg_1, true, false, arg_1), any(vec3<bool>(true, arg_1, false)))), all(!(!vec3<bool>(true, arg_1, false))));
    let var_1 = global1[_wgslsmith_index_u32(arg_0.x, 9u)];
    let var_2 = var_1.b.x;
    let var_3 = var_0.x;
    let var_4 = select(vec3<bool>(!var_0.x, u_input.b.x > _wgslsmith_mod_i32(u_input.a.x | u_input.a.x, _wgslsmith_mod_i32(-32893i, u_input.b.x)), u_input.b.x < (-20884i | (u_input.b.x ^ u_input.b.x))), !vec3<bool>(false, arg_1, var_3), true);
    return Struct_1(vec3<f32>(arg_2, global3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-441f)) * _wgslsmith_f_op_f32(floor(998f)))), _wgslsmith_f_op_vec4_f32(-var_1.b), ~select(vec3<u32>(max(4294967295u, var_1.c.x), 1u, _wgslsmith_mult_u32(var_1.d.x, 1u)), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(global3.c, vec3<u32>(global3.c.x, 1u, 14272u)), _wgslsmith_add_vec3_u32(arg_0.xzz, global3.c)), select(!vec3<bool>(var_0.x, false, var_0.x), !var_0.wzx, false)), var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(func_1(global3.b, Struct_1(_wgslsmith_f_op_vec3_f32(global3.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 444f, global3.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1887f, 1162f, global0.x) - global3.b), ~select(global3.c, vec3<u32>(0u, global3.d.x, global3.c.x), vec3<bool>(true, true, false)), select(global3.c.zx, global3.d, true))), true, global3.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-(_wgslsmith_add_i32(u_input.a.x, 1i) & _wgslsmith_sub_i32(-34011i, 5548i)), _wgslsmith_clamp_i32(-(1i ^ u_input.a.x), ~_wgslsmith_mult_i32(u_input.b.x, 0i), min(u_input.b.x, u_input.b.x)), abs(~firstLeadingBit(9664i))), _wgslsmith_f_op_f32(max(454f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.b.x)))))), global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(~(global3.d.x ^ 52425u), var_0.d.x), 15u)], reverseBits(countOneBits(reverseBits(vec4<u32>(67538u, var_0.d.x, 4294967295u, 53407u))) ^ (firstLeadingBit(vec4<u32>(var_0.c.x, global3.c.x, var_0.c.x, 1u)) ^ ~vec4<u32>(var_0.c.x, 26675u, var_0.c.x, 63841u))), 14766u);
}

