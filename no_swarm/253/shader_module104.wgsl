struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<i32>,
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

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(-1i, vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u), 33710u, vec4<bool>(true, false, false, false)), Struct_1(10146i, vec4<u32>(1u, 1u, 21145u, 26538u), 64061u, vec4<bool>(true, false, true, false)), Struct_1(-39592i, vec4<u32>(28802u, 19893u, 4294967295u, 0u), 4294967295u, vec4<bool>(false, false, true, true)), Struct_1(-66314i, vec4<u32>(53853u, 9504u, 29858u, 0u), 0u, vec4<bool>(false, false, false, true)), Struct_1(0i, vec4<u32>(29747u, 71755u, 4294967295u, 1u), 8385u, vec4<bool>(false, true, true, true)), Struct_1(-20394i, vec4<u32>(16131u, 0u, 4294967295u, 40003u), 51987u, vec4<bool>(true, false, true, true)), Struct_1(39470i, vec4<u32>(27127u, 67444u, 40337u, 27111u), 3089u, vec4<bool>(true, true, true, false)), Struct_1(29253i, vec4<u32>(69432u, 1u, 23512u, 18876u), 0u, vec4<bool>(false, true, true, false)), Struct_1(0i, vec4<u32>(46558u, 27021u, 61046u, 17637u), 32209u, vec4<bool>(true, false, true, false)), Struct_1(-1i, vec4<u32>(1u, 256u, 1u, 4294967295u), 1u, vec4<bool>(false, false, true, false)), Struct_1(-27056i, vec4<u32>(49713u, 4294967295u, 49320u, 38465u), 46481u, vec4<bool>(false, false, false, true)));

var<private> global1: u32;

var<private> global2: array<Struct_1, 31>;

var<private> global3: array<bool, 2> = array<bool, 2>(true, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: vec3<f32>, arg_3: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_0)), -2047f));
    let var_1 = Struct_1(u_input.d.x, ~(vec4<u32>(71096u, 22391u, 4294967295u, 49750u) >> (~vec4<u32>(u_input.b.x, u_input.c.x, u_input.c.x, u_input.b.x) % vec4<u32>(32u))) >> (~(~abs(u_input.c)) % vec4<u32>(32u)), firstLeadingBit(17825u), !(!select(!vec4<bool>(true, global3[_wgslsmith_index_u32(78677u, 2u)], false, true), vec4<bool>(true, true, true, true), any(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], global3[_wgslsmith_index_u32(0u, 2u)], global3[_wgslsmith_index_u32(0u, 2u)], true)))));
    return (4294967295u >> (max(~max(50378u, var_1.c), ~select(1u, u_input.c.x, var_1.d.x)) % 32u)) | 94322u;
}

fn func_2() -> vec4<u32> {
    global0 = array<Struct_1, 11>();
    let var_0 = u_input.a.x;
    global3 = array<bool, 2>();
    var var_1 = vec2<bool>(!(!global3[_wgslsmith_index_u32(~u_input.c.x, 2u)] & !all(vec4<bool>(true, global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(4905u, 2u)], true))), true);
    global0 = array<Struct_1, 11>();
    return vec4<u32>(1u, u_input.c.x, u_input.b.x, firstLeadingBit(~((u_input.c.x | 1u) >> (func_3(-722f, vec2<f32>(550f, 830f), vec3<f32>(995f, 185f, -1020f), -2513i) % 32u))));
}

fn func_1() -> i32 {
    let var_0 = Struct_1(0i, func_2(), u_input.b.x, select(select(!select(vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 2u)], global3[_wgslsmith_index_u32(u_input.b.x, 2u)], true), vec4<bool>(global3[_wgslsmith_index_u32(21206u, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(u_input.c.x, 2u)], global3[_wgslsmith_index_u32(u_input.c.x, 2u)]), false), select(select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 2u)], false, global3[_wgslsmith_index_u32(u_input.c.x, 2u)], false), vec4<bool>(true, true, true, global3[_wgslsmith_index_u32(u_input.c.x, 2u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 2u)], false, false, true)), select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], global3[_wgslsmith_index_u32(u_input.c.x, 2u)], global3[_wgslsmith_index_u32(56294u, 2u)], global3[_wgslsmith_index_u32(73583u, 2u)]), vec4<bool>(false, true, false, global3[_wgslsmith_index_u32(u_input.b.x, 2u)]), vec4<bool>(global3[_wgslsmith_index_u32(14641u, 2u)], global3[_wgslsmith_index_u32(110420u, 2u)], global3[_wgslsmith_index_u32(1u, 2u)], global3[_wgslsmith_index_u32(23980u, 2u)])), vec4<bool>(false, false, false, global3[_wgslsmith_index_u32(1u, 2u)])), select(vec4<bool>(false, global3[_wgslsmith_index_u32(47958u, 2u)], global3[_wgslsmith_index_u32(u_input.b.x, 2u)], global3[_wgslsmith_index_u32(86537u, 2u)]), vec4<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 2u)], false, false, false), vec4<bool>(true, false, global3[_wgslsmith_index_u32(44152u, 2u)], true))), !(!select(vec4<bool>(false, false, global3[_wgslsmith_index_u32(u_input.b.x, 2u)], true), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.c.x, 2u)], global3[_wgslsmith_index_u32(4294967295u, 2u)], true), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(u_input.b.x, 2u)], false, global3[_wgslsmith_index_u32(252u, 2u)]))), select(select(!vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 2u)], global3[_wgslsmith_index_u32(69651u, 2u)], false, true), !vec4<bool>(false, true, global3[_wgslsmith_index_u32(0u, 2u)], global3[_wgslsmith_index_u32(0u, 2u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.c.x, 2u)], global3[_wgslsmith_index_u32(0u, 2u)], true)), vec4<bool>(all(vec3<bool>(global3[_wgslsmith_index_u32(0u, 2u)], global3[_wgslsmith_index_u32(u_input.b.x, 2u)], true)), global3[_wgslsmith_index_u32(select(u_input.c.x, u_input.c.x, false), 2u)], any(vec4<bool>(false, true, global3[_wgslsmith_index_u32(u_input.b.x, 2u)], true)), false || global3[_wgslsmith_index_u32(2965u, 2u)]), !(!global3[_wgslsmith_index_u32(1607u, 2u)]))));
    var var_1 = countOneBits(~vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(4294967295u, 0u), _wgslsmith_mod_u32(99682u, u_input.c.x)), min(func_3(994f, vec2<f32>(1000f, 164f), vec3<f32>(170f, -472f, 607f), var_0.a), 7511u), ~max(40607u, u_input.c.x)));
    global3 = array<bool, 2>();
    global0 = array<Struct_1, 11>();
    var var_2 = all(vec4<bool>(!(!(!global3[_wgslsmith_index_u32(var_0.b.x, 2u)])), true, !any(vec2<bool>(var_0.d.x, false)), !any(!vec4<bool>(true, false, var_0.d.x, global3[_wgslsmith_index_u32(1u, 2u)]))));
    return -1631i;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(2147483647i, _wgslsmith_div_vec4_u32(vec4<u32>(~20811u, _wgslsmith_div_u32(u_input.b.x, u_input.b.x), 47487u, firstTrailingBit(4294967295u)), u_input.c) >> ((u_input.c | _wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, 656u, 89032u, u_input.b.x)), vec4<u32>(u_input.c.x, 1u, u_input.b.x, 1u))) % vec4<u32>(32u)), 5170u, !(!(!(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], true, false, global3[_wgslsmith_index_u32(u_input.b.x, 2u)])))));
    var var_1 = Struct_1(reverseBits(~firstLeadingBit(49496i >> (var_0.b.x % 32u))), vec4<u32>(~(~u_input.b.x) & (_wgslsmith_dot_vec3_u32(var_0.b.wzx, u_input.c.wxx) & 6979u), 4294967295u, firstTrailingBit(var_0.c), _wgslsmith_div_u32(~var_0.b.x, 1u) | ~4294967295u), u_input.c.x, vec4<bool>(true, global3[_wgslsmith_index_u32(~select(16573u, select(var_0.c, u_input.b.x, var_0.d.x), !var_0.d.x), 2u)], !var_0.d.x, false));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -456f));
    let var_3 = 0i;
    global0 = array<Struct_1, 11>();
    return Struct_1(-select(_wgslsmith_mult_i32(-2147483647i & arg_1.x, 2147483647i >> (var_0.b.x % 32u)), u_input.d.x, all(select(var_0.d.yww, var_1.d.wwz, var_1.d.xwy))), abs(var_1.b), var_1.b.x, var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) ^ ~vec2<i32>(u_input.d.x, 0i), -u_input.d.zy, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -5357i, -21367i, u_input.a.x), vec4<i32>(-33924i, u_input.d.x, u_input.d.x, u_input.a.x)), min(u_input.a.x, u_input.a.x))));
    var var_1 = Struct_1(~countOneBits(var_0.x) >> (0u % 32u), u_input.c, 22949u, !select(vec4<bool>(global3[_wgslsmith_index_u32(u_input.b.x, 2u)], global3[_wgslsmith_index_u32(u_input.b.x, 2u)], any(vec3<bool>(true, false, global3[_wgslsmith_index_u32(u_input.c.x, 2u)])), global3[_wgslsmith_index_u32(~u_input.c.x, 2u)]), !vec4<bool>(false, false, global3[_wgslsmith_index_u32(u_input.c.x, 2u)], global3[_wgslsmith_index_u32(33811u, 2u)]), true));
    var var_2 = func_4(68666i, _wgslsmith_mult_vec4_i32(vec4<i32>(~func_1(), ~_wgslsmith_mod_i32(u_input.d.x, var_1.a), select(-var_0.x, var_0.x, any(vec2<bool>(false, false))), u_input.a.x), min(u_input.d, vec4<i32>(-3253i, _wgslsmith_dot_vec3_i32(u_input.d.yzy, vec3<i32>(u_input.a.x, u_input.a.x, -1i)), var_1.a, -var_0.x))));
    var var_3 = global3[_wgslsmith_index_u32(0u, 2u)];
    let var_4 = !global3[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2823f, -180f) + vec2<f32>(445f, 831f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(107f, 914f) + vec2<f32>(-1000f, -328f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1311f, -686f, -297f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -728f, -531f))), -56523i), 2u)] & true;
    var_2 = global2[_wgslsmith_index_u32(var_2.c, 31u)];
    let var_5 = ~abs(_wgslsmith_add_vec2_u32(u_input.b, var_2.b.ww));
    global1 = ~select(u_input.b.x, _wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.c.x, u_input.c.x, 77075u) | var_2.b.xxy), vec3<u32>(1u, 25567u, 29381u) ^ abs(var_1.b.wwz)), true);
    let x = u_input.a;
    s_output = StorageBuffer(-firstTrailingBit(var_0.x ^ 1i));
}

