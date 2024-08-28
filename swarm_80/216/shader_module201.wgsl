struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(453f, -406f), vec2<f32>(-412f, 891f), vec2<f32>(339f, -544f), vec2<f32>(1954f, -221f), vec2<f32>(-721f, -1518f), vec2<f32>(517f, -112f), vec2<f32>(140f, -295f), vec2<f32>(735f, 359f), vec2<f32>(2436f, -784f), vec2<f32>(1276f, 438f), vec2<f32>(-106f, 424f), vec2<f32>(557f, -214f), vec2<f32>(245f, -183f), vec2<f32>(1061f, -788f), vec2<f32>(267f, -522f), vec2<f32>(-425f, 119f), vec2<f32>(227f, -1512f), vec2<f32>(-1332f, 1816f), vec2<f32>(-1765f, -1542f), vec2<f32>(459f, 303f), vec2<f32>(1477f, 411f), vec2<f32>(-872f, -108f), vec2<f32>(-1697f, -201f), vec2<f32>(-638f, 437f), vec2<f32>(727f, 338f), vec2<f32>(-274f, -377f), vec2<f32>(729f, 572f), vec2<f32>(434f, -187f), vec2<f32>(-785f, 285f), vec2<f32>(-811f, 1027f), vec2<f32>(-1000f, 1919f), vec2<f32>(-1650f, -414f));

var<private> global1: Struct_2 = Struct_2(vec3<u32>(4294967295u, 13298u, 2007u), Struct_1(vec3<i32>(30691i, 1i, -51187i), false, 18612i));

var<private> global2: array<i32, 25> = array<i32, 25>(14695i, 65289i, 0i, -50i, i32(-2147483648), -6605i, 60677i, 27387i, -6689i, -50705i, 0i, -34766i, 2327i, -10375i, 0i, 35907i, 17891i, -36026i, -15550i, 1i, i32(-2147483648), i32(-2147483648), i32(-2147483648), -1i, 48747i);

var<private> global3: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(vec3<u32>(33941u, 4294967295u, 1u), Struct_1(vec3<i32>(-43793i, 2147483647i, -21274i), true, i32(-2147483648))), Struct_2(vec3<u32>(4294967295u, 1u, 5560u), Struct_1(vec3<i32>(2147483647i, 37218i, 1i), false, 1i)), Struct_2(vec3<u32>(0u, 69671u, 31099u), Struct_1(vec3<i32>(26840i, -1i, 2147483647i), true, 30544i)), Struct_2(vec3<u32>(0u, 0u, 0u), Struct_1(vec3<i32>(33029i, 14002i, 1i), true, 2147483647i)), Struct_2(vec3<u32>(974u, 2905u, 1u), Struct_1(vec3<i32>(1i, i32(-2147483648), 77297i), false, -1i)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_1) -> bool {
    var var_0 = countOneBits(~(~u_input.b));
    var_0 = ~reverseBits(-u_input.b);
    let var_1 = vec4<bool>((-18421i <= -_wgslsmith_div_i32(1i, arg_3.c)) | arg_0.b, select(all(vec2<bool>(false, arg_0.b)), !arg_0.b, true), arg_3.b, true);
    var var_2 = vec4<i32>(reverseBits(_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(global1.b.a, arg_3.a), global2[_wgslsmith_index_u32(1u >> (1u % 32u), 25u)]), arg_0.a.x)), -35042i, arg_3.c, -32681i);
    global0 = array<vec2<f32>, 32>();
    return firstLeadingBit(-_wgslsmith_mod_i32(_wgslsmith_sub_i32(2147483647i, u_input.c), _wgslsmith_add_i32(global2[_wgslsmith_index_u32(arg_2.x, 25u)], -2147483647i))) >= ~(-_wgslsmith_add_i32(select(1i, arg_0.a.x, arg_0.b), countOneBits(0i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> u32 {
    global3 = array<Struct_2, 5>();
    global3 = array<Struct_2, 5>();
    let var_0 = (global1.a.yy << (_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(global1.a.yx, vec2<u32>(global1.a.x, 0u)) >> (global1.a.zx % vec2<u32>(32u)), global1.a.yz) % vec2<u32>(32u))) ^ global1.a.yz;
    let var_1 = global1.b;
    let var_2 = Struct_2(vec3<u32>(var_0.x, _wgslsmith_div_u32(~4294967295u, 4294967295u), firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_mult_u32(global1.a.x, u_input.a), u_input.a >> (u_input.a % 32u)))), Struct_1(var_1.a, true, -_wgslsmith_clamp_i32(-25398i, 5237i, reverseBits(global2[_wgslsmith_index_u32(u_input.a, 25u)]))));
    return _wgslsmith_dot_vec2_u32(firstLeadingBit(~var_0 | ~vec2<u32>(u_input.a, 346u)), _wgslsmith_div_vec2_u32(var_2.a.yz, ~_wgslsmith_sub_vec2_u32(vec2<u32>(var_2.a.x, var_0.x), vec2<u32>(0u, 67272u)) ^ (vec2<u32>(var_0.x, 13637u) & ~var_2.a.zz)));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = 49404i;
    let var_1 = -270f;
    var var_2 = Struct_2(~abs(vec3<u32>(66506u, 0u, 0u)), arg_0);
    var var_3 = Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(global1.a.x, 4294967295u, 0u) << (var_2.a % vec3<u32>(32u)), ~vec3<u32>(func_3(global1.b, global1.b.b, 4294967295u), var_2.a.x, u_input.a | 53821u)), Struct_1(select(~vec3<i32>(0i, 8283i, u_input.c), ~(~vec3<i32>(1i, global1.b.a.x, global1.b.c)), _wgslsmith_f_op_f32(f32(-1f) * -1138f) <= var_1), select(any(vec4<bool>(true, var_2.b.b, var_2.b.b, global1.b.b)), select(false, !global1.b.b, arg_0.b), true), 0i));
    var_3 = global3[_wgslsmith_index_u32(~36103u, 5u)];
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 25>();
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -807f);
    var var_1 = -1i;
    let var_2 = global1.a.x;
    let var_3 = -3804i;
    var var_4 = !(!vec4<bool>(global1.b.b && func_1(Struct_1(vec3<i32>(u_input.b.x, -2147483647i, u_input.c), global1.b.b, var_3), u_input.a, global1.a, global1.b), true | (global1.b.b | true), true, global1.b.b));
    var var_5 = func_2(global1.b);
    let var_6 = global1.b;
    var var_7 = min(0i, var_3);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, var_3, global0[_wgslsmith_index_u32(~0u, 32u)], ~(~21497u));
}

