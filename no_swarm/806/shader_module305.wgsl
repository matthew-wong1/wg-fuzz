struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(520f, 2248f, -185f), vec3<f32>(-1000f, 240f, -527f), vec3<f32>(-872f, 251f, -902f));

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<i32, 14>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> bool {
    global0 = array<vec3<f32>, 3>();
    global1 = arg_0.c;
    global2 = arg_0.c;
    let var_0 = 2147483647i;
    global0 = array<vec3<f32>, 3>();
    return !arg_0.a.b;
}

fn func_2() -> f32 {
    var var_0 = Struct_4(-vec2<i32>(-_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(u_input.b, 14u)], -2147483647i), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(global3[_wgslsmith_index_u32(u_input.a.x, 14u)], global3[_wgslsmith_index_u32(0u, 14u)]), _wgslsmith_div_i32(-51133i, global3[_wgslsmith_index_u32(global2.a, 14u)]), 1i)));
    var var_1 = max(~(-(~vec3<i32>(global3[_wgslsmith_index_u32(1u, 14u)], -2147483647i, global3[_wgslsmith_index_u32(1u, 14u)]))), -(-abs(vec3<i32>(2147483647i, -1i, global3[_wgslsmith_index_u32(45734u, 14u)])) & vec3<i32>(~global3[_wgslsmith_index_u32(global1.a, 14u)], select(var_0.a.x, var_0.a.x, true), 0i)));
    var var_2 = !(!func_3(Struct_3(Struct_2(true, false, false, -1000f), true, Struct_1(10447u, global1.b, global1.c)), ~global2.a));
    var var_3 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.a.x, global2.a, global1.a), vec4<u32>(u_input.c, global1.a, 20116u, u_input.b), vec4<u32>(global1.a, 48071u, 130839u, 20857u)) << (abs(vec4<u32>(global2.b.x, 18370u, global2.a, 4294967295u)) % vec4<u32>(32u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, global1.a, 84101u, 0u), vec4<u32>(global2.a, global1.a, 5164u, 40559u)), any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), true))), min(select(vec4<u32>(80812u, u_input.b, global2.a, global2.a) ^ vec4<u32>(4294967295u, 20825u, 9978u, 1u), vec4<u32>(u_input.b, 6913u, global1.a, u_input.c), vec4<bool>(true, true, true, true)), ~firstLeadingBit(vec4<u32>(global2.b.x, 27002u, 78835u, 0u)))), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global1.a, global1.b.x, global2.a, 23686u), vec4<u32>(u_input.a.x, global2.b.x, global2.b.x, 18134u))) ^ vec4<u32>(0u, abs(_wgslsmith_add_u32(54220u, global1.a)), 4294967295u, u_input.b));
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global1.c.x)))), global1.c.x, all(vec2<bool>(true, true))))))));
    return global1.c.x;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(-global1.c.x));
    global1 = Struct_1(global1.a, ~vec2<u32>(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(77088u, u_input.b, 4294967295u), u_input.a)), _wgslsmith_mod_u32(abs(global1.b.x), 69131u)), arg_0.yx);
    var var_1 = Struct_4(arg_1 << (_wgslsmith_sub_vec2_u32(global2.b, vec2<u32>(~60198u, ~global1.a)) % vec2<u32>(32u)));
    var var_2 = vec2<bool>(all(!(!select(vec2<bool>(true, true), vec2<bool>(true, false), true))), !(!func_3(Struct_3(Struct_2(true, true, false, 706f), false, Struct_1(1u, global2.b, global2.c)), 1u)) != !all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false))));
    let var_3 = Struct_4(max(~(-(~vec2<i32>(-2147483647i, var_1.a.x))), _wgslsmith_clamp_vec2_i32(arg_1, _wgslsmith_add_vec2_i32(vec2<i32>(arg_1.x, 49334i), _wgslsmith_mod_vec2_i32(var_1.a, vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 14u)], 4716i))), vec2<i32>(-34111i, _wgslsmith_mult_i32(global3[_wgslsmith_index_u32(28410u, 14u)], 0i)))));
    return Struct_3(Struct_2(all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), all(vec3<bool>(true, global3[_wgslsmith_index_u32(global2.b.x, 14u)] != 2147483647i, true)), var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(889f * _wgslsmith_f_op_f32(ceil(arg_0.x))), _wgslsmith_div_f32(_wgslsmith_div_f32(var_0, -736f), _wgslsmith_f_op_f32(trunc(1866f))))), false, Struct_1(_wgslsmith_mod_u32(~40121u, 1u), ~vec2<u32>(68327u, ~global1.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, global2.c.x, -1000f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(18376u, 3u)], vec3<f32>(-756f, 738f, 644f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.c.x, global2.c.x, global1.c.x))))), vec2<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(~vec4<i32>(global3[_wgslsmith_index_u32(u_input.b, 14u)], 2147483647i, -1i, 41104i) & ~vec4<i32>(1i, -2147483647i, global3[_wgslsmith_index_u32(global2.b.x, 14u)], global3[_wgslsmith_index_u32(global1.a, 14u)]), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, -2147483647i, global3[_wgslsmith_index_u32(39765u, 14u)]), vec4<i32>(global3[_wgslsmith_index_u32(0u, 14u)], global3[_wgslsmith_index_u32(global2.a, 14u)], -32549i, -2147483647i), vec4<i32>(global3[_wgslsmith_index_u32(global2.b.x, 14u)], 0i, global3[_wgslsmith_index_u32(global1.b.x, 14u)], -1i))))));
    global1 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, global2.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(229f + -195f))))), -(vec2<i32>(abs(global3[_wgslsmith_index_u32(var_0.c.a, 14u)]), max(-5658i, 0i)) >> (vec2<u32>(u_input.c, u_input.b >> (47u % 32u)) % vec2<u32>(32u)))).c;
    let var_1 = _wgslsmith_f_op_vec2_f32(global1.c - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1600f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x))));
    global2 = func_1(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(global1.b.x, 3u)]), ~min(vec2<i32>(global3[_wgslsmith_index_u32(0u, 14u)], -21829i), countOneBits(firstTrailingBit(vec2<i32>(global3[_wgslsmith_index_u32(0u, 14u)], -38729i))))).c;
    var_0 = Struct_3(func_1(vec3<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.c.x - global1.c.x))), global1.c.x), vec2<i32>(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(1u, 14u)], 0i, 22545i), vec3<i32>(-1i, -2147483647i, -2147483647i)), -2147483647i))).a, true, func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(~1u, 3u)]) * global0[_wgslsmith_index_u32(0u, 3u)]), vec2<i32>(max(_wgslsmith_dot_vec2_i32(vec2<i32>(15128i, global3[_wgslsmith_index_u32(0u, 14u)]), vec2<i32>(global3[_wgslsmith_index_u32(global2.a, 14u)], -74963i)), _wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(9885u, 14u)], 1i, global3[_wgslsmith_index_u32(var_0.c.b.x, 14u)], 1i), vec4<i32>(global3[_wgslsmith_index_u32(1u, 14u)], -2147483647i, global3[_wgslsmith_index_u32(u_input.c, 14u)], global3[_wgslsmith_index_u32(40226u, 14u)]))), max(global3[_wgslsmith_index_u32(global1.b.x, 14u)], global3[_wgslsmith_index_u32(global1.b.x, 14u)]))).c);
    let var_2 = func_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(global2.a, 1u, var_0.c.a, global1.a), vec4<u32>(1840u, 1u, u_input.c, u_input.c)), 3u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1070f, global1.c.x)))) - vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_1.x)), _wgslsmith_mod_vec2_i32(countOneBits(-vec2<i32>(0i, 12582i)), vec2<i32>(-(i32(-1i) * -26326i), -345i))).c;
    global1 = func_1(_wgslsmith_f_op_vec3_f32(exp2(global0[_wgslsmith_index_u32(~(~(global1.a & var_2.a)), 3u)])), vec2<i32>(global3[_wgslsmith_index_u32(~4294967295u, 14u)], _wgslsmith_clamp_i32(0i, i32(-1i) * -1i, _wgslsmith_mod_i32(-2147483647i, global3[_wgslsmith_index_u32(global2.a, 14u)])) >> (select(var_0.c.a << (32630u % 32u), select(0u, 87140u, true), true) % 32u))).c;
    var var_3 = 0u << (_wgslsmith_dot_vec4_u32(countOneBits(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 55376u, 1u, var_0.c.b.x), vec4<u32>(var_0.c.b.x, 95153u, var_0.c.a, 42282u), vec4<u32>(1u, 0u, 4294967295u, 1u)))), _wgslsmith_mult_vec4_u32(select(~vec4<u32>(global2.a, 4294967295u, u_input.a.x, 0u), ~vec4<u32>(61726u, u_input.c, 37749u, 0u), var_0.a.b | var_0.a.b), max(vec4<u32>(var_0.c.b.x, 4294967295u, global1.a, 4294967295u), ~vec4<u32>(u_input.c, var_0.c.b.x, 1u, 4294967295u)))) % 32u);
    let var_4 = _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(61687u, 14u)], 7364i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_div_f32(global1.c.x, var_0.a.d), global2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -521f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1427f, var_2.c.x))))), var_2.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-714f, var_2.c.x, false))), false))), vec4<i32>(-var_4, var_4 | var_4, ~global3[_wgslsmith_index_u32(var_0.c.a, 14u)], 9825i));
}

