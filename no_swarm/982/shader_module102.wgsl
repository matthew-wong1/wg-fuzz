struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: Struct_3 = Struct_3(true, Struct_2(-10661i, vec2<u32>(14188u, 22314u), 2284u, Struct_1(1u, 1617f, vec4<u32>(7778u, 61954u, 4294967295u, 33309u), vec2<f32>(137f, -1000f), vec3<bool>(true, false, false))), Struct_2(i32(-2147483648), vec2<u32>(1u, 4294967295u), 1u, Struct_1(0u, -1370f, vec4<u32>(4294967295u, 46388u, 77581u, 1u), vec2<f32>(-1171f, 277f), vec3<bool>(false, false, false))), Struct_1(43632u, 1145f, vec4<u32>(1u, 0u, 83160u, 4294967295u), vec2<f32>(1446f, 652f), vec3<bool>(true, false, true)));

var<private> global1: vec2<u32>;

var<private> global2: array<Struct_3, 1> = array<Struct_3, 1>(Struct_3(false, Struct_2(-60241i, vec2<u32>(4294967295u, 4294967295u), 0u, Struct_1(1u, -873f, vec4<u32>(42872u, 4294967295u, 41631u, 1u), vec2<f32>(-159f, 329f), vec3<bool>(false, false, false))), Struct_2(-95i, vec2<u32>(12914u, 0u), 60927u, Struct_1(56688u, -689f, vec4<u32>(4294967295u, 104651u, 69876u, 6992u), vec2<f32>(2189f, 261f), vec3<bool>(true, false, true))), Struct_1(79091u, -1782f, vec4<u32>(0u, 1u, 4294967295u, 1u), vec2<f32>(-1483f, -374f), vec3<bool>(false, true, false))));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> bool {
    let var_0 = -9790i;
    global2 = array<Struct_3, 1>();
    global1 = abs(global0.c.d.c.yz);
    let var_1 = Struct_3(global0.c.d.e.x || global0.a, global0.b, Struct_2(2147483647i, ~(~global0.c.b), global1.x, global0.d), Struct_1(~(~u_input.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.c.d.d.x)) + _wgslsmith_f_op_f32(963f - global0.c.d.b)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(241f)))), _wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(64413u), u_input.b, global0.d.a, ~35594u), vec4<u32>(~u_input.b, global0.d.c.x, global0.c.c & 127167u, 25907u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-322f - -1618f), global0.b.d.d.x)), global0.d.e));
    global0 = Struct_3(global0.d.e.x, var_1.c, global0.b, Struct_1(~select(_wgslsmith_clamp_u32(1u, global0.c.d.c.x, u_input.b), 46169u, var_1.c.d.e.x), var_1.d.d.x, select(firstLeadingBit(vec4<u32>(var_1.b.b.x, 9391u, var_1.b.d.a, 4294967295u)) & vec4<u32>(74260u, global1.x, 18597u, 18984u), ~global0.c.d.c << (_wgslsmith_mod_vec4_u32(vec4<u32>(8538u, u_input.b, 1u, u_input.b), vec4<u32>(global0.d.a, u_input.b, 0u, global0.b.b.x)) % vec4<u32>(32u)), select(select(vec4<bool>(var_1.a, global0.a, true, global0.b.d.e.x), vec4<bool>(var_1.c.d.e.x, false, true, true), var_1.b.d.e.x), vec4<bool>(global0.d.e.x, var_1.a, var_1.c.d.e.x, global0.b.d.e.x), !global0.c.d.e.x)), _wgslsmith_f_op_vec2_f32(-global0.d.d), !global0.b.d.e));
    return true;
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: vec3<i32>) -> vec2<f32> {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_add_u32(~_wgslsmith_clamp_u32(1u, ~global1.x, ~global1.x), 0u), arg_1);
    var var_1 = Struct_1(_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(global0.b.c >> (global1.x % 32u), firstTrailingBit(arg_1)), global1.x), global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -986f)) * _wgslsmith_f_op_f32(arg_0.c.d.b - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), max(vec4<u32>(global0.c.d.c.x, ~1u, arg_1 ^ 34623u, global1.x), arg_0.d.c) >> (~(~max(vec4<u32>(38724u, u_input.b, 66271u, 4294967295u), vec4<u32>(0u, 4294967295u, 11213u, u_input.b))) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.b, -1000f)), _wgslsmith_f_op_vec2_f32(max(global0.d.d, vec2<f32>(352f, 132f))), true))))), select(select(global0.d.e, global0.b.d.e, select(select(global0.b.d.e, vec3<bool>(arg_0.b.d.e.x, global0.b.d.e.x, false), vec3<bool>(arg_0.a, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, false, arg_0.a), arg_0.d.e), arg_0.d.e.x)), select(arg_0.b.d.e, global0.d.e, arg_0.d.b >= -205f), !arg_0.b.d.e));
    var_0 = 4294967295u;
    let var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(min(4294967295u, arg_1), 1u), select(firstLeadingBit(reverseBits(~vec2<u32>(global0.d.a, 81095u))), vec2<u32>(17000u, max(4294967295u, _wgslsmith_clamp_u32(var_1.c.x, var_1.c.x, 1u))), 1u == (30265u & arg_1)), global0.d.c.zw ^ firstTrailingBit(_wgslsmith_div_vec2_u32(arg_0.c.b, countOneBits(vec2<u32>(4294967295u, 13987u)))));
    var var_3 = Struct_3(((u_input.b << (11667u % 32u)) << (firstTrailingBit(1u) % 32u)) != _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(var_1.a), global0.c.c), vec2<u32>(arg_1, global1.x) >> (~vec2<u32>(18571u, 23752u) % vec2<u32>(32u))), global0.b, global0.c, Struct_1(_wgslsmith_sub_u32(min(0u, arg_1), ~19112u) >> (_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(global0.b.d.a, 7538u)), reverseBits(vec2<u32>(arg_1, global0.d.a))) % 32u), _wgslsmith_f_op_f32(481f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(769f * -1096f))), _wgslsmith_sub_vec4_u32(firstTrailingBit(select(vec4<u32>(global1.x, global1.x, 0u, 18836u), vec4<u32>(1u, var_2.x, u_input.b, global1.x), false)), firstTrailingBit(var_1.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b.d.b, global0.b.d.d.x) * vec2<f32>(var_1.b, var_1.d.x)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-284f, -1045f)), vec2<f32>(global0.b.d.b, var_1.d.x))), select(!global0.d.e, arg_0.c.d.e, vec3<bool>(true, true, true))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-402f, var_3.c.d.b))), global0.d.d, false)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.d.x, 525f)))))));
}

fn func_2() -> Struct_1 {
    return Struct_1(66348u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.d.b))), vec4<u32>(~(4294967295u << (~global1.x % 32u)), 0u, 6425u, 23537u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_4(Struct_3(func_3(), global0.c, global0.c, Struct_1(global0.d.c.x, global0.b.d.d.x, vec4<u32>(59108u, global1.x, global1.x, 4294967295u), vec2<f32>(global0.b.d.d.x, 1037f), global0.b.d.e)), ~89982u, firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.c.a, 1i, 1i), vec3<i32>(global0.c.a, 14653i, global0.c.a))))), vec2<f32>(-928f, _wgslsmith_f_op_f32(global0.b.d.d.x - _wgslsmith_f_op_f32(-global0.d.b))), global0.b.d.e.yz)), global0.d.e);
}

fn func_1() -> vec2<u32> {
    let var_0 = Struct_3(!all(global0.c.d.e.yy), Struct_2(-global0.b.a, select(vec2<u32>(43336u, abs(2331u)), _wgslsmith_add_vec2_u32(vec2<u32>(38058u, global0.d.c.x) & global0.c.d.c.zw, vec2<u32>(8687u, global0.c.c)), true), _wgslsmith_mod_u32(~(~u_input.b), ~(~4294967295u)), func_2()), Struct_2(global0.b.a, select(~vec2<u32>(86259u, u_input.b), global0.d.c.yx, global0.b.d.e.zz), u_input.b, global0.b.d), Struct_1(global0.c.b.x, global0.b.d.d.x, global0.d.c, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.d.b), _wgslsmith_f_op_f32(global0.c.d.d.x + global0.c.d.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-464f)))), vec3<bool>(true || global0.d.e.x, true, !global0.a && global0.c.d.e.x)));
    var var_1 = var_0;
    var_1 = var_0;
    let var_2 = var_1.c;
    return firstLeadingBit(_wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(var_1.c.d.c.ww, ~vec2<u32>(0u, var_2.c), (var_0.b.d.c.yw >> (var_1.c.d.c.wz % vec2<u32>(32u))) & var_0.d.c.yy), var_0.c.d.c.xz));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.c;
    var var_1 = func_1();
    let var_2 = global2[_wgslsmith_index_u32(1u, 1u)];
    let var_3 = reverseBits(min(~15280u, var_2.d.c.x));
    let var_4 = _wgslsmith_add_vec4_u32(~func_2().c, var_0.d.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a);
}

