struct Struct_1 {
    a: vec3<bool>,
    b: i32,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(i32(-2147483648), -25541i, 10491i), vec3<i32>(12358i, i32(-2147483648), -1i), vec3<i32>(-19566i, 0i, -22762i), vec3<i32>(-30823i, 58265i, 2147483647i), vec3<i32>(-28793i, -11582i, -6916i), vec3<i32>(-19626i, -14021i, 31123i), vec3<i32>(-42046i, 2147483647i, -1847i), vec3<i32>(23378i, 16775i, 1i), vec3<i32>(2147483647i, 51881i, 1i), vec3<i32>(-23229i, 0i, i32(-2147483648)), vec3<i32>(14389i, 9515i, -16140i), vec3<i32>(-6192i, 34577i, i32(-2147483648)), vec3<i32>(-38076i, 1i, -64491i), vec3<i32>(i32(-2147483648), 17043i, 127321i), vec3<i32>(0i, 5131i, 1i), vec3<i32>(31740i, 49267i, 11185i), vec3<i32>(i32(-2147483648), 9091i, 1i), vec3<i32>(-1i, -1i, 41575i), vec3<i32>(53041i, 2147483647i, 1i), vec3<i32>(1i, 2147483647i, 6608i), vec3<i32>(0i, -68653i, 15999i), vec3<i32>(2147483647i, 9283i, -79295i), vec3<i32>(4869i, -1i, -1i), vec3<i32>(-43129i, -1i, 2147483647i), vec3<i32>(49153i, -1i, 0i), vec3<i32>(-37980i, 19026i, -9739i), vec3<i32>(i32(-2147483648), -14568i, i32(-2147483648)), vec3<i32>(2147483647i, 0i, 28106i), vec3<i32>(51986i, -10689i, 8932i), vec3<i32>(-48162i, 1i, 1i), vec3<i32>(1i, 24977i, 18026i));

var<private> global1: vec3<f32>;

var<private> global2: array<bool, 7>;

var<private> global3: vec4<bool>;

var<private> global4: array<Struct_1, 28> = array<Struct_1, 28>(Struct_1(vec3<bool>(true, false, true), i32(-2147483648), vec2<u32>(0u, 0u)), Struct_1(vec3<bool>(true, true, true), -12410i, vec2<u32>(9453u, 26612u)), Struct_1(vec3<bool>(true, true, true), 36442i, vec2<u32>(1u, 1u)), Struct_1(vec3<bool>(true, true, false), -13198i, vec2<u32>(58499u, 4294967295u)), Struct_1(vec3<bool>(false, true, false), 1i, vec2<u32>(4294967295u, 55409u)), Struct_1(vec3<bool>(false, false, false), -1i, vec2<u32>(41664u, 1u)), Struct_1(vec3<bool>(true, true, false), -1i, vec2<u32>(0u, 23578u)), Struct_1(vec3<bool>(true, true, true), 0i, vec2<u32>(33803u, 1u)), Struct_1(vec3<bool>(false, false, false), 0i, vec2<u32>(23861u, 31128u)), Struct_1(vec3<bool>(true, true, false), 34548i, vec2<u32>(2262u, 1203u)), Struct_1(vec3<bool>(true, false, false), 24754i, vec2<u32>(0u, 32229u)), Struct_1(vec3<bool>(true, false, true), 1i, vec2<u32>(70271u, 1u)), Struct_1(vec3<bool>(true, false, true), 2147483647i, vec2<u32>(1u, 0u)), Struct_1(vec3<bool>(false, false, true), -62898i, vec2<u32>(4294967295u, 89256u)), Struct_1(vec3<bool>(true, false, false), 2147483647i, vec2<u32>(49311u, 0u)), Struct_1(vec3<bool>(true, false, true), 0i, vec2<u32>(39845u, 83118u)), Struct_1(vec3<bool>(true, true, false), 53612i, vec2<u32>(4294967295u, 0u)), Struct_1(vec3<bool>(false, true, false), 18167i, vec2<u32>(0u, 8779u)), Struct_1(vec3<bool>(true, true, false), -23397i, vec2<u32>(0u, 0u)), Struct_1(vec3<bool>(true, false, false), 27421i, vec2<u32>(77830u, 4294967295u)), Struct_1(vec3<bool>(true, false, false), -1i, vec2<u32>(4294967295u, 13629u)), Struct_1(vec3<bool>(true, false, true), -47532i, vec2<u32>(0u, 44189u)), Struct_1(vec3<bool>(false, false, false), 1i, vec2<u32>(115654u, 0u)), Struct_1(vec3<bool>(false, false, false), i32(-2147483648), vec2<u32>(0u, 63864u)), Struct_1(vec3<bool>(true, false, false), -3071i, vec2<u32>(1u, 4294967295u)), Struct_1(vec3<bool>(false, true, false), 0i, vec2<u32>(0u, 1u)), Struct_1(vec3<bool>(false, false, false), -20423i, vec2<u32>(16344u, 146432u)), Struct_1(vec3<bool>(true, false, true), 0i, vec2<u32>(0u, 0u)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec3<bool>) -> f32 {
    global3 = vec4<bool>(select(false && !(!arg_3.x), true, !arg_1.x), all(vec4<bool>(arg_2.c.x == arg_2.c.x, !arg_2.a.x, all(vec2<bool>(arg_1.x, global2[_wgslsmith_index_u32(arg_2.c.x, 7u)])), false)) | (true | !global2[_wgslsmith_index_u32(arg_2.c.x << (14549u % 32u), 7u)]), global3.x, global3.x);
    global3 = select(!vec4<bool>(_wgslsmith_f_op_f32(arg_0 + global1.x) <= _wgslsmith_f_op_f32(-arg_0), false, any(select(vec3<bool>(false, arg_2.a.x, arg_3.x), vec3<bool>(false, arg_2.a.x, true), vec3<bool>(false, false, global2[_wgslsmith_index_u32(arg_2.c.x, 7u)]))), arg_1.x), select(vec4<bool>(!all(vec4<bool>(true, arg_2.a.x, true, global2[_wgslsmith_index_u32(0u, 7u)])), false, false, 1i > _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.b, arg_2.b, arg_2.b, -1i), u_input.a)), select(!vec4<bool>(true, arg_3.x, arg_1.x, false), !(!vec4<bool>(global2[_wgslsmith_index_u32(34045u, 7u)], arg_2.a.x, false, global2[_wgslsmith_index_u32(54389u, 7u)])), false), (!global2[_wgslsmith_index_u32(arg_2.c.x, 7u)] & true) | global2[_wgslsmith_index_u32(~4294967295u, 7u)]), !global2[_wgslsmith_index_u32(firstTrailingBit(52272u), 7u)]);
    let var_0 = global4[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_2.c.x, arg_2.c.x), ~vec2<u32>(arg_2.c.x >> (4294967295u % 32u), 10925u)), 1u), 28u)];
    var var_1 = Struct_1(arg_2.a, arg_2.b, var_0.c);
    var var_2 = var_0.c.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-809f, -380f) - global1.x))) - -601f);
}

fn func_2() -> u32 {
    var var_0 = u_input.a;
    var var_1 = vec3<bool>(global3.x, _wgslsmith_f_op_f32(abs(global1.x)) != _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-406f, global1.x)))), any(global3.wyz));
    let var_2 = var_0.ywy;
    let var_3 = _wgslsmith_f_op_f32(-307f - _wgslsmith_f_op_f32(-global1.x));
    global0 = array<vec3<i32>, 31>();
    return select(1286u, 3832u, _wgslsmith_f_op_f32(-1981f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-1444f, var_1.yx, Struct_1(global3.xwx, u_input.a.x, vec2<u32>(0u, 1u)), vec3<bool>(var_1.x, true, true))))) > var_3);
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<u32>(~(~104677u) << (abs(~func_2()) % 32u), _wgslsmith_mult_u32(1u, reverseBits(max(26152u, 1u))));
    let var_1 = vec3<bool>(global2[_wgslsmith_index_u32(var_0.x, 7u)] == global3.x, (var_0.x >> (var_0.x % 32u)) == firstTrailingBit(23921u), !(!select(global3.x, true, false)) | all(select(vec3<bool>(false, global3.x, global2[_wgslsmith_index_u32(var_0.x, 7u)]), !vec3<bool>(true, global2[_wgslsmith_index_u32(72635u, 7u)], global2[_wgslsmith_index_u32(36204u, 7u)]), select(vec3<bool>(false, false, global3.x), global3.xxx, global3.www))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(128f)), global1.x)), 1035f);
    var var_3 = global4[_wgslsmith_index_u32(99981u, 28u)];
    var_3 = Struct_1(vec3<bool>(false, any(select(select(vec4<bool>(var_1.x, true, true, var_1.x), vec4<bool>(var_1.x, true, true, var_3.a.x), vec4<bool>(false, var_1.x, false, false)), vec4<bool>(var_3.a.x, false, false, true), var_1.x)), !all(vec2<bool>(false, var_1.x))), _wgslsmith_mult_i32(-2147483647i, -_wgslsmith_add_i32(var_3.b, -38770i)) | abs(i32(-1i) * -u_input.a.x), ~_wgslsmith_div_vec2_u32(var_3.c, ~(~var_3.c)));
    return Struct_1(var_1, select(_wgslsmith_mult_i32(~(-13456i), u_input.a.x), -32528i, true), var_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1778f;
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1042f), _wgslsmith_f_op_f32(f32(-1f) * -1066f), _wgslsmith_div_f32(var_0, 1000f)) * vec3<f32>(_wgslsmith_f_op_f32(157f + var_0), global1.x, _wgslsmith_f_op_f32(step(var_0, 1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-834f, global1.x, var_0) * vec3<f32>(var_0, global1.x, var_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2324f, 953f, var_0) - vec3<f32>(global1.x, 1000f, -1383f)))))));
    var var_1 = func_1();
    let var_2 = vec3<i32>(select((59667i | u_input.a.x) ^ ~var_1.b, u_input.a.x, false) << (select(~var_1.c.x | ~0u, 4294967295u, true) % 32u), abs(-27567i), u_input.a.x);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) * _wgslsmith_f_op_f32(trunc(-537f))))), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(f32(-1f) * -338f)));
    let var_4 = global4[_wgslsmith_index_u32(0u, 28u)];
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, _wgslsmith_f_op_f32(var_3.x * var_0), _wgslsmith_f_op_f32(f32(-1f) * -316f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.x, var_0, -1393f) * vec3<f32>(-858f, var_3.x, global1.x)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1247f, -459f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-532f, -252f, -289f))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-901f, var_0, 626f) + vec3<f32>(672f, 819f, 143f)))))));
    var var_6 = _wgslsmith_f_op_vec2_f32(var_5.zy + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3.zx * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1327f, var_0), var_5.zz)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, u_input.a.yz);
}

