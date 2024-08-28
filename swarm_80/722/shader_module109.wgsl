struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(-1000f, 375f), 11630i);

var<private> global2: u32;

var<private> global3: array<vec2<u32>, 1> = array<vec2<u32>, 1>(vec2<u32>(31151u, 30409u));

var<private> global4: Struct_2 = Struct_2(Struct_1(vec2<f32>(521f, -1748f), 1i), false);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = vec3<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 26u)] < 8885u, global4.b, global4.b), !vec4<bool>(true, false, arg_0, true))), !arg_0, !(!(!(!arg_0))));
    let var_1 = ~firstTrailingBit(-4133i);
    global3 = array<vec2<u32>, 1>();
    global3 = array<vec2<u32>, 1>();
    var var_2 = global4.a;
    return 59341u;
}

fn func_2() -> u32 {
    let var_0 = vec3<u32>(66452u >> (_wgslsmith_dot_vec2_u32(~(~vec2<u32>(global0[_wgslsmith_index_u32(u_input.d.x, 26u)], u_input.d.x)), vec2<u32>(_wgslsmith_mod_u32(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 26u)]), 0u)) % 32u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.d.x, func_3(true), ~global0[_wgslsmith_index_u32(54623u, 26u)], global0[_wgslsmith_index_u32(u_input.d.x, 26u)]), ~firstTrailingBit(vec4<u32>(32605u, u_input.c.x, global0[_wgslsmith_index_u32(44648u, 26u)], 1u))), 10707u), global0[_wgslsmith_index_u32(u_input.d.x, 26u)]);
    var var_1 = Struct_2(Struct_1(global4.a.a, -66157i << (((global0[_wgslsmith_index_u32(var_0.x, 26u)] | 67354u) >> (4294967295u % 32u)) % 32u)), any(!select(!vec4<bool>(global4.b, true, global4.b, global4.b), vec4<bool>(global4.b, true, global4.b, global4.b), select(vec4<bool>(global4.b, true, false, false), vec4<bool>(true, false, true, global4.b), true))));
    var var_2 = ~firstLeadingBit(_wgslsmith_mult_vec4_u32(select(vec4<u32>(8456u, u_input.c.x, 18677u, var_0.x), vec4<u32>(7384u, u_input.d.x, global0[_wgslsmith_index_u32(var_0.x, 26u)], global0[_wgslsmith_index_u32(var_0.x, 26u)]), false) ^ ~vec4<u32>(0u, 0u, 26406u, u_input.c.x), vec4<u32>(4294967295u, 1u, 144950u, countOneBits(global0[_wgslsmith_index_u32(var_0.x, 26u)]))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a.x * var_1.a.a.x) * _wgslsmith_f_op_f32(max(-762f, var_1.a.a.x))), _wgslsmith_f_op_f32(-global1.a.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.a.a.x) + var_1.a.a.x)) == _wgslsmith_f_op_f32(f32(-1f) * -265f);
    global2 = (global0[_wgslsmith_index_u32(var_2.x, 26u)] >> (~(~countOneBits(5450u)) % 32u)) & _wgslsmith_div_u32(~1u, ~(~1u));
    return ~(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1595u, 26u)] ^ u_input.d.x, var_0.x), _wgslsmith_sub_vec2_u32(var_0.xx, var_0.yz ^ vec2<u32>(1u, var_2.x))) ^ _wgslsmith_add_u32(u_input.d.x, var_0.x));
}

fn func_1(arg_0: f32) -> Struct_3 {
    let var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2757u, 26u)], 26u)], 30661u, global0[_wgslsmith_index_u32(u_input.c.x, 26u)], 41338u) ^ vec4<u32>(26889u, 0u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53936u, 26u)], 26u)])), ~(vec4<u32>(36337u, 38789u, 1u, u_input.d.x) ^ vec4<u32>(u_input.c.x, u_input.d.x, 78313u, 0u))) ^ _wgslsmith_clamp_vec4_u32(~vec4<u32>(25857u, global0[_wgslsmith_index_u32(22399u, 26u)], 4294967295u, u_input.c.x) ^ vec4<u32>(80713u, 66041u, u_input.c.x, 4294967295u), _wgslsmith_div_vec4_u32(vec4<u32>(37359u, u_input.c.x, 17973u, u_input.c.x) | vec4<u32>(4294967295u, 90203u, global0[_wgslsmith_index_u32(35169u, 26u)], 70901u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 26u)], 0u, 1443u, u_input.c.x)), ~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], 19034u, u_input.c.x, 24998u)), max(vec4<u32>(func_2(), 4294967295u, global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(~u_input.d.x, 26u)]), ~vec4<u32>(abs(u_input.d.x), ~0u, abs(4294967295u), 0u)));
    global2 = ~(~u_input.c.x);
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global4.a.a)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(global4.a.a.x, global4.a.a.x), -442f), vec2<f32>(-816f, _wgslsmith_f_op_f32(f32(-1f) * -248f))))), _wgslsmith_dot_vec3_i32(-vec3<i32>(~1i, abs(-28968i), global4.a.b), reverseBits(-(~vec3<i32>(u_input.a.x, global1.b, global1.b)))));
    var var_2 = !vec4<bool>(true, global4.b, true, !any(vec2<bool>(false, false)) | all(!vec4<bool>(global4.b, global4.b, true, global4.b)));
    var var_3 = u_input.b.x;
    return Struct_3(vec2<f32>(-648f, 1495f), select(vec3<bool>(select(false, var_2.x, true), false, true), var_2.zzz, var_2.x), firstTrailingBit(select(countOneBits(vec4<i32>(1759i, 12905i, 9711i, var_1.b)), vec4<i32>(u_input.a.x, global1.b, -37021i, var_1.b), false) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.x, u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63219u, 26u)], 26u)], u_input.c.x), _wgslsmith_div_vec4_u32(var_0, vec4<u32>(global0[_wgslsmith_index_u32(var_0.x, 26u)], 1u, 23027u, 1u))) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_vec2_f32(min(var_1.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.a.x, global1.a.x)), _wgslsmith_f_op_vec2_f32(select(global1.a, global4.a.a, vec2<bool>(var_2.x, false))))))), ~global4.a.b), all(select(!select(vec3<bool>(false, var_2.x, true), vec3<bool>(true, true, false), global4.b), var_2.zxz, all(vec2<bool>(false, global4.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(global1.a.x, -417f, 1662f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-541f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.a.x))))));
    var var_1 = ~vec4<u32>(_wgslsmith_sub_u32(max(u_input.d.x, ~u_input.c.x), 42630u), 15262u, u_input.c.x, global0[_wgslsmith_index_u32(u_input.d.x, 26u)] & select(u_input.c.x, select(4294967295u, 9668u, global4.b), global4.b));
    var var_2 = func_1(global4.a.a.x);
    var var_3 = ~vec2<u32>(var_1.x, 7306u);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.a.a.x)))) - 557f));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~countOneBits(_wgslsmith_mult_i32(30698i, global1.b)), firstTrailingBit(abs(2147483647i >> (var_1.x % 32u)))), var_2.c.x, select(~(vec4<i32>(u_input.a.x, -44785i, 2843i, global4.a.b) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(47090u, var_3.x, 58723u, 27998u), vec4<u32>(u_input.c.x, 32384u, 13956u, u_input.c.x), vec4<u32>(0u, var_3.x, var_1.x, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(var_2.c, vec4<i32>(0i, -1i, i32(-1i) * -28966i, 1i)), min(~global4.a.b, global4.a.b << (4294967295u % 32u)) != -(0i & u_input.b.x)), abs(_wgslsmith_div_vec4_u32(select(vec4<u32>(39126u, u_input.d.x, var_1.x, 1u), vec4<u32>(4294967295u, 65656u, u_input.d.x, global0[_wgslsmith_index_u32(4294967295u, 26u)]), var_2.b.x), ~vec4<u32>(global0[_wgslsmith_index_u32(31940u, 26u)], var_1.x, global0[_wgslsmith_index_u32(4294967295u, 26u)], 0u))) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 27878u, _wgslsmith_clamp_u32(u_input.c.x, var_3.x, 0u)), countOneBits(~vec4<u32>(u_input.d.x, 72858u, 15943u, var_1.x))));
}

