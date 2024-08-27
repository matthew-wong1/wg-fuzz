struct Struct_1 {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(51025i, i32(-2147483648), 9526u, 1243f);

var<private> global1: vec3<u32>;

var<private> global2: array<vec3<i32>, 19> = array<vec3<i32>, 19>(vec3<i32>(-25642i, 0i, 16623i), vec3<i32>(i32(-2147483648), -1i, 0i), vec3<i32>(51840i, i32(-2147483648), -1i), vec3<i32>(27772i, -46825i, -10461i), vec3<i32>(11585i, -42725i, 1496i), vec3<i32>(2147483647i, 2147483647i, -63043i), vec3<i32>(45183i, i32(-2147483648), 1i), vec3<i32>(-68916i, -1i, 1i), vec3<i32>(37445i, 4914i, i32(-2147483648)), vec3<i32>(-1i, 50388i, 0i), vec3<i32>(2147483647i, 24483i, -8508i), vec3<i32>(-1i, 0i, 2147483647i), vec3<i32>(-18836i, 0i, -37221i), vec3<i32>(2147483647i, -17630i, -1i), vec3<i32>(2147483647i, 1i, 29853i), vec3<i32>(-4737i, -18991i, 2147483647i), vec3<i32>(-1i, -1i, 9717i), vec3<i32>(71698i, -45137i, i32(-2147483648)), vec3<i32>(50977i, i32(-2147483648), -1i));

var<private> global3: array<bool, 28>;

var<private> global4: Struct_3 = Struct_3(vec3<f32>(1000f, -544f, -1747f), Struct_1(i32(-2147483648), 63995i, 4294967295u, 2114f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = any(!(!vec2<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, 9186u, 8863u), vec3<u32>(global0.c, 66801u, 1u)), 28u)], any(vec2<bool>(true, global3[_wgslsmith_index_u32(0u, 28u)])))));
    global4 = Struct_3(global4.a, Struct_1(11313i, select(_wgslsmith_add_i32(global4.b.a, global4.b.a) << (~global0.c % 32u), 2283i, any(vec3<bool>(false, global3[_wgslsmith_index_u32(31043u, 28u)], true))), ~(~arg_0) ^ global4.b.c, _wgslsmith_f_op_f32(floor(-1111f))));
    let var_1 = _wgslsmith_add_vec4_i32(-reverseBits(vec4<i32>(12819i, -46871i, -22670i, -51490i)) | (vec4<i32>(abs(global4.b.a), _wgslsmith_add_i32(90487i, -1i), ~global0.b, _wgslsmith_sub_i32(16245i, -7142i)) << (~_wgslsmith_add_vec4_u32(vec4<u32>(20653u, arg_0, 32015u, global0.c), vec4<u32>(arg_0, u_input.c, 1u, 20398u)) % vec4<u32>(32u))), vec4<i32>(~_wgslsmith_mult_i32(-2147483647i, global4.b.b), global0.a << (global0.c % 32u), -global4.b.a | _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, global0.a, u_input.a.x, global4.b.a), vec4<i32>(-1i, 29724i, global4.b.a, -1i)), -19278i) & (vec4<i32>(-42750i, 0i | global0.b, global4.b.b >> (4294967295u % 32u), max(-1i, u_input.a.x)) & vec4<i32>(firstTrailingBit(2147483647i), 1i, global0.a & global4.b.a, 2147483647i)));
    global2 = array<vec3<i32>, 19>();
    var_0 = true;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1212f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.d, -496f)) - _wgslsmith_f_op_f32(global0.d * 949f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.a.x * _wgslsmith_f_op_f32(global0.d + global4.b.d))));
}

fn func_2(arg_0: vec3<f32>) -> u32 {
    let var_0 = !(!(!vec3<bool>(global3[_wgslsmith_index_u32(53680u, 28u)] == global3[_wgslsmith_index_u32(506u, 28u)], u_input.b != 1i, true)));
    global4 = Struct_3(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_3(global0.c)), -1000f, 1243f) * _wgslsmith_f_op_vec3_f32(-global4.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a.x, arg_0.x, global0.d))))), global4.b);
    global1 = vec3<u32>(16988u, firstLeadingBit(global4.b.c), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.c), abs(~vec2<u32>(52084u, global1.x))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -465f);
    var var_2 = ~(i32(-1i) * -global4.b.b);
    return 49185u;
}

fn func_1(arg_0: vec3<u32>) -> vec3<u32> {
    global1 = vec3<u32>(~_wgslsmith_sub_u32(global1.x, global0.c), reverseBits(min(func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global4.b.d, 1000f, -1377f)))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_0, arg_0), ~42399u))), arg_0.x);
    let var_0 = _wgslsmith_sub_u32(select(0u, u_input.c | ~global4.b.c, !global3[_wgslsmith_index_u32(arg_0.x, 28u)] && (global3[_wgslsmith_index_u32(39875u, 28u)] | global3[_wgslsmith_index_u32(arg_0.x, 28u)])) | 3610u, _wgslsmith_mod_u32(arg_0.x, max(max(global4.b.c, ~14887u), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-795f, global4.a.x, global4.b.d) - vec3<f32>(global4.b.d, -461f, global4.b.d))))));
    var var_1 = global4.b;
    var var_2 = firstLeadingBit(4294967295u);
    var var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1037f, -759f, global4.b.d), vec3<f32>(global4.a.x, global4.b.d, var_1.d)))) * global4.a) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-444f * -1101f), -1904f, _wgslsmith_f_op_f32(-151f - global4.b.d)), vec3<f32>(_wgslsmith_f_op_f32(select(var_1.d, -264f, global3[_wgslsmith_index_u32(var_1.c, 28u)])), 1703f, _wgslsmith_f_op_f32(-519f - var_1.d)), all(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.c, 28u)]))))), Struct_1(1i, reverseBits(abs(39385i << (global1.x % 32u))), ~var_0, global0.d));
    return _wgslsmith_div_vec3_u32(reverseBits(arg_0), arg_0 >> (arg_0 % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(reverseBits(~global4.b.c), _wgslsmith_mult_u32(0u, global0.c));
    global3 = array<bool, 28>();
    global3 = array<bool, 28>();
    let var_1 = firstTrailingBit(-global4.b.b);
    global3 = array<bool, 28>();
    let var_2 = global3[_wgslsmith_index_u32(~(~firstLeadingBit(1u)) >> (~_wgslsmith_dot_vec3_u32(func_1(max(vec3<u32>(1u, global1.x, global4.b.c), vec3<u32>(u_input.c, global0.c, global1.x))), ~func_1(vec3<u32>(global4.b.c, 7970u, global0.c))) % 32u), 28u)];
    let var_3 = ~global4.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, _wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec2_u32(global1.yx, vec2<u32>(global1.x, 1u)), _wgslsmith_div_u32(u_input.c, 1u), 41415u), vec3<u32>(var_3, firstLeadingBit(1u), global0.c)), vec3<u32>(1u ^ _wgslsmith_dot_vec2_u32(global1.xz, global1.xz << (global1.yz % vec2<u32>(32u))), ~reverseBits(27784u), _wgslsmith_mod_u32(~firstTrailingBit(global1.x), ~abs(4294967295u))), global4.b.c ^ 0u, vec2<i32>(-(~_wgslsmith_add_i32(2147483647i, global4.b.a)), reverseBits(_wgslsmith_add_i32(_wgslsmith_div_i32(-26506i, global4.b.a), -global4.b.b))));
}

