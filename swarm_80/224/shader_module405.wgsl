struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(1u, 69007u, 1u);

var<private> global1: array<i32, 6>;

var<private> global2: array<vec2<i32>, 24>;

var<private> global3: u32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    global1 = array<i32, 6>();
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -329f));
    var var_2 = Struct_3(Struct_2(-736f, global0.zy, Struct_1(global0.x), _wgslsmith_f_op_f32(var_1 + 1184f)), arg_0, Struct_1(countOneBits(4294967295u)), firstLeadingBit(1i), select(vec4<i32>(u_input.d.x, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.e, arg_0.a), 6u)], u_input.a, _wgslsmith_clamp_i32(-5936i, _wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(0u, 24u)], vec2<i32>(u_input.b, -32681i)), -u_input.a)), (vec4<i32>(u_input.d.x, -2147483647i, -56245i, -7770i) >> (u_input.c % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_i32(~vec4<i32>(-1i, global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(u_input.c.x, 6u)], global1[_wgslsmith_index_u32(arg_1.x, 6u)]), vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 6u)], u_input.b, 24106i), vec4<i32>(u_input.a, u_input.b, global1[_wgslsmith_index_u32(arg_1.x, 6u)], global1[_wgslsmith_index_u32(u_input.e, 6u)]) >> (vec4<u32>(1u, 38310u, 1u, 1u) % vec4<u32>(32u))), vec4<bool>(true, true, false, true & (global1[_wgslsmith_index_u32(4294967295u, 6u)] <= 1i))));
    let var_3 = !(!(!(!select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), false))));
    return ~_wgslsmith_mod_u32(~((61626u ^ arg_0.a) >> (firstLeadingBit(arg_1.x) % 32u)), max(~global0.x, ~abs(u_input.e)));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> bool {
    let var_0 = Struct_2(-726f, ~(~global0.yz), Struct_1(~reverseBits(_wgslsmith_add_u32(76298u, arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f))));
    global0 = u_input.c.yyy;
    global0 = select(vec3<u32>(63861u, ~(_wgslsmith_add_u32(arg_0.a, arg_1) ^ 4294967295u), arg_1), _wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(49369u, 59788u, u_input.c.x), firstTrailingBit(u_input.c.xzy)), reverseBits(u_input.c.yyz)), select(~(~vec3<u32>(52733u, 4294967295u, var_0.c.a)), ~reverseBits(u_input.c.yzx), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false), true))), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))));
    let var_1 = Struct_1(54088u);
    let var_2 = ~(~min(vec2<u32>(4294967295u, ~4294967295u), countOneBits(abs(vec2<u32>(8202u, 4294967295u)))));
    return global0.x == ~(~1u);
}

fn func_5(arg_0: bool) -> bool {
    let var_0 = true;
    global1 = array<i32, 6>();
    global3 = min(~_wgslsmith_mult_u32(_wgslsmith_mult_u32(4294967295u, ~global0.x), abs(4294967295u & global0.x)), firstLeadingBit(_wgslsmith_mult_u32(~(~0u), _wgslsmith_sub_u32(global0.x << (u_input.c.x % 32u), countOneBits(1u)))));
    global0 = ~select(u_input.c.www, select(vec3<u32>(55495u, _wgslsmith_add_u32(global0.x, global0.x), func_3(Struct_1(71637u), vec2<u32>(u_input.c.x, 63556u))), vec3<u32>(u_input.c.x, abs(1u), 1u), select(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, var_0), vec3<bool>(true, true, arg_0)), !vec3<bool>(false, var_0, arg_0), vec3<bool>(var_0, true, true))), !(!arg_0));
    global0 = ~abs(select(~vec3<u32>(68095u, u_input.e, 1u), reverseBits(u_input.c.ywz), false) | u_input.c.yxz);
    return ~(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(126580u, u_input.e, u_input.c.x), 1u)) >= _wgslsmith_div_u32(firstTrailingBit(81213u), ~_wgslsmith_div_u32(4294967295u, u_input.c.x));
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    var var_0 = ~u_input.b;
    var var_1 = func_5(func_4(Struct_1(firstLeadingBit(arg_0.x)), _wgslsmith_sub_u32(func_3(Struct_1(39226u), vec2<u32>(14742u, 1u)) >> (abs(global0.x) % 32u), firstTrailingBit(u_input.c.x & arg_0.x))));
    var_1 = true;
    let var_2 = Struct_3(Struct_2(1000f, reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(global0.x, u_input.e), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, 98959u), global0.yy))), Struct_1(abs(1u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, -455f)) * 205f)))), Struct_1(max(_wgslsmith_mod_u32(~49942u, global0.x), u_input.c.x)), Struct_1(52347u), ~(~(~1i)), firstLeadingBit(_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(global1[_wgslsmith_index_u32(60978u, 6u)], global1[_wgslsmith_index_u32(3169u, 6u)], u_input.d.x, global1[_wgslsmith_index_u32(u_input.e, 6u)])) >> ((u_input.c >> (vec4<u32>(4294967295u, global0.x, global0.x, u_input.e) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(-vec4<i32>(0i, -53585i, 0i, -50241i), vec4<i32>(-2180i, -28207i, u_input.d.x, u_input.d.x)), vec4<i32>(12319i, select(global1[_wgslsmith_index_u32(global0.x, 6u)], 28761i, false), u_input.a & -62547i, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 4129u), 6u)]))));
    let var_3 = var_2;
    return 1u;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> vec4<bool> {
    global2 = array<vec2<i32>, 24>();
    var var_0 = vec2<bool>(true, true);
    let var_1 = _wgslsmith_add_u32(arg_1.c.a, func_2(~u_input.c.zyz) & 27597u);
    let var_2 = arg_1;
    var var_3 = var_2;
    return select(vec4<bool>(false & (firstLeadingBit(u_input.a) < firstTrailingBit(-21091i)), false, all(vec3<bool>(any(vec2<bool>(false, var_0.x)), false || var_0.x, var_0.x && var_0.x)), var_0.x), !select(select(vec4<bool>(var_0.x, var_0.x, true, false), select(vec4<bool>(true, var_0.x, var_0.x, true), vec4<bool>(var_0.x, true, false, false), var_0.x), vec4<bool>(true, true, true, true)), vec4<bool>(true, var_0.x, 13274u > var_2.c.a, var_0.x), select(!vec4<bool>(true, var_0.x, var_0.x, false), select(vec4<bool>(true, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(true, var_0.x, false, true)), !vec4<bool>(var_0.x, true, var_0.x, false))), any(!(!(!vec2<bool>(var_0.x, var_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.e);
    var var_1 = -1i;
    var var_2 = Struct_1(_wgslsmith_dot_vec2_u32(global0.xx & (min(u_input.c.yx, global0.yx) ^ vec2<u32>(101297u, global0.x)), ~u_input.c.zx));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-816f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-762f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1065f, -780f, false))))) + -474f);
    let var_4 = !(!any(func_1(Struct_1(24209u), Struct_2(var_3, global0.xz, Struct_1(global0.x), var_3)))) | any(vec4<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), any(vec2<bool>(true, true)), _wgslsmith_mult_i32(0i, global1[_wgslsmith_index_u32(var_0.a, 6u)]) == 0i, any(vec4<bool>(true, true, true, true))));
    global1 = array<i32, 6>();
    var var_5 = !func_1(Struct_1(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e, u_input.c.x), ~vec2<u32>(35058u, global0.x))), Struct_2(_wgslsmith_f_op_f32(-var_3), vec2<u32>(~0u, ~u_input.c.x), Struct_1(global0.x), 1f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(var_3, var_3, select(!(!var_5.x), !var_5.x, false))), min(u_input.c, u_input.c));
}

