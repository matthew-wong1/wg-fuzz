struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: Struct_4,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_1(vec3<f32>(842f, -193f, -266f), vec3<i32>(8991i, 2147483647i, -63152i), -1167f, vec3<u32>(0u, 85047u, 0u)));

var<private> global1: array<Struct_5, 2> = array<Struct_5, 2>(Struct_5(0u, 964f, Struct_4(Struct_1(vec3<f32>(1800f, 522f, -683f), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), 1490f, vec3<u32>(43171u, 43291u, 41142u))), Struct_4(Struct_1(vec3<f32>(826f, 631f, -1000f), vec3<i32>(-1i, -1i, -32214i), -280f, vec3<u32>(30135u, 27259u, 58948u)))), Struct_5(0u, -1715f, Struct_4(Struct_1(vec3<f32>(-262f, 1045f, -139f), vec3<i32>(5683i, 18726i, -7334i), 1375f, vec3<u32>(4294967295u, 24766u, 1u))), Struct_4(Struct_1(vec3<f32>(972f, 1092f, -592f), vec3<i32>(0i, -1i, 29578i), -1300f, vec3<u32>(4294967295u, 0u, 39308u)))));

var<private> global2: array<i32, 17>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> vec2<f32> {
    let var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.c, arg_0.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_vec3_f32(select(global0.a.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1122f, 382f, arg_0.a.x)), vec3<bool>(false, true, true)))), arg_0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-107f * -2005f))), -523f), abs(vec3<u32>(reverseBits(global0.a.d.x), ~u_input.a, abs(4294967295u)))));
    global2 = array<i32, 17>();
    let var_1 = global0.a.a.yz;
    global0 = var_0;
    global2 = array<i32, 17>();
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(-360f, global0.a.a.x));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_1(global0.a.a, reverseBits(_wgslsmith_div_vec3_i32(-global0.a.b >> (vec3<u32>(4294967295u, 4294967295u, 20528u) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_i32(global0.a.b, _wgslsmith_add_vec3_i32(vec3<i32>(-18153i, u_input.d, 2992i), vec3<i32>(u_input.d, global2[_wgslsmith_index_u32(1u, 17u)], -43275i)), vec3<i32>(2147483647i, 1i, -11233i) ^ vec3<i32>(1i, -6551i, global2[_wgslsmith_index_u32(30890u, 17u)])))), 1f, ~global0.a.d);
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3(global0.a)), var_0.a.zx, all(vec3<bool>(true, true, select(true, false, true))) & (var_0.d.x >= ~14368u)));
    global1 = array<Struct_5, 2>();
    var var_2 = select(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, true, true, true), true);
    let var_3 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global0.a.a))), abs(var_0.b) | vec3<i32>(u_input.d, -1i, var_0.b.x), 580f, var_0.d ^ var_0.d));
    return Struct_1(_wgslsmith_f_op_vec3_f32(max(global0.a.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1076f, global0.a.c, -1000f)), var_0.a, false)))))), ~var_0.b ^ ~countOneBits(select(global0.a.b, vec3<i32>(var_3.a.b.x, var_3.a.b.x, global0.a.b.x), var_2.x)), var_1.x, _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_3.a.d.x | 0u), _wgslsmith_mod_vec3_u32(vec3<u32>(~1u, _wgslsmith_mod_u32(99689u, global0.a.d.x), _wgslsmith_dot_vec2_u32(var_0.d.yz, vec2<u32>(9564u, var_3.a.d.x))), global0.a.d)));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: i32) -> Struct_5 {
    global0 = Struct_4(arg_0);
    var var_0 = Struct_3(any(!vec3<bool>(true, -1219f != global0.a.c, true)));
    var_0 = Struct_3(true);
    let var_1 = global2[_wgslsmith_index_u32(4294967295u >> (max(global0.a.d.x ^ (~arg_0.d.x >> (15328u % 32u)), reverseBits(~global0.a.d.x) | arg_1.x) % 32u), 17u)];
    let var_2 = reverseBits(min(635u, 36513u));
    return Struct_5(reverseBits(1u), _wgslsmith_f_op_f32(select(-1198f, _wgslsmith_f_op_f32(-282f * _wgslsmith_f_op_f32(-global0.a.a.x)), var_0.a)), Struct_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.c), 1570f, _wgslsmith_f_op_f32(global0.a.c * 1000f)), -global0.a.b, func_2(_wgslsmith_f_op_f32(global0.a.a.x * global0.a.c), 17155u).c, max(global0.a.d, global0.a.d) | min(vec3<u32>(global0.a.d.x, 14482u, 64986u), vec3<u32>(0u, 5906u, 10124u)))), Struct_4(func_2(global0.a.a.x, ~(~1u))));
}

fn func_1() -> vec2<i32> {
    let var_0 = func_4(func_2(_wgslsmith_f_op_f32(min(2264f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.x) - global0.a.c))), global0.a.d.x), ~(~global0.a.d.xy), Struct_2(5467u), 0i);
    global0 = Struct_4(var_0.d.a);
    let var_1 = Struct_5(var_0.d.a.d.x, 1726f, var_0.c, func_4(func_2(-238f, 4294967295u), ~min(func_2(var_0.c.a.c, u_input.c).d.xz, vec2<u32>(u_input.c, var_0.d.a.d.x)), Struct_2(4294967295u), _wgslsmith_dot_vec2_i32(var_0.c.a.b.yz, vec2<i32>(1i, global0.a.b.x))).d);
    let var_2 = vec3<bool>(true, (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.a.c)) < _wgslsmith_f_op_f32(-1717f - _wgslsmith_div_f32(-524f, var_1.b))) | (var_0.d.a.a.x != 1f), all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, false, true)), false)));
    let var_3 = any(!select(vec2<bool>(true, true), select(!vec2<bool>(true, var_2.x), vec2<bool>(true, true), any(vec4<bool>(var_2.x, true, var_2.x, var_2.x))), false));
    return _wgslsmith_sub_vec2_i32(var_0.c.a.b.yx, -vec2<i32>(~abs(global0.a.b.x), i32(-1i) * -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -vec4<i32>(-firstLeadingBit(-1i), -28008i, u_input.d, _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.d << (global0.a.d.x % 32u), global2[_wgslsmith_index_u32(select(u_input.c, u_input.c, false), 17u)]), u_input.d));
    let var_1 = -(~((vec2<i32>(2147483647i, 4459i) << (max(vec2<u32>(4294967295u, 1u), vec2<u32>(global0.a.d.x, 0u)) % vec2<u32>(32u))) | _wgslsmith_mult_vec2_i32(func_1(), reverseBits(vec2<i32>(global0.a.b.x, 4539i)))));
    global0 = Struct_4(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.a.a) * global0.a.a)), var_0.zzz, global0.a.c, ~(~(~vec3<u32>(1u, global0.a.d.x, 0u)))));
    global0 = Struct_4(global0.a);
    global0 = Struct_4(global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(1i, 1i, max(_wgslsmith_dot_vec3_i32(var_0.zyw >> (vec3<u32>(41584u, u_input.b, global0.a.d.x) % vec3<u32>(32u)), ~(-vec3<i32>(var_1.x, u_input.d, u_input.d))), _wgslsmith_mult_i32(-var_0.x, 25111i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a.c + global0.a.a.x), global0.a.a.x)) - _wgslsmith_f_op_f32(round(global0.a.c))), global0.a.d.x);
}

