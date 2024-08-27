struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: array<bool, 10>;

var<private> global3: array<bool, 8>;

var<private> global4: array<u32, 18>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: Struct_2) -> i32 {
    var var_0 = ~min(vec3<u32>(~4294967295u, ~(~1u), 0u), firstTrailingBit(select(global0.b.a.yxx, global0.a.a.a.yzz, true)));
    let var_1 = !select(vec2<bool>(4294967295u > ~arg_2.a.a.x, global2[_wgslsmith_index_u32(arg_1.x, 10u)]), select(!vec2<bool>(true, global0.a.b), vec2<bool>(true || global1.x, arg_0 & global1.x), !vec2<bool>(global2[_wgslsmith_index_u32(36279u, 10u)], false)), any(!vec4<bool>(false, global0.a.d, arg_2.d, false)));
    let var_2 = Struct_4(select(~(_wgslsmith_clamp_vec2_u32(arg_2.a.a.yz, vec2<u32>(0u, var_0.x), arg_2.a.a.ww) & vec2<u32>(arg_1.x, var_0.x)), vec2<u32>(_wgslsmith_div_u32(u_input.a << (4294967295u % 32u), arg_2.e << (9511u % 32u)), ~max(47305u, arg_1.x)), var_1));
    global4 = array<u32, 18>();
    var_0 = ~global0.a.a.a.wyz;
    return -(~global0.a.a.b);
}

fn func_2(arg_0: f32, arg_1: f32) -> u32 {
    var var_0 = Struct_1(global0.a.a.a, _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_add_i32(global0.c, ~global0.d.c.x), -global0.d.b), -35366i), vec3<i32>(-7623i, abs(-35838i), _wgslsmith_add_i32(-51579i, 0i)));
    let var_1 = global0.d.c;
    var var_2 = vec2<bool>(any(vec3<bool>(func_3(true, vec2<u32>(1u, 44729u), Struct_2(Struct_1(global0.b.a, 2147483647i, global0.e.c), false, var_0.c, global2[_wgslsmith_index_u32(87482u, 10u)], 27511u)) != global0.e.b, true, any(vec2<bool>(global1.x, global3[_wgslsmith_index_u32(var_0.a.x, 8u)])) && !global1.x)), false);
    global3 = array<bool, 8>();
    let var_3 = reverseBits(-(~firstLeadingBit(min(vec3<i32>(0i, -1i, global0.c), vec3<i32>(-1i, global0.c, global0.b.b)))));
    return 4294967295u;
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(41916u, _wgslsmith_mult_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0.e.a.x, 18u)], 18u)], 18u)], 37549u)), global0.d.a.wz | vec2<u32>(u_input.a, 4294967295u)) | ~func_2(_wgslsmith_f_op_f32(1397f + 688f), _wgslsmith_f_op_f32(step(1313f, 1082f))), 0u, countOneBits(~17063u));
    let var_1 = any(vec4<bool>(all(select(vec2<bool>(global1.x, false), select(vec2<bool>(global0.a.d, false), vec2<bool>(global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 18u)], 10u)], true), true), !vec2<bool>(global0.a.b, global0.a.d))), !global1.x != global1.x, global3[_wgslsmith_index_u32(var_0, 8u)] & true, false));
    global1 = select(select(!(!(!vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 10u)], false))), !select(select(vec2<bool>(global3[_wgslsmith_index_u32(5330u, 8u)], true), vec2<bool>(false, global1.x), vec2<bool>(false, true)), !vec2<bool>(false, global1.x), select(vec2<bool>(false, global0.a.b), vec2<bool>(var_1, global1.x), global2[_wgslsmith_index_u32(global0.a.a.a.x, 10u)])), true), vec2<bool>(var_1, global1.x), true);
    let var_2 = Struct_3(global0.a, global0.b, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(global0.e.c.x, global0.d.c.x), _wgslsmith_div_i32(global0.b.c.x, -1i)), reverseBits(global0.b.c.xx)), -(global0.b.c.x >> (global0.d.a.x % 32u)) & 21874i), global0.a.a, Struct_1(global0.b.a, min(~2147483647i, -24526i | max(global0.d.c.x, global0.e.c.x)), ~countOneBits(global0.e.c)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1301f, -317f))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-607f, -1279f, var_2.a.b)), -2135f))));
    return StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(sign(var_3)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3 - var_3) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), firstLeadingBit(1u), countOneBits(global0.b.c.zz), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(350f, -526f, -1000f, -599f))) + vec4<f32>(var_3, -171f, var_3, var_3))))), var_2.a.a.c | _wgslsmith_clamp_vec3_i32(global0.e.c, ~(vec3<i32>(var_2.c, -29223i, 0i) << (vec3<u32>(66908u, 4294967295u, global0.b.a.x) % vec3<u32>(32u))), vec3<i32>(11490i, -1i, -var_2.b.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(!(!select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 18u)], 10u)], global0.a.d, false), vec4<bool>(true, false, true, true), global3[_wgslsmith_index_u32(u_input.a, 8u)])), vec4<bool>(!global3[_wgslsmith_index_u32(countOneBits(u_input.a), 8u)], false, !(global2[_wgslsmith_index_u32(0u, 10u)] == true), any(select(vec2<bool>(global0.a.d, true), vec2<bool>(false, global3[_wgslsmith_index_u32(9079u, 8u)]), global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global0.e.a.x, 18u)], 10u)]))), any(vec2<bool>(true, true)));
    let var_1 = Struct_4(global0.b.a.zx);
    let x = u_input.a;
    s_output = func_1();
}

