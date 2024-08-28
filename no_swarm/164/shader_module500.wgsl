struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec2<u32>, 23>;

var<private> global2: array<vec3<i32>, 17> = array<vec3<i32>, 17>(vec3<i32>(-21708i, 609i, i32(-2147483648)), vec3<i32>(-1i, 2147483647i, 26122i), vec3<i32>(-24745i, -20482i, -1i), vec3<i32>(-25845i, 52478i, -17597i), vec3<i32>(18804i, i32(-2147483648), i32(-2147483648)), vec3<i32>(2147483647i, 13773i, -1i), vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec3<i32>(-1i, 4909i, -13872i), vec3<i32>(-240i, -66134i, 1i), vec3<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec3<i32>(-1i, 1i, 1i), vec3<i32>(11190i, 1i, -1i), vec3<i32>(0i, i32(-2147483648), -1i), vec3<i32>(20966i, 1i, 38531i), vec3<i32>(-12683i, i32(-2147483648), -14682i), vec3<i32>(1i, 28068i, 2147483647i), vec3<i32>(45814i, 2055i, 2147483647i));

var<private> global3: array<bool, 5> = array<bool, 5>(true, true, false, true, false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec4<i32>) -> vec2<bool> {
    let var_0 = ~(_wgslsmith_add_u32(8997u, _wgslsmith_mult_u32(~arg_0.x, ~u_input.c)) & _wgslsmith_add_u32(arg_0.x, 4294967295u));
    let var_1 = _wgslsmith_div_i32(u_input.a.x, -(~(~u_input.a.x)));
    global0 = -var_1;
    global3 = array<bool, 5>();
    global0 = var_1;
    return select(!vec2<bool>(true, countOneBits(u_input.c) != 81990u), vec2<bool>(global3[_wgslsmith_index_u32(1u, 5u)], !global3[_wgslsmith_index_u32(_wgslsmith_div_u32(13019u, firstLeadingBit(arg_0.x)), 5u)]), vec2<bool>(-_wgslsmith_mult_i32(u_input.a.x, 1i) < _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, var_1, arg_2.x), u_input.a.yzw), ~(-33199i)), true));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: Struct_2) -> vec4<i32> {
    let var_0 = false;
    var var_1 = select(!(!func_3(vec4<u32>(1u, 56269u, u_input.c, 77601u) >> (vec4<u32>(23143u, 60911u, u_input.c, u_input.c) % vec4<u32>(32u)), u_input.c, u_input.a)), vec2<bool>(false, !(-914f >= arg_2.a)), select(!(!vec2<bool>(global3[_wgslsmith_index_u32(1u, 5u)], false)), select(select(!vec2<bool>(var_0, var_0), select(vec2<bool>(true, var_0), vec2<bool>(global3[_wgslsmith_index_u32(50684u, 5u)], var_0), var_0), func_3(vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), u_input.b.x, vec4<i32>(u_input.a.x, 73111i, 24519i, 0i)).x), func_3(~vec4<u32>(4294967295u, u_input.c, 0u, 4294967295u), firstTrailingBit(3936u), u_input.a), global3[_wgslsmith_index_u32((35382u & u_input.c) | ~4294967295u, 5u)]), any(vec4<bool>(true, var_0, var_0 & false, false))));
    var var_2 = _wgslsmith_dot_vec2_i32(~u_input.a.wy << (_wgslsmith_clamp_vec2_u32(~u_input.b.yx, u_input.b.xx, vec2<u32>(0u, u_input.c)) % vec2<u32>(32u)), ~select(-u_input.a.yy, reverseBits(vec2<i32>(-1810i, u_input.a.x)), !vec2<bool>(false, var_1.x))) >> (~21754u % 32u);
    var var_3 = arg_2;
    global1 = array<vec2<u32>, 23>();
    return vec4<i32>(abs(u_input.a.x), -u_input.a.x, 1i, 0i);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec2<u32>) -> bool {
    global0 = _wgslsmith_mult_i32(2147483647i, ~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(arg_0, arg_1, u_input.a.x, arg_0)), func_2(vec2<f32>(1000f, -695f), vec2<f32>(1759f, 600f), Struct_2(-187f)))) | arg_0;
    global2 = array<vec3<i32>, 17>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1600f - _wgslsmith_f_op_f32(-2168f * -101f)) + -3268f)));
    let var_1 = u_input.c < 0u;
    let var_2 = _wgslsmith_div_u32(_wgslsmith_mod_u32(select(~(~4294967295u), u_input.b.x, true), _wgslsmith_add_u32(u_input.c, _wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.b), _wgslsmith_clamp_vec3_u32(u_input.b, u_input.b, u_input.b)))), arg_2.x);
    return any(select(select(vec4<bool>(global3[_wgslsmith_index_u32(23468u, 5u)], global3[_wgslsmith_index_u32(69679u, 5u)], global3[_wgslsmith_index_u32(var_2, 5u)], global3[_wgslsmith_index_u32(u_input.b.x, 5u)]), select(vec4<bool>(var_1, global3[_wgslsmith_index_u32(var_2, 5u)], true, false), vec4<bool>(false, false, global3[_wgslsmith_index_u32(45959u, 5u)], global3[_wgslsmith_index_u32(u_input.c, 5u)]), false), vec4<bool>(true, var_1, false, true)), vec4<bool>(any(vec3<bool>(var_1, global3[_wgslsmith_index_u32(arg_2.x, 5u)], global3[_wgslsmith_index_u32(arg_2.x, 5u)])), global3[_wgslsmith_index_u32(42978u, 5u)] && false, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(u_input.c, arg_2.x)), 5u)], func_3(vec4<u32>(u_input.c, u_input.c, var_2, 15582u), arg_2.x, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 71502i)).x), u_input.b.x != 0u)) & (select(_wgslsmith_sub_u32(1u, max(u_input.b.x, 25823u)), u_input.b.x, all(vec4<bool>(var_1, global3[_wgslsmith_index_u32(var_2, 5u)], false, false))) > 27425u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!vec3<bool>(func_1(u_input.a.x, 1i, vec2<u32>(u_input.b.x, 4294967295u)), true, true)), vec3<bool>(all(vec4<bool>(global3[_wgslsmith_index_u32(~0u, 5u)], u_input.a.x >= u_input.a.x, global3[_wgslsmith_index_u32(max(u_input.b.x, u_input.c), 5u)], true)), !all(select(vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.b.x, 5u)], global3[_wgslsmith_index_u32(20498u, 5u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.c, 5u)], global3[_wgslsmith_index_u32(16727u, 5u)], global3[_wgslsmith_index_u32(45314u, 5u)]), vec3<bool>(global3[_wgslsmith_index_u32(49120u, 5u)], true, false))), !global3[_wgslsmith_index_u32(~u_input.b.x & abs(4294967295u), 5u)]), global3[_wgslsmith_index_u32(62558u, 5u)]);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 245f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-556f + _wgslsmith_f_op_f32(select(1000f, -158f, global3[_wgslsmith_index_u32(1u, 5u)])))), !(true && (u_input.a.x > -28123i)))), select(firstLeadingBit(16956u), _wgslsmith_sub_u32(4294967295u, u_input.b.x), !all(vec4<bool>(global3[_wgslsmith_index_u32(43526u, 5u)], false, true, global3[_wgslsmith_index_u32(4294967295u, 5u)]))), u_input.a.xx, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -1260f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a, 360f) + vec2<f32>(838f, -1671f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1249f, var_1.a), vec2<f32>(-1000f, var_1.a), true)), var_0.yz)) + _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.a, 155f))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a, 665f, -110f), vec3<f32>(var_1.a, var_1.a, var_1.a)))), vec3<f32>(-489f, -922f, _wgslsmith_f_op_f32(ceil(-1000f))), select(select(var_0, vec3<bool>(var_0.x, true, true), var_0), vec3<bool>(var_0.x, global3[_wgslsmith_index_u32(4294967295u, 5u)], var_0.x), var_0))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.a))), -476f, -1266f)));
}

