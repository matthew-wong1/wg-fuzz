struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: u32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 3>;

var<private> global3: Struct_1 = Struct_1(6573i, vec3<bool>(true, true, false), vec2<u32>(27978u, 1u));

var<private> global4: array<Struct_1, 30>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> vec2<u32> {
    let var_0 = global2[_wgslsmith_index_u32(4294967295u, 3u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -189f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -474f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-486f * 370f) - 149f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-680f, 865f, -795f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1905f, 927f, 354f), vec3<f32>(1737f, -644f, 330f)), vec3<f32>(-857f, 220f, 1205f), true))), vec3<bool>(!var_0.b.x, max(global0.c.x, 25922u) != global3.c.x, all(vec2<bool>(global1.b.x, global1.b.x))))));
    return vec2<u32>(~(~(~50121u)), _wgslsmith_div_u32(abs(~4294967295u), ~(~global1.c.x)) ^ 1u);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<i32>, arg_3: Struct_1) -> u32 {
    global3 = Struct_1(-(~(i32(-1i) * -14603i) >> (global0.c.x % 32u)), !arg_0.b, vec2<u32>(~(~(~global0.c.x)), global1.c.x));
    global2 = array<Struct_1, 3>();
    var var_0 = Struct_1(~global0.a, arg_0.b, ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 18564u), ~global3.c) << (global1.c % vec2<u32>(32u)));
    global1 = Struct_1(2778i, var_0.b, global3.c);
    global1 = arg_0;
    return var_0.c.x;
}

fn func_2() -> vec2<u32> {
    let var_0 = vec3<u32>(func_4(Struct_1(62291i, !vec3<bool>(global3.b.x, global1.b.x, global3.b.x), global1.c >> (func_3(global2[_wgslsmith_index_u32(global1.c.x, 3u)], vec4<i32>(21324i, global0.a, global0.a, u_input.a.x)) % vec2<u32>(32u))), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, global0.a, 1i, 2147483647i), -vec4<i32>(1i, -2147483647i, u_input.a.x, u_input.a.x)), global3.a), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-28627i, u_input.a.x, global3.a, u_input.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(8223i, 0i, -2147483647i, global1.a), vec4<i32>(u_input.a.x, global0.a, -18467i, global3.a)), -vec4<i32>(-1i, u_input.a.x, global0.a, -18454i))), global4[_wgslsmith_index_u32(global1.c.x, 30u)]), ~72497u, 0u);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(global0.c.x, func_3(Struct_1(~(-1i), vec3<bool>(true, global1.b.x, global1.b.x != global1.b.x), _wgslsmith_mod_vec2_u32(global3.c, _wgslsmith_mult_vec2_u32(vec2<u32>(110437u, global3.c.x), global3.c))), ~(vec4<i32>(global1.a, 58380i, u_input.a.x, -2147483647i) >> (vec4<u32>(0u, 6003u, var_0.x, global0.c.x) % vec4<u32>(32u))) >> (select(vec4<u32>(global3.c.x, 0u, global1.c.x, 37220u), _wgslsmith_clamp_vec4_u32(vec4<u32>(43545u, 0u, 13003u, var_0.x), vec4<u32>(global1.c.x, 1u, var_0.x, global1.c.x), vec4<u32>(44948u, global1.c.x, 16444u, var_0.x)), select(vec4<bool>(global3.b.x, true, global3.b.x, false), vec4<bool>(global1.b.x, false, true, global0.b.x), vec4<bool>(global3.b.x, global3.b.x, global1.b.x, true))) % vec4<u32>(32u))).x), 3u)];
    var var_2 = reverseBits(~(~(~48266u) & global3.c.x));
    let var_3 = vec3<bool>(var_1.b.x, any(select(!select(vec2<bool>(var_1.b.x, true), global3.b.yy, var_1.b.xx), !global0.b.yz, select(select(global0.b.zy, vec2<bool>(global0.b.x, var_1.b.x), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(global3.b.x, var_1.b.x)))), all(var_1.b) != !select(true, true, all(vec4<bool>(false, false, false, false))));
    global3 = Struct_1(firstLeadingBit(2403i ^ global1.a), !(!(!global1.b)), select(vec2<u32>(global1.c.x << (0u % 32u), countOneBits(62393u)), ~vec2<u32>(abs(global3.c.x), 1u), true));
    return _wgslsmith_mod_vec2_u32(global1.c, global3.c);
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: f32, arg_3: i32) -> Struct_1 {
    let var_0 = global4[_wgslsmith_index_u32(global1.c.x ^ abs(79380u), 30u)];
    var var_1 = global1.b.yz;
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, func_2().x) | _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(~arg_1, _wgslsmith_sub_vec2_u32(vec2<u32>(var_0.c.x, 13857u), global3.c)), vec2<u32>(_wgslsmith_add_u32(global3.c.x, 1u), 32906u)), func_2()), 30u)];
    var var_3 = arg_0;
    var var_4 = global4[_wgslsmith_index_u32(firstLeadingBit(~select(min(15413u, _wgslsmith_sub_u32(global1.c.x, 63983u)), global3.c.x, var_1.x | (41598i < arg_3))), 30u)];
    return Struct_1(u_input.a.x, select(!global1.b, select(global0.b, var_2.b, true), vec3<bool>(true, true, true)), global0.c);
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_1, 3>();
    global3 = func_5(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, global1.a, 59280i, global1.a), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, -1i, -44034i, global0.a), vec4<i32>(-31018i, 49339i, 44395i, -68001i))), -6046i, -12322i), ~abs(func_2()), -2748f, 2147483647i);
    global0 = Struct_1(-(~_wgslsmith_sub_i32(global3.a, 38605i)) >> (func_4(func_5(-vec3<i32>(global3.a, 0i, u_input.a.x), firstTrailingBit(global0.c), -744f, select(-79961i, global1.a, global0.b.x)), -(~(-2147483647i)), select(min(vec4<i32>(global3.a, 2147483647i, -3900i, 1i), vec4<i32>(global1.a, -26566i, global1.a, global1.a)), vec4<i32>(44377i, -43438i, 33714i, -1i), vec4<bool>(global0.b.x, global0.b.x, true, global3.b.x)), global2[_wgslsmith_index_u32(global3.c.x, 3u)]) % 32u), select(global0.b, global3.b, true), ~(~(~global0.c)));
    var var_0 = func_5(-_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, global0.a, firstTrailingBit(u_input.a.x)), _wgslsmith_add_vec3_i32(select(vec3<i32>(global3.a, u_input.a.x, -1i), vec3<i32>(global1.a, u_input.a.x, global1.a), vec3<bool>(false, false, global1.b.x)), vec3<i32>(-1i, global0.a, 8707i) & vec3<i32>(5642i, global0.a, -33478i))), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1366f))), global1.a);
    var_0 = func_5(~(~((vec3<i32>(global0.a, 1i, -24751i) ^ vec3<i32>(-22733i, global1.a, 1i)) | _wgslsmith_mod_vec3_i32(vec3<i32>(11922i, u_input.a.x, -25903i), vec3<i32>(-1i, u_input.a.x, -19697i)))), ~func_2(), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2088f))) * -346f) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))), _wgslsmith_f_op_f32(f32(-1f) * -162f)))), global3.a);
    return global2[_wgslsmith_index_u32(24779u, 3u)];
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>) -> f32 {
    var var_0 = ~vec4<u32>(abs(_wgslsmith_sub_u32(arg_0.c.x, global3.c.x)), global3.c.x >> (~global3.c.x % 32u), ~global1.c.x, global0.c.x) | vec4<u32>(40376u, func_1().c.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global0.c.x, arg_0.c.x), arg_0.c.x, ~_wgslsmith_sub_u32(13794u, global0.c.x)), 4294967295u);
    global4 = array<Struct_1, 30>();
    var var_1 = _wgslsmith_f_op_f32(-arg_2.x);
    let var_2 = firstLeadingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(17500i, 1i), _wgslsmith_add_i32(-2147483647i, arg_0.a), _wgslsmith_mult_i32(select(global1.a, u_input.a.x, false), _wgslsmith_clamp_i32(global1.a, arg_0.a, global3.a))), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(-22434i, 673i), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.a, global0.a, -9865i, global3.a), vec4<i32>(2147483647i, arg_0.a, 46825i, 52054i))), (-15020i ^ global3.a) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(41009u, 123951u), vec2<u32>(global1.c.x, 13153u)) % 32u), 0i)));
    let var_3 = vec2<u32>(~min(func_4(func_1(), u_input.a.x, vec4<i32>(2147483647i, arg_0.a, global3.a, 12439i), arg_0), arg_0.c.x << (firstLeadingBit(1u) % 32u)), ~abs(global0.c.x & ~arg_0.c.x));
    return arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_u32(vec2<u32>(1u, ~46407u), ~vec2<u32>(firstTrailingBit(~0u), _wgslsmith_dot_vec2_u32(global3.c, ~vec2<u32>(global3.c.x, global0.c.x))));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -107f);
    var_1 = _wgslsmith_f_op_f32(func_6(func_1(), true, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(100f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1746f))), _wgslsmith_f_op_f32(f32(-1f) * -732f))));
    let var_2 = ~(~min(vec4<u32>(global1.c.x, var_0.x, 23886u, global0.c.x), vec4<u32>(0u, 72958u, global3.c.x, global1.c.x)) | _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, var_0.x, global1.c.x, var_0.x), vec4<u32>(global3.c.x, global1.c.x, 4294967295u, 103094u)), _wgslsmith_sub_vec4_u32(vec4<u32>(global1.c.x, global1.c.x, global1.c.x, 27537u), vec4<u32>(global3.c.x, global0.c.x, 4294967295u, global1.c.x)))) & max(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, min(global0.c.x, 8768u), global3.c.x, 154458u), ~firstLeadingBit(vec4<u32>(var_0.x, global3.c.x, 28208u, 7792u))), ~reverseBits(vec4<u32>(global3.c.x, var_0.x, global0.c.x, global1.c.x)));
    global4 = array<Struct_1, 30>();
    var_0 = global1.c << (global0.c % vec2<u32>(32u));
    var_1 = 910f;
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(320f, 1410f, -641f, -912f), vec4<f32>(-341f, -960f, -153f, -228f), vec4<bool>(false, false, true, true)))))) * vec4<f32>(_wgslsmith_div_f32(744f, _wgslsmith_f_op_f32(790f - -608f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2656f * 1000f) + 2449f), _wgslsmith_f_op_f32(f32(-1f) * -1844f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    let var_4 = var_3.xzx;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_3)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3 - var_3)))), vec2<u32>(select(~36532u, 0u, abs(global3.a) <= _wgslsmith_clamp_i32(global0.a, 1i, global1.a)), 32355u), reverseBits(~global1.c.x), vec4<f32>(_wgslsmith_f_op_f32(step(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(584f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1f, 1159f, all(vec2<bool>(global1.b.x, global3.b.x)))))), 1714f, var_4.x), abs(max(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, 45581i, -70116i, 3876i), -vec4<i32>(1i, global1.a, u_input.a.x, -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 1i, u_input.a.x, global3.a), _wgslsmith_div_vec4_i32(vec4<i32>(global0.a, global1.a, global3.a, global0.a), vec4<i32>(1i, -20361i, global1.a, u_input.a.x))))));
}

