struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(-1022f, -1207f, 461f, -210f, -434f, 472f, 292f, -3036f, 1996f, -594f, 2972f, 532f, -615f, 343f, -593f, -1027f, 964f, 218f, -631f, 207f, 449f, -1744f, -260f, -541f, 298f, -1000f, 1713f, 1000f);

var<private> global1: vec2<bool> = vec2<bool>(true, false);

var<private> global2: vec2<bool>;

var<private> global3: vec4<i32>;

var<private> global4: array<i32, 22>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> u32 {
    var var_0 = Struct_4(vec3<u32>(1u, u_input.a.x, ~u_input.a.x ^ _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), reverseBits(1u))));
    var_0 = Struct_4(_wgslsmith_clamp_vec3_u32(vec3<u32>(34911u, u_input.a.x, _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a.x, 1u, u_input.a.x, 46091u), vec4<u32>(69901u, 4294967295u, 14440u, 4294967295u), false), vec4<u32>(u_input.a.x, var_0.a.x, u_input.a.x, var_0.a.x))), u_input.a, ~reverseBits(~var_0.a)));
    let var_1 = ~vec2<i32>(-21554i, global3.x >> (abs(62922u) % 32u)) | ~vec2<i32>(~global4[_wgslsmith_index_u32(~4294967295u, 22u)], global3.x);
    let var_2 = Struct_1(~(~abs(vec4<u32>(u_input.a.x, var_0.a.x, 23450u, u_input.a.x)) ^ vec4<u32>(4294967295u, firstTrailingBit(37132u), u_input.a.x, 4294967295u)), vec3<u32>(u_input.a.x, ~(~(~0u)), u_input.a.x));
    var_0 = Struct_4(vec3<u32>(var_0.a.x, firstLeadingBit(~4294967295u), 4294967295u));
    return _wgslsmith_div_u32(~u_input.a.x, select(~_wgslsmith_div_u32(_wgslsmith_div_u32(1u, 6585u), 1u), 19727u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.a.x, 28u)] * 525f))) >= -467f));
}

fn func_2() -> vec4<u32> {
    global4 = array<i32, 22>();
    global4 = array<i32, 22>();
    global3 = vec4<i32>(abs(global4[_wgslsmith_index_u32(u_input.a.x, 22u)]), -global3.x, -1i, 0i) & select(~(-vec4<i32>(-27264i, global3.x, -71943i, 0i)), vec4<i32>(~_wgslsmith_clamp_i32(global4[_wgslsmith_index_u32(84609u, 22u)], -1i, global3.x), countOneBits(_wgslsmith_div_i32(1i, 1707i)), -3571i, -global4[_wgslsmith_index_u32(~u_input.a.x, 22u)]), select(!vec4<bool>(true, global2.x, false, global2.x), vec4<bool>(true, false, any(vec2<bool>(global1.x, global1.x)), all(vec4<bool>(global1.x, global1.x, true, global1.x))), select(global1.x, true, true)));
    var var_0 = true;
    var_0 = any(vec4<bool>(!(!all(vec3<bool>(global2.x, global2.x, global1.x))), !(!(global2.x | true)), 1u > ~u_input.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u), vec4<u32>(u_input.a.x, u_input.a.x, 2513u, u_input.a.x)) < _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 1u), vec4<u32>(u_input.a.x, 45856u, u_input.a.x, u_input.a.x)), 10317u)));
    return ~min(vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, 0u), abs(u_input.a.x), u_input.a.x, 4294967295u | u_input.a.x), vec4<u32>(~1u, 1u, _wgslsmith_add_u32(18411u, 0u), ~55461u)) | _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, func_3(vec4<f32>(-741f, global0[_wgslsmith_index_u32(0u, 28u)], global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(6612u, 28u)]), global0[_wgslsmith_index_u32(7866u, 28u)]) | ~15801u, _wgslsmith_dot_vec2_u32(u_input.a.yy, select(vec2<u32>(0u, 4125u), vec2<u32>(30824u, 12189u), vec2<bool>(false, global2.x))), u_input.a.x), vec4<u32>(~u_input.a.x, _wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~84771u, 54467u) | vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 0u & u_input.a.x, 27761u, 1u));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec2<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_mult_vec4_i32(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(-63630i, global4[_wgslsmith_index_u32(52652u, 22u)], global4[_wgslsmith_index_u32(arg_1.a.x, 22u)], -8679i), firstTrailingBit(vec4<i32>(-56194i, global3.x, global3.x, 4612i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(6469i, -43768i, arg_3.x, global4[_wgslsmith_index_u32(41890u, 22u)]), vec4<i32>(1194i, global3.x, arg_3.x, global4[_wgslsmith_index_u32(arg_1.a.x, 22u)])), ~(-vec4<i32>(global3.x, global3.x, 21534i, -59181i))), _wgslsmith_div_vec4_i32(abs(select(vec4<i32>(arg_3.x, 31984i, global4[_wgslsmith_index_u32(u_input.a.x, 22u)], -4660i), abs(vec4<i32>(-1i, -84029i, -1i, 14955i)), false)), ~max(~vec4<i32>(0i, arg_3.x, 2147483647i, 2147483647i), vec4<i32>(-2147483647i, -1i, global3.x, global3.x) >> (vec4<u32>(0u, 1u, 9420u, 4294967295u) % vec4<u32>(32u)))));
    var var_1 = vec2<f32>(1000f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_1.b.a.x, 28u)]));
    global0 = array<f32, 28>();
    let var_2 = true;
    let var_3 = Struct_3(arg_0.yz | firstTrailingBit(arg_2.yx | vec2<u32>(1u, arg_2.x)), ~vec4<u32>(~reverseBits(u_input.a.x), 2049u, firstLeadingBit(1u), _wgslsmith_mult_u32(arg_2.x, _wgslsmith_mod_u32(0u, arg_1.b.b.x))), _wgslsmith_mod_i32(1i, ~var_0.x & firstTrailingBit(22700i)));
    return Struct_4(~vec3<u32>(arg_1.a.x, ~arg_1.b.b.x, var_3.a.x));
}

fn func_1(arg_0: i32, arg_1: vec4<f32>, arg_2: vec3<u32>) -> Struct_4 {
    let var_0 = min(~max(_wgslsmith_mod_u32(73696u, 1u), ~17950u) | _wgslsmith_mult_u32(arg_2.x, arg_2.x), arg_2.x);
    var var_1 = func_4(vec4<u32>(_wgslsmith_mult_u32(~arg_2.x, 1u) >> (70929u % 32u), 1u, reverseBits(~u_input.a.x), u_input.a.x), Struct_2(~(~u_input.a.yx), Struct_1(min(vec4<u32>(22022u, 0u, 27417u, arg_2.x), func_2()), arg_2), vec4<bool>(true, any(select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(false, false, false, global2.x), false)), !global1.x | true, global2.x)), ~vec4<u32>(min(var_0, u_input.a.x), var_0, select(~2013u, 0u, global1.x), (var_0 << (var_0 % 32u)) ^ (var_0 >> (var_0 % 32u))), vec2<i32>(-_wgslsmith_div_i32(global4[_wgslsmith_index_u32(4294967295u << (u_input.a.x % 32u), 22u)], -arg_0), 0i));
    global2 = !vec2<bool>(true, !(true | global2.x));
    var var_2 = Struct_2(reverseBits(u_input.a.yz), Struct_1(~vec4<u32>(u_input.a.x, var_0, 4294967295u, 4294967295u) << (~(vec4<u32>(arg_2.x, 15423u, 35094u, 1u) ^ vec4<u32>(40193u, u_input.a.x, var_0, var_1.a.x)) % vec4<u32>(32u)), ~firstTrailingBit(~vec3<u32>(var_0, arg_2.x, var_1.a.x))), select(vec4<bool>(all(!vec2<bool>(true, global2.x)), true, any(vec2<bool>(false, true)) | !global1.x, var_1.a.x >= ~arg_2.x), !(!(!vec4<bool>(global2.x, global1.x, global1.x, global1.x))), select(select(!vec4<bool>(false, global2.x, false, true), select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(global2.x, global2.x, false, true)), false), vec4<bool>(any(vec2<bool>(global1.x, true)), true, false, true), !all(vec3<bool>(global1.x, true, true)))));
    var var_3 = Struct_1(var_2.b.a, var_2.b.a.xwz & min(vec3<u32>(var_0, ~24115u, 0u), u_input.a ^ firstLeadingBit(vec3<u32>(4294967295u, u_input.a.x, var_0))));
    return func_4(var_3.a, Struct_2(~func_2().xy, Struct_1(vec4<u32>(select(u_input.a.x, 102440u, var_2.c.x), ~var_3.b.x, _wgslsmith_mult_u32(var_2.a.x, var_0), var_2.a.x), vec3<u32>(min(var_3.b.x, 33977u), 68773u, 4294967295u)), var_2.c), vec4<u32>(func_3(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(arg_1 - vec4<f32>(-193f, -240f, 461f, global0[_wgslsmith_index_u32(4294967295u, 28u)])))), 221f), 0u, _wgslsmith_add_u32(var_1.a.x, ~(~1u)), u_input.a.x), vec2<i32>(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x ^ func_4(vec4<u32>(arg_2.x, var_3.a.x, arg_2.x, var_1.a.x), Struct_2(arg_2.xx, var_2.b, vec4<bool>(global2.x, var_2.c.x, var_2.c.x, false)), var_2.b.a, global3.zw).a.x, func_4(vec4<u32>(u_input.a.x, 24303u, var_1.a.x, u_input.a.x), Struct_2(vec2<u32>(var_3.b.x, 28591u), var_2.b, vec4<bool>(false, var_2.c.x, true, true)), var_2.b.a, -vec2<i32>(global3.x, global4[_wgslsmith_index_u32(4294967295u, 22u)])).a.x), 22u)], ~abs(~(-1i))));
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_4) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(20985u, arg_1.a.x), 28u)], any(!vec2<bool>(true, global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global0[_wgslsmith_index_u32(4294967295u, 28u)])), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(4298u, 28u)]))) * global0[_wgslsmith_index_u32(~u_input.a.x, 28u)])));
    let var_1 = Struct_2(_wgslsmith_mod_vec2_u32(~vec2<u32>(18409u, 22423u >> (arg_1.a.x % 32u)), vec2<u32>(u_input.a.x, ~u_input.a.x)), Struct_1(~firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u) & vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.a.x)), u_input.a), !vec4<bool>((arg_1.a.x & arg_1.a.x) < func_1(global4[_wgslsmith_index_u32(0u, 22u)], vec4<f32>(-1887f, -390f, -1000f, 3114f), arg_1.a).a.x, true, !any(vec3<bool>(false, true, false)), false));
    global2 = var_1.c.zw;
    global2 = vec2<bool>(!global1.x, false & global2.x);
    var var_2 = vec2<u32>(20769u, 50837u);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(1i, abs(_wgslsmith_div_i32(-2147483647i, -1i) & max(arg_0.x, global3.x)), global4[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 1u), 22u)] | firstLeadingBit(_wgslsmith_div_i32(global3.x, -1i))), max(global3.wyx, -global3.wwz));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<i32>(~_wgslsmith_div_i32(firstLeadingBit(global3.x), ~global4[_wgslsmith_index_u32(52106u, 22u)]) ^ func_5(global3.zz, func_1(global4[_wgslsmith_index_u32(67974u, 22u)], vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], 828f, global0[_wgslsmith_index_u32(4294967295u, 28u)], 571f), ~vec3<u32>(1u, 0u, 0u))), countOneBits(1i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(~0i, _wgslsmith_mult_i32(2147483647i, global3.x), 1i), ~_wgslsmith_add_vec3_i32(global3.wwx, vec3<i32>(global4[_wgslsmith_index_u32(u_input.a.x, 22u)], global3.x, 2147483647i))), select(~vec3<i32>(global4[_wgslsmith_index_u32(16255u, 22u)], 0i, global3.x), vec3<i32>(-13428i, ~(-16102i), global4[_wgslsmith_index_u32(~u_input.a.x, 22u)]), vec3<bool>(any(vec4<bool>(false, global2.x, false, true)), global1.x, global0[_wgslsmith_index_u32(43519u, 28u)] <= 894f))), global3.x);
    var var_0 = (_wgslsmith_dot_vec4_i32(~(~vec4<i32>(-21317i, -2147483647i, global3.x, global3.x)), vec4<i32>(-global4[_wgslsmith_index_u32(u_input.a.x, 22u)], _wgslsmith_mod_i32(global4[_wgslsmith_index_u32(77658u, 22u)], global3.x), _wgslsmith_mult_i32(-54252i, -17068i), global3.x)) & _wgslsmith_mult_i32(-2147483647i, -abs(global3.x))) & _wgslsmith_mod_i32(i32(-1i) * -1i, global3.x);
    let var_1 = ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, 1u, 48455u, u_input.a.x) ^ vec4<u32>(4294967295u, u_input.a.x << (4294967295u % 32u), firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1361u, u_input.a.x), vec4<u32>(4294967295u, 27012u, u_input.a.x, u_input.a.x))), ~(~vec4<u32>(1u, 4294967295u, u_input.a.x, u_input.a.x)));
    var var_2 = any(!(!select(vec4<bool>(false, true, global1.x, global2.x), !vec4<bool>(false, true, global2.x, false), true)));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(select(func_1(global4[_wgslsmith_index_u32(~var_1.x, 22u)], vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(var_1.x, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], 2110f), countOneBits(vec3<u32>(4294967295u, 1u, 49279u))).a.x, 5565u, true), 6253u), 28u)], var_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 28u)]);
}

