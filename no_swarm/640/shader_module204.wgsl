struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1394f, 379f, -631f);

var<private> global1: vec3<bool> = vec3<bool>(false, false, true);

var<private> global2: vec2<u32>;

var<private> global3: vec4<u32> = vec4<u32>(8184u, 46524u, 13000u, 26354u);

var<private> global4: bool;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = global3.zz;
    global4 = false;
    global2 = vec2<u32>(min(reverseBits(0u), global3.x), global3.x >> (global2.x % 32u));
    let var_1 = ~vec2<i32>(arg_0.x, arg_0.x);
    let var_2 = _wgslsmith_dot_vec3_i32(arg_0.zyz, vec3<i32>(0i, firstLeadingBit(countOneBits(arg_0.x)), arg_0.x));
    return Struct_1(!(global3.x >= 1u));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: f32) -> vec4<u32> {
    let var_0 = vec4<u32>(u_input.a, max(~reverseBits(global2.x), abs((u_input.a ^ 0u) >> (~560u % 32u))), u_input.a, 0u);
    var var_1 = Struct_3(arg_1.x | reverseBits(_wgslsmith_clamp_i32(arg_1.x, -2147483647i, arg_1.x)), var_0.zzw);
    let var_2 = Struct_3(-_wgslsmith_mult_i32(_wgslsmith_div_i32(arg_1.x, arg_1.x), var_1.a & var_1.a) << (~global3.x % 32u), vec3<u32>(global2.x, reverseBits(~21640u), 4294967295u));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -841f)), arg_3) - _wgslsmith_f_op_f32(542f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -217f), global0.x))), global0.x, _wgslsmith_f_op_f32(trunc(505f)), global0.x);
    var var_4 = Struct_1(true);
    return max(vec4<u32>(firstTrailingBit(1u) | 80838u, ~110107u, _wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(var_0.x, 4294967295u), global3.x), 1u), abs(1u)), ~vec4<u32>(firstLeadingBit(0u), _wgslsmith_add_u32(firstTrailingBit(u_input.a), var_1.b.x & var_0.x), arg_0.x, ~(var_2.b.x & 0u)));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32) -> i32 {
    global3 = _wgslsmith_sub_vec4_u32(~vec4<u32>(global3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, global2.x, global2.x), global3.wyy), global2.x, global2.x & 3372u) ^ func_3(global3.xz, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(arg_1, arg_1)), arg_1), func_2(max(vec4<i32>(-33585i, -2147483647i, arg_1, arg_1), vec4<i32>(arg_1, arg_1, -2147483647i, arg_1)), global0.xx), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -493f))), reverseBits(select(_wgslsmith_add_vec4_u32(~vec4<u32>(5859u, 1u, 4015u, u_input.a), vec4<u32>(1u, global3.x, 0u, 0u) << (vec4<u32>(u_input.a, 4294967295u, 4294967295u, 1u) % vec4<u32>(32u))), ~(~vec4<u32>(global2.x, 34520u, 11590u, 0u)), select(vec4<bool>(global1.x, global1.x, false, arg_0.x), !arg_0, arg_0))));
    let var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, -2147483647i), vec2<i32>(arg_1, arg_1)), (firstLeadingBit(firstTrailingBit(vec2<i32>(1i, arg_1))) << (~(global3.zw ^ global3.ww) % vec2<u32>(32u))) ^ -vec2<i32>(arg_1, ~arg_1));
    global3 = _wgslsmith_mult_vec4_u32(~vec4<u32>(50980u, ~(~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.x, global2.x), ~vec3<u32>(0u, u_input.a, u_input.a)), 68430u), vec4<u32>(global3.x, reverseBits(global3.x), _wgslsmith_dot_vec4_u32(~(vec4<u32>(0u, 0u, global2.x, 1u) << (vec4<u32>(u_input.a, 21552u, u_input.a, 23329u) % vec4<u32>(32u))), countOneBits(~vec4<u32>(global2.x, global2.x, 1148u, 0u))), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, 1u, u_input.a), vec4<u32>(88996u, global2.x, 20701u, 20862u)))));
    var var_1 = global0.x;
    global3 = (vec4<u32>(u_input.a | ~27981u, 1u, _wgslsmith_div_u32(~u_input.a, global2.x), ~select(global2.x, 24257u, false)) & vec4<u32>(abs(~103236u), ~0u & max(global2.x, global2.x), countOneBits(u_input.a | global2.x), 104791u)) >> ((vec4<u32>(~global3.x | ~36291u, 1u, ~firstLeadingBit(97026u), _wgslsmith_mod_u32(~24462u, select(1u, global3.x, false))) & (vec4<u32>(~global2.x, u_input.a << (u_input.a % 32u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(54305u, global2.x, 4294967295u, global2.x), vec4<u32>(global2.x, 1u, 52103u, global2.x))) >> (select(~vec4<u32>(global2.x, u_input.a, 36494u, 4294967295u), ~vec4<u32>(u_input.a, 36604u, 0u, u_input.a), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~global3.xy;
    var var_0 = _wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(_wgslsmith_sub_i32(-1i, -2147483647i), max(-6244i, -2147483647i), ~27506i, 1i)), i32(-1i) * -func_1(!vec4<bool>(global1.x, global1.x, global1.x, global1.x), max(-2147483647i, 33214i)));
    global4 = false;
    var var_1 = _wgslsmith_f_op_vec2_f32(global0.yz * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -374f))), select(!vec2<bool>(global1.x, global1.x), select(global1.zz, global1.yx, vec2<bool>(global1.x, false)), global2.x >= u_input.a))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-735f, -1266f))))));
    let var_2 = ~(2147483647i >> ((~global2.x >> (reverseBits(_wgslsmith_sub_u32(u_input.a, 4294967295u)) % 32u)) % 32u));
    let var_3 = _wgslsmith_clamp_vec2_i32(select(_wgslsmith_sub_vec2_i32(min(select(vec2<i32>(825i, -2147483647i), vec2<i32>(var_2, -40432i), false), vec2<i32>(-1i, var_2)), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_2, -53476i), vec2<i32>(1i, var_2)), -vec2<i32>(var_2, var_2))), -vec2<i32>(-21585i, 1i) | min(-vec2<i32>(var_2, 15693i), _wgslsmith_add_vec2_i32(vec2<i32>(var_2, var_2), vec2<i32>(var_2, 53050i))), vec2<bool>(true, global1.x)), vec2<i32>(var_2, ~(i32(-1i) * -14592i)), abs(~_wgslsmith_div_vec2_i32(abs(vec2<i32>(var_2, var_2)), max(vec2<i32>(var_2, 57724i), vec2<i32>(-1i, var_2)))));
    global3 = vec4<u32>(global2.x, u_input.a, 1u, max(~(~4294967295u), global3.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(43846u, ~4294967295u, u_input.a, 17655u), ~(~vec4<u32>(4294967295u, 4294967295u, 35498u, global3.x)) | ~(vec4<u32>(3606u, global3.x, 29136u, 1u) >> (vec4<u32>(global3.x, u_input.a, global2.x, 33665u) % vec4<u32>(32u))), true && !(!global1.x)), -25490i, global3.ywy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 537f) - _wgslsmith_f_op_f32(sign(var_1.x))) + _wgslsmith_f_op_f32(global0.x - -926f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-991f + 900f) + -429f))));
}

