struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: Struct_4 = Struct_4(vec3<bool>(true, false, false), vec3<f32>(-179f, 1163f, 1049f), i32(-2147483648));

var<private> global2: array<Struct_2, 30>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<bool> {
    let var_0 = abs(abs(~(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))))) >> (~vec2<u32>(~1u, 0u) % vec2<u32>(32u));
    let var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(-abs(-vec4<i32>(global1.c, 7406i, 40691i, 54482i)), _wgslsmith_div_vec4_i32(reverseBits(firstLeadingBit(vec4<i32>(13216i, 2147483647i, 13443i, global1.c))), _wgslsmith_mod_vec4_i32(vec4<i32>(global1.c, global1.c, global1.c, u_input.b), vec4<i32>(-2147483647i, -4640i, global1.c, 0i)))), reverseBits(countOneBits(global1.c) & global1.c), global1.c);
    let var_2 = Struct_3(global2[_wgslsmith_index_u32(~(~27557u), 30u)]);
    var var_3 = true;
    let var_4 = !select(!vec2<bool>(global1.a.x, var_2.a.a), vec2<bool>(true, global1.a.x), all(!vec4<bool>(global1.a.x, true, true, var_2.a.a)));
    return select(vec3<bool>(any(select(vec4<bool>(true, var_2.a.a, false, false), vec4<bool>(false, true, var_2.a.a, var_4.x), var_2.a.a)), !(var_2.a.b.b.x < ~(-507i)), var_4.x), !select(!global1.a, !global1.a, true), all(vec2<bool>(var_2.a.a, true)));
}

fn func_4(arg_0: vec3<bool>) -> i32 {
    let var_0 = (i32(-1i) * -reverseBits(global1.c & 19218i)) & (-_wgslsmith_dot_vec3_i32(~vec3<i32>(17446i, -1i, 46172i), _wgslsmith_sub_vec3_i32(vec3<i32>(global1.c, u_input.b, -2147483647i), vec3<i32>(-1i, -16638i, u_input.b))) | (global1.c >> (global0.x % 32u)));
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(u_input.a, 30u)]);
    var var_2 = Struct_4(vec3<bool>(~(58713u >> (u_input.a % 32u)) <= 21711u, false, false), _wgslsmith_f_op_vec3_f32(-global1.b), max(-322i, var_1.a.b.c.x));
    let var_3 = _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(7336u, global0.x, 75566u, 1u), ~vec4<u32>(0u, global0.x, 4294967295u, 1u)), _wgslsmith_sub_u32(4294967295u, u_input.a) | global0.x, _wgslsmith_add_u32(reverseBits(90211u), _wgslsmith_mod_u32(u_input.a, global0.x))) | vec3<u32>(u_input.a, u_input.a, _wgslsmith_sub_u32(global0.x, abs(global0.x))), ~_wgslsmith_mod_vec3_u32(firstTrailingBit(~vec3<u32>(global0.x, 84426u, 31065u)), select(vec3<u32>(u_input.a, 0u, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a), vec3<bool>(arg_0.x, var_2.a.x, var_2.a.x))));
    var_2 = Struct_4(func_3(), _wgslsmith_f_op_vec3_f32(min(var_2.b, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(614f, 866f, global1.a.x))), global1.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), abs(0i));
    return global1.c;
}

fn func_2(arg_0: Struct_3) -> bool {
    global2 = array<Struct_2, 30>();
    let var_0 = func_4(!func_3());
    var var_1 = Struct_4(func_3(), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, 1079f, -684f), global1.b, vec3<bool>(false, true, arg_0.a.a))) + _wgslsmith_f_op_vec3_f32(select(arg_0.a.b.a, vec3<f32>(1256f, 1000f, arg_0.a.b.a.x), global1.a)))))), _wgslsmith_add_i32(max(_wgslsmith_mod_i32(global1.c, -82926i) | -2147483647i, reverseBits(_wgslsmith_div_i32(u_input.c, -59312i))), -1i));
    var var_2 = arg_0;
    var var_3 = reverseBits(select(vec2<u32>(~(~0u), ~69398u), vec2<u32>(~u_input.a, global0.x), vec2<bool>(any(!vec4<bool>(var_1.a.x, var_2.a.a, false, false)), 0u < _wgslsmith_clamp_u32(global0.x, 2367u, 15383u))));
    return all(!(!select(var_1.a, global1.a, global1.a.x)));
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<i32>) -> Struct_5 {
    let var_0 = (global1.b.x >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(476f * _wgslsmith_f_op_f32(round(global1.b.x)))))) && (_wgslsmith_f_op_f32(-global1.b.x) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.b.x), -635f)));
    var var_1 = global2[_wgslsmith_index_u32(global0.x, 30u)];
    global2 = array<Struct_2, 30>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.a.x), -370f, _wgslsmith_f_op_f32(-global1.b.x));
    global1 = Struct_4(vec3<bool>(~(global1.c | arg_1.x) >= global1.c, var_0, (firstTrailingBit(0u) > (1u << (global0.x % 32u))) && all(func_3().xz)), vec3<f32>(-1886f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.b.x + global1.b.x), var_2.x), _wgslsmith_f_op_f32(f32(-1f) * -810f))), -1647f), 1311i);
    return Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(round(var_1.b.a.x)), 1493f, _wgslsmith_f_op_f32(var_2.x + 1000f)))), vec4<i32>(global1.c, 49905i, ~select(35748i, arg_1.x, true), _wgslsmith_clamp_i32(func_4(global1.a), abs(arg_1.x), -2147483647i)), vec3<i32>(min(2147483647i, u_input.c), abs(var_1.b.b.x), reverseBits(arg_1.x) << (countOneBits(1u) % 32u))), min(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, u_input.a, global0.x, u_input.a), vec4<u32>(global0.x, 44235u, 4294967295u, 50263u)), u_input.a), vec2<u32>(global0.x, ~u_input.a)), firstTrailingBit(~vec2<u32>(6681u, global0.x)) | _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(4294967295u, 1u)), vec2<u32>(0u, 0u) << (vec2<u32>(u_input.a, 6351u) % vec2<u32>(32u)))));
}

fn func_6(arg_0: Struct_5) -> u32 {
    let var_0 = ~(~(~vec4<u32>(u_input.a, global0.x, global0.x, 1u)) | ~abs(vec4<u32>(22379u, 4294967295u, 0u, arg_0.b.x))) << (_wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(1u, 0u, 72622u), ~62445u, abs(4294967295u), u_input.a), countOneBits(firstLeadingBit(~vec4<u32>(u_input.a, arg_0.b.x, 29885u, arg_0.b.x)))) % vec4<u32>(32u));
    let var_1 = vec2<bool>((select(select(true, global1.a.x, global1.a.x), all(global1.a), u_input.a > var_0.x) && all(select(vec4<bool>(false, true, false, true), vec4<bool>(false, global1.a.x, true, global1.a.x), vec4<bool>(global1.a.x, false, global1.a.x, true)))) == all(vec4<bool>(true, true, true, true)), (((4294967295u >> (u_input.a % 32u)) <= ~32771u) & any(global1.a.xz)) == true);
    global2 = array<Struct_2, 30>();
    var var_2 = true;
    let var_3 = global2[_wgslsmith_index_u32(global0.x, 30u)];
    return min(~arg_0.b.x, var_0.x);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: bool, arg_3: vec2<u32>) -> Struct_2 {
    global0 = vec2<u32>(~4841u, func_6(func_5(vec3<bool>(true, func_2(Struct_3(Struct_2(false, Struct_1(vec3<f32>(-1951f, -732f, arg_0), vec4<i32>(-14864i, 1i, 0i, global1.c), vec3<i32>(global1.c, 2016i, global1.c)), -4299i))), all(vec3<bool>(true, true, true))), vec4<i32>(global1.c << (21900u % 32u), -global1.c, global1.c, ~(-2147483647i)))));
    let var_0 = global1.c;
    global1 = Struct_4(vec3<bool>(true, global1.a.x, !(!all(vec3<bool>(global1.a.x, global1.a.x, false)))), global1.b, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(1i, global1.c)), ~vec2<i32>(1i, global1.c)));
    let var_1 = func_5(!global1.a, ~vec4<i32>(-(global1.c << (12064u % 32u)), u_input.c & (u_input.b & -1i), u_input.b, firstLeadingBit(min(u_input.b, 2666i)))).a;
    var var_2 = func_5(!global1.a, -_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(~var_1.b, vec4<i32>(-1i, 1i, -20114i, u_input.c)), _wgslsmith_add_vec4_i32(var_1.b, var_1.b))).a;
    return global2[_wgslsmith_index_u32(firstTrailingBit(global0.x), 30u)];
}

fn func_7(arg_0: Struct_2) -> vec3<f32> {
    return global1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = Struct_4(global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_7(func_1(_wgslsmith_f_op_f32(f32(-1f) * -722f), 1u, global1.a.x, ~vec2<u32>(1u, 1u))))), _wgslsmith_div_i32(global1.c, global1.c));
    global0 = ~(~countOneBits(_wgslsmith_sub_vec2_u32(~vec2<u32>(global0.x, 0u), _wgslsmith_div_vec2_u32(vec2<u32>(global0.x, 4294967295u), vec2<u32>(global0.x, 1u)))));
    var var_2 = max(_wgslsmith_div_vec2_i32(abs(~vec2<i32>(var_1.c, 1i)), ~(~vec2<i32>(1i, -2546i))) ^ -(-vec2<i32>(0i, 39926i) | reverseBits(vec2<i32>(var_1.c, global1.c))), vec2<i32>(abs(~u_input.b) ^ u_input.c, var_1.c));
    let var_3 = var_1.a.xz;
    var var_4 = Struct_4(!global1.a, global1.b, func_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, var_1.b.x))), var_1.b.x, false)), _wgslsmith_sub_u32(u_input.a, ~(~global0.x)), var_3.x, vec2<u32>(firstTrailingBit(abs(global0.x)), u_input.a)).b.c.x);
    var var_5 = 1u;
    let var_6 = vec2<i32>((~(-var_1.c) >> (u_input.a % 32u)) ^ -26765i, i32(-1i) * -9218i);
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

