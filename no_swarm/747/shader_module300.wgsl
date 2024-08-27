struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 13> = array<Struct_2, 13>(Struct_2(0u, 0u), Struct_2(4294967295u, 4294967295u), Struct_2(0u, 55601u), Struct_2(1u, 0u), Struct_2(1u, 10279u), Struct_2(32946u, 4294967295u), Struct_2(50954u, 27852u), Struct_2(0u, 56375u), Struct_2(1u, 0u), Struct_2(14006u, 1u), Struct_2(0u, 22029u), Struct_2(60582u, 4294967295u), Struct_2(0u, 0u));

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(1u, 0u), Struct_2(4294967295u, 4294967295u), Struct_2(0u, 1u), Struct_2(1u, 1u));

var<private> global3: array<Struct_4, 31> = array<Struct_4, 31>(Struct_4(35028u), Struct_4(0u), Struct_4(1u), Struct_4(0u), Struct_4(81153u), Struct_4(0u), Struct_4(48385u), Struct_4(468u), Struct_4(0u), Struct_4(0u), Struct_4(4294967295u), Struct_4(1u), Struct_4(0u), Struct_4(4294967295u), Struct_4(41732u), Struct_4(1u), Struct_4(23205u), Struct_4(44884u), Struct_4(1u), Struct_4(79651u), Struct_4(1533u), Struct_4(24679u), Struct_4(1u), Struct_4(0u), Struct_4(4294967295u), Struct_4(0u), Struct_4(4294967295u), Struct_4(66290u), Struct_4(40436u), Struct_4(43896u), Struct_4(1u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: u32, arg_3: vec2<bool>) -> f32 {
    global2 = array<Struct_2, 4>();
    global0 = array<Struct_2, 13>();
    let var_0 = global1.x;
    global3 = array<Struct_4, 31>();
    var var_1 = Struct_2(4294967295u, 0u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -469f))));
}

fn func_4(arg_0: vec3<f32>) -> vec4<i32> {
    let var_0 = !(!(false | (true | any(vec2<bool>(true, true)))));
    var var_1 = vec4<bool>(false, true, !(!(!(!var_0))), false);
    global0 = array<Struct_2, 13>();
    global0 = array<Struct_2, 13>();
    let var_2 = global1.x ^ -23685i;
    return vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global1.x, i32(-1i) * -1i), global1.x), _wgslsmith_dot_vec3_i32(global1.wwy & -global1.xyx, ~vec3<i32>(0i, var_2, global1.x) >> (vec3<u32>(u_input.c, 19247u, u_input.c) % vec3<u32>(32u))), _wgslsmith_clamp_i32(~2147483647i, global1.x, _wgslsmith_mod_i32(global1.x, global1.x)), 33109i) >> (~(~_wgslsmith_div_vec4_u32(firstTrailingBit(vec4<u32>(58932u, 74639u, u_input.b.x, u_input.b.x)), vec4<u32>(24367u, 52991u, 1u, 1u))) % vec4<u32>(32u));
}

fn func_2() -> Struct_3 {
    global1 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(1u, true, 0u, vec2<bool>(true, false))) - -188f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + -2202f), _wgslsmith_f_op_f32(round(620f)), true)), 1272f)));
    var var_0 = ~(~_wgslsmith_mult_u32(~u_input.c ^ u_input.c, u_input.b.x));
    return Struct_3(false, true, Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, all(vec4<bool>(true, false, false, true))), any(vec2<bool>(true, false))), vec4<u32>(u_input.c, countOneBits(u_input.a) | 24715u, abs(max(35543u, 4294967295u)), ~(~0u))), vec2<i32>(0i, global1.x) | vec2<i32>(global1.x, global1.x << (~65065u % 32u)), Struct_1(vec2<bool>(true, true), vec4<u32>(u_input.a, u_input.c, max(39739u, 38308u), _wgslsmith_div_u32(27041u, ~29889u))));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: vec3<bool>) -> vec4<i32> {
    let var_0 = func_2();
    global3 = array<Struct_4, 31>();
    global0 = array<Struct_2, 13>();
    let var_1 = Struct_1(func_2().c.a, ~vec4<u32>(15557u, reverseBits(_wgslsmith_dot_vec3_u32(var_0.e.b.yyx, var_0.c.b.zzz)), 1u, _wgslsmith_sub_u32(func_2().c.b.x, 12122u)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0));
    return _wgslsmith_sub_vec4_i32(max(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(var_0.d.x, global1.x, -48874i, var_0.d.x)) & vec4<i32>(-1i, 1i, global1.x, 14299i), -min(vec4<i32>(-2147483647i, 5405i, -2147483647i, 2147483647i), vec4<i32>(var_0.d.x, 10747i, global1.x, var_0.d.x)), -select(vec4<i32>(global1.x, global1.x, global1.x, -9741i), vec4<i32>(global1.x, -47620i, var_0.d.x, var_0.d.x), vec4<bool>(var_1.a.x, arg_3.x, var_1.a.x, false))), vec4<i32>(func_4(vec3<f32>(arg_0, -1095f, -1000f)).x, global1.x, 12570i, ~(-8185i))), firstTrailingBit(-(~vec4<i32>(1i, 2147483647i, global1.x, 0i) | (vec4<i32>(-1i, global1.x, var_0.d.x, global1.x) & vec4<i32>(0i, global1.x, 0i, global1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_i32(0i, 3520i);
    var_0 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(58334i, -35569i), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(global1.x, -2147483647i, global1.x), ~global1.x ^ (i32(-1i) * -40703i))), -1i, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(func_1(441f, global2[_wgslsmith_index_u32(u_input.b.x, 4u)], _wgslsmith_mult_vec3_u32(vec3<u32>(25792u, u_input.a, u_input.a), vec3<u32>(4294967295u, 0u, 38394u)), vec3<bool>(true, true, true)), reverseBits(-vec4<i32>(36436i, -2147483647i, -68803i, -2147483647i))), -1i));
    global2 = array<Struct_2, 4>();
    let var_1 = _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32((vec4<i32>(2147483647i, global1.x, 0i, -38958i) | vec4<i32>(global1.x, 46152i, -15944i, global1.x)) << (vec4<u32>(u_input.b.x, u_input.a, 48997u, u_input.a) % vec4<u32>(32u)), abs(vec4<i32>(global1.x, global1.x, global1.x, 1i))) | _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(~vec4<i32>(global1.x, 32715i, 32i, global1.x), abs(vec4<i32>(global1.x, global1.x, global1.x, global1.x))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(global1.x, -2147483647i, 1i, global1.x), vec4<i32>(global1.x, global1.x, 2942i, -2147483647i))), min(vec4<i32>(global1.x, 2147483647i, 1i, global1.x), vec4<i32>(2147483647i, -max(global1.x, -17042i), global1.x, _wgslsmith_clamp_i32(~global1.x, firstTrailingBit(-19251i), -1i))));
    let x = u_input.a;
    s_output = StorageBuffer(-3222i, firstTrailingBit(var_1.wy), -1713f, u_input.a);
}

