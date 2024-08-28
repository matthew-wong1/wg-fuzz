struct Struct_1 {
    a: u32,
    b: bool,
    c: u32,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: vec4<u32> = vec4<u32>(48912u, 12555u, 82091u, 32248u);

var<private> global2: u32 = 0u;

var<private> global3: array<f32, 26>;

var<private> global4: Struct_2 = Struct_2(vec2<bool>(true, false), vec2<bool>(false, false));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    var var_0 = global4.b.x;
    var_0 = !global4.a.x;
    var var_1 = Struct_3(select(global4.a.x, !any(vec4<bool>(global4.a.x, global4.a.x, false, global4.a.x)), any(select(vec2<bool>(global4.a.x, false), vec2<bool>(global4.b.x, global4.a.x), true))), u_input.c, reverseBits(~_wgslsmith_mod_vec2_i32(vec2<i32>(70262i, 54998i), vec2<i32>(u_input.a, 1i))) & firstLeadingBit(vec2<i32>(u_input.a, 21866i)), false);
    global1 = u_input.e;
    let var_2 = -countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.c), vec2<i32>(1i, u_input.c)), vec2<i32>(1i, -9821i)), -1i, 28924i, i32(-1i) * -12033i));
    return var_2;
}

fn func_2() -> Struct_1 {
    let var_0 = firstTrailingBit(func_3());
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(10474u, 26u)] * -1991f) * _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global1.x, 26u)] * global3[_wgslsmith_index_u32(0u, 26u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(307f - -480f) * _wgslsmith_f_op_f32(1000f + global3[_wgslsmith_index_u32(u_input.e.x, 26u)]))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1f, _wgslsmith_f_op_f32(-353f + global3[_wgslsmith_index_u32(global1.x, 26u)])), vec2<f32>(856f, -815f)))), Struct_1(max(u_input.e.x, ~10202u), true, 4294967295u, -1049f, u_input.e));
    var var_2 = Struct_1(abs(_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.d, u_input.b.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b.c, global1.x, 1u, 4294967295u), vec4<u32>(28743u, var_1.b.e.x, global1.x, 25948u)) % 32u), (21613u | u_input.b.x) | ~1u)), !(!(select(false, var_1.b.b, true) || var_1.b.b)), _wgslsmith_sub_u32(4294967295u, u_input.d), _wgslsmith_f_op_f32(-660f - _wgslsmith_f_op_f32(floor(var_1.b.d))), ~vec4<u32>(1u, var_1.b.c, countOneBits(92917u), 41747u));
    var var_3 = u_input.a;
    var var_4 = _wgslsmith_sub_vec3_i32(var_0.xzx, func_3().zzw);
    return Struct_1(64642u, !(!var_2.b), 32962u | ~_wgslsmith_mult_u32(u_input.b.x | global1.x, var_1.b.a), -112f, vec4<u32>(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 31335u), ~global1.zx)), ~0u, u_input.b.x, ~var_1.b.c));
}

fn func_1() -> vec4<i32> {
    let var_0 = Struct_1(11074u, false, ~abs(~global1.x), -1000f, firstTrailingBit(vec4<u32>(~global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(11684u, u_input.b.x, u_input.b.x, 4294967295u), u_input.e), global1.x, 16618u)) ^ u_input.e);
    var var_1 = _wgslsmith_add_i32(u_input.c << (4104u % 32u), _wgslsmith_clamp_i32(u_input.c, ~u_input.a, -u_input.a));
    global0 = u_input.e.x;
    var_1 = u_input.c;
    let var_2 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.a, 26u)]))))), global3[_wgslsmith_index_u32(u_input.b.x, 26u)]), func_2());
    return (firstLeadingBit(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(-17742i, -2147483647i, 0i, 2147483647i), vec4<i32>(48420i, u_input.c, 13860i, u_input.c)))) & (_wgslsmith_div_vec4_i32(-vec4<i32>(2147483647i, -1i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 22881i, u_input.c)) << (vec4<u32>(var_2.b.c, 1u << (1u % 32u), var_0.e.x | 50653u, var_0.a) % vec4<u32>(32u)))) & ~min(~vec4<i32>(u_input.c, -5601i, 2147483647i, 1i), ~(vec4<i32>(1i, u_input.c, -1i, u_input.a) | vec4<i32>(u_input.c, u_input.c, 2147483647i, u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_i32(func_1(), vec4<i32>(func_1().x, 35667i, u_input.a, u_input.a)) & ~(func_1() >> (vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.e, u_input.e), 4294967295u, 4294967295u, _wgslsmith_add_u32(global1.x, 4294967295u)) % vec4<u32>(32u)));
    let var_1 = -vec4<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(31854i, 37753i, u_input.a), var_0.yww, false), reverseBits(vec3<i32>(32948i, -25296i, 23475i))), var_0.x, _wgslsmith_dot_vec3_i32(~var_0.wwy, vec3<i32>(var_0.x, 1i, -14535i)), select(22535i & var_0.x, u_input.a, any(vec3<bool>(true, true, true)))) ^ -vec4<i32>(1i, var_0.x, _wgslsmith_clamp_i32(u_input.c, u_input.a, var_0.x) ^ _wgslsmith_mod_i32(u_input.a, u_input.c), abs(~1i));
    var var_2 = -1266f;
    let var_3 = _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(-10482i, _wgslsmith_add_i32(var_0.x, 1i))), var_1.yw, _wgslsmith_mod_vec2_i32(vec2<i32>(abs(u_input.c | u_input.c), ~var_0.x << (0u % 32u)), var_0.yz));
    var var_4 = global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u) & ~(_wgslsmith_mult_u32(4294967295u, 1u) & global1.x), 26u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(24819u, 26u)] + -500f), global3[_wgslsmith_index_u32(1u, 26u)], _wgslsmith_f_op_f32(-238f - global3[_wgslsmith_index_u32(1u, 26u)]))))), -11137i);
}

