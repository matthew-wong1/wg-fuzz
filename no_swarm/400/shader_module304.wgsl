struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 24> = array<vec4<i32>, 24>(vec4<i32>(i32(-2147483648), 1i, 48276i, -23077i), vec4<i32>(-13052i, -19842i, 55285i, 2147483647i), vec4<i32>(2147483647i, 0i, 14052i, -1i), vec4<i32>(-3727i, 2952i, 0i, 38001i), vec4<i32>(0i, 22552i, 17756i, 6710i), vec4<i32>(-33535i, 0i, -57464i, 692i), vec4<i32>(0i, 0i, -81410i, 1i), vec4<i32>(-2858i, -1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-43528i, 42575i, -20651i, -1i), vec4<i32>(28303i, -1i, 2147483647i, 31875i), vec4<i32>(13396i, -72597i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, 2147483647i, -1i, 0i), vec4<i32>(0i, i32(-2147483648), i32(-2147483648), 62265i), vec4<i32>(31625i, -4701i, 2147483647i, 1i), vec4<i32>(-37965i, 19863i, -1i, -1i), vec4<i32>(2147483647i, 2147483647i, 27292i, -1i), vec4<i32>(2147483647i, i32(-2147483648), -2837i, 6763i), vec4<i32>(1i, 1i, 23180i, -1i), vec4<i32>(32551i, i32(-2147483648), 20688i, 20085i), vec4<i32>(2147483647i, -58623i, i32(-2147483648), i32(-2147483648)), vec4<i32>(-7229i, 1957i, -54825i, 2147483647i), vec4<i32>(35017i, i32(-2147483648), 1i, 1i), vec4<i32>(1i, -1i, 8008i, 2147483647i), vec4<i32>(2147483647i, 1i, 2147483647i, i32(-2147483648)));

var<private> global1: vec3<u32> = vec3<u32>(73061u, 53038u, 53384u);

var<private> global2: array<i32, 14>;

var<private> global3: i32 = 1i;

var<private> global4: i32 = 41769i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(true);
    global0 = array<vec4<i32>, 24>();
    let var_1 = vec4<bool>(all(!select(!vec2<bool>(var_0.a, true), vec2<bool>(true, true), any(vec4<bool>(false, var_0.a, true, true)))), true, var_0.a, true);
    global4 = -global2[_wgslsmith_index_u32(30226u, 14u)];
    global3 = -1i;
    return arg_1;
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: Struct_2) -> bool {
    global3 = ~max(~(~1i), _wgslsmith_clamp_i32(-2147483647i, abs(-global2[_wgslsmith_index_u32(0u, 14u)]), countOneBits(11723i)));
    global1 = vec3<u32>(109950u, arg_3.a, _wgslsmith_dot_vec4_u32(vec4<u32>(~51554u << (_wgslsmith_add_u32(31038u, arg_3.a) % 32u), arg_0.x, ~(arg_3.a ^ 1u), firstLeadingBit(abs(4294967295u))), abs(vec4<u32>(~28397u, 1u, countOneBits(4294967295u), 1u))));
    var var_0 = arg_1;
    let var_1 = all(select(!(!arg_1.e.zzy), vec3<bool>(true, !var_0.b, true), select(!arg_1.e.zwx, !vec3<bool>(arg_1.c, true, true), true))) & any(select(!select(var_0.e, arg_1.e, var_0.b), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, var_0.e.x, true, true), var_0.e, vec4<bool>(false, true, false, var_0.b)), all(vec2<bool>(false, true))), true));
    var_0 = Struct_3(func_2(13726u, var_0.a), arg_2.x >= -841f, !var_0.c, vec2<bool>(true, false), select(!select(var_0.e, select(var_0.e, var_0.e, vec4<bool>(var_0.d.x, true, var_0.c, false)), true), var_0.e, !all(var_0.e.yx)));
    return any(!(!var_0.e.yxw));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> vec4<i32> {
    var var_0 = !vec2<bool>(arg_1.b, arg_1.b);
    var var_1 = arg_1.a.a;
    global3 = global2[_wgslsmith_index_u32(countOneBits(arg_1.a.a), 14u)];
    let var_2 = ~arg_0.a;
    global4 = ~2147483647i;
    return abs(firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(32559i, global2[_wgslsmith_index_u32(81067u, 14u)], 1i, -2147483647i), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, global2[_wgslsmith_index_u32(var_2, 14u)], global2[_wgslsmith_index_u32(var_2, 14u)], -2147483647i), global0[_wgslsmith_index_u32(var_2, 24u)]))) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(global1.x, global1.x), arg_1.a.a >> (global1.x % 32u), _wgslsmith_sub_u32(arg_0.a, global1.x), ~0u), vec4<u32>(var_2, 123959u, global1.x, max(67070u, 26681u)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a, 49584u, 0u, var_2), vec4<u32>(68477u, 1u, 0u, var_2)))) % vec4<u32>(32u)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<u32>) -> Struct_3 {
    var var_0 = func_4(func_2(abs(arg_1.x), Struct_2(firstTrailingBit(arg_1.x))), Struct_3(Struct_2(~global1.x), select(true, any(vec4<bool>(true, true, true, true)), select(-6117i >= global2[_wgslsmith_index_u32(39452u, 14u)], true, true)), _wgslsmith_mult_i32(1i, reverseBits(-18454i)) != ~_wgslsmith_div_i32(u_input.b, u_input.a), !vec2<bool>(false, func_3(arg_1.xy, Struct_3(arg_0, false, true, vec2<bool>(false, true), vec4<bool>(false, false, false, true)), vec3<f32>(878f, 1478f, -458f), Struct_2(arg_0.a))), vec4<bool>(true, true, true, true)));
    global2 = array<i32, 14>();
    global1 = _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a, _wgslsmith_mult_u32(reverseBits(arg_0.a), 13166u), ~(~(arg_2.x ^ arg_2.x))), vec3<u32>(global1.x, select(arg_0.a, arg_1.x, true), arg_2.x));
    var var_1 = 408f;
    let var_2 = select(vec3<bool>(any(select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(false, false), select(true, true, true))), false, true), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), false), true), select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), vec3<bool>(false, true, false), arg_1.x >= 0u)), select(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, any(vec4<bool>(true, false, false, false)), true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), true)), true));
    return Struct_3(arg_0, any(var_2), any(!vec4<bool>(true, true, true, arg_2.x != 42465u)), var_2.xx, !vec4<bool>(all(vec3<bool>(true, true, true)), var_2.x, true | (false & var_2.x), true));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = ~vec4<u32>(arg_1.a, max(~_wgslsmith_dot_vec2_u32(vec2<u32>(6667u, 0u), vec2<u32>(66486u, 83118u)), arg_1.a), ~(~select(arg_0.a.a, global1.x, arg_0.c)), ~4553u);
    let var_1 = vec3<bool>(func_3(_wgslsmith_clamp_vec2_u32(global1.xz, global1.xz, vec2<u32>(arg_1.a, global1.x)) & ~global1.xx, arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-752f, -243f, 1000f))) - _wgslsmith_div_vec3_f32(vec3<f32>(1748f, -150f, 440f), vec3<f32>(-576f, 607f, 1040f))), Struct_2(5716u)) | true, true, true);
    global0 = array<vec4<i32>, 24>();
    global3 = -((i32(-1i) * -500i) & (-6638i | func_4(func_2(4209u, arg_1), Struct_3(Struct_2(var_0.x), arg_0.d.x, false, vec2<bool>(true, true), arg_0.e)).x));
    var var_2 = -532f;
    return !arg_0.e;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec4<bool>(true, !any(vec4<bool>(false, true, true, false)), any(vec4<bool>(true, true, true, true)), all(vec4<bool>(false, true, true, true))), select(vec4<bool>(false, true, true, true), vec4<bool>(global1.x < global1.x, true, false, true), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false))), true), !vec4<bool>(select(any(vec3<bool>(true, false, false)), false, all(vec2<bool>(false, false))), false, true, true), !func_5(func_1(Struct_2(global1.x), vec4<u32>(global1.x, 7247u, 4294967295u, 0u) ^ vec4<u32>(29899u, global1.x, 79500u, 0u), ~vec4<u32>(global1.x, 4294967295u, 0u, 84886u)), func_1(func_2(global1.x, Struct_2(0u)), vec4<u32>(0u, 0u, global1.x, global1.x) ^ vec4<u32>(1u, 26365u, global1.x, 4294967295u), abs(vec4<u32>(global1.x, global1.x, global1.x, global1.x))).a));
    global4 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global1.x, _wgslsmith_add_u32(global1.x >> (global1.x % 32u), 10734u), global1.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(firstLeadingBit(global1.x), reverseBits(global1.x), ~33506u), vec3<u32>(4294967295u >> (global1.x % 32u), _wgslsmith_sub_u32(1u, global1.x), 10419u), ~max(vec3<u32>(global1.x, global1.x, 8130u), vec3<u32>(global1.x, 110280u, 13405u)))), ~vec3<u32>(min(1u, global1.x), ~1u, global1.x)), 14u)];
    let var_1 = !func_5(func_1(Struct_2(~global1.x), vec4<u32>(6750u, global1.x, _wgslsmith_sub_u32(global1.x, 4294967295u), func_2(global1.x, Struct_2(global1.x)).a), _wgslsmith_div_vec4_u32(vec4<u32>(global1.x, 4294967295u, global1.x, 4294967295u), vec4<u32>(106968u, 0u, 4294967295u, global1.x))), Struct_2(~4294967295u)).xw;
    var var_2 = Struct_2(4294967295u);
    var var_3 = ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, var_2.a, global1.x) & vec3<u32>(1u, var_2.a, 4294967295u), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a, var_2.a, 4294967295u), vec3<u32>(global1.x, global1.x, 41353u)), ~global1.x, global1.x)));
    let var_4 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1419f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-228f + 742f))), _wgslsmith_f_op_f32(f32(-1f) * -682f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1088f, 1809f)) * _wgslsmith_f_op_f32(1000f + -1098f)))), _wgslsmith_dot_vec3_i32(select(select(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -2147483647i, u_input.b), vec3<i32>(global2[_wgslsmith_index_u32(18277u, 14u)], 24468i, global2[_wgslsmith_index_u32(92426u, 14u)])), _wgslsmith_mod_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(32920u, 14u)], global2[_wgslsmith_index_u32(var_3.x, 14u)], u_input.a), vec3<i32>(-14139i, global2[_wgslsmith_index_u32(global1.x, 14u)], u_input.a)), !vec3<bool>(var_4, var_0.x, var_0.x)), select(~vec3<i32>(0i, global2[_wgslsmith_index_u32(55327u, 14u)], 0i), max(vec3<i32>(-44571i, 2147483647i, -14008i), vec3<i32>(u_input.a, 51954i, -1i)), vec3<bool>(false, var_4, false)), var_0.xxx), _wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b, 0i, global2[_wgslsmith_index_u32(34850u, 14u)]), select(vec3<i32>(global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(global1.x, 14u)], global2[_wgslsmith_index_u32(0u, 14u)]), vec3<i32>(u_input.a, global2[_wgslsmith_index_u32(24984u, 14u)], -34355i), vec3<bool>(false, var_1.x, var_0.x))) ^ vec3<i32>(u_input.b, u_input.b, u_input.b)), vec3<i32>(13799i, -_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-2147483647i, u_input.a)), vec2<i32>(60152i, 0i)), -abs(~u_input.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1803f, -973f, 1396f, 1000f) + vec4<f32>(-1000f, -340f, -469f, 316f)) - vec4<f32>(-498f, _wgslsmith_f_op_f32(-688f - -1488f), 682f, _wgslsmith_f_op_f32(max(871f, 117f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(-910f, -759f, -730f, 590f), vec4<f32>(1540f, -1415f, -1224f, -178f))))), ~(~min(~141991u, 57610u)));
}

