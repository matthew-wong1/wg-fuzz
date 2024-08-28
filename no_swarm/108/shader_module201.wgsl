struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<u32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_5) -> vec2<bool> {
    return arg_0.b.c.d.wy;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: vec2<u32>) -> i32 {
    global0 = select(!select(!func_3(Struct_5(false, Struct_2(vec2<i32>(u_input.a.x, u_input.a.x), vec4<u32>(44423u, arg_0, arg_2.x, 66934u), Struct_1(89372u, arg_1, vec4<f32>(2581f, arg_1, arg_1, 1704f), vec4<bool>(global0.x, global0.x, global0.x, global0.x)), -369f), arg_0, 102261u, arg_0)), select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), vec2<bool>(true, global0.x)), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true)), !(!vec2<bool>(global0.x, false))), select(vec2<bool>(any(vec4<bool>(false, true, false, true)), global0.x), !(!func_3(Struct_5(global0.x, Struct_2(vec2<i32>(0i, 0i), vec4<u32>(4294967295u, 2393u, 0u, arg_0), Struct_1(arg_2.x, arg_1, vec4<f32>(480f, 1959f, -737f, 385f), vec4<bool>(global0.x, global0.x, false, false)), 582f), arg_2.x, 41711u, arg_2.x))), global0.x && global0.x), vec2<bool>(true, false));
    let var_0 = Struct_4(~35115u, select(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, -4254i, 0i), u_input.a & vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) < ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -34629i), u_input.a.zx), global0.x, true), _wgslsmith_sub_vec3_u32(reverseBits(max(vec3<u32>(1u, arg_2.x, arg_2.x), vec3<u32>(arg_2.x, arg_0, arg_0))), _wgslsmith_sub_vec3_u32(~(~vec3<u32>(arg_2.x, arg_2.x, 1u)), _wgslsmith_div_vec3_u32(abs(vec3<u32>(arg_0, arg_2.x, 40050u)), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, arg_0, arg_0), vec3<u32>(arg_0, arg_0, 18903u))))));
    global0 = !select(!func_3(Struct_5(false, Struct_2(vec2<i32>(-2147483647i, u_input.a.x), vec4<u32>(4294967295u, 1u, 90492u, 74656u), Struct_1(arg_0, -1307f, vec4<f32>(-1298f, arg_1, arg_1, arg_1), vec4<bool>(var_0.b, var_0.b, true, global0.x)), arg_1), var_0.c.x, 0u, arg_2.x)), select(select(!vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x), all(vec4<bool>(var_0.b, true, global0.x, var_0.b))), !func_3(Struct_5(var_0.b, Struct_2(u_input.a.ww, vec4<u32>(4294967295u, 1u, 112829u, 40927u), Struct_1(14665u, arg_1, vec4<f32>(-287f, arg_1, arg_1, 768f), vec4<bool>(true, true, global0.x, var_0.b)), arg_1), arg_0, 1u, arg_0)), all(vec2<bool>(true, var_0.b))), vec2<bool>(var_0.b, any(!vec4<bool>(var_0.b, true, global0.x, false))));
    global0 = !select(!vec2<bool>(!global0.x, global0.x && var_0.b), select(!select(vec2<bool>(false, var_0.b), vec2<bool>(false, true), true), !func_3(Struct_5(false, Struct_2(vec2<i32>(-1i, -1i), vec4<u32>(55528u, arg_2.x, arg_2.x, 4294967295u), Struct_1(var_0.a, arg_1, vec4<f32>(-1000f, arg_1, arg_1, 535f), vec4<bool>(false, false, false, false)), arg_1), arg_0, 26197u, arg_2.x)), true), vec2<bool>(any(func_3(Struct_5(false, Struct_2(u_input.a.zx, vec4<u32>(114754u, var_0.a, arg_0, 1u), Struct_1(34893u, 258f, vec4<f32>(514f, 1074f, 439f, -1000f), vec4<bool>(global0.x, false, global0.x, false)), arg_1), arg_0, 5253u, 4294967295u))), true));
    global0 = select(select(!select(func_3(Struct_5(true, Struct_2(u_input.a.zw, vec4<u32>(arg_2.x, 45146u, 18705u, arg_0), Struct_1(57291u, -849f, vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(global0.x, true, global0.x, global0.x)), arg_1), arg_0, 0u, 4294967295u)), vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, false)), !vec2<bool>(any(vec3<bool>(true, var_0.b, global0.x)), all(vec2<bool>(var_0.b, false))), false), !vec2<bool>(global0.x, false), !all(vec4<bool>(var_0.b, true, true, any(vec4<bool>(true, global0.x, global0.x, global0.x)))));
    return 2147483647i;
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    global0 = !select(!select(select(arg_0.yy, arg_0.yz, vec2<bool>(global0.x, true)), vec2<bool>(false, global0.x), true), arg_0.xz, true);
    global0 = vec2<bool>(any(vec3<bool>(false, true, 1u > _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 75023u, 28387u), vec4<u32>(84726u, 4294967295u, 27712u, 1u)))), arg_0.x);
    return -(i32(-1i) * -u_input.a.x) & ~func_2(reverseBits(4294967295u), 1591f, firstLeadingBit(vec2<u32>(0u, 75614u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(-(1i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(17760u, 67686u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u)) % 32u)), _wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.a ^ u_input.a), u_input.a << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))), _wgslsmith_sub_i32(~1i, ~14498i), u_input.a.x), vec4<i32>(~func_1(!vec3<bool>(global0.x, global0.x, global0.x)), u_input.a.x, u_input.a.x, ~func_1(select(vec3<bool>(true, true, global0.x), vec3<bool>(false, global0.x, true), global0.x))));
    var_0 = _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, ~_wgslsmith_sub_i32(1i, 35352i), var_0.x, 1i), _wgslsmith_clamp_vec4_i32(u_input.a, u_input.a, vec4<i32>(1i, _wgslsmith_add_i32(2147483647i, u_input.a.x), u_input.a.x, i32(-1i) * -4884i))), vec4<i32>(~var_0.x, var_0.x & _wgslsmith_dot_vec2_i32(~vec2<i32>(var_0.x, var_0.x), u_input.a.yw), -39395i, _wgslsmith_div_i32(~var_0.x, -2147483647i) >> (~abs(1u) % 32u)));
    global0 = !func_3(Struct_5(all(!vec2<bool>(false, global0.x)), Struct_2(var_0.zy, vec4<u32>(1u, 1u, 1u, 1u), Struct_1(39080u, -1335f, vec4<f32>(-2290f, -401f, 1424f, -486f), vec4<bool>(global0.x, global0.x, false, global0.x)), 574f), 8429u, 85404u, 32509u));
    global0 = vec2<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(false, global0.x), true), select(!vec2<bool>(global0.x, true), !vec2<bool>(global0.x, global0.x), !vec2<bool>(global0.x, global0.x)), vec2<bool>(true, false))), true);
    var var_1 = vec2<u32>(~4294967295u, _wgslsmith_div_u32(0u, _wgslsmith_add_u32(1u, firstTrailingBit(reverseBits(0u)))));
    var var_2 = max(~(~4028u), ~var_1.x ^ 1u);
    let x = u_input.a;
    s_output = StorageBuffer(12032u, 347f, vec2<u32>(1u, var_1.x), 4294967295u);
}

