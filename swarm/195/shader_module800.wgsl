struct Struct_1 {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(4294967295u, 4294967295u, 46701u), vec3<u32>(4294967295u, 33641u, 1u), vec3<u32>(45879u, 18457u, 0u), vec3<u32>(40540u, 1u, 0u), vec3<u32>(2025u, 25588u, 1u), vec3<u32>(0u, 1u, 15796u), vec3<u32>(0u, 1u, 1721u), vec3<u32>(42032u, 1u, 70634u), vec3<u32>(25852u, 32350u, 0u), vec3<u32>(48254u, 34698u, 47852u), vec3<u32>(100306u, 12021u, 0u), vec3<u32>(82167u, 4294967295u, 1u), vec3<u32>(60916u, 36571u, 4294967295u), vec3<u32>(2434u, 0u, 0u), vec3<u32>(1u, 45284u, 1u), vec3<u32>(0u, 1u, 70593u), vec3<u32>(0u, 45760u, 4294967295u), vec3<u32>(4977u, 1u, 90737u), vec3<u32>(1u, 4294967295u, 4294967295u), vec3<u32>(1135u, 7611u, 4294967295u), vec3<u32>(1u, 1u, 77470u), vec3<u32>(0u, 0u, 1u), vec3<u32>(27488u, 57136u, 0u), vec3<u32>(0u, 28949u, 4294967295u), vec3<u32>(65562u, 24022u, 84391u), vec3<u32>(0u, 9088u, 0u), vec3<u32>(4984u, 0u, 48366u));

var<private> global1: vec3<f32>;

var<private> global2: array<bool, 12>;

var<private> global3: Struct_3;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: f32) -> f32 {
    let var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(19178i, abs(u_input.c.x), -firstLeadingBit(~(-24714i)), u_input.a), -(reverseBits(vec4<i32>(4417i, 46986i, -45151i, -2147483647i) << (u_input.b % vec4<u32>(32u))) ^ ~max(vec4<i32>(1i, -1i, -1i, 7411i), vec4<i32>(u_input.d.x, u_input.d.x, u_input.c.x, 13182i))));
    var var_1 = var_0.x;
    var var_2 = global3.a;
    var var_3 = ~(~_wgslsmith_dot_vec2_u32(u_input.b.wy, ~select(vec2<u32>(arg_0.c.b, 1u), u_input.b.zw, vec2<bool>(true, false))));
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global3.c.wwy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, _wgslsmith_f_op_f32(-global1.x), -1304f))) * arg_1.c.zzz);
    return arg_3;
}

fn func_2(arg_0: i32, arg_1: vec4<bool>) -> Struct_2 {
    let var_0 = select(select(!global2[_wgslsmith_index_u32(4294967295u, 12u)], select(true, true, all(select(vec3<bool>(true, arg_1.x, arg_1.x), arg_1.xyx, arg_1.zxx))), (-3819i << (0u % 32u)) != u_input.d.x), all(vec2<bool>(!(!arg_1.x), true)), true);
    let var_1 = Struct_2(true, _wgslsmith_f_op_f32(-global1.x), Struct_1(firstTrailingBit(~global3.a.c.d), ~27213u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global3.b.x, global3.a.c.c.x), global3.a.c.c), _wgslsmith_div_vec2_f32(vec2<f32>(-715f, global1.x), global1.xy), var_0 != var_0)) + global3.b.yx), global3.a.c.d));
    let var_2 = global3.a.a;
    let var_3 = _wgslsmith_dot_vec4_i32(~vec4<i32>(~2147483647i, -u_input.c.x, ~arg_0, _wgslsmith_div_i32(-45484i, arg_0)), ~_wgslsmith_add_vec4_i32(vec4<i32>(arg_0, 43228i, 32402i, -1i), -vec4<i32>(arg_0, u_input.a, -1779i, u_input.a))) | -1i;
    global1 = _wgslsmith_f_op_vec3_f32(-global3.b.yyy);
    return Struct_2(_wgslsmith_div_u32(4294967295u & u_input.b.x, ~global3.a.c.d) < 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(false, 1120f, Struct_1(4294967295u, u_input.b.x, var_1.c.c, 4294967295u)), Struct_3(Struct_2(global3.a.a, 1476f, global3.a.c), vec4<f32>(1000f, 1206f, 193f, 636f), _wgslsmith_f_op_vec4_f32(-global3.b)), var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.b, -129f, true)) - -1000f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(ceil(var_1.c.c.x))), _wgslsmith_f_op_f32(round(1980f))))), Struct_1(var_1.c.d, 17737u, var_1.c.c, firstLeadingBit(61975u)));
}

fn func_1(arg_0: bool, arg_1: bool) -> vec4<f32> {
    global2 = array<bool, 12>();
    let var_0 = _wgslsmith_mult_i32(-(~2147483647i) | _wgslsmith_sub_i32(u_input.a, 0i), _wgslsmith_div_i32(-(~u_input.c.x) >> (u_input.b.x % 32u), u_input.a));
    let var_1 = Struct_3(func_2(firstTrailingBit(694i) ^ 0i, !select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)], true), vec4<bool>(arg_0, arg_1, arg_1, global3.a.a), global3.a.a), !vec4<bool>(false, false, arg_0, false), !arg_0)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(909f, -2587f, global1.x, global1.x) + global3.c), global3.b))), global3.b);
    let var_2 = Struct_3(global3.a, vec4<f32>(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-261f * _wgslsmith_f_op_f32(global3.b.x - 1454f))), _wgslsmith_f_op_f32(var_1.a.b - _wgslsmith_f_op_f32(floor(-984f))), _wgslsmith_f_op_f32(min(-120f, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(var_1.a.b + 877f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(global3.c, vec4<f32>(global1.x, -570f, global3.a.b, -904f)))), _wgslsmith_f_op_vec4_f32(-var_1.c), !select(vec4<bool>(arg_1, arg_1, true, false), vec4<bool>(global3.a.a, false, arg_1, false), arg_1))))));
    global1 = _wgslsmith_f_op_vec3_f32(-global3.b.zzy);
    return _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1.x, _wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1257f), _wgslsmith_f_op_f32(abs(var_2.a.b))))), vec4<f32>(_wgslsmith_div_f32(-607f, _wgslsmith_f_op_f32(func_3(var_2.a, Struct_3(var_1.a, global3.c, var_1.b), true, var_1.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x * -1456f) + -762f), _wgslsmith_f_op_f32(-288f + _wgslsmith_f_op_f32(func_3(Struct_2(var_2.a.a, 1217f, var_2.a.c), Struct_3(Struct_2(var_2.a.a, var_2.c.x, Struct_1(var_2.a.c.b, 4294967295u, var_2.c.xy, 0u)), var_2.b, var_2.c), global3.a.a, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global3.a, var_2, false, global1.x)))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(var_1.b + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_1.b)))))), !select(!vec4<bool>(arg_1, var_2.a.a, arg_0, false), !(!vec4<bool>(var_2.a.a, arg_1, global3.a.a, global2[_wgslsmith_index_u32(1u, 12u)])), !global2[_wgslsmith_index_u32(1u, 12u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3.b.ywz;
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) * 416f);
    global3 = Struct_3(global3.a, _wgslsmith_f_op_vec4_f32(func_1(global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(min(67144u, 8351u), ~36624u), 12u)], global2[_wgslsmith_index_u32(1u | firstTrailingBit(1u), 12u)])), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(f32(-1f) * -634f)) * global3.c.x), _wgslsmith_f_op_f32(global1.x * -1606f), var_0, -112f));
    let var_1 = select(vec2<bool>(true, (~u_input.b.x <= _wgslsmith_add_u32(1u, global3.a.c.b)) && !global3.a.a), vec2<bool>(global2[_wgslsmith_index_u32(global3.a.c.d, 12u)], global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~reverseBits(u_input.b.x), ~global3.a.c.b, ~(1u << (u_input.b.x % 32u))), 12u)]), all(!(!select(vec3<bool>(true, global3.a.a, true), vec3<bool>(true, global3.a.a, global2[_wgslsmith_index_u32(global3.a.c.d, 12u)]), global2[_wgslsmith_index_u32(u_input.b.x, 12u)]))));
    global2 = array<bool, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(894u));
}

