struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(-35990i, -7517i, -1i, -1i), vec4<i32>(i32(-2147483648), 1i, 70175i, -8492i), vec4<i32>(23038i, 0i, -11845i, 2147483647i), vec4<i32>(1i, -1i, -32706i, 0i), vec4<i32>(0i, i32(-2147483648), -5822i, -38986i), vec4<i32>(-23404i, 18713i, -10243i, -1i), vec4<i32>(12102i, 2147483647i, 0i, -1i), vec4<i32>(i32(-2147483648), -1i, 65788i, i32(-2147483648)), vec4<i32>(-1i, -1i, 3253i, 9382i), vec4<i32>(2147483647i, -20658i, 1i, 33165i), vec4<i32>(2147483647i, 1i, 54044i, 6734i), vec4<i32>(i32(-2147483648), 0i, -28253i, 1i), vec4<i32>(-29775i, 0i, -1i, -48210i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), -8735i), vec4<i32>(1i, 0i, 2147483647i, -1i), vec4<i32>(2147483647i, 60262i, -9653i, 60362i), vec4<i32>(2147483647i, -1i, -1i, 0i));

var<private> global1: array<f32, 7>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> vec3<bool> {
    let var_0 = ~max(vec3<u32>(arg_2, firstLeadingBit(arg_2) << (u_input.b % 32u), ~firstTrailingBit(21791u)), ~abs(vec3<u32>(0u, 11926u, u_input.b)) << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 38776u, 1u), vec3<u32>(0u, arg_2, arg_2), vec3<u32>(arg_2, 29108u, 19237u)) % vec3<u32>(32u)));
    let var_1 = Struct_1(4294967295u, -1847f, var_0.x < _wgslsmith_sub_u32(u_input.b, var_0.x ^ arg_2), select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), !all(vec3<bool>(false, true, true))), select(select(vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), any(vec2<bool>(true, true))), any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), false))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), 1i <= -u_input.a.x)));
    let var_2 = select(vec2<bool>(var_1.d.x, !(u_input.a.x <= u_input.a.x)), var_1.d.zy, var_1.c);
    global0 = array<vec4<i32>, 17>();
    let var_3 = Struct_2(global1[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 22952u, arg_2), _wgslsmith_div_vec3_u32(var_0, vec3<u32>(u_input.b, 58258u, 0u))) >> (var_1.a % 32u), u_input.b), 7u)]);
    return var_1.d;
}

fn func_2() -> vec4<bool> {
    let var_0 = vec3<u32>(firstLeadingBit(abs(firstTrailingBit(~32362u))), 12403u, u_input.b);
    var var_1 = var_0.x;
    var var_2 = Struct_1(var_0.x, 1370f, true, select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), func_3(Struct_2(135f), 721f, 4294967295u), all(vec4<bool>(false, false, false, true))), false), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, false)), !any(vec3<bool>(true, true, true))));
    var_2 = Struct_1(~(~firstLeadingBit(1u) | (u_input.b & ~26075u)), var_2.b, (-12850i << (var_0.x % 32u)) < u_input.a.x, var_2.d);
    let var_3 = ~u_input.a.x;
    return !(!vec4<bool>(true, ~1u != var_2.a, func_3(Struct_2(646f), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(11131u, 7u)], 496f), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 59620u, var_0.x, u_input.b), vec4<u32>(var_0.x, var_0.x, u_input.b, var_0.x))).x, true));
}

fn func_1() -> Struct_1 {
    global1 = array<f32, 7>();
    var var_0 = 70245u;
    var var_1 = select(func_2(), !vec4<bool>(true, any(vec3<bool>(false, false, false)) & any(vec3<bool>(false, false, true)), false, all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), false))), vec4<bool>(true, true, u_input.a.x != u_input.a.x, 23971u > ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 99152u), vec2<u32>(4547u, 16665u))));
    var_1 = vec4<bool>(false, false, func_2().x, any(vec4<bool>(false && all(var_1.yy), all(func_2().wx), var_1.x, (var_1.x && var_1.x) | false)));
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-412f, -1872f, 205f) * vec3<f32>(211f, global1[_wgslsmith_index_u32(u_input.b, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1392f, global1[_wgslsmith_index_u32(4294967295u, 7u)], -117f) + vec3<f32>(global1[_wgslsmith_index_u32(10183u, 7u)], 335f, 1041f))))))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(221f, -1755f, global1[_wgslsmith_index_u32(u_input.b, 7u)]))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(15056u, 7u)], -306f, global1[_wgslsmith_index_u32(u_input.b, 7u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b, 7u)], global1[_wgslsmith_index_u32(0u, 7u)], -823f), vec3<f32>(1106f, global1[_wgslsmith_index_u32(u_input.b, 7u)], global1[_wgslsmith_index_u32(u_input.b, 7u)])))))), vec3<bool>(true, _wgslsmith_div_u32(25587u, u_input.b >> (0u % 32u)) == u_input.b, false)));
    return Struct_1(0u, -1863f, var_1.x, select(var_1.zyw, vec3<bool>(!(u_input.a.x < u_input.a.x), true, var_1.x), var_1.zyx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32((1u >> (u_input.b % 32u)) & _wgslsmith_add_u32(u_input.b, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b, _wgslsmith_add_u32(1u, 1u), u_input.b), u_input.b)), 7u)];
    global0 = array<vec4<i32>, 17>();
    global1 = array<f32, 7>();
    var var_1 = ~u_input.a.wx;
    let var_2 = Struct_2(-764f);
    var var_3 = select(15255i, -22590i & _wgslsmith_clamp_i32(1i, _wgslsmith_add_i32(6729i, -var_1.x), 2147483647i), !all(vec3<bool>(true, true, true)));
    let var_4 = ~(-1i);
    var var_5 = func_1();
    let var_6 = ~vec3<u32>(reverseBits(u_input.b), _wgslsmith_mod_u32(~107734u, firstTrailingBit(select(u_input.b, 1u, var_5.c))), 38758u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1341f, global1[_wgslsmith_index_u32(0u, 7u)])))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(710f, var_5.b), vec2<f32>(var_5.b, -1384f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, var_5.b) * vec2<f32>(821f, var_2.a))))))));
}

