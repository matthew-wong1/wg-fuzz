struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(4294967295u, 0u), vec2<u32>(5414u, 45257u), vec2<u32>(14960u, 70757u), vec2<u32>(6558u, 3604u), vec2<u32>(1u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(86112u, 37113u), vec2<u32>(17903u, 68194u), vec2<u32>(0u, 14785u), vec2<u32>(0u, 1u), vec2<u32>(45669u, 1u), vec2<u32>(53757u, 133812u), vec2<u32>(56140u, 1u), vec2<u32>(51508u, 98984u), vec2<u32>(24664u, 95921u), vec2<u32>(56602u, 4294967295u), vec2<u32>(0u, 77444u), vec2<u32>(4294967295u, 29013u));

var<private> global1: vec2<i32>;

var<private> global2: array<f32, 21>;

var<private> global3: array<vec2<i32>, 26> = array<vec2<i32>, 26>(vec2<i32>(-1i, -2094i), vec2<i32>(i32(-2147483648), -13670i), vec2<i32>(-78940i, -22701i), vec2<i32>(-1i, 1i), vec2<i32>(-44154i, 2147483647i), vec2<i32>(0i, 52647i), vec2<i32>(18938i, 0i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(-33633i, 1i), vec2<i32>(-35706i, -21666i), vec2<i32>(-1i, 49484i), vec2<i32>(888i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(-2437i, 40512i), vec2<i32>(-1i, -63666i), vec2<i32>(1i, 44602i), vec2<i32>(0i, -9514i), vec2<i32>(-23037i, -1i), vec2<i32>(2147483647i, 1i), vec2<i32>(14478i, -44474i), vec2<i32>(-1i, 69146i), vec2<i32>(i32(-2147483648), 25582i), vec2<i32>(-6780i, 12456i), vec2<i32>(0i, 30605i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(0i, -16786i));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec3<f32>) -> vec4<bool> {
    let var_0 = vec2<bool>(any(vec2<bool>(true, arg_2.c.c)) | !arg_2.b.c, arg_2.c.c);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.x, _wgslsmith_f_op_f32(-1166f - arg_2.a)))), vec4<f32>(-643f, arg_3.x, global2[_wgslsmith_index_u32(arg_1.x, 21u)], _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.c.b.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(0u, 95706u, arg_1.x, u_input.d)), 21u)]), 1944f, true))), 2147483647i < u_input.b);
    global2 = array<f32, 21>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(arg_3.x - global2[_wgslsmith_index_u32(firstTrailingBit(arg_1.x), 21u)]), vec4<f32>(_wgslsmith_f_op_f32(ceil(-513f)), 483f, _wgslsmith_f_op_f32(f32(-1f) * -289f), 701f), select(true, var_0.x, var_1.c));
    var var_3 = Struct_1(-698f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-518f, _wgslsmith_f_op_f32(arg_2.c.b.x + -1579f), _wgslsmith_f_op_f32(1000f + var_2.a), _wgslsmith_f_op_f32(-arg_2.b.a)) - _wgslsmith_f_op_vec4_f32(-var_1.b)), _wgslsmith_f_op_vec4_f32(arg_2.c.b - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b * var_1.b))), all(!var_0))), var_1.c);
    return vec4<bool>(false, all(vec3<bool>(!all(vec4<bool>(false, true, true, arg_2.c.c)), any(select(var_0, var_0, var_0)), all(vec4<bool>(false, false, var_0.x, arg_2.c.c)))), any(var_0), all(vec2<bool>(true, arg_2.b.c || false)));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool) -> Struct_2 {
    var var_0 = !select(func_3(0u, abs(vec4<u32>(1u, u_input.d, u_input.a, 4294967295u)), Struct_2(_wgslsmith_f_op_f32(step(982f, -181f)), Struct_1(global2[_wgslsmith_index_u32(4294967295u, 21u)], vec4<f32>(global2[_wgslsmith_index_u32(82608u, 21u)], global2[_wgslsmith_index_u32(22258u, 21u)], global2[_wgslsmith_index_u32(u_input.d, 21u)], global2[_wgslsmith_index_u32(arg_0.x, 21u)]), false), Struct_1(-561f, vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 21u)], global2[_wgslsmith_index_u32(u_input.a, 21u)], global2[_wgslsmith_index_u32(64185u, 21u)], 161f), arg_1)), vec3<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 21u)] + -602f), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(19821u, 28129u), 21u)], global2[_wgslsmith_index_u32(60155u, 21u)])), select(vec4<bool>(arg_1, all(vec3<bool>(arg_1, false, arg_1)), arg_1 == arg_1, arg_1), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), func_3(arg_0.x, vec4<u32>(arg_0.x, 48172u, 1u, u_input.a), Struct_2(1000f, Struct_1(378f, vec4<f32>(global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(u_input.a, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], 952f), true), Struct_1(global2[_wgslsmith_index_u32(u_input.d, 21u)], vec4<f32>(global2[_wgslsmith_index_u32(arg_0.x, 21u)], global2[_wgslsmith_index_u32(arg_0.x, 21u)], 713f, -1080f), false)), vec3<f32>(2069f, global2[_wgslsmith_index_u32(25338u, 21u)], -425f)), arg_1), false), !select(select(vec4<bool>(arg_1, true, arg_1, arg_1), vec4<bool>(true, arg_1, arg_1, arg_1), true), select(vec4<bool>(true, false, false, arg_1), vec4<bool>(false, true, arg_1, arg_1), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, true, false), vec4<bool>(arg_1, arg_1, false, arg_1), vec4<bool>(false, arg_1, false, false))));
    global3 = array<vec2<i32>, 26>();
    global0 = array<vec2<u32>, 20>();
    var var_1 = vec4<i32>(_wgslsmith_add_i32(firstTrailingBit(u_input.c & _wgslsmith_mult_i32(35425i, 1i)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.c, i32(-1i) * -15019i, _wgslsmith_div_i32(global1.x, 0i)), abs(u_input.b))), u_input.c, -50586i & min(_wgslsmith_clamp_i32(u_input.c, u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.c, u_input.b, u_input.c), vec4<i32>(-2147483647i, u_input.c, u_input.c, u_input.c))), global1.x ^ -global1.x), _wgslsmith_div_i32(u_input.b, ~u_input.b >> (4294967295u % 32u)));
    var var_2 = var_1.xzz;
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(850f + global2[_wgslsmith_index_u32(96804u, 21u)]))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-137f)))) * -653f), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 21u)] + global2[_wgslsmith_index_u32(u_input.a, 21u)]))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.a, 21u)], -701f, -272f, global2[_wgslsmith_index_u32(0u, 21u)]) - vec4<f32>(1000f, global2[_wgslsmith_index_u32(arg_0.x, 21u)], global2[_wgslsmith_index_u32(arg_0.x, 21u)], 448f))))), false), Struct_1(_wgslsmith_f_op_f32(trunc(-1107f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2[_wgslsmith_index_u32(15019u, 21u)], -677f, 1000f, -173f), vec4<f32>(global2[_wgslsmith_index_u32(18798u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], 2343f, global2[_wgslsmith_index_u32(31908u, 21u)])))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(u_input.d, 21u)], 499f, global2[_wgslsmith_index_u32(u_input.a, 21u)], global2[_wgslsmith_index_u32(arg_0.x, 21u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(-298f, global2[_wgslsmith_index_u32(u_input.a, 21u)], global2[_wgslsmith_index_u32(3973u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)]) + vec4<f32>(-1580f, 139f, -1573f, 901f))))), all(select(vec4<bool>(false, arg_1, true, arg_1), vec4<bool>(var_0.x, arg_1, var_0.x, false), select(vec4<bool>(var_0.x, false, arg_1, arg_1), vec4<bool>(arg_1, false, false, false), arg_1)))));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec3<bool>) -> i32 {
    let var_0 = func_2(~_wgslsmith_add_vec4_u32(select(~vec4<u32>(u_input.d, u_input.a, u_input.a, 0u), vec4<u32>(28703u, arg_0, arg_0, arg_0), true), ~vec4<u32>(arg_0, 1662u, 1u, u_input.d) & select(vec4<u32>(54674u, 26050u, 22217u, 0u), vec4<u32>(11551u, arg_0, u_input.a, 38033u), arg_2.x)), false);
    let var_1 = vec3<u32>(max(firstLeadingBit(arg_1.x), ~0u), firstTrailingBit(0u), firstTrailingBit(18212u)) << (_wgslsmith_mult_vec3_u32(~min(vec3<u32>(arg_1.x, 53299u, 0u), firstLeadingBit(vec3<u32>(17319u, u_input.d, 0u))), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, arg_1.x, arg_0) << (4294967295u % 32u), 1u, _wgslsmith_dot_vec3_u32(min(vec3<u32>(arg_0, 14030u, arg_1.x), vec3<u32>(arg_1.x, 4801u, 61228u)), vec3<u32>(9686u, 38684u, 4294967295u) | vec3<u32>(arg_0, arg_0, 1u)))) % vec3<u32>(32u));
    global3 = array<vec2<i32>, 26>();
    let var_2 = arg_2.xx;
    var var_3 = !vec3<bool>(_wgslsmith_div_u32(arg_0, select(var_1.x, u_input.a, false)) > (arg_1.x << (var_1.x % 32u)), (-901f < _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_1.x, 21u)])) | var_0.b.c, var_2.x);
    return global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<i32>(func_1(0u, _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(11641u, 1u)), vec2<u32>(1u, 1u)), vec3<bool>(true, true, true)) & 45565i, global1.x & -_wgslsmith_sub_i32(i32(-1i) * -1i, global1.x & -74552i));
    var var_0 = !select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(all(vec4<bool>(false, true, true, false)), u_input.d == 36116u, true, true), true);
    let var_1 = 2147483647i;
    let var_2 = global3[_wgslsmith_index_u32(u_input.d, 26u)];
    global0 = array<vec2<u32>, 20>();
    var var_3 = ~var_2.x;
    global3 = array<vec2<i32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(select(countOneBits(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, global1.x)), vec2<i32>(global1.x, u_input.c))), ~vec2<i32>(u_input.b, ~(-29614i)), var_0.x), var_2.x, reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-61753i, global1.x, 11129i, 6838i)), -vec4<i32>(16756i, -31104i, var_1, u_input.c)), func_1(_wgslsmith_sub_u32(0u, u_input.a), _wgslsmith_mult_vec2_u32(vec2<u32>(5976u, u_input.d), vec2<u32>(u_input.d, u_input.d)), !var_0.wyy), _wgslsmith_dot_vec4_i32(-vec4<i32>(-55316i, 1i, -2147483647i, global1.x), reverseBits(vec4<i32>(global1.x, u_input.c, var_1, -35871i))))), _wgslsmith_mod_vec3_i32(-(~(~vec3<i32>(global1.x, 2147483647i, u_input.b))), vec3<i32>(countOneBits(-var_2.x), 1i, firstTrailingBit(-108725i))));
}

