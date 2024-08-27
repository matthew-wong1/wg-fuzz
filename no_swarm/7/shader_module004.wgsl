struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 17>;

var<private> global1: array<bool, 26> = array<bool, 26>(true, true, false, false, true, true, false, false, true, false, true, true, false, false, false, true, true, false, true, false, true, false, true, false, true, true);

var<private> global2: vec2<i32>;

var<private> global3: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(4294967295u, 0u, 9255u, 37671u), vec4<u32>(1u, 1u, 4294967295u, 31171u), vec4<u32>(1u, 0u, 0u, 48934u), vec4<u32>(0u, 1u, 0u, 68582u), vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<u32>(33150u, 25451u, 0u, 4294967295u), vec4<u32>(4294967295u, 28467u, 35856u, 0u), vec4<u32>(4294967295u, 37953u, 29117u, 1u), vec4<u32>(1u, 44428u, 4294967295u, 4294967295u), vec4<u32>(40351u, 0u, 4294967295u, 12543u), vec4<u32>(70319u, 41158u, 32786u, 14412u));

var<private> global4: array<Struct_4, 27>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_3(-96i, u_input.a, Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-408f, 2493f), vec2<f32>(-145f, -1379f), global1[_wgslsmith_index_u32(u_input.d.x, 26u)]))) - vec2<f32>(1f, 1f)), !select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 26u)], global1[_wgslsmith_index_u32(u_input.d.x, 26u)], global1[_wgslsmith_index_u32(58313u, 26u)]), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 26u)], false, global1[_wgslsmith_index_u32(5268u, 26u)]), true), Struct_1(true), abs(u_input.a.x)));
    let var_1 = !(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.a.yzy, _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(2147483647i, 0i, var_0.c.d))), 28162i) >= reverseBits(-(~23929i)));
    global0 = array<vec3<f32>, 17>();
    global1 = array<bool, 26>();
    let var_2 = var_0.b.xzy;
    return var_0;
}

fn func_1(arg_0: Struct_5) -> Struct_1 {
    global3 = array<vec4<u32>, 11>();
    let var_0 = ~abs(5873i);
    let var_1 = func_2();
    var var_2 = _wgslsmith_clamp_vec2_i32(var_1.b.wy, reverseBits(firstLeadingBit(vec2<i32>(27887i, var_0))), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, var_1.b.x), var_1.b.xx), -var_0), u_input.c.zx)) ^ -(-vec2<i32>(global2.x, u_input.c.x) ^ func_2().b.xw);
    var var_3 = !any(vec4<bool>(true, !var_1.c.c.a, all(var_1.c.b.zz), var_1.c.c.a));
    return func_2().c.c;
}

fn func_3(arg_0: u32) -> u32 {
    global3 = array<vec4<u32>, 11>();
    global3 = array<vec4<u32>, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(164f, -1964f, global1[_wgslsmith_index_u32(arg_0, 26u)])), _wgslsmith_f_op_f32(sign(1285f)), 1000f, _wgslsmith_f_op_f32(-1043f + -421f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(131f, -2228f, -690f, 187f) * vec4<f32>(380f, 1570f, -893f, 533f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-850f, 1362f, 397f, -255f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-770f, 1823f, 1696f, -1553f) - vec4<f32>(-493f, 109f, 214f, 755f)))))))));
    let var_1 = u_input.c.yz;
    global2 = -vec2<i32>(-3412i, firstTrailingBit(i32(-1i) * -25940i));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1906f), -573f, -1786f, _wgslsmith_f_op_f32(min(1923f, -101f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 432f, 1354f, -216f) + vec4<f32>(-519f, -1000f, -830f, 565f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2223f, 207f, -747f, 1323f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(546f, 1000f, -575f, -529f)))), true)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 642f, -345f, 365f)))))));
    var var_1 = func_1(Struct_5(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-1000f, var_0.x), _wgslsmith_f_op_f32(1053f + var_0.x)))));
    let var_2 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.d, u_input.d)), func_3(_wgslsmith_sub_u32(u_input.d.x, u_input.d.x)), u_input.d.x) < u_input.d.x);
    global0 = array<vec3<f32>, 17>();
    var var_3 = global4[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(~(~u_input.d.x | 4294967295u), 0u)), 27u)];
    var_3 = Struct_4(Struct_3(-26107i, reverseBits(u_input.a), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1161f, var_0.x))) - var_0.yw), vec3<bool>(any(var_3.a.c.b), true, false), func_2().c.c, var_3.c.d)), Struct_1(!all(!var_3.c.b.xy)), var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(-var_3.a.b.xxw)), 38032i, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, _wgslsmith_f_op_f32(min(var_3.c.a.x, var_3.c.a.x)), _wgslsmith_f_op_f32(floor(175f)), var_0.x))))), global2.x);
}

