struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
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

var<private> global0: vec2<f32> = vec2<f32>(418f, -895f);

var<private> global1: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

var<private> global2: array<f32, 10>;

var<private> global3: Struct_1 = Struct_1(vec4<i32>(-1167i, 5375i, -11350i, i32(-2147483648)), true, vec4<f32>(-2289f, -1202f, -1811f, -1095f), vec4<u32>(73142u, 4294967295u, 0u, 1u));

var<private> global4: vec3<f32> = vec3<f32>(-847f, -746f, 904f);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec4<i32>) -> i32 {
    var var_0 = Struct_2(arg_0);
    global3 = arg_1;
    global0 = global3.c.xx;
    let var_1 = vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(max(~arg_1.d.www, vec3<u32>(global3.d.x, u_input.a.x, global3.d.x)), vec3<u32>(reverseBits(116705u), 71959u, 4294967295u))), ~u_input.c.x);
    global0 = _wgslsmith_f_op_vec2_f32(select(arg_0.c.yx, arg_1.c.zw, !select(!vec2<bool>(global3.b, arg_0.b), vec2<bool>(true, arg_0.b), !(!vec2<bool>(true, global3.b)))));
    return ~(-_wgslsmith_clamp_i32(min(arg_0.a.x, _wgslsmith_div_i32(global3.a.x, -99i)), arg_3.x, -28577i));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_3(all(select(global1[_wgslsmith_index_u32(global3.d.x, 11u)], select(global1[_wgslsmith_index_u32(11466u, 11u)], select(vec3<bool>(false, false, global3.b), global1[_wgslsmith_index_u32(u_input.c.x, 11u)], global3.b), !global1[_wgslsmith_index_u32(global3.d.x, 11u)]), false)), Struct_2(Struct_1(vec4<i32>(global3.a.x, 15652i, ~(-1i), global3.a.x), false, vec4<f32>(global3.c.x, _wgslsmith_f_op_f32(f32(-1f) * -240f), -1395f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 10u)])), global3.d)));
    var var_1 = var_0.b.a.d;
    let var_2 = -func_3(var_0.b.a, Struct_1(-_wgslsmith_mult_vec4_i32(global3.a, var_0.b.a.a), var_0.b.a.b, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1255f, global0.x, var_0.b.a.c.x, global3.c.x))), var_0.b.a.d), global3.a.wy, var_0.b.a.a);
    let var_3 = ~(vec3<u32>(~(~global3.d.x), _wgslsmith_clamp_u32(0u << (var_1.x % 32u), _wgslsmith_mod_u32(1u, 4294967295u), ~var_1.x), 0u) & select(_wgslsmith_mod_vec3_u32(vec3<u32>(22035u, 3864u, u_input.a.x), ~vec3<u32>(0u, global3.d.x, 40448u)), ~(vec3<u32>(25228u, 1u, u_input.b) >> (var_1.xwz % vec3<u32>(32u))), !vec3<bool>(arg_0.x, var_0.a, true)));
    global1 = array<vec3<bool>, 11>();
    return Struct_1(_wgslsmith_mod_vec4_i32(var_0.b.a.a, -global3.a), _wgslsmith_sub_u32(~var_0.b.a.d.x ^ firstLeadingBit(var_3.x), ~_wgslsmith_mod_u32(var_1.x, global3.d.x)) == _wgslsmith_mult_u32(var_1.x, _wgslsmith_mod_u32(~u_input.a.x, var_0.b.a.d.x & 5990u)), _wgslsmith_f_op_vec4_f32(min(global3.c, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.b.a.c.x, _wgslsmith_f_op_f32(min(-1228f, global4.x)), _wgslsmith_div_f32(607f, var_0.b.a.c.x), -1000f))))), global3.d);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: vec2<f32>) -> i32 {
    var var_0 = func_2(vec2<bool>(arg_1, arg_2.a.b), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-func_2(vec2<bool>(false, false), vec2<f32>(global2[_wgslsmith_index_u32(54546u, 10u)], arg_3.x)).c.x))), global3.c.x));
    global1 = array<vec3<bool>, 11>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-var_0.c);
    global2 = array<f32, 10>();
    var_0 = arg_2.a;
    return _wgslsmith_sub_i32(-2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(arg_2.a.a, -vec4<i32>(global3.a.x, global3.a.x, -7182i, -29337i)), vec4<i32>(~(-9569i), arg_2.a.a.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(2147483647i, -5254i), -14566i), _wgslsmith_sub_i32(arg_2.a.a.x & 2147483647i, global3.a.x >> (41578u % 32u)))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~5408u, 10u)] + _wgslsmith_f_op_f32(floor(global4.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.c.x)) * _wgslsmith_div_f32(144f, 449f))), global2[_wgslsmith_index_u32(reverseBits(u_input.a.x), 10u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 10u)])))), global4.x));
    let var_1 = ~vec2<i32>(1i, func_4(global3.b, true, Struct_2(func_2(vec2<bool>(true, global3.b), vec2<f32>(global4.x, 713f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-198f, global4.x))))));
    var var_2 = _wgslsmith_f_op_f32(floor(1000f)) <= global4.x;
    global1 = array<vec3<bool>, 11>();
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -180f))))));
    return Struct_2(func_2(select(select(vec2<bool>(global3.b, global3.b), select(vec2<bool>(true, global3.b), vec2<bool>(false, false), vec2<bool>(global3.b, global3.b)), all(vec2<bool>(global3.b, global3.b))), !vec2<bool>(global3.b, global3.b), _wgslsmith_add_i32(var_1.x, 16379i) > _wgslsmith_add_i32(global3.a.x, -2147483647i)), _wgslsmith_f_op_vec2_f32(var_0.zx + global4.xz)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = arg_3.a.b;
    let var_1 = ~_wgslsmith_div_vec2_u32(select(_wgslsmith_sub_vec2_u32(global3.d.xy, vec2<u32>(arg_3.a.d.x, arg_3.a.d.x)), u_input.c, !vec2<bool>(global3.b, false)) << (_wgslsmith_add_vec2_u32(vec2<u32>(arg_3.a.d.x, 4294967295u), global3.d.yy | arg_3.a.d.xz) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a, ~arg_3.a.d.www), 33773u));
    var var_2 = !(!(!(!select(vec2<bool>(global3.b, true), vec2<bool>(true, true), true))));
    global2 = array<f32, 10>();
    var var_3 = Struct_1(vec4<i32>(arg_0.x, _wgslsmith_clamp_i32(global3.a.x, -(~global3.a.x), -61483i), 2147483647i, _wgslsmith_mod_i32(-func_3(arg_3.a, Struct_1(vec4<i32>(arg_3.a.a.x, arg_3.a.a.x, -2147483647i, arg_0.x), arg_3.a.b, vec4<f32>(arg_2.x, arg_2.x, arg_3.a.c.x, 1191f), vec4<u32>(u_input.c.x, 88580u, u_input.a.x, arg_3.a.d.x)), arg_3.a.a.wz, arg_3.a.a), 2147483647i)), select(false, true, !(!var_2.x) || global3.b), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3.a.c)))), _wgslsmith_mod_vec4_u32(select(vec4<u32>(66369u, 1u, 0u, 42989u), global3.d, !vec4<bool>(var_2.x, true, true, global3.b)), _wgslsmith_div_vec4_u32(~global3.d, vec4<u32>(10390u, 19166u, global3.d.x, 4294967295u))) >> (~select(arg_3.a.d, _wgslsmith_mult_vec4_u32(global3.d, vec4<u32>(arg_3.a.d.x, global3.d.x, global3.d.x, global3.d.x)), true && global3.b) % vec4<u32>(32u)));
    return func_2(select(select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, arg_3.a.b, var_3.b, var_3.b)), any(vec3<bool>(var_2.x, false, false))), true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(arg_1.zx * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(-469f, 749f)), _wgslsmith_f_op_f32(640f * 1067f)) * _wgslsmith_f_op_vec2_f32(select(global4.xy, _wgslsmith_f_op_vec2_f32(-var_3.c.yy), arg_1.x != arg_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_div_vec4_i32(firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(global3.a.x, 2147483647i, global3.a.x, 2147483647i), global3.a)), _wgslsmith_clamp_vec4_i32(abs(global3.a) | -global3.a, firstLeadingBit(vec4<i32>(-44586i, -12935i, -11863i, 58325i)), ~global3.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(global3.d.x, 10u)], -1310f, global2[_wgslsmith_index_u32(u_input.c.x, 10u)])) - global3.c.yyw) + vec3<f32>(_wgslsmith_f_op_f32(1597f - global4.x), 409f, 532f))), global3.c.zwx, func_1());
    var var_1 = ~(~1u);
    global2 = array<f32, 10>();
    global0 = vec2<f32>(1554f, global3.c.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 10u)] + 445f));
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.a.x);
}

