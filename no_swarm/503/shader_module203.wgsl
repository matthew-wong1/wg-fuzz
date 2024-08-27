struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 14>;

var<private> global1: array<vec4<f32>, 17>;

var<private> global2: Struct_4;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a.x) * 548f);
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: vec2<i32>, arg_3: vec2<i32>) -> Struct_1 {
    let var_0 = ~countOneBits(arg_0);
    var var_1 = firstTrailingBit(~(~firstTrailingBit(arg_1.x << (arg_1.x % 32u))));
    var_1 = ~51166u;
    let var_2 = vec3<i32>(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.x, arg_3.x, var_0, -1i), max(vec4<i32>(1i, -27750i, u_input.a, -1i), vec4<i32>(-19982i, arg_0, -61113i, 2147483647i)))), -10922i, -var_0);
    let var_3 = ~countOneBits(arg_1.x);
    return Struct_1(vec2<bool>(any(select(vec2<bool>(global2.a.a.x, global2.a.a.x), vec2<bool>(global2.a.b, false), false)), global2.a.a.x), false);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> Struct_2 {
    global0 = array<vec2<i32>, 14>();
    var var_0 = vec4<i32>(abs(_wgslsmith_mod_i32(-(~22914i), -1i)), _wgslsmith_clamp_i32(-_wgslsmith_sub_i32(u_input.a, -1i) | 1i, abs(_wgslsmith_add_i32(36585i, 42735i) & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -4427i, u_input.a, -57822i), vec4<i32>(u_input.a, u_input.a, -1i, -14320i))), ~abs(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(arg_0.e, 14u)], vec2<i32>(u_input.a, u_input.a)))), -u_input.a, -10824i);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(37665u, 17u)] - global1[_wgslsmith_index_u32(54562u, 17u)]))), global1[_wgslsmith_index_u32(4294967295u & (0u >> (_wgslsmith_div_u32(arg_0.e, 0u) % 32u)), 17u)])) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-660f, _wgslsmith_f_op_f32(floor(-1036f)), arg_0.c, arg_0.c)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-169f, arg_0.c, arg_0.c, -196f)))));
    var_0 = vec4<i32>(-var_0.x, -2147483647i, 61757i, max(i32(-1i) * -var_0.x, -_wgslsmith_mod_i32(-var_0.x, _wgslsmith_mod_i32(var_0.x, -2169i))));
    var var_2 = Struct_4(Struct_1(vec2<bool>(func_2(-36822i, vec4<u32>(1u, 1u, arg_0.e, 13715u), global0[_wgslsmith_index_u32(4294967295u, 14u)], var_0.yy).a.x || false, !arg_1), _wgslsmith_mult_u32(54090u, 26621u) >= arg_0.e));
    return Struct_2(vec2<bool>(global2.a.b, !arg_2), global2.a, var_1.x, Struct_1(global2.a.a, any(!(!vec3<bool>(true, arg_2, arg_0.a.x)))), arg_0.e);
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3) -> Struct_4 {
    let var_0 = global2.a;
    global2 = Struct_4(func_3(arg_1, true, !(!var_0.a.x)).d);
    let var_1 = Struct_2(select(arg_1.b.a, select(func_3(arg_1, global2.a.b, true).b.a, !global2.a.a, true), true), func_2(u_input.a, firstTrailingBit(abs(vec4<u32>(4294967295u, 85072u, arg_1.e, 1u) & vec4<u32>(1u, 38772u, 0u, arg_1.e))), abs(~_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, u_input.a))), -(~(~global0[_wgslsmith_index_u32(arg_1.e, 14u)]))), 1423f, arg_1.d, ~arg_0);
    var var_2 = _wgslsmith_f_op_f32(sign(-328f));
    let var_3 = Struct_2(func_2(u_input.a, max(~vec4<u32>(21687u, 0u, 26364u, arg_1.e), vec4<u32>(var_1.e, var_1.e, 71770u, arg_0)) >> (_wgslsmith_clamp_vec4_u32(~vec4<u32>(28658u, 1u, 4294967295u, 33211u), vec4<u32>(var_1.e, arg_0, arg_1.e, var_1.e), abs(vec4<u32>(28629u, arg_0, arg_0, 21935u))) % vec4<u32>(32u)), abs(global0[_wgslsmith_index_u32(var_1.e, 14u)]), global0[_wgslsmith_index_u32(~arg_1.e, 14u)]).a, arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -121f) + 1891f), func_2(u_input.a, vec4<u32>(firstTrailingBit(42026u), 79519u, var_1.e, ~29036u) ^ ~(~vec4<u32>(23848u, 4294967295u, arg_1.e, arg_0)), global0[_wgslsmith_index_u32(firstTrailingBit(1u), 14u)], _wgslsmith_clamp_vec2_i32(global0[_wgslsmith_index_u32(51330u, 14u)], vec2<i32>(~0i, -8759i), global0[_wgslsmith_index_u32(var_1.e, 14u)])), var_1.e);
    return Struct_4(global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 14>();
    let var_0 = func_4(~(~reverseBits(0u)), func_3(Struct_2(select(vec2<bool>(global2.a.b, true), !global2.a.a, global2.a.a), global2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<i32>(-57694i, u_input.a), vec3<u32>(0u, 4294967295u, 6408u), 0i, Struct_3(vec3<f32>(1000f, -700f, 970f), -1262f, vec3<f32>(-1385f, -427f, -801f), 1131f)))), func_2(-u_input.a, vec4<u32>(4294967295u, 11840u, 2473u, 1u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(43321u, 33919u), 14u)], global0[_wgslsmith_index_u32(~7831u, 14u)]), 43753u), select(true, false, true), false & (any(vec4<bool>(false, global2.a.a.x, global2.a.a.x, false)) | true)), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1196f, -1000f, 156f) - vec3<f32>(-503f, -874f, 933f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-469f, -1000f, -1888f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-698f * 793f), _wgslsmith_f_op_f32(floor(-843f)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -455f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(756f * 809f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-966f, -986f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(566f))))));
    global1 = array<vec4<f32>, 17>();
    var var_1 = reverseBits(_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(4210u, 4294967295u), vec2<u32>(1u, 4995u)), true), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(6590u, 6981u), ~vec2<u32>(50343u, 7595u)), 4294967295u)));
    let var_2 = var_0;
    let var_3 = vec2<bool>(var_0.a.a.x && select(var_2.a.b, true, var_2.a.a.x), all(func_3(func_3(func_3(Struct_2(var_2.a.a, Struct_1(vec2<bool>(true, true), false), -969f, Struct_1(var_0.a.a, false), 1u), false, var_0.a.b), select(global2.a.a.x, true, var_2.a.b), global2.a.b), true, global2.a.a.x).d.a));
    global0 = array<vec2<i32>, 14>();
    var var_4 = _wgslsmith_mod_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~reverseBits(select(1883u, 0u, true)), firstTrailingBit(41038u)), 14u)], vec2<i32>(-1i) * -select(vec2<i32>(-1i, -19545i), vec2<i32>(u_input.a, u_input.a), func_3(Struct_2(vec2<bool>(var_2.a.b, var_0.a.a.x), Struct_1(var_0.a.a, false), 200f, global2.a, 46120u), true, false).d.a));
    let x = u_input.a;
    s_output = StorageBuffer(~80951u, ~(~u_input.a), vec4<u32>(66588u, 26872u, 44057u, ~reverseBits(~0u)), var_4.x, _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1f, 1f))));
}

