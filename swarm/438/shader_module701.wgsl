struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 218f;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, false), vec2<i32>(-1i, -5543i));

var<private> global2: Struct_1;

var<private> global3: array<u32, 18> = array<u32, 18>(1u, 8396u, 0u, 1u, 0u, 40495u, 23622u, 20283u, 95781u, 3871u, 1u, 1u, 66386u, 1u, 4294967295u, 4294967295u, 7836u, 1u);

var<private> global4: u32 = 8524u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>, arg_1: u32, arg_2: u32, arg_3: u32) -> bool {
    global1 = Struct_1(!select(!arg_0.yz, arg_0.xx, arg_0.x), vec2<i32>(_wgslsmith_add_i32(abs(-10723i), global1.b.x), u_input.a.x));
    var var_0 = 2356f;
    var var_1 = Struct_1(global2.a, -(vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, 2643i)));
    let var_2 = Struct_1(arg_0.yx, ~(-(~global2.b)));
    let var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2, min(0u, 2947u), 72131u), reverseBits(reverseBits(vec3<u32>(63185u, arg_2, 4294967295u)))) ^ ~min(max(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 18u)], 18u)], 10514u, 61617u), vec3<u32>(arg_2, 12802u, arg_1)), reverseBits(vec3<u32>(1286u, 45633u, global3[_wgslsmith_index_u32(0u, 18u)]))), vec3<u32>(~(~0u), ~4294967295u, arg_2));
    return select(abs(max(~0u, _wgslsmith_sub_u32(1u, arg_2))), u_input.c >> (_wgslsmith_add_u32(abs(arg_2), 35249u) % 32u), !all(!vec4<bool>(true, global2.a.x, arg_0.x, true))) != var_3;
}

fn func_2() -> f32 {
    global3 = array<u32, 18>();
    let var_0 = global1.a;
    global2 = Struct_1(select(!(!select(global2.a, vec2<bool>(false, global1.a.x), global1.a)), vec2<bool>((-13210i << (u_input.b.x % 32u)) > _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, 1i)), select(true, false, func_3(vec3<bool>(global2.a.x, false, global2.a.x), u_input.c, u_input.c, global3[_wgslsmith_index_u32(u_input.b.x, 18u)]))), false), min(vec2<i32>(global1.b.x, -1i), -vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-75341i, -1i), u_input.a.xy), global1.b.x)));
    var var_1 = -1i;
    global4 = _wgslsmith_sub_u32(u_input.b.x, abs(_wgslsmith_clamp_u32(52444u, u_input.b.x | u_input.c, global3[_wgslsmith_index_u32(abs(u_input.c), 18u)])) << (_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(36779u, 18u)], 18u)]) << (~u_input.c % 32u), 82074u) % 32u));
    return 1218f;
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> vec2<bool> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2()))));
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1371f, 538f, -530f, 1424f), vec4<f32>(1000f, -890f, 1528f, 1061f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(596f, 657f, 654f, -136f) - vec4<f32>(-872f, -461f, -145f, -553f))))))));
    let var_1 = ~(~(~(~vec3<u32>(0u, 31726u, u_input.b.x))));
    var var_2 = max(var_1.x, abs(1u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1128f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1744f, var_0.x)))) - _wgslsmith_div_f32(1153f, _wgslsmith_f_op_f32(abs(var_0.x))));
    return select(arg_1.yz, select(vec2<bool>(~u_input.b.x == u_input.c, global1.a.x), select(!vec2<bool>(arg_1.x, true), !arg_1.xy, arg_1.zx), !(!vec2<bool>(arg_1.x, arg_0))), (max(i32(-1i) * -5413i, _wgslsmith_add_i32(global2.b.x, 2147483647i)) << (~u_input.c % 32u)) > 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_1(true, !(!select(vec3<bool>(false, global2.a.x, global1.a.x), vec3<bool>(global2.a.x, global1.a.x, global1.a.x), global1.a.x))), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(countOneBits(u_input.a.x), -11714i), _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, -4275i), global1.b, global2.b), ~vec2<i32>(86869i, 64803i)))));
    var var_1 = Struct_1(!(!(!select(global1.a, vec2<bool>(true, true), true))), vec2<i32>(var_0.b.x, var_0.b.x));
    let var_2 = vec4<u32>(4294967295u, 36973u, ~34567u, 0u);
    global1 = Struct_1(global1.a, -u_input.a.wz);
    let var_3 = vec3<i32>(var_0.b.x, -7562i, ~(-max(firstTrailingBit(u_input.a.x), 2147483647i & var_1.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~var_2.zzx, vec3<u32>(0u, var_2.x, var_2.x) >> (var_2.wwx % vec3<u32>(32u))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, 0u, global3[_wgslsmith_index_u32(40798u, 18u)]), var_2.zwx)), var_2.zyz), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-182f, 1006f, 346f), vec3<f32>(1507f, 355f, 352f)))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1085f, 1000f, -1000f) - vec3<f32>(-832f, 1274f, -662f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-671f, 1114f, 908f)))))));
}

