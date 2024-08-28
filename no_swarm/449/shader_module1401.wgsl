struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 2>;

var<private> global1: array<Struct_1, 5>;

var<private> global2: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(-1i, 51873i, 0i, 1i), vec4<i32>(10955i, 0i, 1i, -1i), vec4<i32>(-10815i, -49185i, i32(-2147483648), -31528i), vec4<i32>(i32(-2147483648), 1i, 1430i, -1i), vec4<i32>(-13307i, 27699i, -1i, -82860i), vec4<i32>(2147483647i, 0i, -62304i, 0i));

var<private> global3: Struct_1;

var<private> global4: array<Struct_1, 1>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_1) -> vec3<bool> {
    global3 = arg_0;
    global3 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(15711u, 1u), vec2<u32>(13341u, 4190u))) ^ ~countOneBits(2850u), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 35043u), vec2<u32>(1u, 0u))), 34422u), 2u)]);
    var var_0 = ~vec4<u32>(1u, _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 37542u), vec2<u32>(1u, 54434u), vec2<u32>(9782u, 4294967295u)), vec2<u32>(1u, ~30419u)), ~1u, 1u);
    var_0 = vec4<u32>(~(~var_0.x), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_0.xxx ^ vec3<u32>(var_0.x, var_0.x, var_0.x), var_0.xxx ^ var_0.zxw), 19155u) | ~abs(var_0.x), var_0.x, ~var_0.x);
    var var_1 = Struct_1(vec4<f32>(-806f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x - 754f)), -405f, global3.a.x));
    return vec3<bool>(true, true, true);
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(-1191f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global3.a.x)), _wgslsmith_div_f32(global3.a.x, global3.a.x))), _wgslsmith_f_op_f32(arg_1 + 1611f), any(func_3(Struct_1(vec4<f32>(-132f, -839f, arg_0.a.x, arg_1)))))))));
    let var_1 = -(_wgslsmith_clamp_vec2_i32(~vec2<i32>(6255i, 0i), ~vec2<i32>(u_input.a, 6128i) | select(vec2<i32>(2147483647i, u_input.a), vec2<i32>(u_input.a, 13687i), vec2<bool>(true, true)), reverseBits(abs(vec2<i32>(u_input.a, u_input.a)))) >> (vec2<u32>(4294967295u, ~9543u) % vec2<u32>(32u)));
    global4 = array<Struct_1, 1>();
    var var_2 = global4[_wgslsmith_index_u32(~0u, 1u)];
    var var_3 = func_3(global1[_wgslsmith_index_u32(abs(~(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, 1u), vec4<u32>(1u, 4294967295u, 29948u, 56041u)) ^ firstTrailingBit(6870u))), 5u)]).yz;
    return global1[_wgslsmith_index_u32(8637u, 5u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    global3 = func_2(func_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(global3.a.x, arg_1.a.x, arg_1.a.x, -325f), _wgslsmith_f_op_vec4_f32(exp2(arg_0.a)))), _wgslsmith_div_f32(-608f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)))), global3.a.x);
    global0 = array<vec4<f32>, 2>();
    let var_0 = false;
    var var_1 = ~vec3<u32>(0u, ~min(select(1u, 41054u, var_0), 4294967295u), ~min(abs(1u), 4322u));
    var var_2 = var_0;
    return _wgslsmith_clamp_i32((-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, u_input.a)) << (_wgslsmith_mult_u32(_wgslsmith_add_u32(var_1.x, var_1.x), var_1.x) % 32u)) << (var_1.x % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(1i, u_input.a), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 1i)), ~vec2<i32>(-63485i, u_input.a))), abs(firstLeadingBit(vec2<i32>(u_input.a, -2147483647i)))), ~(~(u_input.a << (var_1.x % 32u)) | abs(_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(var_1.x, 6u)], global2[_wgslsmith_index_u32(var_1.x, 6u)]))));
}

fn func_1(arg_0: f32) -> vec2<i32> {
    let var_0 = u_input.a;
    let var_1 = (18112u < _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 29551u), vec2<u32>(104264u, 4294967295u)), vec2<u32>(107302u, 4294967295u)), _wgslsmith_sub_u32(1u, 1u))) == false;
    global4 = array<Struct_1, 1>();
    global2 = array<vec4<i32>, 6>();
    return ~_wgslsmith_mod_vec2_i32(vec2<i32>(func_4(func_2(Struct_1(vec4<f32>(arg_0, arg_0, 677f, -986f)), 416f), Struct_1(global0[_wgslsmith_index_u32(124178u, 2u)])), _wgslsmith_add_i32(var_0, u_input.a >> (1u % 32u))), _wgslsmith_sub_vec2_i32(countOneBits(countOneBits(vec2<i32>(7746i, 1i))), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 10942i), vec2<i32>(2147483647i, var_0)), firstLeadingBit(-29615i))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32) -> vec3<i32> {
    let var_0 = vec3<u32>(~_wgslsmith_clamp_u32(15064u, abs(0u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 65628u, 29110u, 0u), vec4<u32>(75171u, 1u, 11080u, 0u))), _wgslsmith_add_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 23360u, 44478u), vec3<u32>(4294967295u, 70700u, 74159u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 13011u, 41459u), vec3<u32>(4294967295u, 1u, 0u)) % 32u), abs(1u), 4294967295u), ~abs(1u)), _wgslsmith_add_u32(firstLeadingBit(~_wgslsmith_add_u32(1u, 42583u)), _wgslsmith_div_u32(0u, countOneBits(12455u)) >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 23610u, 4294967295u), vec4<u32>(1u, 66360u, 1u, 0u)) | ~47889u) % 32u)));
    var var_1 = _wgslsmith_mod_vec3_i32(abs(~(_wgslsmith_mult_vec3_i32(vec3<i32>(-17507i, u_input.a, u_input.a), vec3<i32>(40220i, arg_2, u_input.a)) << (abs(vec3<u32>(4294967295u, var_0.x, var_0.x)) % vec3<u32>(32u)))), _wgslsmith_sub_vec3_i32(abs(reverseBits(vec3<i32>(arg_1.x, -25532i, arg_2))), firstTrailingBit(~min(vec3<i32>(arg_1.x, arg_1.x, arg_1.x), vec3<i32>(u_input.a, -2147483647i, 24459i)))));
    let var_2 = 30184u;
    var var_3 = global1[_wgslsmith_index_u32(var_0.x, 5u)];
    return _wgslsmith_div_vec3_i32(abs(reverseBits(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.x, arg_2, arg_2), vec3<i32>(1i, arg_2, 1i)), vec3<i32>(666i, -35978i, var_1.x)))), vec3<i32>(1i, abs(arg_2), arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(50651u, 1u)];
    let var_1 = global1[_wgslsmith_index_u32(countOneBits(7746u), 5u)];
    let var_2 = func_5(global4[_wgslsmith_index_u32(4294967295u, 1u)], _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(func_1(434f), abs(reverseBits(vec2<i32>(10981i, -33360i)))), ~vec2<i32>(7285i, -1i) & countOneBits(vec2<i32>(13399i, u_input.a))), _wgslsmith_sub_i32(u_input.a, -73i));
    global2 = array<vec4<i32>, 6>();
    global2 = array<vec4<i32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(-(var_2 >> (vec3<u32>(32002u, 0u, 54621u) % vec3<u32>(32u))), var_2), ~(~(~(~vec2<u32>(1u, 4294967295u)))));
}

