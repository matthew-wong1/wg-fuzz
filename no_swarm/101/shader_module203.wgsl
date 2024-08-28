struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<bool, 23> = array<bool, 23>(false, false, false, false, false, false, false, false, true, true, true, false, false, false, true, false, false, true, true, true, false, false, true);

var<private> global2: vec2<i32> = vec2<i32>(i32(-2147483648), 2147483647i);

var<private> global3: vec2<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: f32) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec3_i32((vec3<i32>(-1i) * -vec3<i32>(-63988i, 24284i, 1796i)) | abs(~vec3<i32>(global2.x, -9158i, global2.x)), vec3<i32>(reverseBits(global2.x), firstTrailingBit(global2.x), global2.x) | vec3<i32>(_wgslsmith_mult_i32(global2.x, global2.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, global2.x), vec2<i32>(-33357i, global2.x)), i32(-1i) * -85670i)) << (13551u % 32u);
    var var_1 = Struct_3(Struct_2(Struct_1(i32(-1i) * -5002i, ~abs(vec3<u32>(28832u, 4294967295u, 1u)), _wgslsmith_mult_i32(49103i << (u_input.a.x % 32u), global2.x)), Struct_1(_wgslsmith_clamp_i32(1i, reverseBits(var_0), countOneBits(var_0)), vec3<u32>(~4294967295u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 35825u), -1i)), -483f, Struct_1(min(38860i, _wgslsmith_sub_i32(var_0, 23029i)) | ~abs(1i), vec3<u32>(u_input.a.x, 1u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)), 5721i));
    global1 = array<bool, 23>();
    global1 = array<bool, 23>();
    return var_1.a;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_4) -> vec3<u32> {
    global3 = select(global0.yz, vec2<bool>(global3.x, all(!(!vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global3.x, global3.x, arg_2.c)))), any(vec4<bool>(arg_2.c, false, all(!vec4<bool>(true, false, global3.x, arg_2.c)), _wgslsmith_clamp_i32(arg_1.a, -1i, arg_0.a.c) <= _wgslsmith_mod_i32(-1i, 2147483647i))));
    global3 = vec2<bool>(!any(vec3<bool>(false, true, any(vec4<bool>(true, false, global0.x, global3.x)))), true);
    let var_0 = !select(!select(select(vec3<bool>(arg_2.c, false, global1[_wgslsmith_index_u32(3483u, 23u)]), vec3<bool>(false, true, true), global1[_wgslsmith_index_u32(49846u, 23u)]), !vec3<bool>(true, false, global1[_wgslsmith_index_u32(arg_2.b.c.b.x, 23u)]), true), vec3<bool>(true, any(vec4<bool>(global3.x, arg_2.c, true, global1[_wgslsmith_index_u32(arg_2.b.c.b.x, 23u)])), global1[_wgslsmith_index_u32(~max(8935u, u_input.a.x), 23u)]), vec3<bool>(true, true, global3.x != true));
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-764f + arg_2.b.b), arg_2.b.b, arg_2.a, arg_2.b.b), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1529f, 111f, arg_2.b.b, 502f)))), vec4<bool>(arg_2.c, true, global3.x, all(vec4<bool>(true, true, true, true))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, arg_2.b.b, -734f, arg_2.b.b))))));
    global1 = array<bool, 23>();
    return ~arg_1.b;
}

fn func_1(arg_0: bool) -> u32 {
    var var_0 = ~max(~(~(vec3<i32>(global2.x, -1827i, global2.x) << (vec3<u32>(u_input.a.x, u_input.a.x, 1u) % vec3<u32>(32u)))), ~vec3<i32>(global2.x, global2.x ^ global2.x, 17021i));
    var_0 = -(vec3<i32>(4744i, -2147483647i, _wgslsmith_mult_i32(global2.x, max(global2.x, 8180i))) << (min(~firstTrailingBit(vec3<u32>(112413u, u_input.a.x, u_input.a.x)), func_3(func_2(814f), func_2(-487f).a, Struct_4(-1109f, Struct_3(Struct_2(Struct_1(-2147483647i, vec3<u32>(4294967295u, 53967u, u_input.a.x), 19841i), Struct_1(global2.x, vec3<u32>(u_input.a.x, 26075u, u_input.a.x), 12126i)), 1626f, Struct_1(0i, vec3<u32>(1u, u_input.a.x, 4294967295u), 2147483647i)), global1[_wgslsmith_index_u32(u_input.a.x, 23u)], var_0.xy))) % vec3<u32>(32u)));
    global0 = !select(vec3<bool>(false, false, true), select(vec3<bool>(global0.x, !global3.x, !global3.x), vec3<bool>(!global0.x, true, !global1[_wgslsmith_index_u32(u_input.a.x, 23u)]), true), !vec3<bool>(all(vec2<bool>(arg_0, false)), global0.x, true & arg_0));
    let var_1 = any(!select(vec4<bool>(global3.x, !global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global0.x, arg_0 && false), select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 23u)], global0.x, false, false), select(vec4<bool>(false, false, global3.x, true), vec4<bool>(true, global0.x, true, global1[_wgslsmith_index_u32(0u, 23u)]), true), true), !(-1i < global2.x)));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec3<bool>(true, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(min(func_1(false), 4294967295u), ~12456u), 23u)], !all(vec4<bool>(global0.x, global3.x, true, false))), select(vec3<bool>(any(!global0.xy), all(select(vec4<bool>(global3.x, false, false, global0.x), vec4<bool>(global0.x, global3.x, global0.x, true), global1[_wgslsmith_index_u32(56104u, 23u)])), true), vec3<bool>(global1[_wgslsmith_index_u32(0u, 23u)], all(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global0.x)), all(!vec4<bool>(false, false, global3.x, global0.x))), vec3<bool>(!all(vec4<bool>(true, true, global3.x, global3.x)), all(vec4<bool>(global0.x, true, true, false)), !global1[_wgslsmith_index_u32(u_input.a.x, 23u)] | true)), any(!(!vec4<bool>(global0.x, true, global1[_wgslsmith_index_u32(u_input.a.x, 23u)], global1[_wgslsmith_index_u32(u_input.a.x, 23u)]))) && (true || global0.x));
    let var_0 = func_2(-241f).a;
    var var_1 = ~(~_wgslsmith_div_u32(var_0.b.x, _wgslsmith_dot_vec3_u32(var_0.b, var_0.b))) | ~var_0.b.x;
    var var_2 = Struct_4(-570f, Struct_3(Struct_2(var_0, var_0), _wgslsmith_f_op_f32(abs(-288f)), func_2(-631f).b), true, _wgslsmith_mod_vec2_i32(~(~(vec2<i32>(global2.x, var_0.a) ^ vec2<i32>(var_0.a, global2.x))), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(global2.x, global2.x), vec2<i32>(0i, global2.x)), -vec2<i32>(-32637i, 1i)) | vec2<i32>(16214i, 0i)));
    var var_3 = ~(~(firstLeadingBit(abs(vec4<u32>(u_input.a.x, var_2.b.a.b.b.x, var_0.b.x, u_input.a.x))) | ~vec4<u32>(u_input.a.x, u_input.a.x, var_0.b.x, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(var_3.x, min(~var_2.b.c.b.x, var_2.b.c.b.x << (var_3.x % 32u))) | ~func_3(var_2.b.a, Struct_1(22623i, vec3<u32>(110826u, var_2.b.c.b.x, var_2.b.c.b.x), var_0.a), Struct_4(-685f, var_2.b, false, var_2.d)).x, ~50872u, vec2<u32>(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(10195u, u_input.a.x), var_2.b.c.b.xy), ~(var_0.b.zz & vec2<u32>(0u, 4294967295u)))), -408f, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a), var_2.a))), var_2.a, _wgslsmith_div_f32(-1286f, 767f), _wgslsmith_f_op_f32(f32(-1f) * -1533f)));
}

