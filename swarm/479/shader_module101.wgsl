struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_2,
    d: vec4<f32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1>;

var<private> global1: vec4<f32>;

var<private> global2: array<bool, 27> = array<bool, 27>(true, true, true, true, false, false, true, true, true, true, true, true, true, true, true, false, true, false, false, true, true, true, false, true, true, false, false);

var<private> global3: Struct_3;

var<private> global4: u32;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
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

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<i32>, arg_1: f32) -> vec2<i32> {
    global2 = array<bool, 27>();
    let var_0 = ~u_input.a.x;
    let var_1 = Struct_3(-2147483647i, global0[_wgslsmith_index_u32(u_input.c, 1u)], Struct_2(vec4<u32>(1u, u_input.b.x, select(_wgslsmith_mod_u32(12037u, u_input.b.x), 0u, any(vec2<bool>(global2[_wgslsmith_index_u32(35170u, 27u)], true))), global3.b.a.x), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(global3.b.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1046f, arg_1) - vec2<f32>(global1.x, global3.e.b.x))), vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global3.d.x)), !all(vec3<bool>(false, true, false)))), vec2<f32>(global1.x, global1.x), abs(vec2<i32>(_wgslsmith_clamp_i32(u_input.d, 1i, 1i), -2147483647i))), global3.d, global3.e);
    var var_2 = ~vec4<u32>(var_1.b.a.x, 1u, 4294967295u, firstTrailingBit(_wgslsmith_dot_vec3_u32(min(vec3<u32>(59049u, 0u, global3.c.a.x), vec3<u32>(u_input.c, var_1.c.a.x, 1u)), vec3<u32>(1u, u_input.b.x, u_input.b.x))));
    global4 = 31927u;
    return abs(_wgslsmith_div_vec2_i32(select(abs(-vec2<i32>(var_1.c.d.x, var_1.b.d.x)), vec2<i32>(arg_0.x, select(8459i, 33384i, global2[_wgslsmith_index_u32(global3.e.a.x, 27u)])), !global2[_wgslsmith_index_u32(96398u, 27u)]), vec2<i32>(_wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(1i, 8594i, -26622i, -21185i)), arg_0), var_0)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> u32 {
    let var_0 = Struct_3(global3.e.d.x, arg_1.e, Struct_2(u_input.b, global1.xx, vec2<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-974f * -492f))), _wgslsmith_mult_vec2_i32(-vec2<i32>(-17056i, -2147483647i), _wgslsmith_mult_vec2_i32(firstLeadingBit(arg_0.d), ~global3.e.d))), vec4<f32>(568f, _wgslsmith_f_op_f32(arg_0.c.x + 1f), 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-524f)))), _wgslsmith_f_op_f32(-420f * _wgslsmith_f_op_f32(-arg_0.b.x)))), global3.c);
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(global3.d.ywx));
    let var_2 = select(~var_0.e.a.x, 0u, !global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.c.a.x, 10622u, u_input.c, u_input.c), vec4<u32>(var_0.c.a.x, 4294967295u, 10993u, 23013u)), 77440u), 27u)]);
    var var_3 = Struct_1(_wgslsmith_clamp_i32(arg_0.d.x, func_3(vec4<i32>(2147483647i, u_input.a.x, 0i, -2147483647i), _wgslsmith_div_f32(arg_0.b.x, 271f)).x >> ((~1u << (select(1u, u_input.b.x, false) % 32u)) % 32u), abs(u_input.a.x)));
    global1 = _wgslsmith_f_op_vec4_f32(arg_1.d - vec4<f32>(1889f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, arg_0.b.x) - -1556f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 515f) * var_0.c.c.x)), _wgslsmith_f_op_f32(1485f * 434f), 353f));
    return ~abs(~52203u);
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_3, arg_3: Struct_1) -> Struct_2 {
    let var_0 = global3.c.a.x;
    let var_1 = arg_2;
    global3 = arg_2;
    global2 = array<bool, 27>();
    var var_2 = func_4(Struct_2(global3.b.a, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(global3.b.b.x, -988f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global3.b.c))), global3.e.d), Struct_3(u_input.d, Struct_2(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b.a.x, 10437u, global3.e.a.x, u_input.b.x), global3.b.a), _wgslsmith_f_op_vec2_f32(var_1.d.xx * vec2<f32>(global3.d.x, -456f)), vec2<f32>(1000f, global1.x), -vec2<i32>(arg_3.a, 13169i)), Struct_2(firstTrailingBit(global3.b.a), _wgslsmith_f_op_vec2_f32(sign(var_1.d.xw)), vec2<f32>(global1.x, -1048f), func_3(vec4<i32>(u_input.d, -1i, -2147483647i, 45522i), var_1.d.x)), _wgslsmith_f_op_vec4_f32(-var_1.d), var_1.b)) & countOneBits(75351u);
    return Struct_2(u_input.b, arg_2.c.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.zz - global3.c.b) * global1.yw))), _wgslsmith_mult_vec2_i32(vec2<i32>(~select(arg_2.b.d.x, arg_2.a, global2[_wgslsmith_index_u32(var_1.e.a.x, 27u)]), ~_wgslsmith_div_i32(-22234i, -4218i)), global3.b.d));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_1) -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(max(~(-37401i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -49105i, global3.a), vec3<i32>(arg_0.b.d.x, 30838i, -2147483647i))), select(global3.c.d.x, global3.a ^ -1i, all(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], false, global2[_wgslsmith_index_u32(0u, 27u)]))))), Struct_2(u_input.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.c.b))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.c.c.x, -763f)))), abs(global3.e.d)), arg_1.e, vec4<f32>(arg_0.c.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.e.c.x, -235f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b.c.x, -812f))), func_2(Struct_1(_wgslsmith_div_i32(-35897i, global3.e.d.x)), select(-vec3<i32>(arg_0.e.d.x, global3.c.d.x, u_input.a.x), -vec3<i32>(-1i, u_input.d, -2147483647i), 587f >= arg_1.b.b.x), arg_1, arg_2).b.x), global0[_wgslsmith_index_u32(countOneBits(func_4(func_2(Struct_1(global3.e.d.x), u_input.a, arg_1, Struct_1(-2147483647i)), Struct_3(21244i, global3.c, arg_1.b, _wgslsmith_f_op_vec4_f32(max(global3.d, arg_0.d)), arg_0.e))), 1u)]);
    let var_1 = select(!select(!(!vec2<bool>(global2[_wgslsmith_index_u32(global3.b.a.x, 27u)], global2[_wgslsmith_index_u32(arg_0.e.a.x, 27u)])), select(vec2<bool>(global2[_wgslsmith_index_u32(arg_0.b.a.x, 27u)], global2[_wgslsmith_index_u32(var_0.c.a.x, 27u)]), !vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(arg_0.b.a.x, 27u)]), select(vec2<bool>(true, false), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], global2[_wgslsmith_index_u32(arg_1.e.a.x, 27u)]), true)), !(false | global2[_wgslsmith_index_u32(global3.b.a.x, 27u)])), select(!(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], global2[_wgslsmith_index_u32(u_input.c, 27u)])), vec2<bool>(false | (true && global2[_wgslsmith_index_u32(global3.c.a.x, 27u)]), !global2[_wgslsmith_index_u32(~var_0.c.a.x, 27u)]), !select(!vec2<bool>(global2[_wgslsmith_index_u32(arg_0.b.a.x, 27u)], false), select(vec2<bool>(false, true), vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 27u)]), vec2<bool>(false, false)), var_0.c.d.x <= -1i)), vec2<bool>(!any(vec3<bool>(global2[_wgslsmith_index_u32(arg_1.c.a.x, 27u)], true, global2[_wgslsmith_index_u32(u_input.c, 27u)])), global2[_wgslsmith_index_u32(0u, 27u)] == all(select(vec4<bool>(false, true, true, false), vec4<bool>(global2[_wgslsmith_index_u32(1u, 27u)], true, false, global2[_wgslsmith_index_u32(19814u, 27u)]), global2[_wgslsmith_index_u32(global3.e.a.x, 27u)]))));
    global4 = arg_0.e.a.x;
    let var_2 = vec4<i32>(var_0.c.d.x, -2147483647i, _wgslsmith_dot_vec3_i32(~_wgslsmith_mod_vec3_i32(vec3<i32>(global3.c.d.x, -52815i, global3.b.d.x), u_input.a), (vec3<i32>(u_input.a.x, 50628i, global3.a) & vec3<i32>(global3.c.d.x, arg_1.b.d.x, var_0.e.d.x)) << (vec3<u32>(u_input.b.x, 35932u, arg_0.b.a.x) % vec3<u32>(32u))) & ~arg_1.b.d.x, -(~u_input.d));
    let var_3 = var_0.c.b.x;
    return arg_2;
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: bool) -> Struct_3 {
    var var_0 = !(!(!select(vec4<bool>(arg_3, false, false, arg_3), select(vec4<bool>(arg_1, global2[_wgslsmith_index_u32(34979u, 27u)], true, arg_1), vec4<bool>(true, arg_3, arg_3, true), vec4<bool>(true, global2[_wgslsmith_index_u32(global3.e.a.x, 27u)], true, false)), select(vec4<bool>(false, arg_3, true, false), vec4<bool>(arg_1, false, true, arg_3), arg_3))));
    var var_1 = func_2(func_5(Struct_3(-2147483647i, global3.e, global3.e, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global3.d * vec4<f32>(907f, -1342f, 121f, global3.b.b.x)), global3.d)), func_2(func_5(Struct_3(-50006i, Struct_2(global3.b.a, vec2<f32>(global3.b.c.x, global1.x), global1.wz, vec2<i32>(arg_2.a, u_input.d)), global3.b, vec4<f32>(global1.x, global3.b.b.x, -525f, global3.e.b.x), Struct_2(vec4<u32>(1u, u_input.b.x, 4294967295u, 44664u), global3.e.b, global3.e.b, vec2<i32>(global3.c.d.x, 35753i))), Struct_3(u_input.a.x, global0[_wgslsmith_index_u32(32015u, 1u)], global0[_wgslsmith_index_u32(u_input.c, 1u)], vec4<f32>(global3.b.c.x, 752f, -691f, -941f), global3.b), arg_0), vec3<i32>(global3.e.d.x, u_input.d, -4064i), Struct_3(global3.b.d.x, Struct_2(global3.b.a, global3.c.b, vec2<f32>(-1774f, global3.d.x), vec2<i32>(1i, arg_2.a)), Struct_2(vec4<u32>(global3.c.a.x, u_input.c, 74066u, 1u), global1.xy, global1.yy, global3.b.d), global3.d, global3.c), arg_0)), Struct_3(global3.e.d.x ^ ~u_input.d, func_2(Struct_1(global3.a), vec3<i32>(u_input.d, 2147483647i, -1i), Struct_3(-2147483647i, Struct_2(u_input.b, global3.c.b, vec2<f32>(-638f, 1041f), global3.b.d), global3.c, vec4<f32>(545f, 2197f, global3.c.c.x, -265f), Struct_2(u_input.b, vec2<f32>(global1.x, -1000f), vec2<f32>(global1.x, 899f), vec2<i32>(u_input.d, 0i))), arg_0), func_2(func_5(Struct_3(u_input.d, global0[_wgslsmith_index_u32(global3.c.a.x, 1u)], Struct_2(global3.b.a, global3.b.b, vec2<f32>(463f, global1.x), vec2<i32>(arg_0.a, -2147483647i)), global3.d, Struct_2(vec4<u32>(u_input.b.x, 35152u, 85691u, u_input.c), global1.ww, global3.c.c, vec2<i32>(-57076i, arg_0.a))), Struct_3(20438i, global3.c, Struct_2(vec4<u32>(14384u, 4294967295u, 15766u, 4294967295u), global3.e.c, global1.zy, vec2<i32>(arg_2.a, global3.c.d.x)), vec4<f32>(global1.x, -1000f, -864f, global1.x), global3.b), arg_0), min(vec3<i32>(-1i, -17229i, 30235i), vec3<i32>(32086i, arg_0.a, 30744i)), Struct_3(arg_2.a, Struct_2(global3.b.a, global1.wy, global3.e.b, global3.e.d), Struct_2(global3.c.a, global3.b.c, global3.c.b, vec2<i32>(0i, arg_2.a)), global3.d, global3.e), arg_2), vec4<f32>(_wgslsmith_f_op_f32(max(global3.c.c.x, -1028f)), -393f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -705f)), global3.c), Struct_1(_wgslsmith_dot_vec3_i32(u_input.a ^ u_input.a, u_input.a & u_input.a))), _wgslsmith_add_vec3_i32(-u_input.a, ~(vec3<i32>(arg_2.a, arg_0.a, -1i) << (~vec3<u32>(u_input.b.x, 64374u, 71953u) % vec3<u32>(32u)))), Struct_3(func_3(~(-vec4<i32>(u_input.a.x, global3.a, global3.c.d.x, arg_0.a)), global1.x).x, Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.b.x, u_input.b.x, 0u), vec4<u32>(0u, u_input.b.x, u_input.b.x, 0u)), global1.xx, vec2<f32>(1790f, _wgslsmith_f_op_f32(ceil(225f))), func_2(func_5(Struct_3(-1i, Struct_2(vec4<u32>(global3.e.a.x, 4294967295u, global3.b.a.x, 1359u), global3.d.zw, vec2<f32>(253f, -488f), vec2<i32>(34067i, global3.a)), global0[_wgslsmith_index_u32(0u, 1u)], global3.d, global0[_wgslsmith_index_u32(84834u, 1u)]), Struct_3(global3.e.d.x, Struct_2(vec4<u32>(u_input.c, 1u, u_input.b.x, global3.b.a.x), vec2<f32>(global1.x, 688f), global1.xw, vec2<i32>(0i, arg_0.a)), Struct_2(global3.b.a, vec2<f32>(-1500f, global3.b.c.x), vec2<f32>(-1000f, -1000f), vec2<i32>(arg_2.a, -15646i)), vec4<f32>(-1858f, global3.d.x, global3.d.x, -1472f), global3.b), Struct_1(-891i)), _wgslsmith_clamp_vec3_i32(u_input.a, u_input.a, u_input.a), Struct_3(arg_0.a, global3.b, Struct_2(global3.c.a, global3.b.b, vec2<f32>(global1.x, -477f), vec2<i32>(global3.e.d.x, arg_2.a)), vec4<f32>(global3.b.b.x, global3.e.b.x, global1.x, global3.e.b.x), global3.c), arg_0).d), func_2(func_5(Struct_3(u_input.a.x, Struct_2(vec4<u32>(global3.b.a.x, 7465u, 176u, u_input.c), global3.b.b, global1.zz, vec2<i32>(arg_2.a, -27157i)), global3.e, global3.d, Struct_2(u_input.b, vec2<f32>(1633f, -470f), vec2<f32>(1748f, global1.x), u_input.a.yx)), Struct_3(12251i, global0[_wgslsmith_index_u32(u_input.b.x, 1u)], Struct_2(u_input.b, global1.zy, vec2<f32>(-885f, -430f), vec2<i32>(-43i, 2147483647i)), vec4<f32>(-613f, 1268f, global3.b.c.x, 869f), Struct_2(vec4<u32>(74218u, 4294967295u, 65899u, u_input.b.x), global1.xw, global1.zy, vec2<i32>(2147483647i, global3.a))), Struct_1(arg_0.a)), u_input.a, Struct_3(reverseBits(-87981i), global3.b, Struct_2(global3.e.a, global1.zy, global3.c.c, vec2<i32>(global3.e.d.x, u_input.d)), vec4<f32>(global1.x, global3.b.c.x, global1.x, -294f), func_2(arg_2, vec3<i32>(arg_2.a, arg_2.a, -2147483647i), Struct_3(arg_0.a, global0[_wgslsmith_index_u32(0u, 1u)], global3.c, vec4<f32>(390f, -861f, -480f, global3.d.x), global0[_wgslsmith_index_u32(global3.e.a.x, 1u)]), arg_0)), func_5(Struct_3(16212i, Struct_2(global3.c.a, vec2<f32>(global1.x, 2193f), global1.zx, global3.c.d), global0[_wgslsmith_index_u32(u_input.c, 1u)], global3.d, global3.e), Struct_3(arg_0.a, global3.e, global3.e, global3.d, Struct_2(vec4<u32>(global3.b.a.x, u_input.c, global3.b.a.x, global3.b.a.x), global1.xw, global1.xx, vec2<i32>(-18764i, u_input.d))), func_5(Struct_3(arg_2.a, Struct_2(global3.c.a, global3.d.wx, vec2<f32>(304f, global1.x), vec2<i32>(-1i, -2147483647i)), Struct_2(vec4<u32>(1u, global3.b.a.x, 4346u, global3.b.a.x), global3.d.ww, global1.yy, global3.c.d), global3.d, global0[_wgslsmith_index_u32(1u, 1u)]), Struct_3(18296i, Struct_2(u_input.b, vec2<f32>(-214f, global1.x), vec2<f32>(-736f, global3.d.x), u_input.a.xz), Struct_2(global3.b.a, global1.zx, vec2<f32>(global3.d.x, global3.d.x), global3.e.d), global3.d, global0[_wgslsmith_index_u32(4294967295u, 1u)]), arg_2))), global3.d, Struct_2(~_wgslsmith_div_vec4_u32(global3.c.a, vec4<u32>(global3.c.a.x, 1591u, u_input.b.x, u_input.c)), vec2<f32>(-1261f, _wgslsmith_f_op_f32(global3.e.c.x + global3.d.x)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, -1266f))), vec2<i32>(-1i) * -vec2<i32>(arg_0.a, arg_0.a))), Struct_1(func_2(Struct_1(1i), -vec3<i32>(-2147483647i, u_input.a.x, -2147483647i), Struct_3(-global3.e.d.x, global0[_wgslsmith_index_u32(41774u, 1u)], func_2(arg_2, u_input.a, Struct_3(global3.e.d.x, Struct_2(global3.b.a, global1.wy, vec2<f32>(1503f, 631f), global3.e.d), Struct_2(vec4<u32>(0u, 1u, 29426u, 0u), vec2<f32>(1258f, global1.x), vec2<f32>(-633f, -300f), u_input.a.xy), vec4<f32>(-1013f, 236f, 889f, 323f), Struct_2(vec4<u32>(4294967295u, 50814u, u_input.c, 45559u), global3.c.c, global1.yx, vec2<i32>(arg_0.a, arg_0.a))), arg_0), _wgslsmith_f_op_vec4_f32(round(global3.d)), Struct_2(vec4<u32>(1u, u_input.c, u_input.b.x, u_input.c), global3.c.b, global3.b.c, vec2<i32>(1i, arg_2.a))), arg_2).d.x)).c.x;
    var var_2 = Struct_1(global3.a);
    let var_3 = func_5(Struct_3(~u_input.d, func_2(func_5(Struct_3(47466i, Struct_2(vec4<u32>(global3.e.a.x, u_input.c, 26557u, global3.e.a.x), global1.zx, global3.b.b, vec2<i32>(38978i, 1i)), global0[_wgslsmith_index_u32(4294967295u, 1u)], global3.d, global0[_wgslsmith_index_u32(u_input.b.x, 1u)]), Struct_3(2147483647i, Struct_2(u_input.b, global1.wx, vec2<f32>(global3.e.b.x, 155f), vec2<i32>(1i, global3.a)), global3.c, vec4<f32>(global1.x, -1042f, global3.c.c.x, global1.x), Struct_2(u_input.b, global1.zz, vec2<f32>(424f, global1.x), vec2<i32>(1i, arg_2.a))), arg_2), vec3<i32>(-var_2.a, u_input.a.x, var_2.a >> (global3.e.a.x % 32u)), Struct_3(-4963i, Struct_2(vec4<u32>(11581u, global3.c.a.x, u_input.b.x, 4109u), vec2<f32>(global3.e.b.x, 1293f), global3.d.yy, u_input.a.yx), global0[_wgslsmith_index_u32(~28698u, 1u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-405f, 474f, global1.x, 1835f)), global3.b), Struct_1(arg_2.a)), func_2(arg_2, u_input.a, Struct_3(-60775i, global3.c, func_2(arg_2, u_input.a, Struct_3(var_2.a, global3.e, global0[_wgslsmith_index_u32(71833u, 1u)], global3.d, global0[_wgslsmith_index_u32(u_input.b.x, 1u)]), arg_2), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.d.x, global3.c.c.x, -670f, 1342f))), Struct_2(u_input.b, global3.d.xx, global1.zz, u_input.a.yx)), Struct_1(var_2.a)), global3.d, Struct_2(global3.b.a, vec2<f32>(global3.b.b.x, _wgslsmith_div_f32(global3.d.x, global3.d.x)), global3.e.b, -vec2<i32>(1i, -2147483647i))), Struct_3(~_wgslsmith_mod_i32(~var_2.a, u_input.d | var_2.a), Struct_2(_wgslsmith_mod_vec4_u32(u_input.b ^ global3.c.a, u_input.b), global3.d.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.xz)), vec2<i32>(u_input.a.x, -33536i)), global3.e, vec4<f32>(1f, global3.d.x, global3.d.x, _wgslsmith_f_op_f32(step(global1.x, _wgslsmith_div_f32(-590f, global1.x)))), global3.b), func_5(Struct_3(-(global3.e.d.x | u_input.d), global3.b, global0[_wgslsmith_index_u32(39828u, 1u)], _wgslsmith_f_op_vec4_f32(global3.d * vec4<f32>(-1758f, -739f, global1.x, -880f)), Struct_2(global3.b.a, vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(floor(global1.zy)), func_3(vec4<i32>(2147483647i, 31608i, arg_0.a, arg_2.a), -1387f))), Struct_3(firstTrailingBit(arg_0.a), global0[_wgslsmith_index_u32(global3.b.a.x, 1u)], global3.b, vec4<f32>(632f, 1010f, -1436f, global1.x), func_2(func_5(Struct_3(-1i, Struct_2(vec4<u32>(4294967295u, global3.c.a.x, u_input.c, u_input.b.x), global1.yw, global3.d.yz, vec2<i32>(arg_0.a, global3.a)), Struct_2(u_input.b, global1.ww, global1.wx, vec2<i32>(2147483647i, global3.e.d.x)), vec4<f32>(1142f, -1974f, 333f, -547f), global0[_wgslsmith_index_u32(6670u, 1u)]), Struct_3(0i, Struct_2(global3.e.a, vec2<f32>(1035f, 1901f), vec2<f32>(global3.b.c.x, global1.x), global3.b.d), Struct_2(global3.b.a, vec2<f32>(global1.x, global3.d.x), vec2<f32>(-964f, global3.e.b.x), vec2<i32>(arg_2.a, 1i)), vec4<f32>(global3.b.c.x, global3.c.b.x, global1.x, 325f), Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, global3.b.a.x, global3.c.a.x), vec2<f32>(global3.b.c.x, global3.e.c.x), global3.c.c, global3.b.d)), arg_2), ~vec3<i32>(-2147483647i, var_2.a, arg_2.a), Struct_3(global3.a, Struct_2(global3.b.a, vec2<f32>(global1.x, 1314f), vec2<f32>(981f, 576f), vec2<i32>(arg_2.a, 0i)), Struct_2(vec4<u32>(global3.c.a.x, u_input.b.x, global3.e.a.x, 4294967295u), global1.zx, vec2<f32>(856f, global1.x), u_input.a.yz), global3.d, Struct_2(vec4<u32>(4294967295u, 4294967295u, 91174u, global3.e.a.x), vec2<f32>(-404f, 393f), vec2<f32>(global1.x, -794f), vec2<i32>(0i, u_input.d))), func_5(Struct_3(1i, Struct_2(vec4<u32>(81803u, 0u, 1u, global3.e.a.x), global1.yz, vec2<f32>(global1.x, global3.d.x), vec2<i32>(1i, -8343i)), Struct_2(u_input.b, global3.e.c, vec2<f32>(407f, -331f), u_input.a.zz), vec4<f32>(2241f, -867f, global3.e.b.x, 1392f), global3.b), Struct_3(2147483647i, global0[_wgslsmith_index_u32(global3.c.a.x, 1u)], Struct_2(vec4<u32>(57494u, u_input.c, 94078u, global3.b.a.x), global3.b.b, global1.yy, vec2<i32>(-23311i, -37204i)), vec4<f32>(global1.x, 403f, 145f, global3.c.c.x), global3.c), Struct_1(var_2.a)))), arg_2)).a;
    let var_4 = Struct_3(_wgslsmith_sub_i32(~(_wgslsmith_mult_i32(0i, u_input.d) ^ ~var_2.a), var_3), Struct_2(vec4<u32>(_wgslsmith_add_u32(select(32180u, global3.b.a.x, arg_1), _wgslsmith_div_u32(u_input.b.x, global3.e.a.x)), reverseBits(global3.e.a.x), 39190u, ~_wgslsmith_mult_u32(global3.e.a.x, 60727u)), global1.ww, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(global3.b.b.x)), _wgslsmith_f_op_f32(-global3.e.c.x)) + _wgslsmith_f_op_vec2_f32(-global1.wx)), reverseBits(vec2<i32>(arg_0.a, _wgslsmith_mult_i32(-1i, -38481i)))), func_2(arg_2, vec3<i32>(global3.b.d.x, _wgslsmith_sub_i32(arg_0.a, arg_0.a) & _wgslsmith_sub_i32(var_2.a, u_input.d), arg_2.a), Struct_3(~43769i, func_2(func_5(Struct_3(arg_0.a, global3.e, Struct_2(u_input.b, global1.xx, vec2<f32>(global1.x, global1.x), vec2<i32>(-7510i, arg_2.a)), vec4<f32>(-1956f, 1103f, 1638f, global1.x), Struct_2(vec4<u32>(u_input.b.x, 4294967295u, global3.c.a.x, u_input.c), vec2<f32>(1000f, -509f), global1.zy, vec2<i32>(0i, -65719i))), Struct_3(var_3, global3.c, global3.c, vec4<f32>(1005f, global3.b.c.x, -250f, -1224f), global3.c), Struct_1(u_input.a.x)), u_input.a, Struct_3(-2147483647i, global3.c, Struct_2(vec4<u32>(u_input.c, u_input.c, u_input.b.x, 108574u), global1.xy, vec2<f32>(1301f, global1.x), global3.b.d), global3.d, global0[_wgslsmith_index_u32(43264u, 1u)]), arg_2), Struct_2(vec4<u32>(0u, 0u, 1u, u_input.c), _wgslsmith_f_op_vec2_f32(global1.xy + global3.c.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.e.c.x, global3.c.b.x)), vec2<i32>(var_2.a, -2147483647i)), global3.d, Struct_2(global3.b.a, global3.d.wy, _wgslsmith_f_op_vec2_f32(-global3.c.c), vec2<i32>(0i, 1i) & u_input.a.zx)), func_5(Struct_3(-global3.b.d.x, global3.e, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3.b.a.yz, global3.c.a.xy), 1u)], _wgslsmith_f_op_vec4_f32(global3.d + vec4<f32>(-1681f, global1.x, -1000f, -122f)), func_2(Struct_1(2147483647i), vec3<i32>(var_3, u_input.a.x, 49833i), Struct_3(var_3, Struct_2(vec4<u32>(17043u, u_input.b.x, 519u, u_input.c), vec2<f32>(-387f, -1329f), vec2<f32>(1114f, global3.c.c.x), vec2<i32>(37416i, 0i)), global0[_wgslsmith_index_u32(25316u, 1u)], vec4<f32>(1469f, global3.b.c.x, -1304f, -810f), Struct_2(global3.c.a, vec2<f32>(247f, 602f), global3.c.c, vec2<i32>(-15885i, var_2.a))), Struct_1(arg_0.a))), Struct_3(_wgslsmith_add_i32(-2147483647i, var_2.a), func_2(Struct_1(arg_0.a), u_input.a, Struct_3(arg_0.a, Struct_2(vec4<u32>(8873u, u_input.c, 46854u, 4294967295u), global1.xy, global1.yy, u_input.a.yx), global3.b, vec4<f32>(-662f, global3.c.b.x, -211f, global3.d.x), Struct_2(vec4<u32>(4294967295u, 25808u, 44875u, 81959u), vec2<f32>(-1099f, 1394f), vec2<f32>(626f, global3.d.x), u_input.a.yx)), Struct_1(arg_0.a)), global0[_wgslsmith_index_u32(1u, 1u)], vec4<f32>(global1.x, global3.c.c.x, 1460f, -843f), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, u_input.b.x), 1u)]), arg_2)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global3.d, vec4<f32>(global3.e.b.x, global3.b.c.x, -587f, global3.c.b.x), global2[_wgslsmith_index_u32(4294967295u, 27u)])), global3.d)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.c.c.x, global3.e.c.x, -913f, global1.x))) - _wgslsmith_div_vec4_f32(global3.d, vec4<f32>(global1.x, 1131f, -434f, global3.d.x))))), global3.e);
    return var_4;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_3 {
    global0 = array<Struct_2, 1>();
    var var_0 = global3.c.b.x;
    let var_1 = func_6(Struct_1(2147483647i), !global2[_wgslsmith_index_u32(~1u, 27u)], func_5(Struct_3(~abs(u_input.d), func_2(arg_0, vec3<i32>(arg_0.a, u_input.d, -1i), Struct_3(-84333i, Struct_2(vec4<u32>(1u, arg_1, 1u, arg_1), global1.zx, vec2<f32>(1468f, -1175f), vec2<i32>(arg_0.a, arg_0.a)), Struct_2(vec4<u32>(4294967295u, u_input.b.x, 50668u, u_input.c), vec2<f32>(-169f, 270f), vec2<f32>(1616f, 1000f), vec2<i32>(u_input.d, u_input.a.x)), global3.d, global0[_wgslsmith_index_u32(0u, 1u)]), arg_0), Struct_2(global3.b.a | global3.c.a, vec2<f32>(global3.e.c.x, 1431f), vec2<f32>(global3.d.x, 882f), vec2<i32>(global3.c.d.x, 0i)), global3.d, func_2(Struct_1(-1i), vec3<i32>(arg_0.a, u_input.d, u_input.a.x), Struct_3(2147483647i, Struct_2(u_input.b, global1.xy, global1.yy, vec2<i32>(global3.b.d.x, 20422i)), global0[_wgslsmith_index_u32(u_input.c, 1u)], global3.d, Struct_2(u_input.b, vec2<f32>(global1.x, global3.b.c.x), vec2<f32>(global1.x, global1.x), global3.c.d)), Struct_1(10732i))), Struct_3(arg_0.a, global0[_wgslsmith_index_u32(min(0u, _wgslsmith_add_u32(0u, u_input.c)), 1u)], Struct_2(global3.b.a, global1.zy, _wgslsmith_f_op_vec2_f32(select(global3.c.c, global1.wy, true)), u_input.a.yx), vec4<f32>(_wgslsmith_f_op_f32(min(global3.e.b.x, global1.x)), global3.b.c.x, 216f, 113f), Struct_2(_wgslsmith_mult_vec4_u32(global3.c.a, global3.e.a), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b.b.x, global3.e.b.x) - vec2<f32>(global3.d.x, global3.d.x)), _wgslsmith_f_op_vec2_f32(global1.yx * vec2<f32>(-208f, -102f)), u_input.a.yz)), arg_0), false);
    global1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-390f - -309f)) - var_1.d.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), _wgslsmith_div_f32(var_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.c.b.x)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-465f - var_1.c.b.x))))), 319f);
    global0 = array<Struct_2, 1>();
    return var_1;
}

fn func_7(arg_0: f32, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> i32 {
    var var_0 = vec2<u32>(arg_2.c.a.x, _wgslsmith_mult_u32(min(~arg_2.b.a.x, 59449u), arg_1.a.x));
    let var_1 = arg_2.e.d.x;
    var_0 = max(arg_1.a.yw, vec2<u32>(1u, countOneBits(2520u)) | abs(~(~vec2<u32>(125162u, arg_1.a.x))));
    var var_2 = vec4<bool>(all(!(!(!vec4<bool>(true, global2[_wgslsmith_index_u32(41106u, 27u)], true, global2[_wgslsmith_index_u32(35628u, 27u)])))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x)))) == func_2(Struct_1(1i), u_input.a, arg_3, Struct_1(~arg_1.d.x)).c.x, true);
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_2.d.zxz, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.c.x, -774f, 320f) + vec3<f32>(global3.b.c.x, 823f, global1.x)))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1033f, _wgslsmith_f_op_f32(-1416f * -475f), _wgslsmith_f_op_f32(947f + 157f)))))));
    return -36182i;
}

fn func_8(arg_0: vec4<f32>, arg_1: f32, arg_2: vec2<bool>, arg_3: i32) -> bool {
    var var_0 = select(vec3<bool>(any(vec3<bool>(true, true, global2[_wgslsmith_index_u32(global3.b.a.x, 27u)])), !(arg_3 <= arg_3), false & (_wgslsmith_f_op_f32(min(global1.x, 1305f)) >= _wgslsmith_f_op_f32(select(612f, global1.x, true)))), select(select(select(!vec3<bool>(false, true, arg_2.x), select(vec3<bool>(false, arg_2.x, arg_2.x), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], arg_2.x, true), true), vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 27u)], true)), select(vec3<bool>(true, true, true), !vec3<bool>(global2[_wgslsmith_index_u32(1u, 27u)], false, arg_2.x), select(vec3<bool>(false, true, false), vec3<bool>(false, false, arg_2.x), vec3<bool>(false, true, false))), select(!arg_2.x, true, all(vec3<bool>(arg_2.x, global2[_wgslsmith_index_u32(24456u, 27u)], arg_2.x)))), !(!select(vec3<bool>(arg_2.x, true, arg_2.x), vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 27u)], true, false), true)), select(!(!vec3<bool>(false, true, arg_2.x)), select(select(vec3<bool>(false, global2[_wgslsmith_index_u32(55260u, 27u)], global2[_wgslsmith_index_u32(1u, 27u)]), vec3<bool>(arg_2.x, false, false), false), !vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], arg_2.x, false), vec3<bool>(arg_2.x, false, global2[_wgslsmith_index_u32(0u, 27u)])), all(vec3<bool>(global2[_wgslsmith_index_u32(global3.b.a.x, 27u)], true, arg_2.x)))), !vec3<bool>(global2[_wgslsmith_index_u32(min(~u_input.c, 101708u), 27u)], all(arg_2), !any(vec4<bool>(global2[_wgslsmith_index_u32(global3.c.a.x, 27u)], arg_2.x, false, arg_2.x))));
    let var_1 = !var_0.x;
    var var_2 = arg_3;
    let var_3 = arg_0.x;
    var var_4 = func_6(Struct_1(firstTrailingBit(func_7(792f, Struct_2(vec4<u32>(88545u, global3.b.a.x, u_input.c, u_input.c), global3.e.c, vec2<f32>(var_3, 895f), vec2<i32>(arg_3, global3.b.d.x)), Struct_3(1i, global0[_wgslsmith_index_u32(1u, 1u)], Struct_2(vec4<u32>(global3.b.a.x, u_input.c, 64431u, 117691u), global1.yx, global3.d.yz, u_input.a.yy), vec4<f32>(global1.x, global1.x, global1.x, var_3), Struct_2(u_input.b, vec2<f32>(1266f, var_3), global3.b.c, u_input.a.xz)), Struct_3(u_input.a.x, global3.e, global0[_wgslsmith_index_u32(u_input.b.x, 1u)], vec4<f32>(-203f, var_3, arg_1, 1140f), global0[_wgslsmith_index_u32(global3.e.a.x, 1u)])) ^ min(-1i, global3.e.d.x))), true, Struct_1(_wgslsmith_add_i32(u_input.a.x, u_input.a.x) << (func_6(func_5(Struct_3(u_input.a.x, global3.e, global3.c, global3.d, global3.c), Struct_3(71845i, global0[_wgslsmith_index_u32(11833u, 1u)], Struct_2(global3.c.a, arg_0.yx, vec2<f32>(var_3, 826f), vec2<i32>(-2147483647i, -2147483647i)), vec4<f32>(1000f, 1000f, 246f, 2030f), global0[_wgslsmith_index_u32(global3.e.a.x, 1u)]), Struct_1(u_input.d)), var_1, Struct_1(0i), true).b.a.x % 32u)), !any(select(arg_2, select(vec2<bool>(arg_2.x, arg_2.x), vec2<bool>(global2[_wgslsmith_index_u32(33292u, 27u)], true), global2[_wgslsmith_index_u32(13326u, 27u)]), select(vec2<bool>(var_1, var_0.x), vec2<bool>(global2[_wgslsmith_index_u32(global3.c.a.x, 27u)], false), vec2<bool>(false, var_0.x))))).c;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_8(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 977f, _wgslsmith_f_op_f32(-447f * -1370f), -777f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.d + global3.d) + global3.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-561f * -298f)))), !(!(!(!vec2<bool>(false, global2[_wgslsmith_index_u32(32189u, 27u)])))), _wgslsmith_mod_i32(global3.e.d.x, func_7(1000f, global0[_wgslsmith_index_u32(firstLeadingBit(countOneBits(4294967295u)), 1u)], func_1(Struct_1(2147483647i), _wgslsmith_sub_u32(u_input.b.x, u_input.c)), func_6(Struct_1(u_input.d), !global2[_wgslsmith_index_u32(global3.e.a.x, 27u)], func_5(Struct_3(u_input.a.x, Struct_2(u_input.b, vec2<f32>(global1.x, global1.x), vec2<f32>(1333f, 2567f), global3.c.d), global0[_wgslsmith_index_u32(global3.c.a.x, 1u)], vec4<f32>(global1.x, 758f, -1000f, global3.e.c.x), Struct_2(u_input.b, global1.zy, vec2<f32>(global1.x, -185f), vec2<i32>(-31344i, global3.c.d.x))), Struct_3(global3.b.d.x, global0[_wgslsmith_index_u32(0u, 1u)], Struct_2(vec4<u32>(4294967295u, 1u, u_input.c, 4294967295u), global3.c.c, vec2<f32>(1739f, -599f), vec2<i32>(global3.a, 2147483647i)), vec4<f32>(global1.x, 736f, global3.b.c.x, -1308f), global0[_wgslsmith_index_u32(58797u, 1u)]), Struct_1(-1i)), true))));
    let var_1 = func_2(func_5(Struct_3(func_3(abs(vec4<i32>(global3.b.d.x, -17931i, 1i, global3.a)), _wgslsmith_f_op_f32(-750f + global1.x)).x, func_2(func_5(Struct_3(global3.a, global3.e, Struct_2(global3.b.a, global3.d.xw, global1.ww, global3.c.d), vec4<f32>(420f, global3.d.x, global1.x, 133f), global3.e), Struct_3(global3.a, Struct_2(vec4<u32>(0u, u_input.c, 58100u, global3.c.a.x), vec2<f32>(-711f, -392f), global3.c.c, vec2<i32>(2147483647i, u_input.a.x)), Struct_2(global3.c.a, vec2<f32>(1066f, 185f), vec2<f32>(1968f, global1.x), vec2<i32>(1i, 57358i)), global3.d, global3.b), Struct_1(global3.b.d.x)), ~vec3<i32>(-31840i, u_input.d, global3.e.d.x), func_6(Struct_1(-32504i), global2[_wgslsmith_index_u32(global3.b.a.x, 27u)], Struct_1(global3.c.d.x), true), func_5(Struct_3(56413i, Struct_2(global3.c.a, global1.zx, vec2<f32>(global3.b.b.x, 891f), vec2<i32>(u_input.a.x, -18452i)), global0[_wgslsmith_index_u32(u_input.b.x, 1u)], global3.d, Struct_2(vec4<u32>(u_input.c, 10943u, 49279u, 28266u), global1.wx, vec2<f32>(-1524f, 1204f), vec2<i32>(global3.e.d.x, global3.e.d.x))), Struct_3(global3.c.d.x, global0[_wgslsmith_index_u32(u_input.c, 1u)], Struct_2(vec4<u32>(0u, global3.e.a.x, global3.b.a.x, 4294967295u), global1.yx, vec2<f32>(global1.x, 1659f), vec2<i32>(global3.c.d.x, -11308i)), vec4<f32>(1000f, global1.x, 1150f, global3.c.b.x), Struct_2(u_input.b, global3.d.wz, global1.xy, u_input.a.yz)), Struct_1(u_input.a.x))), func_6(Struct_1(23821i), var_0 || false, Struct_1(1i), false).c, vec4<f32>(_wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(global1.x * 1000f), func_1(Struct_1(u_input.d), global3.b.a.x).c.c.x, func_6(Struct_1(0i), false, Struct_1(global3.b.d.x), var_0).d.x), global0[_wgslsmith_index_u32(4294967295u, 1u)]), Struct_3(_wgslsmith_div_i32(2147483647i, func_2(Struct_1(-1i), u_input.a, Struct_3(1i, Struct_2(u_input.b, global1.yz, vec2<f32>(global1.x, global3.c.b.x), u_input.a.yz), global3.c, vec4<f32>(global3.e.b.x, 975f, global3.d.x, global1.x), global0[_wgslsmith_index_u32(global3.e.a.x, 1u)]), Struct_1(-51038i)).d.x), Struct_2(vec4<u32>(72592u, u_input.c, 0u, u_input.b.x), global1.yz, global3.b.b, select(vec2<i32>(global3.a, u_input.d), u_input.a.xx, global2[_wgslsmith_index_u32(27933u, 27u)])), func_2(Struct_1(7903i), vec3<i32>(10797i, u_input.d, u_input.a.x), func_1(Struct_1(-1i), 1u), Struct_1(global3.b.d.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(global3.d * global3.d), vec4<f32>(global1.x, global3.d.x, 1592f, global3.c.b.x))), global0[_wgslsmith_index_u32(~(~global3.b.a.x), 1u)]), Struct_1(u_input.d)), ~vec3<i32>(global3.b.d.x, u_input.d, 1i), Struct_3(max(u_input.d, -2147483647i), func_2(func_5(Struct_3(u_input.a.x, Struct_2(vec4<u32>(u_input.b.x, 1u, global3.c.a.x, 1u), vec2<f32>(global1.x, 607f), vec2<f32>(global3.c.c.x, global3.b.c.x), u_input.a.xx), Struct_2(vec4<u32>(4294967295u, global3.c.a.x, u_input.b.x, u_input.b.x), vec2<f32>(-110f, global3.b.c.x), vec2<f32>(global1.x, -476f), vec2<i32>(12790i, -2147483647i)), vec4<f32>(global1.x, global1.x, 240f, 1131f), global0[_wgslsmith_index_u32(global3.c.a.x, 1u)]), Struct_3(1i, global3.b, Struct_2(global3.e.a, vec2<f32>(global1.x, global3.b.b.x), global3.e.b, vec2<i32>(0i, u_input.a.x)), vec4<f32>(-316f, global3.b.b.x, -715f, -2679f), global3.e), Struct_1(u_input.d)), abs(select(vec3<i32>(u_input.a.x, global3.e.d.x, -13708i), u_input.a, global2[_wgslsmith_index_u32(u_input.c, 27u)])), Struct_3(min(-17081i, -2147483647i), func_2(Struct_1(0i), vec3<i32>(3885i, 2147483647i, u_input.d), Struct_3(1i, Struct_2(vec4<u32>(global3.e.a.x, 14209u, global3.b.a.x, 0u), global1.wx, vec2<f32>(global3.d.x, global3.e.b.x), vec2<i32>(15665i, -7266i)), global3.b, global3.d, global0[_wgslsmith_index_u32(0u, 1u)]), Struct_1(global3.b.d.x)), Struct_2(vec4<u32>(4294967295u, global3.b.a.x, 1u, 47784u), global3.e.c, vec2<f32>(global1.x, global3.d.x), vec2<i32>(-1i, -50839i)), vec4<f32>(global3.d.x, global3.e.c.x, global1.x, 1000f), Struct_2(global3.e.a, vec2<f32>(global3.b.b.x, global3.e.c.x), global1.xw, vec2<i32>(-2147483647i, -15699i))), func_5(func_6(Struct_1(1i), false, Struct_1(u_input.d), true), func_6(Struct_1(u_input.a.x), global2[_wgslsmith_index_u32(u_input.c, 27u)], Struct_1(u_input.a.x), global2[_wgslsmith_index_u32(19263u, 27u)]), Struct_1(-1i))), Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(0u, global3.b.a.x, 32966u, 15640u), vec4<u32>(u_input.b.x, 30736u, 0u, u_input.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.xz)), _wgslsmith_f_op_vec2_f32(global3.c.b + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.d.x, global1.x))), u_input.a.zz), global3.d, func_1(func_5(Struct_3(u_input.a.x, global3.c, global0[_wgslsmith_index_u32(45330u, 1u)], global3.d, global0[_wgslsmith_index_u32(global3.c.a.x, 1u)]), Struct_3(54039i, Struct_2(vec4<u32>(global3.e.a.x, global3.e.a.x, 4294967295u, u_input.b.x), vec2<f32>(1311f, -905f), global1.wz, u_input.a.xz), global3.c, vec4<f32>(175f, global1.x, 1000f, -2202f), Struct_2(vec4<u32>(1u, 11551u, u_input.c, u_input.b.x), vec2<f32>(global3.b.b.x, global3.b.c.x), global3.d.yx, vec2<i32>(20288i, u_input.a.x))), Struct_1(0i)), ~1u).b), func_5(func_1(func_5(Struct_3(-19029i, global0[_wgslsmith_index_u32(u_input.b.x, 1u)], global3.b, vec4<f32>(1763f, -1863f, -443f, 583f), Struct_2(global3.e.a, vec2<f32>(global3.e.b.x, -1397f), vec2<f32>(-1244f, 132f), u_input.a.xx)), func_1(Struct_1(u_input.a.x), 4294967295u), Struct_1(-1i)), ~(~4294967295u)), func_1(Struct_1(1i), _wgslsmith_clamp_u32(u_input.b.x, 0u, select(0u, global3.b.a.x, true))), Struct_1(u_input.a.x))).b.x;
    var var_2 = global3.e;
    let var_3 = vec4<u32>(~abs(var_2.a.x) | u_input.b.x, u_input.c, ~(~0u), countOneBits(global3.c.a.x));
    let var_4 = select(!(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], global2[_wgslsmith_index_u32(u_input.b.x, 27u)], global2[_wgslsmith_index_u32(var_2.a.x, 27u)]))), select(select(select(!vec3<bool>(var_0, global2[_wgslsmith_index_u32(45717u, 27u)], false), select(vec3<bool>(global2[_wgslsmith_index_u32(var_3.x, 27u)], var_0, true), vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, true, false)), all(vec3<bool>(var_0, true, true))), select(select(vec3<bool>(true, var_0, global2[_wgslsmith_index_u32(74690u, 27u)]), vec3<bool>(false, false, global2[_wgslsmith_index_u32(global3.e.a.x, 27u)]), var_0), !vec3<bool>(false, var_0, global2[_wgslsmith_index_u32(4294967295u, 27u)]), global2[_wgslsmith_index_u32(func_1(Struct_1(var_2.d.x), 4294967295u).e.a.x, 27u)]), select(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.c, 27u)], true, var_0), vec3<bool>(global2[_wgslsmith_index_u32(9872u, 27u)], global2[_wgslsmith_index_u32(0u, 27u)], false), vec3<bool>(true, var_0, global2[_wgslsmith_index_u32(12453u, 27u)])), vec3<bool>(global2[_wgslsmith_index_u32(1008u, 27u)], false, var_0), global2[_wgslsmith_index_u32(9699u, 27u)])), vec3<bool>(all(!vec3<bool>(var_0, global2[_wgslsmith_index_u32(42186u, 27u)], true)), true, _wgslsmith_f_op_f32(-var_2.c.x) <= _wgslsmith_div_f32(global3.c.b.x, 277f)), !select(vec3<bool>(true, global2[_wgslsmith_index_u32(global3.c.a.x, 27u)], false), select(vec3<bool>(true, false, var_0), vec3<bool>(var_0, false, var_0), var_0), false)), select(vec3<bool>(any(!vec3<bool>(true, var_0, global2[_wgslsmith_index_u32(var_2.a.x, 27u)])), global2[_wgslsmith_index_u32(~4294967295u, 27u)], true), select(select(vec3<bool>(false, true, var_0), !vec3<bool>(var_0, global2[_wgslsmith_index_u32(17057u, 27u)], true), true), select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 27u)], var_0, global2[_wgslsmith_index_u32(28522u, 27u)]), !vec3<bool>(var_0, global2[_wgslsmith_index_u32(5208u, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)]), select(vec3<bool>(global2[_wgslsmith_index_u32(var_2.a.x, 27u)], true, var_0), vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(0u, 27u)])), select(!vec3<bool>(var_0, var_0, global2[_wgslsmith_index_u32(1081u, 27u)]), select(vec3<bool>(false, global2[_wgslsmith_index_u32(0u, 27u)], false), vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, false, false)), vec3<bool>(false, var_0, var_0))), select(vec3<bool>(var_2.d.x == var_2.d.x, all(vec2<bool>(true, global2[_wgslsmith_index_u32(var_2.a.x, 27u)])), var_0), !(!vec3<bool>(global2[_wgslsmith_index_u32(1u, 27u)], true, var_0)), !all(vec2<bool>(false, false)))));
    global4 = var_3.x;
    global2 = array<bool, 27>();
    let var_5 = max(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(func_6(Struct_1(13796i), any(vec4<bool>(var_4.x, false, var_4.x, false)), Struct_1(u_input.d), var_4.x).e.d, global3.b.d), (_wgslsmith_div_vec2_i32(u_input.a.zz, global3.e.d) & vec2<i32>(u_input.d, global3.c.d.x)) << (var_2.a.zx % vec2<u32>(32u))), reverseBits(countOneBits(vec2<i32>(var_2.d.x, 0i))));
    var var_6 = Struct_2(~_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global3.c.a.x, 0u, var_2.a.x, 64786u), vec4<u32>(0u, 52386u, 4294967295u, var_2.a.x)) & vec4<u32>(u_input.c, var_2.a.x, var_3.x, var_2.a.x), vec4<u32>(1u, 76308u ^ var_3.x, ~u_input.b.x, func_1(Struct_1(var_5.x), var_2.a.x).e.a.x)), global1.wz, global1.yy, func_3(~_wgslsmith_div_vec4_i32(-vec4<i32>(0i, 1i, -2147483647i, global3.a), _wgslsmith_mult_vec4_i32(vec4<i32>(-29714i, 24913i, -2147483647i, u_input.a.x), vec4<i32>(var_2.d.x, -2147483647i, 24426i, 0i))), global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-487f, _wgslsmith_f_op_f32(step(var_6.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.d.x, -658f))))));
}

