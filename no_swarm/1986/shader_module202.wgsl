struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec3<f32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, false, false, true), -29670i, vec3<f32>(-939f, -292f, -1000f), false, vec3<u32>(5062u, 4294967295u, 1u));

var<private> global1: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(2147483647i, 0i, 0i, 2147483647i), vec4<i32>(3870i, i32(-2147483648), -1i, 0i));

var<private> global2: bool = false;

var<private> global3: array<Struct_2, 27>;

var<private> global4: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(49649u, Struct_1(vec4<bool>(true, true, true, true), i32(-2147483648), vec3<f32>(472f, -821f, -183f), false, vec3<u32>(39141u, 1u, 65419u)), Struct_1(vec4<bool>(false, true, true, false), 1i, vec3<f32>(-544f, 423f, -769f), false, vec3<u32>(25326u, 979u, 0u))), Struct_2(15268u, Struct_1(vec4<bool>(false, true, true, true), 2147483647i, vec3<f32>(393f, -2663f, 254f), false, vec3<u32>(23881u, 877u, 12017u)), Struct_1(vec4<bool>(true, false, true, true), 2147483647i, vec3<f32>(-160f, -771f, -1678f), false, vec3<u32>(1u, 87557u, 1u))), Struct_2(4294967295u, Struct_1(vec4<bool>(false, true, true, false), i32(-2147483648), vec3<f32>(141f, -371f, 1639f), true, vec3<u32>(0u, 60314u, 52338u)), Struct_1(vec4<bool>(true, true, false, true), -9223i, vec3<f32>(-160f, 1607f, 1192f), true, vec3<u32>(4294967295u, 0u, 1u))), Struct_2(0u, Struct_1(vec4<bool>(true, true, true, true), 2401i, vec3<f32>(1339f, 187f, 820f), false, vec3<u32>(4294967295u, 41393u, 53132u)), Struct_1(vec4<bool>(true, false, false, true), 29567i, vec3<f32>(-131f, 182f, 1000f), false, vec3<u32>(0u, 4422u, 39348u))), Struct_2(1u, Struct_1(vec4<bool>(true, false, false, true), -15721i, vec3<f32>(1059f, -218f, 253f), true, vec3<u32>(1u, 0u, 1u)), Struct_1(vec4<bool>(true, false, false, true), -72991i, vec3<f32>(-1309f, 121f, 987f), false, vec3<u32>(53790u, 69342u, 27863u))), Struct_2(4294967295u, Struct_1(vec4<bool>(false, false, false, false), -14230i, vec3<f32>(-1000f, 939f, -274f), true, vec3<u32>(19955u, 4294967295u, 41183u)), Struct_1(vec4<bool>(true, true, true, false), 8055i, vec3<f32>(1000f, 697f, 741f), false, vec3<u32>(14063u, 1u, 897u))), Struct_2(12408u, Struct_1(vec4<bool>(true, true, false, false), 1i, vec3<f32>(1106f, 153f, -804f), true, vec3<u32>(1u, 4294967295u, 49347u)), Struct_1(vec4<bool>(true, false, false, false), -1i, vec3<f32>(1000f, -858f, 1150f), false, vec3<u32>(1u, 1877u, 0u))), Struct_2(4294967295u, Struct_1(vec4<bool>(true, true, false, false), i32(-2147483648), vec3<f32>(-464f, 952f, 446f), false, vec3<u32>(62418u, 43115u, 15330u)), Struct_1(vec4<bool>(false, false, false, true), 1i, vec3<f32>(-413f, -385f, -2064f), true, vec3<u32>(9529u, 4294967295u, 1u))), Struct_2(74398u, Struct_1(vec4<bool>(false, true, true, false), 851i, vec3<f32>(366f, -954f, -693f), false, vec3<u32>(1u, 22702u, 4294967295u)), Struct_1(vec4<bool>(true, true, true, true), -29980i, vec3<f32>(-262f, -973f, -1535f), false, vec3<u32>(1u, 0u, 1u))), Struct_2(1u, Struct_1(vec4<bool>(false, true, false, true), -1i, vec3<f32>(1311f, 758f, 2191f), false, vec3<u32>(0u, 0u, 1u)), Struct_1(vec4<bool>(true, true, false, false), -281i, vec3<f32>(-1471f, -318f, -1717f), false, vec3<u32>(1u, 25905u, 41049u))), Struct_2(52592u, Struct_1(vec4<bool>(true, false, false, true), i32(-2147483648), vec3<f32>(-338f, 776f, -703f), true, vec3<u32>(4294967295u, 1u, 7373u)), Struct_1(vec4<bool>(true, false, true, false), -23996i, vec3<f32>(-412f, -934f, 844f), false, vec3<u32>(8194u, 23105u, 0u))), Struct_2(4294967295u, Struct_1(vec4<bool>(true, false, false, false), i32(-2147483648), vec3<f32>(-850f, -699f, -1572f), false, vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_1(vec4<bool>(false, true, true, true), i32(-2147483648), vec3<f32>(1000f, 1273f, -1078f), false, vec3<u32>(0u, 4294967295u, 51517u))), Struct_2(1u, Struct_1(vec4<bool>(true, false, false, false), 0i, vec3<f32>(-208f, 1000f, 1123f), false, vec3<u32>(60652u, 13792u, 1u)), Struct_1(vec4<bool>(false, true, true, true), -2412i, vec3<f32>(-1000f, -593f, -387f), false, vec3<u32>(4294967295u, 8030u, 4294967295u))));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<i32>) -> bool {
    return global0.d;
}

fn func_2() -> vec4<f32> {
    global1 = array<vec4<i32>, 2>();
    let var_0 = countOneBits(max(62640u, abs(u_input.b.x)));
    var var_1 = global0.d;
    global0 = Struct_1(global0.a, firstLeadingBit(-(~global0.b)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0.c), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2565f, global0.c.x, global0.c.x)))))))), func_3(max(global1[_wgslsmith_index_u32(var_0, 2u)], global1[_wgslsmith_index_u32(countOneBits(0u), 2u)])) == (_wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(abs(global0.c.x))) > -1424f), ~vec3<u32>(81166u, var_0, global0.e.x));
    global4 = array<Struct_2, 13>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2525f, -1000f, _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.c.x), 372f)))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(302f, _wgslsmith_f_op_f32(global0.c.x * global0.c.x), global0.c.x, -234f)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(962f, -847f, -707f, global0.c.x))) - vec4<f32>(global0.c.x, 263f, 1035f, global0.c.x)) * _wgslsmith_f_op_vec4_f32(func_2())) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.c.x)), _wgslsmith_f_op_f32(select(global0.c.x, -455f, global0.a.x)), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -431f)), vec4<f32>(_wgslsmith_f_op_f32(sign(global0.c.x)), global0.c.x, _wgslsmith_f_op_f32(-global0.c.x), global0.c.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, 188f, _wgslsmith_f_op_f32(1000f + global0.c.x), _wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(global0.c.x - global0.c.x), 674f, _wgslsmith_f_op_f32(-global0.c.x))), global0.a)), true));
    let var_1 = Struct_3(-1i);
    global3 = array<Struct_2, 27>();
    let var_2 = vec3<u32>(min(~select(1u, 4294967295u, all(arg_0)), _wgslsmith_div_u32(reverseBits(14227u), 1u)), firstLeadingBit(min(27067u, 1u & global0.e.x) ^ 4294967295u), ~(~abs(arg_1.x)));
    var var_3 = var_1;
    return _wgslsmith_f_op_f32(f32(-1f) * -367f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-184f, 1099f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x + 160f) + _wgslsmith_f_op_f32(func_1(global0.a, global0.e.yy))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.c.x))))), _wgslsmith_f_op_vec4_f32(func_2()).x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1798f, global0.c.x, 759f, global0.c.x), vec4<f32>(-181f, 421f, global0.c.x, 949f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1061f, 407f, global0.c.x, global0.c.x))))))));
    global0 = Struct_1(vec4<bool>(select(var_0.x >= global0.c.x, any(global0.a), global0.d | global0.a.x) | true, global0.d, func_3(global1[_wgslsmith_index_u32(36950u, 2u)]) == false, true), global0.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 488f, var_0.x))))) * _wgslsmith_f_op_vec3_f32(-global0.c)), u_input.e >= u_input.a.x, vec3<u32>(~(~43823u) >> (reverseBits(u_input.b.x) % 32u), countOneBits(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(84766u, 5628u, global0.e.x, global0.e.x), vec4<u32>(21425u, u_input.b.x, u_input.b.x, 4294967295u)))), u_input.b.x));
    var var_1 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, min(u_input.b.x, 4294967295u) << (24900u % 32u), 4294967295u, u_input.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(61029u, 12988u, 5490u, 71962u) >> (~vec4<u32>(0u, 27525u, u_input.b.x, 0u) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 0u, global0.e.x, u_input.b.x), vec4<u32>(u_input.b.x, global0.e.x, global0.e.x, global0.e.x)), 1u, _wgslsmith_clamp_u32(4294967295u, 36896u, 70095u), u_input.b.x))), global0.e.x & u_input.b.x);
    global1 = array<vec4<i32>, 2>();
    let var_2 = u_input.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -477f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(abs(global0.c.x)), false)))), global0.c.x, max(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 19405i), u_input.c.xz, u_input.a), vec2<i32>(-19490i, global0.b)), -vec2<i32>(u_input.e, 15714i)), _wgslsmith_mod_vec2_i32(firstTrailingBit(firstLeadingBit(vec2<i32>(var_2, 2147483647i))), u_input.a)));
}

