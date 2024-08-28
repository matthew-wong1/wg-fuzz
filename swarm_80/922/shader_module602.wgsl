struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20> = array<Struct_2, 20>(Struct_2(vec3<u32>(4294967295u, 27324u, 66593u)), Struct_2(vec3<u32>(7405u, 0u, 0u)), Struct_2(vec3<u32>(0u, 0u, 1u)), Struct_2(vec3<u32>(64407u, 0u, 1u)), Struct_2(vec3<u32>(67578u, 7965u, 0u)), Struct_2(vec3<u32>(6713u, 0u, 19431u)), Struct_2(vec3<u32>(4294967295u, 50941u, 1u)), Struct_2(vec3<u32>(4294967295u, 1u, 112953u)), Struct_2(vec3<u32>(16205u, 1u, 18185u)), Struct_2(vec3<u32>(3356u, 1987u, 1u)), Struct_2(vec3<u32>(1u, 1u, 0u)), Struct_2(vec3<u32>(1u, 1u, 26317u)), Struct_2(vec3<u32>(0u, 1125u, 56662u)), Struct_2(vec3<u32>(1u, 0u, 19270u)), Struct_2(vec3<u32>(115692u, 1u, 62304u)), Struct_2(vec3<u32>(1u, 4294967295u, 10021u)), Struct_2(vec3<u32>(67863u, 13523u, 0u)), Struct_2(vec3<u32>(75068u, 38726u, 45882u)), Struct_2(vec3<u32>(27365u, 80355u, 55339u)), Struct_2(vec3<u32>(98150u, 0u, 34661u)));

var<private> global1: vec4<bool>;

var<private> global2: bool = true;

var<private> global3: vec2<bool>;

var<private> global4: array<Struct_1, 9>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<bool> {
    let var_0 = global4[_wgslsmith_index_u32(u_input.a, 9u)];
    global4 = array<Struct_1, 9>();
    var var_1 = Struct_2(select(abs(var_0.c.zxz), vec3<u32>(var_0.c.x, u_input.a, u_input.a) >> (var_0.c.zyw % vec3<u32>(32u)), all(select(vec3<bool>(true, false, false), vec3<bool>(global1.x, global3.x, global3.x), global1.x))) ^ ~(~var_0.c.xzx));
    var var_2 = Struct_3(vec4<bool>(!global1.x, true, any(select(vec3<bool>(true, global3.x, global1.x), vec3<bool>(true, global1.x, true), select(global1.xxy, vec3<bool>(true, true, true), true))), all(vec3<bool>(false, global3.x, false)) == true));
    global4 = array<Struct_1, 9>();
    return var_2.a;
}

fn func_2(arg_0: u32) -> vec4<bool> {
    var var_0 = global1.x;
    var var_1 = Struct_3(select(select(select(vec4<bool>(false, global3.x, global1.x, true), vec4<bool>(global3.x, true, false, global3.x), func_3()), vec4<bool>(any(vec4<bool>(global3.x, global3.x, global1.x, true)), true, global1.x, true), vec4<bool>(true, true, !global1.x, arg_0 <= arg_0)), vec4<bool>(true, global3.x, true, global1.x), true));
    global1 = var_1.a;
    global2 = false;
    var_1 = Struct_3(!vec4<bool>(!(global1.x || global3.x), any(!global1.xyw), true, !all(vec4<bool>(global1.x, true, true, global3.x))));
    return !select(!select(!vec4<bool>(false, global3.x, false, true), var_1.a, true), vec4<bool>(all(!vec4<bool>(global1.x, false, var_1.a.x, global1.x)), all(vec3<bool>(false, true, var_1.a.x)), true, all(var_1.a.yx) & global3.x), select(var_1.a, select(vec4<bool>(global1.x, global3.x, true, global3.x), !vec4<bool>(global3.x, false, global1.x, global1.x), !vec4<bool>(global1.x, global3.x, false, var_1.a.x)), var_1.a));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<i32>) -> bool {
    var var_0 = global4[_wgslsmith_index_u32(1u, 9u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1784f, _wgslsmith_f_op_f32(var_0.a - -738f), -1435f, _wgslsmith_f_op_f32(f32(-1f) * -1124f)))));
    var var_2 = select(select(vec4<bool>(global1.x, all(select(vec4<bool>(true, global1.x, true, false), vec4<bool>(global3.x, global1.x, true, global3.x), false)), global3.x, global1.x), !select(vec4<bool>(global3.x, true, global3.x, false), func_2(var_0.c.x), func_2(var_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * var_0.a)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1927f)) * 1104f)), vec4<bool>(true, global1.x, any(vec4<bool>(true, true, false, false && global1.x)), select(true, all(!global1.xz), true | any(vec4<bool>(true, true, global1.x, global1.x)))), func_3());
    var var_3 = _wgslsmith_div_u32(4294967295u, ~_wgslsmith_div_u32(u_input.a, 1u));
    var var_4 = Struct_1(var_1.x, _wgslsmith_mod_vec2_u32(~var_0.c.wy, vec2<u32>(var_0.b.x, abs(var_0.b.x))), var_0.c);
    return func_3().x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(select(1u, 1u, true), 20u)];
    let var_1 = global0[_wgslsmith_index_u32(~var_0.a.x, 20u)];
    var var_2 = !select(vec4<bool>(all(!vec4<bool>(global1.x, true, global1.x, global1.x)), !(!global1.x), all(vec4<bool>(true, global1.x, global1.x, true)) || true, all(vec3<bool>(true, true, true))), !vec4<bool>(!global3.x, true, func_1(vec2<i32>(2147483647i, -39776i), vec4<i32>(-1i, 0i, -2147483647i, -20252i)), false), select(select(!vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(global3.x, true, false, false), !vec4<bool>(false, global3.x, true, global3.x)), func_2(firstTrailingBit(1u)), true));
    let var_3 = ~(~(vec3<u32>(var_1.a.x, var_1.a.x << (1u % 32u), _wgslsmith_dot_vec2_u32(var_0.a.zx, vec2<u32>(1u, 1u))) ^ vec3<u32>(0u << (var_0.a.x % 32u), firstTrailingBit(var_0.a.x), var_0.a.x << (var_0.a.x % 32u))));
    var var_4 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1858f * 588f) - 1631f), -1405f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-722f, _wgslsmith_f_op_f32(floor(-110f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1153f) + _wgslsmith_div_f32(-727f, -994f)))), vec4<f32>(1f, 1f, 1f, 1f)));
    var var_5 = global0[_wgslsmith_index_u32(~(~(~reverseBits(abs(30346u)))), 20u)];
    var var_6 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.x), -1776f), var_4.x)), var_0.a.zy, ~select(reverseBits(vec4<u32>(74845u, var_1.a.x, 4294967295u, 58569u)), firstTrailingBit(vec4<u32>(1u, 0u, 3659u, 30729u)), !vec4<bool>(false, false, global1.x, global3.x)) ^ ((_wgslsmith_add_vec4_u32(vec4<u32>(var_1.a.x, 0u, 0u, 0u), vec4<u32>(4294967295u, 13352u, var_1.a.x, 16990u)) & ~vec4<u32>(4294967295u, 4294967295u, var_3.x, 4294967295u)) >> (_wgslsmith_mult_vec4_u32(abs(vec4<u32>(var_0.a.x, 55616u, var_1.a.x, u_input.a)), vec4<u32>(4294967295u, var_5.a.x, 0u, 0u)) % vec4<u32>(32u))));
    global2 = global3.x && (-6108i >= (~(i32(-1i) * -2147483647i) ^ _wgslsmith_mod_i32(~(-15424i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 640i), vec2<i32>(-3735i, 1i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(var_4.x, 455f, true)), _wgslsmith_f_op_f32(1f - 403f), 1i, ~vec4<u32>(12296u, var_0.a.x, 20455u, var_0.a.x));
}

