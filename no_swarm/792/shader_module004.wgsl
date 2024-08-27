struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<u32>(59951u, 4294967295u, 0u)), Struct_1(vec3<u32>(6305u, 18565u, 30858u)), Struct_1(vec3<u32>(119875u, 109353u, 0u)), Struct_1(vec3<u32>(1u, 13986u, 0u)), Struct_1(vec3<u32>(0u, 0u, 21226u)), Struct_1(vec3<u32>(20147u, 1u, 58941u)), Struct_1(vec3<u32>(16308u, 38341u, 1u)));

var<private> global1: u32;

var<private> global2: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(vec3<u32>(110798u, 0u, 66849u)), Struct_1(vec3<u32>(4294967295u, 39587u, 24912u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 17828u)), Struct_1(vec3<u32>(0u, 4294967295u, 0u)), Struct_1(vec3<u32>(31706u, 62511u, 4294967295u)), Struct_1(vec3<u32>(2275u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(28954u, 4294967295u, 0u)), Struct_1(vec3<u32>(3994u, 38706u, 0u)), Struct_1(vec3<u32>(0u, 11925u, 117512u)), Struct_1(vec3<u32>(4294967295u, 65574u, 0u)), Struct_1(vec3<u32>(4294967295u, 0u, 51225u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(vec3<u32>(32475u, 5751u, 0u)), Struct_1(vec3<u32>(4356u, 4294967295u, 49633u)), Struct_1(vec3<u32>(56716u, 59897u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 2829u, 6668u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(93616u, 90893u, 0u)), Struct_1(vec3<u32>(16398u, 40772u, 39290u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 25779u)), Struct_1(vec3<u32>(0u, 4294967295u, 1u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(vec3<u32>(1u, 1u, 7487u)), Struct_1(vec3<u32>(57633u, 1u, 4470u)), Struct_1(vec3<u32>(0u, 18013u, 15632u)), Struct_1(vec3<u32>(1u, 0u, 9857u)));

var<private> global3: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec3<u32>(1u, 37714u, 13464u)), Struct_1(vec3<u32>(48407u, 1u, 4294967295u)), Struct_1(vec3<u32>(0u, 9846u, 128665u)), Struct_1(vec3<u32>(4294967295u, 1u, 25321u)), Struct_1(vec3<u32>(0u, 26549u, 1u)), Struct_1(vec3<u32>(4294967295u, 41367u, 12643u)), Struct_1(vec3<u32>(0u, 27923u, 1u)), Struct_1(vec3<u32>(1u, 4294967295u, 0u)), Struct_1(vec3<u32>(0u, 1u, 2759u)), Struct_1(vec3<u32>(0u, 0u, 1u)), Struct_1(vec3<u32>(0u, 119543u, 41776u)), Struct_1(vec3<u32>(1u, 19679u, 16510u)), Struct_1(vec3<u32>(1u, 1u, 4400u)), Struct_1(vec3<u32>(1u, 7968u, 50048u)), Struct_1(vec3<u32>(0u, 10292u, 0u)), Struct_1(vec3<u32>(0u, 52641u, 26605u)), Struct_1(vec3<u32>(4294967295u, 52640u, 0u)), Struct_1(vec3<u32>(0u, 29592u, 4294967295u)), Struct_1(vec3<u32>(15316u, 0u, 1u)), Struct_1(vec3<u32>(1u, 4294967295u, 18533u)), Struct_1(vec3<u32>(0u, 34644u, 4294967295u)), Struct_1(vec3<u32>(32731u, 5987u, 18633u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> u32 {
    return reverseBits(select(min(arg_0.a.x, 1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 44738u), vec2<u32>(61633u, arg_1.a.x)), select(true, false, true))) & 21238u;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: u32, arg_3: vec2<i32>) -> vec3<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0)) * arg_0), _wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(1397f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -600f)))))), -581f, arg_0);
    let var_1 = global2[_wgslsmith_index_u32(0u, 26u)];
    global1 = _wgslsmith_mod_u32(func_3(Struct_1(var_1.a), global2[_wgslsmith_index_u32(arg_1.x, 26u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0, -978f, true)))), all(vec3<bool>(any(vec2<bool>(false, false)), false, true))), ~_wgslsmith_add_u32(arg_1.x, ~(~arg_1.x)));
    global1 = abs(max(abs(abs(u_input.b.x) ^ 1u), 1u));
    let var_2 = Struct_1(_wgslsmith_sub_vec3_u32(min(vec3<u32>(arg_1.x ^ arg_2, ~0u, u_input.b.x), _wgslsmith_div_vec3_u32(~var_1.a, vec3<u32>(arg_2, arg_2, 0u))), ~(vec3<u32>(var_1.a.x, arg_2, 84654u) & vec3<u32>(4294967295u, u_input.b.x, 4294967295u)) | vec3<u32>(70764u, _wgslsmith_div_u32(arg_2, 0u), arg_2)));
    return ~_wgslsmith_sub_vec3_u32(var_1.a, _wgslsmith_add_vec3_u32(~var_1.a >> (var_2.a % vec3<u32>(32u)), vec3<u32>(~arg_1.x, 1u >> (1u % 32u), var_2.a.x)));
}

fn func_1(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global2 = array<Struct_1, 26>();
    global3 = array<Struct_1, 22>();
    global0 = array<Struct_1, 7>();
    let var_0 = vec2<i32>(29233i, u_input.a & (~u_input.a ^ u_input.a));
    return Struct_1(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1059f + 1300f)), _wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, u_input.b.x)), vec2<u32>(6592u, u_input.b.x)), u_input.b.x, var_0) >> (~vec3<u32>(_wgslsmith_mod_u32(arg_1.a.x, 1u), ~4294967295u, _wgslsmith_add_u32(arg_0, arg_1.a.x)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.b.x, Struct_1(~abs(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) >> (vec3<u32>(13082u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)))));
    global3 = array<Struct_1, 22>();
    let var_1 = vec2<f32>(-596f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1715f)));
    var var_2 = Struct_1(var_0.a);
    var var_3 = 97848u;
    let var_4 = -reverseBits(-vec4<i32>(2147483647i, -112770i, -20320i & u_input.a, -u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_0.a.x, 4294967295u), 1u, ~74115u), vec3<u32>(15578u ^ var_2.a.x, u_input.b.x, var_2.a.x)), func_1(4294967295u, global0[_wgslsmith_index_u32(~4294967295u, 7u)]).a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), _wgslsmith_f_op_f32(-var_1.x), -2172f, _wgslsmith_f_op_f32(step(2466f, var_1.x))), vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(1292f, -1808f), -718f, var_1.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(606f, var_1.x, var_1.x, var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, -457f) + vec4<f32>(1000f, var_1.x, var_1.x, var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)));
}

