struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(0u, 13683u, 4294967295u, 27857u), vec4<u32>(5697u, 66718u, 0u, 42503u), vec4<u32>(4294967295u, 22993u, 36107u, 32157u), vec4<u32>(104370u, 4294967295u, 25577u, 29316u), vec4<u32>(0u, 4294967295u, 25573u, 86183u), vec4<u32>(26511u, 4294967295u, 73299u, 0u));

var<private> global1: array<f32, 31> = array<f32, 31>(-704f, -234f, -783f, 1673f, -362f, -1353f, 2216f, -454f, 317f, -901f, -746f, 1817f, 2079f, 616f, 1133f, 1000f, 316f, 539f, 847f, -420f, -533f, 1211f, 1303f, -784f, -319f, -1639f, 515f, -787f, -809f, -689f, -1293f);

var<private> global2: array<Struct_2, 24>;

var<private> global3: array<Struct_3, 24> = array<Struct_3, 24>(Struct_3(Struct_1(676f, i32(-2147483648))), Struct_3(Struct_1(285f, i32(-2147483648))), Struct_3(Struct_1(-1000f, -4462i)), Struct_3(Struct_1(-306f, -73784i)), Struct_3(Struct_1(1391f, -22698i)), Struct_3(Struct_1(137f, -1i)), Struct_3(Struct_1(1737f, 20414i)), Struct_3(Struct_1(-306f, -20508i)), Struct_3(Struct_1(-970f, 2147483647i)), Struct_3(Struct_1(-993f, i32(-2147483648))), Struct_3(Struct_1(-476f, 17362i)), Struct_3(Struct_1(1519f, 2147483647i)), Struct_3(Struct_1(-1039f, 1i)), Struct_3(Struct_1(750f, -28808i)), Struct_3(Struct_1(-450f, 0i)), Struct_3(Struct_1(-688f, -86173i)), Struct_3(Struct_1(-1000f, -1i)), Struct_3(Struct_1(-344f, -1i)), Struct_3(Struct_1(656f, i32(-2147483648))), Struct_3(Struct_1(1040f, -6246i)), Struct_3(Struct_1(-576f, -1i)), Struct_3(Struct_1(-179f, -38795i)), Struct_3(Struct_1(202f, -33865i)), Struct_3(Struct_1(943f, -51959i)));

var<private> global4: vec3<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32) -> Struct_3 {
    var var_0 = abs(~u_input.a.x);
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-165f)), _wgslsmith_f_op_f32(-1f))), global1[_wgslsmith_index_u32(1u, 31u)], arg_1), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1, arg_1, global1[_wgslsmith_index_u32(66474u, 31u)]), vec3<f32>(892f, global1[_wgslsmith_index_u32(4294967295u, 31u)], 2559f))), vec3<f32>(arg_1, 326f, global1[_wgslsmith_index_u32(1u, 31u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(419f, -1809f, global1[_wgslsmith_index_u32(u_input.c.x, 31u)]) + vec3<f32>(arg_1, global1[_wgslsmith_index_u32(arg_0.x, 31u)], global1[_wgslsmith_index_u32(arg_0.x, 31u)])) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-896f, -217f, global1[_wgslsmith_index_u32(1u, 31u)]))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1590f, global1[_wgslsmith_index_u32(28469u, 31u)], -231f))))));
    global0 = array<vec4<u32>, 6>();
    var var_2 = ~(~reverseBits(vec3<i32>(u_input.b.x, u_input.b.x, 0i))) >> (_wgslsmith_mult_vec3_u32(reverseBits(~min(vec3<u32>(49388u, 55761u, 15027u), arg_0.zyz)), u_input.d.zwy) % vec3<u32>(32u));
    var var_3 = arg_0;
    return global3[_wgslsmith_index_u32(25546u, 24u)];
}

fn func_1() -> i32 {
    global0 = array<vec4<u32>, 6>();
    let var_0 = func_2(vec4<u32>(1u, 7042u, ~countOneBits(u_input.a.x), ~u_input.d.x), 923f);
    global2 = array<Struct_2, 24>();
    global2 = array<Struct_2, 24>();
    global0 = array<vec4<u32>, 6>();
    return -40776i;
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: i32) -> vec4<i32> {
    global1 = array<f32, 31>();
    var var_0 = func_2(~vec4<u32>(firstLeadingBit(arg_0.a.x), arg_0.a.x, max(arg_1, _wgslsmith_mult_u32(4294967295u, 1u)), ~arg_0.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.a))))).a;
    let var_1 = func_2(vec4<u32>(u_input.d.x, countOneBits(arg_1) | (arg_0.a.x | 66999u), ~_wgslsmith_add_u32(u_input.a.x, arg_1), ~firstTrailingBit(37545u)) >> (_wgslsmith_mult_vec4_u32(~(~vec4<u32>(3850u, 40495u, arg_1, arg_1)), ~u_input.d) % vec4<u32>(32u)), arg_0.b.a).a;
    var var_2 = Struct_3(arg_0.c);
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-627f, global1[_wgslsmith_index_u32(4294967295u, 31u)], arg_0.c.a, -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.a, 1005f, var_0.a) + vec4<f32>(var_2.a.a, 1000f, -604f, var_1.a)))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1392f, var_1.a, var_1.a, 669f), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, arg_0.b.a, var_2.a.a, var_2.a.a) + vec4<f32>(-1345f, -184f, 242f, arg_0.c.a))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, global1[_wgslsmith_index_u32(arg_1, 31u)], 1529f, var_1.a), vec4<f32>(117f, -1129f, 276f, -331f)))))));
    return select(~_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(4093i, -1i), 1i, var_2.a.b, abs(u_input.b.x)), -(~vec4<i32>(var_1.b, -26369i, u_input.b.x, -14447i))), firstTrailingBit(vec4<i32>(var_2.a.b, firstLeadingBit(_wgslsmith_sub_i32(var_0.b, var_1.b)), _wgslsmith_mod_i32(i32(-1i) * -61904i, arg_2), ~(-1i))), global4.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: u32, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = arg_1;
    let var_1 = !(!select(select(select(vec3<bool>(false, global4.x, global4.x), vec3<bool>(global4.x, global4.x, global4.x), false), vec3<bool>(global4.x, global4.x, global4.x), !vec3<bool>(true, global4.x, global4.x)), !select(vec3<bool>(false, global4.x, global4.x), vec3<bool>(global4.x, global4.x, false), vec3<bool>(false, global4.x, true)), vec3<bool>(global4.x, global4.x, all(vec4<bool>(global4.x, global4.x, true, true)))));
    global0 = array<vec4<u32>, 6>();
    var var_2 = global2[_wgslsmith_index_u32(arg_2, 24u)];
    var var_3 = global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 24u)];
    return StorageBuffer(~var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(105f, global1[_wgslsmith_index_u32(var_3.a.x, 31u)], -640f), vec3<f32>(-261f, -398f, -1000f), vec3<bool>(var_1.x, global4.x, global4.x)))))) * vec3<f32>(-623f, 1071f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.b.a))))), _wgslsmith_sub_i32(~13551i ^ _wgslsmith_clamp_i32(arg_0.b, -18196i, arg_0.b), _wgslsmith_div_i32(_wgslsmith_div_i32(arg_0.b, 29207i) | _wgslsmith_add_i32(-48871i, 2147483647i), _wgslsmith_mult_i32(arg_3.b, -2147483647i) >> (var_3.a.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = any(global4.xz);
    let var_1 = Struct_3(Struct_1(global1[_wgslsmith_index_u32(firstLeadingBit(68834u), 31u)], min(u_input.b.x, -u_input.b.x)));
    global3 = array<Struct_3, 24>();
    let var_2 = u_input.a.yz;
    global1 = array<f32, 31>();
    let x = u_input.a;
    s_output = func_4(var_1.a, func_3(global2[_wgslsmith_index_u32(var_2.x, 24u)], u_input.d.x & 61820u, abs(func_1())), u_input.c.x, Struct_1(_wgslsmith_f_op_f32(-var_1.a.a), ~(func_2(global0[_wgslsmith_index_u32(u_input.a.x, 6u)], var_1.a.a).a.b >> ((u_input.a.x & u_input.c.x) % 32u))));
}

