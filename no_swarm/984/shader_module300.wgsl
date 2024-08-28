struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(21664i, i32(-2147483648), i32(-2147483648), -24802i, -1i, -54998i, 2147483647i, 2147483647i, 2147483647i, -10229i, 23717i, 19055i, -40553i, -70279i, 42754i, 24707i, 2147483647i, 1i, -1i, 61735i, i32(-2147483648), 2147483647i, -1i, 2147483647i, 1914i, 6704i, -1i, -97454i, 37897i);

var<private> global1: vec4<bool>;

var<private> global2: vec4<u32>;

var<private> global3: i32 = 0i;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> vec2<bool> {
    global1 = !select(!(!(!vec4<bool>(false, global1.x, global1.x, global1.x))), !(!select(vec4<bool>(global1.x, false, false, false), vec4<bool>(true, false, true, global1.x), true)), all(global1.zzx));
    global0 = array<i32, 29>();
    var var_0 = vec3<u32>(max(global2.x, global2.x), _wgslsmith_add_u32(20122u, select(countOneBits(_wgslsmith_dot_vec2_u32(global2.wx, vec2<u32>(60548u, global2.x))), global2.x, !any(vec4<bool>(global1.x, global1.x, global1.x, global1.x)))), u_input.a);
    let var_1 = 0u;
    let var_2 = ~(vec4<i32>(global0[_wgslsmith_index_u32(max(8705u, ~1u), 29u)], -1i, ~_wgslsmith_sub_i32(2147483647i, global0[_wgslsmith_index_u32(u_input.a, 29u)]), ~global0[_wgslsmith_index_u32(~u_input.a, 29u)]) >> (_wgslsmith_add_vec4_u32(select(~vec4<u32>(var_1, var_0.x, 87159u, 0u), vec4<u32>(var_1, 66698u, 4294967295u, var_1) ^ vec4<u32>(var_0.x, 1u, 65369u, global2.x), !vec4<bool>(true, true, false, global1.x)), countOneBits(~vec4<u32>(var_0.x, 0u, 10592u, var_1))) % vec4<u32>(32u)));
    return !(!(!global1.zx));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>) -> bool {
    var var_0 = Struct_1(arg_0.x, _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_1.x + arg_1.x))), _wgslsmith_f_op_f32(564f * _wgslsmith_f_op_f32(round(1000f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, global1.x)) - arg_1.x), -1567f, _wgslsmith_f_op_f32(-326f * 1172f))), select(select(!arg_0.xz, !select(vec2<bool>(arg_0.x, global1.x), vec2<bool>(false, arg_0.x), vec2<bool>(true, true)), vec2<bool>(true, false)), global1.zy, select(select(vec2<bool>(false, arg_0.x), arg_0.zy, any(global1.zy)), select(select(vec2<bool>(false, false), vec2<bool>(global1.x, true), arg_0.yx), vec2<bool>(arg_0.x, global1.x), !arg_0.yy), func_3())), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(-_wgslsmith_sub_vec3_i32(vec3<i32>(-27592i, global0[_wgslsmith_index_u32(22458u, 29u)], 12983i), vec3<i32>(-2147483647i, global0[_wgslsmith_index_u32(u_input.a, 29u)], u_input.b)), min(vec3<i32>(2147483647i, 10154i, u_input.c), _wgslsmith_div_vec3_i32(vec3<i32>(-76009i, u_input.c, u_input.b), vec3<i32>(2147483647i, -2147483647i, global0[_wgslsmith_index_u32(18724u, 29u)])))), (-vec3<i32>(global0[_wgslsmith_index_u32(global2.x, 29u)], 43219i, -2147483647i) ^ -vec3<i32>(2147483647i, u_input.b, 2147483647i)) >> (abs(~vec3<u32>(u_input.a, 1u, global2.x)) % vec3<u32>(32u))));
    var var_1 = Struct_2(-43082i, ~abs(~(-29136i)));
    let var_2 = -var_1.a;
    return arg_0.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: Struct_2) -> i32 {
    global0 = array<i32, 29>();
    let var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.b.yz), arg_0.b.zz)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -346f) + _wgslsmith_f_op_f32(select(arg_0.b.x, 1031f, global1.x))), _wgslsmith_f_op_f32(-arg_0.b.x))))));
    global1 = select(!vec4<bool>(true, true, !global1.x, arg_0.c.x), vec4<bool>(arg_0.b.x < var_0.x, func_2(select(global1.yyy, global1.wwz, arg_0.a), var_0) & (_wgslsmith_dot_vec2_u32(global2.yx, vec2<u32>(global2.x, u_input.a)) < countOneBits(u_input.a)), arg_0.c.x, !(!arg_0.c.x && select(true, arg_0.a, false))), vec4<bool>(any(vec4<bool>(true, true, any(vec4<bool>(false, false, arg_0.a, true)), true)), true, true, true));
    let var_1 = vec2<u32>(1u, min(~(~u_input.a), u_input.a));
    var var_2 = !select(select(select(global1.zwx, global1.wyz, select(global1.zxz, vec3<bool>(arg_0.c.x, arg_0.a, true), vec3<bool>(false, true, true))), vec3<bool>(true, true, false), global1.xxx), !(!global1.xwx), select(select(global1.xxy, !global1.zxw, false || global1.x), global1.wxz, any(select(vec4<bool>(true, false, false, global1.x), vec4<bool>(true, global1.x, global1.x, arg_0.c.x), vec4<bool>(global1.x, true, true, arg_0.c.x)))));
    return 2147483647i;
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: Struct_2) -> Struct_1 {
    global2 = vec4<u32>(global2.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u ^ global2.x, ~68718u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), global2.zy), 31159u)), _wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 36267u, 4294967295u, global2.x), vec4<u32>(global2.x, 80589u, 4294967295u, global2.x)), ~vec4<u32>(global2.x, 1u, 1u, u_input.a) ^ ~vec4<u32>(u_input.a, 24473u, 6361u, global2.x))), 1u, _wgslsmith_sub_u32(1u & (_wgslsmith_mult_u32(global2.x, global2.x) ^ global2.x), global2.x));
    global1 = !(!(!(!vec4<bool>(false, true, arg_0, arg_0))));
    global0 = array<i32, 29>();
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-866f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1103f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1496f))), !(!global1.x))))));
    var var_1 = Struct_1(_wgslsmith_mult_u32(~global2.x & global2.x, u_input.a) <= 27716u, vec3<f32>(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-556f * 1175f) * _wgslsmith_f_op_f32(sign(-215f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(803f)), _wgslsmith_f_op_f32(-var_0)), 230f), 416f), global1.ww, _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(26721i, -2147483647i, u_input.c, -1i), vec4<i32>(1i, 7537i, arg_1, arg_1)), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, global2.x), 29u)], 24659i) & abs(-vec3<i32>(arg_2.a, arg_1, global0[_wgslsmith_index_u32(u_input.a, 29u)])), min(~(~vec3<i32>(-1i, -13406i, u_input.b)), -(~vec3<i32>(u_input.c, arg_1, -37677i)))));
    return Struct_1(var_1.a, vec3<f32>(var_1.b.x, var_1.b.x, _wgslsmith_f_op_f32(343f - -1716f)), vec2<bool>(!(-598f <= _wgslsmith_f_op_f32(-var_0)), 26368u >= _wgslsmith_div_u32(global2.x ^ global2.x, 6964u)), var_1.d);
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    global0 = array<i32, 29>();
    var var_0 = Struct_2((arg_0.d.x | (_wgslsmith_dot_vec3_i32(arg_0.d, arg_0.d) | 2836i)) << (18104u % 32u), u_input.c);
    let var_1 = abs(-vec2<i32>(min(u_input.b, _wgslsmith_dot_vec2_i32(arg_0.d.zy, arg_0.d.xy)), 18300i));
    global1 = select(vec4<bool>(any(!vec3<bool>(true, global1.x, arg_0.c.x)), false, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_1) + _wgslsmith_f_op_f32(step(-2041f, arg_0.b.x))) > arg_0.b.x, true), vec4<bool>(false, func_3().x, global1.x, false), select(!(!vec4<bool>(arg_0.c.x, false, true, true)), select(select(!vec4<bool>(global1.x, false, arg_0.a, arg_0.a), !vec4<bool>(arg_0.c.x, global1.x, true, true), !vec4<bool>(true, false, arg_0.c.x, false)), select(vec4<bool>(arg_0.a, false, arg_0.c.x, true), select(vec4<bool>(arg_0.c.x, global1.x, false, arg_0.a), vec4<bool>(true, arg_0.a, arg_0.c.x, false), vec4<bool>(arg_0.c.x, false, arg_0.c.x, false)), true), func_4(u_input.a > 0u, 1i, Struct_2(22213i, var_1.x)).a), vec4<bool>(!global1.x, func_2(vec3<bool>(false, global1.x, arg_0.a), _wgslsmith_div_vec2_f32(vec2<f32>(263f, arg_0.b.x), arg_0.b.yx)), func_4(true, 2147483647i, Struct_2(u_input.c, u_input.b)).c.x, all(select(vec4<bool>(true, false, global1.x, arg_0.a), vec4<bool>(arg_0.c.x, arg_0.a, false, global1.x), true)))));
    let var_2 = arg_0;
    return Struct_1(false, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1639f), _wgslsmith_f_op_f32(floor(arg_1)), 384f)))), var_2.c, -arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(global1.x, _wgslsmith_sub_i32(-1i, -_wgslsmith_mod_i32(u_input.b, -1i)), Struct_2(global0[_wgslsmith_index_u32(~0u, 29u)], func_1(Struct_1(global1.x, vec3<f32>(1301f, 1801f, -2110f), vec2<bool>(global1.x, true), vec3<i32>(-26556i, 1i, -12482i)), Struct_2(-2147483647i, 2147483647i), vec4<u32>(4294967295u, 4294967295u, u_input.a, 1u), Struct_2(-38553i, -5576i)) & 2147483647i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-458f))), _wgslsmith_f_op_f32(-395f * _wgslsmith_f_op_f32(f32(-1f) * -441f))));
    var var_1 = Struct_2(select(abs(reverseBits(var_0.d.x)) << (u_input.a % 32u), var_0.d.x, true), -6842i);
    var var_2 = var_0.d.zz;
    let var_3 = var_0;
    var var_4 = false;
    let var_5 = true;
    var_1 = Struct_2(-10416i, ~(~2147483647i));
    var_1 = Struct_2(reverseBits(max(~_wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(global2.x, 29u)], var_3.d.x), vec2<i32>(var_0.d.x, u_input.b)), var_1.b)), (~(~0i) ^ var_2.x) << (29507u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(0i, ~(~_wgslsmith_div_u32(global2.x, _wgslsmith_clamp_u32(global2.x, u_input.a, global2.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.c, 25064i), ~(-4606i)), var_1.b, global0[_wgslsmith_index_u32(0u, 29u)]), -_wgslsmith_mult_vec3_i32(~vec3<i32>(-9604i, var_1.b, 13824i), -vec3<i32>(var_0.d.x, global0[_wgslsmith_index_u32(u_input.a, 29u)], var_1.b))));
}

