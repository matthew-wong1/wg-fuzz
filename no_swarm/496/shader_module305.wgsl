struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8> = array<u32, 8>(63924u, 4294967295u, 0u, 32020u, 48612u, 1u, 6692u, 4294967295u);

var<private> global1: array<f32, 28>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> i32 {
    global1 = array<f32, 28>();
    var var_0 = 1u;
    var var_1 = select(select(vec3<bool>(any(!vec4<bool>(false, global2.x, true, global2.x)), global2.x, !any(vec4<bool>(global2.x, false, global2.x, true))), vec3<bool>(select(true, true, true), true, !global2.x && true), vec3<bool>(!any(vec3<bool>(true, global2.x, false)), global2.x, all(select(vec4<bool>(global2.x, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(global2.x, global2.x, global2.x, global2.x))))), select(vec3<bool>(!(!global2.x), true, any(!vec4<bool>(global2.x, true, global2.x, false))), select(!(!vec3<bool>(true, global2.x, global2.x)), vec3<bool>(true, any(vec4<bool>(global2.x, global2.x, global2.x, true)), true), !vec3<bool>(true, global2.x, global2.x)), all(vec4<bool>(global2.x, global2.x, all(vec3<bool>(false, true, true)), false))), !global2.x);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-711f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(36871u, 8u)], 7062u, u_input.c.x, 7374u), vec4<u32>(7432u, u_input.a.x, 4294967295u, 0u)), 28u)], _wgslsmith_f_op_f32(525f - global1[_wgslsmith_index_u32(u_input.b.x, 28u)])))))), countOneBits(arg_0), !select(select(!vec3<bool>(global2.x, var_1.x, global2.x), select(vec3<bool>(false, global2.x, false), vec3<bool>(true, true, var_1.x), vec3<bool>(global2.x, global2.x, false)), vec3<bool>(var_1.x, var_1.x, global2.x)), vec3<bool>(true, !var_1.x, all(vec3<bool>(true, true, var_1.x))), vec3<bool>(var_1.x, false, arg_0 >= -41999i)), -23123i, global2.x);
    var_1 = !(!select(vec3<bool>(true, all(vec4<bool>(false, true, true, false)), -30779i == arg_1.x), select(vec3<bool>(global2.x, var_2.c.x, var_1.x), vec3<bool>(global2.x, false, var_2.c.x), !var_2.c.x), true));
    return 21883i;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    let var_0 = -266f;
    global1 = array<f32, 28>();
    var var_1 = _wgslsmith_mult_vec4_i32(-vec4<i32>(11136i, ~(-29229i), countOneBits(abs(-1i)), func_3(-1i, -vec3<i32>(-28816i, 7331i, arg_0.c.b))), vec4<i32>(-25094i, ~_wgslsmith_sub_i32(6641i, arg_0.a.d), -2147483647i, _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.d.b, arg_0.c.b, arg_0.c.d, arg_0.d.d), vec4<i32>(arg_0.d.b, arg_0.d.b, arg_0.c.d, -7701i) << (vec4<u32>(4294967295u, 6427u, 0u, 17755u) % vec4<u32>(32u)))) << (vec4<u32>(firstLeadingBit(~0u), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 8u)] >> (~87564u % 32u), 4294967295u ^ global0[_wgslsmith_index_u32(max(31150u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(96202u, 8u)], 8u)]), 8u)], _wgslsmith_mult_u32(1u, firstLeadingBit(1u))) % vec4<u32>(32u)));
    var var_2 = arg_0;
    let var_3 = select(vec4<bool>(true, true, true, true), vec4<bool>(~_wgslsmith_mult_u32(23497u, u_input.b.x) >= (max(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(u_input.c.x, 8u)]) ^ global0[_wgslsmith_index_u32(~0u, 8u)]), var_2.d.c.x | any(global2.yy), arg_0.c.e, true), true);
    return arg_0.d;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_1 {
    global2 = vec3<bool>(true, all(func_2(Struct_2(arg_0.a, _wgslsmith_f_op_f32(-arg_0.c.a), Struct_1(global1[_wgslsmith_index_u32(arg_2.x, 28u)], arg_1.c.b, arg_1.a.c, arg_1.d.d, true), func_2(arg_0), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1565f, arg_0.d.a, arg_1.c.a))))).c.yy), false & arg_0.d.e);
    var var_0 = Struct_2(arg_0.c, _wgslsmith_f_op_f32(-arg_0.e.x), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(1u, 28u)])))), 1i, select(arg_0.d.c, arg_1.c.c, vec3<bool>(true, arg_1.d.d <= -2147483647i, global2.x & true)), arg_1.c.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.a + -1000f), _wgslsmith_f_op_f32(f32(-1f) * -594f)) > _wgslsmith_f_op_f32(sign(853f))), Struct_1(-225f, arg_0.a.b, vec3<bool>(false & any(arg_1.c.c), all(arg_0.d.c), false), ~(-1i), arg_1.d.e), _wgslsmith_f_op_vec3_f32(-arg_0.e));
    let var_1 = ~reverseBits(reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, global0[_wgslsmith_index_u32(arg_2.x, 8u)]), _wgslsmith_div_vec2_u32(u_input.c, u_input.a.yx))));
    var var_2 = _wgslsmith_f_op_f32(256f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(arg_0.d.a)), _wgslsmith_div_f32(arg_0.a.a, -1007f))) * _wgslsmith_f_op_f32(abs(arg_0.b)))));
    global1 = array<f32, 28>();
    return Struct_1(_wgslsmith_f_op_f32(-var_0.c.a), var_0.a.d, arg_1.c.c, 6728i, global2.x);
}

fn func_5(arg_0: Struct_1, arg_1: bool) -> vec4<u32> {
    let var_0 = select(vec4<bool>(false, true && !any(global2.yx), true, !(!(arg_0.a <= 1364f))), vec4<bool>(any(!vec4<bool>(arg_0.e, true, true, false)), select(true, any(arg_0.c.yz) | (arg_0.a <= -1000f), firstTrailingBit(1u) <= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)] & 4294967295u, 8u)]), any(select(select(vec4<bool>(arg_1, true, global2.x, global2.x), vec4<bool>(true, arg_0.e, false, global2.x), true), vec4<bool>(arg_0.e, arg_0.c.x, true, false), select(vec4<bool>(global2.x, true, arg_1, true), vec4<bool>(false, arg_1, true, true), vec4<bool>(arg_1, arg_0.e, false, false)))), any(!arg_0.c.yx)), select(vec4<bool>(all(select(arg_0.c.zy, arg_0.c.yx, vec2<bool>(arg_0.e, global2.x))), any(!arg_0.c.zy), all(vec4<bool>(true, false, false, false)), true), vec4<bool>(false, false, arg_0.e & (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], 8u)] > global0[_wgslsmith_index_u32(7541u, 8u)]), arg_0.c.x), false));
    global0 = array<u32, 8>();
    var var_1 = !vec4<bool>(all(func_2(Struct_2(arg_0, 432f, arg_0, Struct_1(463f, arg_0.b, vec3<bool>(false, true, false), -18268i, true), vec3<f32>(-1331f, 748f, global1[_wgslsmith_index_u32(u_input.a.x, 28u)]))).c.zz), var_0.x, all(!(!vec4<bool>(arg_1, false, var_0.x, arg_1))), true | (_wgslsmith_add_i32(1i, arg_0.d) >= 1i));
    var var_2 = arg_0;
    let var_3 = select(select(select(vec2<bool>(true, !var_2.c.x), var_0.zx, global2.x), vec2<bool>(func_2(Struct_2(arg_0, arg_0.a, arg_0, Struct_1(1120f, arg_0.b, vec3<bool>(arg_1, false, false), var_2.b, true), vec3<f32>(183f, arg_0.a, var_2.a))).c.x, any(var_1.wxy)), var_2.a > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a + -373f) + _wgslsmith_f_op_f32(sign(-1752f)))), select(var_2.c.zx, !(!(!var_0.yy)), global2.x), true);
    return ~min(~(~(~vec4<u32>(u_input.b.x, global0[_wgslsmith_index_u32(u_input.c.x, 8u)], 1u, 4294967295u))), vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, global0[_wgslsmith_index_u32(u_input.c.x, 8u)]), u_input.b), _wgslsmith_add_vec2_u32(u_input.a.xy, vec2<u32>(56707u, u_input.c.x))), global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(abs(60214u), 8u)], 8u)], 0u >> (1u % 32u)));
}

fn func_1() -> Struct_1 {
    let var_0 = firstTrailingBit(func_5(func_4(Struct_2(func_2(Struct_2(Struct_1(-1558f, -2147483647i, vec3<bool>(true, global2.x, global2.x), 2147483647i, false), -544f, Struct_1(-1000f, 8310i, vec3<bool>(global2.x, global2.x, global2.x), 0i, global2.x), Struct_1(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 28u)], -79684i, vec3<bool>(true, global2.x, false), -1i, global2.x), vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], 1369f, 1000f))), global1[_wgslsmith_index_u32(73161u, 28u)], Struct_1(global1[_wgslsmith_index_u32(20005u, 28u)], -2147483647i, vec3<bool>(false, true, true), 7470i, global2.x), func_2(Struct_2(Struct_1(global1[_wgslsmith_index_u32(54448u, 28u)], -61776i, vec3<bool>(true, false, true), 18005i, true), global1[_wgslsmith_index_u32(u_input.c.x, 28u)], Struct_1(global1[_wgslsmith_index_u32(29501u, 28u)], 2010i, vec3<bool>(global2.x, global2.x, true), 25317i, false), Struct_1(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 28u)], -10558i, vec3<bool>(global2.x, true, true), -9593i, true), vec3<f32>(577f, global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 200f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-385f, 780f, -2193f))), Struct_2(Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 2147483647i, vec3<bool>(global2.x, false, global2.x), -1i, global2.x), -955f, func_2(Struct_2(Struct_1(global1[_wgslsmith_index_u32(1u, 28u)], 0i, vec3<bool>(global2.x, false, global2.x), -14558i, global2.x), 397f, Struct_1(global1[_wgslsmith_index_u32(0u, 28u)], 20020i, vec3<bool>(false, true, false), -45788i, true), Struct_1(-444f, -2147483647i, vec3<bool>(false, false, global2.x), -5948i, global2.x), vec3<f32>(global1[_wgslsmith_index_u32(43314u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(81612u, 28u)]))), func_2(Struct_2(Struct_1(916f, -27723i, vec3<bool>(false, false, global2.x), -12302i, true), global1[_wgslsmith_index_u32(0u, 28u)], Struct_1(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 28u)], 11696i, vec3<bool>(global2.x, true, global2.x), 31775i, false), Struct_1(-385f, 1i, vec3<bool>(global2.x, global2.x, global2.x), 2147483647i, true), vec3<f32>(-903f, global1[_wgslsmith_index_u32(u_input.c.x, 28u)], global1[_wgslsmith_index_u32(0u, 28u)]))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-801f, 2091f, -1000f) + vec3<f32>(-1056f, global1[_wgslsmith_index_u32(10857u, 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 28u)]))), ~(~vec3<u32>(u_input.b.x, 67485u, global0[_wgslsmith_index_u32(1811u, 8u)]))), global2.x));
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1316f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b.x, 28u)] + global1[_wgslsmith_index_u32(36784u, 28u)])))), _wgslsmith_f_op_f32(floor(func_2(Struct_2(Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], -11782i, vec3<bool>(global2.x, global2.x, global2.x), -2147483647i, global2.x), -1397f, Struct_1(global1[_wgslsmith_index_u32(1u, 28u)], 7193i, vec3<bool>(false, false, false), 27595i, global2.x), Struct_1(-408f, 58791i, vec3<bool>(false, global2.x, global2.x), -17465i, global2.x), vec3<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 28u)], global1[_wgslsmith_index_u32(40347u, 28u)], global1[_wgslsmith_index_u32(92095u, 28u)]))).a)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(u_input.b.x), abs(74896u)), 8u)], 28u)]))));
    return func_4(Struct_2(func_4(Struct_2(Struct_1(-1000f, 38387i, vec3<bool>(true, global2.x, false), 14743i, global2.x), _wgslsmith_f_op_f32(585f - -2780f), func_4(Struct_2(Struct_1(128f, 19835i, vec3<bool>(false, global2.x, false), 23017i, true), 1000f, Struct_1(726f, -2147483647i, vec3<bool>(true, true, false), 48915i, true), Struct_1(-150f, 2147483647i, vec3<bool>(false, false, global2.x), -26678i, global2.x), vec3<f32>(global1[_wgslsmith_index_u32(32180u, 28u)], var_1.x, 442f)), Struct_2(Struct_1(444f, -2147483647i, vec3<bool>(false, true, true), -34893i, global2.x), -764f, Struct_1(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], -18091i, vec3<bool>(false, true, false), 69021i, true), Struct_1(var_1.x, -72241i, vec3<bool>(global2.x, global2.x, global2.x), -2147483647i, global2.x), vec3<f32>(global1[_wgslsmith_index_u32(0u, 28u)], -885f, 431f)), vec3<u32>(53924u, global0[_wgslsmith_index_u32(0u, 8u)], 14417u)), func_2(Struct_2(Struct_1(global1[_wgslsmith_index_u32(88105u, 28u)], -28612i, vec3<bool>(false, false, global2.x), 2147483647i, global2.x), global1[_wgslsmith_index_u32(1u, 28u)], Struct_1(var_1.x, -2147483647i, vec3<bool>(global2.x, true, false), 0i, global2.x), Struct_1(var_1.x, 1i, vec3<bool>(true, true, global2.x), -1i, true), vec3<f32>(242f, global1[_wgslsmith_index_u32(u_input.c.x, 28u)], 1187f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1289f, global1[_wgslsmith_index_u32(u_input.a.x, 28u)], var_1.x) * vec3<f32>(var_1.x, -1610f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 28u)]))), Struct_2(Struct_1(1163f, 23114i, vec3<bool>(false, global2.x, true), -10746i, true), _wgslsmith_f_op_f32(-1123f - 2245f), Struct_1(var_1.x, -1i, vec3<bool>(global2.x, global2.x, global2.x), -6328i, false), func_4(Struct_2(Struct_1(var_1.x, 0i, vec3<bool>(global2.x, global2.x, true), -1i, true), -575f, Struct_1(var_1.x, 25234i, vec3<bool>(global2.x, global2.x, false), 1i, global2.x), Struct_1(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], 0i, vec3<bool>(global2.x, false, false), 39202i, false), vec3<f32>(-613f, global1[_wgslsmith_index_u32(u_input.c.x, 28u)], global1[_wgslsmith_index_u32(33683u, 28u)])), Struct_2(Struct_1(var_1.x, 51356i, vec3<bool>(global2.x, global2.x, true), -34009i, true), 172f, Struct_1(var_1.x, -27605i, vec3<bool>(false, global2.x, global2.x), 8469i, global2.x), Struct_1(global1[_wgslsmith_index_u32(46307u, 28u)], -2147483647i, vec3<bool>(true, global2.x, false), 0i, global2.x), vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], -1059f, var_1.x)), vec3<u32>(0u, global0[_wgslsmith_index_u32(1u, 8u)], 29176u)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-214f, var_1.x, var_1.x), vec3<f32>(var_1.x, 516f, -562f)))), vec3<u32>(u_input.c.x, ~u_input.c.x, ~u_input.c.x)), global1[_wgslsmith_index_u32(~((73319u >> (var_0.x % 32u)) << (_wgslsmith_add_u32(u_input.c.x, global0[_wgslsmith_index_u32(var_0.x, 8u)]) % 32u)), 28u)], func_2(Struct_2(Struct_1(685f, -1i, vec3<bool>(global2.x, false, global2.x), -1i, false), -316f, Struct_1(var_1.x, -2147483647i, vec3<bool>(global2.x, false, global2.x), 14725i, true), func_4(Struct_2(Struct_1(-1349f, 0i, vec3<bool>(true, global2.x, false), -33657i, true), var_1.x, Struct_1(global1[_wgslsmith_index_u32(4294967295u, 28u)], 10959i, vec3<bool>(global2.x, global2.x, false), -1i, global2.x), Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], -9929i, vec3<bool>(true, global2.x, global2.x), 4101i, true), vec3<f32>(-233f, var_1.x, -1191f)), Struct_2(Struct_1(global1[_wgslsmith_index_u32(10060u, 28u)], 2147483647i, vec3<bool>(true, global2.x, global2.x), 27589i, global2.x), 220f, Struct_1(-775f, 21849i, vec3<bool>(global2.x, true, global2.x), 1i, global2.x), Struct_1(-1810f, 21204i, vec3<bool>(false, false, global2.x), 32622i, global2.x), vec3<f32>(global1[_wgslsmith_index_u32(1u, 28u)], -820f, var_1.x)), u_input.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-221f, -467f, 222f)))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(552f)))), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -2400i), vec2<i32>(12073i, -2147483647i)), !(!vec3<bool>(false, global2.x, false)), _wgslsmith_add_i32(0i, i32(-1i) * -1i), all(vec2<bool>(false, global2.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-416f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(85582u, 8u)], 28u)], -1000f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, 372f, var_1.x)))))), Struct_2(func_4(Struct_2(Struct_1(-1480f, -41424i, vec3<bool>(global2.x, global2.x, true), 1i, global2.x), _wgslsmith_f_op_f32(f32(-1f) * -1014f), Struct_1(567f, 20743i, vec3<bool>(global2.x, true, true), 1i, global2.x), func_4(Struct_2(Struct_1(var_1.x, -1i, vec3<bool>(false, global2.x, global2.x), 1i, global2.x), var_1.x, Struct_1(-752f, 61733i, vec3<bool>(global2.x, global2.x, true), 68013i, true), Struct_1(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7695u, 8u)], 28u)], 2147483647i, vec3<bool>(true, global2.x, global2.x), 39976i, global2.x), vec3<f32>(-368f, 356f, -555f)), Struct_2(Struct_1(-1310f, 2147483647i, vec3<bool>(global2.x, global2.x, global2.x), -50190i, false), global1[_wgslsmith_index_u32(u_input.a.x, 28u)], Struct_1(-506f, -6782i, vec3<bool>(false, global2.x, global2.x), -1i, global2.x), Struct_1(-759f, 11707i, vec3<bool>(true, global2.x, global2.x), -2147483647i, global2.x), vec3<f32>(-1425f, global1[_wgslsmith_index_u32(var_0.x, 28u)], -884f)), var_0.ywz), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, var_1.x, -1298f)))), Struct_2(Struct_1(var_1.x, -9190i, vec3<bool>(false, global2.x, true), -29642i, false), -1025f, func_4(Struct_2(Struct_1(-584f, -1i, vec3<bool>(global2.x, global2.x, true), 54913i, false), -3010f, Struct_1(1416f, -59808i, vec3<bool>(false, true, false), -24300i, false), Struct_1(-1000f, 2147483647i, vec3<bool>(global2.x, global2.x, false), -35997i, true), vec3<f32>(-1000f, -1087f, var_1.x)), Struct_2(Struct_1(var_1.x, -2147483647i, vec3<bool>(global2.x, false, global2.x), -2147483647i, true), global1[_wgslsmith_index_u32(9954u, 28u)], Struct_1(589f, -36898i, vec3<bool>(true, global2.x, false), 0i, false), Struct_1(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 28u)], 7388i, vec3<bool>(global2.x, false, true), -737i, global2.x), vec3<f32>(-1923f, 1000f, -1000f)), u_input.a), func_2(Struct_2(Struct_1(global1[_wgslsmith_index_u32(58002u, 28u)], 6421i, vec3<bool>(false, global2.x, true), -24478i, global2.x), -151f, Struct_1(var_1.x, 30948i, vec3<bool>(global2.x, true, global2.x), -1i, true), Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], 48739i, vec3<bool>(false, true, false), -1i, true), vec3<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], 28u)], global1[_wgslsmith_index_u32(1u, 28u)], var_1.x))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6634u, 8u)], 28u)], global1[_wgslsmith_index_u32(5817u, 28u)], 383f), vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], -912f, global1[_wgslsmith_index_u32(4294967295u, 28u)])))), ~_wgslsmith_mult_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)], 3365u, u_input.b.x), u_input.a)), var_1.x, Struct_1(476f, ~max(0i, -1i), select(vec3<bool>(global2.x, global2.x, false), !vec3<bool>(global2.x, false, global2.x), func_4(Struct_2(Struct_1(265f, 23198i, vec3<bool>(global2.x, global2.x, false), 62343i, global2.x), -673f, Struct_1(var_1.x, -2147483647i, vec3<bool>(global2.x, global2.x, global2.x), 2147483647i, global2.x), Struct_1(global1[_wgslsmith_index_u32(1u, 28u)], 0i, vec3<bool>(true, true, true), 0i, true), vec3<f32>(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 28u)], 1290f)), Struct_2(Struct_1(var_1.x, -1i, vec3<bool>(false, true, global2.x), -33838i, global2.x), global1[_wgslsmith_index_u32(1u, 28u)], Struct_1(global1[_wgslsmith_index_u32(16773u, 28u)], -2147483647i, vec3<bool>(global2.x, false, false), 0i, global2.x), Struct_1(-939f, 2147483647i, vec3<bool>(false, false, global2.x), 0i, global2.x), vec3<f32>(global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 8u)], 28u)])), vec3<u32>(global0[_wgslsmith_index_u32(1066u, 8u)], var_0.x, var_0.x)).c.x), _wgslsmith_dot_vec4_i32(select(vec4<i32>(0i, -26636i, -2147483647i, -901i), vec4<i32>(0i, -1i, -1i, -50876i), vec4<bool>(true, false, true, false)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-26040i, 2147483647i, -1i, 20594i), vec4<i32>(-1i, 2593i, 0i, 1i), vec4<i32>(68397i, -10419i, 1i, -11739i))), any(select(vec2<bool>(global2.x, true), global2.yy, vec2<bool>(false, global2.x)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1159f, 1260f)), _wgslsmith_mult_i32(0i >> (var_0.x % 32u), ~17436i), !(!vec3<bool>(true, global2.x, true)), firstTrailingBit(-20604i) ^ 22546i, true | (global0[_wgslsmith_index_u32(var_0.x, 8u)] != u_input.c.x)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, 2576f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 28u)])), _wgslsmith_f_op_vec3_f32(vec3<f32>(-2316f, 340f, -1000f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1990f, -164f, -1655f))), global2.x || (global2.x && global2.x)))), ~_wgslsmith_mod_vec3_u32(~(~u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(96695u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)], var_0.x), u_input.a & u_input.a)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_2 {
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_add_i32(_wgslsmith_mod_i32(-1i, -30764i), -1i) ^ ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)));
    var var_1 = func_6(Struct_2(func_1(), 341f, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 28u)] + global1[_wgslsmith_index_u32(0u, 28u)]), _wgslsmith_f_op_f32(ceil(-618f))), -_wgslsmith_sub_i32(32774i, -29449i), vec3<bool>(!global2.x, global2.x, false), -(i32(-1i) * -10354i), true), func_4(Struct_2(Struct_1(global1[_wgslsmith_index_u32(1u, 28u)], 442i, vec3<bool>(false, global2.x, false), 21348i, true), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.b.x, 28u)]), Struct_1(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35453u, 8u)], 28u)], 1i, vec3<bool>(false, true, false), 31086i, global2.x), Struct_1(1459f, 2147483647i, vec3<bool>(true, false, false), 0i, false), vec3<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 28u)], -1000f, -1699f)), Struct_2(func_1(), global1[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(4294967295u, 8u)]), 28u)], Struct_1(global1[_wgslsmith_index_u32(4294967295u, 28u)], -2147483647i, vec3<bool>(false, true, false), 2147483647i, false), Struct_1(global1[_wgslsmith_index_u32(54621u, 28u)], 0i, vec3<bool>(true, false, true), 58455i, global2.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], global1[_wgslsmith_index_u32(17582u, 28u)], global1[_wgslsmith_index_u32(u_input.b.x, 28u)]))), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.a, u_input.a), _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(36965u, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 0u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(51726u, 28u)], global1[_wgslsmith_index_u32(u_input.a.x, 28u)], global1[_wgslsmith_index_u32(u_input.c.x, 28u)])) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], -1207f, 313f) - vec3<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 28u)], 1828f, global1[_wgslsmith_index_u32(u_input.a.x, 28u)])) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34239u, 8u)], 28u)], 937f, 412f))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(4294967295u, 28u)]))) * _wgslsmith_f_op_f32(f32(-1f) * -729f)), ~(~(-1i)), !select(func_2(Struct_2(Struct_1(760f, 1i, vec3<bool>(global2.x, global2.x, false), 9544i, true), global1[_wgslsmith_index_u32(u_input.b.x, 28u)], Struct_1(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], 2147483647i, vec3<bool>(global2.x, global2.x, global2.x), -2147483647i, global2.x), Struct_1(global1[_wgslsmith_index_u32(36733u, 28u)], -35977i, vec3<bool>(global2.x, false, true), 0i, global2.x), vec3<f32>(484f, 1000f, -1410f))).c, !vec3<bool>(global2.x, global2.x, false), func_2(Struct_2(Struct_1(global1[_wgslsmith_index_u32(14750u, 28u)], 1i, vec3<bool>(false, global2.x, global2.x), -13355i, true), -1461f, Struct_1(-421f, 17195i, vec3<bool>(false, false, global2.x), -5288i, true), Struct_1(1000f, 1i, vec3<bool>(true, true, true), 0i, true), vec3<f32>(-907f, -304f, 1000f))).c), ~(~32630i), true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1025f, global1[_wgslsmith_index_u32(112523u, 28u)], 1000f) + vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 28u)], 1580f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 28u)]))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71352u, 8u)], 28u)], -562f, -789f), vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 28u)], 859f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 28u)])) - vec3<f32>(-689f, 344f, 243f)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -455f), -320f, _wgslsmith_f_op_f32(floor(-883f))))), vec3<bool>(true, true, true))));
    var var_2 = select(!(!select(select(vec4<bool>(false, global2.x, false, true), vec4<bool>(global2.x, false, false, var_1.d.c.x), global2.x), !vec4<bool>(false, false, var_1.c.e, global2.x), select(vec4<bool>(true, false, var_1.a.c.x, global2.x), vec4<bool>(global2.x, var_1.c.e, var_1.d.c.x, false), false))), !vec4<bool>(!global2.x, true, any(vec3<bool>(false, true, true)), global2.x), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)] == 76421u, true, global2.x, !(var_1.d.e != false)), select(!select(vec4<bool>(global2.x, global2.x, var_1.c.e, false), vec4<bool>(true, false, true, true), var_1.d.e), vec4<bool>(var_1.d.c.x || var_1.d.e, 161f > var_1.d.a, var_1.d.d > 30602i, all(vec4<bool>(global2.x, false, var_1.a.e, var_1.d.e))), global2.x), _wgslsmith_f_op_f32(-func_2(Struct_2(var_1.d, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 8u)], 28u)], Struct_1(-626f, var_1.a.d, var_1.d.c, 1i, false), Struct_1(var_1.a.a, 33716i, vec3<bool>(var_1.a.c.x, true, false), 49756i, var_1.d.e), vec3<f32>(global1[_wgslsmith_index_u32(1u, 28u)], 412f, global1[_wgslsmith_index_u32(u_input.b.x, 28u)]))).a) <= -561f));
    var var_3 = abs(_wgslsmith_mult_u32(u_input.a.x, u_input.c.x));
    let var_4 = Struct_2(var_1.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.c.a)) + _wgslsmith_f_op_f32(trunc(var_1.e.x))))), _wgslsmith_f_op_f32(abs(-109f)))), func_4(func_6(func_6(Struct_2(Struct_1(-870f, var_1.d.b, vec3<bool>(var_1.a.e, true, var_1.a.c.x), var_1.c.b, true), 293f, Struct_1(global1[_wgslsmith_index_u32(0u, 28u)], -1i, vec3<bool>(true, global2.x, var_1.d.c.x), var_1.c.d, false), Struct_1(global1[_wgslsmith_index_u32(u_input.b.x, 28u)], var_1.c.b, vec3<bool>(var_1.c.e, global2.x, false), var_1.c.b, true), vec3<f32>(870f, -725f, var_1.b)), func_4(Struct_2(var_1.a, 309f, var_1.a, Struct_1(-1882f, 2825i, var_2.wxx, -1i, var_2.x), var_1.e), Struct_2(Struct_1(-810f, -7773i, var_2.wxw, var_1.d.b, true), -1050f, Struct_1(global1[_wgslsmith_index_u32(43418u, 28u)], var_1.d.b, vec3<bool>(var_2.x, false, false), 44094i, true), Struct_1(168f, var_1.d.d, vec3<bool>(true, var_1.a.e, true), var_1.d.b, true), var_1.e), u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1094f, 126f, 484f) + vec3<f32>(1552f, global1[_wgslsmith_index_u32(26987u, 28u)], var_1.b))), var_1.d, vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(32772u, 28u)]), global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u >> (u_input.b.x % 32u), 8u)], 8u)], 28u)])), func_6(func_6(func_6(Struct_2(var_1.a, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], 28u)], var_1.d, var_1.a, var_1.e), var_1.d, vec3<f32>(var_1.a.a, global1[_wgslsmith_index_u32(12679u, 28u)], global1[_wgslsmith_index_u32(0u, 28u)])), Struct_1(-495f, var_1.a.d, vec3<bool>(var_2.x, false, var_2.x), var_1.a.b, var_2.x), var_1.e), func_1(), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1[_wgslsmith_index_u32(66339u, 28u)], var_1.b, global1[_wgslsmith_index_u32(u_input.b.x, 28u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-985f, -1256f, -784f)), !var_1.c.c.x))), u_input.a), func_4(func_6(func_6(Struct_2(Struct_1(var_1.a.a, var_1.a.d, vec3<bool>(false, true, var_2.x), var_1.c.b, true), var_1.c.a, var_1.c, var_1.a, vec3<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(82265u, 8u)], 28u)], 188f, 1690f)), Struct_1(908f, var_1.a.b, var_2.xxz, 1i, var_1.d.c.x), vec3<f32>(-254f, var_1.e.x, global1[_wgslsmith_index_u32(4294967295u, 28u)])), var_1.d, _wgslsmith_f_op_vec3_f32(exp2(var_1.e))), func_6(Struct_2(func_1(), 211f, Struct_1(var_1.b, var_1.c.d, vec3<bool>(true, false, false), var_1.c.d, var_2.x), Struct_1(global1[_wgslsmith_index_u32(29325u, 28u)], var_1.c.d, var_2.wyy, var_1.d.d, var_1.d.c.x), _wgslsmith_f_op_vec3_f32(-var_1.e)), Struct_1(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(24108u, 28u)]), ~0i, vec3<bool>(false, var_2.x, false), select(81486i, -31737i, var_1.d.e), all(vec2<bool>(global2.x, true))), var_1.e), ~vec3<u32>(u_input.c.x, global0[_wgslsmith_index_u32(5891u, 8u)], u_input.c.x) << (countOneBits(select(u_input.a, vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], 8u)], 8u)], global0[_wgslsmith_index_u32(u_input.b.x, 8u)], u_input.b.x), var_2.yyz)) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(func_1().a, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35637u, 8u)], 28u)], _wgslsmith_f_op_f32(f32(-1f) * -553f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(32654u, 28u)], -1146f, -459f))) - vec3<f32>(var_1.c.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a.a * global1[_wgslsmith_index_u32(12373u, 28u)]))), var_1.c.a)));
    global1 = array<f32, 28>();
    var var_5 = var_4.a.b > _wgslsmith_mod_i32(var_1.a.d, _wgslsmith_add_i32((var_4.d.d | var_4.c.d) | 1i, -var_4.d.b));
    var_5 = !(_wgslsmith_f_op_f32(-var_4.c.a) < -283f);
    let var_6 = Struct_2(func_4(func_6(func_6(var_4, Struct_1(-601f, 26138i, var_2.ywx, -16319i, true), vec3<f32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 8u)], 8u)], 28u)], -463f, var_1.b)), Struct_1(_wgslsmith_f_op_f32(var_1.e.x - -278f), i32(-1i) * -2147483647i, !var_1.c.c, ~var_1.a.d, all(vec3<bool>(false, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.c.a, -1643f, global1[_wgslsmith_index_u32(0u, 28u)])))), func_6(func_6(func_6(var_4, var_1.a, var_1.e), Struct_1(-131f, var_1.c.d, var_2.xxy, -20074i, var_4.c.c.x), vec3<f32>(var_4.b, 817f, var_1.d.a)), var_4.c, vec3<f32>(845f, -658f, var_1.d.a)), _wgslsmith_div_vec3_u32(min(vec3<u32>(u_input.c.x, 28302u, u_input.a.x), u_input.a), ~(~u_input.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(244f - var_1.e.x)))) + _wgslsmith_f_op_f32(f32(-1f) * -501f)), func_2(var_4), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1813f - 2143f)), -2147483647i, !var_1.c.c, -var_1.d.d, global2.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_1.e - _wgslsmith_f_op_vec3_f32(max(var_1.e, _wgslsmith_f_op_vec3_f32(vec3<f32>(-120f, var_1.b, -897f) * var_1.e)))), _wgslsmith_f_op_vec3_f32(var_1.e + _wgslsmith_div_vec3_f32(vec3<f32>(var_4.b, 1000f, 533f), _wgslsmith_f_op_vec3_f32(select(var_4.e, var_1.e, true)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.b, ~((vec4<u32>(122416u, 4294967295u, u_input.c.x, global0[_wgslsmith_index_u32(1u, 8u)]) << (vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], 8u)]) % vec4<u32>(32u))) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(33495u, u_input.b.x, 0u, global0[_wgslsmith_index_u32(59553u, 8u)]), vec4<u32>(global0[_wgslsmith_index_u32(45376u, 8u)], 61590u, 25035u, global0[_wgslsmith_index_u32(30074u, 8u)])), vec4<u32>(u_input.b.x, 4294967295u, 1u, 39011u)) % vec4<u32>(32u))));
}

