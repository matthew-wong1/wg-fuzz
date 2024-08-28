struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-25596i, -1i, -10993i);

var<private> global1: bool = false;

var<private> global2: array<i32, 24> = array<i32, 24>(-45834i, -2181i, i32(-2147483648), -5642i, 10253i, 1i, 1i, 0i, -1i, 48121i, 14259i, -7545i, 4158i, -15281i, -1i, -1i, 1i, 24162i, i32(-2147483648), 20562i, 0i, 48207i, 7224i, 15497i);

var<private> global3: array<Struct_1, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    global0 = -(countOneBits(vec3<i32>(global0.x, firstLeadingBit(u_input.a.x), global0.x)) << (select(abs(~vec3<u32>(4294967295u, u_input.b, u_input.b)), (vec3<u32>(u_input.b, 1u, u_input.b) >> (vec3<u32>(1u, 4294967295u, 38229u) % vec3<u32>(32u))) | ~vec3<u32>(u_input.b, 31499u, u_input.b), !all(vec3<bool>(true, false, false))) % vec3<u32>(32u)));
    global2 = array<i32, 24>();
    global0 = reverseBits(reverseBits(select(u_input.a.wxy | (vec3<i32>(global0.x, 1i, global0.x) >> (vec3<u32>(u_input.b, 43059u, u_input.b) % vec3<u32>(32u))), select(vec3<i32>(1i, global0.x, global0.x), -vec3<i32>(-29188i, u_input.a.x, 1i), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))))));
    global0 = ~(-u_input.a.wzw);
    global1 = (28815i & u_input.a.x) != global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(u_input.b, 0u, u_input.b)), ~(~vec3<u32>(u_input.b, 10538u, 0u))), vec3<u32>(41299u << (u_input.b % 32u), u_input.b >> (u_input.b % 32u), u_input.b) | ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 20366u, u_input.b), vec3<u32>(u_input.b, 0u, 40229u))), 24u)];
    return 1u >> (select(0u, u_input.b, true) % 32u);
}

fn func_2(arg_0: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_2(!(!vec4<bool>(true, u_input.b <= u_input.b, 1u <= u_input.b, true)));
    global3 = array<Struct_1, 7>();
    var var_1 = vec3<u32>(~min(func_3(), 0u), _wgslsmith_mod_u32(4294967295u, u_input.b), ~u_input.b);
    var var_2 = Struct_1(u_input.a.yzx, _wgslsmith_mult_vec4_u32(~abs(vec4<u32>(u_input.b, var_1.x, 0u, 43566u)), ~vec4<u32>(u_input.b, var_1.x, 21847u, 4294967295u) << (vec4<u32>(4294967295u, 0u, 1u, var_1.x) % vec4<u32>(32u))) >> (max(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.x, u_input.b, u_input.b, 28507u), vec4<u32>(u_input.b, u_input.b, var_1.x, 3197u), vec4<u32>(75217u, var_1.x, 14922u, 35938u)), _wgslsmith_add_vec4_u32(abs(vec4<u32>(78095u, 4294967295u, u_input.b, 10968u)), countOneBits(vec4<u32>(var_1.x, u_input.b, 4294967295u, 25571u)))) % vec4<u32>(32u)));
    var var_3 = !any(var_0.a.zww);
    return var_0.a.wxx;
}

fn func_4(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = global3[_wgslsmith_index_u32(~1u, 7u)];
    var var_1 = select(arg_0, vec3<bool>(true, !all(select(vec2<bool>(true, true), arg_0.zz, vec2<bool>(true, arg_0.x))), all(select(vec2<bool>(arg_0.x, arg_0.x), vec2<bool>(true, arg_0.x), !vec2<bool>(arg_0.x, arg_0.x)))), true);
    global2 = array<i32, 24>();
    var var_2 = -576f;
    var var_3 = Struct_2(select(vec4<bool>(false, (i32(-1i) * -2147483647i) != reverseBits(global2[_wgslsmith_index_u32(u_input.b, 24u)]), !var_1.x, all(arg_0)), vec4<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(true, arg_0.x, var_1.x)), all(func_2(vec3<f32>(890f, 718f, 1801f)).zx), arg_0.x), select(select(select(vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(false, arg_0.x, false, var_1.x), vec4<bool>(false, arg_0.x, false, arg_0.x)), select(vec4<bool>(false, var_1.x, arg_0.x, false), vec4<bool>(false, false, false, var_1.x), vec4<bool>(false, var_1.x, true, false)), select(vec4<bool>(var_1.x, true, false, true), vec4<bool>(arg_0.x, arg_0.x, false, var_1.x), false)), select(select(vec4<bool>(arg_0.x, arg_0.x, false, true), vec4<bool>(false, arg_0.x, var_1.x, true), true), vec4<bool>(true, true, true, false), false | arg_0.x), _wgslsmith_f_op_f32(trunc(-1784f)) <= _wgslsmith_f_op_f32(sign(-309f)))));
    return Struct_2(var_3.a);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: vec3<i32>) -> vec4<u32> {
    global1 = ~(-abs(arg_2.x)) < countOneBits(global0.x);
    let var_0 = func_4(select(!vec3<bool>(any(vec4<bool>(false, true, true, true)), arg_1.x != arg_1.x, false), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), func_2(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(sign(arg_0))))));
    global2 = array<i32, 24>();
    global1 = true;
    let var_1 = ~vec4<u32>(min(u_input.b, _wgslsmith_mod_u32(40513u, 71910u)) | 0u, firstLeadingBit(u_input.b), _wgslsmith_dot_vec2_u32((vec2<u32>(1u, u_input.b) ^ vec2<u32>(1u, 23833u)) ^ abs(vec2<u32>(4294967295u, u_input.b)), firstLeadingBit(vec2<u32>(u_input.b, 56201u))), ~(~(~0u)));
    return _wgslsmith_sub_vec4_u32(abs(~(~(~var_1))), vec4<u32>(1u, var_1.x, u_input.b, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(func_1(-1184f, vec2<i32>(u_input.a.x, -2147483647i), ~vec3<i32>(-8217i, 17032i, global0.x)), ~(~vec4<u32>(u_input.b, 1u, 23726u, u_input.b))), countOneBits(firstLeadingBit(vec4<u32>(4294967295u, 59159u, u_input.b, u_input.b))) >> (min(~vec4<u32>(29441u, 4294967295u, 48922u, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b, 53695u, 4344u), vec4<u32>(u_input.b, 80377u, 1u, u_input.b))) % vec4<u32>(32u))), select(_wgslsmith_mod_vec4_u32(select(_wgslsmith_sub_vec4_u32(vec4<u32>(7697u, u_input.b, u_input.b, u_input.b), vec4<u32>(143592u, u_input.b, u_input.b, 50613u)), ~vec4<u32>(u_input.b, 783u, 18804u, 27110u), true), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 26336u, u_input.b, 72716u), abs(vec4<u32>(16461u, 25534u, 0u, u_input.b)))), func_1(_wgslsmith_f_op_f32(1f + 313f), u_input.a.zy, _wgslsmith_add_vec3_i32(u_input.a.zzy, vec3<i32>(global0.x, global2[_wgslsmith_index_u32(4294967295u, 24u)], -1i))), false), vec4<u32>(func_1(339f, u_input.a.xx, u_input.a.xwy).x, 4294967295u, _wgslsmith_sub_u32(abs(u_input.b), ~_wgslsmith_add_u32(1u, 74873u)), 1625u));
    let var_1 = vec2<u32>(func_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1657f)))), -(~vec2<i32>(u_input.a.x, -1i)), _wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a.xwz | vec3<i32>(2147483647i, global0.x, -10359i), _wgslsmith_div_vec3_i32(u_input.a.wxw, vec3<i32>(2147483647i, 1i, 45456i))), vec3<i32>(-global0.x, u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -6727i, global0.x, global0.x), vec4<i32>(1i, global2[_wgslsmith_index_u32(u_input.b, 24u)], -9959i, 0i))), u_input.a.wyw)).x, abs(u_input.b));
    let var_2 = 53252u;
    global3 = array<Struct_1, 7>();
    var var_3 = reverseBits(u_input.a);
    var var_4 = vec4<i32>(firstLeadingBit(-(var_3.x >> (var_1.x % 32u))), -1i, _wgslsmith_mult_i32(-21162i, countOneBits(~u_input.a.x)), u_input.a.x) | _wgslsmith_mod_vec4_i32(~max(u_input.a, u_input.a), ~abs(u_input.a));
    var var_5 = Struct_2(vec4<bool>(false, !(firstLeadingBit(var_3.x) <= 1i), !(-var_4.x <= ~u_input.a.x), any(func_4(vec3<bool>(true, true, true)).a.wwy)));
    global0 = var_3.ywy;
    global3 = array<Struct_1, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -489f), _wgslsmith_f_op_f32(sign(-503f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), reverseBits(62284i), ~abs(_wgslsmith_mod_i32(~(-19612i), global2[_wgslsmith_index_u32(~var_1.x, 24u)])), vec2<f32>(-1000f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2459f, 423f)), 1000f))), 0i);
}

