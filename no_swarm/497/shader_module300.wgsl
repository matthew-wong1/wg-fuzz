struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: u32,
    c: vec2<bool>,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: vec3<bool>) -> i32 {
    return -_wgslsmith_sub_i32(46438i << (u_input.a % 32u), -(arg_0.b.c | -arg_0.b.d.x));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(true, u_input.a, -45055i, abs(vec3<i32>(func_3(Struct_4(1u, Struct_1(false, 1u, 2147483647i, vec3<i32>(-2147483647i, -2147483647i, -2147483647i), vec2<u32>(198u, 23409u))), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), true)), -1i, -22564i)), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a, 1u) & 1u, 1u), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(8796u, u_input.a ^ 44121u), u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a) >> (vec2<u32>(12350u, 15141u) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(vec2<u32>(107139u, u_input.a), vec2<u32>(1u, u_input.a))))));
    var var_1 = ~(~firstLeadingBit(u_input.a)) >> (4294967295u % 32u);
    let var_2 = vec4<bool>(firstLeadingBit(firstLeadingBit(-var_0.c)) >= func_3(Struct_4(8440u, var_0), !vec3<bool>(var_0.a, var_0.a, var_0.a)), ~(~(~34752u)) != _wgslsmith_add_u32(var_0.b ^ 1978u, _wgslsmith_mod_u32(firstTrailingBit(0u), var_0.b << (var_0.e.x % 32u))), !var_0.a, false);
    let var_3 = _wgslsmith_dot_vec2_u32(var_0.e ^ ~min(~vec2<u32>(u_input.a, var_0.b), var_0.e), ~max(var_0.e, var_0.e));
    var_1 = var_3;
    return ~var_3;
}

fn func_1() -> Struct_1 {
    var var_0 = -abs(~1i);
    var var_1 = _wgslsmith_add_u32(~51840u, ~_wgslsmith_sub_u32(~1u, u_input.a)) == 3861u;
    let var_2 = 9490i;
    var_1 = true;
    var_0 = -var_2;
    return Struct_1(false, ~u_input.a, 18190i << (0u % 32u), vec3<i32>(var_2, var_2, ((var_2 >> (4294967295u % 32u)) >> ((u_input.a | 57018u) % 32u)) << (1u % 32u)), vec2<u32>(func_2() & 1u, ~u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = -627f;
    let var_2 = ~func_2();
    var var_3 = ~(-_wgslsmith_dot_vec3_i32(abs(var_0.d), var_0.d));
    var_3 = abs(func_1().c);
    var var_4 = _wgslsmith_dot_vec2_i32(reverseBits(abs(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.d.x, var_0.d.x), vec2<i32>(21285i, 0i)), var_0.d.yx))), var_0.d.zy);
    let var_5 = -vec3<i32>(abs(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-35436i, abs(-2147483647i), firstLeadingBit(-8112i), _wgslsmith_dot_vec2_i32(var_0.d.zz, var_0.d.yz)), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.d.x, 28277i, var_0.c, 33283i), vec4<i32>(0i, 10361i, var_0.d.x, -5377i) & vec4<i32>(var_0.c, var_0.c, 2147483647i, var_0.d.x))), var_0.c);
    var var_6 = func_3(Struct_4(14376u, Struct_1(all(vec2<bool>(true, true)), ~(~u_input.a), _wgslsmith_dot_vec2_i32(var_0.d.xy, var_5.yx), var_0.d, _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 0u), var_0.e, vec2<u32>(1u, u_input.a)))), select(vec3<bool>(true, !var_0.a, all(!vec4<bool>(false, var_0.a, var_0.a, false))), select(!vec3<bool>(false, var_0.a, var_0.a), select(!vec3<bool>(true, var_0.a, var_0.a), !vec3<bool>(var_0.a, false, var_0.a), !vec3<bool>(true, var_0.a, var_0.a)), any(vec2<bool>(var_0.a, var_0.a)) | var_0.a), vec3<bool>(var_0.e.x >= ~0u, _wgslsmith_mod_i32(var_5.x, 63715i) <= firstLeadingBit(var_0.d.x), var_0.a)));
    var_3 = -_wgslsmith_mod_i32(var_0.c, select(~(2147483647i | var_5.x), var_5.x, var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(countOneBits(min(vec4<u32>(43189u, 0u, 22558u, 4294967295u), vec4<u32>(var_0.e.x, var_2, var_2, 88268u)) & (vec4<u32>(33665u, var_0.e.x, var_0.e.x, var_0.b) << (vec4<u32>(1u, u_input.a, var_0.b, 70473u) % vec4<u32>(32u)))), _wgslsmith_mult_vec4_u32(abs(_wgslsmith_add_vec4_u32(vec4<u32>(56681u, var_2, 19663u, var_2), vec4<u32>(8415u, 1u, 37713u, var_0.b))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, u_input.a, 1u, u_input.a), vec4<u32>(var_0.b, var_0.e.x, var_0.b, u_input.a))), ~(~vec4<u32>(var_2, var_2, var_0.e.x, u_input.a))), var_0.c, -609f);
}

