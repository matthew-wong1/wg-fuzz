struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: i32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(0i, -1i), vec2<i32>(17963i, 0i), vec2<i32>(18333i, 5631i), vec2<i32>(0i, -46971i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(44919i, 2147483647i), vec2<i32>(0i, 92872i), vec2<i32>(2147483647i, 20599i), vec2<i32>(-17891i, 0i), vec2<i32>(i32(-2147483648), 6324i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, 5102i), vec2<i32>(1i, -52250i), vec2<i32>(-1451i, 4883i), vec2<i32>(-4006i, 1i), vec2<i32>(1i, 0i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(0i, 29440i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(-24466i, -5835i));

var<private> global1: Struct_2;

var<private> global2: u32 = 87553u;

var<private> global3: Struct_3 = Struct_3(Struct_1(vec3<u32>(1295u, 18001u, 5869u), -1i, 13236i, vec3<bool>(true, false, false), 17472i), vec4<bool>(true, true, false, true), vec4<u32>(1u, 25399u, 1u, 1u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<bool> {
    let var_0 = false;
    var var_1 = global3.a.d.x;
    var var_2 = Struct_3(Struct_1(global3.c.zxy, abs(firstTrailingBit(_wgslsmith_mult_i32(global1.d, global3.a.e))), _wgslsmith_clamp_i32(firstLeadingBit(21044i), _wgslsmith_clamp_i32(countOneBits(global3.a.c), -40641i, -2147483647i), _wgslsmith_clamp_i32(-global1.a.b, ~global1.d, 39740i)), vec3<bool>(true, _wgslsmith_mod_i32(global1.a.b, global1.a.c) == min(global1.d, -21008i), true), -(~1605i)), global3.b, ~global3.c);
    var var_3 = global1.c < global1.c;
    var_2 = Struct_3(global3.a, global3.b, ~((abs(vec4<u32>(global1.b.a.x, u_input.a, global1.a.a.x, global1.a.a.x)) & vec4<u32>(0u, global3.c.x, 1537u, 20198u)) << (vec4<u32>(select(1u, var_2.a.a.x, global1.b.d.x), ~42785u, u_input.b, 2955u) % vec4<u32>(32u))));
    return select(select(!select(global3.b, vec4<bool>(var_0, var_2.b.x, false, false), var_2.b), var_2.b, (_wgslsmith_dot_vec3_u32(global3.a.a, global3.c.xyx) <= select(var_2.c.x, global3.a.a.x, true)) && true), select(var_2.b, select(vec4<bool>(!global3.b.x, true, true, all(global3.b.yx)), vec4<bool>(global1.e, !global1.e, all(vec2<bool>(true, global3.a.d.x)), false), select(!vec4<bool>(false, var_2.a.d.x, false, var_2.a.d.x), global3.b, vec4<bool>(false, var_2.b.x, global3.a.d.x, true))), all(global3.b)), select(!vec4<bool>(var_2.a.d.x, true, var_0, global3.a.e != 1i), !select(vec4<bool>(true, true, false, global3.a.d.x), vec4<bool>(true, true, true, var_0), !var_0), var_2.a.d.x));
}

fn func_2(arg_0: vec4<u32>) -> vec4<u32> {
    global0 = array<vec2<i32>, 20>();
    global0 = array<vec2<i32>, 20>();
    let var_0 = true;
    var var_1 = false || ((!global1.a.d.x | all(func_3())) & global1.e);
    var var_2 = Struct_3(Struct_1((firstTrailingBit(vec3<u32>(arg_0.x, arg_0.x, u_input.b)) & global3.c.wxx) & firstLeadingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 30664u), vec3<u32>(global1.b.a.x, global3.a.a.x, 1u))), i32(-1i) * -global1.b.c, firstLeadingBit(min(max(global1.d, global1.a.e), global3.a.b)), !(!(!global3.b.xww)), ~(_wgslsmith_clamp_i32(global1.d, global3.a.e, 8079i) | _wgslsmith_mod_i32(global3.a.e, -1i))), global3.b, firstLeadingBit(_wgslsmith_div_vec4_u32(global3.c | vec4<u32>(u_input.a, global3.c.x, 7693u, 0u), min(arg_0, vec4<u32>(arg_0.x, 76535u, 27595u, global3.c.x)))) >> (select(global3.c, _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(0u, 21468u, 4294967295u, global1.a.a.x)), min(vec4<u32>(global3.c.x, 21948u, 39507u, 32688u), arg_0)), func_3().x) % vec4<u32>(32u)));
    return _wgslsmith_mod_vec4_u32(vec4<u32>(global3.a.a.x, u_input.b, 119181u, abs(firstTrailingBit(0u))) ^ ~(~global3.c), firstLeadingBit(_wgslsmith_add_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 50630u, 25369u), vec4<u32>(21624u, 4294967295u, 0u, global1.a.a.x)), global3.c)));
}

fn func_1(arg_0: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_mod_vec4_i32(~(~vec4<i32>(global3.a.b, global3.a.e, _wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(global1.b.a.x, 20u)], global0[_wgslsmith_index_u32(global1.a.a.x, 20u)]), -25955i << (global3.a.a.x % 32u))), (_wgslsmith_mult_vec4_i32(~vec4<i32>(29617i, -2147483647i, -2147483647i, global3.a.c), firstTrailingBit(vec4<i32>(global1.a.e, global3.a.e, global3.a.e, global3.a.c))) | _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.d, 2127i, global1.a.b, 28059i), vec4<i32>(global3.a.b, global3.a.b, -34157i, 0i), vec4<i32>(0i, global1.b.b, global3.a.b, 0i)), min(vec4<i32>(global1.a.e, global3.a.b, global1.d, global1.b.e), vec4<i32>(global3.a.c, global3.a.c, -1611i, 18613i)))) >> (firstLeadingBit(abs(func_2(global3.c))) % vec4<u32>(32u)));
    var var_1 = any(global1.a.d.xz);
    global1 = Struct_2(global1.a, Struct_1(vec3<u32>(~select(u_input.a, 20866u, global3.a.d.x), global3.c.x, ~func_2(vec4<u32>(0u, u_input.a, 0u, global3.c.x)).x), global3.a.c, ~_wgslsmith_div_i32(var_0.x << (u_input.a % 32u), 30896i), vec3<bool>(true, !any(global1.a.d.yz), all(vec3<bool>(global3.a.d.x, global1.b.d.x, true))), var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1741f) + 643f), var_0.x, global3.b.x);
    let var_2 = global1.b.d.zz;
    let var_3 = global1.b.d;
    return Struct_3(global3.a, vec4<bool>(_wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(global1.c + arg_0.x)) == 316f, false, true, true), global3.c);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_3) -> Struct_2 {
    global1 = Struct_2(Struct_1(~abs(~vec3<u32>(12415u, arg_0.a.a.x, 0u)), global3.a.b, ~arg_0.a.b, global3.a.d, global1.d >> ((24823u << (min(arg_0.a.a.x, global3.a.a.x) % 32u)) % 32u)), Struct_1(~func_2(arg_0.c).ywy | arg_0.c.wwy, ~global3.a.c | select(_wgslsmith_mod_i32(-2147483647i, global3.a.c), 21417i, false), _wgslsmith_sub_i32(arg_0.a.e, ~(-global1.d)), func_1(vec4<f32>(522f, global1.c, global1.c, _wgslsmith_div_f32(401f, arg_1.c))).b.zyy, 1i), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.c))), 0i, arg_3.a.d.x);
    global2 = ~(~95470u);
    var var_0 = arg_0;
    global0 = array<vec2<i32>, 20>();
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-414f * 1148f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-276f + arg_1.c) * 1718f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1201f)))));
    return Struct_2(Struct_1(~(~vec3<u32>(22569u, var_0.a.a.x, arg_0.a.a.x)), global3.a.b, abs(~(-2147483647i)) ^ (_wgslsmith_mult_i32(0i, arg_3.a.e) << (~var_0.a.a.x % 32u)), !(!(!vec3<bool>(true, arg_2.x, global3.a.d.x))), -46144i), Struct_1(vec3<u32>(abs(_wgslsmith_div_u32(global1.a.a.x, 11198u)), arg_0.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.a.a.x, 71860u, arg_0.c.x), arg_3.a.a), min(vec3<u32>(73328u, 54730u, global1.b.a.x), vec3<u32>(0u, global3.c.x, 42263u)))), ~3606i, -2147483647i, arg_1.b.d, abs(arg_0.a.e)), 1043f, -2147483647i | global3.a.b, true);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_3 {
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(246f, global1.c, arg_0.c, -1394f) * vec4<f32>(-189f, global1.c, -1023f, global1.c)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-692f, 698f, arg_0.c, 1305f)))))).a.d.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c, arg_0.c, arg_0.c, -1487f)) * vec4<f32>(1045f, arg_0.c, arg_0.c, arg_0.c)) * vec4<f32>(272f, 1f, 2011f, arg_0.c))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - 118f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global1.c, 1216f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) * 1141f))), true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.c)) - _wgslsmith_f_op_f32(var_1.x - -2483f)) * arg_0.c), var_1.x), var_1.x, _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(-1f)));
    var var_2 = arg_0.b.a;
    global3 = Struct_3(func_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-201f - 1489f), _wgslsmith_div_f32(249f, 750f), arg_0.c, _wgslsmith_f_op_f32(1714f * -995f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-365f, global1.c, 935f, 694f) + vec4<f32>(383f, -386f, arg_0.c, global1.c))))))).a, global3.b, global3.c);
    return Struct_3(func_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(var_1.x - arg_0.c), -544f, global1.c, -877f)))).a, select(global3.b, vec4<bool>(true, true, var_0, func_4(Struct_3(Struct_1(vec3<u32>(1648u, 1u, u_input.a), 6909i, global1.d, vec3<bool>(global3.a.d.x, arg_0.e, arg_0.b.d.x), global1.d), global3.b, global3.c), Struct_2(global3.a, Struct_1(vec3<u32>(u_input.a, var_2.x, var_2.x), -20214i, 1i, vec3<bool>(false, false, var_0), 22495i), var_1.x, -1i, var_0), global3.b.zw, Struct_3(global3.a, global3.b, global3.c)).b.d.x), true), global3.c);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_5(func_4(func_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.c, -1000f, 2088f)), vec4<f32>(global1.c, global1.c, -1000f, global1.c), global3.b.x))), Struct_2(func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(286f, global1.c, -823f, 913f))).a, global1.b, _wgslsmith_f_op_f32(f32(-1f) * -101f), -1i, all(global1.b.d.xz)), global1.b.d.xy, Struct_3(global1.b, global3.b, reverseBits(_wgslsmith_mult_vec4_u32(global3.c, global3.c)))), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(min(vec3<i32>(global1.a.b, global1.b.e, 0i), vec3<i32>(global1.b.e, global3.a.b, 50647i)), vec3<i32>(-65408i, -2147483647i, global1.a.e)) | ~countOneBits(vec3<i32>(global1.d, 1i, -2147483647i)), vec3<i32>(_wgslsmith_clamp_i32(-global1.d, -35824i, global1.a.b | global1.a.e), i32(-1i) * -global1.d, global3.a.c << (_wgslsmith_dot_vec3_u32(global1.a.a, vec3<u32>(global3.a.a.x, global3.c.x, 36688u)) % 32u))));
    let var_0 = select(func_5(func_4(Struct_3(global3.a, func_1(vec4<f32>(global1.c, -1476f, global1.c, global1.c)).b, global3.c), func_4(func_5(Struct_2(Struct_1(vec3<u32>(global1.a.a.x, 4294967295u, global3.a.a.x), global1.b.b, global3.a.e, vec3<bool>(global3.a.d.x, global3.a.d.x, global3.a.d.x), global1.b.b), Struct_1(vec3<u32>(20640u, 20325u, global3.c.x), global1.d, -23588i, global1.b.d, -25131i), global1.c, -9591i, true), vec3<i32>(global1.a.b, global1.b.e, global1.a.c)), Struct_2(global1.b, global1.a, global1.c, 2147483647i, global3.a.d.x), select(global3.a.d.zy, global1.a.d.zx, false), func_5(Struct_2(global1.a, Struct_1(global1.a.a, global1.b.b, -2396i, global3.b.yyx, 1368i), global1.c, 17443i, false), vec3<i32>(global1.d, global1.b.c, global3.a.c))), vec2<bool>(true, true), Struct_3(Struct_1(vec3<u32>(1u, 19421u, 1u), -36015i, -31150i, vec3<bool>(global3.b.x, global3.a.d.x, global1.e), 1i), !vec4<bool>(global3.a.d.x, global1.b.d.x, global3.b.x, global1.a.d.x), ~global3.c)), _wgslsmith_div_vec3_i32((vec3<i32>(-1i, global1.a.e, -59128i) & vec3<i32>(-197i, global3.a.e, global1.d)) ^ (vec3<i32>(-40760i, global3.a.b, global1.b.b) >> (vec3<u32>(u_input.b, global3.c.x, 1u) % vec3<u32>(32u))), -vec3<i32>(global3.a.c, -11622i, -6507i) >> (global1.b.a % vec3<u32>(32u)))).b, !(!vec4<bool>(false, !global3.b.x, all(vec2<bool>(false, global1.e)), all(vec3<bool>(false, true, global1.a.d.x)))), any(vec3<bool>(global1.a.d.x || true, true, global3.b.x)));
    var var_1 = 4294967295u;
    let var_2 = func_4(Struct_3(func_5(func_4(Struct_3(Struct_1(vec3<u32>(25726u, 0u, global1.a.a.x), 1i, 2147483647i, vec3<bool>(global3.b.x, false, var_0.x), global1.b.b), global3.b, global3.c), func_4(Struct_3(global1.b, var_0, global3.c), Struct_2(Struct_1(global3.c.yxz, global3.a.b, -31823i, global1.b.d, 5520i), global1.b, global1.c, global1.b.e, global1.e), vec2<bool>(global1.e, global1.b.d.x), Struct_3(Struct_1(vec3<u32>(64755u, u_input.b, 110374u), 0i, 34705i, global1.a.d, global1.a.c), var_0, global3.c)), select(var_0.yw, global3.b.wz, global1.b.d.xy), func_1(vec4<f32>(global1.c, 1855f, 517f, global1.c))), vec3<i32>(~global1.b.b, -1i, global3.a.b)).a, var_0, vec4<u32>(global3.c.x, u_input.b, ~u_input.b, select(u_input.b, global3.a.a.x, global3.b.x)) ^ select(~vec4<u32>(global1.a.a.x, 41029u, 1u, u_input.b), _wgslsmith_sub_vec4_u32(global3.c, global3.c), !var_0)), func_4(Struct_3(Struct_1(_wgslsmith_div_vec3_u32(global3.c.yww, vec3<u32>(4294967295u, 27800u, global1.b.a.x)), func_4(Struct_3(Struct_1(vec3<u32>(4294967295u, 73526u, 29195u), 1i, -2147483647i, global1.b.d, global3.a.c), global3.b, global3.c), Struct_2(Struct_1(vec3<u32>(74803u, 33284u, global3.c.x), -1i, 0i, vec3<bool>(var_0.x, global3.b.x, false), global3.a.e), global1.a, 1154f, global1.a.c, true), vec2<bool>(global3.b.x, global1.e), Struct_3(global3.a, var_0, global3.c)).d, 42999i, vec3<bool>(true, var_0.x, global1.b.d.x), -global3.a.b), func_5(Struct_2(Struct_1(global3.a.a, -2610i, -10377i, vec3<bool>(var_0.x, global3.b.x, true), -2147483647i), global3.a, global1.c, -1i, true), ~vec3<i32>(global3.a.b, -39665i, 907i)).b, global3.c), func_4(func_5(Struct_2(Struct_1(global1.a.a, global3.a.e, 1i, vec3<bool>(global1.a.d.x, var_0.x, global3.a.d.x), -1i), Struct_1(global1.a.a, 28319i, global3.a.b, vec3<bool>(true, global3.b.x, global1.a.d.x), global1.d), global1.c, -2147483647i, true), min(vec3<i32>(-2147483647i, 0i, global3.a.e), vec3<i32>(global3.a.b, global3.a.b, global1.a.b))), func_4(Struct_3(global3.a, global3.b, global3.c), Struct_2(Struct_1(vec3<u32>(global1.a.a.x, global1.b.a.x, 9347u), 18589i, -18955i, var_0.xxz, -1i), Struct_1(vec3<u32>(global3.c.x, 24652u, u_input.a), -2147483647i, global3.a.c, vec3<bool>(var_0.x, true, global3.a.d.x), 27815i), 1178f, global3.a.e, true), func_4(Struct_3(Struct_1(vec3<u32>(4294967295u, global3.c.x, u_input.b), global1.d, -2286i, global1.b.d, global1.b.b), var_0, vec4<u32>(u_input.a, 66280u, 43823u, 29399u)), Struct_2(Struct_1(global3.a.a, global3.a.e, 0i, vec3<bool>(false, var_0.x, false), 37543i), Struct_1(global1.a.a, global1.d, global3.a.c, global3.a.d, -67587i), global1.c, -12717i, global1.e), global3.a.d.zy, Struct_3(Struct_1(vec3<u32>(u_input.b, global1.a.a.x, 4294967295u), global3.a.c, global3.a.b, vec3<bool>(true, false, var_0.x), global3.a.c), global3.b, vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u))).a.d.yy, Struct_3(Struct_1(vec3<u32>(46374u, 1u, 0u), global1.b.c, global3.a.e, var_0.yxw, global3.a.c), vec4<bool>(true, false, global1.e, true), vec4<u32>(global1.b.a.x, 31455u, 24609u, 47225u))), vec2<bool>(true, false), Struct_3(func_1(vec4<f32>(global1.c, 1136f, -129f, global1.c)).a, vec4<bool>(var_0.x, var_0.x, true, global1.e), ~vec4<u32>(global1.a.a.x, 1u, 116023u, u_input.a))), var_0.yw, Struct_3(Struct_1(global3.a.a, ~19243i, global3.a.e << (0u % 32u), var_0.xzw, ~7618i), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1039f, -1000f, 1267f))).b, abs(vec4<u32>(24672u, 66267u, 1u, global1.a.a.x)))), func_3().xw, Struct_3(Struct_1(~vec3<u32>(global1.a.a.x, 4294967295u, 4294967295u), global1.d, global3.a.e, !(!var_0.yxz), ~(~global3.a.c)), global3.b, global3.c)).a;
    global2 = var_2.a.x;
    var_1 = abs(_wgslsmith_sub_u32(global3.c.x, 1u)) << (0u % 32u);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-671f, global1.c, global1.c, global1.c) * vec4<f32>(global1.c, global1.c, global1.c, global1.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, 146f, 1077f, global1.c) - vec4<f32>(1038f, global1.c, 1103f, global1.c)))), vec4<f32>(_wgslsmith_f_op_f32(sign(global1.c)), global1.c, _wgslsmith_f_op_f32(step(-890f, global1.c)), _wgslsmith_div_f32(709f, -880f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1288f, -666f, -267f, -601f) + vec4<f32>(531f, global1.c, global1.c, 1344f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-843f, 1332f, global1.c, global1.c)))))));
    var var_4 = _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(-(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(-1i, -24050i), global0[_wgslsmith_index_u32(global1.b.a.x, 20u)]) << (~global1.a.a.xx % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(max(~vec2<i32>(-31148i, global1.d), _wgslsmith_clamp_vec2_i32(vec2<i32>(56288i, 2147483647i), vec2<i32>(-21865i, 30557i), vec2<i32>(31406i, 27541i))), select(-global0[_wgslsmith_index_u32(global1.a.a.x, 20u)], vec2<i32>(-20962i, -1i), true))), _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(-select(global0[_wgslsmith_index_u32(38251u, 20u)], vec2<i32>(global3.a.b, global3.a.b), vec2<bool>(var_2.d.x, global1.b.d.x)), countOneBits(vec2<i32>(var_2.c, global1.a.e))), reverseBits(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(1u, var_2.a.x), 20u)])));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(20727u, 1u), reverseBits(-vec3<i32>(9890i, var_2.e, global3.a.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.c, 668f))), vec2<f32>(global1.c, var_3.x))) - var_3.wy));
}

