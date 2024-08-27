struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<f32>(279f, 1000f, -126f, 665f), Struct_2(4294967295u, Struct_1(vec3<i32>(23264i, 2147483647i, -185i), 4294967295u, vec2<i32>(39782i, 0i), vec3<i32>(4787i, -41734i, -1i)), Struct_1(vec3<i32>(-1i, -13348i, i32(-2147483648)), 48040u, vec2<i32>(0i, 28486i), vec3<i32>(17569i, 1i, 40797i)), 4294967295u, vec3<f32>(552f, 815f, 631f)), vec3<bool>(true, true, false));

var<private> global1: array<vec4<bool>, 1>;

var<private> global2: array<i32, 3>;

var<private> global3: Struct_2 = Struct_2(5678u, Struct_1(vec3<i32>(2147483647i, 0i, 0i), 0u, vec2<i32>(-24869i, 0i), vec3<i32>(-24187i, 27054i, 0i)), Struct_1(vec3<i32>(22283i, 28611i, 0i), 1u, vec2<i32>(-16779i, 2147483647i), vec3<i32>(-1i, 0i, -1i)), 4294967295u, vec3<f32>(479f, -1851f, -694f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: vec3<bool>) -> vec2<i32> {
    var var_0 = global3.b;
    let var_1 = Struct_1(firstLeadingBit(vec3<i32>(-1i, global2[_wgslsmith_index_u32(abs(3686u), 3u)] | _wgslsmith_dot_vec2_i32(vec2<i32>(30550i, 25306i), var_0.d.zy), 1i)), var_0.b, global0.b.b.a.xx, firstLeadingBit(firstLeadingBit(u_input.d.wwx)));
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global0.a + global0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a)))), Struct_2(37891u, Struct_1(-countOneBits(var_1.d), var_0.b, abs(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, global3.b.c.x), vec2<i32>(u_input.a.x, 1153i))), max(global3.c.d, vec3<i32>(2147483647i, u_input.a.x, var_0.c.x))), Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 37676i, 0i), var_1.a), select(vec3<i32>(global0.b.b.a.x, u_input.a.x, -2147483647i), global3.c.d, global0.c)), 43891u, abs(var_0.c), var_0.a | (var_0.a ^ var_1.a)), u_input.e.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-128f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(642f, 728f))), _wgslsmith_f_op_f32(select(-522f, _wgslsmith_f_op_f32(max(global3.e.x, global0.b.e.x)), true == arg_1.x)))), !vec3<bool>(any(vec3<bool>(true, false, false)), all(vec2<bool>(global0.c.x, arg_2.x)), !any(arg_1)));
    global3 = global0.b;
    var var_2 = global0.b;
    return _wgslsmith_clamp_vec2_i32(global0.b.c.d.zz, vec2<i32>(global2[_wgslsmith_index_u32(var_0.b, 3u)], -abs(-35781i)), min(max(abs(var_0.c), vec2<i32>(global3.b.d.x, -var_1.d.x)), select(vec2<i32>(var_2.c.d.x, -50845i), ~vec2<i32>(16966i, var_2.c.c.x), !global0.c.zx) << (~(vec2<u32>(global0.b.b.b, 1u) << (u_input.e.xy % vec2<u32>(32u))) % vec2<u32>(32u))));
}

fn func_2() -> vec3<bool> {
    global2 = array<i32, 3>();
    let var_0 = Struct_2(0u, global3.b, Struct_1(-global3.b.d, 3247u, vec2<i32>(-1i) * -(~vec2<i32>(-2147483647i, -2147483647i)), vec3<i32>(~u_input.c.x, 2147483647i, 2147483647i) ^ (vec3<i32>(-1i) * -global3.b.d)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(~global0.b.b.b, global3.a, 4294967295u & global0.b.d), ~vec3<u32>(global3.d, u_input.e.x, 44814u)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global3.e.x, -500f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.b.e.x + -147f)))))));
    var var_1 = select(vec2<i32>(global0.b.b.a.x, ~1i), global3.b.a.yx, true) ^ func_3(-2147483647i >> (u_input.b.x % 32u), select(global0.c.xy, global0.c.yx, vec2<bool>(true, true)), select(global0.c, vec3<bool>(global0.c.x, true, global0.b.b.b >= u_input.e.x), vec3<bool>(any(global1[_wgslsmith_index_u32(4294967295u, 1u)]), select(global0.c.x, global0.c.x, global0.c.x), true)));
    var var_2 = _wgslsmith_mult_u32(reverseBits(~67130u), ~abs(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 4294967295u, u_input.e.x, 95197u), u_input.e), global3.c.b)));
    var var_3 = ~((vec2<i32>(_wgslsmith_add_i32(var_0.b.c.x, 2147483647i), global0.b.b.a.x | var_1.x) ^ vec2<i32>(~global2[_wgslsmith_index_u32(global0.b.c.b, 3u)], 1i)) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(var_0.b.d.x, global0.b.c.d.x), ~u_input.d.ww << (max(vec2<u32>(4294967295u, 1u), u_input.e.yz) % vec2<u32>(32u))));
    return vec3<bool>(_wgslsmith_div_i32(-var_0.c.a.x, ~(var_3.x << (var_0.c.b % 32u))) == (i32(-1i) * -13355i), true, true);
}

fn func_1() -> vec3<f32> {
    var var_0 = global0.c.yy;
    var var_1 = !vec4<bool>(any(select(select(vec3<bool>(var_0.x, global0.c.x, var_0.x), vec3<bool>(global0.c.x, true, false), global0.c), func_2(), !vec3<bool>(false, var_0.x, false))), !(global0.c.x | !var_0.x), all(!global1[_wgslsmith_index_u32(u_input.e.x, 1u)]) != all(vec3<bool>(false, false, true)), func_2().x);
    global0 = Struct_3(global0.a, Struct_2(global3.a, global3.b, global3.c, global3.b.b, _wgslsmith_f_op_vec3_f32(-global0.a.xyz)), vec3<bool>(all(vec3<bool>(false, var_0.x, false)), true, global0.c.x));
    var var_2 = global0.b;
    let var_3 = var_2.b;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.e.x, var_2.e.x, global0.a.x))))) - vec3<f32>(916f, -538f, _wgslsmith_f_op_f32(-global3.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(250f + _wgslsmith_f_op_f32(-global0.b.e.x)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.e.x, global3.e.x) * _wgslsmith_f_op_f32(104f * 201f))) >= -290f, global0.c.x & true, false);
    var var_1 = _wgslsmith_sub_vec4_u32(abs(vec4<u32>(1u, 1u, firstLeadingBit(u_input.e.x), 28328u)) ^ ~vec4<u32>(32139u, global3.d, _wgslsmith_add_u32(10621u, global0.b.b.b), ~global0.b.c.b), ~(u_input.e & ~vec4<u32>(global3.c.b, global3.d, 11150u, u_input.b.x)));
    var_1 = vec4<u32>(_wgslsmith_div_u32(4294967295u, countOneBits(3521u)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(15806u, u_input.e.x), var_1.x), ~global3.a), u_input.b), 15858u, _wgslsmith_clamp_u32(select(_wgslsmith_div_u32(u_input.b.x, 4294967295u), global0.b.d, false), u_input.e.x, ~(~var_1.x)) & var_1.x);
    global2 = array<i32, 3>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1879f, global3.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.e.x))));
    var var_3 = ~(~_wgslsmith_add_i32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.e, u_input.e), 3u)], _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(7638i, u_input.d.x, u_input.c.x), global3.b.a), -u_input.a.x)));
    global1 = array<vec4<bool>, 1>();
    var_2 = _wgslsmith_f_op_vec3_f32(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)));
}

