struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: Struct_2,
    d: u32,
    e: vec4<f32>,
}

struct Struct_5 {
    a: f32,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: array<vec2<u32>, 19> = array<vec2<u32>, 19>(vec2<u32>(25433u, 4294967295u), vec2<u32>(39487u, 12710u), vec2<u32>(1u, 29594u), vec2<u32>(12770u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(1u, 0u), vec2<u32>(58282u, 53244u), vec2<u32>(4294967295u, 48337u), vec2<u32>(0u, 17112u), vec2<u32>(90842u, 11572u), vec2<u32>(13104u, 33961u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 43899u), vec2<u32>(0u, 23496u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 31648u), vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u));

var<private> global2: f32;

var<private> global3: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2() -> Struct_4 {
    global3 = array<vec4<bool>, 31>();
    global3 = array<vec4<bool>, 31>();
    return Struct_4(global0[_wgslsmith_index_u32(4294967295u, 24u)], -56749i, Struct_2(4294967295u, vec4<i32>(u_input.b, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, -29893i, u_input.b, u_input.a), vec4<i32>(u_input.a, 12858i, -24784i, u_input.b)), u_input.b, u_input.b), Struct_1(~global1[_wgslsmith_index_u32(~48776u, 19u)], _wgslsmith_div_vec2_u32(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(~1u, 19u)]), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(34000u, 24u)] + global0[_wgslsmith_index_u32(54299u, 24u)]), 854f, true)), _wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(0i, u_input.b)), vec2<i32>(u_input.b, 23242i)), ~(~0u)), global3[_wgslsmith_index_u32(~29062u, 31u)]), min(71815u, 1u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 24u)]), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 1u), 24u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 24u)]), 2225f)))));
}

fn func_3(arg_0: Struct_4) -> Struct_1 {
    let var_0 = Struct_1(vec2<u32>(abs(arg_0.c.a), arg_0.d), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, 66716u), 19u)], _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(754f + global0[_wgslsmith_index_u32(countOneBits(0u), 24u)])), _wgslsmith_add_vec2_i32(vec2<i32>(-36960i, -(2147483647i & arg_0.b)), _wgslsmith_mult_vec2_i32(-vec2<i32>(arg_0.c.c.d.x, 5657i), ~vec2<i32>(5912i, -18986i))), firstLeadingBit(arg_0.d) >> (23695u % 32u));
    let var_1 = _wgslsmith_mod_vec2_i32(select(vec2<i32>(-1i) * -vec2<i32>(arg_0.b, -12673i), func_2().c.c.d, !arg_0.c.d.wy), vec2<i32>(~(-_wgslsmith_add_i32(var_0.d.x, -2147483647i)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(-vec3<i32>(1i, 55152i, -2147483647i), ~vec3<i32>(var_0.d.x, arg_0.b, 9113i)), _wgslsmith_sub_vec3_i32(arg_0.c.b.yzw, arg_0.c.b.yxz | vec3<i32>(var_0.d.x, -46878i, arg_0.b)))));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(func_2().c.a, 24u)] - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -318f))))), min(_wgslsmith_add_vec2_u32(~(vec2<u32>(var_0.a.x, arg_0.c.a) ^ var_0.a), var_0.b), global1[_wgslsmith_index_u32(20614u, 19u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_0.e, 24u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.a + var_0.c), _wgslsmith_f_op_f32(f32(-1f) * -1121f))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.c.a, 24u)]))) + arg_0.e.x));
    global1 = array<vec2<u32>, 19>();
    global3 = array<vec4<bool>, 31>();
    return var_0;
}

fn func_1() -> u32 {
    global1 = array<vec2<u32>, 19>();
    let var_0 = u_input.a;
    var var_1 = select(!select(vec2<bool>(true, false), vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), true)), vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(true, true, true)), select(true, true, any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)))));
    let var_2 = vec4<bool>(!var_1.x, !var_1.x, true, any(vec2<bool>(true, false)));
    let var_3 = Struct_3(func_3(func_2()), func_2().c.c, var_0);
    return var_3.a.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec3<u32>(reverseBits(~1u), _wgslsmith_add_u32(func_1() | 19203u, 0u), 1u);
    let var_1 = ~u_input.a;
    global2 = _wgslsmith_f_op_f32(-556f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~42754u, 24u)] * global0[_wgslsmith_index_u32(firstLeadingBit(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<u32>(var_0.x, 0u, 59080u, 9633u))), 24u)]));
    var var_2 = _wgslsmith_mod_vec3_i32(firstLeadingBit(abs(~vec3<i32>(u_input.b, var_1, var_1))), vec3<i32>(_wgslsmith_mod_i32(37516i, 48534i) ^ func_2().c.b.x, -_wgslsmith_sub_i32(u_input.b, u_input.b), -43130i)) << (var_0 % vec3<u32>(32u));
    var var_3 = vec2<bool>(_wgslsmith_sub_u32(func_3(Struct_4(global0[_wgslsmith_index_u32(26026u, 24u)], -2147483647i, Struct_2(1u, vec4<i32>(-5881i, var_2.x, -31088i, -1i), Struct_1(global1[_wgslsmith_index_u32(0u, 19u)], vec2<u32>(var_0.x, var_0.x), global0[_wgslsmith_index_u32(0u, 24u)], vec2<i32>(2536i, -307i), 0u), global3[_wgslsmith_index_u32(1u, 31u)]), 1u, vec4<f32>(global0[_wgslsmith_index_u32(71934u, 24u)], -803f, global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(var_0.x, 24u)]))).b.x, var_0.x) < _wgslsmith_mult_u32(var_0.x, ~(var_0.x ^ 0u)), true | any(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.x, var_0.x) >> ((var_0.x & var_0.x) % 32u), 31u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(74384u, 4294967295u, var_0.x, 30811u) ^ vec4<u32>(4562u, var_0.x, var_0.x, 133935u)), abs(min(vec4<u32>(1u, 1925u, 43630u, var_0.x), vec4<u32>(27173u, var_0.x, 48565u, 61893u)))), countOneBits(select(vec4<u32>(var_0.x, var_0.x, var_0.x, 4294967295u), vec4<u32>(79269u, 4294967295u, var_0.x, 16186u), true) ^ vec4<u32>(var_0.x, 4294967295u, var_0.x, 0u))));
}

