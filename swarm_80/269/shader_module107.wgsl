struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: f32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<i32> = vec2<i32>(-70148i, 2147483647i);

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    let var_0 = _wgslsmith_sub_vec4_u32(~_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 0u, 16345u, global0.a), vec4<u32>(41992u, arg_0.x, 4294967295u, 1u)), u_input.b), ~vec4<u32>(arg_0.x, u_input.b.x, 62280u, u_input.b.x)) | ~vec4<u32>(arg_0.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(62687u, arg_0.x), u_input.b.x, ~arg_0.x), u_input.b.x, global0.a);
    global1 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.a, u_input.a | ~vec3<i32>(-41740i, u_input.a.x, global1.x)), ~global1.x), ~_wgslsmith_dot_vec2_i32(abs(min(u_input.a.zy, u_input.a.yz)), abs(u_input.a.yx)));
    let var_1 = vec4<bool>(all(vec4<bool>(_wgslsmith_mult_u32(68728u, u_input.b.x) > global0.a, 1u < global0.a, true, true)), any(vec4<bool>(all(vec3<bool>(true, false, true)), u_input.b.x < var_0.x, true, all(vec2<bool>(true, true)))) && all(select(vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)), vec3<bool>(false, false, false))), false, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(false, true, false), true))));
    global1 = vec2<i32>(-(~(~global1.x)), -(~u_input.c));
    let var_2 = false;
    return 37011i;
}

fn func_2(arg_0: f32, arg_1: Struct_4) -> bool {
    let var_0 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 37287i, 0i, func_3(u_input.b.yxz)), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-37259i, -40714i, 0i, -16885i), vec4<i32>(1i, global1.x, u_input.a.x, 0i)), vec4<i32>(u_input.a.x, u_input.c, 2147483647i, -2147483647i) ^ vec4<i32>(u_input.a.x, -2147483647i, 2147483647i, u_input.a.x)), vec4<i32>(global1.x, _wgslsmith_clamp_i32(global1.x, global1.x, u_input.c), countOneBits(global1.x), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a))), -(~vec4<i32>(u_input.c, 8906i, u_input.a.x, 0i)) << (~u_input.b % vec4<u32>(32u)));
    global0 = Struct_2(0u);
    var var_1 = Struct_4(global0.a, vec3<u32>(_wgslsmith_clamp_u32(firstTrailingBit(77986u), 37185u, arg_1.a), max(~3308u, 1u), _wgslsmith_sub_u32(_wgslsmith_add_u32(firstLeadingBit(22954u), u_input.b.x), global0.a)));
    let var_2 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec2<bool>(true, true)), true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, var_1.a <= firstTrailingBit(84407u), false, all(vec2<bool>(false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true))));
    global0 = Struct_2(26635u >> (countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.b.x, var_1.b.x), firstTrailingBit(vec2<u32>(var_1.b.x, 1u)))) % 32u));
    return u_input.a.x < 0i;
}

fn func_1() -> vec2<i32> {
    var var_0 = Struct_3(select(vec3<bool>(true, true, false | func_2(-130f, Struct_4(global0.a, vec3<u32>(4294967295u, global0.a, 4294967295u)))), vec3<bool>(true, true, true), false));
    let var_1 = vec4<u32>(57479u, 1u, 47134u | _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, global0.a, u_input.b.x, u_input.b.x), u_input.b), firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.a, 47815u, 18963u, 56538u), u_input.b))), ~global0.a);
    var var_2 = Struct_4(_wgslsmith_clamp_u32(~0u, 1u, 1u), ~var_1.xyy);
    let var_3 = Struct_2(u_input.b.x);
    var_2 = Struct_4(~1u, _wgslsmith_clamp_vec3_u32(max(vec3<u32>(_wgslsmith_add_u32(global0.a, u_input.b.x), var_1.x >> (0u % 32u), var_2.a), vec3<u32>(var_2.b.x, var_2.a, var_1.x) >> (u_input.b.yyw % vec3<u32>(32u))), select(var_1.yxx, ~vec3<u32>(var_2.a, 7735u, 70741u), var_0.a), vec3<u32>(var_3.a, 0u, max(~1u, global0.a))));
    return countOneBits(vec2<i32>(_wgslsmith_mod_i32(global1.x, u_input.a.x), -u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a.yx;
    global0 = Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(21513u, select(firstTrailingBit(u_input.b.x), 1u, false), u_input.b.x, _wgslsmith_add_u32(u_input.b.x, 0u) << ((u_input.b.x << (19359u % 32u)) % 32u)), u_input.b));
    let var_0 = true;
    var var_1 = 12299u;
    let var_2 = !(!(!vec3<bool>(true, all(vec3<bool>(var_0, var_0, var_0)), false)));
    let x = u_input.a;
    s_output = StorageBuffer(-548f, max(~_wgslsmith_mod_vec2_u32(vec2<u32>(global0.a, u_input.b.x), u_input.b.wy), select(vec2<u32>(global0.a, global0.a), ~vec2<u32>(33162u, u_input.b.x), false)) << (~vec2<u32>(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x, 4772u)) % vec2<u32>(32u)), -abs(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(global1.x, 2147483647i)), func_1(), u_input.a.zx)));
}

