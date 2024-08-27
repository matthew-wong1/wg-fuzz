struct Struct_1 {
    a: bool,
    b: bool,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(i32(-2147483648), Struct_2(false, vec4<i32>(-1i, -1i, -22453i, -7696i)), Struct_1(true, false, 1u, -1i, vec4<u32>(14274u, 52297u, 1u, 26049u))), Struct_3(2807i, Struct_2(false, vec4<i32>(-23967i, 2147483647i, -1i, 1i)), Struct_1(true, true, 52195u, -1i, vec4<u32>(4294967295u, 4294967295u, 1u, 49766u))), Struct_3(2147483647i, Struct_2(false, vec4<i32>(-1i, 32869i, -21918i, -33044i)), Struct_1(false, true, 0u, i32(-2147483648), vec4<u32>(19835u, 0u, 4294967295u, 0u))), Struct_3(-4800i, Struct_2(false, vec4<i32>(-42181i, 0i, 66333i, 1i)), Struct_1(true, false, 72379u, -1i, vec4<u32>(1u, 12363u, 1809u, 51108u))), Struct_3(-120i, Struct_2(false, vec4<i32>(1i, -1128i, i32(-2147483648), 1i)), Struct_1(true, true, 0u, -1i, vec4<u32>(27212u, 1u, 8466u, 6889u))), Struct_3(2147483647i, Struct_2(true, vec4<i32>(38001i, -22619i, 4373i, -78097i)), Struct_1(false, false, 60107u, i32(-2147483648), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 7418u))), Struct_3(2147483647i, Struct_2(true, vec4<i32>(1i, 2147483647i, -1i, 30283i)), Struct_1(true, true, 7612u, 9313i, vec4<u32>(1u, 49960u, 0u, 9391u))), Struct_3(-19180i, Struct_2(true, vec4<i32>(i32(-2147483648), 25015i, 2147483647i, -33974i)), Struct_1(true, true, 11781u, 0i, vec4<u32>(15678u, 1u, 26288u, 7230u))), Struct_3(66731i, Struct_2(true, vec4<i32>(0i, 12103i, -3888i, 67053i)), Struct_1(false, false, 5815u, 0i, vec4<u32>(48070u, 935u, 63274u, 0u))), Struct_3(0i, Struct_2(false, vec4<i32>(40801i, 2147483647i, -1855i, -34499i)), Struct_1(false, false, 4294967295u, 1i, vec4<u32>(4294967295u, 35995u, 0u, 65723u))), Struct_3(-39727i, Struct_2(true, vec4<i32>(-2589i, -1i, i32(-2147483648), -31403i)), Struct_1(false, false, 0u, 2147483647i, vec4<u32>(1u, 4294967295u, 1u, 14472u))), Struct_3(1i, Struct_2(true, vec4<i32>(-9470i, -1i, 42209i, -68398i)), Struct_1(false, true, 0u, 16344i, vec4<u32>(4294967295u, 0u, 52221u, 1u))), Struct_3(29771i, Struct_2(true, vec4<i32>(2147483647i, -15255i, 44637i, 1i)), Struct_1(true, false, 53060u, 1i, vec4<u32>(41273u, 4294967295u, 20952u, 15734u))), Struct_3(-31976i, Struct_2(true, vec4<i32>(-6736i, 25331i, 2147483647i, 1546i)), Struct_1(true, false, 42834u, -67813i, vec4<u32>(0u, 50377u, 24362u, 24113u))), Struct_3(-5334i, Struct_2(false, vec4<i32>(-18815i, 0i, 2147483647i, -72392i)), Struct_1(false, false, 4294967295u, 1i, vec4<u32>(1u, 4294967295u, 4294967295u, 12059u))), Struct_3(14654i, Struct_2(true, vec4<i32>(60666i, -1i, -29708i, -1i)), Struct_1(false, false, 4294967295u, 1i, vec4<u32>(77508u, 4294967295u, 19999u, 9800u))), Struct_3(2147483647i, Struct_2(false, vec4<i32>(i32(-2147483648), 8191i, 2147483647i, -13695i)), Struct_1(false, true, 56939u, -14863i, vec4<u32>(58029u, 32162u, 1u, 139877u))), Struct_3(i32(-2147483648), Struct_2(true, vec4<i32>(2147483647i, -1i, 2147483647i, 2147483647i)), Struct_1(false, false, 4294967295u, 2147483647i, vec4<u32>(5625u, 11622u, 0u, 4294967295u))));

var<private> global1: array<vec4<u32>, 17> = array<vec4<u32>, 17>(vec4<u32>(0u, 1u, 4294967295u, 0u), vec4<u32>(4273u, 4197u, 1635u, 1u), vec4<u32>(19409u, 4294967295u, 34217u, 0u), vec4<u32>(21498u, 1u, 14689u, 57678u), vec4<u32>(4294967295u, 5990u, 0u, 4294967295u), vec4<u32>(15221u, 110380u, 1u, 39837u), vec4<u32>(1u, 53929u, 1u, 20578u), vec4<u32>(3290u, 1u, 11136u, 26819u), vec4<u32>(0u, 0u, 48266u, 42701u), vec4<u32>(28797u, 4294967295u, 27074u, 1u), vec4<u32>(13182u, 0u, 11233u, 1u), vec4<u32>(33168u, 42310u, 1u, 65983u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(24588u, 50915u, 26738u, 58006u), vec4<u32>(4294967295u, 4294967295u, 6493u, 0u), vec4<u32>(36489u, 99552u, 50299u, 48872u), vec4<u32>(77615u, 75273u, 4294967295u, 1u));

var<private> global2: array<u32, 16>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_3) -> u32 {
    var var_0 = Struct_3(-(i32(-1i) * -2147483647i), arg_3.b, arg_3.c);
    global0 = array<Struct_3, 18>();
    return _wgslsmith_mult_u32(67602u, ~(~(global2[_wgslsmith_index_u32(~1u, 16u)] >> (~arg_3.c.e.x % 32u))));
}

fn func_3(arg_0: bool) -> f32 {
    global1 = array<vec4<u32>, 17>();
    global1 = array<vec4<u32>, 17>();
    global1 = array<vec4<u32>, 17>();
    let var_0 = 1136f;
    let var_1 = global0[_wgslsmith_index_u32(select(u_input.b.x, u_input.c.x, false), 18u)];
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1198f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(step(-1281f, var_0))))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) - var_0)))));
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -741f))), _wgslsmith_f_op_f32(func_3(any(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), false)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -175f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1613f, 997f)))));
    return Struct_1(!(!(var_0.x <= 1759f)), true, ~(~1u) >> (reverseBits(global2[_wgslsmith_index_u32(1u, 16u)]) % 32u), 65457i, ~vec4<u32>(~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(u_input.c.x, 16u)], 50992u), u_input.b.x, global2[_wgslsmith_index_u32(u_input.e, 16u)], ~_wgslsmith_mult_u32(u_input.c.x, global2[_wgslsmith_index_u32(u_input.c.x, 16u)])));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(-(~u_input.d.x >> ((_wgslsmith_sub_u32(u_input.a, 1557u) << (func_1(true, -623f, vec4<bool>(false, false, false, false), Struct_3(u_input.d.x, Struct_2(true, vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 0i)), Struct_1(true, true, 0u, -1i, vec4<u32>(11947u, 4294967295u, u_input.b.x, 0u)))) % 32u)) % 32u)), ~u_input.d.x, 32303i, _wgslsmith_add_i32(u_input.d.x, u_input.d.x ^ 256i));
    global0 = array<Struct_3, 18>();
    let var_1 = -u_input.d.x >> (~(~_wgslsmith_mult_u32(~global2[_wgslsmith_index_u32(u_input.c.x, 16u)], select(1u, u_input.c.x, true))) % 32u);
    let var_2 = _wgslsmith_clamp_u32(u_input.c.x, ((~3538u ^ _wgslsmith_mult_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 16u)], 16u)], 16u)], 799u)) & 0u) & countOneBits(global2[_wgslsmith_index_u32(70933u, 16u)]), ~4294967295u);
    var var_3 = func_2();
    global1 = array<vec4<u32>, 17>();
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.ywy);
}

