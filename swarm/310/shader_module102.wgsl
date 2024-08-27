struct Struct_1 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: u32,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
    c: u32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<u32>(29290u, 58481u), vec4<bool>(true, false, true, true)));

var<private> global2: vec2<f32>;

var<private> global3: vec2<bool> = vec2<bool>(true, false);

var<private> global4: array<f32, 15> = array<f32, 15>(-858f, 2107f, 579f, -869f, -116f, 1205f, -737f, -1199f, -1745f, -1099f, 1210f, -251f, -373f, -172f, 380f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    var var_0 = select(select(vec3<bool>(true, false, true), vec3<bool>(true, any(vec4<bool>(true, global3.x, true, global3.x)), global3.x), vec3<bool>(!(global3.x & global3.x), !(!global3.x), all(!vec2<bool>(global3.x, false)))), vec3<bool>(true, global3.x, global3.x), any(vec2<bool>(global3.x, any(vec3<bool>(global3.x, true, global3.x)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2.x)));
    let var_2 = u_input.d.x;
    let var_3 = Struct_2(u_input.a.x, false, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(reverseBits(u_input.a.yw), countOneBits(vec2<u32>(u_input.d.x, var_2))), _wgslsmith_sub_u32(0u & u_input.a.x, 0u)) >> (var_2 % 32u), 1u)], vec3<bool>(all(var_0.yz), false, var_0.x), global1[_wgslsmith_index_u32(4294967295u, 1u)]);
    global1 = array<Struct_1, 1>();
    return true | (!any(vec3<bool>(true, true, var_3.d.x)) | select(true, any(vec2<bool>(true, var_3.d.x)), false));
}

fn func_2() -> bool {
    let var_0 = Struct_1(~(~(~vec2<u32>(u_input.d.x, 1u) ^ vec2<u32>(1u, 0u))), vec4<bool>(!(func_3() != global3.x), global3.x, true, global4[_wgslsmith_index_u32(1u, 15u)] >= -786f));
    global1 = array<Struct_1, 1>();
    var var_1 = vec3<bool>(true, false, func_3());
    var var_2 = Struct_4(var_0.b.x || !global3.x);
    let var_3 = -_wgslsmith_sub_vec3_i32(reverseBits(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 802i, u_input.e), vec3<i32>(2147483647i, u_input.e, -42190i), vec3<i32>(u_input.e, 0i, u_input.b)))), _wgslsmith_mult_vec3_i32((vec3<i32>(-1i, u_input.e, 1i) >> (u_input.a.yxy % vec3<u32>(32u))) | ~vec3<i32>(-2905i, 2147483647i, u_input.c.x), vec3<i32>(2147483647i, _wgslsmith_mod_i32(2147483647i, u_input.c.x), select(u_input.c.x, 2147483647i, false))));
    return !(370f > _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, -165f))));
}

fn func_1(arg_0: Struct_2) -> vec4<bool> {
    let var_0 = arg_0;
    var var_1 = Struct_4(any(vec3<bool>(global3.x && true, var_0.e.b.x, func_2())));
    global2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1921f, _wgslsmith_f_op_f32(trunc(-1665f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -949f)) - _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, 1000f), vec2<f32>(global4[_wgslsmith_index_u32(arg_0.e.a.x, 15u)], global2.x))), vec2<f32>(global4[_wgslsmith_index_u32(~23471u, 15u)], _wgslsmith_f_op_f32(floor(global2.x)))))));
    global0 = var_1.a;
    global4 = array<f32, 15>();
    return vec4<bool>(var_0.c.a.x < 0u, false, var_0.e.a.x != u_input.a.x, !(-_wgslsmith_mult_i32(-1i, 2147483647i) <= u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 15>();
    var var_0 = Struct_2(firstLeadingBit(abs(1u)), !any(!vec3<bool>(global3.x, global3.x, global3.x)), global1[_wgslsmith_index_u32(u_input.d.x, 1u)], vec3<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(true, global3.x), vec2<bool>(global3.x, global3.x)), select(vec2<bool>(global3.x, global3.x), vec2<bool>(false, false), vec2<bool>(true, true)), !global3.x)), false, !global3.x), Struct_1(abs(abs(select(u_input.d, u_input.a.xy, global3.x))), !select(!vec4<bool>(true, true, false, global3.x), vec4<bool>(false, global3.x, false, global3.x), func_1(Struct_2(0u, global3.x, global1[_wgslsmith_index_u32(u_input.d.x, 1u)], vec3<bool>(false, true, global3.x), global1[_wgslsmith_index_u32(u_input.a.x, 1u)])))));
    let var_1 = Struct_4(abs(_wgslsmith_mod_u32(4294967295u ^ var_0.a, ~var_0.a)) != (_wgslsmith_mult_u32(4294967295u, 1u) << ((~u_input.d.x >> (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, 35271u, 0u, 40215u)) % 32u)) % 32u)));
    global1 = array<Struct_1, 1>();
    global4 = array<f32, 15>();
    let var_2 = Struct_5(Struct_2(reverseBits(19108u), var_0.e.b.x, global1[_wgslsmith_index_u32(33773u, 1u)], func_1(Struct_2(15930u >> (var_0.e.a.x % 32u), true, global1[_wgslsmith_index_u32(1u, 1u)], vec3<bool>(global3.x, var_0.b, false), global1[_wgslsmith_index_u32(var_0.e.a.x | 0u, 1u)])).zxy, Struct_1(_wgslsmith_sub_vec2_u32(~u_input.a.yw, var_0.c.a), vec4<bool>(true, !var_1.a, true, u_input.c.x <= 9372i))), Struct_3(vec3<bool>(true, true, var_0.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(~var_0.a, 15u)], 911f, _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(var_0.e.a.x, 15u)])), global4[_wgslsmith_index_u32(firstTrailingBit(var_0.a), 15u)])), var_0.e.a.x, Struct_2(min(65142u, var_0.e.a.x) >> (~u_input.a.x % 32u), global3.x, Struct_1(u_input.d, var_0.c.b), !vec3<bool>(false, global3.x, false), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(var_0.e.a.x, u_input.a.x)), 1u)]), select(vec4<i32>(_wgslsmith_mult_i32(0i, u_input.e), _wgslsmith_sub_i32(u_input.e, 42347i), u_input.b, 0i), vec4<i32>(-93556i, -47122i, ~(-1i), i32(-1i) * -2147483647i), var_0.e.b)), _wgslsmith_div_u32(abs(~(~1u)), u_input.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(~u_input.e, 1i, u_input.b, max(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 16352i, -6302i, -30094i), vec4<i32>(-47408i, 1i, 1i, u_input.e)), firstTrailingBit(u_input.e))), vec4<i32>(~u_input.e, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.b, 7823i), u_input.c), ~u_input.b, u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(var_2.b.b)))), var_2.b.b))));
}

