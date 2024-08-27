struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7> = array<i32, 7>(-9270i, 1i, -1i, 0i, 36862i, 0i, -1i);

var<private> global1: i32;

var<private> global2: array<i32, 6>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: Struct_4) -> f32 {
    global2 = array<i32, 6>();
    var var_0 = u_input.b.yx;
    let var_1 = ~arg_0.a.a.x;
    let var_2 = reverseBits(_wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(arg_0.c.b, ~8899u) << (select(~1u, ~u_input.b.x, true) % 32u)));
    var_0 = vec2<u32>(var_0.x, 1u);
    return 690f;
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_mod_u32(abs(57368u), u_input.b.x);
    var var_1 = _wgslsmith_mult_vec3_u32(vec3<u32>(1u, firstTrailingBit(17204u), u_input.a.x), _wgslsmith_add_vec3_u32(select(select(~u_input.a.wyz, countOneBits(vec3<u32>(u_input.b.x, var_0, u_input.a.x)), vec3<bool>(false, true, true)), vec3<u32>(_wgslsmith_clamp_u32(12321u, 4294967295u, 47964u), ~u_input.b.x, var_0), _wgslsmith_f_op_f32(func_3(Struct_4(Struct_3(vec2<i32>(u_input.c, 2147483647i), Struct_1(34271u, 107220u, true, u_input.c), Struct_1(31089u, 4294967295u, true, global0[_wgslsmith_index_u32(var_0, 7u)]), Struct_2(vec2<bool>(true, true))), vec3<f32>(677f, 271f, 1257f), Struct_1(0u, u_input.b.x, false, global2[_wgslsmith_index_u32(19991u, 6u)]), vec3<bool>(false, false, false), Struct_2(vec2<bool>(false, true))), vec2<f32>(-481f, -346f), Struct_4(Struct_3(vec2<i32>(global2[_wgslsmith_index_u32(var_0, 6u)], 1i), Struct_1(var_0, u_input.a.x, true, -2147483647i), Struct_1(0u, 1u, false, global0[_wgslsmith_index_u32(var_0, 7u)]), Struct_2(vec2<bool>(false, false))), vec3<f32>(216f, -1537f, 439f), Struct_1(var_0, u_input.b.x, false, -20938i), vec3<bool>(false, false, true), Struct_2(vec2<bool>(false, true))))) >= -227f), u_input.a.yzw));
    let var_2 = Struct_4(Struct_3(select(vec2<i32>(-50053i, 1i), ~vec2<i32>(global0[_wgslsmith_index_u32(520u, 7u)], -10258i), true) | -select(vec2<i32>(-1i, global2[_wgslsmith_index_u32(var_0, 6u)]), vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], u_input.c), vec2<bool>(false, false)), Struct_1(var_0, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, var_0) & u_input.b.xxx, min(vec3<u32>(var_1.x, 0u, var_1.x), u_input.a.zyz)), all(vec4<bool>(true, false, true, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.c, global2[_wgslsmith_index_u32(434u, 6u)]), abs(vec3<i32>(0i, -20215i, u_input.c)))), Struct_1(1u, 1u, any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), select(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], global2[_wgslsmith_index_u32(var_1.x, 6u)]), 1i, true)), Struct_2(vec2<bool>(any(vec4<bool>(true, true, false, true)), true))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), Struct_1(1u, select(~4294967295u, 4294967295u, false) & firstLeadingBit(1u), true, _wgslsmith_div_i32(firstLeadingBit(-1i), select(select(global0[_wgslsmith_index_u32(4294967295u, 7u)], -3605i, false), 1i, true))), select(vec3<bool>(select(all(vec2<bool>(false, true)), true, true), false, false), vec3<bool>(true, false, !(var_1.x < 4294967295u)), !((-4745i << (var_1.x % 32u)) > _wgslsmith_mod_i32(2147483647i, u_input.c))), Struct_2(vec2<bool>(any(vec2<bool>(true, true)), true)));
    var_1 = vec3<u32>(_wgslsmith_add_u32(~(~1u), max(var_0, ~_wgslsmith_sub_u32(var_2.a.b.a, var_0))), 1u, 1u);
    let var_3 = ~(-_wgslsmith_dot_vec2_i32(select(select(var_2.a.a, vec2<i32>(var_2.a.a.x, 2147483647i), var_2.e.a), max(var_2.a.a, vec2<i32>(-2147483647i, -30299i)), any(vec4<bool>(false, true, false, var_2.d.x))), abs(vec2<i32>(global0[_wgslsmith_index_u32(0u, 7u)], 0i) << (vec2<u32>(46733u, u_input.b.x) % vec2<u32>(32u)))));
    return 1u;
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: u32, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(~arg_2, arg_2), min(~(arg_2 << (u_input.a.x % 32u)) & ~(~u_input.b.x), max(_wgslsmith_div_u32(~1u, _wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(32252u, 4294967295u))), 1u)), func_2());
    let var_1 = true;
    global2 = array<i32, 6>();
    global2 = array<i32, 6>();
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, 0u), 6u)];
    return Struct_2(select(!select(select(vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1), var_1), !vec2<bool>(true, var_1), select(vec2<bool>(false, var_1), vec2<bool>(var_1, var_1), vec2<bool>(var_1, true))), !vec2<bool>(true, any(vec2<bool>(var_1, true))), vec2<bool>(!var_1, !(false | var_1))));
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_3 {
    var var_0 = ~(-2147483647i);
    let var_1 = ~u_input.b.x;
    var var_2 = arg_1;
    return Struct_3(vec2<i32>(u_input.c, _wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(var_1, 6u)], u_input.c, u_input.c, -2147483647i), vec4<i32>(2283i, u_input.c, global0[_wgslsmith_index_u32(10292u, 7u)], global2[_wgslsmith_index_u32(0u, 6u)])), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a.x, 6u)], i32(-1i) * -1i, 13527i, 0i))), Struct_1(40534u, 4294967295u >> (_wgslsmith_mod_u32(~0u, u_input.b.x) % 32u), firstTrailingBit(-72010i) != abs(_wgslsmith_mult_i32(-1i, global2[_wgslsmith_index_u32(var_1, 6u)])), max(global2[_wgslsmith_index_u32(1u, 6u)], abs(global0[_wgslsmith_index_u32(var_1, 7u)])) ^ u_input.c), Struct_1(~20765u, var_1, arg_1.a.x, -9717i), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 7>();
    let var_0 = ~u_input.c <= global0[_wgslsmith_index_u32(4294967295u, 7u)];
    let var_1 = _wgslsmith_add_i32(global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 6u)], _wgslsmith_div_i32(~u_input.c, ~(2147483647i << (u_input.b.x % 32u))));
    let var_2 = func_4(false, func_1(_wgslsmith_clamp_i32(_wgslsmith_add_i32(var_1, abs(-2147483647i)), ~(global0[_wgslsmith_index_u32(u_input.b.x, 7u)] | global2[_wgslsmith_index_u32(24556u, 6u)]), ~(~2147483647i)), u_input.c, u_input.a.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1283f, -1488f, 382f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-483f, 1112f, 618f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-415f, -279f, 574f))))));
    var var_3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(max(firstTrailingBit(u_input.a.xww), vec3<u32>(12921u, u_input.b.x, _wgslsmith_mod_u32(func_2(), var_2.c.b))), -(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, u_input.c, 44469i, u_input.c), min(vec4<i32>(u_input.c, 2147483647i, u_input.c, var_2.b.d), vec4<i32>(0i, 76040i, var_1, global0[_wgslsmith_index_u32(0u, 7u)]))) ^ abs(~vec4<i32>(0i, 8892i, u_input.c, 1i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_2.a.x, -1984i, 19732i, var_2.a.x)), vec4<i32>(global0[_wgslsmith_index_u32(38249u, 7u)], 49757i, var_2.b.d, 53582i)), _wgslsmith_div_i32(30288i, _wgslsmith_div_i32(global0[_wgslsmith_index_u32(var_2.b.b, 7u)], -2147483647i)), var_2.c.d), vec3<i32>(max(_wgslsmith_add_i32(39073i, var_1), abs(-27152i)), 0i, -18481i), ~countOneBits(vec3<i32>(u_input.c, u_input.c, -59946i) & vec3<i32>(-1i, u_input.c, 58233i))), ~vec3<i32>(-var_2.c.d, -var_2.a.x, ~global2[_wgslsmith_index_u32(10021u, 6u)]), var_2.b.a >> ((_wgslsmith_sub_u32(~u_input.a.x, max(var_2.c.b, var_2.b.a)) >> (12644u % 32u)) % 32u));
}

