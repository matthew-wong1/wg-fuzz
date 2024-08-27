struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: Struct_3,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(false, true, true, true, true, true, true, true, true, false, false, false, true, false, true, true, true, true, false, true, false, true, false, false);

var<private> global1: vec2<u32> = vec2<u32>(1u, 27196u);

var<private> global2: Struct_1 = Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 66046u));

var<private> global3: u32;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_3) -> u32 {
    var var_0 = max(global2.a.x, 73357u);
    var var_1 = 316f;
    let var_2 = Struct_2(vec3<i32>(~(~u_input.c), _wgslsmith_div_i32(~(-2147483647i), 1930i), -20251i), Struct_1(abs(~u_input.d) | vec4<u32>(global2.a.x, ~arg_3.b.a.x, global1.x, 1u)), Struct_1(~_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a.x, u_input.b.x, arg_3.b.a.x, 4294967295u), global2.a, arg_3.b.a), arg_3.b.a)), Struct_1(u_input.d));
    global2 = arg_0;
    let var_3 = Struct_5(_wgslsmith_clamp_vec4_i32(select(-vec4<i32>(arg_1, arg_1, -1i, u_input.a), countOneBits(vec4<i32>(var_2.a.x, 2147483647i, 6588i, 0i)), all(select(arg_3.c.yy, arg_3.c.xz, vec2<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)])))), vec4<i32>(arg_1, _wgslsmith_div_i32(~u_input.a, ~u_input.a), arg_1, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(-1i, -33508i)), vec2<i32>(59230i, -16297i))), ~(-vec4<i32>(u_input.a, arg_1, var_2.a.x, u_input.a))), arg_1, arg_3, vec2<bool>(global0[_wgslsmith_index_u32(~(~(~global2.a.x)), 24u)], !all(vec4<bool>(true, true, global0[_wgslsmith_index_u32(var_2.c.a.x, 24u)], global0[_wgslsmith_index_u32(global1.x, 24u)]))));
    return arg_3.b.a.x;
}

fn func_2(arg_0: vec3<u32>) -> Struct_4 {
    global1 = u_input.d.xz;
    let var_0 = -u_input.c > ~select(u_input.a, -(~12070i), true);
    global0 = array<bool, 24>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(775f)));
    var var_2 = select(select(vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~33007u, func_3(Struct_1(vec4<u32>(444u, global1.x, u_input.b.x, 41493u)), 0i, vec2<f32>(-954f, 545f), Struct_3(-2064f, Struct_1(global2.a), vec3<bool>(global0[_wgslsmith_index_u32(0u, 24u)], var_0, true)))), 24u)], false), vec2<bool>(true, !var_0), all(!select(vec2<bool>(false, var_0), vec2<bool>(true, false), var_0))), vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.x), abs(arg_0.yx)) ^ 29744u, 24u)], true), vec2<bool>(true, false));
    return Struct_4(Struct_1(u_input.b), Struct_3(-337f, Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.d, global2.a, vec4<u32>(u_input.b.x, 0u, 4294967295u, 0u)), vec4<u32>(global2.a.x, global1.x, 4294967295u, 64806u))), select(select(!vec3<bool>(true, var_0, true), !vec3<bool>(var_2.x, true, false), select(global0[_wgslsmith_index_u32(88087u, 24u)], true, false)), !vec3<bool>(var_0, var_0, false), select(!vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 24u)], var_2.x, false), !vec3<bool>(var_2.x, true, var_0), true))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1873f, -547f)) * _wgslsmith_f_op_f32(floor(-2586f))) * 879f), Struct_1(u_input.b & select(vec4<u32>(0u, 15110u, arg_0.x, arg_0.x), vec4<u32>(u_input.d.x, 7785u, global1.x, u_input.b.x), global0[_wgslsmith_index_u32(u_input.b.x, 24u)])), select(select(select(vec3<bool>(true, false, var_2.x), vec3<bool>(var_2.x, global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(u_input.d.x, 24u)]), vec3<bool>(var_0, true, global0[_wgslsmith_index_u32(23448u, 24u)])), select(vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.x, 24u)], true), vec3<bool>(true, global0[_wgslsmith_index_u32(8429u, 24u)], var_2.x), vec3<bool>(var_2.x, global0[_wgslsmith_index_u32(arg_0.x, 24u)], var_0)), !global0[_wgslsmith_index_u32(global2.a.x, 24u)]), select(vec3<bool>(var_0, var_0, global0[_wgslsmith_index_u32(global2.a.x, 24u)]), vec3<bool>(true, false, var_0), 17758u != arg_0.x), var_2.x)));
}

fn func_1(arg_0: f32) -> vec4<u32> {
    var var_0 = func_2(~countOneBits(vec3<u32>(~u_input.b.x, ~4294967295u, 4294967295u)));
    global2 = Struct_1(vec4<u32>(65302u, _wgslsmith_mod_u32(global1.x, global2.a.x), global1.x, _wgslsmith_clamp_u32(var_0.a.a.x | 1u, ~u_input.d.x, _wgslsmith_sub_u32(abs(2594u), select(64842u, 34064u, global0[_wgslsmith_index_u32(u_input.b.x, 24u)])))));
    var var_1 = vec4<i32>(-1i) * -(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 2147483647i, u_input.a, -2147483647i), vec4<i32>(2147483647i, -3026i, 25669i, u_input.c)), vec4<i32>(u_input.c, 0i, 5247i, u_input.a)) << (~global2.a % vec4<u32>(32u)));
    let var_2 = vec4<f32>(-452f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(555f * arg_0) + _wgslsmith_f_op_f32(round(-726f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(-arg_0)), arg_0);
    var var_3 = _wgslsmith_mult_i32(-49222i, _wgslsmith_mult_i32(var_1.x, -29218i));
    return ~firstLeadingBit(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(13224u, 4294967295u, u_input.b.x, u_input.d.x) >> (vec4<u32>(29175u, 0u, var_0.b.b.a.x, global1.x) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(global2.a, vec4<u32>(7204u, var_0.a.a.x, 4294967295u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_mult_vec4_u32(min(func_1(1037f), _wgslsmith_mod_vec4_u32(global2.a, global2.a)), vec4<u32>(u_input.d.x, 39051u, u_input.b.x, 1u) >> (_wgslsmith_mod_vec4_u32(global2.a, u_input.d) % vec4<u32>(32u))) ^ (~vec4<u32>(40618u, global1.x, global2.a.x, 21930u) << ((~u_input.d >> (vec4<u32>(u_input.b.x, 11381u, u_input.d.x, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))));
    let var_0 = global2.a.x;
    var var_1 = global2.a;
    var var_2 = ~vec4<i32>(u_input.a, u_input.c, select(31061i, u_input.c, global0[_wgslsmith_index_u32(firstLeadingBit(~u_input.b.x), 24u)]), 1i);
    let var_3 = Struct_3(_wgslsmith_div_f32(965f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -931f))), func_2(~vec3<u32>(4294967295u, ~1u, _wgslsmith_mult_u32(global2.a.x, u_input.d.x))).c.b, !func_2(min(global2.a.yyx, vec3<u32>(19361u, global2.a.x, 4294967295u))).c.c);
    global2 = var_3.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, -1326f, -732f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1306f, var_3.a, -326f))))))));
}

