struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: vec4<f32>,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_3,
    c: Struct_3,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_5;

var<private> global2: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(11160u, 0u, 74001u), vec3<u32>(0u, 1u, 4294967295u));

var<private> global3: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: u32, arg_3: vec3<bool>) -> u32 {
    global0 = countOneBits(80922u);
    let var_0 = max(-48104i, global1.b.a.b.x | max(abs(i32(-1i) * -58253i), -22187i));
    var var_1 = global3.a;
    var var_2 = global3.a.b;
    var var_3 = _wgslsmith_mod_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, ~31815u, firstTrailingBit(86u), ~global3.a.c), _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.c, 0u, global3.b.x, 0u), vec4<u32>(u_input.c, 0u, global3.a.c, 1u), vec4<u32>(4294967295u, u_input.a, global3.b.x, u_input.a)), vec4<u32>(13342u, global3.b.x, arg_2, 45113u)))), abs(arg_2));
    return arg_2;
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: Struct_2, arg_3: i32) -> Struct_4 {
    var var_0 = _wgslsmith_sub_vec4_i32((_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(arg_3, arg_3, u_input.d, global1.b.b), vec4<i32>(1i, arg_1.a.a, 0i, 29762i)), firstTrailingBit(vec4<i32>(arg_3, 2147483647i, 1i, -2147483647i))) << ((vec4<u32>(u_input.e.x, global3.a.c, u_input.c, arg_0) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, u_input.e.x), vec4<u32>(0u, u_input.e.x, 12923u, arg_0)) % vec4<u32>(32u))) % vec4<u32>(32u))) << ((_wgslsmith_clamp_vec4_u32(select(vec4<u32>(arg_0, 95694u, 15601u, u_input.e.x), vec4<u32>(arg_0, u_input.c, arg_0, 0u), true), _wgslsmith_add_vec4_u32(vec4<u32>(arg_0, arg_0, global3.b.x, u_input.e.x), vec4<u32>(arg_0, 38322u, arg_0, 0u)), vec4<u32>(arg_0, 0u, 1u, arg_0)) & vec4<u32>(arg_0, countOneBits(45694u), ~global3.a.c, countOneBits(42922u))) % vec4<u32>(32u)), ~(-_wgslsmith_div_vec4_i32(arg_2.b >> (vec4<u32>(global3.a.c, 4294967295u, 0u, 0u) % vec4<u32>(32u)), abs(arg_2.b))));
    var var_1 = vec3<i32>(var_0.x, abs(countOneBits(global1.c.a.b.x)), _wgslsmith_dot_vec3_i32(-var_0.xyx, -(~vec3<i32>(53703i, arg_1.a.b.x, arg_2.a)))) & abs(_wgslsmith_mod_vec3_i32(var_0.zxy, arg_2.b.xyw));
    var var_2 = vec2<u32>(arg_0 ^ global3.a.c, func_3(true, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b.c.xyx)))), ~_wgslsmith_add_u32(arg_0, select(29358u, 15196u, true)), global1.e.xxy));
    var var_3 = global3.b;
    var var_4 = (firstLeadingBit(-5622i) | -(~_wgslsmith_clamp_i32(-1i, arg_2.a, global3.a.b))) & _wgslsmith_mod_i32(var_0.x, arg_1.a.b.x << (64383u % 32u));
    return Struct_4(Struct_1(all(global1.e.wz), global3.a.b << (var_2.x % 32u), 0u << (_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 68868u), u_input.e), ~global3.a.c) % 32u)), ~(~_wgslsmith_add_vec2_u32(vec2<u32>(10763u, 9222u), ~vec2<u32>(52056u, u_input.a))));
}

fn func_1() -> i32 {
    global2 = array<vec3<u32>, 2>();
    var var_0 = global1.d.x;
    let var_1 = func_2(~firstLeadingBit(4294967295u), global1.c, Struct_2(_wgslsmith_div_i32(global1.b.a.a, ~firstLeadingBit(37161i)), firstTrailingBit(_wgslsmith_sub_vec4_i32(min(vec4<i32>(-2147483647i, 0i, global1.a.x, global1.c.b), vec4<i32>(-38501i, -6514i, -35405i, global3.a.b)), vec4<i32>(global1.a.x, global3.a.b, global1.c.b, u_input.d)))), ~(-(27245i << (~global3.a.c % 32u))));
    let var_2 = Struct_5(_wgslsmith_mult_vec3_i32(global1.c.a.b.wyz, (_wgslsmith_mod_vec3_i32(global1.b.a.b.yzz, global1.c.a.b.xyw) >> (vec3<u32>(global3.b.x, var_1.b.x, 82789u) % vec3<u32>(32u))) & _wgslsmith_add_vec3_i32(-global1.a, abs(vec3<i32>(global3.a.b, global3.a.b, -910i)))), Struct_3(global1.c.a, -(i32(-1i) * -global1.c.a.b.x), vec4<f32>(global1.c.c.x, _wgslsmith_f_op_f32(-global1.c.c.x), _wgslsmith_f_op_f32(f32(-1f) * -1599f), _wgslsmith_f_op_f32(min(global1.c.c.x, global1.b.c.x))), true), global1.b, global1.e.yy, !(!vec4<bool>(true, var_1.a.a, !var_1.a.a, !var_1.a.a)));
    var var_3 = false || global1.d.x;
    return -344i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b.a;
    var var_1 = select(select(global1.d, !vec2<bool>(true, global3.a.a || global1.b.d), global1.d), !(!global1.e.xy), vec2<bool>(false, global1.e.x));
    let var_2 = 850f;
    var var_3 = Struct_2(abs(var_0.a), _wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(1i, 29238i, u_input.d, 19814i), vec4<i32>(u_input.d, reverseBits(global3.a.b), ~2147483647i, func_1())), min(var_0.b, vec4<i32>(-1i >> (u_input.c % 32u), reverseBits(global3.a.b), func_1(), _wgslsmith_sub_i32(-54327i, var_0.b.x)))));
    var var_4 = ~global2[_wgslsmith_index_u32(u_input.a, 2u)];
    var_4 = ~_wgslsmith_mod_vec3_u32(global2[_wgslsmith_index_u32(firstTrailingBit(~var_4.x), 2u)], global2[_wgslsmith_index_u32(var_4.x, 2u)]);
    let x = u_input.a;
    s_output = StorageBuffer(~(-12671i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(222f, 1064f))))), ~(~4294967295u));
}

