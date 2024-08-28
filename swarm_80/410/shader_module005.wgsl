struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<bool, 31> = array<bool, 31>(true, true, true, false, false, false, true, true, false, true, true, true, true, true, true, false, false, false, false, false, true, false, true, true, false, true, true, true, true, false, false);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -505f, 1111f), vec3<f32>(-645f, -391f, -1764f))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(1627f, 343f, -1100f), vec3<f32>(948f, 361f, -406f)))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-374f, -841f, 401f)))))))));
    global0 = vec4<u32>(arg_0, ~(~_wgslsmith_add_u32(~global0.x, countOneBits(4294967295u))), 1u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, arg_0, arg_0), vec3<u32>(1u, 4294967295u, 36913u)), vec3<u32>(38757u, arg_0, global0.x)) & ~(~50929u), _wgslsmith_sub_u32(u_input.c & _wgslsmith_mod_u32(49536u, 3355u), _wgslsmith_mult_u32(arg_0, min(arg_0, global0.x))), ~firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, 0u, 0u, 0u), vec4<u32>(30261u, 0u, u_input.c, arg_0)))));
    let var_1 = Struct_1(!select(!vec3<bool>(global1[_wgslsmith_index_u32(arg_0, 31u)], true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec2<i32>(-2147483647i, u_input.b), vec3<bool>(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(10049u, 23980u, global0.x, 27076u), vec4<u32>(arg_0, arg_0, 37955u, global0.x)), ~vec4<u32>(0u, global0.x, 34346u, global0.x)) >= u_input.c, !any(select(vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 31u)], true, global1[_wgslsmith_index_u32(4294967295u, 31u)]), vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(global0.x, 31u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 31u)], false, true, global1[_wgslsmith_index_u32(4294967295u, 31u)]))), any(!select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(0u, 31u)], false), vec4<bool>(global1[_wgslsmith_index_u32(82654u, 31u)], false, true, global1[_wgslsmith_index_u32(arg_0, 31u)]), global1[_wgslsmith_index_u32(u_input.d, 31u)]))), countOneBits(vec3<u32>(39968u, countOneBits(~66507u), 9027u)));
    var var_2 = countOneBits(vec4<u32>(_wgslsmith_sub_u32(~0u, 15745u), 0u, global0.x, _wgslsmith_div_u32(_wgslsmith_add_u32(~u_input.d, ~global0.x), reverseBits(~50906u))));
    var_2 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(3031u, global0.x, 1987u, 1u) << (_wgslsmith_div_vec4_u32(~vec4<u32>(arg_0, u_input.d, global0.x, 0u), vec4<u32>(1u, 1u, arg_0, 32250u)) % vec4<u32>(32u)), ~abs(vec4<u32>(29718u, var_1.d.x, u_input.c, var_1.d.x))), (min(firstTrailingBit(vec4<u32>(4294967295u, 63173u, 0u, 4294967295u)), ~vec4<u32>(arg_0, u_input.c, 53680u, 29343u)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, 0u, var_1.d.x, var_1.d.x) ^ vec4<u32>(43980u, arg_0, global0.x, var_2.x), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, 4294967295u, 0u, var_2.x), vec4<u32>(var_2.x, global0.x, global0.x, arg_0))) % vec4<u32>(32u))) ^ vec4<u32>(~reverseBits(global0.x), var_2.x << (30777u % 32u), 1u, var_1.d.x));
    return ~abs(~(vec4<u32>(arg_0, arg_0, 0u, var_1.d.x) & ~vec4<u32>(39424u, u_input.c, 4294967295u, 4294967295u)));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> bool {
    let var_0 = func_3(~reverseBits(~u_input.d) ^ arg_1.d.x);
    var var_1 = Struct_2(arg_1);
    var_1 = Struct_2(Struct_1(arg_1.a, var_1.a.b, !(!arg_1.a), select(vec3<u32>(_wgslsmith_div_u32(1u, global0.x), global0.x, firstLeadingBit(global0.x)), global0.ywx, vec3<bool>(var_1.a.a.x, arg_0, arg_0))));
    let var_2 = Struct_2(Struct_1(select(vec3<bool>(true, all(vec3<bool>(true, false, arg_0)), true), vec3<bool>(all(vec4<bool>(true, arg_1.a.x, var_1.a.a.x, false)), arg_0, true), vec3<bool>(arg_1.a.x, true, arg_2 == 1i)), reverseBits(_wgslsmith_mod_vec2_i32(u_input.a >> (arg_1.d.zz % vec2<u32>(32u)), firstTrailingBit(arg_1.b))), !select(arg_1.c, arg_1.a, !vec3<bool>(false, false, var_1.a.c.x)), ~var_1.a.d));
    global0 = ~vec4<u32>(1640u, 34842u, 0u, _wgslsmith_clamp_u32(min(9705u, _wgslsmith_dot_vec4_u32(var_0, vec4<u32>(var_1.a.d.x, 37498u, 1u, arg_1.d.x))), _wgslsmith_dot_vec2_u32(var_1.a.d.xx, var_0.zw | vec2<u32>(54716u, global0.x)), 1u));
    return true;
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: vec4<bool>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-661f, -1000f, 999f), vec3<f32>(arg_1, -1498f, arg_1), vec3<bool>(false, arg_0, true))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-606f, 1735f, arg_1) + vec3<f32>(-1842f, 1583f, -122f))))))));
    var var_1 = func_2(false, arg_2, ~(-u_input.a.x));
    let var_2 = Struct_2(arg_2);
    let var_3 = var_2.a;
    var var_4 = vec2<u32>(var_2.a.d.x, var_3.d.x);
    return ~vec4<u32>(0u, abs(u_input.d), global0.x, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(global0.x, u_input.d, u_input.d, global0.x), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(47936u, 1u, u_input.d, u_input.d), vec4<u32>(u_input.c, u_input.c, 25558u, 1u)), func_1(true, -180f, Struct_1(vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)]), u_input.a, vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 31u)], true, true), vec3<u32>(u_input.d, u_input.c, global0.x)), vec4<bool>(global1[_wgslsmith_index_u32(0u, 31u)], true, true, global1[_wgslsmith_index_u32(u_input.c, 31u)])))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, 28634u), vec2<u32>(u_input.c, 34609u)), global0.x, max(max(18039u, 4294967295u), global0.x), firstLeadingBit(u_input.c))));
    global1 = array<bool, 31>();
    let var_0 = Struct_2(Struct_1(select(vec3<bool>(true, true == global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(39987u, 31u)] || false), vec3<bool>(true, false, true), true), vec2<i32>(7077i, 7264i), select(!vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 31u)], true, true), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c, 31u)], global1[_wgslsmith_index_u32(2986u, 31u)], global1[_wgslsmith_index_u32(14280u, 31u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(global0.x, 31u)], global1[_wgslsmith_index_u32(94721u, 31u)], false), vec3<bool>(true, true, global1[_wgslsmith_index_u32(72475u, 31u)]), vec3<bool>(global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)])), true), select(select(vec3<bool>(false, false, global1[_wgslsmith_index_u32(4294967295u, 31u)]), vec3<bool>(global1[_wgslsmith_index_u32(global0.x, 31u)], global1[_wgslsmith_index_u32(32035u, 31u)], global1[_wgslsmith_index_u32(u_input.d, 31u)]), global1[_wgslsmith_index_u32(u_input.d, 31u)]), vec3<bool>(true, true, true), !global1[_wgslsmith_index_u32(0u, 31u)])), global0.zxw));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec3<i32>(var_0.a.b.x, var_0.a.b.x, -2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(301f, -881f) * vec2<f32>(404f, 1935f)))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1193f, -256f)))))));
}

