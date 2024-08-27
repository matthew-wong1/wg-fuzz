struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-9261i, 1i);

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<u32>(513u, 1u, 4294967295u, 103595u), -1240f, vec4<bool>(false, true, false, false)), Struct_1(vec4<u32>(1u, 4294967295u, 0u, 4294967295u), 1000f, vec4<bool>(true, true, true, false)));

var<private> global2: array<i32, 1> = array<i32, 1>(-239i);

var<private> global3: vec3<f32> = vec3<f32>(1003f, 695f, 235f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32(max(~arg_1.a, ~arg_1.a), vec4<u32>(~64131u, 0u, 1u, abs(arg_1.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.b)) - -450f), -488f), !vec4<bool>(true, any(arg_1.c), false, false)), Struct_1(abs(select(abs(vec4<u32>(arg_1.a.x, 0u, u_input.b, arg_0.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), arg_1.a), select(arg_1.c, arg_1.c, arg_1.c))), 1000f, vec4<bool>(all(select(arg_1.c, vec4<bool>(arg_1.c.x, false, arg_1.c.x, arg_1.c.x), arg_1.c.x)), _wgslsmith_mult_i32(-4363i, -40653i) == global2[_wgslsmith_index_u32(arg_1.a.x, 1u)], arg_1.c.x, true)), select(select(select(vec3<bool>(arg_1.c.x, false, arg_1.c.x), !vec3<bool>(true, true, arg_1.c.x), vec3<bool>(arg_1.c.x, arg_1.c.x, false)), select(select(arg_1.c.yxz, arg_1.c.wwy, vec3<bool>(arg_1.c.x, true, true)), vec3<bool>(true, true, true), arg_1.c.zzz), true == any(vec4<bool>(true, arg_1.c.x, arg_1.c.x, true))), vec3<bool>(arg_1.c.x, true, any(arg_1.c.yy)), !(!arg_1.c.zwz)), ~arg_0.x);
    global3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-275f, arg_1.b, 2723f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.x, -584f, global3.x))) - vec3<f32>(arg_1.b, -218f, 466f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-2020f, global3.x) + -1773f), _wgslsmith_f_op_f32(sign(-615f))) * vec3<f32>(_wgslsmith_f_op_f32(step(var_0.a.b, _wgslsmith_f_op_f32(sign(global3.x)))), var_0.b.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(345f, global3.x))))));
    var var_1 = _wgslsmith_f_op_f32(step(482f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1861f - _wgslsmith_f_op_f32(var_0.a.b * -582f))))));
    global0 = ~_wgslsmith_clamp_vec2_i32(min(_wgslsmith_mod_vec2_i32(vec2<i32>(0i, 2147483647i), vec2<i32>(-1i, 14327i)) << ((vec2<u32>(arg_1.a.x, 41467u) & var_0.a.a.wy) % vec2<u32>(32u)), -(~vec2<i32>(9784i, 0i))), countOneBits(vec2<i32>(~2147483647i, _wgslsmith_sub_i32(-2147483647i, u_input.a))), -(firstLeadingBit(vec2<i32>(-9830i, global0.x)) ^ -vec2<i32>(1337i, 2147483647i)));
    var var_2 = abs(~arg_0);
    return 4294967295u;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: u32) -> f32 {
    var var_0 = u_input.b;
    global1 = array<Struct_1, 2>();
    var var_1 = select(23412u, arg_0.x, select(true, false, arg_1.x)) > _wgslsmith_div_u32(arg_2, 4294967295u);
    var var_2 = Struct_1(vec4<u32>(~(arg_0.x & func_3(vec3<u32>(u_input.b, arg_2, arg_2), global1[_wgslsmith_index_u32(u_input.b, 2u)])), _wgslsmith_dot_vec2_u32((arg_0.zy << (arg_0.yy % vec2<u32>(32u))) >> (arg_0.zz % vec2<u32>(32u)), reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, arg_2), arg_0.wz))), ~(firstTrailingBit(u_input.b) | ~arg_2), u_input.b >> (_wgslsmith_sub_u32(reverseBits(1u), 1u) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-369f * 1756f))) - global3.x), !vec4<bool>(all(vec2<bool>(true, true)), all(vec4<bool>(false, true, arg_1.x, arg_1.x)), any(!vec4<bool>(false, true, arg_1.x, true)), select(any(vec4<bool>(true, false, false, true)), select(arg_1.x, false, true), any(vec4<bool>(arg_1.x, false, false, arg_1.x)))));
    global3 = vec3<f32>(global3.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.b + -674f), _wgslsmith_f_op_f32(sign(global3.x)), false)), _wgslsmith_f_op_f32(ceil(global3.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.x + -3482f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3.x))), -1370f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x * var_2.b)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: Struct_2) -> u32 {
    global2 = array<i32, 1>();
    let var_0 = 51225u;
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(1275f, arg_2.b.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(615f * _wgslsmith_f_op_f32(func_2(arg_2.a.a, vec3<bool>(arg_0.x, arg_0.x, true), 66466u))) * -1691f)));
    var var_1 = Struct_2(arg_2.a, global1[_wgslsmith_index_u32(reverseBits(arg_2.d), 2u)], vec3<bool>(!arg_0.x, arg_2.b.c.x, !all(arg_0)), 35597u);
    var var_2 = -global0.x;
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(reverseBits(u_input.b), 1u)], 0i);
    global0 = vec2<i32>(_wgslsmith_mod_i32(u_input.a, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.b, 1u)], -2147483647i, global0.x, global0.x), vec4<i32>(-3916i, -2147483647i, 1i, 14891i)), var_0 << (1u % 32u))), 0i) << (~vec2<u32>(abs(_wgslsmith_sub_u32(u_input.b, u_input.b)), select(u_input.b, _wgslsmith_div_u32(u_input.b, 19280u), true)) % vec2<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(-global3.x);
    var var_2 = 1704f;
    let var_3 = ~(~select(~vec3<u32>(u_input.b, 0u, u_input.b), select(vec3<u32>(u_input.b, 4294967295u, 29502u), vec3<u32>(17792u, u_input.b, 13703u), false), select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), true))) >> (max(vec3<u32>(_wgslsmith_add_u32(35135u, u_input.b), ~u_input.b, abs(u_input.b)) >> (vec3<u32>(~68055u, ~u_input.b, 83938u) % vec3<u32>(32u)), vec3<u32>(firstTrailingBit(u_input.b) & 0u, abs(0u), ~94747u >> (func_1(vec4<bool>(false, true, true, false), vec4<i32>(-21136i, 15797i, -1i, u_input.a), Struct_2(Struct_1(vec4<u32>(u_input.b, u_input.b, 0u, 4487u), global3.x, vec4<bool>(true, false, false, false)), global1[_wgslsmith_index_u32(u_input.b, 2u)], vec3<bool>(true, false, false), 98937u)) % 32u))) % vec3<u32>(32u));
    var var_4 = _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(select(var_3, var_3, vec3<bool>(false, true, false)) ^ (var_3 ^ var_3)), var_3), var_3);
    let var_5 = Struct_2(global1[_wgslsmith_index_u32(13676u, 2u)], Struct_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_4.x, var_4.x, 0u, var_3.x) & vec4<u32>(0u, var_3.x, var_4.x, var_3.x), vec4<u32>(var_4.x, 45103u, var_3.x, var_4.x) & vec4<u32>(16860u, 1u, 10955u, 40550u)), 1149f, select(vec4<bool>(false, true, true, 1998f <= global3.x), select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), true)), vec3<bool>(true, true, true), _wgslsmith_mult_u32(u_input.b, ~(~(~4294967295u))));
    var var_6 = Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(var_4.x, u_input.b, var_5.a.a.x, 4294967295u), vec4<u32>(60735u, 19509u, 60575u, 12390u) >> (vec4<u32>(var_4.x, u_input.b, 0u, 1u) % vec4<u32>(32u))) | vec4<u32>(~33551u, ~4294967295u, var_3.x, 58960u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_5.b.b - var_5.b.b)))), !vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 1u)] < 0i, var_5.c.x, true, true)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_5.a.a.ywz, ~(firstLeadingBit(vec3<u32>(4294967295u, 0u, 0u)) ^ _wgslsmith_mult_vec3_u32(var_5.a.a.yyy, var_3))), 2u)], vec3<bool>(var_5.b.c.x, true, true), 9214u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global3.x + var_5.a.b))), 2147483647i, 52824i);
}

