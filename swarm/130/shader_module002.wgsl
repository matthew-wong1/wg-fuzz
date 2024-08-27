struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24> = array<Struct_2, 24>(Struct_2(true, 854f, false, Struct_1(false), -29183i), Struct_2(true, -217f, true, Struct_1(true), i32(-2147483648)), Struct_2(true, 662f, true, Struct_1(false), -16149i), Struct_2(false, -595f, true, Struct_1(false), 47696i), Struct_2(true, -131f, false, Struct_1(false), -1i), Struct_2(false, 1600f, true, Struct_1(false), 0i), Struct_2(false, 1030f, false, Struct_1(true), 0i), Struct_2(false, 1099f, true, Struct_1(true), 35254i), Struct_2(true, -2291f, false, Struct_1(false), -1i), Struct_2(false, 142f, false, Struct_1(false), -1i), Struct_2(true, -800f, false, Struct_1(false), i32(-2147483648)), Struct_2(false, 184f, true, Struct_1(true), 0i), Struct_2(false, -1000f, true, Struct_1(true), -43145i), Struct_2(true, -645f, true, Struct_1(true), 6539i), Struct_2(true, 1806f, true, Struct_1(true), -63533i), Struct_2(false, 1159f, false, Struct_1(true), -1i), Struct_2(true, 411f, true, Struct_1(false), 1i), Struct_2(false, 309f, false, Struct_1(false), -14374i), Struct_2(true, 190f, false, Struct_1(true), 0i), Struct_2(true, 1342f, true, Struct_1(false), 5822i), Struct_2(false, 582f, true, Struct_1(false), -13265i), Struct_2(true, 1521f, true, Struct_1(false), -46525i), Struct_2(false, 1004f, false, Struct_1(true), -35587i), Struct_2(true, 586f, true, Struct_1(false), 12149i));

var<private> global1: vec3<bool>;

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(true, -243f, true, Struct_1(false), 2147483647i), Struct_2(true, 180f, false, Struct_1(false), -24465i), Struct_2(true, 460f, true, Struct_1(true), i32(-2147483648)), Struct_2(true, -209f, true, Struct_1(true), i32(-2147483648)), Struct_2(true, -561f, false, Struct_1(false), 83253i));

var<private> global3: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_1(false), 4294967295u, vec3<bool>(false, true, true), 0u), Struct_3(Struct_1(true), 0u, vec3<bool>(true, false, true), 0u), Struct_3(Struct_1(true), 5801u, vec3<bool>(true, false, false), 34722u), Struct_3(Struct_1(false), 1u, vec3<bool>(false, true, true), 9295u), Struct_3(Struct_1(true), 7590u, vec3<bool>(true, true, true), 56033u), Struct_3(Struct_1(false), 15311u, vec3<bool>(false, true, true), 1u), Struct_3(Struct_1(true), 1u, vec3<bool>(true, false, true), 1u), Struct_3(Struct_1(true), 1u, vec3<bool>(true, true, true), 1u), Struct_3(Struct_1(false), 4294967295u, vec3<bool>(false, false, true), 151003u), Struct_3(Struct_1(false), 44680u, vec3<bool>(false, false, true), 1u));

var<private> global4: array<f32, 27> = array<f32, 27>(-472f, -200f, -171f, -338f, 598f, -168f, 817f, 875f, 334f, 479f, 567f, -756f, -962f, -568f, 857f, 1472f, 1323f, -1243f, 414f, 1000f, -2171f, -677f, 320f, -692f, -1000f, 251f, 2525f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = -vec3<i32>(u_input.a, u_input.a, -_wgslsmith_add_i32(u_input.a, u_input.b)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(countOneBits(abs(u_input.c.x)), ~_wgslsmith_clamp_u32(u_input.c.x, 27542u, 46161u), 49562u), ~(abs(vec3<u32>(u_input.c.x, 0u, 17577u)) & select(vec3<u32>(35950u, u_input.c.x, u_input.c.x), vec3<u32>(11592u, 11218u, 54834u), global1.x))) % vec3<u32>(32u));
    var var_1 = Struct_4(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, ~var_0.x), ~var_0.xy));
    var var_2 = 1u;
    var_1 = Struct_4(-2147483647i << (u_input.c.x % 32u));
    global2 = array<Struct_2, 5>();
    return 0i;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>) -> Struct_4 {
    var var_0 = arg_1;
    var var_1 = vec4<i32>(u_input.b | func_2(Struct_1(global1.x || global1.x)), -_wgslsmith_mod_i32(-2147483647i, u_input.a), 0i, select(1i, -15927i << (1u % 32u), _wgslsmith_div_u32(max(4294967295u, 20761u), min(arg_1.x, arg_1.x)) == select(firstLeadingBit(62193u), arg_1.x >> (4294967295u % 32u), u_input.c.x < 1u)));
    let var_2 = abs(vec2<i32>(~2147483647i & ~u_input.b, -countOneBits(abs(arg_0.x))));
    global4 = array<f32, 27>();
    global3 = array<Struct_3, 10>();
    return Struct_4(arg_0.x);
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    let var_0 = reverseBits(-13886i);
    return u_input.b;
}

fn func_4(arg_0: bool, arg_1: i32) -> vec3<bool> {
    var var_0 = Struct_2(true, -916f, ~(~_wgslsmith_mult_i32(-1i, 31539i)) < reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a) ^ vec2<i32>(2147483647i, -7493i), ~vec2<i32>(u_input.b, 806i))), Struct_1(all(global1.yz)), ~_wgslsmith_dot_vec2_i32(vec2<i32>(48532i, arg_1), _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(-39968i, arg_1) ^ vec2<i32>(arg_1, -12880i))));
    let var_1 = func_1(_wgslsmith_clamp_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.e, -5013i, var_0.e), vec3<i32>(-2147483647i, var_0.e, var_0.e), vec3<i32>(2147483647i, arg_1, var_0.e)) | min(vec3<i32>(var_0.e, arg_1, -46962i), vec3<i32>(-7909i, arg_1, u_input.b))), reverseBits(vec3<i32>(-2147483647i, u_input.a, _wgslsmith_clamp_i32(-23295i, arg_1, 1i))), _wgslsmith_sub_vec3_i32(max(_wgslsmith_div_vec3_i32(vec3<i32>(14368i, arg_1, 1i), vec3<i32>(-28680i, u_input.b, arg_1)), ~vec3<i32>(arg_1, 1i, 46641i)), vec3<i32>(select(-25040i, 11076i, arg_0), -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -14691i, -1i), vec3<i32>(-10836i, 0i, 0i))))), _wgslsmith_add_vec3_u32(vec3<u32>(~(u_input.c.x ^ u_input.c.x), abs(1u), abs(61410u)), ~max(vec3<u32>(1u, 17315u, u_input.c.x), firstTrailingBit(vec3<u32>(53980u, 0u, u_input.c.x)))));
    var var_2 = -1711f;
    global3 = array<Struct_3, 10>();
    let var_3 = func_1(abs(reverseBits(vec3<i32>(2147483647i, -1i, var_0.e) & vec3<i32>(u_input.b, var_0.e, -1260i)) & vec3<i32>(_wgslsmith_clamp_i32(27325i, var_1.a, 35726i), max(var_1.a, u_input.a), _wgslsmith_div_i32(-2147483647i, u_input.b))), vec3<u32>(u_input.c.x | reverseBits(127250u & u_input.c.x), u_input.c.x, 4294967295u & u_input.c.x));
    return !select(select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, var_0.d.a), false), vec3<bool>(false, global1.x, false), select(vec3<bool>(false, false, var_0.a), vec3<bool>(arg_0, arg_0, global1.x), vec3<bool>(true, true, arg_0))), !select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(var_0.c, true, false), false), all(vec3<bool>(false, true, var_0.c))), !vec3<bool>(2147483647i < var_3.a, all(vec4<bool>(false, arg_0, false, false)), true), select(select(select(vec3<bool>(true, global1.x, arg_0), vec3<bool>(var_0.d.a, global1.x, var_0.d.a), false), select(vec3<bool>(false, true, var_0.d.a), vec3<bool>(var_0.d.a, global1.x, false), vec3<bool>(var_0.a, false, false)), vec3<bool>(true, var_0.a, false)), vec3<bool>(469u != u_input.c.x, global1.x, all(vec3<bool>(false, false, global1.x))), !select(vec3<bool>(var_0.a, true, false), vec3<bool>(arg_0, global1.x, arg_0), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec3<i32>(max(~(~u_input.b), u_input.a), 0i >> (u_input.c.x % 32u), u_input.a), vec3<u32>(u_input.c.x, ~_wgslsmith_mult_u32(39517u, 1u), u_input.c.x));
    let var_1 = Struct_1(global1.x);
    var var_2 = var_1;
    global1 = !vec3<bool>(any(!select(global1.yx, vec2<bool>(false, true), false)), false, !var_1.a);
    var var_3 = Struct_3(var_1, _wgslsmith_sub_u32(~((u_input.c.x & 1u) | (u_input.c.x | 1u)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, min(79714u, u_input.c.x), u_input.c.x | u_input.c.x, 38352u), vec4<u32>(abs(u_input.c.x), ~u_input.c.x, ~5655u, u_input.c.x))), !func_4(var_1.a, _wgslsmith_mult_i32(func_3(vec4<u32>(1171u, 52659u, 40836u, 3173u)), _wgslsmith_add_i32(-34032i, u_input.b))), u_input.c.x);
    global3 = array<Struct_3, 10>();
    var var_4 = vec2<bool>(~_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 55206u, 1u, u_input.c.x), vec4<u32>(0u, var_3.b, u_input.c.x, 51074u)), 0u) > _wgslsmith_dot_vec3_u32(~vec3<u32>(546u, 4294967295u, u_input.c.x) << (vec3<u32>(15559u, 4294967295u, u_input.c.x) % vec3<u32>(32u)), max(vec3<u32>(u_input.c.x, 14556u, 69875u), vec3<u32>(4294967295u, u_input.c.x, 87517u)) >> (~vec3<u32>(96u, 77640u, u_input.c.x) % vec3<u32>(32u))), any(func_4(true, countOneBits(var_0.a) << (u_input.c.x % 32u))));
    let var_5 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-670f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.c.x, 27u)] - global4[_wgslsmith_index_u32(u_input.c.x, 27u)]))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(4294967295u, 27u)], -1121f) + vec2<f32>(global4[_wgslsmith_index_u32(u_input.c.x, 27u)], -927f))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-(_wgslsmith_add_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(var_0.a, 13901i)) << (vec2<u32>(u_input.c.x, 4294967295u) % vec2<u32>(32u)))), -1476f);
}

