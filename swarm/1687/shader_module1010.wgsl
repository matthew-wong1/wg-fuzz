struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<u32>(39073u, 1u), vec2<i32>(70876i, -59963i)), -843f);

var<private> global1: array<i32, 2> = array<i32, 2>(24212i, -25290i);

var<private> global2: array<u32, 10>;

var<private> global3: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(Struct_1(vec2<u32>(3277u, 0u), vec2<i32>(-1i, -49199i)), -1634f), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<i32>(-1i, -44363i)), 1410f), Struct_2(Struct_1(vec2<u32>(67342u, 87160u), vec2<i32>(4821i, 2147483647i)), -2081f), Struct_2(Struct_1(vec2<u32>(40761u, 2733u), vec2<i32>(-47766i, 1i)), 1000f), Struct_2(Struct_1(vec2<u32>(21158u, 0u), vec2<i32>(241i, i32(-2147483648))), -132f), Struct_2(Struct_1(vec2<u32>(69785u, 18567u), vec2<i32>(2147483647i, 22264i)), -452f), Struct_2(Struct_1(vec2<u32>(38762u, 76997u), vec2<i32>(-17134i, 0i)), 746f), Struct_2(Struct_1(vec2<u32>(1u, 3700u), vec2<i32>(20913i, 1i)), -2226f), Struct_2(Struct_1(vec2<u32>(0u, 20210u), vec2<i32>(2147483647i, 1i)), 1000f), Struct_2(Struct_1(vec2<u32>(1u, 80370u), vec2<i32>(-9874i, 2147483647i)), 2009f), Struct_2(Struct_1(vec2<u32>(4294967295u, 6651u), vec2<i32>(-12717i, -46760i)), 1000f));

var<private> global4: Struct_3;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = Struct_3(_wgslsmith_sub_vec4_u32(~(vec4<u32>(global0.a.a.x, 21052u, 22958u, 52486u) | vec4<u32>(global0.a.a.x, 0u, global2[_wgslsmith_index_u32(383u, 10u)], 26398u)), vec4<u32>(countOneBits(firstTrailingBit(global2[_wgslsmith_index_u32(34512u, 10u)])), _wgslsmith_dot_vec2_u32(~global0.a.a, ~vec2<u32>(16616u, global0.a.a.x)), 1u, countOneBits(0u))), vec4<bool>(-34551i < (_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, -29918i, -6537i), vec4<i32>(39018i, 4559i, global0.a.b.x, global0.a.b.x)) ^ -u_input.b), all(select(vec2<bool>(true, global4.b.x), global4.b.wx, true)) || !global4.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(528f * global0.b)) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -544f), _wgslsmith_f_op_f32(global0.b + global4.c.b)), !(_wgslsmith_f_op_f32(717f + global4.d.b) < _wgslsmith_f_op_f32(floor(global4.d.b)))), global4.d, global4.c, _wgslsmith_dot_vec4_i32(reverseBits(max(vec4<i32>(global1[_wgslsmith_index_u32(103464u, 2u)], 1i, -37422i, 2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(-13071i, global0.a.b.x, global0.a.b.x, -1i), vec4<i32>(2147483647i, global0.a.b.x, -18400i, -10717i)))), _wgslsmith_mult_vec4_i32(vec4<i32>(52296i | u_input.d.x, i32(-1i) * -34859i, select(global1[_wgslsmith_index_u32(global0.a.a.x, 2u)], u_input.a, false), -1i), vec4<i32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global4.d.a.a, vec2<u32>(21644u, u_input.e)), 2u)], global0.a.b.x, 1i, abs(global1[_wgslsmith_index_u32(global4.a.x, 2u)])))));
    let var_1 = select(i32(-1i) * -1i, global4.d.a.b.x, true);
    global4 = Struct_3(_wgslsmith_mod_vec4_u32(~select(~vec4<u32>(4294967295u, 4294967295u, 0u, 39937u), min(vec4<u32>(global0.a.a.x, u_input.c, u_input.e, global2[_wgslsmith_index_u32(var_0.d.a.a.x, 10u)]), vec4<u32>(101603u, global0.a.a.x, var_0.c.a.a.x, 24350u)), vec4<bool>(var_0.b.x, true, global4.b.x, true)), select(abs(var_0.a), min(min(vec4<u32>(global2[_wgslsmith_index_u32(4539u, 10u)], global2[_wgslsmith_index_u32(40322u, 10u)], var_0.c.a.a.x, 0u), var_0.a), var_0.a), !var_0.b)), vec4<bool>(false, var_0.b.x, var_1 <= var_0.e, false), global3[_wgslsmith_index_u32(~1u, 11u)], Struct_2(Struct_1(~(~vec2<u32>(1u, 1u)), vec2<i32>(u_input.b, global1[_wgslsmith_index_u32(var_0.a.x, 2u)]) ^ ~global0.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c.b, global0.b)) - _wgslsmith_f_op_f32(trunc(1000f))) * -229f)), _wgslsmith_mult_i32(max(var_0.c.a.b.x, -2147483647i), -global0.a.b.x) | -u_input.a);
    let var_2 = Struct_3(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e, abs(4294967295u), global0.a.a.x, global4.a.x & global2[_wgslsmith_index_u32(1u, 10u)]), vec4<u32>(u_input.e ^ 0u, global2[_wgslsmith_index_u32(19663u, 10u)], min(u_input.c, 0u), _wgslsmith_mult_u32(global4.a.x, var_0.c.a.a.x))), vec4<bool>(!(global4.b.x == !var_0.b.x), var_0.b.x, all(!select(vec2<bool>(var_0.b.x, global4.b.x), vec2<bool>(true, var_0.b.x), global4.b.x)), !all(select(var_0.b.zxy, vec3<bool>(global4.b.x, global4.b.x, false), vec3<bool>(var_0.b.x, global4.b.x, var_0.b.x)))), var_0.c, Struct_2(Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.d.a.a.x, global4.d.a.a.x), var_0.c.a.a), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(global0.a.a.x, 10u)], global4.d.a.a.x)), ~vec2<i32>(-20267i, u_input.b)), _wgslsmith_f_op_f32(f32(-1f) * -161f)), 2147483647i);
    var var_3 = select(vec2<bool>(false, var_0.b.x || (_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.a.b.x, var_2.e, 0i), vec3<i32>(2312i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global4.d.a.a.x, 10u)], 2u)], u_input.a)) > -1i)), !(!(!vec2<bool>(false, var_2.b.x))), var_2.b.x);
    return var_0.c.a.a.x;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_3(vec4<u32>(_wgslsmith_add_u32(global4.a.x, 40887u & global4.c.a.a.x), max(~(0u >> (global0.a.a.x % 32u)), reverseBits(func_3())), 1u, countOneBits(59605u)), global4.b, Struct_2(global0.a, 625f), global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(~(~81897u), global4.c.a.a.x), 11u)], -33987i);
    global3 = array<Struct_2, 11>();
    global1 = array<i32, 2>();
    var var_1 = firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(select(var_0.c.a.a.x, global4.d.a.a.x >> (4294967295u % 32u), true), min(~global2[_wgslsmith_index_u32(global0.a.a.x, 10u)], 1u), var_0.d.a.a.x, 0u), vec4<u32>(1u, global4.a.x, global2[_wgslsmith_index_u32(global0.a.a.x, 10u)], global2[_wgslsmith_index_u32(abs(52862u), 10u)])));
    var var_2 = var_0.d;
    return Struct_2(Struct_1(var_2.a.a, vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, global4.d.a.b.x, 12674i, 5102i), ~vec4<i32>(global4.d.a.b.x, u_input.b, 0i, 2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(22885i, -1i), vec2<i32>(global4.c.a.b.x, 2147483647i) >> (var_1.yy % vec2<u32>(32u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1408f)))) - _wgslsmith_f_op_f32(f32(-1f) * -792f))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = func_2().a;
    var var_1 = Struct_2(func_2().a, 235f);
    let var_2 = var_0.a.x;
    global2 = array<u32, 10>();
    global1 = array<i32, 2>();
    return global4.b.yzy;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<u32>) -> Struct_2 {
    global1 = array<i32, 2>();
    var var_0 = select(select(vec3<bool>(false, global4.b.x, global4.b.x), vec3<bool>(global4.b.x, true, all(!global4.b)), false), func_4(func_2(), true, global4.b.zyx, func_2().a), vec3<bool>(all(global4.b.yw), !(true || !global4.b.x), !global4.b.x));
    global1 = array<i32, 2>();
    var var_1 = 22082i;
    let var_2 = global4.b.x & false;
    return global3[_wgslsmith_index_u32(arg_1.x, 11u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 2>();
    var var_0 = Struct_3(vec4<u32>(_wgslsmith_mod_u32(u_input.e | 0u, select(global2[_wgslsmith_index_u32(u_input.e, 10u)], global0.a.a.x, global4.b.x)) ^ _wgslsmith_div_u32(_wgslsmith_mult_u32(global0.a.a.x, global2[_wgslsmith_index_u32(0u, 10u)]), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 10u)] | 0u, 10u)]), 0u, global4.d.a.a.x, u_input.e), global4.b, func_1(global4.c.a.a, global4.a << (vec4<u32>(u_input.e & global2[_wgslsmith_index_u32(global0.a.a.x, 10u)], global4.d.a.a.x ^ global0.a.a.x, 1u, _wgslsmith_div_u32(39109u, global4.c.a.a.x)) % vec4<u32>(32u))), Struct_2(Struct_1(select(vec2<u32>(global4.d.a.a.x, global0.a.a.x), global4.d.a.a, !vec2<bool>(global4.b.x, true)), global0.a.b), -972f), global0.a.b.x);
    let var_1 = vec3<bool>(!(all(vec2<bool>(true, false)) | true), global4.b.x, true);
    global3 = array<Struct_2, 11>();
    let var_2 = global4.b.x;
    global0 = func_2();
    global1 = array<i32, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_i32(global4.c.a.b, ~((vec2<i32>(1i, 1i) & global4.d.a.b) ^ _wgslsmith_mod_vec2_i32(global4.d.a.b, vec2<i32>(var_0.d.a.b.x, 23511i)))), vec3<i32>(global0.a.b.x, global1[_wgslsmith_index_u32(u_input.c, 2u)], ~4022i), -1i);
}

