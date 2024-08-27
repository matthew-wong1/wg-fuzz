struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 31>;

var<private> global1: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(-18384i, 37894i), vec2<i32>(21715i, -30301i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(72299i, 1i), vec2<i32>(0i, 9070i), vec2<i32>(0i, 18899i), vec2<i32>(2147483647i, 0i), vec2<i32>(8827i, -45044i), vec2<i32>(i32(-2147483648), 957i), vec2<i32>(-17045i, -4109i), vec2<i32>(18100i, 15351i), vec2<i32>(-36077i, 2147483647i), vec2<i32>(11000i, 9086i), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, 0i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-7474i, -46919i), vec2<i32>(i32(-2147483648), 26826i), vec2<i32>(i32(-2147483648), -1033i), vec2<i32>(-60253i, -29542i), vec2<i32>(1i, 0i), vec2<i32>(2147483647i, 56869i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(0i, -75617i), vec2<i32>(i32(-2147483648), i32(-2147483648)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_3 {
    global0 = array<Struct_2, 31>();
    global1 = array<vec2<i32>, 26>();
    let var_0 = ~16788i;
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    return Struct_3(arg_2.a);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_3, arg_3: i32) -> bool {
    global0 = array<Struct_2, 31>();
    global1 = array<vec2<i32>, 26>();
    var var_0 = func_2(~33656u, arg_0.b.x, Struct_3(arg_0.a != true), arg_1);
    global0 = array<Struct_2, 31>();
    global0 = array<Struct_2, 31>();
    return true;
}

fn func_3(arg_0: Struct_4) -> vec2<i32> {
    var var_0 = Struct_5(firstLeadingBit(4294967295u));
    var_0 = Struct_5(var_0.a);
    var var_1 = true;
    global1 = array<vec2<i32>, 26>();
    global1 = array<vec2<i32>, 26>();
    return global1[_wgslsmith_index_u32(var_0.a, 26u)] ^ u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 31>();
    var var_0 = vec4<bool>(!(true | (any(vec2<bool>(true, true)) && true)), all(select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), any(vec2<bool>(true, true)) || func_1(Struct_4(false, vec2<f32>(-1028f, 1419f)), Struct_2(vec3<u32>(24345u, 41361u, 53890u), Struct_1(34335u, 964f)), Struct_3(false), u_input.b.x))), ~u_input.a.x > _wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(abs(u_input.b.x), 37812i, 1i)), true);
    var var_1 = Struct_5(select(4294967295u, 11594u << (1u % 32u), all(select(select(vec4<bool>(false, false, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(false, false, false, var_0.x)), select(vec4<bool>(false, var_0.x, false, true), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false)), var_0.x))));
    let var_2 = func_3(Struct_4(var_0.x, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-139f, 1330f)) - vec2<f32>(273f, -538f)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(201f, -1236f), vec2<f32>(-1062f, -502f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-862f, 451f))))))));
    global1 = array<vec2<i32>, 26>();
    var var_3 = Struct_2(_wgslsmith_mult_vec3_u32(select(_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(0u, 2910u, 51002u)), ~vec3<u32>(30580u, var_1.a, var_1.a), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.a, 0u, var_1.a), vec3<u32>(0u, var_1.a, var_1.a))), _wgslsmith_add_vec3_u32(vec3<u32>(32039u, 1u, 4294967295u) >> (vec3<u32>(56752u, var_1.a, 1u) % vec3<u32>(32u)), select(vec3<u32>(var_1.a, var_1.a, var_1.a), vec3<u32>(16685u, var_1.a, 14519u), var_0.wzz)), select(var_0.wxz, !var_0.yzw, var_0.yzw)), vec3<u32>(~_wgslsmith_div_u32(39248u, var_1.a), ~0u, 0u)), Struct_1(~(~var_1.a >> (var_1.a % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1838f, -716f))))));
    var_0 = select(select(!vec4<bool>(var_0.x | var_0.x, var_3.b.b != var_3.b.b, var_3.a.x == var_1.a, var_3.b.a != var_1.a), select(!(!vec4<bool>(true, var_0.x, var_0.x, false)), !select(vec4<bool>(var_0.x, true, true, true), vec4<bool>(true, false, var_0.x, var_0.x), false), all(vec3<bool>(var_0.x, false, var_0.x)) & true), vec4<bool>(!(false | var_0.x), all(vec3<bool>(true, false, true)), any(!var_0.wzx), false)), select(vec4<bool>(var_0.x, var_0.x, false, true), vec4<bool>(true, !any(vec4<bool>(true, var_0.x, true, false)), (u_input.a.x | var_2.x) >= u_input.a.x, all(var_0.wz)), false), !vec4<bool>(!all(vec4<bool>(var_0.x, true, false, false)), true, true, abs(var_3.b.a) != var_3.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1019f, _wgslsmith_f_op_f32(var_3.b.b + -540f)), _wgslsmith_f_op_f32(f32(-1f) * -748f), _wgslsmith_f_op_f32(-887f - _wgslsmith_f_op_f32(sign(var_3.b.b))), _wgslsmith_f_op_f32(-var_3.b.b))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_3.b.b, _wgslsmith_f_op_f32(f32(-1f) * -287f), 244f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.b, var_3.b.b, var_3.b.b))), false)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.b.b))), _wgslsmith_f_op_f32(f32(-1f) * -569f)))), ~(_wgslsmith_dot_vec2_i32(vec2<i32>(-17097i, u_input.b.x), countOneBits(global1[_wgslsmith_index_u32(var_3.b.a, 26u)])) << ((_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, var_3.b.a), vec2<u32>(var_3.b.a, 14572u)) & ~var_3.b.a) % 32u)));
}

