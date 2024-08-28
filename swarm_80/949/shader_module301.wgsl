struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: i32;

var<private> global2: i32 = -35751i;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> vec2<u32> {
    global0 = abs(~reverseBits(~_wgslsmith_sub_i32(6140i, 40691i)));
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(13745u, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a.x, u_input.c.x, 31207u)), ~vec3<u32>(u_input.a.x, 0u, u_input.c.x))), ~(~u_input.a.x), u_input.a.x) ^ u_input.a.zxy;
    var var_1 = Struct_2(Struct_1(-1i, max(1u & u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x & 4294967295u, ~var_0.x, _wgslsmith_sub_u32(u_input.a.x, 79181u)))), all(vec3<bool>(true, true, true)), Struct_1(48707i, 30922u));
    let var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-133f, -1223f)), _wgslsmith_f_op_f32(1000f * -690f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(429f - -812f))))), Struct_3(!(~var_0.x <= ~0u), Struct_1(_wgslsmith_sub_i32(var_1.c.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a.a, var_1.a.a, -5248i, var_1.c.a), vec4<i32>(var_1.c.a, 19064i, 7895i, var_1.a.a))), 4294967295u | ~var_1.a.b)));
    let var_3 = var_2.b.b;
    return ~vec2<u32>((4294967295u & _wgslsmith_add_u32(1u, var_0.x)) << (u_input.c.x % 32u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(var_3.b, ~var_2.b.b.b, 0u), ~reverseBits(u_input.c.x)));
}

fn func_2() -> Struct_2 {
    var var_0 = 1u;
    let var_1 = 1246f;
    var var_2 = vec3<bool>(any(vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), true, u_input.c.x >= select(30193u, u_input.b.x, true), true)), true, any(vec3<bool>(true, true, true)) && (-2399f >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_1))))));
    var var_3 = Struct_2(Struct_1(-41728i, 0u & _wgslsmith_div_u32(~4294967295u, ~u_input.b.x)), !(true | all(select(vec4<bool>(var_2.x, false, var_2.x, var_2.x), vec4<bool>(true, var_2.x, var_2.x, var_2.x), var_2.x))), Struct_1(min(countOneBits(0i), ~_wgslsmith_sub_i32(1i, 0i)), _wgslsmith_add_u32(~37387u, u_input.c.x)));
    var var_4 = vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(u_input.a.x), var_3.c.b, 33231u, 0u), _wgslsmith_mult_vec4_u32(firstLeadingBit(u_input.a), u_input.a)), ~var_3.a.b, u_input.c.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, var_3.a.b) & (func_3() << (~u_input.a.xz % vec2<u32>(32u))), u_input.c));
    return Struct_2(var_3.c, any(select(!vec4<bool>(var_3.b, true, false, false), select(!vec4<bool>(true, false, var_3.b, true), vec4<bool>(false, var_2.x, false, true), select(vec4<bool>(var_2.x, true, false, var_3.b), vec4<bool>(false, var_3.b, true, var_2.x), false)), !select(vec4<bool>(false, var_2.x, true, var_2.x), vec4<bool>(var_2.x, true, false, true), vec4<bool>(var_2.x, true, var_2.x, var_2.x)))), var_3.c);
}

fn func_1() -> StorageBuffer {
    global0 = _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit(_wgslsmith_clamp_vec2_i32(-vec2<i32>(1i, -2147483647i), -vec2<i32>(-68120i, 3961i), firstTrailingBit(vec2<i32>(-2147483647i, -5923i)))), vec2<i32>(1i, ~_wgslsmith_mod_i32(2147483647i, 2147483647i))), _wgslsmith_mult_vec2_i32(~firstTrailingBit(min(vec2<i32>(-50845i, 6035i), vec2<i32>(-1i, 1i))), vec2<i32>(1i >> (~u_input.c.x % 32u), 25613i << (~u_input.a.x % 32u))));
    var var_0 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(0i, -10164i)), -2147483647i, _wgslsmith_div_i32(38009i, _wgslsmith_sub_i32(16336i, ~(~(-1i)))));
    let var_1 = 1500f;
    let var_2 = func_2();
    global1 = _wgslsmith_dot_vec3_i32(min(~(-vec3<i32>(25013i, 16667i, 14476i)), min(_wgslsmith_sub_vec3_i32(~vec3<i32>(-10873i, var_0.x, -2147483647i), ~vec3<i32>(2147483647i, 41036i, -2147483647i)), _wgslsmith_mult_vec3_i32(~vec3<i32>(-35524i, 2147483647i, 0i), vec3<i32>(var_0.x, var_0.x, var_0.x)))), vec3<i32>(i32(-1i) * -countOneBits(var_0.x), var_2.a.a, var_0.x));
    return StorageBuffer(_wgslsmith_div_vec3_u32(abs(select(vec3<u32>(4294967295u, var_2.a.b, 0u), u_input.a.wyx, false)), u_input.a.wzz) >> (vec3<u32>((53401u & u_input.b.x) & var_2.a.b, var_2.c.b, abs(1u)) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

