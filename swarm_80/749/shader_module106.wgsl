struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: Struct_2 = Struct_2(Struct_1(false, 31787u, 4294967295u, vec3<bool>(true, false, false), 17344i));

var<private> global2: vec4<f32> = vec4<f32>(-256f, 1262f, -790f, 1822f);

var<private> global3: array<Struct_2, 3>;

var<private> global4: array<f32, 5> = array<f32, 5>(-1846f, 635f, 438f, -2308f, -1057f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_3, arg_3: vec3<i32>) -> i32 {
    let var_0 = Struct_1(false, ~(~1u), ~_wgslsmith_sub_u32(abs(_wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(4341u, 21u)])), global0[_wgslsmith_index_u32(1u, 21u)]), select(vec3<bool>(arg_2.b.x, false || any(vec3<bool>(global1.a.a, arg_2.a.x, false)), true), select(vec3<bool>(true, any(arg_2.a), true), !select(vec3<bool>(true, arg_2.b.x, true), vec3<bool>(arg_2.b.x, global1.a.d.x, true), vec3<bool>(global1.a.d.x, global1.a.d.x, false)), select(arg_2.a, arg_2.a, false | arg_2.a.x)), !(arg_1 > global1.a.e)), 2147483647i);
    var var_1 = global1.a;
    var var_2 = select(max(2147483647i, var_1.e), _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(33140i, arg_1)), arg_3.zx) << (~(~(~u_input.b.x)) % 32u), all(vec4<bool>(var_0.a, true, true, firstLeadingBit(arg_1) >= ~var_0.e)));
    var var_3 = Struct_3(select(!(!(!vec3<bool>(false, var_1.d.x, true))), !select(vec3<bool>(var_0.a, false, false), var_0.d, vec3<bool>(global1.a.a, false, true)), true), !(!(!select(vec2<bool>(false, false), arg_2.b, vec2<bool>(true, false)))));
    var var_4 = -2147483647i;
    return global1.a.e;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2) -> u32 {
    var var_0 = func_3(abs(_wgslsmith_mod_vec2_u32(~u_input.b.zx, vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 0u))), max(_wgslsmith_clamp_i32(~(-2147483647i), arg_0.x << (global1.a.b % 32u), -30487i), arg_0.x), Struct_3(vec3<bool>(all(arg_1.a.d), arg_1.a.d.x, true), global1.a.d.xz), vec3<i32>(_wgslsmith_mod_i32(global1.a.e, -2147483647i), global1.a.e, ~(i32(-1i) * -1i))) < countOneBits(80429i);
    global3 = array<Struct_2, 3>();
    var var_1 = true;
    global0 = array<u32, 21>();
    var var_2 = max(~(~vec4<i32>(0i, -1i, -1i, 11466i) & _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, arg_0.x, -2147483647i, arg_1.a.e) >> (vec4<u32>(global1.a.b, u_input.a.x, global1.a.b, global0[_wgslsmith_index_u32(global1.a.c, 21u)]) % vec4<u32>(32u)), vec4<i32>(19040i, 45245i, 0i, arg_0.x))), ~_wgslsmith_sub_vec4_i32(~vec4<i32>(2147483647i, 5580i, arg_0.x, arg_1.a.e), vec4<i32>(32739i, -1i, global1.a.e, -6589i) ^ vec4<i32>(arg_1.a.e, arg_0.x, global1.a.e, 2147483647i)) | abs(vec4<i32>(arg_1.a.e, 71075i | global1.a.e, 2147483647i, 2147483647i)));
    return global1.a.b;
}

fn func_1(arg_0: Struct_3) -> Struct_2 {
    var var_0 = min(4294967295u, global0[_wgslsmith_index_u32(func_2(vec2<i32>(_wgslsmith_sub_i32(min(global1.a.e, global1.a.e), 1i), global1.a.e), global3[_wgslsmith_index_u32(1u, 3u)]), 21u)]);
    let var_1 = min((-global1.a.e << (min(firstTrailingBit(u_input.b.x), 16099u) % 32u)) ^ _wgslsmith_sub_i32(global1.a.e, 246i), firstLeadingBit(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(global1.a.e, -1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-30824i, global1.a.e), vec2<i32>(-23743i, global1.a.e), vec2<i32>(global1.a.e, 0i)))) ^ (i32(-1i) * -2147483647i));
    let var_2 = true;
    global0 = array<u32, 21>();
    var_0 = global0[_wgslsmith_index_u32(38333u, 21u)];
    return Struct_2(Struct_1(any(global1.a.d), u_input.a.x, 4294967295u, select(select(vec3<bool>(arg_0.b.x, arg_0.a.x, false), select(global1.a.d, vec3<bool>(var_2, false, false), vec3<bool>(arg_0.b.x, false, false)), vec3<bool>(true, false, arg_0.b.x)), !(!vec3<bool>(true, false, arg_0.b.x)), global1.a.a), i32(-1i) * -var_1));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_3(!global1.a.d, vec2<bool>(!(!global1.a.a), ~u_input.b.x >= max(4294967295u, 17565u))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global4[_wgslsmith_index_u32(4294967295u, 5u)], 759f, global4[_wgslsmith_index_u32(1u, 5u)]) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1462f, global4[_wgslsmith_index_u32(0u, 5u)], -1000f, -410f) - vec4<f32>(1416f, global4[_wgslsmith_index_u32(0u, 5u)], global4[_wgslsmith_index_u32(3718u, 5u)], global2.x)))))));
    let var_2 = 0u;
    let var_3 = u_input.b;
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_1.x + global4[_wgslsmith_index_u32(var_2, 5u)]), var_1.x, _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(50982u, 5u)]), 1189f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, -312f, -1263f) - var_1)))))));
    global0 = array<u32, 21>();
    var var_4 = Struct_3(vec3<bool>(var_0.a.d.x, !(~global1.a.e >= var_0.a.e), true), vec2<bool>(false, false));
    let var_5 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~((var_5.e ^ global1.a.e) >> (~9936u % 32u)), 1i, var_0.a.e << (var_0.a.b % 32u), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(10340i, 0i) & vec2<i32>(global1.a.e, 6912i), firstTrailingBit(vec2<i32>(-4046i, 2147483647i))), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.e, global1.a.e, -1717i) | vec3<i32>(var_0.a.e, global1.a.e, var_5.e), firstLeadingBit(vec3<i32>(-1i, 2147483647i, -1i))))));
}

