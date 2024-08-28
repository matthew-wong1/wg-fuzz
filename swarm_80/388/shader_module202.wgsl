struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<i32>(-37389i, i32(-2147483648), 1i), -1318f), Struct_1(vec3<i32>(32204i, 2147483647i, -24619i), 961f), Struct_1(vec3<i32>(0i, 22444i, 7502i), 1454f), Struct_1(vec3<i32>(27036i, -21425i, -1i), -451f), Struct_1(vec3<i32>(-49645i, i32(-2147483648), 2147483647i), 921f), Struct_1(vec3<i32>(-45033i, i32(-2147483648), 15721i), 475f), Struct_1(vec3<i32>(-1i, -52236i, -42152i), 813f), Struct_1(vec3<i32>(2147483647i, 2147483647i, -12751i), -468f), Struct_1(vec3<i32>(2147483647i, 19429i, i32(-2147483648)), 518f), Struct_1(vec3<i32>(2147483647i, 1i, 1i), 347f), Struct_1(vec3<i32>(0i, 2147483647i, -47342i), -707f), Struct_1(vec3<i32>(-16017i, 7365i, -1i), 275f), Struct_1(vec3<i32>(1i, 0i, -29665i), -1000f), Struct_1(vec3<i32>(14002i, -41324i, -15958i), -324f), Struct_1(vec3<i32>(0i, i32(-2147483648), -17953i), 888f), Struct_1(vec3<i32>(0i, i32(-2147483648), 2147483647i), -719f), Struct_1(vec3<i32>(-1i, -1i, 1i), -1492f), Struct_1(vec3<i32>(0i, 2147483647i, 14220i), 254f), Struct_1(vec3<i32>(1i, 0i, -10399i), 215f), Struct_1(vec3<i32>(1957i, 44575i, -23533i), 1609f), Struct_1(vec3<i32>(-1i, 39016i, 1i), 1127f), Struct_1(vec3<i32>(12279i, 1i, 13176i), 316f), Struct_1(vec3<i32>(1i, -30655i, 24500i), -208f), Struct_1(vec3<i32>(-53182i, 16765i, 2523i), -355f), Struct_1(vec3<i32>(-1i, 1i, 48027i), -910f), Struct_1(vec3<i32>(-1i, 3950i, 0i), -221f), Struct_1(vec3<i32>(-12638i, -1i, -463i), -1425f), Struct_1(vec3<i32>(2147483647i, -9596i, 0i), -1240f));

var<private> global1: Struct_1 = Struct_1(vec3<i32>(36273i, 8833i, 62960i), 654f);

var<private> global2: array<vec2<i32>, 18>;

var<private> global3: Struct_1 = Struct_1(vec3<i32>(-1i, 1i, 4132i), 706f);

var<private> global4: i32 = 13406i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = global1.b;
    var var_1 = Struct_1(~vec3<i32>(~(-2147483647i) ^ (global3.a.x | global3.a.x), countOneBits(_wgslsmith_clamp_i32(25320i, 1i, global3.a.x)), u_input.a), global3.b);
    var var_2 = Struct_1(global1.a, 979f);
    var var_3 = 2147483647i;
    let var_4 = global0[_wgslsmith_index_u32(countOneBits(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, 1u), ~51808u)), 28u)];
    return 650f;
}

fn func_2() -> vec2<u32> {
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 28u)];
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b, global1.b, false))) - _wgslsmith_f_op_f32(func_3(-23933i)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(global3.b + global3.b)) + _wgslsmith_f_op_f32(step(-137f, global1.b))))));
    let var_2 = global0[_wgslsmith_index_u32(~(~(~(~(~4294967295u)))), 28u)];
    var var_3 = Struct_1(var_0.a, 1f);
    let var_4 = ~reverseBits(-var_0.a.x);
    return vec2<u32>(1u, 0u);
}

fn func_1() -> u32 {
    global2 = array<vec2<i32>, 18>();
    global3 = Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(global3.a.x, -u_input.a), 0i, max(1i, global1.a.x ^ 3831i)), ~global3.a), _wgslsmith_f_op_f32(f32(-1f) * -869f));
    let var_0 = global1.b;
    let var_1 = vec2<i32>(abs(_wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec2_i32(-global2[_wgslsmith_index_u32(0u, 18u)], firstLeadingBit(global3.a.yz)))), u_input.a << (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 77250u), func_2()), 9508u) % 32u));
    let var_2 = global1.a.zy;
    return firstTrailingBit(4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.b)))), _wgslsmith_f_op_f32(global1.b * global1.b)) * vec2<f32>(_wgslsmith_f_op_f32(-global1.b), 219f));
    global3 = global0[_wgslsmith_index_u32(~(~firstLeadingBit(countOneBits(~12361u))), 28u)];
    global2 = array<vec2<i32>, 18>();
    global4 = _wgslsmith_add_i32(global3.a.x, 0i ^ _wgslsmith_sub_i32(~0i, _wgslsmith_div_i32(1i, countOneBits(u_input.b))));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(func_1(), ~(~0u)) & 48898u, _wgslsmith_sub_u32(~(~(~75248u)), ~reverseBits(10136u))), 28u)];
    global2 = array<vec2<i32>, 18>();
    var_1 = Struct_1(global1.a, _wgslsmith_f_op_f32(-259f + _wgslsmith_f_op_f32(-var_1.b)));
    global2 = array<vec2<i32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(32299u, u_input.b, global2[_wgslsmith_index_u32(20754u, 18u)], vec2<u32>(1u, _wgslsmith_sub_u32(select(0u, 0u >> (0u % 32u), all(vec4<bool>(true, true, false, false))), ~(~0u))));
}

