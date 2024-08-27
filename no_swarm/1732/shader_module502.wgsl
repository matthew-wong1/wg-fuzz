struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(26482u, vec2<i32>(2147483647i, -1i), 1540i, 2147483647i, vec4<bool>(true, true, true, true)), Struct_1(48361u, vec2<i32>(i32(-2147483648), 2147483647i), 24475i, 0i, vec4<bool>(true, true, false, true)), Struct_1(4294967295u, vec2<i32>(-49389i, 43711i), -37526i, -1i, vec4<bool>(true, true, true, false)), Struct_1(14740u, vec2<i32>(-17976i, i32(-2147483648)), 19033i, 0i, vec4<bool>(false, true, false, false)), Struct_1(6304u, vec2<i32>(2147483647i, -1i), -1419i, 57198i, vec4<bool>(true, false, true, false)), Struct_1(4294967295u, vec2<i32>(-37428i, 0i), 22606i, 69782i, vec4<bool>(false, true, false, true)), Struct_1(1u, vec2<i32>(1i, -53107i), 0i, -1i, vec4<bool>(false, true, false, false)), Struct_1(4294967295u, vec2<i32>(2147483647i, -64460i), -9123i, 11333i, vec4<bool>(false, true, true, false)), Struct_1(9569u, vec2<i32>(66260i, 80172i), 2147483647i, 1i, vec4<bool>(false, true, true, false)), Struct_1(1u, vec2<i32>(-55716i, 2147483647i), 22148i, 1i, vec4<bool>(false, true, true, true)), Struct_1(1u, vec2<i32>(-1i, 1i), 2147483647i, 0i, vec4<bool>(false, false, false, true)), Struct_1(0u, vec2<i32>(1i, 38622i), -39434i, -26995i, vec4<bool>(true, true, false, false)), Struct_1(1u, vec2<i32>(i32(-2147483648), 1i), i32(-2147483648), i32(-2147483648), vec4<bool>(false, true, true, false)), Struct_1(8230u, vec2<i32>(0i, -1i), i32(-2147483648), -3507i, vec4<bool>(true, true, false, false)), Struct_1(4294967295u, vec2<i32>(-11553i, 2147483647i), i32(-2147483648), -69910i, vec4<bool>(false, true, false, false)), Struct_1(1u, vec2<i32>(-1i, -35066i), 61267i, -2067i, vec4<bool>(true, false, true, false)), Struct_1(4294967295u, vec2<i32>(45060i, 1253i), -57035i, 0i, vec4<bool>(false, true, false, true)), Struct_1(1u, vec2<i32>(1i, -1i), 33761i, 1i, vec4<bool>(false, false, true, false)), Struct_1(63243u, vec2<i32>(23540i, -67058i), 0i, i32(-2147483648), vec4<bool>(false, false, true, true)), Struct_1(4294967295u, vec2<i32>(34237i, 0i), -34499i, 0i, vec4<bool>(false, true, true, true)), Struct_1(49780u, vec2<i32>(1i, -1i), 1i, 35089i, vec4<bool>(true, false, false, true)), Struct_1(4294967295u, vec2<i32>(-26174i, -30968i), 2147483647i, 7987i, vec4<bool>(true, true, false, true)), Struct_1(4294967295u, vec2<i32>(37523i, 1i), -92924i, 0i, vec4<bool>(true, true, false, true)));

var<private> global1: array<Struct_1, 27>;

var<private> global2: array<bool, 16>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> vec4<u32> {
    global1 = array<Struct_1, 27>();
    global0 = array<Struct_1, 23>();
    var var_0 = select(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(1u << (u_input.c % 32u), _wgslsmith_mod_u32(65452u, u_input.c)), 1u, countOneBits(12323u)), 35854u << ((_wgslsmith_add_u32(max(u_input.c, u_input.c), u_input.c << (u_input.c % 32u)) & abs(~33232u)) % 32u), true);
    return ~(~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.c, 0u), ~4294967295u, ~u_input.c, u_input.c), ~max(vec4<u32>(14172u, u_input.c, u_input.c, u_input.c), vec4<u32>(10547u, 31963u, u_input.c, u_input.c))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = select(arg_2.e.wz, select(select(select(arg_3.e.wx, arg_2.e.wx, vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 16u)], true)), vec2<bool>(!arg_2.e.x, true), arg_2.e.x), !vec2<bool>(false & global2[_wgslsmith_index_u32(arg_3.a, 16u)], false), any(arg_2.e.wz)), global2[_wgslsmith_index_u32(func_1().x, 16u)]);
    let var_1 = ~vec4<i32>(~arg_1.x, min(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, 0i, arg_1.x, -2147483647i), ~u_input.b)), 2147483647i, 13368i);
    let var_2 = global1[_wgslsmith_index_u32(arg_3.a, 27u)];
    global0 = array<Struct_1, 23>();
    var var_3 = Struct_1(var_2.a, reverseBits(reverseBits(select(arg_2.b, arg_2.b, any(vec2<bool>(true, arg_3.e.x))))), arg_1.x, arg_1.x, vec4<bool>(any(select(select(vec3<bool>(arg_2.e.x, var_2.e.x, false), vec3<bool>(arg_2.e.x, false, var_2.e.x), arg_3.e.zwy), vec3<bool>(true, arg_2.e.x, true), vec3<bool>(arg_3.e.x, false, true))), true, arg_2.e.x, true));
    return var_3.b.x;
}

fn func_2() -> vec2<i32> {
    var var_0 = u_input.b.x;
    let var_1 = Struct_1(u_input.c >> (~(~1u) % 32u), u_input.b.yz, ~2147483647i, countOneBits(~u_input.e), !(!vec4<bool>(select(global2[_wgslsmith_index_u32(u_input.c, 16u)], global2[_wgslsmith_index_u32(u_input.c, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)]), !global2[_wgslsmith_index_u32(u_input.c, 16u)], select(false, global2[_wgslsmith_index_u32(u_input.c, 16u)], true), select(global2[_wgslsmith_index_u32(64572u, 16u)], global2[_wgslsmith_index_u32(u_input.c, 16u)], global2[_wgslsmith_index_u32(u_input.c, 16u)]))));
    let var_2 = var_1.e.x;
    var_0 = -31649i;
    return _wgslsmith_sub_vec2_i32(vec2<i32>(max(_wgslsmith_mod_i32(var_1.d, u_input.e), func_3(vec4<f32>(1000f, -1498f, -1019f, -1243f), vec2<i32>(var_1.b.x, var_1.b.x), Struct_1(4294967295u, var_1.b, var_1.d, var_1.c, vec4<bool>(true, true, false, var_2)), var_1)), var_1.d) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a, u_input.c), max(countOneBits(vec2<u32>(32950u, 1u)), vec2<u32>(4294967295u, 10710u)), countOneBits(~vec2<u32>(u_input.c, var_1.a))) % vec2<u32>(32u)), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 23>();
    let var_0 = Struct_1(1u & _wgslsmith_mod_u32(u_input.c, u_input.c), vec2<i32>(28101i, -u_input.e), u_input.b.x, 0i, !vec4<bool>(true, any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 16u)], global2[_wgslsmith_index_u32(24865u, 16u)], true, true)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 16u)], global2[_wgslsmith_index_u32(u_input.c, 16u)], false, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 16u)], true, false, global2[_wgslsmith_index_u32(u_input.c, 16u)]))), global2[_wgslsmith_index_u32(~115943u, 16u)]));
    var var_1 = ~func_1();
    var var_2 = true;
    let var_3 = Struct_1(~87719u, _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(u_input.d.x, -28225i), func_2()), min(select(vec2<i32>(-2147483647i, var_0.c), var_0.b, vec2<bool>(true, true)), _wgslsmith_sub_vec2_i32(vec2<i32>(var_0.d, u_input.e), u_input.b.wx)), func_2()) | vec2<i32>(-(u_input.b.x ^ u_input.a), 3426i), _wgslsmith_mult_i32(-42536i, var_0.d & firstTrailingBit(_wgslsmith_add_i32(var_0.d, -2147483647i))), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-482f)), _wgslsmith_f_op_f32(step(1325f, -1206f)), -127f, _wgslsmith_f_op_f32(904f * -178f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(705f, 1101f, 1000f, -592f), vec4<f32>(1516f, 197f, -2941f, -317f))))), vec2<i32>(abs(u_input.a), var_0.b.x), global1[_wgslsmith_index_u32(var_1.x, 27u)], Struct_1(u_input.c, -u_input.d.zx, _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(var_0.d, var_0.c, var_0.b.x), ~(-16781i), var_0.c), ~(-39083i) << (~var_0.a % 32u), vec4<bool>(u_input.c <= var_0.a, u_input.c < 0u, true, var_0.e.x))), !(!select(vec4<bool>(var_0.e.x, var_0.e.x, var_0.e.x, global2[_wgslsmith_index_u32(u_input.c, 16u)]), vec4<bool>(global2[_wgslsmith_index_u32(130798u, 16u)], var_0.e.x, global2[_wgslsmith_index_u32(var_0.a, 16u)], true), !var_0.e.x)));
    let var_4 = Struct_1(~(~(27622u << (~u_input.c % 32u))), ~(u_input.b.xw ^ reverseBits(firstLeadingBit(vec2<i32>(-22835i, -19906i)))), min(-43977i, var_0.c), -1i, !vec4<bool>(any(select(var_0.e.yy, var_3.e.zx, var_0.e.x)), true, global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(var_1.x, 12706u), 16u)], any(!vec2<bool>(var_0.e.x, true))));
    var var_5 = vec3<i32>(~(~(-var_3.b.x)) << (34899u % 32u), var_4.c, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -var_0.b.x, var_0.b.x, func_2().x) & ~_wgslsmith_mult_vec4_i32(vec4<i32>(17315i, -1877i, var_3.d, -35399i), u_input.b), max(-u_input.b, (u_input.b >> (vec4<u32>(3797u, var_1.x, u_input.c, var_3.a) % vec4<u32>(32u))) >> (vec4<u32>(1u, var_4.a, 1u, var_0.a) % vec4<u32>(32u)))));
    var var_6 = -609f;
    let var_7 = vec2<i32>(i32(-1i) * -2147483647i, (var_0.c >> (firstLeadingBit(12099u) % 32u)) >> (func_1().x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.zyw << (~(~var_1.yyz) % vec3<u32>(32u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(443f)) + _wgslsmith_f_op_f32(floor(-682f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1455f, 1736f)) - 1822f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(2111f, -1000f, false))))), select((43266i ^ var_5.x) <= _wgslsmith_clamp_i32(var_0.b.x, var_5.x, var_5.x), _wgslsmith_f_op_f32(f32(-1f) * -555f) <= _wgslsmith_f_op_f32(ceil(-651f)), !global2[_wgslsmith_index_u32(0u, 16u)]))), ~_wgslsmith_clamp_i32(var_0.d | 47713i, ~u_input.a, _wgslsmith_dot_vec3_i32(max(u_input.d, vec3<i32>(var_7.x, var_7.x, 0i)), -u_input.b.xzw)));
}

