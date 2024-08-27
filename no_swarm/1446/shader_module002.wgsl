struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(Struct_1(vec3<u32>(30218u, 48712u, 1u))), Struct_2(Struct_1(vec3<u32>(1u, 37389u, 4294967295u))), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 29314u))), Struct_2(Struct_1(vec3<u32>(1u, 0u, 0u))), Struct_2(Struct_1(vec3<u32>(4294967295u, 11582u, 17435u))), Struct_2(Struct_1(vec3<u32>(34284u, 1u, 1u))), Struct_2(Struct_1(vec3<u32>(101638u, 45751u, 47112u))), Struct_2(Struct_1(vec3<u32>(14886u, 4294967295u, 0u))), Struct_2(Struct_1(vec3<u32>(54957u, 0u, 1u))), Struct_2(Struct_1(vec3<u32>(1u, 32983u, 4294967295u))), Struct_2(Struct_1(vec3<u32>(1u, 5337u, 69184u))), Struct_2(Struct_1(vec3<u32>(1u, 78935u, 1u))), Struct_2(Struct_1(vec3<u32>(1u, 21750u, 68337u))), Struct_2(Struct_1(vec3<u32>(1u, 20030u, 1u))), Struct_2(Struct_1(vec3<u32>(1u, 27586u, 4294967295u))), Struct_2(Struct_1(vec3<u32>(47581u, 43840u, 12533u))), Struct_2(Struct_1(vec3<u32>(1u, 0u, 1u))), Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 4294967295u))));

var<private> global1: Struct_3 = Struct_3(vec4<f32>(-579f, -1476f, -2235f, -1000f), i32(-2147483648), vec2<bool>(true, true), Struct_1(vec3<u32>(1u, 22167u, 28080u)), vec2<f32>(1697f, -1000f));

var<private> global2: array<f32, 2> = array<f32, 2>(-2005f, -871f);

var<private> global3: array<vec2<bool>, 30>;

var<private> global4: Struct_1;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: u32) -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.e.x, global2[_wgslsmith_index_u32(4294967295u, 2u)], -1830f, -1470f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.a.x, -171f, global2[_wgslsmith_index_u32(41072u, 2u)], 1220f))))) * vec4<f32>(1000f, _wgslsmith_f_op_f32(ceil(693f)), _wgslsmith_f_op_f32(-811f + -997f), global2[_wgslsmith_index_u32(global4.a.x, 2u)]))), reverseBits(32937i), vec2<bool>(true, true), global1.d, vec2<f32>(1732f, _wgslsmith_f_op_f32(floor(-1327f))));
    global2 = array<f32, 2>();
    var var_1 = -_wgslsmith_mult_vec3_i32(u_input.c.zww, -u_input.c.zzx);
    global1 = var_0;
    var var_2 = min(global1.b, var_1.x);
    return !(!select(vec4<bool>(global1.c.x, any(vec3<bool>(true, var_0.c.x, false)), true, var_0.c.x || var_0.c.x), vec4<bool>(true, true, any(global3[_wgslsmith_index_u32(60803u, 30u)]), var_0.c.x), !select(vec4<bool>(var_0.c.x, var_0.c.x, global1.c.x, false), vec4<bool>(false, global1.c.x, false, global1.c.x), true)));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: bool) -> u32 {
    let var_0 = select(!(!vec2<bool>(global1.b > global1.b, true)), select(select(global3[_wgslsmith_index_u32(1u, 30u)], !select(vec2<bool>(false, false), global3[_wgslsmith_index_u32(arg_2.x, 30u)], global3[_wgslsmith_index_u32(arg_0.x, 30u)]), vec2<bool>(all(vec4<bool>(false, false, global1.c.x, true)), all(vec3<bool>(arg_3, true, false)))), !(!global3[_wgslsmith_index_u32(~global1.d.a.x, 30u)]), all(func_3(-2388f, arg_2, _wgslsmith_mult_u32(0u, arg_2.x)))), vec2<bool>(!(global1.c.x | (-2147483647i <= global1.b)), false));
    let var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 2u)], -1340f, 1000f, 384f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global1.a + global1.a) + global1.a)))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.b, global1.b, 2147483647i, -38815i), -u_input.c), global1.b, ~(5307i << (global4.a.x % 32u))), abs(~abs(vec3<i32>(u_input.a, u_input.b, 1i)))), select(!global3[_wgslsmith_index_u32(arg_0.x >> (global4.a.x % 32u), 30u)], select(global1.c, global3[_wgslsmith_index_u32(arg_2.x, 30u)], global1.c.x), vec2<bool>(true, true)), arg_1, _wgslsmith_f_op_vec2_f32(abs(global1.e)));
    let var_2 = Struct_2(arg_1);
    global0 = array<Struct_2, 18>();
    let var_3 = firstTrailingBit(min(~u_input.c.wz, ~(firstTrailingBit(vec2<i32>(u_input.b, u_input.a)) ^ select(vec2<i32>(2147483647i, -3531i), vec2<i32>(global1.b, global1.b), vec2<bool>(false, global1.c.x)))));
    return global4.a.x;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: bool, arg_3: bool) -> f32 {
    global3 = array<vec2<bool>, 30>();
    global3 = array<vec2<bool>, 30>();
    var var_0 = Struct_1(vec3<u32>(global4.a.x, _wgslsmith_sub_u32(u_input.d, ~_wgslsmith_dot_vec4_u32(vec4<u32>(107654u, global1.d.a.x, 0u, global1.d.a.x), vec4<u32>(149120u, global4.a.x, global1.d.a.x, global1.d.a.x))), global1.d.a.x));
    global4 = Struct_1((_wgslsmith_mod_vec3_u32(vec3<u32>(1u, arg_1.a.a.x, global1.d.a.x), arg_1.a.a) >> (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.a.x, 35656u), global4.a.xz), _wgslsmith_sub_u32(1u, global4.a.x), global4.a.x) % vec3<u32>(32u))) & ~vec3<u32>(u_input.d, func_2(vec4<u32>(4294967295u, arg_1.a.a.x, 19232u, var_0.a.x), Struct_1(global4.a), global1.d.a, false), 0u));
    global2 = array<f32, 2>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(global1.d.a.x, 2u)], _wgslsmith_f_op_f32(151f * _wgslsmith_f_op_f32(-282f - -491f)))), global2[_wgslsmith_index_u32(global1.d.a.x ^ global4.a.x, 2u)], !any(!vec3<bool>(true, false, arg_0)))), global1.e.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.e.x, 481f, 240f), vec3<f32>(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(16707u, 2u)], -550f), global1.a.x, _wgslsmith_f_op_f32(func_1(global1.c.x, Struct_2(Struct_1(global1.d.a)), global1.c.x, global1.c.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1413f + 1271f))), global2[_wgslsmith_index_u32(global4.a.x, 2u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f)), !global1.c.x));
    global3 = array<vec2<bool>, 30>();
    let var_1 = global0[_wgslsmith_index_u32(global1.d.a.x, 18u)];
    var var_2 = global1.d;
    global1 = Struct_3(global1.a, _wgslsmith_clamp_i32(firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_add_i32(0i, global1.b), reverseBits(global1.b))), 0i, u_input.c.x), func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(342f * var_0.x), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 2u)] + global1.a.x))), ~vec3<u32>(global1.d.a.x, ~var_2.a.x, 1u), ~1u).xz, Struct_1(~select(var_1.a.a, vec3<u32>(26462u, 14777u, global1.d.a.x), global1.b != 23351i)), _wgslsmith_f_op_vec2_f32(round(global1.e)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

