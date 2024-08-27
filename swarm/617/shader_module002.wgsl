struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, false, false), false);

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<bool>(false, false, true), false));

var<private> global2: array<bool, 21> = array<bool, 21>(false, true, false, true, true, true, true, true, true, false, false, false, false, true, true, true, true, false, true, false, true);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = global1[_wgslsmith_index_u32(arg_2, 1u)];
    var var_1 = vec4<i32>(abs(1i), 2147483647i, min(1i, _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(-2147483647i, 1i), 1i), 2147483647i)), -_wgslsmith_mult_i32((-2147483647i << (u_input.b.x % 32u)) >> (_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(22311u, 24155u, arg_0.x, arg_2)) % 32u), ~61233i));
    let var_2 = 21342u;
    var var_3 = _wgslsmith_mult_u32(~u_input.a, max(_wgslsmith_mult_u32(abs(~39835u), _wgslsmith_add_u32(~0u, var_2)), 4294967295u));
    global0 = global1[_wgslsmith_index_u32(57899u, 1u)];
    return reverseBits(var_1.wyw);
}

fn func_2() -> Struct_2 {
    var var_0 = !global0.a.zx;
    global0 = global1[_wgslsmith_index_u32(~4294967295u, 1u)];
    let var_1 = 51478i;
    let var_2 = Struct_2(-var_1, vec4<f32>(-274f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -357f))), 295f, 505f), -func_3(~(~u_input.b.wwz), global1[_wgslsmith_index_u32(1u, 1u)], 72893u, global1[_wgslsmith_index_u32(1u, 1u)]));
    global1 = array<Struct_1, 1>();
    return var_2;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: i32, arg_3: vec4<i32>) -> Struct_1 {
    global1 = array<Struct_1, 1>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(arg_1.b, vec4<f32>(-2022f, arg_1.b.x, arg_1.b.x, arg_1.b.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1010f, -326f, -1570f, -332f), arg_1.b)))), vec4<f32>(-466f, arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.b.x), arg_1.b.x)))));
    return Struct_1(select(select(global0.a, global0.a, 5394i <= _wgslsmith_add_i32(arg_2, 0i)), select(select(!vec3<bool>(false, global2[_wgslsmith_index_u32(arg_0.x, 21u)], global2[_wgslsmith_index_u32(56104u, 21u)]), !vec3<bool>(global2[_wgslsmith_index_u32(0u, 21u)], false, global2[_wgslsmith_index_u32(arg_0.x, 21u)]), select(global2[_wgslsmith_index_u32(arg_0.x, 21u)], global0.b, global2[_wgslsmith_index_u32(u_input.b.x, 21u)])), vec3<bool>(global0.a.x, all(vec4<bool>(true, false, false, true)), true), global0.a), global0.a), (global0.b & false) & (!all(vec4<bool>(global2[_wgslsmith_index_u32(arg_0.x, 21u)], false, global2[_wgslsmith_index_u32(arg_0.x, 21u)], global0.b)) & true));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = min(countOneBits(-_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-1i, 1i, 2147483647i))), max(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), reverseBits(~vec3<i32>(14257i, -20558i, 0i))), vec3<i32>(-2147483647i, -2147483647i, -countOneBits(38450i))));
    let var_1 = func_4(u_input.b.xxw, func_2(), -(~2147483647i), ~(~select(vec4<i32>(-1i, var_0.x, var_0.x, var_0.x), vec4<i32>(24008i, var_0.x, var_0.x, var_0.x), global2[_wgslsmith_index_u32(5839u, 21u)]) | vec4<i32>(~var_0.x, abs(var_0.x), var_0.x, 0i)));
    global2 = array<bool, 21>();
    let var_2 = 4294967295u;
    var var_3 = ~(u_input.a << (0u % 32u));
    return Struct_1(vec3<bool>(true, !all(var_1.a), var_1.b), all(!vec4<bool>(true, global0.a.x, arg_0.a.x & global0.b, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b;
    var var_1 = func_1(Struct_1(vec3<bool>(false, true, true && select(global2[_wgslsmith_index_u32(58327u, 21u)], global0.a.x, global0.b)), any(select(global0.a, global0.a, !vec3<bool>(global0.b, false, true)))), vec2<u32>(_wgslsmith_sub_u32(~38084u ^ u_input.a, _wgslsmith_add_u32(_wgslsmith_add_u32(1u, 2238u), u_input.a)), ~(~u_input.b.x)));
    global0 = func_1(func_1(Struct_1(vec3<bool>(!global2[_wgslsmith_index_u32(46202u, 21u)], true, global2[_wgslsmith_index_u32(u_input.a, 21u)]), any(var_1.a.yy)), vec2<u32>(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, u_input.b.x))), max(~abs(vec2<u32>(u_input.a, u_input.b.x)), vec2<u32>(78210u, reverseBits(57944u))) << (vec2<u32>(1u, 0u) % vec2<u32>(32u)));
    var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(u_input.b.x, 1u), 1u)];
    var var_2 = ~(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_i32(vec3<i32>(max(i32(-1i) * -56864i, ~12682i), 0i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, 33331i), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 31154i, 0i), vec3<i32>(1i, 2147483647i, 43214i), vec3<i32>(2147483647i, -2147483647i, -9599i)))), ~(-firstTrailingBit(vec3<i32>(-1i, 0i, -2147483647i)))), u_input.b.xw, ~vec3<u32>(_wgslsmith_mod_u32(~u_input.b.x, u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b.yw, u_input.b.wx), firstLeadingBit(u_input.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1587f, -735f, 1237f, -114f), vec4<f32>(-1392f, -413f, -740f, -313f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1279f, -393f, 713f, -942f)) * vec4<f32>(-412f, -671f, 1086f, -1000f))) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-218f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -3606f, _wgslsmith_f_op_f32(abs(377f)))))));
}

