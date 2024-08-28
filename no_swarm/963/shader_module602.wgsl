struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<u32>,
    d: vec3<u32>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31>;

var<private> global1: vec3<bool>;

var<private> global2: array<vec2<bool>, 10>;

var<private> global3: array<bool, 22> = array<bool, 22>(false, false, false, false, false, false, true, false, false, false, true, false, true, true, false, true, false, true, true, true, false, true);

var<private> global4: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: i32, arg_3: Struct_4) -> u32 {
    let var_0 = _wgslsmith_mod_vec3_i32((vec3<i32>(-1i) * -(~vec3<i32>(0i, arg_2, 51337i))) >> (global0[_wgslsmith_index_u32(0u, 31u)] % vec3<u32>(32u)), vec3<i32>(-1i) * -(vec3<i32>(arg_0.x, arg_3.a.b, 4868i) & vec3<i32>(arg_2, arg_2, u_input.c.x)));
    let var_1 = arg_3.b.a;
    var var_2 = arg_3;
    global2 = array<vec2<bool>, 10>();
    global0 = array<vec3<u32>, 31>();
    return _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(abs(firstTrailingBit(arg_3.c))), ~var_2.d.xy), (~(var_2.d.zz ^ vec2<u32>(arg_3.c.x, arg_1)) << (firstTrailingBit(~var_2.d.xx) % vec2<u32>(32u))) & firstTrailingBit(var_2.c));
}

fn func_3(arg_0: u32) -> bool {
    global1 = !select(vec3<bool>(true, true, global1.x), !select(select(vec3<bool>(global3[_wgslsmith_index_u32(46866u, 22u)], true, global3[_wgslsmith_index_u32(0u, 22u)]), vec3<bool>(global1.x, false, global3[_wgslsmith_index_u32(arg_0, 22u)]), vec3<bool>(global1.x, global1.x, global3[_wgslsmith_index_u32(4294967295u, 22u)])), vec3<bool>(true, true, true), select(vec3<bool>(false, true, global1.x), vec3<bool>(true, global1.x, global3[_wgslsmith_index_u32(20459u, 22u)]), vec3<bool>(global1.x, global1.x, false))), true);
    global3 = array<bool, 22>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-949f - 1000f) - -634f)));
    var var_1 = arg_0;
    var var_2 = arg_0;
    return all(vec4<bool>(any(vec4<bool>(false, any(vec4<bool>(global3[_wgslsmith_index_u32(22963u, 22u)], true, global1.x, global3[_wgslsmith_index_u32(1u, 22u)])), all(vec3<bool>(global3[_wgslsmith_index_u32(arg_0, 22u)], false, true)), select(true, global1.x, false))), true, true, true));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: Struct_1) -> vec4<bool> {
    global4 = _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 56466u, 0u, 29513u), vec4<u32>(25694u, 4294967295u, 43567u, 63340u), arg_0.c.b.d.x), vec4<u32>(1u, 4294967295u, 1u, 1u)) >> (_wgslsmith_dot_vec3_u32(~global0[_wgslsmith_index_u32(firstLeadingBit(29991u), 31u)], ~max(global0[_wgslsmith_index_u32(21210u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)])) % 32u), 31u)], ~global0[_wgslsmith_index_u32(~0u, 31u)]);
    return !(!(!arg_1));
}

fn func_2() -> Struct_3 {
    let var_0 = firstTrailingBit((vec2<i32>(1i, -1i) ^ -u_input.c) | (vec2<i32>(1i, 1i) ^ -abs(vec2<i32>(u_input.a, 29854i))));
    var var_1 = any(func_4(Struct_3(Struct_1(func_3(0u), true, vec2<i32>(var_0.x, -5336i), global1.zx), var_0.x, Struct_2(Struct_1(global3[_wgslsmith_index_u32(0u, 22u)], false, u_input.b, global1.zx), Struct_1(global1.x, global3[_wgslsmith_index_u32(4294967295u, 22u)], vec2<i32>(-2147483647i, u_input.a), global2[_wgslsmith_index_u32(1u, 10u)]))), vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, countOneBits(4294967295u), countOneBits(27952u)), 22u)], true, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~34493u, ~4294967295u), 22u)], false), Struct_2(Struct_1(global3[_wgslsmith_index_u32(2799u, 22u)] || global3[_wgslsmith_index_u32(15283u, 22u)], any(vec3<bool>(global1.x, false, global3[_wgslsmith_index_u32(58871u, 22u)])), var_0 ^ u_input.c, global2[_wgslsmith_index_u32(~4294967295u, 10u)]), Struct_1(global1.x, true, vec2<i32>(17844i, var_0.x), !vec2<bool>(global3[_wgslsmith_index_u32(0u, 22u)], true))), Struct_1(false, true, var_0, vec2<bool>(global3[_wgslsmith_index_u32(~0u, 22u)], any(vec3<bool>(false, true, global1.x))))));
    global4 = ~(0u & abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(67906u, 4294967295u, 4294967295u, 73726u), firstTrailingBit(vec4<u32>(0u, 53466u, 4294967295u, 71821u)))));
    global0 = array<vec3<u32>, 31>();
    let var_2 = 4294967295u;
    return Struct_3(Struct_1(global3[_wgslsmith_index_u32(13180u ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(var_2, 53353u, var_2, var_2), vec4<u32>(var_2, 1u, 1u, 4294967295u)) | 0u), 22u)], !func_4(Struct_3(Struct_1(true, global3[_wgslsmith_index_u32(var_2, 22u)], u_input.c, vec2<bool>(false, false)), -2147483647i, Struct_2(Struct_1(true, global1.x, vec2<i32>(var_0.x, var_0.x), vec2<bool>(global1.x, false)), Struct_1(true, false, var_0, global2[_wgslsmith_index_u32(4294967295u, 10u)]))), vec4<bool>(false, true, true, global3[_wgslsmith_index_u32(var_2, 22u)]), Struct_2(Struct_1(false, global3[_wgslsmith_index_u32(1u, 22u)], vec2<i32>(var_0.x, 19898i), global1.xy), Struct_1(global1.x, global1.x, u_input.c, vec2<bool>(global1.x, false))), Struct_1(true, false, var_0, vec2<bool>(false, true))).x == all(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 22u)], global3[_wgslsmith_index_u32(4294967295u, 22u)])), u_input.b, vec2<bool>(global1.x, !global3[_wgslsmith_index_u32(var_2, 22u)] != false)), u_input.b.x, Struct_2(Struct_1(global3[_wgslsmith_index_u32(~var_2, 22u)] | any(vec2<bool>(global1.x, false)), all(vec2<bool>(true, global1.x)), vec2<i32>(var_0.x, _wgslsmith_mult_i32(var_0.x, var_0.x)), select(select(vec2<bool>(false, global1.x), global1.yz, vec2<bool>(false, false)), !global2[_wgslsmith_index_u32(var_2, 10u)], !global1.zz)), Struct_1(true && (global1.x && false), global3[_wgslsmith_index_u32(~4294967295u, 22u)], ~u_input.c << (_wgslsmith_mod_vec2_u32(vec2<u32>(var_2, 4294967295u), vec2<u32>(var_2, 26154u)) % vec2<u32>(32u)), global2[_wgslsmith_index_u32(var_2, 10u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 22>();
    global3 = array<bool, 22>();
    global4 = ~(~(_wgslsmith_mod_u32(firstTrailingBit(79129u), 3148u) << (~15391u % 32u)));
    var var_0 = vec3<u32>(9548u, ~(~1u) | _wgslsmith_mult_u32(func_1(_wgslsmith_mod_vec2_i32(u_input.b, vec2<i32>(u_input.d, -2147483647i)), ~4294967295u, 2147483647i, Struct_4(Struct_3(Struct_1(global3[_wgslsmith_index_u32(11057u, 22u)], true, vec2<i32>(-35343i, -2147483647i), global1.zy), u_input.b.x, Struct_2(Struct_1(global1.x, true, u_input.c, global2[_wgslsmith_index_u32(4294967295u, 10u)]), Struct_1(global3[_wgslsmith_index_u32(4294967295u, 22u)], false, vec2<i32>(u_input.d, u_input.c.x), global2[_wgslsmith_index_u32(819u, 10u)]))), Struct_2(Struct_1(false, false, u_input.b, global2[_wgslsmith_index_u32(4294967295u, 10u)]), Struct_1(global1.x, true, vec2<i32>(u_input.d, u_input.c.x), global2[_wgslsmith_index_u32(57014u, 10u)])), vec2<u32>(51843u, 10468u), vec3<u32>(4294967295u, 25308u, 0u), 1u)), firstLeadingBit(select(65170u, 0u, global1.x))), ~firstTrailingBit(20005u));
    global4 = ~(~31813u);
    let var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(1i, countOneBits(_wgslsmith_clamp_vec4_i32(~(-vec4<i32>(2147483647i, -2147483647i, 30097i, u_input.d)), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 12309i, -25324i, var_1.a.c.x), vec4<i32>(-76119i, u_input.d, 2147483647i, u_input.b.x)), vec4<i32>(u_input.d, 0i, var_1.a.c.x, u_input.c.x)), _wgslsmith_div_vec4_i32(vec4<i32>(-26869i, u_input.a, -1613i, -2147483647i), vec4<i32>(var_1.a.c.x, -2147483647i, 55217i, var_1.c.b.c.x)))), u_input.d, -(countOneBits(vec4<i32>(-6469i, -9252i, var_1.b, 0i) >> (vec4<u32>(1u, 4294967295u, var_0.x, var_0.x) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_i32(~vec4<i32>(0i, u_input.a, var_1.c.b.c.x, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(var_1.b, -2147483647i, 0i, var_1.b), vec4<i32>(var_1.b, u_input.c.x, 0i, var_1.a.c.x)))));
}

