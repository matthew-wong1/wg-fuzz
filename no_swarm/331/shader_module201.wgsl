struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec4<i32> {
    var var_0 = Struct_5(Struct_2(Struct_1(~vec2<u32>(u_input.a, u_input.a) | abs(vec2<u32>(u_input.a, u_input.a)), vec2<i32>(u_input.b, 2126i) & _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(u_input.b, -1i)), -min(vec4<i32>(-12289i, 1i, 0i, 0i), vec4<i32>(1i, -41198i, -62191i, 15791i)), -962f), u_input.a));
    let var_1 = abs(~(abs(reverseBits(vec3<u32>(u_input.a, u_input.a, 28005u))) & ~(~vec3<u32>(62264u, 0u, var_0.a.b))));
    var var_2 = ~var_0.a.a.c.zzy;
    var var_3 = vec2<bool>(true, global0.x);
    var var_4 = var_0.a.a;
    return firstTrailingBit(var_0.a.a.c);
}

fn func_2() -> u32 {
    var var_0 = Struct_5(Struct_2(Struct_1(_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 102993u), vec2<u32>(u_input.a, 39854u)), vec2<u32>(0u, u_input.a) & vec2<u32>(u_input.a, 22658u)), ~(~vec2<i32>(1i, 17636i)), func_3(), 1f), firstLeadingBit(u_input.a)));
    var var_1 = ~vec3<u32>(var_0.a.b, ~var_0.a.a.a.x, ~_wgslsmith_clamp_u32(u_input.a, ~var_0.a.b, 4294967295u));
    var_1 = vec3<u32>(~(~((var_1.x | var_0.a.a.a.x) << (u_input.a % 32u))), ~(~var_0.a.a.a.x), 4530u);
    let var_2 = ~(-1i);
    let var_3 = ~20250i;
    return firstLeadingBit(firstLeadingBit(min(countOneBits(var_1.x), firstLeadingBit(1u))));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_div_u32(func_2(), ~firstLeadingBit(firstLeadingBit(abs(u_input.a))));
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_div_u32(u_input.a, _wgslsmith_mod_u32(~var_0, ~u_input.a)), 1u), min(-countOneBits(vec2<i32>(11309i, u_input.b)), abs(vec2<i32>(~(-8420i), u_input.b))), firstTrailingBit(~select(-vec4<i32>(-2147483647i, -26835i, u_input.b, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b, u_input.b, 0i, u_input.b), vec4<i32>(-18933i, 8780i, u_input.b, 10952i)), vec4<bool>(global0.x, global0.x, global0.x, global0.x))), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1833f))))), true)));
    let var_2 = var_1.d;
    let var_3 = _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(-var_1.d));
    var var_4 = global0.x;
    return _wgslsmith_add_u32(_wgslsmith_mod_u32(var_0, ~0u), 1u) & var_1.a.x;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: i32) -> Struct_2 {
    var var_0 = Struct_2(Struct_1(reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(arg_2.x, arg_1.x), ~arg_2.zz)), _wgslsmith_mod_vec2_i32(vec2<i32>(36748i, -2147483647i) & vec2<i32>(-2147483647i, u_input.b), -(vec2<i32>(-1i, u_input.b) & vec2<i32>(u_input.b, arg_3))), max(select(abs(vec4<i32>(2147483647i, u_input.b, arg_3, -2147483647i)), vec4<i32>(u_input.b, -46382i, u_input.b, 5774i), true), vec4<i32>(u_input.b, -33711i, firstLeadingBit(arg_3), -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1137f, _wgslsmith_f_op_f32(-1730f - 1453f))))), u_input.a);
    var var_1 = var_0.a;
    let var_2 = Struct_5(Struct_2(Struct_1(_wgslsmith_mult_vec2_u32(arg_2.yy, vec2<u32>(0u, 1u)), var_1.c.xz, ~(-var_0.a.c), 1062f), arg_2.x));
    var_1 = Struct_1(vec2<u32>(reverseBits(_wgslsmith_add_u32(1u, 1u)), arg_0), _wgslsmith_sub_vec2_i32(var_2.a.a.b, abs(_wgslsmith_add_vec2_i32(select(var_1.b, var_2.a.a.c.yy, false), _wgslsmith_mult_vec2_i32(var_1.b, var_2.a.a.b)))), func_3(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0.a.d)))) - 664f));
    let var_3 = u_input.a;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(798f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(969f)), _wgslsmith_f_op_f32(440f + 581f)))));
    let var_1 = func_4(firstTrailingBit(select(u_input.a, 0u, global0.x) << (u_input.a % 32u)), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(57524u, 31898u, 38895u, 20475u) | vec4<u32>(17464u, u_input.a, u_input.a, 0u), vec4<u32>(5478u, u_input.a, 1u, u_input.a) >> (vec4<u32>(u_input.a, 31400u, 3212u, u_input.a) % vec4<u32>(32u)))), _wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u)), select(u_input.a, u_input.a, true)), u_input.a), vec3<u32>(1u, u_input.a, _wgslsmith_sub_u32(u_input.a, func_1()))), _wgslsmith_mod_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.b, 0i)), u_input.b) << (4294967295u % 32u));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1114f - _wgslsmith_f_op_f32(min(var_1.a.d, var_1.a.d))));
    var var_2 = func_4(_wgslsmith_dot_vec2_u32(var_1.a.a, abs(abs(_wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), var_1.a.a)))), vec4<u32>(u_input.a, ~0u, 22559u, var_1.b), min(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 9803u, 12793u), vec3<u32>(u_input.a, var_1.b, var_1.a.a.x), ~vec3<u32>(u_input.a, 1u, 1u)), ~vec3<u32>(1u, 16363u, 1u)) | ~(~vec3<u32>(var_1.b, 0u, u_input.a) >> (_wgslsmith_div_vec3_u32(vec3<u32>(var_1.b, var_1.b, 58377u), vec3<u32>(1u, 53973u, 12369u)) % vec3<u32>(32u))), var_1.a.c.x ^ -25918i).a;
    var var_3 = (_wgslsmith_mod_vec4_i32(abs(vec4<i32>(0i, var_2.b.x, var_2.b.x, -1i)), vec4<i32>(select(var_2.b.x, 2147483647i, global0.x), _wgslsmith_sub_i32(3742i, u_input.b), ~var_2.c.x, var_2.b.x)) >> (vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_2.a, var_1.a.a), 1u), u_input.a, u_input.a, var_1.b) % vec4<u32>(32u))) ^ min(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.b.x, func_3().x, var_2.b.x >> (24846u % 32u), var_1.a.c.x), vec4<i32>(_wgslsmith_sub_i32(var_1.a.c.x, -83005i), _wgslsmith_dot_vec3_i32(var_1.a.c.zyx, vec3<i32>(u_input.b, u_input.b, -16103i)), i32(-1i) * -38677i, var_1.a.b.x), vec4<i32>(_wgslsmith_div_i32(-6330i, var_2.b.x), var_2.c.x | 25316i, 1i, var_2.c.x)), abs(var_2.c));
    var var_4 = Struct_4(!global0.x, i32(-1i) * -u_input.b);
    var var_5 = -1000f;
    let var_6 = select(!(!vec2<bool>(all(vec3<bool>(false, false, var_4.a)), true)), vec2<bool>(all(vec3<bool>(var_4.a, var_4.a, false)), true), !vec2<bool>(false, var_4.a));
    let x = u_input.a;
    s_output = StorageBuffer(min(select(var_3.yxy, ~var_1.a.c.zwz, !vec3<bool>(false, true, var_6.x)), vec3<i32>(firstLeadingBit(-1i), max(1i, 1i), u_input.b)), var_2.d);
}

