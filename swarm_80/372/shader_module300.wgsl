struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<bool>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec4<u32>(1u, 0u, 4294967295u, 4294967295u), false, vec4<bool>(true, true, true, false), vec2<i32>(-1i, 1i), true));

var<private> global1: array<vec4<bool>, 5>;

var<private> global2: vec4<u32> = vec4<u32>(0u, 0u, 3040u, 21360u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(438f + _wgslsmith_f_op_f32(-588f + -940f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-320f + 658f)))) - _wgslsmith_div_f32(-1095f, -627f)), -738f);
    let var_1 = vec3<bool>(!any(select(arg_0.c.c.xxz, arg_0.a.c.zwz, vec3<bool>(true, true, true))), any(vec4<bool>(false, _wgslsmith_div_f32(-529f, -1184f) > _wgslsmith_div_f32(var_0.x, -416f), !arg_0.c.e, !(!arg_0.a.e))), arg_0.a.e);
    var var_2 = var_0.x;
    global1 = array<vec4<bool>, 5>();
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -546f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), var_0.x) + _wgslsmith_f_op_f32(-220f + _wgslsmith_f_op_f32(floor(241f)))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-546f, _wgslsmith_f_op_f32(var_0.x + var_0.x))) - var_0.x));
    return arg_0.b.a;
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-757f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1588f)), -1706f), _wgslsmith_div_f32(-967f, -488f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 100f)))));
    global2 = countOneBits(~abs(func_3(Struct_2(Struct_1(vec4<u32>(45451u, u_input.b, 27664u, 58669u), false, vec4<bool>(true, false, true, false), vec2<i32>(u_input.a.x, u_input.d.x), true), Struct_1(vec4<u32>(u_input.c.x, u_input.b, u_input.b, 57324u), true, vec4<bool>(false, true, false, true), vec2<i32>(u_input.d.x, u_input.d.x), true), Struct_1(vec4<u32>(1017u, 0u, 47434u, 1u), false, vec4<bool>(false, true, true, true), u_input.a.yy, true)))));
    var var_1 = vec2<bool>(select(true, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), true)), (_wgslsmith_mod_u32(global2.x, 44346u) >= firstLeadingBit(15371u)) == true), !(_wgslsmith_f_op_f32(170f * var_0.x) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(535f - 1000f) * _wgslsmith_f_op_f32(var_0.x + var_0.x))));
    var var_2 = !var_1.x;
    let var_3 = global0[_wgslsmith_index_u32(1u >> (u_input.c.x % 32u), 1u)];
    return Struct_4(Struct_3(u_input.a, u_input.a.x));
}

fn func_1() -> vec4<u32> {
    global0 = array<Struct_1, 1>();
    let var_0 = func_2();
    var var_1 = _wgslsmith_sub_vec4_u32(func_3(Struct_2(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(global2.x, 1u)], global0[_wgslsmith_index_u32(104208u, 1u)])), ~_wgslsmith_mult_vec4_u32(~(vec4<u32>(global2.x, 27517u, global2.x, 67513u) << (vec4<u32>(global2.x, global2.x, 52322u, u_input.c.x) % vec4<u32>(32u))), ~vec4<u32>(1u, u_input.b, 0u, 20407u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -711f, -791f) * vec3<f32>(-190f, -150f, -719f))) - vec3<f32>(1f, 1f, 1f))));
    var var_3 = var_0;
    return ~vec4<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(34812u, 20600u, global2.x, var_1.x)), select(vec4<u32>(1u, 4294967295u, u_input.c.x, 33106u), vec4<u32>(57460u, 4294967295u, var_1.x, 1498u), vec4<bool>(true, true, true, false))) << (_wgslsmith_dot_vec4_u32(vec4<u32>(13058u, 4294967295u, 4294967295u, 19152u), ~vec4<u32>(global2.x, var_1.x, 35998u, 11192u)) % 32u), global2.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.x, 35194u), firstTrailingBit(global2.yxw)), abs(_wgslsmith_add_u32(~var_1.x, var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~global2.x & ~global2.x));
    var var_1 = func_1() >> (max(_wgslsmith_mult_vec4_u32(~abs(vec4<u32>(u_input.c.x, 8478u, u_input.b, u_input.c.x)), vec4<u32>(21280u, 0u, global2.x, global2.x) << (func_3(Struct_2(global0[_wgslsmith_index_u32(global2.x, 1u)], Struct_1(vec4<u32>(global2.x, 4294967295u, u_input.b, u_input.b), false, global1[_wgslsmith_index_u32(1u, 5u)], u_input.d, false), Struct_1(vec4<u32>(u_input.b, global2.x, 38773u, 2716u), true, vec4<bool>(true, true, true, false), u_input.d, true))) % vec4<u32>(32u))), abs(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, u_input.c.x, global2.x, 58116u), vec4<u32>(u_input.b, u_input.c.x, 4294967295u, 0u)))) % vec4<u32>(32u));
    let var_2 = global1[_wgslsmith_index_u32(1u, 5u)];
    var var_3 = select(~var_1.x, _wgslsmith_div_u32(_wgslsmith_div_u32(~1u, func_1().x), global2.x), var_2.x);
    var_3 = abs(u_input.b);
    var var_4 = any(!var_2.xy);
    var_0 = ~_wgslsmith_mod_u32(1u, var_1.x);
    let var_5 = vec4<bool>((var_2.x && var_2.x) && var_2.x, !(2147483647i > ~u_input.a.x), var_2.x, !var_2.x);
    var var_6 = 0i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(max(u_input.a.x, -_wgslsmith_mult_i32(0i, u_input.a.x)), -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1071f, 572f, 345f)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-951f, -273f, 913f), vec3<f32>(1186f, -599f, 1000f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-733f, 637f, 1165f)))), _wgslsmith_clamp_vec2_i32(u_input.a.xw, ~vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(u_input.d.x, -2147483647i)), 26139i), u_input.a.wx), (u_input.d.x | u_input.d.x) & -u_input.a.x, func_1().xx);
}

