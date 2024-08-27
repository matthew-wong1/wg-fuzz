struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: bool,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global2: array<vec3<bool>, 3>;

var<private> global3: array<vec2<u32>, 7>;

var<private> global4: array<vec2<u32>, 30>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<i32>) -> bool {
    let var_0 = global0.c;
    let var_1 = all(!select(!vec4<bool>(false, false, global1.x, global1.x), !vec4<bool>(global1.x, global1.x, global0.c.a.x, var_0.a.x), !select(vec4<bool>(false, global0.c.a.x, false, global0.a.a.x), vec4<bool>(true, global0.c.a.x, var_0.a.x, var_0.a.x), var_0.a.x)));
    let var_2 = u_input.b.zz >> (countOneBits(_wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(global3[_wgslsmith_index_u32(1u, 7u)], global4[_wgslsmith_index_u32(u_input.a.x, 30u)]), _wgslsmith_mod_vec2_u32(u_input.a, max(vec2<u32>(u_input.c, global0.b.x), global4[_wgslsmith_index_u32(18546u, 30u)])))) % vec2<u32>(32u));
    let var_3 = _wgslsmith_clamp_u32(u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(abs(u_input.c), firstLeadingBit(8832u), 1u), global0.b), abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, 4294967295u), vec2<u32>(global0.b.x, 0u)))) ^ _wgslsmith_add_u32(u_input.c, 1u);
    var var_4 = firstTrailingBit(_wgslsmith_sub_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 4294967295u, 6590u, var_3) & vec4<u32>(4294967295u, u_input.a.x, 0u, u_input.c), vec4<u32>(var_3, 1u, 4294967295u, 14248u)), vec4<u32>(u_input.a.x, 0u, ~1u, u_input.c)));
    return ~var_4.x == _wgslsmith_add_u32(~min(_wgslsmith_mult_u32(var_4.x, 37856u), u_input.a.x), ~(0u | u_input.c));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_4(true, Struct_3(global1.ywz), false, countOneBits(~(~(vec4<u32>(1u, global0.b.x, 36346u, global0.b.x) ^ vec4<u32>(global0.b.x, 0u, global0.b.x, global0.b.x)))), 98206i | max(_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.b.x, u_input.b.x), u_input.b.x, _wgslsmith_mult_i32(-22446i, -25099i)), u_input.b.x));
    var var_1 = Struct_3(arg_1.wyy);
    global3 = array<vec2<u32>, 7>();
    global0 = Struct_2(global0.a, ~(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(28828u, 0u, 0u), var_0.d.xyw))), Struct_1(vec2<bool>(false, func_3(vec4<f32>(1429f, -249f, 530f, 849f), u_input.b))));
    var var_2 = true;
    return select(!vec3<bool>(any(vec2<bool>(global0.c.a.x, true)), select(!global0.a.a.x, true, true), false), select(vec3<bool>(any(select(vec3<bool>(global0.c.a.x, arg_1.x, true), vec3<bool>(arg_0.x, false, true), vec3<bool>(true, false, var_1.a.x))), !any(vec3<bool>(global1.x, var_0.c, arg_1.x)), true), select(!select(vec3<bool>(true, var_1.a.x, var_1.a.x), arg_0.zzw, var_1.a.x), select(vec3<bool>(false, false, false), !arg_1.wyw, vec3<bool>(false, false, false)), true), select(select(select(arg_0.zzy, arg_0.yww, global2[_wgslsmith_index_u32(52889u, 3u)]), select(vec3<bool>(true, false, true), vec3<bool>(global0.c.a.x, false, global0.c.a.x), false), true), !select(global2[_wgslsmith_index_u32(0u, 3u)], arg_0.wwx, global1.xyy), arg_0.zyz)), global1.yww);
}

fn func_1(arg_0: vec3<u32>, arg_1: bool, arg_2: f32) -> Struct_3 {
    return Struct_3(!vec3<bool>(false, any(func_2(vec4<bool>(global1.x, false, false, false), vec4<bool>(arg_1, global0.a.a.x, true, global1.x))), func_2(select(vec4<bool>(false, false, global1.x, false), vec4<bool>(arg_1, false, true, global1.x), vec4<bool>(false, global1.x, true, false)), !vec4<bool>(global0.c.a.x, true, true, arg_1)).x));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(~countOneBits(global0.b.x), 21438u, ~(~43964u))), ~((~vec3<u32>(u_input.c, 40771u, 3522u) >> (vec3<u32>(global0.b.x, 4294967295u, 1u) % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_u32(global0.b, ~global0.b)));
    var var_1 = global0.a;
    return Struct_3(global1.wzz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x < 0u;
    let var_1 = 33164u;
    var var_2 = func_4(-1000f, global1.x && global1.x, func_1(global0.b, min(u_input.b.x, u_input.b.x) >= ~1i, 396f));
    var var_3 = Struct_2(global0.c, global0.b, Struct_1(vec2<bool>((u_input.b.x << (var_1 % 32u)) >= -u_input.b.x, true && (global1.x | false))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_1, 2940u));
}

