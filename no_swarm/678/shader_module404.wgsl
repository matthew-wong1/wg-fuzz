struct Struct_1 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: vec4<f32>,
    d: f32,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_3,
    d: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: i32,
    e: i32,
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

var<private> global0: array<vec4<i32>, 18>;

var<private> global1: vec2<f32>;

var<private> global2: Struct_2 = Struct_2(true, 4294967295u, 72898u, Struct_1(vec4<u32>(6636u, 1u, 4294967295u, 4294967295u), vec4<i32>(i32(-2147483648), -1i, 34252i, -1i), -1231f, 1000f, vec2<bool>(false, false)), Struct_1(vec4<u32>(82181u, 52680u, 36594u, 31587u), vec4<i32>(68531i, i32(-2147483648), 2147483647i, 0i), -827f, 889f, vec2<bool>(true, true)));

var<private> global3: Struct_3;

var<private> global4: vec2<u32> = vec2<u32>(0u, 1u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2) -> bool {
    let var_0 = Struct_4(Struct_1(~vec4<u32>(firstTrailingBit(global3.a), _wgslsmith_mult_u32(1u, global2.c), firstTrailingBit(global3.a), ~0u), ~_wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(u_input.a.x, global2.e.b.x, u_input.a.x, 2147483647i)), ~arg_1.e.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1489f)) * global3.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_2.e.c)), _wgslsmith_f_op_f32(trunc(2027f))), vec2<bool>(true, false)), Struct_2(arg_1.a, min(~(arg_2.c << (0u % 32u)), 57642u), 1u, Struct_1(~(~arg_1.e.a), vec4<i32>(global3.e.x, global3.e.x, arg_1.d.b.x, 0i) >> (vec4<u32>(0u, global4.x, arg_2.b, 65106u) % vec4<u32>(32u)), -1896f, 172f, arg_2.d.e), Struct_1(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_1.e.a, arg_2.d.a, vec4<u32>(global2.c, 0u, global4.x, 4294967295u)), reverseBits(global2.e.a)), vec4<i32>(~arg_2.e.b.x, _wgslsmith_dot_vec4_i32(global0[_wgslsmith_index_u32(0u, 18u)], vec4<i32>(global2.d.b.x, 2147483647i, 2147483647i, u_input.e)), -arg_1.e.b.x, 51945i), -1707f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f + 107f), 938f, arg_2.e.b.x >= -2147483647i)), arg_2.d.e)), Struct_3(arg_2.c, _wgslsmith_dot_vec3_i32(-arg_2.d.b.xyw, global2.d.b.wwx) <= ~(i32(-1i) * -2147483647i), _wgslsmith_f_op_vec4_f32(trunc(global3.c)), _wgslsmith_f_op_f32(abs(-1282f)), global3.e), _wgslsmith_f_op_f32(select(arg_2.d.d, _wgslsmith_f_op_f32(floor(-652f)), all(!select(vec3<bool>(false, false, arg_1.d.e.x), vec3<bool>(false, arg_0, false), vec3<bool>(false, true, arg_2.d.e.x))))));
    var var_1 = var_0.c;
    let var_2 = var_1.e;
    global2 = var_0.b;
    global2 = arg_2;
    return all(select(!vec4<bool>(true, all(vec3<bool>(global2.d.e.x, arg_1.a, var_1.b)), true, global3.b || false), !select(select(vec4<bool>(false, arg_2.e.e.x, true, arg_1.d.e.x), vec4<bool>(false, arg_1.e.e.x, arg_1.a, false), vec4<bool>(arg_0, false, arg_0, false)), select(vec4<bool>(false, true, true, global2.d.e.x), vec4<bool>(false, global3.b, global3.b, global3.b), global2.a), select(vec4<bool>(arg_0, true, var_0.a.e.x, false), vec4<bool>(true, var_0.a.e.x, global3.b, true), true)), !(!(!vec4<bool>(var_0.b.d.e.x, arg_2.a, var_1.b, arg_2.a)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_4) -> u32 {
    let var_0 = Struct_5(arg_2.c, global3.e);
    global4 = ~(~vec2<u32>(reverseBits(u_input.b.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(global3.a, 0u, 4294967295u, arg_2.c.a), global2.e.a)));
    global4 = arg_1.xy;
    global3 = Struct_3(8878u, any(vec2<bool>(all(!vec3<bool>(true, global3.b, false)), false)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(arg_2.c.c)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_2.c.c - vec4<f32>(-748f, global3.d, -1230f, -1000f)), vec4<f32>(-826f, 913f, -1685f, global2.e.c))))))), -1509f, global3.e >> (abs(~(~vec2<u32>(25146u, 11023u))) % vec2<u32>(32u)));
    var var_1 = select(select(select(!select(global2.e.e, vec2<bool>(arg_0.e.x, true), true), vec2<bool>(any(vec4<bool>(true, var_0.a.b, global2.e.e.x, arg_2.c.b)), true), vec2<bool>(true, true)), select(vec2<bool>(true, global3.b), arg_0.e, true), select(!(!arg_0.e), vec2<bool>(!global2.d.e.x, var_0.a.e.x == -1i), true)), arg_2.b.d.e, false);
    return _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(55208u, abs(~global3.a)), reverseBits(~4294967295u)), 4294967295u);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(global3.c.xwz + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(global3.c.wzw)) * global3.c.xwy)))));
    global3 = Struct_3(firstTrailingBit(_wgslsmith_div_u32(1u >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global2.b, global4.x), vec2<u32>(global3.a, 0u)) % 32u), 44740u)), false, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(947f - global1.x) * global1.x), _wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(-387f, global3.c.x)))), _wgslsmith_f_op_f32(select(global1.x, -930f, any(select(vec2<bool>(true, global2.e.e.x), vec2<bool>(global3.b, global2.e.e.x), global2.e.e.x)))), -538f, var_0.x), _wgslsmith_f_op_f32(-656f * -2026f), vec2<i32>(-1i) * -(~vec2<i32>(1i, -1i)));
    global0 = array<vec4<i32>, 18>();
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global3.c.yz)));
    let var_2 = arg_1;
    return ~_wgslsmith_mult_u32(global2.e.a.x, 64702u) >= func_4(Struct_1(vec4<u32>(~global3.a, arg_0.x, ~arg_0.x, 1u), abs(global0[_wgslsmith_index_u32(~1070u, 18u)]), -1841f, _wgslsmith_f_op_f32(-global1.x), vec2<bool>(all(vec4<bool>(global3.b, global3.b, true, global3.b)), func_3(global2.a, Struct_2(true, global4.x, 25624u, Struct_1(global2.e.a, vec4<i32>(61417i, global3.e.x, arg_1.x, u_input.e), global1.x, -207f, global2.d.e), Struct_1(global2.d.a, global2.d.b, global3.c.x, var_1.x, vec2<bool>(false, global3.b))), Struct_2(false, 6399u, 1u, Struct_1(vec4<u32>(4294967295u, 4294967295u, 45827u, u_input.b.x), vec4<i32>(1i, 64940i, u_input.e, 28284i), global2.e.d, -425f, global2.e.e), Struct_1(global2.e.a, vec4<i32>(global2.e.b.x, u_input.e, var_2.x, -2147483647i), var_0.x, global1.x, global2.d.e))))), ~global2.e.a, Struct_4(global2.d, Struct_2(all(vec3<bool>(global2.d.e.x, true, global2.a)), 1u << (1u % 32u), u_input.c.x, global2.d, global2.e), Struct_3(~u_input.b.x, any(vec4<bool>(false, true, global2.d.e.x, true)), _wgslsmith_f_op_vec4_f32(global3.c * global3.c), _wgslsmith_f_op_f32(abs(global1.x)), vec2<i32>(1i, 1i)), _wgslsmith_f_op_f32(var_1.x - 1130f)));
}

fn func_5(arg_0: vec3<bool>, arg_1: f32) -> Struct_2 {
    let var_0 = vec4<i32>(-35422i, abs(-20632i), i32(-1i) * -16204i, global2.e.b.x);
    var var_1 = Struct_3(_wgslsmith_add_u32(global3.a, 1u), all(!select(arg_0, select(arg_0, arg_0, vec3<bool>(true, arg_0.x, false)), arg_0)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.d, 899f, global1.x, -1109f), vec4<f32>(global3.d, -285f, -1543f, 376f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.e.d, arg_1)), global2.e.b.wy);
    global4 = countOneBits(~countOneBits(vec2<u32>(~global2.c, _wgslsmith_mult_u32(101155u, 17921u))));
    global0 = array<vec4<i32>, 18>();
    global1 = _wgslsmith_f_op_vec2_f32(global3.c.xx + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(global3.c.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.c.xz - vec2<f32>(-314f, 618f)))))));
    return Struct_2(false, 1u, _wgslsmith_dot_vec4_u32(max(_wgslsmith_sub_vec4_u32(vec4<u32>(85095u, 34586u, u_input.c.x, global4.x) >> (global2.d.a % vec4<u32>(32u)), ~global2.e.a), _wgslsmith_mult_vec4_u32(vec4<u32>(global4.x, u_input.b.x, u_input.b.x, global2.d.a.x), ~vec4<u32>(4294967295u, 27792u, var_1.a, global3.a))), ~(~global2.e.a)), global2.e, Struct_1(global2.e.a, -vec4<i32>(~(-21382i), global3.e.x, 1i, var_1.e.x), _wgslsmith_f_op_f32(-var_1.d), _wgslsmith_f_op_f32(f32(-1f) * -2276f), arg_0.zy));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<u32>, arg_2: i32, arg_3: i32) -> bool {
    let var_0 = Struct_4(global2.e, func_5(vec3<bool>(true, true, func_2(vec2<u32>(arg_1.x, 4294967295u), _wgslsmith_mult_vec2_i32(global3.e, vec2<i32>(arg_3, u_input.e)))), global3.d), Struct_3(0u, global3.b, _wgslsmith_f_op_vec4_f32(select(global3.c, _wgslsmith_f_op_vec4_f32(global3.c * _wgslsmith_f_op_vec4_f32(vec4<f32>(-266f, global2.d.c, 483f, global1.x) * vec4<f32>(arg_0.x, global1.x, -205f, -1859f))), !select(vec4<bool>(true, global2.a, true, global3.b), vec4<bool>(global2.d.e.x, global3.b, true, true), false))), global2.d.d, u_input.a.xw), global1.x);
    global1 = var_0.c.c.xw;
    global2 = func_5(vec3<bool>(_wgslsmith_mult_i32(func_5(vec3<bool>(false, global3.b, var_0.a.e.x), global1.x).d.b.x, global2.e.b.x) == countOneBits(firstTrailingBit(-21120i)), false, global2.a || true), global3.c.x);
    var var_1 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(~0i, 1i), countOneBits(var_0.a.b.ww)), u_input.a.yw) | -5952i;
    let var_2 = _wgslsmith_f_op_f32(func_5(!(!select(vec3<bool>(var_0.c.b, true, global2.a), vec3<bool>(var_0.b.e.e.x, global3.b, true), vec3<bool>(false, true, global2.e.e.x))), _wgslsmith_f_op_f32(min(var_0.b.e.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.d, 450f)) - _wgslsmith_f_op_f32(arg_0.x - 241f))))).d.c - global2.d.c);
    return func_2(u_input.b, reverseBits(-_wgslsmith_mod_vec2_i32(u_input.a.yz, global3.e) ^ vec2<i32>(_wgslsmith_add_i32(0i, 62787i), _wgslsmith_dot_vec4_i32(var_0.a.b, vec4<i32>(-50321i, u_input.a.x, arg_3, arg_2)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!(!(!vec3<bool>(global2.d.e.x, global2.d.e.x, true))), select(vec3<bool>(func_1(global3.c.ww, ~vec3<u32>(global2.d.a.x, 111605u, global2.d.a.x), _wgslsmith_add_i32(u_input.a.x, u_input.d), -18007i), global2.a, func_3(global3.e.x <= u_input.a.x, func_5(vec3<bool>(global3.b, global2.d.e.x, true), global3.d), Struct_2(global3.b, global4.x, global4.x, Struct_1(global2.d.a, vec4<i32>(0i, 1i, -38222i, -13883i), 272f, 2712f, vec2<bool>(true, global3.b)), global2.e))), !(!(!vec3<bool>(false, false, global3.b))), any(!vec3<bool>(false, false, global2.d.e.x))), true);
    var var_1 = ~0u;
    var_1 = ~_wgslsmith_clamp_u32(~countOneBits(global4.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global3.a, 4294967295u) ^ global2.e.a.xzx, vec3<u32>(5093u, global4.x, 4294967295u)), global3.a) << (global4.x % 32u);
    let var_2 = select(_wgslsmith_dot_vec3_u32(global2.e.a.zxw, ~countOneBits(global2.d.a.yxz)), ~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 0u, 64095u)), vec3<u32>(12732u, u_input.c.x, 68103u)), false) >> (0u % 32u);
    var var_3 = 4294967295u;
    let var_4 = vec3<i32>(min(u_input.d ^ countOneBits(global2.e.b.x), -_wgslsmith_dot_vec4_i32(vec4<i32>(18852i, global2.e.b.x, global2.d.b.x, global3.e.x), vec4<i32>(global2.d.b.x, -2335i, -11585i, global3.e.x) ^ u_input.a)), 2147483647i, 43187i);
    let x = u_input.a;
    s_output = StorageBuffer(~(~(48780u ^ _wgslsmith_mult_u32(0u, u_input.c.x))));
}

