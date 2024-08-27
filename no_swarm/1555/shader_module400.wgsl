struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(Struct_1(-1000f, 1i), Struct_1(-639f, 1i), vec3<bool>(true, false, false));

var<private> global2: array<i32, 3>;

var<private> global3: array<vec4<bool>, 30> = array<vec4<bool>, 30>(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true));

var<private> global4: array<bool, 7> = array<bool, 7>(false, false, false, true, true, true, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> Struct_1 {
    return global1.a;
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1) -> vec4<i32> {
    global1 = Struct_2(arg_2, Struct_1(arg_2.a, 1i), global1.c);
    let var_0 = global4[_wgslsmith_index_u32(abs(firstTrailingBit(0u)), 7u)];
    var var_1 = -1000f;
    global3 = array<vec4<bool>, 30>();
    var var_2 = Struct_4(2147483647i, arg_2, select(!global3[_wgslsmith_index_u32(abs(min(29331u, arg_1)), 30u)], !select(select(vec4<bool>(true, global1.c.x, global1.c.x, global4[_wgslsmith_index_u32(4294967295u, 7u)]), global3[_wgslsmith_index_u32(4294967295u, 30u)], global4[_wgslsmith_index_u32(arg_1, 7u)]), select(vec4<bool>(false, false, global1.c.x, global4[_wgslsmith_index_u32(10252u, 7u)]), vec4<bool>(false, false, global1.c.x, false), vec4<bool>(global1.c.x, true, true, true)), global3[_wgslsmith_index_u32(~arg_1, 30u)]), !global1.c.x));
    return abs(vec4<i32>(-32407i, 0i & global2[_wgslsmith_index_u32(~1u, 3u)], _wgslsmith_div_i32(16628i, countOneBits(arg_0.x)), firstLeadingBit(33036i))) | vec4<i32>(reverseBits(555i), _wgslsmith_mod_i32(~(-1i), ~0i), -8449i, _wgslsmith_mod_i32(-global1.b.b, _wgslsmith_div_i32(0i, countOneBits(arg_0.x))));
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> vec3<u32> {
    var var_0 = Struct_3(arg_0.a, func_2());
    var var_1 = -vec4<i32>(-1i, 0i, _wgslsmith_clamp_i32(1468i, i32(-1i) * -30411i, -38092i), 1i) & -_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, ~2147483647i, arg_1, 41047i), _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -84599i, -11928i, -64292i), vec4<i32>(62647i, var_0.a.b.b, 5838i, -1i)) & vec4<i32>(u_input.a, global1.a.b, -10747i, 2147483647i), func_3(select(vec2<i32>(-28534i, -39930i), vec2<i32>(arg_1, arg_1), global1.c.x), 1u, Struct_1(1967f, -1i)));
    var var_2 = vec4<u32>(min(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(17418u, 1u, 4294967295u), vec3<u32>(4294967295u, 21924u, 4294967295u)) >> (4294967295u % 32u), ~1u), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, 1u)), _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(27201u, 15856u), vec2<u32>(0u, 1u), vec2<u32>(1u, 42596u)), vec2<u32>(1u, 25384u)))), firstTrailingBit(4294967295u), ~4294967295u, _wgslsmith_div_u32(1u, 1u) & _wgslsmith_mod_u32(reverseBits(~851u), _wgslsmith_add_u32(firstTrailingBit(0u), 1u)));
    let var_3 = 4294967295u;
    let var_4 = ~1u;
    return ~var_2.zzy;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 7>();
    var var_0 = max(vec3<u32>(96675u, ~reverseBits(abs(1u)), ~_wgslsmith_div_u32(min(80972u, 1u), 1u)), _wgslsmith_clamp_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(func_1(Struct_3(Struct_2(global1.b, global1.a, vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 7u)], global4[_wgslsmith_index_u32(0u, 7u)], true)), global1.a), u_input.b.x), func_1(Struct_3(Struct_2(Struct_1(global1.a.a, u_input.b.x), global1.a, vec3<bool>(global1.c.x, true, true)), global1.a), -2147483647i))), vec3<u32>(1u, ~(~30587u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 48326u, 4294967295u), vec3<u32>(54584u, 4294967295u, 9834u)) >> (92299u % 32u)), ~vec3<u32>(1u, 1u, 1u)));
    global3 = array<vec4<bool>, 30>();
    var var_1 = Struct_3(Struct_2(global1.b, global1.a, select(global1.c, !global1.c, 1i <= (-12335i & global1.b.b))), global1.a);
    global2 = array<i32, 3>();
    let var_2 = vec3<u32>(4294967295u, ~var_0.x, ~(~var_0.x));
    let var_3 = var_1.a.c.xz;
    var var_4 = global1.a;
    let var_5 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2, ~_wgslsmith_mod_vec3_u32(select(vec3<u32>(var_2.x, 97639u, 12993u) & vec3<u32>(14306u, var_2.x, var_0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, 24165u, var_0.x), var_2), global1.c), _wgslsmith_mult_vec3_u32(var_2 ^ vec3<u32>(var_2.x, 27627u, var_2.x), vec3<u32>(var_0.x, 49687u, 55746u))));
}

