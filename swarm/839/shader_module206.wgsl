struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2147483647i, vec3<bool>(true, false, false));

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 25> = array<Struct_2, 25>(Struct_2(vec3<u32>(3821u, 8560u, 1u), vec2<f32>(2893f, -184f), Struct_1(-9979i, vec3<bool>(true, true, false)), Struct_1(1i, vec3<bool>(false, true, true))), Struct_2(vec3<u32>(0u, 1u, 48182u), vec2<f32>(-153f, 468f), Struct_1(1i, vec3<bool>(false, true, true)), Struct_1(0i, vec3<bool>(true, true, false))), Struct_2(vec3<u32>(28860u, 1u, 92u), vec2<f32>(361f, 308f), Struct_1(-1i, vec3<bool>(false, false, true)), Struct_1(-2702i, vec3<bool>(true, false, true))), Struct_2(vec3<u32>(19007u, 0u, 4294967295u), vec2<f32>(1171f, 425f), Struct_1(-50059i, vec3<bool>(true, true, true)), Struct_1(-21245i, vec3<bool>(true, true, false))), Struct_2(vec3<u32>(63316u, 13578u, 0u), vec2<f32>(748f, 526f), Struct_1(-1292i, vec3<bool>(true, false, true)), Struct_1(-24981i, vec3<bool>(false, true, true))), Struct_2(vec3<u32>(4294967295u, 1u, 5068u), vec2<f32>(532f, 1000f), Struct_1(0i, vec3<bool>(false, true, true)), Struct_1(29720i, vec3<bool>(false, false, false))), Struct_2(vec3<u32>(20174u, 4294967295u, 42180u), vec2<f32>(258f, 1312f), Struct_1(i32(-2147483648), vec3<bool>(false, false, true)), Struct_1(i32(-2147483648), vec3<bool>(true, true, false))), Struct_2(vec3<u32>(1u, 300u, 0u), vec2<f32>(-318f, -1466f), Struct_1(0i, vec3<bool>(true, true, true)), Struct_1(2147483647i, vec3<bool>(false, true, false))), Struct_2(vec3<u32>(55368u, 0u, 8705u), vec2<f32>(665f, -1176f), Struct_1(2147483647i, vec3<bool>(false, true, false)), Struct_1(-30468i, vec3<bool>(false, true, true))), Struct_2(vec3<u32>(41384u, 103041u, 61875u), vec2<f32>(-695f, -2106f), Struct_1(1i, vec3<bool>(true, false, false)), Struct_1(i32(-2147483648), vec3<bool>(false, true, true))), Struct_2(vec3<u32>(62900u, 4294967295u, 8231u), vec2<f32>(-404f, 314f), Struct_1(67000i, vec3<bool>(false, false, false)), Struct_1(0i, vec3<bool>(false, true, true))), Struct_2(vec3<u32>(63902u, 21668u, 0u), vec2<f32>(601f, 765f), Struct_1(42986i, vec3<bool>(true, false, true)), Struct_1(i32(-2147483648), vec3<bool>(false, false, true))), Struct_2(vec3<u32>(0u, 47231u, 1u), vec2<f32>(311f, -745f), Struct_1(1i, vec3<bool>(false, false, false)), Struct_1(-59201i, vec3<bool>(false, false, false))), Struct_2(vec3<u32>(54962u, 96011u, 39206u), vec2<f32>(-2021f, 1307f), Struct_1(-1i, vec3<bool>(false, false, true)), Struct_1(12378i, vec3<bool>(false, true, false))), Struct_2(vec3<u32>(4294967295u, 24584u, 0u), vec2<f32>(-1000f, -186f), Struct_1(65380i, vec3<bool>(false, false, false)), Struct_1(-30560i, vec3<bool>(true, true, true))), Struct_2(vec3<u32>(1u, 76021u, 4294967295u), vec2<f32>(-1059f, 956f), Struct_1(-30611i, vec3<bool>(true, true, false)), Struct_1(0i, vec3<bool>(false, false, true))), Struct_2(vec3<u32>(1u, 1u, 1u), vec2<f32>(-797f, 1000f), Struct_1(2147483647i, vec3<bool>(false, true, true)), Struct_1(-39966i, vec3<bool>(true, false, true))), Struct_2(vec3<u32>(0u, 0u, 1u), vec2<f32>(-713f, -2051f), Struct_1(-1i, vec3<bool>(false, false, true)), Struct_1(19986i, vec3<bool>(true, false, true))), Struct_2(vec3<u32>(74267u, 15350u, 4294967295u), vec2<f32>(298f, -3298f), Struct_1(-16444i, vec3<bool>(false, true, true)), Struct_1(i32(-2147483648), vec3<bool>(true, true, false))), Struct_2(vec3<u32>(4294967295u, 70304u, 15286u), vec2<f32>(-1170f, 893f), Struct_1(0i, vec3<bool>(false, false, true)), Struct_1(-1436i, vec3<bool>(false, true, true))), Struct_2(vec3<u32>(5488u, 4294967295u, 0u), vec2<f32>(-1166f, 884f), Struct_1(1i, vec3<bool>(false, false, true)), Struct_1(i32(-2147483648), vec3<bool>(false, true, true))), Struct_2(vec3<u32>(0u, 0u, 24369u), vec2<f32>(890f, 1635f), Struct_1(9160i, vec3<bool>(true, false, true)), Struct_1(1i, vec3<bool>(false, false, true))), Struct_2(vec3<u32>(44158u, 14958u, 2596u), vec2<f32>(-509f, -1923f), Struct_1(82062i, vec3<bool>(true, false, false)), Struct_1(58358i, vec3<bool>(true, false, false))), Struct_2(vec3<u32>(1u, 0u, 1u), vec2<f32>(-192f, -1184f), Struct_1(-1i, vec3<bool>(false, true, true)), Struct_1(1i, vec3<bool>(false, false, false))), Struct_2(vec3<u32>(13751u, 1u, 1u), vec2<f32>(874f, 1945f), Struct_1(21900i, vec3<bool>(false, false, true)), Struct_1(29563i, vec3<bool>(false, true, false))));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_mod_i32(i32(-1i) * -2147483647i, global0.a), select(!global0.b, vec3<bool>(true, any(vec2<bool>(arg_0.d.b.x, global1.d.b.x)), !all(global1.d.b)), arg_0.c.b));
    var_0 = Struct_1(-15408i, !vec3<bool>(70997u <= (2869u ^ u_input.b.x), _wgslsmith_add_u32(6018u, arg_0.a.x) >= u_input.b.x, false));
    let var_1 = -vec3<i32>(i32(-1i) * -u_input.d, ~10377i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_add_i32(40887i, global0.a), -11308i, -4731i), reverseBits(-u_input.c)));
    var var_2 = Struct_1(~firstLeadingBit(~var_0.a), global1.d.b);
    var_0 = Struct_1(-2147483647i, !vec3<bool>(all(select(global0.b, vec3<bool>(false, global1.c.b.x, true), vec3<bool>(false, global0.b.x, global1.c.b.x))), var_0.b.x == any(vec3<bool>(false, true, global0.b.x)), var_2.b.x));
    return vec3<u32>(reverseBits(_wgslsmith_sub_u32(~arg_0.a.x, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), global1.a), global1.a.x))), ~4294967295u ^ arg_0.a.x, ~(~_wgslsmith_dot_vec3_u32(arg_0.a, vec3<u32>(arg_0.a.x, 4294967295u, u_input.a)) | 4294967295u));
}

fn func_2() -> vec2<bool> {
    var var_0 = func_3(Struct_2(select(_wgslsmith_mod_vec3_u32(min(global1.a, global1.a), global1.a), vec3<u32>(u_input.a, _wgslsmith_mult_u32(4294967295u, u_input.b.x), _wgslsmith_add_u32(0u, u_input.b.x)), select(global1.c.b, vec3<bool>(true, false, global0.b.x), true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.b + global1.b))), Struct_1(-9728i, global1.c.b), global1.c));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1382f - 2422f))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(global1.b.x))))));
    var var_2 = global1.d;
    let var_3 = global1.a.x;
    var var_4 = firstLeadingBit(global1.a);
    return !vec2<bool>(select(!global0.b.x, true, all(var_2.b)) != true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)) < _wgslsmith_f_op_f32(abs(global1.b.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    global0 = arg_2.d;
    var var_0 = global0.a;
    global2 = array<Struct_2, 25>();
    var var_1 = select(select(!select(vec4<bool>(global1.c.b.x, arg_1.d.b.x, true, true), select(vec4<bool>(arg_0.x, arg_1.c.b.x, false, false), vec4<bool>(true, global0.b.x, false, false), false), arg_3.b.x != true), select(!vec4<bool>(false, arg_1.d.b.x, arg_2.d.b.x, true), vec4<bool>(arg_2.c.a < 43085i, arg_1.c.a >= -33882i, arg_1.d.b.x, !arg_3.b.x), select(!vec4<bool>(arg_3.b.x, global1.c.b.x, arg_3.b.x, global0.b.x), !vec4<bool>(arg_2.d.b.x, false, arg_3.b.x, false), true)), select(select(select(vec4<bool>(global1.c.b.x, true, true, global0.b.x), vec4<bool>(true, arg_0.x, false, global0.b.x), vec4<bool>(true, true, true, true)), !vec4<bool>(false, true, global0.b.x, true), all(global1.d.b)), vec4<bool>(arg_0.x, false, func_2().x, false), any(!vec4<bool>(global1.d.b.x, false, global0.b.x, false)))), vec4<bool>(!any(global0.b), !arg_2.d.b.x, global0.b.x, false), vec4<bool>(_wgslsmith_f_op_f32(-arg_2.b.x) != _wgslsmith_f_op_f32(arg_2.b.x + _wgslsmith_div_f32(404f, 594f)), global0.b.x, global0.b.x, _wgslsmith_add_u32(firstLeadingBit(0u), _wgslsmith_mod_u32(arg_2.a.x, arg_2.a.x)) >= arg_2.a.x));
    let var_2 = arg_2.a.x;
    return global1.c;
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: i32) -> bool {
    var var_0 = global1.c;
    var_0 = func_4(select(arg_1.c.b.yz, func_2(), any(!select(vec4<bool>(false, false, global0.b.x, global0.b.x), vec4<bool>(true, false, var_0.b.x, false), global0.b.x))), global2[_wgslsmith_index_u32(~1u, 25u)], global2[_wgslsmith_index_u32(arg_1.a.x, 25u)], arg_1.c);
    let var_1 = ~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(arg_2.zz >> (u_input.b % vec2<u32>(32u)), -arg_2.zx), u_input.c.xy), ~_wgslsmith_div_vec2_i32(~arg_2.xx, vec2<i32>(-2147483647i, -2147483647i)));
    global2 = array<Struct_2, 25>();
    var var_2 = arg_1.c;
    return any(vec2<bool>(true, 0u >= ~arg_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 25>();
    global0 = Struct_1(max(global0.a, 35532i << (u_input.a % 32u)), vec3<bool>(!any(!vec2<bool>(true, global1.d.b.x)), false, !(all(global0.b) && false)));
    let var_0 = !select(vec4<bool>(-113f > _wgslsmith_f_op_f32(sign(-1094f)), _wgslsmith_f_op_f32(-global1.b.x) >= global1.b.x, func_1(_wgslsmith_div_vec4_f32(vec4<f32>(618f, global1.b.x, -877f, 210f), vec4<f32>(global1.b.x, 154f, 1952f, global1.b.x)), global2[_wgslsmith_index_u32(~44164u, 25u)], min(u_input.c, u_input.c), u_input.d | u_input.d), all(!global1.d.b)), select(vec4<bool>(global1.c.b.x == false, global0.b.x, all(vec2<bool>(global1.c.b.x, false)), func_2().x), !(!vec4<bool>(global0.b.x, global1.c.b.x, false, true)), select(select(vec4<bool>(false, false, global1.c.b.x, global0.b.x), vec4<bool>(global1.c.b.x, false, global0.b.x, global1.d.b.x), global1.c.b.x), vec4<bool>(global1.d.b.x, true, false, true), global1.c.b.x)), !select(!vec4<bool>(true, true, global1.c.b.x, global1.c.b.x), select(vec4<bool>(true, global0.b.x, false, true), vec4<bool>(true, true, false, global0.b.x), global1.d.b.x), !vec4<bool>(global0.b.x, global1.d.b.x, false, global1.c.b.x)));
    global0 = func_4(vec2<bool>(global0.b.x, true), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a, 48908u), _wgslsmith_div_u32(abs(0u), _wgslsmith_add_u32(global1.a.x, u_input.a) | countOneBits(3421u))), 25u)], Struct_2(vec3<u32>(func_3(Struct_2(global1.a, global1.b, Struct_1(0i, global1.c.b), Struct_1(global0.a, vec3<bool>(global0.b.x, global1.d.b.x, global1.c.b.x)))).x, global1.a.x, _wgslsmith_add_u32(u_input.b.x, 72u)) >> (global1.a % vec3<u32>(32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(398f, global1.b.x)) - _wgslsmith_f_op_vec2_f32(-global1.b)), _wgslsmith_f_op_vec2_f32(global1.b - _wgslsmith_f_op_vec2_f32(vec2<f32>(-109f, 1387f) - global1.b))), global1.d, func_4(!vec2<bool>(global1.d.b.x, false), global2[_wgslsmith_index_u32(countOneBits(_wgslsmith_clamp_u32(4294967295u, 0u, 45736u)), 25u)], global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, u_input.b.x, global1.a.x, global1.a.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.a.x, u_input.b.x, 10038u, u_input.a), vec4<u32>(1u, global1.a.x, 4294967295u, u_input.b.x))), 25u)], Struct_1(-global1.c.a, !var_0.wxy))), Struct_1(-80109i, vec3<bool>(global0.b.x, true, all(!global0.b.xx))));
    var var_1 = global2[_wgslsmith_index_u32(4294967295u | (_wgslsmith_clamp_u32(~min(global1.a.x, global1.a.x), _wgslsmith_mod_u32(global1.a.x, _wgslsmith_mod_u32(u_input.a, 1u)), 1111u) | countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.x, 4294967295u), u_input.b))), 25u)];
    var_1 = Struct_2(global1.a, vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(600f, _wgslsmith_f_op_f32(trunc(global1.b.x))))))), Struct_1(1i, func_4(vec2<bool>(!var_1.c.b.x, true), global2[_wgslsmith_index_u32(func_3(Struct_2(var_1.a, global1.b, var_1.d, Struct_1(0i, vec3<bool>(global1.d.b.x, var_0.x, var_0.x)))).x, 25u)], global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, 112u, 13860u)), 25u)], Struct_1(-56134i, !vec3<bool>(global0.b.x, var_1.d.b.x, global0.b.x))).b), Struct_1(u_input.c.x, vec3<bool>(global0.b.x, var_1.d.b.x | !global1.c.b.x, false)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2174f), -1228f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1017f + _wgslsmith_f_op_f32(min(-2242f, 481f))), _wgslsmith_f_op_f32(step(var_1.b.x, -311f)))));
    var var_3 = func_4(func_2(), global2[_wgslsmith_index_u32(2147u, 25u)], Struct_2(select(~vec3<u32>(4294967295u, 17178u, 1u), var_1.a, !global0.b.x) >> (~vec3<u32>(global1.a.x, u_input.b.x, 54905u) % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global1.b.x)))), Struct_1(0i, !select(global1.c.b, vec3<bool>(false, var_0.x, global0.b.x), global1.c.b)), Struct_1(1i, func_4(!var_1.d.b.xx, global2[_wgslsmith_index_u32(~var_1.a.x, 25u)], global2[_wgslsmith_index_u32(var_1.a.x, 25u)], global1.d).b)), func_4(!global0.b.yz, Struct_2(var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, global1.b.x))), Struct_1(46357i >> (global1.a.x % 32u), global1.c.b), Struct_1(_wgslsmith_mod_i32(2147483647i, -46030i), func_4(vec2<bool>(var_1.d.b.x, false), global2[_wgslsmith_index_u32(4294967295u, 25u)], Struct_2(vec3<u32>(u_input.b.x, 1u, u_input.a), vec2<f32>(var_1.b.x, -414f), var_1.d, Struct_1(40276i, var_0.zyy)), Struct_1(2147483647i, vec3<bool>(var_0.x, true, global0.b.x))).b)), global2[_wgslsmith_index_u32(~var_1.a.x, 25u)], func_4(select(var_1.d.b.zz, vec2<bool>(true, false), u_input.a != 24021u), Struct_2(global1.a, _wgslsmith_f_op_vec2_f32(global1.b * var_2.yx), Struct_1(global1.c.a, vec3<bool>(var_0.x, var_0.x, var_1.c.b.x)), func_4(var_1.c.b.xy, Struct_2(vec3<u32>(global1.a.x, 0u, u_input.a), global1.b, Struct_1(var_1.c.a, vec3<bool>(false, var_0.x, true)), var_1.d), Struct_2(vec3<u32>(u_input.a, u_input.b.x, u_input.a), var_1.b, Struct_1(1i, global0.b), global1.c), Struct_1(-22973i, vec3<bool>(var_1.c.b.x, false, global1.d.b.x)))), Struct_2(vec3<u32>(var_1.a.x, global1.a.x, global1.a.x) >> (var_1.a % vec3<u32>(32u)), var_2.yx, func_4(vec2<bool>(false, false), global2[_wgslsmith_index_u32(u_input.a, 25u)], global2[_wgslsmith_index_u32(global1.a.x, 25u)], global1.d), Struct_1(0i, global1.d.b)), global1.c))).b;
    let var_4 = _wgslsmith_sub_vec3_u32(global1.a, ~_wgslsmith_clamp_vec3_u32(var_1.a, ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global1.a.x, 9804u), var_1.a), vec3<u32>(_wgslsmith_sub_u32(global1.a.x, 30637u), func_3(Struct_2(var_1.a, var_1.b, Struct_1(30571i, vec3<bool>(true, global1.c.b.x, true)), global1.c)).x, 58966u)));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, vec3<u32>(~4294967295u, _wgslsmith_mult_u32(~var_4.x, _wgslsmith_dot_vec3_u32(max(var_1.a, vec3<u32>(80148u, u_input.a, global1.a.x)), max(global1.a, vec3<u32>(var_4.x, 1u, var_4.x)))), _wgslsmith_dot_vec2_u32(vec2<u32>(73918u, 4294967295u), vec2<u32>(var_4.x, 1791u) << (select(var_4.zx, var_1.a.zy, var_0.wz) % vec2<u32>(32u)))), global0.a, u_input.d, global1.b.x);
}

