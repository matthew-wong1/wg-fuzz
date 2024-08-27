struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
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

var<private> global0: Struct_1;

var<private> global1: array<i32, 15>;

var<private> global2: bool = false;

var<private> global3: vec2<bool> = vec2<bool>(false, false);

var<private> global4: vec4<bool>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> bool {
    var var_0 = 0u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1587f, 678f, 379f)))))));
    var var_2 = ~((countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b, u_input.c.x, global0.b, arg_0), vec4<i32>(-20544i, u_input.c.x, 11335i, 1429i), vec4<i32>(arg_1.b, global1[_wgslsmith_index_u32(global0.c.x, 15u)], -2147483647i, 2147483647i))) << ((global0.c << (_wgslsmith_div_vec4_u32(global0.c, global0.d) % vec4<u32>(32u))) % vec4<u32>(32u))) | -(~vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(63830u, 15u)], -2147483647i, -11902i)));
    global2 = all(!select(select(select(vec2<bool>(false, false), arg_1.a.yw, global4.x), arg_1.a.zy, !global3.x), global0.a.xz, all(!vec2<bool>(true, arg_1.a.x))));
    let var_3 = any(!(!(!global0.a.wz)));
    return !(!any(!global0.a)) || false;
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    global0 = arg_2;
    global1 = array<i32, 15>();
    var var_0 = Struct_1(vec4<bool>(true, arg_1.a.x, func_3(_wgslsmith_mod_i32(27314i, 1i), Struct_1(!vec4<bool>(false, arg_2.a.x, false, false), global0.b & 52585i, vec4<u32>(1u, arg_3.c.x, 1u, arg_3.d.x) ^ arg_3.d, min(vec4<u32>(global0.d.x, arg_2.c.x, 44648u, 32699u), arg_2.d)), u_input.b), any(!vec2<bool>(global3.x, arg_2.a.x))), 2147483647i, arg_1.d, firstLeadingBit(select(abs(reverseBits(arg_2.d)), vec4<u32>(u_input.a.x, global0.c.x, 0u, ~arg_0.x), arg_2.a)));
    global2 = global0.a.x;
    var var_1 = Struct_1(!vec4<bool>(arg_3.a.x, arg_2.a.x, false, any(select(arg_1.a.zzx, global4.www, vec3<bool>(arg_2.a.x, var_0.a.x, false)))), 1i, var_0.d, countOneBits(abs(arg_3.d)));
    return ~firstLeadingBit(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(arg_2.b, -1i, arg_1.b, -2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_1.b, -1i, -3517i, 1i), vec4<i32>(-19539i, 1065i, 37874i, -50352i))), _wgslsmith_mult_vec4_i32(vec4<i32>(global0.b, var_1.b, arg_2.b, var_0.b), -vec4<i32>(arg_2.b, -83534i, -2147483647i, arg_1.b))));
}

fn func_1() -> i32 {
    global4 = global0.a;
    global1 = array<i32, 15>();
    let var_0 = _wgslsmith_add_vec4_i32(-select(vec4<i32>(-global0.b, global1[_wgslsmith_index_u32(min(u_input.a.x, 30310u), 15u)], -2147483647i, _wgslsmith_dot_vec2_i32(u_input.c, u_input.c)), _wgslsmith_div_vec4_i32(-vec4<i32>(-1i, -27619i, -2434i, -26623i), vec4<i32>(u_input.c.x, 0i, -289i, -19505i)), global0.b == func_2(global0.d.xy, Struct_1(vec4<bool>(global0.a.x, global3.x, global0.a.x, true), -3970i, global0.d, global0.c), Struct_1(global0.a, 2147483647i, vec4<u32>(2977u, 4294967295u, 97191u, 4294967295u), global0.d), Struct_1(vec4<bool>(false, global4.x, global3.x, global4.x), global0.b, global0.c, vec4<u32>(u_input.a.x, 91223u, 61668u, 1u)))), -vec4<i32>(abs(-20353i), ~global1[_wgslsmith_index_u32(u_input.b, 15u)], u_input.c.x << (global0.d.x % 32u), -global1[_wgslsmith_index_u32(u_input.a.x, 15u)]) >> (global0.c % vec4<u32>(32u)));
    let var_1 = var_0.wz;
    let var_2 = Struct_1(!global0.a, _wgslsmith_sub_i32(55662i, -7509i), ~(~(~(~global0.d))), ~firstLeadingBit(_wgslsmith_mult_vec4_u32(global0.c, vec4<u32>(22728u, 0u, 35113u, 69820u))));
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec4_i32(~(~vec4<i32>(-43520i, global1[_wgslsmith_index_u32(0u, 15u)], 35408i, u_input.c.x)), -vec4<i32>(func_1(), 0i, 0i, i32(-1i) * -10419i));
    let var_1 = ~reverseBits(u_input.a.x);
    global0 = Struct_1(vec4<bool>(global3.x, !(!global3.x), true, all(!select(global0.a, vec4<bool>(global0.a.x, true, global4.x, global3.x), vec4<bool>(global0.a.x, global4.x, true, global4.x)))), -15843i, firstTrailingBit(vec4<u32>(~_wgslsmith_mod_u32(global0.c.x, 69618u), u_input.b, 4294967295u, 50052u)), global0.d);
    var var_2 = Struct_1(!select(!global0.a, vec4<bool>(global0.a.x, true, var_0.x <= var_0.x, true), select(select(global0.a, global0.a, global0.a), vec4<bool>(true, false, global3.x, global3.x), global3.x)), global0.b, vec4<u32>(~94509u, 35705u, ~0u, _wgslsmith_mult_u32(46787u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, var_1, 1u, 64920u), vec4<u32>(0u, global0.d.x, u_input.a.x, u_input.b)))), vec4<u32>(~_wgslsmith_dot_vec3_u32(select(vec3<u32>(global0.c.x, 1u, u_input.b), global0.c.yyy, vec3<bool>(global4.x, global0.a.x, global3.x)), vec3<u32>(1u, var_1, global0.c.x)), _wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.a.zx), ~max(global0.d.wz, global0.c.zw)), var_1, select(u_input.b, var_1, all(global0.a))));
    global4 = vec4<bool>(func_3(global1[_wgslsmith_index_u32(38573u, 15u)], Struct_1(!(!vec4<bool>(var_2.a.x, true, false, global0.a.x)), u_input.c.x, global0.c, ~global0.c ^ ~global0.c), global0.c.x), all(!select(select(vec4<bool>(global3.x, true, true, false), global0.a, true), vec4<bool>(global0.a.x, global0.a.x, var_2.a.x, true), global4.x)), func_3(-25096i, Struct_1(vec4<bool>(false, false, 13238i < global1[_wgslsmith_index_u32(var_1, 15u)], var_2.a.x), -30723i, global0.c, ~countOneBits(vec4<u32>(40425u, 1u, 4294967295u, var_1))), _wgslsmith_div_u32(0u, global0.c.x)), global4.x);
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

